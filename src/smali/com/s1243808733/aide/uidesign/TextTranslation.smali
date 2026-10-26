.class public Lcom/s1243808733/aide/uidesign/TextTranslation;
.super Ljava/lang/Object;
.source "TextTranslation.java"


# static fields
.field private static final TRANSLATIONS_WIDGET:[[Ljava/lang/String;

.field private static final TRANSLATIONS_WIDGET_MENU:[[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    const/4 v15, 0x4

    const/4 v14, 0x3

    const/4 v13, 0x2

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 14
    new-array v0, v13, [Ljava/lang/String;

    const-string v1, "Source code..."

    aput-object v1, v0, v11

    const-string v1, "\u6e90\u4ee3\u7801..."

    aput-object v1, v0, v12

    new-array v1, v13, [Ljava/lang/String;

    const-string v2, "Add inside..."

    aput-object v2, v1, v11

    const-string v2, "\u5728\u91cc\u9762\u6dfb\u52a0..."

    aput-object v2, v1, v12

    new-array v2, v13, [Ljava/lang/String;

    const-string v3, "Add above..."

    aput-object v3, v2, v11

    const-string v3, "\u5728\u4e0a\u9762\u6dfb\u52a0..."

    aput-object v3, v2, v12

    new-array v3, v13, [Ljava/lang/String;

    const-string v4, "Add inside..."

    aput-object v4, v3, v11

    const-string v4, "\u5728\u91cc\u9762\u6dfb\u52a0..."

    aput-object v4, v3, v12

    new-array v4, v13, [Ljava/lang/String;

    const-string v5, "Add below..."

    aput-object v5, v4, v11

    const-string v5, "\u5728\u4e0b\u9762\u6dfb\u52a0..."

    aput-object v5, v4, v12

    new-array v5, v13, [Ljava/lang/String;

    const-string v6, "Add before..."

    aput-object v6, v5, v11

    const-string v6, "\u5728\u524d\u9762\u6dfb\u52a0..."

    aput-object v6, v5, v12

    new-array v6, v13, [Ljava/lang/String;

    const-string v7, "Surround with..."

    aput-object v7, v6, v11

    const-string v7, "\u8bbe\u7f6e\u7236\u5e03\u5c40..."

    aput-object v7, v6, v12

    new-array v7, v13, [Ljava/lang/String;

    const-string v8, "Delete"

    aput-object v8, v7, v11

    const-string v8, "\u5220\u9664"

    aput-object v8, v7, v12

    const/16 v8, 0xa

    new-array v8, v8, [[Ljava/lang/String;

    new-array v9, v13, [Ljava/lang/String;

    const-string v10, "Parent View..."

    aput-object v10, v9, v11

    const-string v10, "\u7236\u89c6\u56fe..."

    aput-object v10, v9, v12

    aput-object v9, v8, v11

    aput-object v0, v8, v12

    aput-object v1, v8, v13

    aput-object v2, v8, v14

    aput-object v3, v8, v15

    const/4 v0, 0x5

    aput-object v4, v8, v0

    const/4 v0, 0x6

    aput-object v5, v8, v0

    const/4 v0, 0x7

    new-array v1, v13, [Ljava/lang/String;

    const-string v2, "Add behind..."

    aput-object v2, v1, v11

    const-string v2, "\u5728\u540e\u9762\u6dfb\u52a0..."

    aput-object v2, v1, v12

    aput-object v1, v8, v0

    const/16 v0, 0x8

    aput-object v6, v8, v0

    const/16 v0, 0x9

    aput-object v7, v8, v0

    sput-object v8, Lcom/s1243808733/aide/uidesign/TextTranslation;->TRANSLATIONS_WIDGET_MENU:[[Ljava/lang/String;

    .line 29
    const/16 v0, 0x3c

    new-array v0, v0, [[Ljava/lang/String;

    new-array v1, v13, [Ljava/lang/String;

    const-string v2, "LinearLayout"

    aput-object v2, v1, v11

    const-string v2, "\u7ebf\u6027\u5e03\u5c40"

    aput-object v2, v1, v12

    aput-object v1, v0, v11

    new-array v1, v13, [Ljava/lang/String;

    const-string v2, "ImageView"

    aput-object v2, v1, v11

    const-string v2, "\u56fe\u7247\u89c6\u56fe"

    aput-object v2, v1, v12

    aput-object v1, v0, v12

    new-array v1, v13, [Ljava/lang/String;

    const-string v2, "ImageButton"

    aput-object v2, v1, v11

    const-string v2, "\u56fe\u7247\u6309\u94ae"

    aput-object v2, v1, v12

    aput-object v1, v0, v13

    new-array v1, v13, [Ljava/lang/String;

    const-string v2, "Switch"

    aput-object v2, v1, v11

    const-string v2, "\u5f00\u5173"

    aput-object v2, v1, v12

    aput-object v1, v0, v14

    new-array v1, v13, [Ljava/lang/String;

    const-string v2, "ToggleButton"

    aput-object v2, v1, v11

    const-string v2, "\u5207\u6362\u6309\u94ae"

    aput-object v2, v1, v12

    aput-object v1, v0, v15

    const/4 v1, 0x5

    new-array v2, v13, [Ljava/lang/String;

    const-string v3, "ProgressBar"

    aput-object v3, v2, v11

    const-string v3, "\u8fdb\u5ea6\u6761"

    aput-object v3, v2, v12

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v13, [Ljava/lang/String;

    const-string v3, "TextView"

    aput-object v3, v2, v11

    const-string v3, "\u6587\u672c\u89c6\u56fe"

    aput-object v3, v2, v12

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v13, [Ljava/lang/String;

    const-string v3, "Widget"

    aput-object v3, v2, v11

    const-string v3, "\u63a7\u4ef6"

    aput-object v3, v2, v12

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v13, [Ljava/lang/String;

    const-string v3, "Button"

    aput-object v3, v2, v11

    const-string v3, "\u6309\u94ae"

    aput-object v3, v2, v12

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v13, [Ljava/lang/String;

    const-string v3, "Small Button"

    aput-object v3, v2, v11

    const-string v3, "\u5c0f\u6309\u94ae"

    aput-object v3, v2, v12

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v2, v13, [Ljava/lang/String;

    const-string v3, "Bar Button"

    aput-object v3, v2, v11

    const-string v3, "\u6761\u5f62\u6309\u94ae"

    aput-object v3, v2, v12

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-array v2, v13, [Ljava/lang/String;

    const-string v3, "CheckBox"

    aput-object v3, v2, v11

    const-string v3, "\u591a\u9009\u6309\u94ae"

    aput-object v3, v2, v12

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-array v2, v13, [Ljava/lang/String;

    const-string v3, "RadioButton"

    aput-object v3, v2, v11

    const-string v3, "\u5355\u9009\u6309\u94ae"

    aput-object v3, v2, v12

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-array v2, v13, [Ljava/lang/String;

    const-string v3, "View"

    aput-object v3, v2, v11

    const-string v3, "\u89c6\u56fe"

    aput-object v3, v2, v12

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-array v2, v13, [Ljava/lang/String;

    const-string v3, "Text"

    aput-object v3, v2, v11

    const-string v3, "\u6587\u672c"

    aput-object v3, v2, v12

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-array v2, v13, [Ljava/lang/String;

    const-string v3, "Small Text"

    aput-object v3, v2, v11

    const-string v3, "\u5c0f\u6587\u672c"

    aput-object v3, v2, v12

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-array v2, v13, [Ljava/lang/String;

    const-string v3, "Medium Text"

    aput-object v3, v2, v11

    const-string v3, "\u4e2d\u6587\u672c"

    aput-object v3, v2, v12

    aput-object v2, v0, v1

    const/16 v1, 0x11

    new-array v2, v13, [Ljava/lang/String;

    const-string v3, "Large Text"

    aput-object v3, v2, v11

    const-string v3, "\u5927\u6587\u672c"

    aput-object v3, v2, v12

    aput-object v2, v0, v1

    const/16 v1, 0x12

    new-array v2, v13, [Ljava/lang/String;

    const-string v3, "Text Field"

    aput-object v3, v2, v11

    const-string v3, "\u7f16\u8f91\u6846"

    aput-object v3, v2, v12

    aput-object v2, v0, v1

    const/16 v1, 0x13

    new-array v2, v13, [Ljava/lang/String;

    const-string v3, "EditText"

    aput-object v3, v2, v11

    const-string v3, "\u7f16\u8f91\u6846"

    aput-object v3, v2, v12

    aput-object v2, v0, v1

    const/16 v1, 0x14

    new-array v2, v13, [Ljava/lang/String;

    const-string v3, "EditText (multiline)"

    aput-object v3, v2, v11

    const-string v3, "\u7f16\u8f91\u6846\uff08\u591a\u884c\uff09"

    aput-object v3, v2, v12

    aput-object v2, v0, v1

    const/16 v1, 0x15

    new-array v2, v13, [Ljava/lang/String;

    const-string v3, "EditText (password)"

    aput-object v3, v2, v11

    const-string v3, "\u7f16\u8f91\u6846\uff08\u5bc6\u7801\uff09"

    aput-object v3, v2, v12

    aput-object v2, v0, v1

    const/16 v1, 0x16

    new-array v2, v13, [Ljava/lang/String;

    const-string v3, "EditText (number password)"

    aput-object v3, v2, v11

    const-string v3, "\u7f16\u8f91\u6846\uff08\u6570\u5b57\u5bc6\u7801\uff09"

    aput-object v3, v2, v12

    aput-object v2, v0, v1

    const/16 v1, 0x17

    new-array v2, v13, [Ljava/lang/String;

    const-string v3, "EditText (email)"

    aput-object v3, v2, v11

    const-string v3, "\u7f16\u8f91\u6846\uff08\u90ae\u7bb1\uff09"

    aput-object v3, v2, v12

    aput-object v2, v0, v1

    const/16 v1, 0x18

    new-array v2, v13, [Ljava/lang/String;

    const-string v3, "EditText (name)"

    aput-object v3, v2, v11

    const-string v3, "\u7f16\u8f91\u6846\uff08\u540d\u5b57\uff09"

    aput-object v3, v2, v12

    aput-object v2, v0, v1

    const/16 v1, 0x19

    new-array v2, v13, [Ljava/lang/String;

    const-string v3, "EditText (phone)"

    aput-object v3, v2, v11

    const-string v3, "\u7f16\u8f91\u6846\uff08\u7535\u8bdd\u53f7\u7801\uff09"

    aput-object v3, v2, v12

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    new-array v2, v13, [Ljava/lang/String;

    const-string v3, "EditText (address)"

    aput-object v3, v2, v11

    const-string v3, "\u7f16\u8f91\u6846\uff08\u5730\u5740\uff09"

    aput-object v3, v2, v12

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    new-array v2, v13, [Ljava/lang/String;

    const-string v3, "EditText (time)"

    aput-object v3, v2, v11

    const-string v3, "\u7f16\u8f91\u6846\uff08\u65f6\u95f4\uff09"

    aput-object v3, v2, v12

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    new-array v2, v13, [Ljava/lang/String;

    const-string v3, "EditText (date)"

    aput-object v3, v2, v11

    const-string v3, "\u7f16\u8f91\u6846\uff08\u65e5\u671f\uff09"

    aput-object v3, v2, v12

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    new-array v2, v13, [Ljava/lang/String;

    const-string v3, "EditText (number)"

    aput-object v3, v2, v11

    const-string v3, "\u7f16\u8f91\u6846\uff08\u6570\u5b57\uff09"

    aput-object v3, v2, v12

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    new-array v2, v13, [Ljava/lang/String;

    const-string v3, "EditText (signed number)"

    aput-object v3, v2, v11

    const-string v3, "\u7f16\u8f91\u6846\uff08\u6b63\u8d1f\u6570\uff09"

    aput-object v3, v2, v12

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    new-array v2, v13, [Ljava/lang/String;

    const-string v3, "EditText (decimal)"

    aput-object v3, v2, v11

    const-string v3, "\u7f16\u8f91\u6846\uff08\u5c0f\u6570\uff09"

    aput-object v3, v2, v12

    aput-object v2, v0, v1

    const/16 v1, 0x20

    new-array v2, v13, [Ljava/lang/String;

    const-string v3, "Advanced Widget"

    aput-object v3, v2, v11

    const-string v3, "\u9ad8\u7ea7\u63a7\u4ef6"

    aput-object v3, v2, v12

    aput-object v2, v0, v1

    const/16 v1, 0x21

    new-array v2, v13, [Ljava/lang/String;

    const-string v3, "DatePicker"

    aput-object v3, v2, v11

    const-string v3, "\u65e5\u671f\u9009\u62e9"

    aput-object v3, v2, v12

    aput-object v2, v0, v1

    const/16 v1, 0x22

    new-array v2, v13, [Ljava/lang/String;

    const-string v3, "TimePicker"

    aput-object v3, v2, v11

    const-string v3, "\u65f6\u95f4\u9009\u62e9"

    aput-object v3, v2, v12

    aput-object v2, v0, v1

    const/16 v1, 0x23

    new-array v2, v13, [Ljava/lang/String;

    const-string v3, "NumberPicker"

    aput-object v3, v2, v11

    const-string v3, "\u6570\u5b57\u9009\u62e9"

    aput-object v3, v2, v12

    aput-object v2, v0, v1

    const/16 v1, 0x24

    new-array v2, v13, [Ljava/lang/String;

    const-string v3, "RatingBar"

    aput-object v3, v2, v11

    const-string v3, "\u8bc4\u5206\u63a7\u4ef6"

    aput-object v3, v2, v12

    aput-object v2, v0, v1

    const/16 v1, 0x25

    new-array v2, v13, [Ljava/lang/String;

    const-string v3, "Adapter View"

    aput-object v3, v2, v11

    const-string v3, "\u9002\u914d\u5668\u89c6\u56fe"

    aput-object v3, v2, v12

    aput-object v2, v0, v1

    const/16 v1, 0x26

    new-array v2, v13, [Ljava/lang/String;

    const-string v3, "List View"

    aput-object v3, v2, v11

    const-string v3, "\u5217\u8868\u89c6\u56fe"

    aput-object v3, v2, v12

    aput-object v2, v0, v1

    const/16 v1, 0x27

    new-array v2, v13, [Ljava/lang/String;

    const-string v3, "ExpandableListView"

    aput-object v3, v2, v11

    const-string v3, "\u53ef\u5c55\u5f00\u5217\u8868\u89c6\u56fe"

    aput-object v3, v2, v12

    aput-object v2, v0, v1

    const/16 v1, 0x28

    new-array v2, v13, [Ljava/lang/String;

    const-string v3, "Expandable List View"

    aput-object v3, v2, v11

    const-string v3, "\u53ef\u5c55\u5f00\u5217\u8868\u89c6\u56fe"

    aput-object v3, v2, v12

    aput-object v2, v0, v1

    const/16 v1, 0x29

    new-array v2, v13, [Ljava/lang/String;

    const-string v3, "Spinner"

    aput-object v3, v2, v11

    const-string v3, "\u4e0b\u62c9\u83dc\u5355"

    aput-object v3, v2, v12

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    new-array v2, v13, [Ljava/lang/String;

    const-string v3, "Layout"

    aput-object v3, v2, v11

    const-string v3, "\u5e03\u5c40"

    aput-object v3, v2, v12

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    new-array v2, v13, [Ljava/lang/String;

    const-string v3, "RelativeLayout"

    aput-object v3, v2, v11

    const-string v3, "\u76f8\u5bf9\u5e03\u5c40"

    aput-object v3, v2, v12

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    new-array v2, v13, [Ljava/lang/String;

    const-string v3, "LinearLayout (horizontal)"

    aput-object v3, v2, v11

    const-string v3, "\u7ebf\u6027\u5e03\u5c40 (\u6a2a)"

    aput-object v3, v2, v12

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    new-array v2, v13, [Ljava/lang/String;

    const-string v3, "LinearLayout (vertical)"

    aput-object v3, v2, v11

    const-string v3, "\u7ebf\u6027\u5e03\u5c40 (\u7ad6)"

    aput-object v3, v2, v12

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    new-array v2, v13, [Ljava/lang/String;

    const-string v3, "Scroll View"

    aput-object v3, v2, v11

    const-string v3, "\u6ed1\u52a8\u89c6\u56fe"

    aput-object v3, v2, v12

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    new-array v2, v13, [Ljava/lang/String;

    const-string v3, "ScrollView"

    aput-object v3, v2, v11

    const-string v3, "\u6ed1\u52a8\u89c6\u56fe"

    aput-object v3, v2, v12

    aput-object v2, v0, v1

    const/16 v1, 0x30

    new-array v2, v13, [Ljava/lang/String;

    const-string v3, "HorizontalScrollView"

    aput-object v3, v2, v11

    const-string v3, "\u6a2a\u6ed1\u52a8\u89c6\u56fe"

    aput-object v3, v2, v12

    aput-object v2, v0, v1

    const/16 v1, 0x31

    new-array v2, v13, [Ljava/lang/String;

    const-string v3, "Advanced Layout"

    aput-object v3, v2, v11

    const-string v3, "\u9ad8\u7ea7\u5e03\u5c40"

    aput-object v3, v2, v12

    aput-object v2, v0, v1

    const/16 v1, 0x32

    new-array v2, v13, [Ljava/lang/String;

    const-string v3, "Button Bar"

    aput-object v3, v2, v11

    const-string v3, "\u6309\u94ae\u6761"

    aput-object v3, v2, v12

    aput-object v2, v0, v1

    const/16 v1, 0x33

    new-array v2, v13, [Ljava/lang/String;

    const-string v3, "GridLayout"

    aput-object v3, v2, v11

    const-string v3, "\u7f51\u683c\u5e03\u5c40"

    aput-object v3, v2, v12

    aput-object v2, v0, v1

    const/16 v1, 0x34

    new-array v2, v13, [Ljava/lang/String;

    const-string v3, "FrameLayout"

    aput-object v3, v2, v11

    const-string v3, "\u5e27\u5e03\u5c40"

    aput-object v3, v2, v12

    aput-object v2, v0, v1

    const/16 v1, 0x35

    new-array v2, v13, [Ljava/lang/String;

    const-string v3, "RadioGroup"

    aput-object v3, v2, v11

    const-string v3, "\u5355\u9009\u5e03\u5c40"

    aput-object v3, v2, v12

    aput-object v2, v0, v1

    const/16 v1, 0x36

    new-array v2, v13, [Ljava/lang/String;

    const-string v3, "TableLayout"

    aput-object v3, v2, v11

    const-string v3, "\u8868\u683c\u5e03\u5c40"

    aput-object v3, v2, v12

    aput-object v2, v0, v1

    const/16 v1, 0x37

    new-array v2, v13, [Ljava/lang/String;

    const-string v3, "TableRow"

    aput-object v3, v2, v11

    const-string v3, "\u8868\u683c\u884c"

    aput-object v3, v2, v12

    aput-object v2, v0, v1

    const/16 v1, 0x38

    new-array v2, v13, [Ljava/lang/String;

    const-string v3, "AbsoluteLayout"

    aput-object v3, v2, v11

    const-string v3, "\u7edd\u5bf9\u5e03\u5c40"

    aput-object v3, v2, v12

    aput-object v2, v0, v1

    const/16 v1, 0x39

    new-array v2, v13, [Ljava/lang/String;

    const-string v3, "App Layout"

    aput-object v3, v2, v11

    const-string v3, "v4\u5305\u63a7\u4ef6"

    aput-object v3, v2, v12

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    new-array v2, v13, [Ljava/lang/String;

    const-string v3, "Drawer Layout"

    aput-object v3, v2, v11

    const-string v3, "\u4fa7\u6ed1\u680f\u5e03\u5c40"

    aput-object v3, v2, v12

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    new-array v2, v13, [Ljava/lang/String;

    const-string v3, "View Pager"

    aput-object v3, v2, v11

    const-string v3, "View Pager"

    aput-object v3, v2, v12

    aput-object v2, v0, v1

    sput-object v0, Lcom/s1243808733/aide/uidesign/TextTranslation;->TRANSLATIONS_WIDGET:[[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getWidgetTranslationText(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 5

    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 190
    invoke-static {}, Lcom/s1243808733/aide/uidesign/TextTranslation;->isEnable()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 191
    :goto_0
    sget-object v2, Lcom/s1243808733/aide/uidesign/TextTranslation;->TRANSLATIONS_WIDGET:[[Ljava/lang/String;

    array-length v3, v2

    if-ge v0, v3, :cond_3

    .line 192
    aget-object v3, v2, v0

    aget-object v3, v3, v1

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 193
    aget-object v0, v2, v0

    aget-object v0, v0, v4

    .line 199
    :goto_1
    return-object v0

    .line 193
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    .line 197
    :goto_2
    sget-object v2, Lcom/s1243808733/aide/uidesign/TextTranslation;->TRANSLATIONS_WIDGET:[[Ljava/lang/String;

    array-length v3, v2

    if-ge v0, v3, :cond_3

    .line 198
    aget-object v3, v2, v0

    aget-object v3, v3, v4

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 199
    aget-object v0, v2, v0

    aget-object v0, v0, v1

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private static getWidgetmenuTranslationText(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 5

    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 126
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 127
    :goto_0
    sget-object v2, Lcom/s1243808733/aide/uidesign/TextTranslation;->TRANSLATIONS_WIDGET_MENU:[[Ljava/lang/String;

    array-length v3, v2

    if-ge v0, v3, :cond_3

    .line 128
    aget-object v3, v2, v0

    aget-object v3, v3, v1

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 129
    aget-object v0, v2, v0

    aget-object v0, v0, v4

    .line 135
    :goto_1
    return-object v0

    .line 129
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    .line 133
    :goto_2
    sget-object v2, Lcom/s1243808733/aide/uidesign/TextTranslation;->TRANSLATIONS_WIDGET_MENU:[[Ljava/lang/String;

    array-length v3, v2

    if-ge v0, v3, :cond_3

    .line 134
    aget-object v3, v2, v0

    aget-object v3, v3, v4

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 135
    aget-object v0, v2, v0

    aget-object v0, v0, v1

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private static isEnable()Z
    .locals 3

    const/4 v0, 0x0

    .line 154
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/s1243808733/util/Utils;->getSp()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "uidesign_language_chinese"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static translationDesignerViewlistEntryName(Landroid/view/View;)V
    .locals 2

    .line 143
    const v0, 0x7f08004e

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 145
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/s1243808733/aide/uidesign/TextTranslation;->getWidgetTranslationText(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 147
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public static translationWidget(Landroid/view/View;)V
    .locals 3

    .line 160
    const v0, 0x7f0801aa

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 162
    const v0, 0x7f0801ac

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 163
    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    .line 165
    const v0, 0x7f0801ad

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 166
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v1

    if-nez v1, :cond_2

    .line 167
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 168
    instance-of v1, v0, Landroid/widget/TextView;

    if-eqz v1, :cond_2

    .line 169
    check-cast v0, Landroid/widget/TextView;

    :cond_0
    :goto_0
    if-nez v0, :cond_3

    .line 180
    :cond_1
    :goto_1
    return-void

    .line 169
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 176
    :cond_3
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 178
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/s1243808733/aide/uidesign/TextTranslation;->getWidgetTranslationText(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 180
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 183
    invoke-virtual {v2, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    .line 180
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public static translationWidgetmenuEntryName(Landroid/view/View;)V
    .locals 2

    .line 116
    const v0, 0x7f0801af

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 118
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/s1243808733/aide/uidesign/TextTranslation;->getWidgetmenuTranslationText(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 120
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
