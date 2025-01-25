.class public Lcom/github/megatronking/svg/generator/svg/parser/attribute/SvgAttributeParser;
.super Lcom/github/megatronking/svg/generator/svg/parser/SvgNodeAbstractAttributeParser;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/github/megatronking/svg/generator/svg/parser/SvgNodeAbstractAttributeParser",
        "<",
        "Lcom/github/megatronking/svg/generator/svg/model/Svg;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/github/megatronking/svg/generator/svg/parser/SvgNodeAbstractAttributeParser;-><init>()V

    return-void
.end method


# virtual methods
.method public parse(Lorg/dom4j/Element;Lcom/github/megatronking/svg/generator/svg/model/Svg;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/dom4j/Element;",
            "Lcom/github/megatronking/svg/generator/svg/model/Svg;",
            ")V^",
            "Lorg/dom4j/DocumentException;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/dom4j/DocumentException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/4 v4, 0x4

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-super {p0, p1, p2}, Lcom/github/megatronking/svg/generator/svg/parser/SvgNodeAbstractAttributeParser;->parse(Lorg/dom4j/Element;Lcom/github/megatronking/svg/generator/svg/model/SvgNode;)V

    const-string v0, "width"

    invoke-virtual {p0, p1, v0}, Lcom/github/megatronking/svg/generator/svg/parser/attribute/SvgAttributeParser;->parseDimen(Lorg/dom4j/Element;Ljava/lang/String;)F

    move-result v0

    iput v0, p2, Lcom/github/megatronking/svg/generator/svg/model/Svg;->w:F

    const-string v0, "height"

    invoke-virtual {p0, p1, v0}, Lcom/github/megatronking/svg/generator/svg/parser/attribute/SvgAttributeParser;->parseDimen(Lorg/dom4j/Element;Ljava/lang/String;)F

    move-result v0

    iput v0, p2, Lcom/github/megatronking/svg/generator/svg/model/Svg;->h:F

    const-string v3, "viewBox"

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, p1, v3, v0}, Lcom/github/megatronking/svg/generator/svg/parser/attribute/SvgAttributeParser;->parseString(Lorg/dom4j/Element;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2a

    const-string v3, "viewbox"

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, p1, v3, v0}, Lcom/github/megatronking/svg/generator/svg/parser/attribute/SvgAttributeParser;->parseString(Lorg/dom4j/Element;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_2a
    if-nez v0, :cond_35

    const-string v3, "viewPort"

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, p1, v3, v0}, Lcom/github/megatronking/svg/generator/svg/parser/attribute/SvgAttributeParser;->parseString(Lorg/dom4j/Element;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_35
    if-nez v0, :cond_3f

    const-string v0, "viewport"

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, p1, v0, v1}, Lcom/github/megatronking/svg/generator/svg/parser/attribute/SvgAttributeParser;->parseString(Lorg/dom4j/Element;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_3f
    if-eqz v0, :cond_82

    invoke-static {v0}, Lcom/github/megatronking/svg/generator/utils/TextUtils;->removeMultiSpace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    new-array v0, v4, [F

    iput-object v0, p2, Lcom/github/megatronking/svg/generator/svg/model/Svg;->viewBox:[F

    move v0, v2

    :goto_54
    array-length v3, v1

    if-lt v0, v3, :cond_74

    :goto_57
    iget v0, p2, Lcom/github/megatronking/svg/generator/svg/model/Svg;->w:F

    int-to-float v1, v2

    cmpg-float v0, v0, v1

    if-nez v0, :cond_65

    iget-object v0, p2, Lcom/github/megatronking/svg/generator/svg/model/Svg;->viewBox:[F

    const/4 v1, 0x2

    aget v0, v0, v1

    iput v0, p2, Lcom/github/megatronking/svg/generator/svg/model/Svg;->w:F

    :cond_65
    iget v0, p2, Lcom/github/megatronking/svg/generator/svg/model/Svg;->h:F

    int-to-float v1, v2

    cmpg-float v0, v0, v1

    if-nez v0, :cond_73

    iget-object v0, p2, Lcom/github/megatronking/svg/generator/svg/model/Svg;->viewBox:[F

    const/4 v1, 0x3

    aget v0, v0, v1

    iput v0, p2, Lcom/github/megatronking/svg/generator/svg/model/Svg;->h:F

    :cond_73
    return-void

    :cond_74
    iget-object v3, p2, Lcom/github/megatronking/svg/generator/svg/model/Svg;->viewBox:[F

    aget-object v4, v1, v0

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/github/megatronking/svg/generator/utils/SCU;->parseFloat(Ljava/lang/String;F)F

    move-result v4

    aput v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_54

    :cond_82
    new-array v0, v4, [F

    iput-object v0, p2, Lcom/github/megatronking/svg/generator/svg/model/Svg;->viewBox:[F

    goto :goto_57
.end method

.method public bridge parse(Lorg/dom4j/Element;Lcom/github/megatronking/svg/generator/svg/model/SvgNode;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/dom4j/DocumentException;
        }
    .end annotation

    check-cast p2, Lcom/github/megatronking/svg/generator/svg/model/Svg;

    invoke-virtual {p0, p1, p2}, Lcom/github/megatronking/svg/generator/svg/parser/attribute/SvgAttributeParser;->parse(Lorg/dom4j/Element;Lcom/github/megatronking/svg/generator/svg/model/Svg;)V

    return-void
.end method
