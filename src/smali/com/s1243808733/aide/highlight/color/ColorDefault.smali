.class public Lcom/s1243808733/aide/highlight/color/ColorDefault;
.super Lcom/s1243808733/aide/highlight/color/Colors;
.source "ColorDefault.java"


# instance fields
.field public final BACKGROUND:Lcom/s1243808733/aide/highlight/color/Color;

.field public final COMMENT:Lcom/s1243808733/aide/highlight/color/Color;

.field public final IDENTIFIER:Lcom/s1243808733/aide/highlight/color/Color;

.field public final KEYWORD:Lcom/s1243808733/aide/highlight/color/Color;

.field public final LINE_BACKGROUND:Lcom/s1243808733/aide/highlight/color/Color;

.field public final LINE_NUMBER:Lcom/s1243808733/aide/highlight/color/Color;

.field public final LITERAL:Lcom/s1243808733/aide/highlight/color/Color;

.field public final NAMESPACE_IDENTIFIER:Lcom/s1243808733/aide/highlight/color/Color;

.field public final OPERATOR:Lcom/s1243808733/aide/highlight/color/Color;

.field public final PLAIN:Lcom/s1243808733/aide/highlight/color/Color;

.field public final SELECTED_BACKGROUND:Lcom/s1243808733/aide/highlight/color/Color;

.field public final SEPARATOR:Lcom/s1243808733/aide/highlight/color/Color;

.field public final TYPE_IDENTIFIER:Lcom/s1243808733/aide/highlight/color/Color;

