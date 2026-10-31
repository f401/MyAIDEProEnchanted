"""paths.py —— 全仓库统一的路径解析。

**一个依赖一个工程目录**：`jobs/<名字>/`（见 docs/NEW-JOB.md）。本项目（AIDE/jgit）在 `jobs/jgit/`：

    jobs/jgit/deob.json            工程配置（通用 kit 用）
    jobs/jgit/truth/class_map.tsv  类映射（探针 <TAB> 目标 <TAB> 证据）
    jobs/jgit/truth/members.tsrg   成员映射（TSRG 块）
    jobs/jgit/truth/mappings_head.txt  TSRG2 头部（AIDE 侧改名 20 行）
    jobs/jgit/truth/smali_index.tsv   类描述符 → smali 真实文件名（大小写不敏感 FS 必用）
    jobs/jgit/truth/params.tsv     方法参数名（oracle LVT / jgit 源码；见 pipeline/paramfill.py）
    jobs/jgit/mappings.txt         TSRG2 产物（派生，不要手改）
    jobs/jgit/verify_allow.tsv     已知差异白名单

**构建输入**（只读）仍在 `process/`：

    process/base/merged_ok.jar   改名输入基线
    process/base/merged_pub.jar  widen_access 产物
    process/src/*.jar            逐 dex 的 dex2jar 产物
    process/{d8.jar,android.jar,ForgeAutoRenamingTool-1.0.8-all.jar}

兼容：`$HOME/out/work/` 下同名的旧文件作为回退（老脚本/老环境）。
"""
import os

REPO = os.path.dirname(os.path.dirname(os.path.dirname(os.path.abspath(__file__))))
JOB = os.path.join(REPO, 'jobs', 'jgit')
TRUTH = os.path.join(JOB, 'truth')
HOME = os.path.expanduser('~')

# 仓库内新名 → $HOME 里的旧名（回退用）
_ALIAS = {
    'class_map.tsv': 'jgit_map_clean.tsv',
    'members.tsrg': 'jgit_members_clean.tsrg',
    'mappings_head.txt': 'mappings_head.txt',
    'smali_index.tsv': 'smali_index.tsv',
    'params.tsv': 'params.tsv',
}


def _pick(name):
    p = os.path.join(TRUTH, name)
    if os.path.exists(p):
        return p
    return os.path.join(HOME, 'out', 'work', _ALIAS.get(name, name))


MAP = _pick('class_map.tsv')
TSRG = _pick('members.tsrg')
HEAD = _pick('mappings_head.txt')
SMALI_INDEX = _pick('smali_index.tsv')
PARAMS = _pick('params.tsv')

MAPPINGS = os.path.join(JOB, 'mappings.txt')
ALLOW = os.path.join(JOB, 'verify_allow.tsv')
CONFIG = os.path.join(JOB, 'deob.json')

# 构建输入（只读）
BASE_OK = os.path.join(REPO, 'process', 'base', 'merged_ok.jar')
BASE_PUB = os.path.join(REPO, 'process', 'base', 'merged_pub.jar')
SRC_DIR = os.path.join(REPO, 'process', 'src')
SMALI = os.path.join(REPO, 'src', 'smali', 'abcd')
FART = os.path.join(REPO, 'process', 'ForgeAutoRenamingTool-1.0.8-all.jar')
D8 = os.path.join(REPO, 'process', 'd8.jar')
ANDROID_JAR = os.path.join(REPO, 'process', 'android.jar')

# oracle（本机解压/下载，不入库）
ORACLE_DIR = os.path.join(HOME, 'out', 'oracle', 'jgit')
SRC_JGIT = os.path.join(HOME, 'src', 'jgit')
