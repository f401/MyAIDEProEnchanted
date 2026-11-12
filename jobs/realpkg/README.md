# realpkg —— 真实包名、混淆类名的那批类

`abcd/*` 之外，这个 APK 里还有一批**包名保留、类名被混淆**的类：
`com/aide/ui/U`、`com/aide/ui/Wa$a`、`com/aide/engine/A`…

- 它们不在 `abcd/` 命名空间里，所以进不了 enging/aide 那些 part（那边 `probe_prefix` 是 `abcd`）；
- 但它们的**包名是真实信息**：`com/aide/ui/U` 只可能是 `com/aide/ui` 里的某个类，
  配上 AIDE+ 2.3.5 引擎 jar 里同包的 217 个真名类，判据比 `abcd/*` 强得多
  （**同包 + 方法描述符多重集相同 + 常量串重合**）。

本 part 的 `probe_prefix` = `com/aide/ui`，第一列写**全名**（`com/aide/ui/U`），
`innercheck`/`rebuild_tsrg` 都按全名处理；只有第一列不含 `/` 时才用前缀兜底。

## 判据（与 `docs/RESTORED.md` 同一套，但同包使判据更硬）

1. 方法描述符多重集（把 `com/aide/**`、`abcd/**` 等私有类型归一成 `L*;`）**完全相同**；
2. 常量串重合数（`Ha`：4 条，`Wa`：3 条，`aa`：46 条，`U`：19 条）；
3. 字段数相同、构造器描述符相同；
4. 按描述符唯一配对后，方法名能读出语义（`U` 的 `VH()Activity → getCurrentActivity`、
   `j6(I,[Object])String → getString`、`j6(ServiceContainer,String) → init`）。

## 已定名（第一批 16 个）

见 `class_map.tsv`：`U=ServiceContainer`、`aa=AppPreferences`、`ca=AppFileIcons`、
`Ha=GregorianCalendarUtil`、`Wa=MainSearchBarNoTabs`(+"$SearchLabel")、`V=AppCommands`、
`Z=QuickActionMenu`、`P=ExtendLibraries`、`Ga=ViewVisibilityManage`(+`$a`)、
`Q/T=ServiceContainer$a/$b`、`M=GlobalKeyCommand`、`Za=MenuSearchWidget`、`fa=MenuGotoLineWidget`。

## 下一步

- `com/aide/ui/**` 还有 99 个短名类待定（多数是 `MainActivity$*` 等匿名内部类，形状并列 ⇒ 需按引用关系逐个判）；
- `com/aide/common/**`（108）、`com/aide/engine/**`（63）同理，可用各自包名 + oracle 同包类定。
