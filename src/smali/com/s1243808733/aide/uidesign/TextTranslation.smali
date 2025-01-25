.class public Lcom/s1243808733/aide/uidesign/TextTranslation;
.super Ljava/lang/Object;
.source "TextTranslation.java"


# static fields
.field private static final TRANSLATIONS_WIDGET:[[Ljava/lang/String;

.field private static final TRANSLATIONS_WIDGET_MENU:[[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 65

    .line 14
    const/16 v0, 0xa

    new-array v1, v0, [[Ljava/lang/String;

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "Parent View..."

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string v4, "父视图..."

    const/4 v6, 0x1

    aput-object v4, v3, v6

    aput-object v3, v1, v5

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "Source code..."

    aput-object v4, v3, v5

    const-string v4, "源代码..."

    aput-object v4, v3, v6

    aput-object v3, v1, v6

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "Add inside..."

    aput-object v4, v3, v5

    const-string v7, "在里面添加..."

    aput-object v7, v3, v6

    aput-object v3, v1, v2

    new-array v3, v2, [Ljava/lang/String;

    const-string v8, "Add above..."

    aput-object v8, v3, v5

    const-string v8, "在上面添加..."

    aput-object v8, v3, v6

    const/4 v8, 0x3

    aput-object v3, v1, v8

    new-array v3, v2, [Ljava/lang/String;

    aput-object v4, v3, v5

    aput-object v7, v3, v6

    const/4 v4, 0x4

    aput-object v3, v1, v4

    new-array v3, v2, [Ljava/lang/String;

    const-string v7, "Add below..."

    aput-object v7, v3, v5

    const-string v7, "在下面添加..."

    aput-object v7, v3, v6

    const/4 v7, 0x5

    aput-object v3, v1, v7

    new-array v3, v2, [Ljava/lang/String;

    const-string v9, "Add before..."

    aput-object v9, v3, v5

    const-string v9, "在前面添加..."

    aput-object v9, v3, v6

    const/4 v9, 0x6

    aput-object v3, v1, v9

    new-array v3, v2, [Ljava/lang/String;

    const-string v10, "Add behind..."

    aput-object v10, v3, v5

    const-string v10, "在后面添加..."

    aput-object v10, v3, v6

    const/4 v10, 0x7

    aput-object v3, v1, v10

    new-array v3, v2, [Ljava/lang/String;

    const-string v11, "Surround with..."

    aput-object v11, v3, v5

    const-string v11, "设置父布局..."

    aput-object v11, v3, v6

    const/16 v11, 0x8

    aput-object v3, v1, v11

    new-array v3, v2, [Ljava/lang/String;

    const-string v12, "Delete"

    aput-object v12, v3, v5

    const-string v12, "删除"

    aput-object v12, v3, v6

    const/16 v12, 0x9

    aput-object v3, v1, v12

    sput-object v1, Lcom/s1243808733/aide/uidesign/TextTranslation;->TRANSLATIONS_WIDGET_MENU:[[Ljava/lang/String;

    .line 29
    new-array v1, v2, [Ljava/lang/String;

    const-string v3, "ImageView"

    aput-object v3, v1, v5

    const-string v3, "图片视图"

    aput-object v3, v1, v6

    new-array v3, v2, [Ljava/lang/String;

    const-string v13, "Switch"

    aput-object v13, v3, v5

    const-string v13, "开关"

    aput-object v13, v3, v6

    new-array v13, v2, [Ljava/lang/String;

    const-string v14, "ToggleButton"

    aput-object v14, v13, v5

    const-string v14, "切换按钮"

    aput-object v14, v13, v6

    new-array v14, v2, [Ljava/lang/String;

    const-string v15, "ProgressBar"

    aput-object v15, v14, v5

    const-string v15, "进度条"

    aput-object v15, v14, v6

    new-array v15, v2, [Ljava/lang/String;

    const-string v16, "TextView"

    aput-object v16, v15, v5

    const-string v16, "文本视图"

    aput-object v16, v15, v6

    new-array v0, v2, [Ljava/lang/String;

    const-string v17, "Widget"

    aput-object v17, v0, v5

    const-string v17, "控件"

    aput-object v17, v0, v6

    new-array v12, v2, [Ljava/lang/String;

    const-string v18, "Button"

    aput-object v18, v12, v5

    const-string v18, "按钮"

    aput-object v18, v12, v6

    new-array v11, v2, [Ljava/lang/String;

    const-string v19, "Small Button"

    aput-object v19, v11, v5

    const-string v19, "小按钮"

    aput-object v19, v11, v6

    new-array v10, v2, [Ljava/lang/String;

    const-string v20, "Bar Button"

    aput-object v20, v10, v5

    const-string v20, "条形按钮"

    aput-object v20, v10, v6

    new-array v9, v2, [Ljava/lang/String;

    const-string v21, "CheckBox"

    aput-object v21, v9, v5

    const-string v21, "多选按钮"

    aput-object v21, v9, v6

    new-array v7, v2, [Ljava/lang/String;

    const-string v22, "RadioButton"

    aput-object v22, v7, v5

    const-string v22, "单选按钮"

    aput-object v22, v7, v6

    new-array v4, v2, [Ljava/lang/String;

    const-string v23, "View"

    aput-object v23, v4, v5

    const-string v23, "视图"

    aput-object v23, v4, v6

    new-array v8, v2, [Ljava/lang/String;

    const-string v24, "Text"

    aput-object v24, v8, v5

    const-string v24, "文本"

    aput-object v24, v8, v6

    new-array v6, v2, [Ljava/lang/String;

    const-string v25, "Small Text"

    aput-object v25, v6, v5

    const-string v25, "小文本"

    const/16 v24, 0x1

    aput-object v25, v6, v24

    move-object/from16 v25, v6

    new-array v6, v2, [Ljava/lang/String;

    const-string v26, "Large Text"

    aput-object v26, v6, v5

    const-string v26, "大文本"

    aput-object v26, v6, v24

    move-object/from16 v26, v6

    new-array v6, v2, [Ljava/lang/String;

    const-string v27, "Text Field"

    aput-object v27, v6, v5

    const-string v27, "编辑框"

    aput-object v27, v6, v24

    move-object/from16 v28, v6

    new-array v6, v2, [Ljava/lang/String;

    const-string v29, "EditText (multiline)"

    aput-object v29, v6, v5

    const-string v29, "编辑框（多行）"

    aput-object v29, v6, v24

    move-object/from16 v29, v6

    new-array v6, v2, [Ljava/lang/String;

    const-string v30, "EditText (password)"

    aput-object v30, v6, v5

    const-string v30, "编辑框（密码）"

    aput-object v30, v6, v24

    move-object/from16 v30, v6

    new-array v6, v2, [Ljava/lang/String;

    const-string v31, "EditText (number password)"

    aput-object v31, v6, v5

    const-string v31, "编辑框（数字密码）"

    aput-object v31, v6, v24

    move-object/from16 v31, v6

    new-array v6, v2, [Ljava/lang/String;

    const-string v32, "EditText (email)"

    aput-object v32, v6, v5

    const-string v32, "编辑框（邮箱）"

    aput-object v32, v6, v24

    move-object/from16 v32, v6

    new-array v6, v2, [Ljava/lang/String;

    const-string v33, "EditText (name)"

    aput-object v33, v6, v5

    const-string v33, "编辑框（名字）"

    aput-object v33, v6, v24

    move-object/from16 v33, v6

    new-array v6, v2, [Ljava/lang/String;

    const-string v34, "EditText (phone)"

    aput-object v34, v6, v5

    const-string v34, "编辑框（电话号码）"

    aput-object v34, v6, v24

    move-object/from16 v34, v6

    new-array v6, v2, [Ljava/lang/String;

    const-string v35, "EditText (address)"

    aput-object v35, v6, v5

    const-string v35, "编辑框（地址）"

    aput-object v35, v6, v24

    move-object/from16 v35, v6

    new-array v6, v2, [Ljava/lang/String;

    const-string v36, "EditText (date)"

    aput-object v36, v6, v5

    const-string v36, "编辑框（日期）"

    aput-object v36, v6, v24

    move-object/from16 v36, v6

    new-array v6, v2, [Ljava/lang/String;

    const-string v37, "EditText (signed number)"

    aput-object v37, v6, v5

    const-string v37, "编辑框（正负数）"

    aput-object v37, v6, v24

    move-object/from16 v37, v6

    new-array v6, v2, [Ljava/lang/String;

    const-string v38, "EditText (decimal)"

    aput-object v38, v6, v5

    const-string v38, "编辑框（小数）"

    aput-object v38, v6, v24

    move-object/from16 v38, v6

    new-array v6, v2, [Ljava/lang/String;

    const-string v39, "Advanced Widget"

    aput-object v39, v6, v5

    const-string v39, "高级控件"

    aput-object v39, v6, v24

    move-object/from16 v39, v6

    new-array v6, v2, [Ljava/lang/String;

    const-string v40, "DatePicker"

    aput-object v40, v6, v5

    const-string v40, "日期选择"

    aput-object v40, v6, v24

    move-object/from16 v40, v6

    new-array v6, v2, [Ljava/lang/String;

    const-string v41, "TimePicker"

    aput-object v41, v6, v5

    const-string v41, "时间选择"

    aput-object v41, v6, v24

    move-object/from16 v41, v6

    new-array v6, v2, [Ljava/lang/String;

    const-string v42, "NumberPicker"

    aput-object v42, v6, v5

    const-string v42, "数字选择"

    aput-object v42, v6, v24

    move-object/from16 v42, v6

    new-array v6, v2, [Ljava/lang/String;

    const-string v43, "RatingBar"

    aput-object v43, v6, v5

    const-string v43, "评分控件"

    aput-object v43, v6, v24

    move-object/from16 v43, v6

    new-array v6, v2, [Ljava/lang/String;

    const-string v44, "Adapter View"

    aput-object v44, v6, v5

    const-string v44, "适配器视图"

    aput-object v44, v6, v24

    move-object/from16 v44, v6

    new-array v6, v2, [Ljava/lang/String;

    const-string v45, "List View"

    aput-object v45, v6, v5

    const-string v45, "列表视图"

    aput-object v45, v6, v24

    move-object/from16 v45, v6

    new-array v6, v2, [Ljava/lang/String;

    const-string v46, "ExpandableListView"

    aput-object v46, v6, v5

    const-string v46, "可展开列表视图"

    aput-object v46, v6, v24

    move-object/from16 v47, v6

    new-array v6, v2, [Ljava/lang/String;

    const-string v48, "Expandable List View"

    aput-object v48, v6, v5

    aput-object v46, v6, v24

    move-object/from16 v46, v6

    new-array v6, v2, [Ljava/lang/String;

    const-string v48, "Layout"

    aput-object v48, v6, v5

    const-string v48, "布局"

    aput-object v48, v6, v24

    move-object/from16 v48, v6

    new-array v6, v2, [Ljava/lang/String;

    const-string v49, "RelativeLayout"

    aput-object v49, v6, v5

    const-string v49, "相对布局"

    aput-object v49, v6, v24

    move-object/from16 v49, v6

    new-array v6, v2, [Ljava/lang/String;

    const-string v50, "ScrollView"

    aput-object v50, v6, v5

    const-string v50, "滑动视图"

    aput-object v50, v6, v24

    move-object/from16 v51, v6

    new-array v6, v2, [Ljava/lang/String;

    const-string v52, "HorizontalScrollView"

    aput-object v52, v6, v5

    const-string v52, "横滑动视图"

    aput-object v52, v6, v24

    move-object/from16 v52, v6

    new-array v6, v2, [Ljava/lang/String;

    const-string v53, "Advanced Layout"

    aput-object v53, v6, v5

    const-string v53, "高级布局"

    aput-object v53, v6, v24

    move-object/from16 v53, v6

    new-array v6, v2, [Ljava/lang/String;

    const-string v54, "Button Bar"

    aput-object v54, v6, v5

    const-string v54, "按钮条"

    aput-object v54, v6, v24

    move-object/from16 v54, v6

    new-array v6, v2, [Ljava/lang/String;

    const-string v55, "GridLayout"

    aput-object v55, v6, v5

    const-string v55, "网格布局"

    aput-object v55, v6, v24

    move-object/from16 v55, v6

    new-array v6, v2, [Ljava/lang/String;

    const-string v56, "RadioGroup"

    aput-object v56, v6, v5

    const-string v56, "单选布局"

    aput-object v56, v6, v24

    move-object/from16 v56, v6

    new-array v6, v2, [Ljava/lang/String;

    const-string v57, "TableLayout"

    aput-object v57, v6, v5

    const-string v57, "表格布局"

    aput-object v57, v6, v24

    move-object/from16 v57, v6

    new-array v6, v2, [Ljava/lang/String;

    const-string v58, "TableRow"

    aput-object v58, v6, v5

    const-string v58, "表格行"

    aput-object v58, v6, v24

    move-object/from16 v58, v6

    new-array v6, v2, [Ljava/lang/String;

    const-string v59, "AbsoluteLayout"

    aput-object v59, v6, v5

    const-string v59, "绝对布局"

    aput-object v59, v6, v24

    move-object/from16 v59, v6

    new-array v6, v2, [Ljava/lang/String;

    const-string v60, "App Layout"

    aput-object v60, v6, v5

    const-string v60, "v4包控件"

    aput-object v60, v6, v24

    move-object/from16 v60, v6

    new-array v6, v2, [Ljava/lang/String;

    const-string v61, "Drawer Layout"

    aput-object v61, v6, v5

    const-string v61, "侧滑栏布局"

    aput-object v61, v6, v24

    move-object/from16 v61, v6

    new-array v6, v2, [Ljava/lang/String;

    const-string v62, "View Pager"

    aput-object v62, v6, v5

    aput-object v62, v6, v24

    const/16 v5, 0x3c

    new-array v5, v5, [[Ljava/lang/String;

    move-object/from16 v63, v6

    new-array v6, v2, [Ljava/lang/String;

    const-string v64, "LinearLayout"

    const/16 v62, 0x0

    aput-object v64, v6, v62

    const-string v64, "线性布局"

    aput-object v64, v6, v24

    aput-object v6, v5, v62

    aput-object v1, v5, v24

    new-array v1, v2, [Ljava/lang/String;

    const-string v6, "ImageButton"

    aput-object v6, v1, v62

    const-string v6, "图片按钮"

    aput-object v6, v1, v24

    aput-object v1, v5, v2

    const/4 v1, 0x3

    aput-object v3, v5, v1

    const/4 v1, 0x4

    aput-object v13, v5, v1

    const/4 v1, 0x5

    aput-object v14, v5, v1

    const/4 v1, 0x6

    aput-object v15, v5, v1

    const/4 v1, 0x7

    aput-object v0, v5, v1

    const/16 v0, 0x8

    aput-object v12, v5, v0

    const/16 v0, 0x9

    aput-object v11, v5, v0

    const/16 v0, 0xa

    aput-object v10, v5, v0

    const/16 v0, 0xb

    aput-object v9, v5, v0

    const/16 v0, 0xc

    aput-object v7, v5, v0

    const/16 v0, 0xd

    aput-object v4, v5, v0

    const/16 v0, 0xe

    aput-object v8, v5, v0

    const/16 v0, 0xf

    aput-object v25, v5, v0

    new-array v0, v2, [Ljava/lang/String;

    const-string v1, "Medium Text"

    const/4 v3, 0x0

    aput-object v1, v0, v3

    const-string v1, "中文本"

    const/4 v4, 0x1

    aput-object v1, v0, v4

    const/16 v1, 0x10

    aput-object v0, v5, v1

    const/16 v0, 0x11

    aput-object v26, v5, v0

    const/16 v0, 0x12

    aput-object v28, v5, v0

    new-array v0, v2, [Ljava/lang/String;

    const-string v1, "EditText"

    aput-object v1, v0, v3

    aput-object v27, v0, v4

    const/16 v1, 0x13

    aput-object v0, v5, v1

    const/16 v0, 0x14

    aput-object v29, v5, v0

    const/16 v0, 0x15

    aput-object v30, v5, v0

    const/16 v0, 0x16

    aput-object v31, v5, v0

    const/16 v0, 0x17

    aput-object v32, v5, v0

    const/16 v0, 0x18

    aput-object v33, v5, v0

    const/16 v0, 0x19

    aput-object v34, v5, v0

    const/16 v0, 0x1a

    aput-object v35, v5, v0

    new-array v0, v2, [Ljava/lang/String;

    const-string v1, "EditText (time)"

    const/4 v3, 0x0

    aput-object v1, v0, v3

    const-string v1, "编辑框（时间）"

    const/4 v4, 0x1

    aput-object v1, v0, v4

    const/16 v1, 0x1b

    aput-object v0, v5, v1

    const/16 v0, 0x1c

    aput-object v36, v5, v0

    new-array v0, v2, [Ljava/lang/String;

    const-string v1, "EditText (number)"

    aput-object v1, v0, v3

    const-string v1, "编辑框（数字）"

    aput-object v1, v0, v4

    const/16 v1, 0x1d

    aput-object v0, v5, v1

    const/16 v0, 0x1e

    aput-object v37, v5, v0

    const/16 v0, 0x1f

    aput-object v38, v5, v0

    const/16 v0, 0x20

    aput-object v39, v5, v0

    const/16 v0, 0x21

    aput-object v40, v5, v0

    const/16 v0, 0x22

    aput-object v41, v5, v0

    const/16 v0, 0x23

    aput-object v42, v5, v0

    const/16 v0, 0x24

    aput-object v43, v5, v0

    const/16 v0, 0x25

    aput-object v44, v5, v0

    const/16 v0, 0x26

    aput-object v45, v5, v0

    const/16 v0, 0x27

    aput-object v47, v5, v0

    const/16 v0, 0x28

    aput-object v46, v5, v0

    new-array v0, v2, [Ljava/lang/String;

    const-string v1, "Spinner"

    const/4 v3, 0x0

    aput-object v1, v0, v3

    const-string v1, "下拉菜单"

    const/4 v4, 0x1

    aput-object v1, v0, v4

    const/16 v1, 0x29

    aput-object v0, v5, v1

    const/16 v0, 0x2a

    aput-object v48, v5, v0

    const/16 v0, 0x2b

    aput-object v49, v5, v0

    new-array v0, v2, [Ljava/lang/String;

    const-string v1, "LinearLayout (horizontal)"

    aput-object v1, v0, v3

    const-string v1, "线性布局 (横)"

    aput-object v1, v0, v4

    const/16 v1, 0x2c

    aput-object v0, v5, v1

    new-array v0, v2, [Ljava/lang/String;

    const-string v1, "LinearLayout (vertical)"

    aput-object v1, v0, v3

    const-string v1, "线性布局 (竖)"

    aput-object v1, v0, v4

    const/16 v1, 0x2d

    aput-object v0, v5, v1

    new-array v0, v2, [Ljava/lang/String;

    const-string v1, "Scroll View"

    aput-object v1, v0, v3

    aput-object v50, v0, v4

    const/16 v1, 0x2e

    aput-object v0, v5, v1

    const/16 v0, 0x2f

    aput-object v51, v5, v0

    const/16 v0, 0x30

    aput-object v52, v5, v0

    const/16 v0, 0x31

    aput-object v53, v5, v0

    const/16 v0, 0x32

    aput-object v54, v5, v0

    const/16 v0, 0x33

    aput-object v55, v5, v0

    new-array v0, v2, [Ljava/lang/String;

    const-string v1, "FrameLayout"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "帧布局"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/16 v1, 0x34

    aput-object v0, v5, v1

    const/16 v0, 0x35

    aput-object v56, v5, v0

    const/16 v0, 0x36

    aput-object v57, v5, v0

    const/16 v0, 0x37

    aput-object v58, v5, v0

    const/16 v0, 0x38

    aput-object v59, v5, v0

    const/16 v0, 0x39

    aput-object v60, v5, v0

    const/16 v0, 0x3a

    aput-object v61, v5, v0

    const/16 v0, 0x3b

    aput-object v63, v5, v0

    sput-object v5, Lcom/s1243808733/aide/uidesign/TextTranslation;->TRANSLATIONS_WIDGET:[[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getWidgetTranslationText(Ljava/lang/String;)Ljava/lang/CharSequence;
    .registers 6

    .line 190
    invoke-static {}, Lcom/s1243808733/aide/uidesign/TextTranslation;->isEnable()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_20

    const/4 v0, 0x0

    .line 191
    :goto_9
    sget-object v3, Lcom/s1243808733/aide/uidesign/TextTranslation;->TRANSLATIONS_WIDGET:[[Ljava/lang/String;

    array-length v4, v3

    if-ge v0, v4, :cond_38

    .line 192
    aget-object v4, v3, v0

    aget-object v4, v4, v2

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 193
    aget-object p0, v3, v0

    aget-object p0, p0, v1

    return-object p0

    :cond_1d
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_20
    const/4 v0, 0x0

    .line 197
    :goto_21
    sget-object v3, Lcom/s1243808733/aide/uidesign/TextTranslation;->TRANSLATIONS_WIDGET:[[Ljava/lang/String;

    array-length v4, v3

    if-ge v0, v4, :cond_38

    .line 198
    aget-object v4, v3, v0

    aget-object v4, v4, v1

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_35

    .line 199
    aget-object p0, v3, v0

    aget-object p0, p0, v2

    return-object p0

    :cond_35
    add-int/lit8 v0, v0, 0x1

    goto :goto_21

    :cond_38
    const/4 p0, 0x0

    return-object p0
.end method

.method private static getWidgetmenuTranslationText(Ljava/lang/String;)Ljava/lang/CharSequence;
    .registers 6

    .line 126
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_20

    const/4 v0, 0x0

    .line 127
    :goto_9
    sget-object v3, Lcom/s1243808733/aide/uidesign/TextTranslation;->TRANSLATIONS_WIDGET_MENU:[[Ljava/lang/String;

    array-length v4, v3

    if-ge v0, v4, :cond_38

    .line 128
    aget-object v4, v3, v0

    aget-object v4, v4, v2

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 129
    aget-object p0, v3, v0

    aget-object p0, p0, v1

    return-object p0

    :cond_1d
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_20
    const/4 v0, 0x0

    .line 133
    :goto_21
    sget-object v3, Lcom/s1243808733/aide/uidesign/TextTranslation;->TRANSLATIONS_WIDGET_MENU:[[Ljava/lang/String;

    array-length v4, v3

    if-ge v0, v4, :cond_38

    .line 134
    aget-object v4, v3, v0

    aget-object v4, v4, v1

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_35

    .line 135
    aget-object p0, v3, v0

    aget-object p0, p0, v2

    return-object p0

    :cond_35
    add-int/lit8 v0, v0, 0x1

    goto :goto_21

    :cond_38
    const/4 p0, 0x0

    return-object p0
.end method

.method private static isEnable()Z
    .registers 3

    .line 154
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_14

    invoke-static {}, Lcom/s1243808733/util/Utils;->getSp()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "uidesign_language_chinese"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v1, 0x1

    :cond_14
    return v1
.end method

.method public static translationDesignerViewlistEntryName(Landroid/view/View;)V
    .registers 2

    .line 143
    const v0, 0x7f08004e

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    if-eqz p0, :cond_1c

    .line 145
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/s1243808733/aide/uidesign/TextTranslation;->getWidgetTranslationText(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 147
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1c
    return-void
.end method

.method public static translationWidget(Landroid/view/View;)V
    .registers 4

    .line 160
    const v0, 0x7f0801aa

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-nez v0, :cond_39

    .line 162
    const v0, 0x7f0801ac

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 163
    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_39

    .line 165
    const v0, 0x7f0801ad

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    .line 166
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_38

    .line 167
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    .line 168
    instance-of v0, p0, Landroid/widget/TextView;

    if-eqz v0, :cond_38

    .line 169
    move-object v0, p0

    check-cast v0, Landroid/widget/TextView;

    goto :goto_39

    :cond_38
    const/4 v0, 0x0

    :cond_39
    :goto_39
    if-nez v0, :cond_3c

    return-void

    .line 176
    :cond_3c
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    .line 178
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/s1243808733/aide/uidesign/TextTranslation;->getWidgetTranslationText(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p0

    if-eqz p0, :cond_56

    .line 180
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 183
    invoke-virtual {v1, p0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p0

    .line 180
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_56
    return-void
.end method

.method public static translationWidgetmenuEntryName(Landroid/view/View;)V
    .registers 2

    .line 116
    const v0, 0x7f0801af

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    if-eqz p0, :cond_1c

    .line 118
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/s1243808733/aide/uidesign/TextTranslation;->getWidgetmenuTranslationText(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 120
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1c
    return-void
.end method
