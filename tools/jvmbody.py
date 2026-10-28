#!/usr/bin/env python3
"""class 文件解析 + 方法体特征（ldc 字符串 / 成员引用），用于成员级匹配。"""
import struct

LEN={}
for o in (0x10,0x15,0x16,0x17,0x18,0x19,0x36,0x37,0x38,0x39,0x3a,0xa9,0xbc): LEN[o]=2
for o in (0x11,0x12,0x84,0xb2,0xb3,0xb4,0xb5,0xb6,0xb7,0xb8,0xb9,0xbb,0xbd,0xc0,0xc1): LEN[o]=3
for o in range(0x99,0xa9): LEN[o]=3
for o in (0xc6,0xc7): LEN[o]=3
LEN.update({0x13:3,0x14:3,0xc5:4,0xba:5,0xc8:5,0xc9:5})

def parse(b):
    n=struct.unpack_from('>H',b,8)[0]; o=10; i=1
    utf={};cls={};nat={};refs=[];strs={};ints={}
    while i<n:
        tag=b[o]; o+=1
        if tag==1:
            ln=struct.unpack_from('>H',b,o)[0]; utf[i]=b[o+2:o+2+ln].decode('utf-8','replace'); o+=2+ln
        elif tag==7: cls[i]=struct.unpack_from('>H',b,o)[0]; o+=2
        elif tag==8: strs[i]=struct.unpack_from('>H',b,o)[0]; o+=2
        elif tag==12: nat[i]=struct.unpack_from('>HH',b,o); o+=4
        elif tag in (9,10,11): refs.append((tag,i)+struct.unpack_from('>HH',b,o)); o+=4
        elif tag==15: o+=3
        elif tag==16: o+=2
        elif tag==3: ints[i]=struct.unpack_from('>i',b,o)[0]; o+=4
        elif tag in (4,17,18): o+=4
        elif tag in (5,6): o+=8; i+=1
        elif tag in (19,20): o+=2
        else: raise ValueError(tag)
        i+=1
    acc_off=o
    this=cls.get(struct.unpack_from('>H',b,o+2)[0]); sup=cls.get(struct.unpack_from('>H',b,o+4)[0])
    p=o+6; ic=struct.unpack_from('>H',b,p)[0]; ifaces=[cls.get(struct.unpack_from('>H',b,p+2+2*k)[0]) for k in range(ic)]
    p+=2+2*ic
    members=[]
    for kind in ('f','m'):
        cnt=struct.unpack_from('>H',b,p)[0]; p+=2
        for _ in range(cnt):
            a,nm,ds,ac=struct.unpack_from('>HHHH',b,p); p+=8
            code=None;cval=None
            for _ in range(ac):
                an=struct.unpack_from('>H',b,p)[0]; ln=struct.unpack_from('>I',b,p+2)[0]
                if kind=='m' and utf.get(an)=='Code':
                    cl=struct.unpack_from('>I',b,p+10)[0]
                    code=b[p+14:p+14+cl]
                if kind=='f' and utf.get(an)=='ConstantValue':
                    ci=struct.unpack_from('>H',b,p+6)[0]
                    if ci in ints: cval=('I',ints[ci])
                    elif ci in strs: cval=('S',utf.get(strs[ci]))
                p+=6+ln
            members.append(dict(kind=kind,acc=a,name=utf.get(nm),desc=utf.get(ds),code=code,attrs=ac,cval=cval))
    refmap={}
    for tag,idx,ci,ni in refs:
        ow=utf.get(cls.get(ci)); nn=nat.get(ni)
        if ow and nn: refmap[idx]=(ow,utf.get(nn[0]),utf.get(nn[1]),tag)
    return dict(acc_off=acc_off,this=utf.get(this),sup=utf.get(sup),
                ifaces=[utf.get(x) for x in ifaces],members=members,refmap=refmap,utf=utf,strs=strs)

def body_features(cl,code):
    """返回 (字符串集合, owner 集合)"""
    S=set(); R=set(); i=0; n=len(code)
    while i<n:
        op=code[i]
        if op==0x12:
            k=code[i+1]
            if cl['strs'].get(k): S.add(cl['utf'].get(cl['strs'][k]))
            i+=2; continue
        if op==0x13:
            k=struct.unpack_from('>H',code,i+1)[0]
            if cl['strs'].get(k): S.add(cl['utf'].get(cl['strs'][k]))
            i+=3; continue
        if 0xb2<=op<=0xb5 or 0xb6<=op<=0xb9:
            idx=struct.unpack_from('>H',code,i+1)[0]
            rm=cl.get('refmap',{}).get(idx)
            if rm: R.add(rm[0])
            i+=3; continue
        if op==0xaa:
            pad=(4-((i+1)%4))%4; base=i+1+pad
            d,lo,hi=struct.unpack_from('>iii',code,base)
            i=base+12+4*(hi-lo+1); continue
        if op==0xab:
            pad=(4-((i+1)%4))%4; base=i+1+pad
            d,np_=struct.unpack_from('>ii',code,base)
            i=base+8+8*np_; continue
        if op==0xc4:
            op2=code[i+1]
            i+= 6 if op2==0x84 else 4; continue
        i+=LEN.get(op,1)
    return S,R

def body_refs(cl,code):
    """按出现顺序返回 [(kind,owner,name,desc)]，kind='m' 调用 / 'f' 字段"""
    out=[]; i=0; n=len(code)
    while i<n:
        op=code[i]
        if 0xb2<=op<=0xb5:
            idx=struct.unpack_from('>H',code,i+1)[0]; rm=cl['refmap'].get(idx)
            if rm: out.append(('f',)+rm[:3])
            i+=3; continue
        if 0xb6<=op<=0xb9:
            idx=struct.unpack_from('>H',code,i+1)[0]; rm=cl['refmap'].get(idx)
            if rm: out.append(('m',)+rm[:3])
            i+=3; continue
        if op==0xaa:
            pad=(4-((i+1)%4))%4; base=i+1+pad
            d,lo,hi=struct.unpack_from('>iii',code,base); i=base+12+4*(hi-lo+1); continue
        if op==0xab:
            pad=(4-((i+1)%4))%4; base=i+1+pad
            d,np_=struct.unpack_from('>ii',code,base); i=base+8+8*np_; continue
        if op==0xc4:
            i+= 6 if code[i+1]==0x84 else 4; continue
        if op in (0x12,0x13):
            i+= 2 if op==0x12 else 3; continue
        i+=LEN.get(op,1)
    return out
