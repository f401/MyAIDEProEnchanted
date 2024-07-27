.class public Lcom/github/megatronking/svg/generator/svg/parser/element/SvgElementParser;
.super Lcom/github/megatronking/svg/generator/svg/parser/SvgGroupNodeAbstractElementParser;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/github/megatronking/svg/generator/svg/parser/SvgGroupNodeAbstractElementParser",
        "<",
        "Lcom/github/megatronking/svg/generator/svg/model/Svg;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    sget-object v0, Lcom/github/megatronking/svg/generator/svg/parser/SvgParserImpl;->SVG_ATTRIBUTE_PARSER:Lcom/github/megatronking/svg/generator/svg/parser/attribute/SvgAttributeParser;

    invoke-direct {p0, v0}, Lcom/github/megatronking/svg/generator/svg/parser/SvgGroupNodeAbstractElementParser;-><init>(Lcom/github/megatronking/svg/generator/xml/IAttributeParser;)V

    return-void
.end method


# virtual methods
.method public parse(Lorg/dom4j/Element;Lcom/github/megatronking/svg/generator/svg/model/Svg;)V
    .registers 3
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

    invoke-super {p0, p1, p2}, Lcom/github/megatronking/svg/generator/xml/ChildrenElementParser;->parse(Lorg/dom4j/Element;Ljava/lang/Object;)V

    invoke-virtual {p2}, Lcom/github/megatronking/svg/generator/svg/model/Svg;->parseEnd()V

    return-void
.end method

.method public bridge parse(Lorg/dom4j/Element;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/dom4j/DocumentException;
        }
    .end annotation

    check-cast p2, Lcom/github/megatronking/svg/generator/svg/model/Svg;

    invoke-virtual {p0, p1, p2}, Lcom/github/megatronking/svg/generator/svg/parser/element/SvgElementParser;->parse(Lorg/dom4j/Element;Lcom/github/megatronking/svg/generator/svg/model/Svg;)V

    return-void
.end method
