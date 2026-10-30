import os as _os, sys as _sys
_sys.path.insert(0, _os.path.dirname(_os.path.dirname(_os.path.abspath(__file__))))
import paths as _P  # noqa: E402
import sys,os,re
import probelib as P
IDX={}
for l in open(_P.SMALI_INDEX):
    a,b=l.rstrip('\n').split('\t'); IDX[a]=b
mp=P.load_map()
for cn in sys.argv[1:]:
    probe='abcd/'+cn
    path=P.SMALI+'/'+IDX.get(probe,cn+'.smali')
    if not os.path.exists(path): print(cn,'MISSING'); continue
    t=open(path,encoding='utf-8',errors='replace').read()
    head=re.search(r'^\.class([^\n]*)\n(?:.*?\n)?\.super ([^\n]+)',t,re.M)
    cls=re.search(r'^\.class([^\n]*)',t,re.M).group(1).strip()
    sup=re.search(r'^\.super ([^\n]+)',t,re.M).group(1)
    ifs=re.findall(r'^\.implements ([^\n]+)',t,re.M)
    pr=P.parse_smali(path)
    print('== abcd/%s  [%s]  -> %s' % (cn, cls, mp.get(probe)))
    print('   super=%s  ifaces=%s' % (sup, ','.join(ifs)))
    fs=[(n,d) for n,d,s,y in pr['fields']]
    print('   fields:', ', '.join('%s:%s'%(n,d[:28]) for n,d in fs[:14]))
    print('   nmeth=%d' % len(pr['methods']))
