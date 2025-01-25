.class public Lcom/github/megatronking/svg/generator/svg/parser/attribute/UseAttributeParser;
.super Lcom/github/megatronking/svg/generator/svg/parser/SvgNodeAbstractAttributeParser;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/github/megatronking/svg/generator/svg/parser/SvgNodeAbstractAttributeParser",
        "<",
        "Lcom/github/megatronking/svg/generator/svg/model/Use;",
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
.method public bridge parse(Lorg/dom4j/Element;Lcom/github/megatronking/svg/generator/svg/model/SvgNode;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/dom4j/DocumentException;
        }
    .end annotation

    check-cast p2, Lcom/github/megatronking/svg/generator/svg/model/Use;

    invoke-virtual {p0, p1, p2}, Lcom/github/megatronking/svg/generator/svg/parser/attribute/UseAttributeParser;->parse(Lorg/dom4j/Element;Lcom/github/megatronking/svg/generator/svg/model/Use;)V

    return-void
.end method

.method public parse(Lorg/dom4j/Element;Lcom/github/megatronking/svg/generator/svg/model/Use;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/dom4j/Element;",
            "Lcom/github/megatronking/svg/generator/svg/model/Use;",
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

    invoke-super {p0, p1, p2}, Lcom/github/megatronking/svg/generator/svg/parser/SvgNodeAbstractAttributeParser;->parse(Lorg/dom4j/Element;Lcom/github/megatronking/svg/generator/svg/model/SvgNode;)V

    const-string v0, "x"

    invoke-virtual {p0, p1, v0}, Lcom/github/megatronking/svg/generator/svg/parser/attribute/UseAttributeParser;->parseFloat(Lorg/dom4j/Element;Ljava/lang/String;)F

    move-result v0

    iput v0, p2, Lcom/github/megatronking/svg/generator/svg/model/Use;->x:F

    const-string v0, "y"

    invoke-virtual {p0, p1, v0}, Lcom/github/megatronking/svg/generator/svg/parser/attribute/UseAttributeParser;->parseFloat(Lorg/dom4j/Element;Ljava/lang/String;)F

    move-result v0

    iput v0, p2, Lcom/github/megatronking/svg/generator/svg/model/Use;->y:F

    const-string v0, "width"

    invoke-virtual {p0, p1, v0}, Lcom/github/megatronking/svg/generator/svg/parser/attribute/UseAttributeParser;->parseFloat(Lorg/dom4j/Element;Ljava/lang/String;)F

    move-result v0

    iput v0, p2, Lcom/github/megatronking/svg/generator/svg/model/Use;->width:F

    const-string v0, "height"

    invoke-virtual {p0, p1, v0}, Lcom/github/megatronking/svg/generator/svg/parser/attribute/UseAttributeParser;->parseFloat(Lorg/dom4j/Element;Ljava/lang/String;)F

    move-result v0

    iput v0, p2, Lcom/github/megatronking/svg/generator/svg/model/Use;->height:F

    const-string v0, "href"

    invoke-virtual {p0, p1, v0}, Lcom/github/megatronking/svg/generator/svg/parser/attribute/UseAttributeParser;->parseString(Lorg/dom4j/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/github/megatronking/svg/generator/svg/model/Use;->href:Ljava/lang/String;

    return-void
.end method
