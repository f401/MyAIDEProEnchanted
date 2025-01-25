.class public Lcom/s1243808733/aide/highlight/color/style/TealColor;
.super Lcom/s1243808733/aide/highlight/color/Colors;
.source "TealColor.java"


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

    .line 7
    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Lcom/s1243808733/aide/highlight/color/Colors;-><init>()V

    .line 9
    nop

    .line 10
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v1

    if-eqz v1, :cond_f

    const-string v1, "背景颜色"

    goto :goto_11

    :cond_f
    const-string v1, "Background"

    :goto_11
    new-instance v2, Lcom/s1243808733/aide/highlight/color/Color;

    const-string v3, "background"

    const-string v4, "#FF212121"

    const-string v5, "#FFFFFFFF"

    invoke-direct {v2, v3, v1, v5, v4}, Lcom/s1243808733/aide/highlight/color/Color;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, v0, Lcom/s1243808733/aide/highlight/color/style/TealColor;->BACKGROUND:Lcom/s1243808733/aide/highlight/color/Color;

    .line 12
    nop

    .line 13
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

    const-string v6, "#FF000000"

    invoke-direct {v4, v3, v1, v6, v5}, Lcom/s1243808733/aide/highlight/color/Color;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v4, v0, Lcom/s1243808733/aide/highlight/color/style/TealColor;->PLAIN:Lcom/s1243808733/aide/highlight/color/Color;

    .line 15
    nop

    .line 16
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v1

    const-string v3, "Keyword"

    if-eqz v1, :cond_40

    const-string v1, "关键词颜色"

    goto :goto_41

    :cond_40
    move-object v1, v3

    :goto_41
    new-instance v5, Lcom/s1243808733/aide/highlight/color/Color;

    const-string v7, "#FFFF5A5A"

    const-string v8, "#FFFFC107"

    invoke-direct {v5, v3, v1, v7, v8}, Lcom/s1243808733/aide/highlight/color/Color;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v5, v0, Lcom/s1243808733/aide/highlight/color/style/TealColor;->KEYWORD:Lcom/s1243808733/aide/highlight/color/Color;

    .line 18
    nop

    .line 19
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v1

    const-string v3, "Identifier"

    if-eqz v1, :cond_58

    const-string v1, "标识符颜色"

    goto :goto_59

    :cond_58
    move-object v1, v3

    :goto_59
    new-instance v7, Lcom/s1243808733/aide/highlight/color/Color;

    const-string v8, "#FF64FFDA"

    invoke-direct {v7, v3, v1, v6, v8}, Lcom/s1243808733/aide/highlight/color/Color;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v7, v0, Lcom/s1243808733/aide/highlight/color/style/TealColor;->IDENTIFIER:Lcom/s1243808733/aide/highlight/color/Color;

    .line 21
    nop

    .line 22
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v1

    const-string v3, "Literal"

    if-eqz v1, :cond_6e

    const-string v1, "字符串、数字、布尔值颜色"

    goto :goto_6f

    :cond_6e
    move-object v1, v3

    :goto_6f
    new-instance v6, Lcom/s1243808733/aide/highlight/color/Color;

    const-string v8, "#FFE91E63"

    const-string v9, "#FF1DE9B6"

    invoke-direct {v6, v3, v1, v8, v9}, Lcom/s1243808733/aide/highlight/color/Color;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v6, v0, Lcom/s1243808733/aide/highlight/color/style/TealColor;->LITERAL:Lcom/s1243808733/aide/highlight/color/Color;

    .line 24
    nop

    .line 25
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v1

    const-string v3, "Operator"

    if-eqz v1, :cond_86

    const-string v1, "操作符颜色"

    goto :goto_87

    :cond_86
    move-object v1, v3

    :goto_87
    new-instance v8, Lcom/s1243808733/aide/highlight/color/Color;

    const-string v9, "#FF03A9F4"

    const-string v10, "#FFEEFF41"

    invoke-direct {v8, v3, v1, v9, v10}, Lcom/s1243808733/aide/highlight/color/Color;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v8, v0, Lcom/s1243808733/aide/highlight/color/style/TealColor;->OPERATOR:Lcom/s1243808733/aide/highlight/color/Color;

    .line 27
    nop

    .line 28
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v1

    const-string v3, "Type Identifier"

    if-eqz v1, :cond_9e

    const-string v1, "类型标识符颜色"

    goto :goto_9f

    :cond_9e
    move-object v1, v3

    :goto_9f
    new-instance v9, Lcom/s1243808733/aide/highlight/color/Color;

    const-string v10, "#FFFFD740"

    const-string v11, "#FF0096FF"

    invoke-direct {v9, v3, v1, v11, v10}, Lcom/s1243808733/aide/highlight/color/Color;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v9, v0, Lcom/s1243808733/aide/highlight/color/style/TealColor;->TYPE_IDENTIFIER:Lcom/s1243808733/aide/highlight/color/Color;

    .line 30
    nop

    .line 31
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v1

    const-string v3, "Namespace/Package Identifier"

    if-eqz v1, :cond_b6

    const-string v1, "包名颜色"

    goto :goto_b7

    :cond_b6
    move-object v1, v3

    :goto_b7
    new-instance v10, Lcom/s1243808733/aide/highlight/color/Color;

    const-string v12, "#FF757575"

    const-string v13, "#FF00BFA5"

    invoke-direct {v10, v3, v1, v12, v13}, Lcom/s1243808733/aide/highlight/color/Color;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v10, v0, Lcom/s1243808733/aide/highlight/color/style/TealColor;->NAMESPACE_IDENTIFIER:Lcom/s1243808733/aide/highlight/color/Color;

    .line 33
    nop

    .line 34
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v1

    const-string v3, "Separator/Punctuator"

    if-eqz v1, :cond_ce

    const-string v1, "括号、标点颜色"

    goto :goto_cf

    :cond_ce
    move-object v1, v3

    :goto_cf
    new-instance v12, Lcom/s1243808733/aide/highlight/color/Color;

    invoke-direct {v12, v3, v1, v11, v13}, Lcom/s1243808733/aide/highlight/color/Color;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v12, v0, Lcom/s1243808733/aide/highlight/color/style/TealColor;->SEPARATOR:Lcom/s1243808733/aide/highlight/color/Color;

    .line 36
    nop

    .line 37
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v1

    const-string v3, "Comment"

    if-eqz v1, :cond_e2

    const-string v1, "代码注释颜色"

    goto :goto_e3

    :cond_e2
    move-object v1, v3

    :goto_e3
    new-instance v11, Lcom/s1243808733/aide/highlight/color/Color;

    const-string v13, "#FF818181"

    const-string v14, "#FFBDBDBD"

    invoke-direct {v11, v3, v1, v13, v14}, Lcom/s1243808733/aide/highlight/color/Color;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v11, v0, Lcom/s1243808733/aide/highlight/color/style/TealColor;->COMMENT:Lcom/s1243808733/aide/highlight/color/Color;

    .line 41
    nop

    .line 42
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v1

    if-eqz v1, :cond_f8

    const-string v1, "行号颜色"

    goto :goto_fa

    :cond_f8
    const-string v1, "Line number"

    :goto_fa
    new-instance v3, Lcom/s1243808733/aide/highlight/color/Color;

    const-string v13, "line number"

    const-string v15, "#FF4DB6AC"

    invoke-direct {v3, v13, v1, v14, v15}, Lcom/s1243808733/aide/highlight/color/Color;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v3, v0, Lcom/s1243808733/aide/highlight/color/style/TealColor;->LINE_NUMBER:Lcom/s1243808733/aide/highlight/color/Color;

    .line 44
    nop

    .line 45
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v1

    if-eqz v1, :cond_10f

    const-string v1, "已选行背景颜色"

    goto :goto_111

    :cond_10f
    const-string v1, "Selected line background"

    :goto_111
    new-instance v13, Lcom/s1243808733/aide/highlight/color/Color;

    const-string v14, "#10000000"

    const-string v15, "#2C4DB6AC"

    move-object/from16 v16, v3

    const-string v3, "line background"

    invoke-direct {v13, v3, v1, v14, v15}, Lcom/s1243808733/aide/highlight/color/Color;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v13, v0, Lcom/s1243808733/aide/highlight/color/style/TealColor;->LINE_BACKGROUND:Lcom/s1243808733/aide/highlight/color/Color;

    .line 47
    nop

    .line 48
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v1

    if-eqz v1, :cond_12a

    const-string v1, "已选文字背景颜色"

    goto :goto_12c

    :cond_12a
    const-string v1, "Selected Text background"

    :goto_12c
    new-instance v3, Lcom/s1243808733/aide/highlight/color/Color;

    const-string v14, "#FFABABAB"

    const-string v15, "#C9FFCA28"

    move-object/from16 v17, v13

    const-string v13, "selected background"

    invoke-direct {v3, v13, v1, v14, v15}, Lcom/s1243808733/aide/highlight/color/Color;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v3, v0, Lcom/s1243808733/aide/highlight/color/style/TealColor;->SELECTED_BACKGROUND:Lcom/s1243808733/aide/highlight/color/Color;

    .line 51
    const/16 v1, 0xd

    new-array v1, v1, [Lcom/s1243808733/aide/highlight/color/Color;

    const/4 v13, 0x0

    aput-object v2, v1, v13

    const/4 v2, 0x1

    aput-object v4, v1, v2

    const/4 v2, 0x2

    aput-object v5, v1, v2

    const/4 v2, 0x3

    aput-object v7, v1, v2

    const/4 v2, 0x4

    aput-object v6, v1, v2

    const/4 v2, 0x5

    aput-object v8, v1, v2

    const/4 v2, 0x6

    aput-object v9, v1, v2

    const/4 v2, 0x7

    aput-object v10, v1, v2

    const/16 v2, 0x8

    aput-object v12, v1, v2

    const/16 v2, 0x9

    aput-object v11, v1, v2

    const/16 v2, 0xa

    aput-object v16, v1, v2

    const/16 v2, 0xb

    aput-object v17, v1, v2

    const/16 v2, 0xc

    aput-object v3, v1, v2

    iput-object v1, v0, Lcom/s1243808733/aide/highlight/color/style/TealColor;->colors:[Lcom/s1243808733/aide/highlight/color/Color;

    return-void
.end method


# virtual methods
.method public values()[Lcom/s1243808733/aide/highlight/color/Color;
    .registers 2

    .line 69
    iget-object v0, p0, Lcom/s1243808733/aide/highlight/color/style/TealColor;->colors:[Lcom/s1243808733/aide/highlight/color/Color;

    return-object v0
.end method
