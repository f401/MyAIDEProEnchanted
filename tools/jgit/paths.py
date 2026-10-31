"""paths.py —— 全仓库统一的路径解析。

**已落地的工程就在 `process/`**（构建输入 + 已确认的真相 + 产物，一个目录全包）：

    process/deob.json              工程配置（通用 kit 用）
    process/truth/<part>/class_map.tsv   类映射（探针 <TAB> 目标 <TAB> 证据）
    process/truth/<part>/members.tsrg   成员映射（TSRG 块）
    process/truth/<part>/params.tsv     方法参数名（可缺；oracle LVT / jgit 源码）
    process/truth/head/mappings_head.txt  TSRG2 头部（AIDE 侧改名 20 行）
    process/truth/smali_index.tsv  类描述符 → smali 真实文件名（大小写不敏感 FS 必用）

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

REPO = os.path.dirname(os.path.dirname(os.path.dirname(os.path.abspath(__file__))))
JOB = os.path.join(REPO, 'process')
TRUTH = os.path.join(JOB, 'truth')
HOME = os.path.expanduser('~')

# 分表顺序 = 汇总顺序（与 process/deob.json 的 parts 一致）
PARTS = ['head', 'jgit', 'jsch', 'aide']


def _part_file(part, name):
    p = os.path.join(TRUTH, part, name)
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


def _merged(name, files):
    """把多份 part 拼成一个**只读视图**（内容哈希做戳，变了才重建）。

    60 多个只读脚本直接 `open(paths.MAP)` 就还能用；要写真相请用
    `tools/deob/mapping.py` 的 ClassMap/MemberMap（它们知道每行来自哪个 part）。
    """
    files = [f for f in files if f and os.path.exists(f)]
    if not files:
        return _legacy(name)
    if len(files) == 1:
        return files[0]
    dst_dir = os.path.join(HOME, 'out', 'work', 'merged')
    os.makedirs(dst_dir, exist_ok=True)
    dst = os.path.join(dst_dir, name)
    stamp = dst + '.sha'
    h = hashlib.sha256()
    for f in files:
        h.update(open(f, 'rb').read())
    digest = h.hexdigest()
    if not (os.path.exists(dst) and os.path.exists(stamp)
            and open(stamp).read().strip() == digest):
        with open(dst, 'w', encoding='utf-8') as out:
            for f in files:
                out.write(open(f, encoding='utf-8').read())
        with open(stamp, 'w') as f:
            f.write(digest)
    return dst


MAP = _merged('class_map.tsv', MAPS)
TSRG = _merged('members.tsrg', TSRGS)
PARAMS = _merged('params.tsv', PARAM_FILES)
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
