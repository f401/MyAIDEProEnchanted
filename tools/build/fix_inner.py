#!/usr/bin/env python3
"""fix_inner.py —— 清理改名后损坏的 InnerClasses 属性。

背景：FART 只改类名/成员名，不改 `InnerClasses` 里的 outer/inner 名字。
当某探针原本是内部类、我们把它映射成**顶层名**（或反之），class 文件里就会留下
"我是 X 的内部类"这种自相矛盾的条目，D8 会打 `Malformed inner-class attribute`。

做法：逐类改写 InnerClasses，只保留 inner_class_info 指向**本类**或 `本类$xxx` 的条目；
其余条目丢弃（InnerClasses 是可选元数据，缺了只影响 getDeclaringClass/getSimpleName）。

用法：python3 tools/build/fix_inner.py <in.jar> <out.jar>
"""
import sys, zipfile, struct

def u1(b, i): return b[i], i+1
def u2(b, i): return struct.unpack_from('>H', b, i)[0], i+2
def u4(b, i): return struct.unpack_from('>I', b, i)[0], i+4

def parse_cp(b, i):
    """返回 (cp_end, utf8{idx:str}, class_name_idx->utf8)"""
    count, i = u2(b, i)
    utf8, clsref = {}, {}
    k = 1
    while k < count:
        tag, i = u1(b, i)
        if tag == 1:
            ln, i = u2(b, i); utf8[k] = b[i:i+ln].decode('utf-8', 'replace'); i += ln
        elif tag in (7, 8, 16, 19, 20):
            idx, i = u2(b, i)
            if tag == 7: clsref[k] = idx
        elif tag in (15,):
            i += 3
        elif tag in (3, 4, 9, 10, 11, 12, 17, 18):
            i += 4
        elif tag in (5, 6):
            i += 8; k += 1
        else:
            raise ValueError('cp tag %d' % tag)
        k += 1
    return i, utf8, clsref

def fix(data):
    if data[:4] != b'\xca\xfe\xba\xbe': return data, 0
    i = 8
    cp_end, utf8, clsref = parse_cp(data, i)
    this_idx, i = u2(data, cp_end)
    this_name = utf8.get(clsref.get(this_idx, 0), '')
    # access, this, super, interfaces
    i += 2 + 2
    nif, i = u2(data, i); i += 2*nif
    for _ in range(2):  # fields, methods
        n, i = u2(data, i)
        for _ in range(n):
            i += 6
            na, i = u2(data, i)
            for _ in range(na):
                i += 2; ln, i = u4(data, i); i += ln
    nattr, i = u2(data, i)
    out = bytearray(data[:i]); removed = 0
    for _ in range(nattr):
        start = i
        nidx, i = u2(data, i); ln, i = u4(data, i)
        name = utf8.get(nidx, '')
        body = data[i:i+ln]
        if name == 'InnerClasses':
            cnt = struct.unpack_from('>H', body, 0)[0]
            keep = []
            for e in range(cnt):
                e0 = 2 + e*8
                ic, oc, nm, fl = struct.unpack_from('>HHHH', body, e0)
                innername = utf8.get(clsref.get(ic, 0), '')
                outername = utf8.get(clsref.get(oc, 0), '') if oc else ''
                bad = False
                if outername:                      # 声称有外层
                    if '$' not in innername:       # 顶层名却带外层 ⇒ 畸形
                        bad = True
                    elif not innername.startswith(outername + '$'):
                        bad = True                 # 外层名与 $ 前缀不符
                if bad: removed += 1
                else: keep.append(body[e0:e0+8])
            newbody = struct.pack('>H', len(keep)) + b''.join(keep)
            out += data[start:start+6]
            out += struct.pack('>I', len(newbody)) + newbody
            i = start + 6 + ln
        else:
            out += data[start:i]
    out += data[i:]
    return bytes(out), removed

def main():
    if len(sys.argv) < 3:
        raise SystemExit(__doc__)
    src, dst = sys.argv[1], sys.argv[2]
    tot = 0
    with zipfile.ZipFile(src) as zi, zipfile.ZipFile(dst, 'w', zipfile.ZIP_DEFLATED) as zo:
        for it in zi.infolist():
            d = zi.read(it.filename)
            if it.filename.endswith('.class'):
                try: d2, n = fix(d)
                except Exception: d2, n = d, 0
                tot += n; d = d2
            zo.writestr(it, d)
    print('丢弃畸形 InnerClasses 条目：%d' % tot)

if __name__ == '__main__':
    main()
