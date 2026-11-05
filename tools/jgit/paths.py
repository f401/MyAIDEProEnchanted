"""paths.py —— 全仓库统一的路径解析。

**已落地的工程就在 `process/`**（构建输入 + 已确认的真相 + 产物，一个目录全包）：

    process/deob.json              工程配置（通用 kit 用）
    jobs/jgit/{class_map.tsv, members.tsrg, params.tsv}   依赖 jgit 的真相
    jobs/jsch/{class_map.tsv, members.tsrg, params.tsv}   依赖 jsch 的真相
    jobs/aide/{class_map.tsv, members.tsrg}               AIDE 自有类（→ abcd/aide/）
    process/truth/head/mappings_head.txt  历史补丁（AIDE 首轮改名 20 行）
    process/truth/smali_index.tsv         类描述符 → smali 真实文件名（大小写不敏感 FS 必用）

    process/mappings.txt           TSRG2 产物（由 truth/ 派生，别手改）
    process/verify_allow.tsv       已知差异白名单

    part 顺序：head → jgit → jsch → aide（见 process/deob.json 的 parts）；
    `MAPS/TSRGS/PARAM_FILES` 是各 part 的真实文件，`MAP/TSRG/PARAMS` 是给只读脚本用的
    **合并视图**（`$HOME/out/work/merged/`，内容哈希做戳）；要写真相请用 deob 的
    ClassMap/MemberMap（它们知道每行来自哪个 part）。

    process/base/merged_ok.jar     改名输入基线
    process/base/merged_pub.jar    widen_access 产物
    process/src/*.jar              逐 dex 的 dex2jar 产物
    process/{d8.jar,android.jar,ForgeAutoRenamingTool-1.0.8-all.jar}

`jobs/<名字>/` 只放**还没落地**的新依赖工程（`deob init` 生成，见 docs/NEW-JOB.md）。

兼容：`$HOME/out/work/` 下同名的旧文件作为回退（老脚本/老环境）。
"""
import hashlib
import os
import sys

REPO = os.path.dirname(os.path.dirname(os.path.dirname(os.path.abspath(__file__))))
JOB = os.path.join(REPO, 'process')
TRUTH = os.path.join(JOB, 'truth')
HOME = os.path.expanduser('~')

# 分表定义只写一份：直接读 process/deob.json（part 级 probe_prefix 也在里面）
_DE = os.path.join(REPO, 'tools', 'deob')
if _DE not in sys.path:
    sys.path.insert(0, _DE)
import config as _CFG  # noqa: E402
PROJ = _CFG.load(os.path.join(JOB, 'deob.json'))
PART_DIRS = [(p['name'], p['dir'] or os.path.dirname(p['class_map'])) for p in PROJ.parts]
PART_PREFIX = {p['name']: p['probe_prefix'] for p in PROJ.parts}

# 分表顺序 = 汇总顺序（与 process/deob.json 的 parts 一致）
# 各依赖的真相在 jobs/<依赖>/；head 是 AIDE 自己的历史补丁，留在 process/truth/。
PART_DIRS = [
    ('head', os.path.join(TRUTH, 'head')),
    ('jgit', os.path.join(REPO, 'jobs', 'jgit')),
    ('jsch', os.path.join(REPO, 'jobs', 'jsch')),
    ('aide', os.path.join(REPO, 'jobs', 'aide')),
    ('dx', os.path.join(REPO, 'jobs', 'dx')),
    ('crashlytics', os.path.join(REPO, 'jobs', 'crashlytics')),
    ('fabric', os.path.join(REPO, 'jobs', 'fabric')),
    ('spongycastle', os.path.join(REPO, 'jobs', 'spongycastle')),
    ('zipsigner', os.path.join(REPO, 'jobs', 'zipsigner')),
    ('dropbox', os.path.join(REPO, 'jobs', 'dropbox')),
    ('engine', os.path.join(REPO, 'jobs', 'engine')),
    ('proguard', os.path.join(REPO, 'jobs', 'proguard')),
    ('jdcore', os.path.join(REPO, 'jobs', 'jdcore')),
    ('antlr', os.path.join(REPO, 'jobs', 'antlr')),
]
PARTS = [n for n, _ in PART_DIRS]