.field private colors:[Lcom/s1243808733/aide/highlight/color/Color;


# direct methods
.method public constructor <init>()V
    .registers 19

    .line 6
    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Lcom/s1243808733/aide/highlight/color/Colors;-><init>()V

    .line 8
    nop

    .line 9
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v1

    if-eqz v1, :cond_f

    const-string v1, "背景颜色"

    goto :goto_11

    :cond_f
    const-string v1, "Background"

    :goto_11
    new-instance v2, Lcom/s1243808733/aide/highlight/color/Color;

    const-string v3, "#00FFFFFF"

    const-string v4, "#FF181818"

    const-string v5, "background"

    invoke-direct {v2, v5, v1, v3, v4}, Lcom/s1243808733/aide/highlight/color/Color;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, v0, Lcom/s1243808733/aide/highlight/color/ColorDefault;->BACKGROUND:Lcom/s1243808733/aide/highlight/color/Color;

    .line 11
    nop

    .line 12
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v1

    const-string v3, "Plain"

    if-eqz v1, :cond_2a

    const-string v1, "文字颜色"

    goto :goto_2b

    :cond_2a
    move-object v1, v3

    :goto_2b
    new-instance v4, Lcom/s1243808733/aide/highlight/color/Color;

    const-string v5, "#FFFFFFFF"

    const-string v6, "#FF000000"

    invoke-direct {v4, v3, v1, v6, v5}, Lcom/s1243808733/aide/highlight/color/Color;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v4, v0, Lcom/s1243808733/aide/highlight/color/ColorDefault;->PLAIN:Lcom/s1243808733/aide/highlight/color/Color;

    .line 14
    nop

    .line 15
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v1

    const-string v3, "Keyword"

    if-eqz v1, :cond_42

    const-string v1, "关键词颜色"

    goto :goto_43

    :cond_42
    move-object v1, v3

    :goto_43
    new-instance v5, Lcom/s1243808733/aide/highlight/color/Color;

    const-string v7, "#FFFF5252"

    const-string v8, "#FF0096FF"

    invoke-direct {v5, v3, v1, v8, v7}, Lcom/s1243808733/aide/highlight/color/Color;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v5, v0, Lcom/s1243808733/aide/highlight/color/ColorDefault;->KEYWORD:Lcom/s1243808733/aide/highlight/color/Color;

    .line 17
    nop

    .line 18
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v1

    const-string v3, "Identifier"

    if-eqz v1, :cond_5a

    const-string v1, "标识符颜色"

    goto :goto_5b

    :cond_5a
    move-object v1, v3

    :goto_5b
    new-instance v7, Lcom/s1243808733/aide/highlight/color/Color;

    const-string v9, "#FFFFD740"

    invoke-direct {v7, v3, v1, v6, v9}, Lcom/s1243808733/aide/highlight/color/Color;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v7, v0, Lcom/s1243808733/aide/highlight/color/ColorDefault;->IDENTIFIER:Lcom/s1243808733/aide/highlight/color/Color;

    .line 20
    nop

    .line 21
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v1

    const-string v3, "Literal"

    if-eqz v1, :cond_70

    const-string v1, "字符串、数字、布尔值颜色"

    goto :goto_71

    :cond_70
    move-object v1, v3

    :goto_71
    new-instance v6, Lcom/s1243808733/aide/highlight/color/Color;

    const-string v10, "#FFE91E63"

    const-string v11, "#FF8BC34A"

    invoke-direct {v6, v3, v1, v10, v11}, Lcom/s1243808733/aide/highlight/color/Color;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v6, v0, Lcom/s1243808733/aide/highlight/color/ColorDefault;->LITERAL:Lcom/s1243808733/aide/highlight/color/Color;

    .line 23
    nop

    .line 24
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v1

    const-string v3, "Operator"

    if-eqz v1, :cond_88

    const-string v1, "操作符颜色"

    goto :goto_89

    :cond_88
    move-object v1, v3

    :goto_89
    new-instance v10, Lcom/s1243808733/aide/highlight/color/Color;

    const-string v11, "#FF03A9F4"

    const-string v12, "#FFEC407A"

    invoke-direct {v10, v3, v1, v11, v12}, Lcom/s1243808733/aide/highlight/color/Color;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v10, v0, Lcom/s1243808733/aide/highlight/color/ColorDefault;->OPERATOR:Lcom/s1243808733/aide/highlight/color/Color;

    .line 26
    nop

    .line 27
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v1

    const-string v3, "Type Identifier"

    if-eqz v1, :cond_a0

    const-string v1, "类型标识符颜色"

    goto :goto_a1

    :cond_a0
    move-object v1, v3

    :goto_a1
    new-instance v11, Lcom/s1243808733/aide/highlight/color/Color;

    const-string v12, "#FF23BBFF"

    invoke-direct {v11, v3, v1, v8, v12}, Lcom/s1243808733/aide/highlight/color/Color;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v11, v0, Lcom/s1243808733/aide/highlight/color/ColorDefault;->TYPE_IDENTIFIER:Lcom/s1243808733/aide/highlight/color/Color;

    .line 29
    nop

    .line 30
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v1

    const-string v3, "Namespace/Package Identifier"

    if-eqz v1, :cond_b6

    const-string v1, "包名颜色"

    goto :goto_b7

    :cond_b6
    move-object v1, v3

    :goto_b7
    new-instance v13, Lcom/s1243808733/aide/highlight/color/Color;

    const-string v14, "#FF818181"

    invoke-direct {v13, v3, v1, v14, v9}, Lcom/s1243808733/aide/highlight/color/Color;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v13, v0, Lcom/s1243808733/aide/highlight/color/ColorDefault;->NAMESPACE_IDENTIFIER:Lcom/s1243808733/aide/highlight/color/Color;

    .line 32
    nop

    .line 33
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v1

    const-string v3, "Separator/Punctuator"

    if-eqz v1, :cond_cc

    const-string v1, "括号、标点颜色"

    goto :goto_cd

    :cond_cc
    move-object v1, v3

    :goto_cd
    new-instance v9, Lcom/s1243808733/aide/highlight/color/Color;

    const-string v15, "#FF4DD0E1"

    invoke-direct {v9, v3, v1, v8, v15}, Lcom/s1243808733/aide/highlight/color/Color;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v9, v0, Lcom/s1243808733/aide/highlight/color/ColorDefault;->SEPARATOR:Lcom/s1243808733/aide/highlight/color/Color;

    .line 35
    nop

    .line 36
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v1

    const-string v3, "Comment"

    if-eqz v1, :cond_e2

    const-string v1, "代码注释颜色"

    goto :goto_e3

    :cond_e2
    move-object v1, v3

    :goto_e3
    new-instance v8, Lcom/s1243808733/aide/highlight/color/Color;

    const-string v15, "#FF00C853"

    invoke-direct {v8, v3, v1, v14, v15}, Lcom/s1243808733/aide/highlight/color/Color;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v8, v0, Lcom/s1243808733/aide/highlight/color/ColorDefault;->COMMENT:Lcom/s1243808733/aide/highlight/color/Color;

    .line 40
    nop

    .line 41
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v1

    if-eqz v1, :cond_f6

    const-string v1, "行号颜色"

    goto :goto_f8

    :cond_f6
    const-string v1, "Line number"

    :goto_f8
    new-instance v3, Lcom/s1243808733/aide/highlight/color/Color;

    const-string v14, "line number"

    const-string v15, "#FFBDBDBD"

    invoke-direct {v3, v14, v1, v15, v12}, Lcom/s1243808733/aide/highlight/color/Color;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v3, v0, Lcom/s1243808733/aide/highlight/color/ColorDefault;->LINE_NUMBER:Lcom/s1243808733/aide/highlight/color/Color;

    .line 43
    nop

    .line 44
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v1

    if-eqz v1, :cond_10d

    const-string v1, "已选行背景颜色"

    goto :goto_10f

    :cond_10d
    const-string v1, "Selested line background"

    :goto_10f
    new-instance v12, Lcom/s1243808733/aide/highlight/color/Color;

    const-string v14, "#10000000"

    const-string v15, "#15FFFFFF"

    move-object/from16 v16, v3

    const-string v3, "line background"

    invoke-direct {v12, v3, v1, v14, v15}, Lcom/s1243808733/aide/highlight/color/Color;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v12, v0, Lcom/s1243808733/aide/highlight/color/ColorDefault;->LINE_BACKGROUND:Lcom/s1243808733/aide/highlight/color/Color;

    .line 46
    nop

    .line 47
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v1

    if-eqz v1, :cond_128

    const-string v1, "已选文字背景颜色"

    goto :goto_12a

    :cond_128
    const-string v1, "Selected text background"

    :goto_12a
    new-instance v3, Lcom/s1243808733/aide/highlight/color/Color;

    const-string v14, "#FF2ABFFF"

    const-string v15, "#FF2E94C2"

    move-object/from16 v17, v12

    const-string v12, "selected background"

    invoke-direct {v3, v12, v1, v14, v15}, Lcom/s1243808733/aide/highlight/color/Color;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v3, v0, Lcom/s1243808733/aide/highlight/color/ColorDefault;->SELECTED_BACKGROUND:Lcom/s1243808733/aide/highlight/color/Color;

    .line 49
    const/16 v1, 0xd

    new-array v1, v1, [Lcom/s1243808733/aide/highlight/color/Color;

    const/4 v12, 0x0

    aput-object v2, v1, v12

    const/4 v2, 0x1

    aput-object v4, v1, v2

    const/4 v2, 0x2

    aput-object v5, v1, v2

    const/4 v2, 0x3

    aput-object v7, v1, v2

    const/4 v2, 0x4

    aput-object v6, v1, v2

    const/4 v2, 0x5

    aput-object v10, v1, v2

    const/4 v2, 0x6

    aput-object v11, v1, v2

    const/4 v2, 0x7

    aput-object v13, v1, v2

    const/16 v2, 0x8

    aput-object v9, v1, v2

    const/16 v2, 0x9

    aput-object v8, v1, v2

    const/16 v2, 0xa

    aput-object v16, v1, v2

    const/16 v2, 0xb

    aput-object v17, v1, v2

    const/16 v2, 0xc

    aput-object v3, v1, v2

    iput-object v1, v0, Lcom/s1243808733/aide/highlight/color/ColorDefault;->colors:[Lcom/s1243808733/aide/highlight/color/Color;

    return-void
.end method


# virtual methods
.method public values()[Lcom/s1243808733/aide/highlight/color/Color;
    .registers 2

    .line 67
    iget-object v0, p0, Lcom/s1243808733/aide/highlight/color/ColorDefault;->colors:[Lcom/s1243808733/aide/highlight/color/Color;

    return-object v0
.end method
