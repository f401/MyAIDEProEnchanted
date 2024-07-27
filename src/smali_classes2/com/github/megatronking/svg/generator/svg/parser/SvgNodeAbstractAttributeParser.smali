.class public abstract Lcom/github/megatronking/svg/generator/svg/parser/SvgNodeAbstractAttributeParser;
.super Lcom/github/megatronking/svg/generator/xml/CommonAbstractAttributeParser;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/github/megatronking/svg/generator/svg/model/SvgNode;",
        ">",
        "Lcom/github/megatronking/svg/generator/xml/CommonAbstractAttributeParser",
        "<TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/github/megatronking/svg/generator/xml/CommonAbstractAttributeParser;-><init>()V

    return-void
.end method

.method private handleCommonAttributes(Lorg/dom4j/Element;Lcom/github/megatronking/svg/generator/svg/model/SvgNode;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/dom4j/Element;",
            "Lcom/github/megatronking/svg/generator/svg/model/SvgNode;",
            ")V"
        }
    .end annotation

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    const-string v1, "id"

    invoke-virtual {p0, p1, v1}, Lcom/github/megatronking/svg/generator/svg/parser/SvgNodeAbstractAttributeParser;->parseString(Lorg/dom4j/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lcom/github/megatronking/svg/generator/svg/model/SvgNode;->id:Ljava/lang/String;

    const-string v1, "class"

    invoke-virtual {p0, p1, v1}, Lcom/github/megatronking/svg/generator/svg/parser/SvgNodeAbstractAttributeParser;->parseString(Lorg/dom4j/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lcom/github/megatronking/svg/generator/svg/model/SvgNode;->clazz:Ljava/lang/String;

    const-string v1, "transform"

    invoke-virtual {p0, p1, v1}, Lcom/github/megatronking/svg/generator/svg/parser/SvgNodeAbstractAttributeParser;->parseString(Lorg/dom4j/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "matrix"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    const/4 v2, 0x6

    new-array v2, v2, [F

    iput-object v2, p2, Lcom/github/megatronking/svg/generator/svg/model/SvgNode;->matrix:[F

    iget-object v2, p2, Lcom/github/megatronking/svg/generator/svg/model/SvgNode;->matrix:[F

    aput v4, v2, v0

    iget-object v2, p2, Lcom/github/megatronking/svg/generator/svg/model/SvgNode;->matrix:[F

    const/4 v3, 0x3

    aput v4, v2, v3

    const-string v2, "matrix("

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    :goto_0
    array-length v2, v1

    if-lt v0, v2, :cond_c

    :cond_0
    :goto_1
    const-string v0, "style"

    invoke-virtual {p0, p1, v0}, Lcom/github/megatronking/svg/generator/svg/parser/SvgNodeAbstractAttributeParser;->parseString(Lorg/dom4j/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/github/megatronking/svg/generator/svg/utils/StyleUtils;->convertStyleString2Map(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p2, Lcom/github/megatronking/svg/generator/svg/model/SvgNode;->styleMaps:Ljava/util/Map;

    iget-object v0, p2, Lcom/github/megatronking/svg/generator/svg/model/SvgNode;->styleMaps:Ljava/util/Map;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p2, Lcom/github/megatronking/svg/generator/svg/model/SvgNode;->styleMaps:Ljava/util/Map;

    :cond_1
    const-string v0, "display"

    invoke-virtual {p0, p1, v0}, Lcom/github/megatronking/svg/generator/svg/parser/SvgNodeAbstractAttributeParser;->parseString(Lorg/dom4j/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, p2, Lcom/github/megatronking/svg/generator/svg/model/SvgNode;->styleMaps:Ljava/util/Map;

    const-string v2, "display"

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    const-string v0, "stroke-width"

    invoke-virtual {p0, p1, v0}, Lcom/github/megatronking/svg/generator/svg/parser/SvgNodeAbstractAttributeParser;->parseString(Lorg/dom4j/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v1, p2, Lcom/github/megatronking/svg/generator/svg/model/SvgNode;->styleMaps:Ljava/util/Map;

    const-string v2, "stroke-width"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    const-string v0, "stroke"

    invoke-virtual {p0, p1, v0}, Lcom/github/megatronking/svg/generator/svg/parser/SvgNodeAbstractAttributeParser;->parseString(Lorg/dom4j/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v1, p2, Lcom/github/megatronking/svg/generator/svg/model/SvgNode;->styleMaps:Ljava/util/Map;

    const-string v2, "stroke"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    const-string v0, "stroke-linejoin"

    invoke-virtual {p0, p1, v0}, Lcom/github/megatronking/svg/generator/svg/parser/SvgNodeAbstractAttributeParser;->parseString(Lorg/dom4j/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v1, p2, Lcom/github/megatronking/svg/generator/svg/model/SvgNode;->styleMaps:Ljava/util/Map;

    const-string v2, "stroke-linejoin"

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    const-string v0, "stroke-linecap"

    invoke-virtual {p0, p1, v0}, Lcom/github/megatronking/svg/generator/svg/parser/SvgNodeAbstractAttributeParser;->parseString(Lorg/dom4j/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v1, p2, Lcom/github/megatronking/svg/generator/svg/model/SvgNode;->styleMaps:Ljava/util/Map;

    const-string v2, "stroke-linecap"

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    const-string v0, "stroke-miterlimit"

    invoke-virtual {p0, p1, v0}, Lcom/github/megatronking/svg/generator/svg/parser/SvgNodeAbstractAttributeParser;->parseString(Lorg/dom4j/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v1, p2, Lcom/github/megatronking/svg/generator/svg/model/SvgNode;->styleMaps:Ljava/util/Map;

    const-string v2, "stroke-miterlimit"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    const-string v0, "stroke-opacity"

    invoke-virtual {p0, p1, v0}, Lcom/github/megatronking/svg/generator/svg/parser/SvgNodeAbstractAttributeParser;->parseString(Lorg/dom4j/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-object v1, p2, Lcom/github/megatronking/svg/generator/svg/model/SvgNode;->styleMaps:Ljava/util/Map;

    const-string v2, "stroke-opacity"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    const-string v0, "fill"

    invoke-virtual {p0, p1, v0}, Lcom/github/megatronking/svg/generator/svg/parser/SvgNodeAbstractAttributeParser;->parseString(Lorg/dom4j/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-object v1, p2, Lcom/github/megatronking/svg/generator/svg/model/SvgNode;->styleMaps:Ljava/util/Map;

    const-string v2, "fill"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    const-string v0, "fill-opacity"

    invoke-virtual {p0, p1, v0}, Lcom/github/megatronking/svg/generator/svg/parser/SvgNodeAbstractAttributeParser;->parseString(Lorg/dom4j/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a

    iget-object v1, p2, Lcom/github/megatronking/svg/generator/svg/model/SvgNode;->styleMaps:Ljava/util/Map;

    const-string v2, "fill-opacity"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a
    const-string v0, "fill-rule"

    invoke-virtual {p0, p1, v0}, Lcom/github/megatronking/svg/generator/svg/parser/SvgNodeAbstractAttributeParser;->parseString(Lorg/dom4j/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b

    iget-object v1, p2, Lcom/github/megatronking/svg/generator/svg/model/SvgNode;->styleMaps:Ljava/util/Map;

    const-string v2, "fill-rule"

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b
    return-void

    :cond_c
    iget-object v2, p2, Lcom/github/megatronking/svg/generator/svg/model/SvgNode;->matrix:[F

    aget-object v3, v1, v0

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p2, Lcom/github/megatronking/svg/generator/svg/model/SvgNode;->matrix:[F

    aget v4, v4, v0

    invoke-static {v3, v4}, Lcom/github/megatronking/svg/generator/utils/SCU;->parseFloat(Ljava/lang/String;F)F

    move-result v3

    aput v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_d
    invoke-static {v1}, Lcom/github/megatronking/svg/generator/svg/utils/TransformUtils;->formatTransform(Ljava/lang/String;)[F

    move-result-object v0

    iput-object v0, p2, Lcom/github/megatronking/svg/generator/svg/model/SvgNode;->matrix:[F

    goto/16 :goto_1
.end method


# virtual methods
.method public parse(Lorg/dom4j/Element;Lcom/github/megatronking/svg/generator/svg/model/SvgNode;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/dom4j/Element;",
            "TT;)V^",
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

    invoke-direct {p0, p1, p2}, Lcom/github/megatronking/svg/generator/svg/parser/SvgNodeAbstractAttributeParser;->handleCommonAttributes(Lorg/dom4j/Element;Lcom/github/megatronking/svg/generator/svg/model/SvgNode;)V

    return-void
.end method

.method public bridge parse(Lorg/dom4j/Element;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/dom4j/DocumentException;
        }
    .end annotation

    check-cast p2, Lcom/github/megatronking/svg/generator/svg/model/SvgNode;

    invoke-virtual {p0, p1, p2}, Lcom/github/megatronking/svg/generator/svg/parser/SvgNodeAbstractAttributeParser;->parse(Lorg/dom4j/Element;Lcom/github/megatronking/svg/generator/svg/model/SvgNode;)V

    return-void
.end method