def _part_file(part, name):
    d = dict(PART_DIRS).get(part)
    p = os.path.join(d, name) if d else os.path.join(TRUTH, part, name)
    return p if os.path.exists(p) else None


HEAD = _part_file('head', 'mappings_head.txt')
MAPS = [x for x in (_part_file(p, 'class_map.tsv') for p in PARTS) if x]
TSRGS = [x for x in (_part_file(p, 'members.tsrg') for p in PARTS) if x]
PARAM_FILES = [x for x in (_part_file(p, 'params.tsv') for p in PARTS) if x]

# 老环境回退：$HOME/out/work/ 下同名旧文件（单份时代）
_ALIAS = {
    'class_map.tsv': 'jgit_map_clean.tsv',
    'members.tsrg': 'jgit_members_clean.tsrg',
    'mappings_head.txt': 'mappings_head.txt',
    'smali_index.tsv': 'smali_index.tsv',
    'params.tsv': 'params.tsv',
}


def _legacy(name):
    return os.path.join(HOME, 'out', 'work', _ALIAS.get(name, name))


def _merged(name, pairs, expand_prefix=False):
    """把多份 part 拼成一个**只读视图**（内容哈希做戳，变了才重建）。

    `expand_prefix=True` 时把短名探针按**该 part 自己的前缀**展开成全名——
    这样各 part 前缀不同也不会串味，60 多个只读脚本拿到的永远是全名。

    要写真相请用 `tools/deob/mapping.py` 的 ClassMap/MemberMap（它们知道每行来自哪个 part）。
    """
    pairs = [(p, pre) for p, pre in pairs if p and os.path.exists(p)]
    if not pairs:
        return _legacy(name)
    if len(pairs) == 1 and not expand_prefix:
        return pairs[0][0]
    dst_dir = os.path.join(HOME, 'out', 'work', 'merged')
    os.makedirs(dst_dir, exist_ok=True)
    dst = os.path.join(dst_dir, name)
    stamp = dst + '.sha'
    h = hashlib.sha256()
    for f, pre in pairs:
        h.update(f.encode('utf-8'))
        h.update(pre.encode('utf-8'))
        h.update(open(f, 'rb').read())
    digest = h.hexdigest()
    if not (os.path.exists(dst) and os.path.exists(stamp)
            and open(stamp).read().strip() == digest):
        with open(dst, 'w', encoding='utf-8') as out:
            for f, pre in pairs:
                for line in open(f, encoding='utf-8'):
                    if expand_prefix and line.strip() and not line.startswith('#'):
                        col = line.rstrip('\n').split('\t')
                        if len(col) > 1 and '/' not in col[0]:
                            col[0] = pre + '/' + col[0]
                            line = '\t'.join(col) + '\n'
                    out.write(line)
        with open(stamp, 'w') as f:
            f.write(digest)
    return dst


MAP = _merged('class_map.tsv',
              [(p, PROJ.class_map_prefix.get(p, PROJ.probe_prefix)) for p in MAPS],
              expand_prefix=True)
TSRG = _merged('members.tsrg', [(p, '') for p in TSRGS])
PARAMS = _merged('params.tsv', [(p, '') for p in PARAM_FILES])
SMALI_INDEX = (os.path.join(TRUTH, 'smali_index.tsv')
               if os.path.exists(os.path.join(TRUTH, 'smali_index.tsv')) else _legacy('smali_index.tsv'))

MAPPINGS = os.path.join(JOB, 'mappings.txt')
ALLOW = os.path.join(JOB, 'verify_allow.tsv')
CONFIG = os.path.join(JOB, 'deob.json')

# 构建输入
BASE_OK = os.path.join(JOB, 'base', 'merged_ok.jar')
BASE_PUB = os.path.join(JOB, 'base', 'merged_pub.jar')
SRC_DIR = os.path.join(JOB, 'src')
SMALI = os.path.join(REPO, 'src', 'smali', 'abcd')
FART = os.path.join(JOB, 'ForgeAutoRenamingTool-1.0.8-all.jar')
D8 = os.path.join(JOB, 'd8.jar')
ANDROID_JAR = os.path.join(JOB, 'android.jar')

# oracle（本机解压/下载，不入库）
ORACLE_DIR = os.path.join(HOME, 'out', 'oracle', 'jgit')
SRC_JGIT = os.path.join(HOME, 'src', 'jgit')
