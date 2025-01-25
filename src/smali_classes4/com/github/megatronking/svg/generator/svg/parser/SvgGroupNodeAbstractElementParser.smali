.class public abstract Lcom/github/megatronking/svg/generator/svg/parser/SvgGroupNodeAbstractElementParser;
.super Lcom/github/megatronking/svg/generator/xml/ChildrenElementParser;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/github/megatronking/svg/generator/svg/model/SvgGroupNode;",
        ">",
        "Lcom/github/megatronking/svg/generator/xml/ChildrenElementParser",
        "<TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/github/megatronking/svg/generator/xml/IAttributeParser;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/megatronking/svg/generator/xml/IAttributeParser",
            "<TT;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/github/megatronking/svg/generator/xml/ChildrenElementParser;-><init>(Lcom/github/megatronking/svg/generator/xml/IAttributeParser;)V

    return-void
.end method


# virtual methods
.method protected parseChild(Lorg/dom4j/Element;Lcom/github/megatronking/svg/generator/svg/model/SvgGroupNode;)V
    .registers 5
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

    sget-object v0, Lcom/github/megatronking/svg/generator/svg/model/SvgConstants;->TAG_GROUP:Ljava/lang/String;

    invoke-interface {p1}, Lorg/dom4j/Element;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    new-instance v0, Lcom/github/megatronking/svg/generator/svg/model/G;

    invoke-direct {v0}, Lcom/github/megatronking/svg/generator/svg/model/G;-><init>()V

    iget-object v1, p2, Lcom/github/megatronking/svg/generator/svg/model/SvgGroupNode;->children:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/github/megatronking/svg/generator/svg/parser/SvgParserImpl;->G_ELEMENT_PARSER:Lcom/github/megatronking/svg/generator/svg/parser/element/GElementParser;

    invoke-virtual {v1, p1, v0}, Lcom/github/megatronking/svg/generator/svg/parser/element/GElementParser;->parse(Lorg/dom4j/Element;Ljava/lang/Object;)V

    :cond_1b
    sget-object v0, Lcom/github/megatronking/svg/generator/svg/model/SvgConstants;->TAG_CIRCLE:Ljava/lang/String;

    invoke-interface {p1}, Lorg/dom4j/Element;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36

    new-instance v0, Lcom/github/megatronking/svg/generator/svg/model/Circle;

    invoke-direct {v0}, Lcom/github/megatronking/svg/generator/svg/model/Circle;-><init>()V

    iget-object v1, p2, Lcom/github/megatronking/svg/generator/svg/model/SvgGroupNode;->children:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/github/megatronking/svg/generator/svg/parser/SvgParserImpl;->CIRCLE_ATTRIBUTE_PARSER:Lcom/github/megatronking/svg/generator/svg/parser/attribute/CircleAttributeParser;

    invoke-virtual {v1, p1, v0}, Lcom/github/megatronking/svg/generator/svg/parser/attribute/CircleAttributeParser;->parse(Lorg/dom4j/Element;Lcom/github/megatronking/svg/generator/svg/model/Circle;)V

    :cond_36
    sget-object v0, Lcom/github/megatronking/svg/generator/svg/model/SvgConstants;->TAG_ELLIPSE:Ljava/lang/String;

    invoke-interface {p1}, Lorg/dom4j/Element;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_51

    new-instance v0, Lcom/github/megatronking/svg/generator/svg/model/Ellipse;

    invoke-direct {v0}, Lcom/github/megatronking/svg/generator/svg/model/Ellipse;-><init>()V

    iget-object v1, p2, Lcom/github/megatronking/svg/generator/svg/model/SvgGroupNode;->children:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/github/megatronking/svg/generator/svg/parser/SvgParserImpl;->ELLIPSE_ATTRIBUTE_PARSER:Lcom/github/megatronking/svg/generator/svg/parser/attribute/EllipseAttributeParser;

    invoke-virtual {v1, p1, v0}, Lcom/github/megatronking/svg/generator/svg/parser/attribute/EllipseAttributeParser;->parse(Lorg/dom4j/Element;Lcom/github/megatronking/svg/generator/svg/model/Ellipse;)V

    :cond_51
    sget-object v0, Lcom/github/megatronking/svg/generator/svg/model/SvgConstants;->TAG_LINE:Ljava/lang/String;

    invoke-interface {p1}, Lorg/dom4j/Element;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6c

    new-instance v0, Lcom/github/megatronking/svg/generator/svg/model/Line;

    invoke-direct {v0}, Lcom/github/megatronking/svg/generator/svg/model/Line;-><init>()V

    iget-object v1, p2, Lcom/github/megatronking/svg/generator/svg/model/SvgGroupNode;->children:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/github/megatronking/svg/generator/svg/parser/SvgParserImpl;->LINE_ATTRIBUTE_PARSER:Lcom/github/megatronking/svg/generator/svg/parser/attribute/LineAttributeParser;

    invoke-virtual {v1, p1, v0}, Lcom/github/megatronking/svg/generator/svg/parser/attribute/LineAttributeParser;->parse(Lorg/dom4j/Element;Lcom/github/megatronking/svg/generator/svg/model/Line;)V

    :cond_6c
    sget-object v0, Lcom/github/megatronking/svg/generator/svg/model/SvgConstants;->TAG_RECT:Ljava/lang/String;

    invoke-interface {p1}, Lorg/dom4j/Element;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_87

    new-instance v0, Lcom/github/megatronking/svg/generator/svg/model/Rect;

    invoke-direct {v0}, Lcom/github/megatronking/svg/generator/svg/model/Rect;-><init>()V

    iget-object v1, p2, Lcom/github/megatronking/svg/generator/svg/model/SvgGroupNode;->children:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/github/megatronking/svg/generator/svg/parser/SvgParserImpl;->RECT_ATTRIBUTE_PARSER:Lcom/github/megatronking/svg/generator/svg/parser/attribute/RectAttributeParser;

    invoke-virtual {v1, p1, v0}, Lcom/github/megatronking/svg/generator/svg/parser/attribute/RectAttributeParser;->parse(Lorg/dom4j/Element;Lcom/github/megatronking/svg/generator/svg/model/Rect;)V

    :cond_87
    sget-object v0, Lcom/github/megatronking/svg/generator/svg/model/SvgConstants;->TAG_POLYGON:Ljava/lang/String;

    invoke-interface {p1}, Lorg/dom4j/Element;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a2

    new-instance v0, Lcom/github/megatronking/svg/generator/svg/model/Polygon;

    invoke-direct {v0}, Lcom/github/megatronking/svg/generator/svg/model/Polygon;-><init>()V

    iget-object v1, p2, Lcom/github/megatronking/svg/generator/svg/model/SvgGroupNode;->children:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/github/megatronking/svg/generator/svg/parser/SvgParserImpl;->POLYGON_ATTRIBUTE_PARSER:Lcom/github/megatronking/svg/generator/svg/parser/attribute/PolygonAttributeParser;

    invoke-virtual {v1, p1, v0}, Lcom/github/megatronking/svg/generator/svg/parser/attribute/PolygonAttributeParser;->parse(Lorg/dom4j/Element;Lcom/github/megatronking/svg/generator/svg/model/Polygon;)V

    :cond_a2
    sget-object v0, Lcom/github/megatronking/svg/generator/svg/model/SvgConstants;->TAG_POLYLINE:Ljava/lang/String;

    invoke-interface {p1}, Lorg/dom4j/Element;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_bd

    new-instance v0, Lcom/github/megatronking/svg/generator/svg/model/Polyline;

    invoke-direct {v0}, Lcom/github/megatronking/svg/generator/svg/model/Polyline;-><init>()V

    iget-object v1, p2, Lcom/github/megatronking/svg/generator/svg/model/SvgGroupNode;->children:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/github/megatronking/svg/generator/svg/parser/SvgParserImpl;->POLYLINE_ATTRIBUTE_PARSER:Lcom/github/megatronking/svg/generator/svg/parser/attribute/PolylineAttributeParser;

    invoke-virtual {v1, p1, v0}, Lcom/github/megatronking/svg/generator/svg/parser/attribute/PolylineAttributeParser;->parse(Lorg/dom4j/Element;Lcom/github/megatronking/svg/generator/svg/model/Polyline;)V

    :cond_bd
    sget-object v0, Lcom/github/megatronking/svg/generator/svg/model/SvgConstants;->TAG_PATH:Ljava/lang/String;

    invoke-interface {p1}, Lorg/dom4j/Element;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d8

    new-instance v0, Lcom/github/megatronking/svg/generator/svg/model/Path;

    invoke-direct {v0}, Lcom/github/megatronking/svg/generator/svg/model/Path;-><init>()V

    iget-object v1, p2, Lcom/github/megatronking/svg/generator/svg/model/SvgGroupNode;->children:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/github/megatronking/svg/generator/svg/parser/SvgParserImpl;->PATH_ATTRIBUTE_PARSER:Lcom/github/megatronking/svg/generator/svg/parser/attribute/PathAttributeParser;

    invoke-virtual {v1, p1, v0}, Lcom/github/megatronking/svg/generator/svg/parser/attribute/PathAttributeParser;->parse(Lorg/dom4j/Element;Lcom/github/megatronking/svg/generator/svg/model/Path;)V

    :cond_d8
    sget-object v0, Lcom/github/megatronking/svg/generator/svg/model/SvgConstants;->TAG_USE:Ljava/lang/String;

    invoke-interface {p1}, Lorg/dom4j/Element;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f3

    new-instance v0, Lcom/github/megatronking/svg/generator/svg/model/Use;

    invoke-direct {v0}, Lcom/github/megatronking/svg/generator/svg/model/Use;-><init>()V

    iget-object v1, p2, Lcom/github/megatronking/svg/generator/svg/model/SvgGroupNode;->children:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/github/megatronking/svg/generator/svg/parser/SvgParserImpl;->USE_ATTRIBUTE_PARSER:Lcom/github/megatronking/svg/generator/svg/parser/attribute/UseAttributeParser;

    invoke-virtual {v1, p1, v0}, Lcom/github/megatronking/svg/generator/svg/parser/attribute/UseAttributeParser;->parse(Lorg/dom4j/Element;Lcom/github/megatronking/svg/generator/svg/model/Use;)V

    :cond_f3
    sget-object v0, Lcom/github/megatronking/svg/generator/svg/model/SvgConstants;->TAG_STYLE:Ljava/lang/String;

    invoke-interface {p1}, Lorg/dom4j/Element;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_117

    invoke-interface {p1}, Lorg/dom4j/Element;->getText()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_117

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_117

    new-instance v1, Lcom/github/megatronking/svg/generator/svg/model/Style;

    invoke-direct {v1}, Lcom/github/megatronking/svg/generator/svg/model/Style;-><init>()V

    iput-object v0, v1, Lcom/github/megatronking/svg/generator/svg/model/Style;->cssStyle:Ljava/lang/String;

    iget-object v0, p2, Lcom/github/megatronking/svg/generator/svg/model/SvgGroupNode;->children:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_117
    sget-object v0, Lcom/github/megatronking/svg/generator/svg/model/SvgConstants;->TAG_DEFS:Ljava/lang/String;

    invoke-interface {p1}, Lorg/dom4j/Element;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_132

    new-instance v0, Lcom/github/megatronking/svg/generator/svg/model/Defs;

    invoke-direct {v0}, Lcom/github/megatronking/svg/generator/svg/model/Defs;-><init>()V

    iget-object v1, p2, Lcom/github/megatronking/svg/generator/svg/model/SvgGroupNode;->children:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/github/megatronking/svg/generator/svg/parser/SvgParserImpl;->DEFS_ELEMENT_PARSER:Lcom/github/megatronking/svg/generator/svg/parser/element/DefsElementParser;

    invoke-virtual {v1, p1, v0}, Lcom/github/megatronking/svg/generator/svg/parser/element/DefsElementParser;->parse(Lorg/dom4j/Element;Ljava/lang/Object;)V

    :cond_132
    sget-object v0, Lcom/github/megatronking/svg/generator/svg/model/SvgConstants;->TAG_SYMBOL:Ljava/lang/String;

    invoke-interface {p1}, Lorg/dom4j/Element;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14d

    new-instance v0, Lcom/github/megatronking/svg/generator/svg/model/Symbol;

    invoke-direct {v0}, Lcom/github/megatronking/svg/generator/svg/model/Symbol;-><init>()V

    iget-object v1, p2, Lcom/github/megatronking/svg/generator/svg/model/SvgGroupNode;->children:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/github/megatronking/svg/generator/svg/parser/SvgParserImpl;->SYMBOL_ELEMENT_PARSER:Lcom/github/megatronking/svg/generator/svg/parser/element/SymbolElementParser;

    invoke-virtual {v1, p1, v0}, Lcom/github/megatronking/svg/generator/svg/parser/element/SymbolElementParser;->parse(Lorg/dom4j/Element;Ljava/lang/Object;)V

    :cond_14d
    return-void
.end method

.method protected bridge parseChild(Lorg/dom4j/Element;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/dom4j/DocumentException;
        }
    .end annotation

    check-cast p2, Lcom/github/megatronking/svg/generator/svg/model/SvgGroupNode;

    invoke-virtual {p0, p1, p2}, Lcom/github/megatronking/svg/generator/svg/parser/SvgGroupNodeAbstractElementParser;->parseChild(Lorg/dom4j/Element;Lcom/github/megatronking/svg/generator/svg/model/SvgGroupNode;)V

    return-void
.end method
