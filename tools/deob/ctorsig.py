import sys, os, re, json, glob, struct, zipfile, collections
sys.path.insert(0,'/storage/emulated/0/MyAIDEProEnchanted/tools/deob')
import subgraph as S, jvm, smali
ROOT='/storage/emulated/0/MyAIDEProEnchanted'
probe,oracle,mapped,pkgmap,ev = S._load('jobs/jdcore','org/c/a/a','jd-core')
PROBE_NS='org/c/a/a'
# ---------- 探针侧：new-instance + 紧随的 <init> 描述符
idx=smali.Index(os.path.join(ROOT,'process/truth/smali_index.tsv'))
cfg=json.load(open(os.path.join(ROOT,'process/deob.json'),encoding='utf-8'))
roots=[os.path.join(ROOT,'process',r) for r in cfg['probe_roots']]
NEW=re.compile(r'new-instance v(\d+), L([A-Za-z0-9_$/]+);')
INIT=re.compile(r'invoke-direct(?:\s*\{([^}]*)\}|/range\s*\{([^}]*)\}), L([A-Za-z0-9_$/]+);-><init>(\([^)]*\)V)')
psites=collections.defaultdict(list)   # created → [(creator, desc)]
for q in [x for x in probe if x.startswith(PROBE_NS)]:
    path=idx.file_for(roots,q)
    if not os.path.exists(path): continue
    lines=open(path,encoding='utf-8',errors='replace').read().split('\n')
    for i,l in enumerate(lines):
        m=NEW.search(l)
        if not m: continue
        reg,tgt=m.group(1),m.group(2)
        for j in range(i+1, min(i+12,len(lines))):
            mi=INIT.search(lines[j])
            if mi and mi.group(3)==tgt:
                psites[tgt].append((q, mi.group(4))); break
print('探针侧 creation sites:', sum(len(v) for v in psites.values()), '覆盖类', len(psites))
# ---------- oracle 侧
z=zipfile.ZipFile(os.path.expanduser('~/out/oracle/jd/jd-core-1.1.3.jar'))
osites=collections.defaultdict(list)
for e in z.namelist():
    if not e.endswith('.class'): continue
    c=jvm.parse(z.read(e))
    code_holders=[(m['name'],m['code'],m['desc']) for m in c['members'] if m['kind']=='m' and m['code']]
    for nm,code,md in code_holders:
        for i,b in enumerate(code):
            if b!=0xbb or i+3>len(code): continue
            ci=struct.unpack_from('>H',code,i+1)[0]
            ui=c['clsidx'].get(ci)
            own=c['utf'].get(ui) if ui else None
            if not own: continue
            for j in range(i+3, min(i+15,len(code))):
                if code[j]==0xb7:
                    mi2=struct.unpack_from('>H',code,j+1)[0]
                    r=c['refmap'].get(mi2)
                    if r and r[1]=='<init>' and r[0]==own:
                        osites[own].append((c['this'], r[2])); break
print('oracle 侧 creation sites:', sum(len(v) for v in osites.values()), '覆盖类', len(osites))
json.dump({'probe':{k:v for k,v in psites.items()},'oracle':{k:v for k,v in osites.items()}},
          open('/data/data/com.termux/files/home/tmp/ctor_sites.json','w'))
