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
    .locals 21

    .line 6
    invoke-direct/range {p0 .. p0}, Lcom/s1243808733/aide/highlight/color/Colors;-><init>()V

    .line 8
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "\u80cc\u666f\u989c\u8272"

    :goto_0
    new-instance v5, Lcom/s1243808733/aide/highlight/color/Color;

    const-string v6, "background"

    const-string v7, "#00FFFFFF"

    const-string v8, "#FF181818"

    invoke-direct {v5, v6, v4, v7, v8}, Lcom/s1243808733/aide/highlight/color/Color;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/s1243808733/aide/highlight/color/ColorDefault;->BACKGROUND:Lcom/s1243808733/aide/highlight/color/Color;

    .line 11
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "\u6587\u5b57\u989c\u8272"

    :goto_1
    new-instance v6, Lcom/s1243808733/aide/highlight/color/Color;

    const-string v7, "Plain"

    const-string v8, "#FF000000"

    const-string v9, "#FFFFFFFF"

    invoke-direct {v6, v7, v4, v8, v9}, Lcom/s1243808733/aide/highlight/color/Color;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/s1243808733/aide/highlight/color/ColorDefault;->PLAIN:Lcom/s1243808733/aide/highlight/color/Color;

    .line 14
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "\u5173\u952e\u8bcd\u989c\u8272"

    :goto_2
    new-instance v7, Lcom/s1243808733/aide/highlight/color/Color;

    const-string v8, "Keyword"

    const-string v9, "#FF0096FF"

    const-string v10, "#FFFF5252"

    invoke-direct {v7, v8, v4, v9, v10}, Lcom/s1243808733/aide/highlight/color/Color;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/s1243808733/aide/highlight/color/ColorDefault;->KEYWORD:Lcom/s1243808733/aide/highlight/color/Color;

    .line 17
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "\u6807\u8bc6\u7b26\u989c\u8272"

    :goto_3
    new-instance v8, Lcom/s1243808733/aide/highlight/color/Color;

    const-string v9, "Identifier"

    const-string v10, "#FF000000"

    const-string v11, "#FFFFD740"

    invoke-direct {v8, v9, v4, v10, v11}, Lcom/s1243808733/aide/highlight/color/Color;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/s1243808733/aide/highlight/color/ColorDefault;->IDENTIFIER:Lcom/s1243808733/aide/highlight/color/Color;

    .line 20
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v4, "\u5b57\u7b26\u4e32\u3001\u6570\u5b57\u3001\u5e03\u5c14\u503c\u989c\u8272"

    :goto_4
    new-instance v9, Lcom/s1243808733/aide/highlight/color/Color;

    const-string v10, "Literal"

    const-string v11, "#FFE91E63"

    const-string v12, "#FF8BC34A"

    invoke-direct {v9, v10, v4, v11, v12}, Lcom/s1243808733/aide/highlight/color/Color;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/s1243808733/aide/highlight/color/ColorDefault;->LITERAL:Lcom/s1243808733/aide/highlight/color/Color;

    .line 23
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v4

    if-eqz v4, :cond_5

    const-string v4, "\u64cd\u4f5c\u7b26\u989c\u8272"

    :goto_5
    new-instance v10, Lcom/s1243808733/aide/highlight/color/Color;

    const-string v11, "Operator"

    const-string v12, "#FF03A9F4"

    const-string v13, "#FFEC407A"

    invoke-direct {v10, v11, v4, v12, v13}, Lcom/s1243808733/aide/highlight/color/Color;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/s1243808733/aide/highlight/color/ColorDefault;->OPERATOR:Lcom/s1243808733/aide/highlight/color/Color;

    .line 26
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v4

    if-eqz v4, :cond_6

    const-string v4, "\u7c7b\u578b\u6807\u8bc6\u7b26\u989c\u8272"

    :goto_6
    new-instance v11, Lcom/s1243808733/aide/highlight/color/Color;

    const-string v12, "Type Identifier"

    const-string v13, "#FF0096FF"

    const-string v14, "#FF23BBFF"

    invoke-direct {v11, v12, v4, v13, v14}, Lcom/s1243808733/aide/highlight/color/Color;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/s1243808733/aide/highlight/color/ColorDefault;->TYPE_IDENTIFIER:Lcom/s1243808733/aide/highlight/color/Color;

    .line 29
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v4

    if-eqz v4, :cond_7

    const-string v4, "\u5305\u540d\u989c\u8272"

    :goto_7
    new-instance v12, Lcom/s1243808733/aide/highlight/color/Color;

    const-string v13, "Namespace/Package Identifier"

    const-string v14, "#FF818181"

    const-string v15, "#FFFFD740"

    invoke-direct {v12, v13, v4, v14, v15}, Lcom/s1243808733/aide/highlight/color/Color;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/s1243808733/aide/highlight/color/ColorDefault;->NAMESPACE_IDENTIFIER:Lcom/s1243808733/aide/highlight/color/Color;

    .line 32
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v4

    if-eqz v4, :cond_8

    const-string v4, "\u62ec\u53f7\u3001\u6807\u70b9\u989c\u8272"

    :goto_8
    new-instance v13, Lcom/s1243808733/aide/highlight/color/Color;

    const-string v14, "Separator/Punctuator"

    const-string v15, "#FF0096FF"

    const-string v16, "#FF4DD0E1"

    move-object/from16 v0, v16

    invoke-direct {v13, v14, v4, v15, v0}, Lcom/s1243808733/aide/highlight/color/Color;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/s1243808733/aide/highlight/color/ColorDefault;->SEPARATOR:Lcom/s1243808733/aide/highlight/color/Color;

    .line 35
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v4

    if-eqz v4, :cond_9

    const-string v4, "\u4ee3\u7801\u6ce8\u91ca\u989c\u8272"

    :goto_9
    new-instance v14, Lcom/s1243808733/aide/highlight/color/Color;

    const-string v15, "Comment"

    const-string v16, "#FF818181"

    const-string v17, "#FF00C853"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-direct {v14, v15, v4, v0, v1}, Lcom/s1243808733/aide/highlight/color/Color;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/s1243808733/aide/highlight/color/ColorDefault;->COMMENT:Lcom/s1243808733/aide/highlight/color/Color;

    .line 40
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v4

    if-eqz v4, :cond_a

    const-string v4, "\u884c\u53f7\u989c\u8272"

    :goto_a
    new-instance v15, Lcom/s1243808733/aide/highlight/color/Color;

    const-string v16, "line number"

    const-string v17, "#FFBDBDBD"

    const-string v18, "#FF23BBFF"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-direct {v15, v0, v4, v1, v2}, Lcom/s1243808733/aide/highlight/color/Color;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/s1243808733/aide/highlight/color/ColorDefault;->LINE_NUMBER:Lcom/s1243808733/aide/highlight/color/Color;

    .line 43
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v4

    if-eqz v4, :cond_b

    const-string v4, "\u5df2\u9009\u884c\u80cc\u666f\u989c\u8272"

    :goto_b
    new-instance v16, Lcom/s1243808733/aide/highlight/color/Color;

    const-string v17, "line background"

    const-string v18, "#10000000"

    const-string v19, "#15FFFFFF"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/s1243808733/aide/highlight/color/Color;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/s1243808733/aide/highlight/color/ColorDefault;->LINE_BACKGROUND:Lcom/s1243808733/aide/highlight/color/Color;

    .line 46
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v4

    if-eqz v4, :cond_c

    const-string v4, "\u5df2\u9009\u6587\u5b57\u80cc\u666f\u989c\u8272"

    :goto_c
    new-instance v17, Lcom/s1243808733/aide/highlight/color/Color;

    const-string v18, "selected background"

    const-string v19, "#FF2ABFFF"

    const-string v20, "#FF2E94C2"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/s1243808733/aide/highlight/color/Color;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/s1243808733/aide/highlight/color/ColorDefault;->SELECTED_BACKGROUND:Lcom/s1243808733/aide/highlight/color/Color;

    .line 49
    const/16 v4, 0xd

    new-array v4, v4, [Lcom/s1243808733/aide/highlight/color/Color;

    const/16 v18, 0x0

    aput-object v5, v4, v18

    const/4 v5, 0x1

    aput-object v6, v4, v5

    const/4 v5, 0x2

    aput-object v7, v4, v5

    const/4 v5, 0x3

    aput-object v8, v4, v5

    const/4 v5, 0x4

    aput-object v9, v4, v5

    const/4 v5, 0x5

    aput-object v10, v4, v5

    const/4 v5, 0x6

    aput-object v11, v4, v5

    const/4 v5, 0x7

    aput-object v12, v4, v5

    const/16 v5, 0x8

    aput-object v13, v4, v5

    const/16 v5, 0x9

    aput-object v14, v4, v5

    const/16 v5, 0xa

    aput-object v15, v4, v5

    const/16 v5, 0xb

    aput-object v16, v4, v5

    const/16 v5, 0xc

    aput-object v17, v4, v5

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/s1243808733/aide/highlight/color/ColorDefault;->colors:[Lcom/s1243808733/aide/highlight/color/Color;

    return-void

    .line 8
    :cond_0
    const-string v4, "Background"

    goto/16 :goto_0

    .line 11
    :cond_1
    const-string v4, "Plain"

    goto/16 :goto_1

    .line 14
    :cond_2
    const-string v4, "Keyword"

    goto/16 :goto_2

    .line 17
    :cond_3
    const-string v4, "Identifier"

    goto/16 :goto_3

    .line 20
    :cond_4
    const-string v4, "Literal"

    goto/16 :goto_4

    .line 23
    :cond_5
    const-string v4, "Operator"

    goto/16 :goto_5

    .line 26
    :cond_6
    const-string v4, "Type Identifier"

    goto/16 :goto_6

    .line 29
    :cond_7
    const-string v4, "Namespace/Package Identifier"

    goto/16 :goto_7

    .line 32
    :cond_8
    const-string v4, "Separator/Punctuator"

    goto/16 :goto_8

    .line 35
    :cond_9
    const-string v4, "Comment"

    goto/16 :goto_9

    .line 40
    :cond_a
    const-string v4, "Line number"

    goto/16 :goto_a

    .line 43
    :cond_b
    const-string v4, "Selested line background"

    goto/16 :goto_b

    .line 46
    :cond_c
    const-string v4, "Selected text background"

    goto/16 :goto_c
.end method


# virtual methods
.method public values()[Lcom/s1243808733/aide/highlight/color/Color;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/s1243808733/aide/highlight/color/ColorDefault;->colors:[Lcom/s1243808733/aide/highlight/color/Color;

    return-object v0
.end method
