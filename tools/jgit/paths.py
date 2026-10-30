"""paths.py —— 全仓库统一的路径解析（优先仓库内 truth，回退 $HOME 旧位置）。

仓库内的 `process/truth/` 是**唯一真相**：
    jgit_map_clean.tsv      类映射（探针 <TAB> 目标 <TAB> 证据）
    jgit_members_clean.tsrg 成员映射（TSRG 块）
    mappings_head.txt       TSRG2 头部（AIDE 侧改名，20 行）
    smali_index.tsv         类描述符 → smali 真实文件名（大小写不敏感 FS 必须用它）

oracle/基线仍放在仓库里（oracle 太重，取决于本机是否解压过）：
    process/base/merged_ok.jar   改名输入基线
    process/base/merged_pub.jar  widen_access 产物
    process/src/*.jar            逐 dex 的 dex2jar 产物
"""
import os

REPO = os.path.dirname(os.path.dirname(os.path.dirname(os.path.abspath(__file__))))
TRUTH = os.path.join(REPO, 'process', 'truth')
HOME = os.path.expanduser('~')


def _pick(name):
    p = os.path.join(TRUTH, name)
    if os.path.exists(p):
        return p
    return os.path.join(HOME, 'out', 'work', name)


MAP = _pick('jgit_map_clean.tsv')
TSRG = _pick('jgit_members_clean.tsrg')
HEAD = _pick('mappings_head.txt')
SMALI_INDEX = _pick('smali_index.tsv')

# 仓库内固定位置
MAPPINGS = os.path.join(REPO, 'process', 'mappings.txt')
ALLOW = os.path.join(REPO, 'process', 'verify_allow.tsv')
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
