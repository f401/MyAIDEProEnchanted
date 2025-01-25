.class public Lcom/s1243808733/aide/highlight/color/style/ColorIndigo;
.super Lcom/s1243808733/aide/highlight/color/Colors;
.source "ColorIndigo.java"


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

    iput-object v2, v0, Lcom/s1243808733/aide/highlight/color/style/ColorIndigo;->BACKGROUND:Lcom/s1243808733/aide/highlight/color/Color;

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

    iput-object v4, v0, Lcom/s1243808733/aide/highlight/color/style/ColorIndigo;->PLAIN:Lcom/s1243808733/aide/highlight/color/Color;

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

    const-string v8, "#FFFF6060"

    invoke-direct {v5, v3, v1, v7, v8}, Lcom/s1243808733/aide/highlight/color/Color;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v5, v0, Lcom/s1243808733/aide/highlight/color/style/ColorIndigo;->KEYWORD:Lcom/s1243808733/aide/highlight/color/Color;

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

    const-string v8, "#FFF0BE4B"

    invoke-direct {v7, v3, v1, v6, v8}, Lcom/s1243808733/aide/highlight/color/Color;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v7, v0, Lcom/s1243808733/aide/highlight/color/style/ColorIndigo;->IDENTIFIER:Lcom/s1243808733/aide/highlight/color/Color;

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

    const-string v9, "#FFE91E63"

    const-string v10, "#FF8BC34A"

    invoke-direct {v6, v3, v1, v9, v10}, Lcom/s1243808733/aide/highlight/color/Color;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v6, v0, Lcom/s1243808733/aide/highlight/color/style/ColorIndigo;->LITERAL:Lcom/s1243808733/aide/highlight/color/Color;

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
    new-instance v9, Lcom/s1243808733/aide/highlight/color/Color;

    const-string v10, "#FF03A9F4"

    invoke-direct {v9, v3, v1, v10, v8}, Lcom/s1243808733/aide/highlight/color/Color;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v9, v0, Lcom/s1243808733/aide/highlight/color/style/ColorIndigo;->OPERATOR:Lcom/s1243808733/aide/highlight/color/Color;

    .line 27
    nop

    .line 28
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v1

    const-string v3, "Type Identifier"

    if-eqz v1, :cond_9c

    const-string v1, "类型标识符颜色"

    goto :goto_9d

    :cond_9c
    move-object v1, v3

    :goto_9d
    new-instance v10, Lcom/s1243808733/aide/highlight/color/Color;

    const-string v11, "#FF0096FF"

    const-string v12, "#FF4FC3F7"

    invoke-direct {v10, v3, v1, v11, v12}, Lcom/s1243808733/aide/highlight/color/Color;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v10, v0, Lcom/s1243808733/aide/highlight/color/style/ColorIndigo;->TYPE_IDENTIFIER:Lcom/s1243808733/aide/highlight/color/Color;

    .line 30
    nop

    .line 31
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v1

    const-string v3, "Namespace/Package Identifier"

    if-eqz v1, :cond_b4

    const-string v1, "包名颜色"

    goto :goto_b5

    :cond_b4
    move-object v1, v3

    :goto_b5
    new-instance v13, Lcom/s1243808733/aide/highlight/color/Color;

    const-string v14, "#FF757575"

    invoke-direct {v13, v3, v1, v14, v8}, Lcom/s1243808733/aide/highlight/color/Color;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v13, v0, Lcom/s1243808733/aide/highlight/color/style/ColorIndigo;->NAMESPACE_IDENTIFIER:Lcom/s1243808733/aide/highlight/color/Color;

    .line 33
    nop

    .line 34
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v1

    const-string v3, "Separator/Punctuator"

    if-eqz v1, :cond_ca

    const-string v1, "括号、标点颜色"

    goto :goto_cb

    :cond_ca
    move-object v1, v3

    :goto_cb
    new-instance v8, Lcom/s1243808733/aide/highlight/color/Color;

    invoke-direct {v8, v3, v1, v11, v12}, Lcom/s1243808733/aide/highlight/color/Color;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v8, v0, Lcom/s1243808733/aide/highlight/color/style/ColorIndigo;->SEPARATOR:Lcom/s1243808733/aide/highlight/color/Color;

    .line 36
    nop

    .line 37
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v1

    const-string v3, "Comment"

    if-eqz v1, :cond_de

    const-string v1, "代码注释颜色"

    goto :goto_df

    :cond_de
    move-object v1, v3

    :goto_df
    new-instance v11, Lcom/s1243808733/aide/highlight/color/Color;

    const-string v14, "#FF818181"

    const-string v15, "#FFBDBDBD"

    invoke-direct {v11, v3, v1, v14, v15}, Lcom/s1243808733/aide/highlight/color/Color;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v11, v0, Lcom/s1243808733/aide/highlight/color/style/ColorIndigo;->COMMENT:Lcom/s1243808733/aide/highlight/color/Color;

    .line 41
    nop

    .line 42
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v1

    if-eqz v1, :cond_f4

    const-string v1, "行号颜色"

    goto :goto_f6

    :cond_f4
    const-string v1, "Line number"

    :goto_f6
    new-instance v3, Lcom/s1243808733/aide/highlight/color/Color;

    const-string v14, "line number"

    invoke-direct {v3, v14, v1, v15, v12}, Lcom/s1243808733/aide/highlight/color/Color;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v3, v0, Lcom/s1243808733/aide/highlight/color/style/ColorIndigo;->LINE_NUMBER:Lcom/s1243808733/aide/highlight/color/Color;

    .line 44
    nop

    .line 45
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v1

    if-eqz v1, :cond_109

    const-string v1, "已选行背景颜色"

    goto :goto_10b

    :cond_109
    const-string v1, "Selected line background"

    :goto_10b
    new-instance v12, Lcom/s1243808733/aide/highlight/color/Color;

    const-string v14, "#10000000"

    const-string v15, "#15FFFFFF"

    move-object/from16 v16, v3

    const-string v3, "line background"

    invoke-direct {v12, v3, v1, v14, v15}, Lcom/s1243808733/aide/highlight/color/Color;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v12, v0, Lcom/s1243808733/aide/highlight/color/style/ColorIndigo;->LINE_BACKGROUND:Lcom/s1243808733/aide/highlight/color/Color;

    .line 47
    nop

    .line 48
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v1

    if-eqz v1, :cond_124

    const-string v1, "已选文字背景颜色"

    goto :goto_126

    :cond_124
    const-string v1, "Selected Text background"

    :goto_126
    new-instance v3, Lcom/s1243808733/aide/highlight/color/Color;

    const-string v14, "#FFABABAB"

    const-string v15, "#CCFF408E"

    move-object/from16 v17, v12

    const-string v12, "selected background"

    invoke-direct {v3, v12, v1, v14, v15}, Lcom/s1243808733/aide/highlight/color/Color;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v3, v0, Lcom/s1243808733/aide/highlight/color/style/ColorIndigo;->SELECTED_BACKGROUND:Lcom/s1243808733/aide/highlight/color/Color;

    .line 51
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

    aput-object v9, v1, v2

    const/4 v2, 0x6

    aput-object v10, v1, v2

    const/4 v2, 0x7

    aput-object v13, v1, v2

    const/16 v2, 0x8

    aput-object v8, v1, v2

    const/16 v2, 0x9

    aput-object v11, v1, v2

    const/16 v2, 0xa

    aput-object v16, v1, v2

    const/16 v2, 0xb

    aput-object v17, v1, v2

    const/16 v2, 0xc

    aput-object v3, v1, v2

    iput-object v1, v0, Lcom/s1243808733/aide/highlight/color/style/ColorIndigo;->colors:[Lcom/s1243808733/aide/highlight/color/Color;

    return-void
.end method


# virtual methods
.method public values()[Lcom/s1243808733/aide/highlight/color/Color;
    .registers 2

    .line 69
    iget-object v0, p0, Lcom/s1243808733/aide/highlight/color/style/ColorIndigo;->colors:[Lcom/s1243808733/aide/highlight/color/Color;

    return-object v0
.end method
