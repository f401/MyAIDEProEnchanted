.class public Lcom/s1243808733/aide/highlight/color/style/RedColor;
.super Lcom/s1243808733/aide/highlight/color/Colors;
.source "RedColor.java"


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
    .registers 6

    .line 70
    invoke-direct {p0}, Lcom/s1243808733/aide/highlight/color/Colors;-><init>()V

    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "\u80cc\u666f\u989c\u8272"

    :goto_0
    new-instance v1, Lcom/s1243808733/aide/highlight/color/Color;

    const-string v2, "background"

    const-string v3, "#FFFFFFFF"

    const-string v4, "#FF212121"

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/s1243808733/aide/highlight/color/Color;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/s1243808733/aide/highlight/color/style/RedColor;->BACKGROUND:Lcom/s1243808733/aide/highlight/color/Color;

    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "\u6587\u5b57\u989c\u8272"

    :goto_1
    new-instance v1, Lcom/s1243808733/aide/highlight/color/Color;

    const-string v2, "Plain"

    const-string v3, "#FF000000"

    const-string v4, "#FFFFFFFF"

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/s1243808733/aide/highlight/color/Color;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/s1243808733/aide/highlight/color/style/RedColor;->PLAIN:Lcom/s1243808733/aide/highlight/color/Color;

    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "\u5173\u952e\u8bcd\u989c\u8272"

    :goto_2
    new-instance v1, Lcom/s1243808733/aide/highlight/color/Color;

    const-string v2, "Keyword"

    const-string v3, "#FFFF5A5A"

    const-string v4, "#FFFF6060"

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/s1243808733/aide/highlight/color/Color;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/s1243808733/aide/highlight/color/style/RedColor;->KEYWORD:Lcom/s1243808733/aide/highlight/color/Color;

    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo v0, "\u6807\u8bc6\u7b26\u989c\u8272"

    :goto_3
    new-instance v1, Lcom/s1243808733/aide/highlight/color/Color;

    const-string v2, "Identifier"

    const-string v3, "#FF000000"

    const-string v4, "#FFF0BE4B"

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/s1243808733/aide/highlight/color/Color;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/s1243808733/aide/highlight/color/style/RedColor;->IDENTIFIER:Lcom/s1243808733/aide/highlight/color/Color;

    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "\u5b57\u7b26\u4e32\u3001\u6570\u5b57\u3001\u5e03\u5c14\u503c\u989c\u8272"

    :goto_4
    new-instance v1, Lcom/s1243808733/aide/highlight/color/Color;

    const-string v2, "Literal"

    const-string v3, "#FFE91E63"

    const-string v4, "#FF8BC34A"

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/s1243808733/aide/highlight/color/Color;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/s1243808733/aide/highlight/color/style/RedColor;->LITERAL:Lcom/s1243808733/aide/highlight/color/Color;

    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string/jumbo v0, "\u64cd\u4f5c\u7b26\u989c\u8272"

    :goto_5
    new-instance v1, Lcom/s1243808733/aide/highlight/color/Color;

    const-string v2, "Operator"

    const-string v3, "#FF03A9F4"

    const-string v4, "#FFF0BE4B"

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/s1243808733/aide/highlight/color/Color;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/s1243808733/aide/highlight/color/style/RedColor;->OPERATOR:Lcom/s1243808733/aide/highlight/color/Color;

    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v0

    if-eqz v0, :cond_6

    const-string/jumbo v0, "\u7c7b\u578b\u6807\u8bc6\u7b26\u989c\u8272"

    :goto_6
    new-instance v1, Lcom/s1243808733/aide/highlight/color/Color;

    const-string v2, "Type Identifier"

    const-string v3, "#FF0096FF"

    const-string v4, "#FF4FC3F7"

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/s1243808733/aide/highlight/color/Color;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/s1243808733/aide/highlight/color/style/RedColor;->TYPE_IDENTIFIER:Lcom/s1243808733/aide/highlight/color/Color;

    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "\u5305\u540d\u989c\u8272"

    :goto_7
    new-instance v1, Lcom/s1243808733/aide/highlight/color/Color;

    const-string v2, "Namespace/Package Identifier"

    const-string v3, "#FF757575"

    const-string v4, "#FFF0BE4B"

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/s1243808733/aide/highlight/color/Color;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/s1243808733/aide/highlight/color/style/RedColor;->NAMESPACE_IDENTIFIER:Lcom/s1243808733/aide/highlight/color/Color;

    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "\u62ec\u53f7\u3001\u6807\u70b9\u989c\u8272"

    :goto_8
    new-instance v1, Lcom/s1243808733/aide/highlight/color/Color;

    const-string v2, "Separator/Punctuator"

    const-string v3, "#FF0096FF"

    const-string v4, "#FF4FC3F7"

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/s1243808733/aide/highlight/color/Color;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/s1243808733/aide/highlight/color/style/RedColor;->SEPARATOR:Lcom/s1243808733/aide/highlight/color/Color;

    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "\u4ee3\u7801\u6ce8\u91ca\u989c\u8272"

    :goto_9
    new-instance v1, Lcom/s1243808733/aide/highlight/color/Color;

    const-string v2, "Comment"

    const-string v3, "#FF818181"

    const-string v4, "#FFBDBDBD"

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/s1243808733/aide/highlight/color/Color;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/s1243808733/aide/highlight/color/style/RedColor;->COMMENT:Lcom/s1243808733/aide/highlight/color/Color;

    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v0

    if-eqz v0, :cond_a

    const-string/jumbo v0, "\u884c\u53f7\u989c\u8272"

    :goto_a
    new-instance v1, Lcom/s1243808733/aide/highlight/color/Color;

    const-string v2, "line number"

    const-string v3, "#FFBDBDBD"

    const-string v4, "#FF4FC3F7"

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/s1243808733/aide/highlight/color/Color;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/s1243808733/aide/highlight/color/style/RedColor;->LINE_NUMBER:Lcom/s1243808733/aide/highlight/color/Color;

    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "\u5df2\u9009\u884c\u80cc\u666f\u989c\u8272"

    :goto_b
    new-instance v1, Lcom/s1243808733/aide/highlight/color/Color;

    const-string v2, "line background"

    const-string v3, "#10000000"

    const-string v4, "#15FFFFFF"

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/s1243808733/aide/highlight/color/Color;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/s1243808733/aide/highlight/color/style/RedColor;->LINE_BACKGROUND:Lcom/s1243808733/aide/highlight/color/Color;

    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v0

    if-eqz v0, :cond_c

    const-string v0, "\u5df2\u9009\u6587\u5b57\u80cc\u666f\u989c\u8272"

    :goto_c
    new-instance v1, Lcom/s1243808733/aide/highlight/color/Color;

    const-string v2, "selected background"

    const-string v3, "#FFABABAB"

    const-string v4, "#DFF44336"

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/s1243808733/aide/highlight/color/Color;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/s1243808733/aide/highlight/color/style/RedColor;->SELECTED_BACKGROUND:Lcom/s1243808733/aide/highlight/color/Color;

    const/16 v0, 0xd

    new-array v0, v0, [Lcom/s1243808733/aide/highlight/color/Color;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/s1243808733/aide/highlight/color/style/RedColor;->BACKGROUND:Lcom/s1243808733/aide/highlight/color/Color;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/s1243808733/aide/highlight/color/style/RedColor;->PLAIN:Lcom/s1243808733/aide/highlight/color/Color;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/s1243808733/aide/highlight/color/style/RedColor;->KEYWORD:Lcom/s1243808733/aide/highlight/color/Color;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/s1243808733/aide/highlight/color/style/RedColor;->IDENTIFIER:Lcom/s1243808733/aide/highlight/color/Color;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/s1243808733/aide/highlight/color/style/RedColor;->LITERAL:Lcom/s1243808733/aide/highlight/color/Color;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/s1243808733/aide/highlight/color/style/RedColor;->OPERATOR:Lcom/s1243808733/aide/highlight/color/Color;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/s1243808733/aide/highlight/color/style/RedColor;->TYPE_IDENTIFIER:Lcom/s1243808733/aide/highlight/color/Color;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    iget-object v2, p0, Lcom/s1243808733/aide/highlight/color/style/RedColor;->NAMESPACE_IDENTIFIER:Lcom/s1243808733/aide/highlight/color/Color;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    iget-object v2, p0, Lcom/s1243808733/aide/highlight/color/style/RedColor;->SEPARATOR:Lcom/s1243808733/aide/highlight/color/Color;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    iget-object v2, p0, Lcom/s1243808733/aide/highlight/color/style/RedColor;->COMMENT:Lcom/s1243808733/aide/highlight/color/Color;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    iget-object v2, p0, Lcom/s1243808733/aide/highlight/color/style/RedColor;->LINE_NUMBER:Lcom/s1243808733/aide/highlight/color/Color;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    iget-object v2, p0, Lcom/s1243808733/aide/highlight/color/style/RedColor;->LINE_BACKGROUND:Lcom/s1243808733/aide/highlight/color/Color;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    iget-object v2, p0, Lcom/s1243808733/aide/highlight/color/style/RedColor;->SELECTED_BACKGROUND:Lcom/s1243808733/aide/highlight/color/Color;

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/s1243808733/aide/highlight/color/style/RedColor;->colors:[Lcom/s1243808733/aide/highlight/color/Color;

    return-void

    :cond_0
    const-string v0, "Background"

    goto/16 :goto_0

    :cond_1
    const-string v0, "Plain"

    goto/16 :goto_1

    :cond_2
    const-string v0, "Keyword"

    goto/16 :goto_2

    :cond_3
    const-string v0, "Identifier"

    goto/16 :goto_3

    :cond_4
    const-string v0, "Literal"

    goto/16 :goto_4

    :cond_5
    const-string v0, "Operator"

    goto/16 :goto_5

    :cond_6
    const-string v0, "Type Identifier"

    goto/16 :goto_6

    :cond_7
    const-string v0, "Namespace/Package Identifier"

    goto/16 :goto_7

    :cond_8
    const-string v0, "Separator/Punctuator"

    goto/16 :goto_8

    :cond_9
    const-string v0, "Comment"

    goto/16 :goto_9

    :cond_a
    const-string v0, "Line number"

    goto/16 :goto_a

    :cond_b
    const-string v0, "Selected line background"

    goto/16 :goto_b

    :cond_c
    const-string v0, "Selected Text background"

    goto/16 :goto_c
.end method


# virtual methods
.method public values()[Lcom/s1243808733/aide/highlight/color/Color;
    .registers 2
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 69
    iget-object v0, p0, Lcom/s1243808733/aide/highlight/color/style/RedColor;->colors:[Lcom/s1243808733/aide/highlight/color/Color;

    return-object v0
.end method
