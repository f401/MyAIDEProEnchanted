import os as _os, sys as _sys
_sys.path.insert(0, _os.path.dirname(_os.path.dirname(_os.path.abspath(__file__))))
import paths as _P  # noqa: E402
import sys,subprocess,re,os
J='/data/data/com.termux/files/home/out/oracle/jgit/j-4.11.9.201909030838-r.jar'
def orc(cn):
    out=subprocess.run(['javap','-p','-c','-cp',J,cn],capture_output=True,text=True).stdout
    cur=None; res={}
    for l in out.split('\n'):
        m=re.match(r'^  [\w\.\$<>\[\]]+ ([\w\$<>]+)\(',l)
        if m and not l.startswith('    '):
            cur=m.group(1); res.setdefault(cur,[])
        if cur and ('putfield' in l or 'putstatic' in l):
            mm=re.search(r'// Field (\w+):([\w/;\$\[\(\)]+)',l)
            if mm: res[cur].append(mm.group(1))
    return res
for cn in sys.argv[1:]:
    r=orc(cn)
    print('==',cn)
    for k,v in r.items():
        if k in ('<init>','<clinit>') or len(v)>0:
            print('  ',k,'->',', '.join(v))
