.class public Lcom/github/megatronking/svg/generator/svg/parser/attribute/RectAttributeParser;
.super Lcom/github/megatronking/svg/generator/svg/parser/SvgNodeAbstractAttributeParser;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/github/megatronking/svg/generator/svg/parser/SvgNodeAbstractAttributeParser",
        "<",
        "Lcom/github/megatronking/svg/generator/svg/model/Rect;",
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
.method public parse(Lorg/dom4j/Element;Lcom/github/megatronking/svg/generator/svg/model/Rect;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/dom4j/Element;",
            "Lcom/github/megatronking/svg/generator/svg/model/Rect;",
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

    invoke-virtual {p0, p1, v0}, Lcom/github/megatronking/svg/generator/svg/parser/attribute/RectAttributeParser;->parseFloat(Lorg/dom4j/Element;Ljava/lang/String;)F

    move-result v0

    iput v0, p2, Lcom/github/megatronking/svg/generator/svg/model/Rect;->x:F

    const-string v0, "y"

    invoke-virtual {p0, p1, v0}, Lcom/github/megatronking/svg/generator/svg/parser/attribute/RectAttributeParser;->parseFloat(Lorg/dom4j/Element;Ljava/lang/String;)F

    move-result v0

    iput v0, p2, Lcom/github/megatronking/svg/generator/svg/model/Rect;->y:F

    const-string v0, "width"

    invoke-virtual {p0, p1, v0}, Lcom/github/megatronking/svg/generator/svg/parser/attribute/RectAttributeParser;->parseFloat(Lorg/dom4j/Element;Ljava/lang/String;)F

    move-result v0

    iput v0, p2, Lcom/github/megatronking/svg/generator/svg/model/Rect;->width:F

    const-string v0, "height"

    invoke-virtual {p0, p1, v0}, Lcom/github/megatronking/svg/generator/svg/parser/attribute/RectAttributeParser;->parseFloat(Lorg/dom4j/Element;Ljava/lang/String;)F

    move-result v0

    iput v0, p2, Lcom/github/megatronking/svg/generator/svg/model/Rect;->height:F

    invoke-virtual {p2}, Lcom/github/megatronking/svg/generator/svg/model/Rect;->toPath()V

    return-void
.end method

.method public bridge parse(Lorg/dom4j/Element;Lcom/github/megatronking/svg/generator/svg/model/SvgNode;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/dom4j/DocumentException;
        }
    .end annotation

    check-cast p2, Lcom/github/megatronking/svg/generator/svg/model/Rect;

    invoke-virtual {p0, p1, p2}, Lcom/github/megatronking/svg/generator/svg/parser/attribute/RectAttributeParser;->parse(Lorg/dom4j/Element;Lcom/github/megatronking/svg/generator/svg/model/Rect;)V

    return-void
.end method
