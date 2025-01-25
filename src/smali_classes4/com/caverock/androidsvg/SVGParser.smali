.class Lcom/caverock/androidsvg/SVGParser;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/caverock/androidsvg/SVGParser$AspectRatioKeywords;,
        Lcom/caverock/androidsvg/SVGParser$ColourKeywords;,
        Lcom/caverock/androidsvg/SVGParser$FontSizeKeywords;,
        Lcom/caverock/androidsvg/SVGParser$FontWeightKeywords;,
        Lcom/caverock/androidsvg/SVGParser$SAXHandler;,
        Lcom/caverock/androidsvg/SVGParser$SVGAttr;,
        Lcom/caverock/androidsvg/SVGParser$SVGElem;,
        Lcom/caverock/androidsvg/SVGParser$XPPAttributesWrapper;
    }
.end annotation


# static fields
.field private static final CURRENTCOLOR:Ljava/lang/String; = "currentColor"

.field public static final ENTITY_WATCH_BUFFER_SIZE:I = 0x1000

.field private static final FEATURE_STRING_PREFIX:Ljava/lang/String; = "http://www.w3.org/TR/SVG11/feature#"

.field private static final NONE:Ljava/lang/String; = "none"

.field private static final SVG_NAMESPACE:Ljava/lang/String; = "http://www.w3.org/2000/svg"

.field private static final TAG:Ljava/lang/String; = "SVGParser"

.field private static final VALID_DISPLAY_VALUES:Ljava/lang/String; = "|inline|block|list-item|run-in|compact|marker|table|inline-table|table-row-group|table-header-group|table-footer-group|table-row|table-column-group|table-column|table-cell|table-caption|none|"

.field private static final VALID_VISIBILITY_VALUES:Ljava/lang/String; = "|visible|hidden|collapse|"

.field private static final XLINK_NAMESPACE:Ljava/lang/String; = "http://www.w3.org/1999/xlink"

.field public static final XML_STYLESHEET_ATTR_ALTERNATE:Ljava/lang/String; = "alternate"

.field public static final XML_STYLESHEET_ATTR_ALTERNATE_NO:Ljava/lang/String; = "no"

.field public static final XML_STYLESHEET_ATTR_HREF:Ljava/lang/String; = "href"

.field public static final XML_STYLESHEET_ATTR_MEDIA:Ljava/lang/String; = "media"

.field public static final XML_STYLESHEET_ATTR_MEDIA_ALL:Ljava/lang/String; = "all"

.field public static final XML_STYLESHEET_ATTR_TYPE:Ljava/lang/String; = "type"

.field private static final XML_STYLESHEET_PROCESSING_INSTRUCTION:Ljava/lang/String; = "xml-stylesheet"


# instance fields
.field private currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

.field private ignoreDepth:I

.field private ignoring:Z

.field private inMetadataElement:Z

.field private inStyleElement:Z

.field private metadataElementContents:Ljava/lang/StringBuilder;

.field private metadataTag:Lcom/caverock/androidsvg/SVGParser$SVGElem;

.field private styleElementContents:Ljava/lang/StringBuilder;

.field private svgDocument:Lcom/caverock/androidsvg/SVG;


# direct methods
.method public constructor <init>()V
    .registers 4

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v0, v1

    check-cast v0, Lcom/caverock/androidsvg/SVG;

    iput-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->svgDocument:Lcom/caverock/androidsvg/SVG;

    move-object v0, v1

    check-cast v0, Lcom/caverock/androidsvg/SVG$SvgContainer;

    iput-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    iput-boolean v2, p0, Lcom/caverock/androidsvg/SVGParser;->ignoring:Z

    iput-boolean v2, p0, Lcom/caverock/androidsvg/SVGParser;->inMetadataElement:Z

    move-object v0, v1

    check-cast v0, Lcom/caverock/androidsvg/SVGParser$SVGElem;

    iput-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->metadataTag:Lcom/caverock/androidsvg/SVGParser$SVGElem;

    move-object v0, v1

    check-cast v0, Ljava/lang/StringBuilder;

    iput-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->metadataElementContents:Ljava/lang/StringBuilder;

    iput-boolean v2, p0, Lcom/caverock/androidsvg/SVGParser;->inStyleElement:Z

    check-cast v1, Ljava/lang/StringBuilder;

    iput-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->styleElementContents:Ljava/lang/StringBuilder;

    return-void
.end method

.method static synthetic access$1000027(Lcom/caverock/androidsvg/SVGParser;)V
    .registers 1

    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGParser;->startDocument()V

    return-void
.end method

.method static synthetic access$1000028(Lcom/caverock/androidsvg/SVGParser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/caverock/androidsvg/SVGParseException;
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/caverock/androidsvg/SVGParser;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    return-void
.end method

.method static synthetic access$1000029(Lcom/caverock/androidsvg/SVGParser;Ljava/lang/String;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/caverock/androidsvg/SVGParseException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGParser;->text(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000032(Lcom/caverock/androidsvg/SVGParser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/caverock/androidsvg/SVGParseException;
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lcom/caverock/androidsvg/SVGParser;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000033(Lcom/caverock/androidsvg/SVGParser;)V
    .registers 1

    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGParser;->endDocument()V

    return-void
.end method

.method static synthetic access$1000034(Lcom/caverock/androidsvg/SVGParser;Ljava/lang/String;Ljava/util/Map;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/caverock/androidsvg/SVGParser;->handleProcessingInstruction(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method static synthetic access$1000035(Lcom/caverock/androidsvg/SVGParser;Lcom/caverock/androidsvg/SVGParser$TextScanner;)Ljava/util/Map;
    .registers 3

    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseProcessingInstructionAttributes(Lcom/caverock/androidsvg/SVGParser$TextScanner;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$L1000016()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->NONE:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$S1000016(Ljava/lang/String;)V
    .registers 1

    sput-object p0, Lcom/caverock/androidsvg/SVGParser;->NONE:Ljava/lang/String;

    return-void
.end method

.method private appendToTextContainer(Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V^",
            "Lcom/caverock/androidsvg/SVGParseException;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/caverock/androidsvg/SVGParseException;
        }
    .end annotation

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    check-cast v0, Lcom/caverock/androidsvg/SVG$SvgConditionalContainer;

    iget-object v1, v0, Lcom/caverock/androidsvg/SVG$SvgConditionalContainer;->children:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_2b

    const/4 v0, 0x0

    check-cast v0, Lcom/caverock/androidsvg/SVG$SvgObject;

    :goto_f
    instance-of v1, v0, Lcom/caverock/androidsvg/SVG$TextSequence;

    if-eqz v1, :cond_36

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    check-cast v0, Lcom/caverock/androidsvg/SVG$TextSequence;

    iget-object v2, v0, Lcom/caverock/androidsvg/SVG$TextSequence;->text:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$TextSequence;->text:Ljava/lang/String;

    :goto_2a
    return-void

    :cond_2b
    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$SvgConditionalContainer;->children:Ljava/util/List;

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/caverock/androidsvg/SVG$SvgObject;

    goto :goto_f

    :cond_36
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    new-instance v1, Lcom/caverock/androidsvg/SVG$TextSequence;

    invoke-direct {v1, p1}, Lcom/caverock/androidsvg/SVG$TextSequence;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/caverock/androidsvg/SVG$SvgContainer;->addChild(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    goto :goto_2a
.end method

.method private circle(Lorg/xml/sax/Attributes;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xml/sax/Attributes;",
            ")V^",
            "Lcom/caverock/androidsvg/SVGParseException;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/caverock/androidsvg/SVGParseException;
        }
    .end annotation

    const-string v0, "<circle>"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/caverock/androidsvg/SVGParser;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-nez v0, :cond_14

    new-instance v0, Lcom/caverock/androidsvg/SVGParseException;

    const-string v1, "Invalid document. Root element must be <svg>"

    invoke-direct {v0, v1}, Lcom/caverock/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_14
    new-instance v0, Lcom/caverock/androidsvg/SVG$Circle;

    invoke-direct {v0}, Lcom/caverock/androidsvg/SVG$Circle;-><init>()V

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->svgDocument:Lcom/caverock/androidsvg/SVG;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$SvgObject;->document:Lcom/caverock/androidsvg/SVG;

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$SvgObject;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesCore(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesStyle(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesTransform(Lcom/caverock/androidsvg/SVG$HasTransform;Lorg/xml/sax/Attributes;)V

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesConditional(Lcom/caverock/androidsvg/SVG$SvgConditional;Lorg/xml/sax/Attributes;)V

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesCircle(Lcom/caverock/androidsvg/SVG$Circle;Lorg/xml/sax/Attributes;)V

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-interface {v1, v0}, Lcom/caverock/androidsvg/SVG$SvgContainer;->addChild(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    return-void
.end method

.method private static clamp255(F)I
    .registers 4

    const/16 v1, 0xff

    const/4 v0, 0x0

    int-to-float v2, v0

    cmpg-float v2, p0, v2

    if-gez v2, :cond_9

    :goto_8
    return v0

    :cond_9
    int-to-float v0, v1

    cmpl-float v0, p0, v0

    if-gtz v0, :cond_13

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result v0

    goto :goto_8

    :cond_13
    move v0, v1

    goto :goto_8
.end method

.method private clipPath(Lorg/xml/sax/Attributes;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xml/sax/Attributes;",
            ")V^",
            "Lcom/caverock/androidsvg/SVGParseException;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/caverock/androidsvg/SVGParseException;
        }
    .end annotation

    const-string v0, "<clipPath>"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/caverock/androidsvg/SVGParser;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-nez v0, :cond_14

    new-instance v0, Lcom/caverock/androidsvg/SVGParseException;

    const-string v1, "Invalid document. Root element must be <svg>"

    invoke-direct {v0, v1}, Lcom/caverock/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_14
    new-instance v0, Lcom/caverock/androidsvg/SVG$ClipPath;

    invoke-direct {v0}, Lcom/caverock/androidsvg/SVG$ClipPath;-><init>()V

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->svgDocument:Lcom/caverock/androidsvg/SVG;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$SvgObject;->document:Lcom/caverock/androidsvg/SVG;

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$SvgObject;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesCore(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesStyle(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesTransform(Lcom/caverock/androidsvg/SVG$HasTransform;Lorg/xml/sax/Attributes;)V

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesConditional(Lcom/caverock/androidsvg/SVG$SvgConditional;Lorg/xml/sax/Attributes;)V

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesClipPath(Lcom/caverock/androidsvg/SVG$ClipPath;Lorg/xml/sax/Attributes;)V

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-interface {v1, v0}, Lcom/caverock/androidsvg/SVG$SvgContainer;->addChild(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    iput-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    return-void
.end method

.method private varargs debug(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    return-void
.end method

.method private defs(Lorg/xml/sax/Attributes;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xml/sax/Attributes;",
            ")V^",
            "Lcom/caverock/androidsvg/SVGParseException;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/caverock/androidsvg/SVGParseException;
        }
    .end annotation

    const-string v0, "<defs>"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/caverock/androidsvg/SVGParser;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-nez v0, :cond_14

    new-instance v0, Lcom/caverock/androidsvg/SVGParseException;

    const-string v1, "Invalid document. Root element must be <svg>"

    invoke-direct {v0, v1}, Lcom/caverock/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_14
    new-instance v0, Lcom/caverock/androidsvg/SVG$Defs;

    invoke-direct {v0}, Lcom/caverock/androidsvg/SVG$Defs;-><init>()V

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->svgDocument:Lcom/caverock/androidsvg/SVG;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$SvgObject;->document:Lcom/caverock/androidsvg/SVG;

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$SvgObject;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesCore(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesStyle(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesTransform(Lcom/caverock/androidsvg/SVG$HasTransform;Lorg/xml/sax/Attributes;)V

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-interface {v1, v0}, Lcom/caverock/androidsvg/SVG$SvgContainer;->addChild(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    iput-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    return-void
.end method

.method private dumpNode(Lcom/caverock/androidsvg/SVG$SvgObject;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/caverock/androidsvg/SVG$SvgObject;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "SVGParser"

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    instance-of v0, p1, Lcom/caverock/androidsvg/SVG$SvgConditionalContainer;

    if-eqz v0, :cond_3d

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    check-cast p1, Lcom/caverock/androidsvg/SVG$SvgConditionalContainer;

    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$SvgConditionalContainer;->children:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_37
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3e

    :cond_3d
    return-void

    :cond_3e
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/caverock/androidsvg/SVG$SvgObject;

    invoke-direct {p0, v0, v1}, Lcom/caverock/androidsvg/SVGParser;->dumpNode(Lcom/caverock/androidsvg/SVG$SvgObject;Ljava/lang/String;)V

    goto :goto_37
.end method

.method private ellipse(Lorg/xml/sax/Attributes;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xml/sax/Attributes;",
            ")V^",
            "Lcom/caverock/androidsvg/SVGParseException;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/caverock/androidsvg/SVGParseException;
        }
    .end annotation

    const-string v0, "<ellipse>"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/caverock/androidsvg/SVGParser;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-nez v0, :cond_14

    new-instance v0, Lcom/caverock/androidsvg/SVGParseException;

    const-string v1, "Invalid document. Root element must be <svg>"

    invoke-direct {v0, v1}, Lcom/caverock/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_14
    new-instance v0, Lcom/caverock/androidsvg/SVG$Ellipse;

    invoke-direct {v0}, Lcom/caverock/androidsvg/SVG$Ellipse;-><init>()V

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->svgDocument:Lcom/caverock/androidsvg/SVG;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$SvgObject;->document:Lcom/caverock/androidsvg/SVG;

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$SvgObject;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesCore(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesStyle(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesTransform(Lcom/caverock/androidsvg/SVG$HasTransform;Lorg/xml/sax/Attributes;)V

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesConditional(Lcom/caverock/androidsvg/SVG$SvgConditional;Lorg/xml/sax/Attributes;)V

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesEllipse(Lcom/caverock/androidsvg/SVG$Ellipse;Lorg/xml/sax/Attributes;)V

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-interface {v1, v0}, Lcom/caverock/androidsvg/SVG$SvgContainer;->addChild(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    return-void
.end method

.method private endDocument()V
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    return-void
.end method

.method private endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V^",
            "Lcom/caverock/androidsvg/SVGParseException;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/caverock/androidsvg/SVGParseException;
        }
    .end annotation

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/caverock/androidsvg/SVGParser;->ignoring:Z

    if-eqz v0, :cond_10

    iget v0, p0, Lcom/caverock/androidsvg/SVGParser;->ignoreDepth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/caverock/androidsvg/SVGParser;->ignoreDepth:I

    if-nez v0, :cond_10

    iput-boolean v2, p0, Lcom/caverock/androidsvg/SVGParser;->ignoring:Z

    :cond_f
    :goto_f
    return-void

    :cond_10
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->SVG_NAMESPACE:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    :cond_20
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_d0

    :goto_26
    invoke-static {p2}, Lcom/caverock/androidsvg/SVGParser$SVGElem;->fromString(Ljava/lang/String;)Lcom/caverock/androidsvg/SVGParser$SVGElem;

    move-result-object v0

    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGElem;->title:Lcom/caverock/androidsvg/SVGParser$SVGElem;

    if-ne v0, v1, :cond_4b

    :cond_2e
    iput-boolean v2, p0, Lcom/caverock/androidsvg/SVGParser;->inMetadataElement:Z

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->metadataElementContents:Ljava/lang/StringBuilder;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->metadataTag:Lcom/caverock/androidsvg/SVGParser$SVGElem;

    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGElem;->title:Lcom/caverock/androidsvg/SVGParser$SVGElem;

    if-ne v0, v1, :cond_68

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->svgDocument:Lcom/caverock/androidsvg/SVG;

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->metadataElementContents:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/caverock/androidsvg/SVG;->setTitle(Ljava/lang/String;)V

    :cond_45
    :goto_45
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->metadataElementContents:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_f

    :cond_4b
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGElem;->desc:Lcom/caverock/androidsvg/SVGParser$SVGElem;

    if-eq v0, v1, :cond_2e

    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGElem;->style:Lcom/caverock/androidsvg/SVGParser$SVGElem;

    if-ne v0, v1, :cond_7a

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->styleElementContents:Ljava/lang/StringBuilder;

    if-eqz v0, :cond_f

    iput-boolean v2, p0, Lcom/caverock/androidsvg/SVGParser;->inStyleElement:Z

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->styleElementContents:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/caverock/androidsvg/SVGParser;->parseCSSStyleSheet(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->styleElementContents:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_f

    :cond_68
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->metadataTag:Lcom/caverock/androidsvg/SVGParser$SVGElem;

    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGElem;->desc:Lcom/caverock/androidsvg/SVGParser$SVGElem;

    if-ne v0, v1, :cond_45

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->svgDocument:Lcom/caverock/androidsvg/SVG;

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->metadataElementContents:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/caverock/androidsvg/SVG;->setDesc(Ljava/lang/String;)V

    goto :goto_45

    :cond_7a
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGElem;->svg:Lcom/caverock/androidsvg/SVGParser$SVGElem;

    if-ne v0, v1, :cond_87

    :cond_7e
    :goto_7e
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    check-cast v0, Lcom/caverock/androidsvg/SVG$SvgObject;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$SvgObject;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    iput-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    goto :goto_f

    :cond_87
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGElem;->defs:Lcom/caverock/androidsvg/SVGParser$SVGElem;

    if-eq v0, v1, :cond_7e

    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGElem;->g:Lcom/caverock/androidsvg/SVGParser$SVGElem;

    if-eq v0, v1, :cond_7e

    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGElem;->use:Lcom/caverock/androidsvg/SVGParser$SVGElem;

    if-eq v0, v1, :cond_7e

    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGElem;->image:Lcom/caverock/androidsvg/SVGParser$SVGElem;

    if-eq v0, v1, :cond_7e

    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGElem;->text:Lcom/caverock/androidsvg/SVGParser$SVGElem;

    if-eq v0, v1, :cond_7e

    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGElem;->tspan:Lcom/caverock/androidsvg/SVGParser$SVGElem;

    if-eq v0, v1, :cond_7e

    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGElem;->SWITCH:Lcom/caverock/androidsvg/SVGParser$SVGElem;

    if-eq v0, v1, :cond_7e

    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGElem;->symbol:Lcom/caverock/androidsvg/SVGParser$SVGElem;

    if-eq v0, v1, :cond_7e

    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGElem;->marker:Lcom/caverock/androidsvg/SVGParser$SVGElem;

    if-eq v0, v1, :cond_7e

    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGElem;->linearGradient:Lcom/caverock/androidsvg/SVGParser$SVGElem;

    if-eq v0, v1, :cond_7e

    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGElem;->radialGradient:Lcom/caverock/androidsvg/SVGParser$SVGElem;

    if-eq v0, v1, :cond_7e

    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGElem;->stop:Lcom/caverock/androidsvg/SVGParser$SVGElem;

    if-eq v0, v1, :cond_7e

    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGElem;->clipPath:Lcom/caverock/androidsvg/SVGParser$SVGElem;

    if-eq v0, v1, :cond_7e

    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGElem;->textPath:Lcom/caverock/androidsvg/SVGParser$SVGElem;

    if-eq v0, v1, :cond_7e

    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGElem;->pattern:Lcom/caverock/androidsvg/SVGParser$SVGElem;

    if-eq v0, v1, :cond_7e

    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGElem;->view:Lcom/caverock/androidsvg/SVGParser$SVGElem;

    if-eq v0, v1, :cond_7e

    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGElem;->mask:Lcom/caverock/androidsvg/SVGParser$SVGElem;

    if-eq v0, v1, :cond_7e

    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGElem;->solidColor:Lcom/caverock/androidsvg/SVGParser$SVGElem;

    if-ne v0, v1, :cond_f

    goto :goto_7e

    :cond_d0
    move-object p2, p3

    goto/16 :goto_26
.end method

.method private g(Lorg/xml/sax/Attributes;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xml/sax/Attributes;",
            ")V^",
            "Lcom/caverock/androidsvg/SVGParseException;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/caverock/androidsvg/SVGParseException;
        }
    .end annotation

    const-string v0, "<g>"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/caverock/androidsvg/SVGParser;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-nez v0, :cond_14

    new-instance v0, Lcom/caverock/androidsvg/SVGParseException;

    const-string v1, "Invalid document. Root element must be <svg>"

    invoke-direct {v0, v1}, Lcom/caverock/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_14
    new-instance v0, Lcom/caverock/androidsvg/SVG$Group;

    invoke-direct {v0}, Lcom/caverock/androidsvg/SVG$Group;-><init>()V

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->svgDocument:Lcom/caverock/androidsvg/SVG;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$SvgObject;->document:Lcom/caverock/androidsvg/SVG;

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$SvgObject;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesCore(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesStyle(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesTransform(Lcom/caverock/androidsvg/SVG$HasTransform;Lorg/xml/sax/Attributes;)V

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesConditional(Lcom/caverock/androidsvg/SVG$SvgConditional;Lorg/xml/sax/Attributes;)V

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-interface {v1, v0}, Lcom/caverock/androidsvg/SVG$SvgContainer;->addChild(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    iput-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    return-void
.end method

.method private handleProcessingInstruction(Ljava/lang/String;Ljava/util/Map;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "xml-stylesheet"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-static {}, Lcom/caverock/androidsvg/SVG;->getFileResolver()Lcom/caverock/androidsvg/SVGExternalFileResolver;

    move-result-object v0

    if-eqz v0, :cond_28

    const-string v0, "type"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_29

    sget-object v1, Lcom/caverock/androidsvg/CSSParser;->CSS_MIME_TYPE:Ljava/lang/String;

    const-string v0, "type"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_29

    :cond_28
    :goto_28
    return-void

    :cond_29
    const-string v0, "alternate"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_43

    sget-object v1, Lcom/caverock/androidsvg/SVGParser;->XML_STYLESHEET_ATTR_ALTERNATE_NO:Ljava/lang/String;

    const-string v0, "alternate"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    :cond_43
    const-string v0, "href"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_28

    invoke-static {}, Lcom/caverock/androidsvg/SVG;->getFileResolver()Lcom/caverock/androidsvg/SVGExternalFileResolver;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/caverock/androidsvg/SVGExternalFileResolver;->resolveCSSStyleSheet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_28

    const-string v0, "media"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_bc

    sget-object v2, Lcom/caverock/androidsvg/SVGParser;->XML_STYLESHEET_ATTR_MEDIA_ALL:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_bc

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "@media "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v4, " { "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_b7
    invoke-direct {p0, v0}, Lcom/caverock/androidsvg/SVGParser;->parseCSSStyleSheet(Ljava/lang/String;)V

    goto/16 :goto_28

    :cond_bc
    move-object v0, v1

    goto :goto_b7
.end method

.method private static hslToRgb(FFF)I
    .registers 11

    const/high16 v3, 0x43b40000  # 360.0f

    const/high16 v7, 0x43800000  # 256.0f

    const/high16 v6, 0x40000000  # 2.0f

    const/high16 v2, 0x3f800000  # 1.0f

    const/4 v0, 0x0

    cmpl-float v1, p0, v0

    if-ltz v1, :cond_59

    rem-float v1, p0, v3

    :goto_f
    const/high16 v3, 0x42700000  # 60.0f

    div-float v4, v1, v3

    const/16 v1, 0x64

    int-to-float v1, v1

    div-float v3, p1, v1

    const/16 v1, 0x64

    int-to-float v1, v1

    div-float v1, p2, v1

    cmpg-float v5, v3, v0

    if-gez v5, :cond_5d

    move v3, v0

    :cond_22
    :goto_22
    cmpg-float v5, v1, v0

    if-gez v5, :cond_63

    move v1, v0

    :cond_27
    :goto_27
    const/high16 v0, 0x3f000000  # 0.5f

    cmpg-float v0, v1, v0

    if-gtz v0, :cond_69

    add-float v0, v3, v2

    mul-float/2addr v0, v1

    :goto_30
    mul-float/2addr v1, v6

    sub-float/2addr v1, v0

    add-float v2, v4, v6

    invoke-static {v1, v0, v2}, Lcom/caverock/androidsvg/SVGParser;->hueToRgb(FFF)F

    move-result v2

    invoke-static {v1, v0, v4}, Lcom/caverock/androidsvg/SVGParser;->hueToRgb(FFF)F

    move-result v3

    sub-float/2addr v4, v6

    invoke-static {v1, v0, v4}, Lcom/caverock/androidsvg/SVGParser;->hueToRgb(FFF)F

    move-result v0

    mul-float v1, v2, v7

    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->clamp255(F)I

    move-result v1

    mul-float v2, v3, v7

    invoke-static {v2}, Lcom/caverock/androidsvg/SVGParser;->clamp255(F)I

    move-result v2

    mul-float/2addr v0, v7

    invoke-static {v0}, Lcom/caverock/androidsvg/SVGParser;->clamp255(F)I

    move-result v0

    shl-int/lit8 v1, v1, 0x10

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    or-int/2addr v0, v1

    return v0

    :cond_59
    rem-float v1, p0, v3

    add-float/2addr v1, v3

    goto :goto_f

    :cond_5d
    cmpl-float v5, v3, v2

    if-lez v5, :cond_22

    move v3, v2

    goto :goto_22

    :cond_63
    cmpl-float v0, v1, v2

    if-lez v0, :cond_27

    move v1, v2

    goto :goto_27

    :cond_69
    add-float v0, v1, v3

    mul-float v2, v1, v3

    sub-float/2addr v0, v2

    goto :goto_30
.end method

.method private static hueToRgb(FFF)F
    .registers 7

    const/high16 v3, 0x40800000  # 4.0f

    const/high16 v2, 0x40c00000  # 6.0f

    const/4 v0, 0x0

    cmpg-float v0, p2, v0

    if-gez v0, :cond_2c

    add-float v0, p2, v2

    :goto_b
    cmpl-float v1, v0, v2

    if-ltz v1, :cond_10

    sub-float/2addr v0, v2

    :cond_10
    const/4 v1, 0x1

    int-to-float v1, v1

    cmpg-float v1, v0, v1

    if-gez v1, :cond_1b

    sub-float v1, p1, p0

    mul-float/2addr v0, v1

    add-float/2addr p0, v0

    :cond_1a
    :goto_1a
    return p0

    :cond_1b
    const/high16 v1, 0x40400000  # 3.0f

    cmpg-float v1, v0, v1

    if-ltz v1, :cond_2e

    cmpg-float v1, v0, v3

    if-gez v1, :cond_1a

    sub-float v0, v3, v0

    sub-float v1, p1, p0

    mul-float/2addr v0, v1

    add-float/2addr p0, v0

    goto :goto_1a

    :cond_2c
    move v0, p2

    goto :goto_b

    :cond_2e
    move p0, p1

    goto :goto_1a
.end method

.method private image(Lorg/xml/sax/Attributes;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xml/sax/Attributes;",
            ")V^",
            "Lcom/caverock/androidsvg/SVGParseException;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/caverock/androidsvg/SVGParseException;
        }
    .end annotation

    const-string v0, "<image>"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/caverock/androidsvg/SVGParser;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-nez v0, :cond_14

    new-instance v0, Lcom/caverock/androidsvg/SVGParseException;

    const-string v1, "Invalid document. Root element must be <svg>"

    invoke-direct {v0, v1}, Lcom/caverock/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_14
    new-instance v0, Lcom/caverock/androidsvg/SVG$Image;

    invoke-direct {v0}, Lcom/caverock/androidsvg/SVG$Image;-><init>()V

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->svgDocument:Lcom/caverock/androidsvg/SVG;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$SvgObject;->document:Lcom/caverock/androidsvg/SVG;

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$SvgObject;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesCore(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesStyle(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesTransform(Lcom/caverock/androidsvg/SVG$HasTransform;Lorg/xml/sax/Attributes;)V

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesConditional(Lcom/caverock/androidsvg/SVG$SvgConditional;Lorg/xml/sax/Attributes;)V

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesImage(Lcom/caverock/androidsvg/SVG$Image;Lorg/xml/sax/Attributes;)V

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-interface {v1, v0}, Lcom/caverock/androidsvg/SVG$SvgContainer;->addChild(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    iput-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    return-void
.end method

.method private line(Lorg/xml/sax/Attributes;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xml/sax/Attributes;",
            ")V^",
            "Lcom/caverock/androidsvg/SVGParseException;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/caverock/androidsvg/SVGParseException;
        }
    .end annotation

    const-string v0, "<line>"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/caverock/androidsvg/SVGParser;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-nez v0, :cond_14

    new-instance v0, Lcom/caverock/androidsvg/SVGParseException;

    const-string v1, "Invalid document. Root element must be <svg>"

    invoke-direct {v0, v1}, Lcom/caverock/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_14
    new-instance v0, Lcom/caverock/androidsvg/SVG$Line;

    invoke-direct {v0}, Lcom/caverock/androidsvg/SVG$Line;-><init>()V

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->svgDocument:Lcom/caverock/androidsvg/SVG;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$SvgObject;->document:Lcom/caverock/androidsvg/SVG;

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$SvgObject;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesCore(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesStyle(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesTransform(Lcom/caverock/androidsvg/SVG$HasTransform;Lorg/xml/sax/Attributes;)V

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesConditional(Lcom/caverock/androidsvg/SVG$SvgConditional;Lorg/xml/sax/Attributes;)V

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesLine(Lcom/caverock/androidsvg/SVG$Line;Lorg/xml/sax/Attributes;)V

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-interface {v1, v0}, Lcom/caverock/androidsvg/SVG$SvgContainer;->addChild(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    return-void
.end method

.method private linearGradient(Lorg/xml/sax/Attributes;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xml/sax/Attributes;",
            ")V^",
            "Lcom/caverock/androidsvg/SVGParseException;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/caverock/androidsvg/SVGParseException;
        }
    .end annotation

    const-string v0, "<linearGradient>"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/caverock/androidsvg/SVGParser;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-nez v0, :cond_14

    new-instance v0, Lcom/caverock/androidsvg/SVGParseException;

    const-string v1, "Invalid document. Root element must be <svg>"

    invoke-direct {v0, v1}, Lcom/caverock/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_14
    new-instance v0, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;

    invoke-direct {v0}, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;-><init>()V

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->svgDocument:Lcom/caverock/androidsvg/SVG;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$SvgObject;->document:Lcom/caverock/androidsvg/SVG;

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$SvgObject;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesCore(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesStyle(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesGradient(Lcom/caverock/androidsvg/SVG$GradientElement;Lorg/xml/sax/Attributes;)V

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesLinearGradient(Lcom/caverock/androidsvg/SVG$SvgLinearGradient;Lorg/xml/sax/Attributes;)V

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-interface {v1, v0}, Lcom/caverock/androidsvg/SVG$SvgContainer;->addChild(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    iput-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    return-void
.end method

.method private marker(Lorg/xml/sax/Attributes;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xml/sax/Attributes;",
            ")V^",
            "Lcom/caverock/androidsvg/SVGParseException;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/caverock/androidsvg/SVGParseException;
        }
    .end annotation

    const-string v0, "<marker>"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/caverock/androidsvg/SVGParser;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-nez v0, :cond_14

    new-instance v0, Lcom/caverock/androidsvg/SVGParseException;

    const-string v1, "Invalid document. Root element must be <svg>"

    invoke-direct {v0, v1}, Lcom/caverock/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_14
    new-instance v0, Lcom/caverock/androidsvg/SVG$Marker;

    invoke-direct {v0}, Lcom/caverock/androidsvg/SVG$Marker;-><init>()V

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->svgDocument:Lcom/caverock/androidsvg/SVG;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$SvgObject;->document:Lcom/caverock/androidsvg/SVG;

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$SvgObject;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesCore(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesStyle(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesConditional(Lcom/caverock/androidsvg/SVG$SvgConditional;Lorg/xml/sax/Attributes;)V

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesViewBox(Lcom/caverock/androidsvg/SVG$SvgViewBoxContainer;Lorg/xml/sax/Attributes;)V

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesMarker(Lcom/caverock/androidsvg/SVG$Marker;Lorg/xml/sax/Attributes;)V

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-interface {v1, v0}, Lcom/caverock/androidsvg/SVG$SvgContainer;->addChild(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    iput-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    return-void
.end method

.method private mask(Lorg/xml/sax/Attributes;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xml/sax/Attributes;",
            ")V^",
            "Lcom/caverock/androidsvg/SVGParseException;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/caverock/androidsvg/SVGParseException;
        }
    .end annotation

    const-string v0, "<mask>"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/caverock/androidsvg/SVGParser;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-nez v0, :cond_14

    new-instance v0, Lcom/caverock/androidsvg/SVGParseException;

    const-string v1, "Invalid document. Root element must be <svg>"

    invoke-direct {v0, v1}, Lcom/caverock/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_14
    new-instance v0, Lcom/caverock/androidsvg/SVG$Mask;

    invoke-direct {v0}, Lcom/caverock/androidsvg/SVG$Mask;-><init>()V

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->svgDocument:Lcom/caverock/androidsvg/SVG;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$SvgObject;->document:Lcom/caverock/androidsvg/SVG;

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$SvgObject;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesCore(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesStyle(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesConditional(Lcom/caverock/androidsvg/SVG$SvgConditional;Lorg/xml/sax/Attributes;)V

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesMask(Lcom/caverock/androidsvg/SVG$Mask;Lorg/xml/sax/Attributes;)V

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-interface {v1, v0}, Lcom/caverock/androidsvg/SVG$SvgContainer;->addChild(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    iput-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    return-void
.end method

.method private parseAttributesCircle(Lcom/caverock/androidsvg/SVG$Circle;Lorg/xml/sax/Attributes;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/caverock/androidsvg/SVG$Circle;",
            "Lorg/xml/sax/Attributes;",
            ")V^",
            "Lcom/caverock/androidsvg/SVGParseException;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/caverock/androidsvg/SVGParseException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_1
    invoke-interface {p2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v1

    if-lt v0, v1, :cond_8

    return-void

    :cond_8
    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->fromString(Ljava/lang/String;)Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    move-result-object v2

    sget-object v3, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->cx:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    if-ne v2, v3, :cond_25

    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v1

    iput-object v1, p1, Lcom/caverock/androidsvg/SVG$Circle;->cx:Lcom/caverock/androidsvg/SVG$Length;

    :cond_22
    :goto_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_25
    sget-object v3, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->cy:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    if-ne v2, v3, :cond_30

    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v1

    iput-object v1, p1, Lcom/caverock/androidsvg/SVG$Circle;->cy:Lcom/caverock/androidsvg/SVG$Length;

    goto :goto_22

    :cond_30
    sget-object v3, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->r:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    if-ne v2, v3, :cond_22

    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v1

    iput-object v1, p1, Lcom/caverock/androidsvg/SVG$Circle;->r:Lcom/caverock/androidsvg/SVG$Length;

    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$Circle;->r:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVG$Length;->isNegative()Z

    move-result v1

    if-eqz v1, :cond_22

    new-instance v0, Lcom/caverock/androidsvg/SVGParseException;

    const-string v1, "Invalid <circle> element. r cannot be negative"

    invoke-direct {v0, v1}, Lcom/caverock/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private parseAttributesClipPath(Lcom/caverock/androidsvg/SVG$ClipPath;Lorg/xml/sax/Attributes;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/caverock/androidsvg/SVG$ClipPath;",
            "Lorg/xml/sax/Attributes;",
            ")V^",
            "Lcom/caverock/androidsvg/SVGParseException;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/caverock/androidsvg/SVGParseException;
        }
    .end annotation

    const/4 v1, 0x0

    move v0, v1

    :goto_2
    invoke-interface {p2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v2

    if-lt v0, v2, :cond_9

    return-void

    :cond_9
    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->fromString(Ljava/lang/String;)Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    move-result-object v3

    sget-object v4, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->clipPathUnits:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    if-ne v3, v4, :cond_2c

    const-string v3, "objectBoundingBox"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2f

    new-instance v2, Ljava/lang/Boolean;

    invoke-direct {v2, v1}, Ljava/lang/Boolean;-><init>(Z)V

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$ClipPath;->clipPathUnitsAreUser:Ljava/lang/Boolean;

    :cond_2c
    :goto_2c
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2f
    const-string v3, "userSpaceOnUse"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_40

    new-instance v2, Ljava/lang/Boolean;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/lang/Boolean;-><init>(Z)V

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$ClipPath;->clipPathUnitsAreUser:Ljava/lang/Boolean;

    goto :goto_2c

    :cond_40
    new-instance v0, Lcom/caverock/androidsvg/SVGParseException;

    const-string v1, "Invalid value for attribute clipPathUnits"

    invoke-direct {v0, v1}, Lcom/caverock/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private parseAttributesConditional(Lcom/caverock/androidsvg/SVG$SvgConditional;Lorg/xml/sax/Attributes;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/caverock/androidsvg/SVG$SvgConditional;",
            "Lorg/xml/sax/Attributes;",
            ")V^",
            "Lcom/caverock/androidsvg/SVGParseException;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/caverock/androidsvg/SVGParseException;
        }
    .end annotation

    const/4 v1, 0x0

    move v0, v1

    :goto_2
    invoke-interface {p2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v2

    if-lt v0, v2, :cond_9

    return-void

    :cond_9
    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->fromString(Ljava/lang/String;)Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    move-result-object v3

    sget-object v4, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->requiredFeatures:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    if-ne v3, v4, :cond_27

    invoke-static {v2}, Lcom/caverock/androidsvg/SVGParser;->parseRequiredFeatures(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {p1, v2}, Lcom/caverock/androidsvg/SVG$SvgConditional;->setRequiredFeatures(Ljava/util/Set;)V

    :cond_24
    :goto_24
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_27
    sget-object v4, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->requiredExtensions:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    if-ne v3, v4, :cond_2f

    invoke-interface {p1, v2}, Lcom/caverock/androidsvg/SVG$SvgConditional;->setRequiredExtensions(Ljava/lang/String;)V

    goto :goto_24

    :cond_2f
    sget-object v4, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->systemLanguage:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    if-ne v3, v4, :cond_3b

    invoke-static {v2}, Lcom/caverock/androidsvg/SVGParser;->parseSystemLanguage(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {p1, v2}, Lcom/caverock/androidsvg/SVG$SvgConditional;->setSystemLanguage(Ljava/util/Set;)V

    goto :goto_24

    :cond_3b
    sget-object v4, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->requiredFormats:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    if-ne v3, v4, :cond_47

    invoke-static {v2}, Lcom/caverock/androidsvg/SVGParser;->parseRequiredFormats(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {p1, v2}, Lcom/caverock/androidsvg/SVG$SvgConditional;->setRequiredFormats(Ljava/util/Set;)V

    goto :goto_24

    :cond_47
    sget-object v4, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->requiredFonts:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    if-ne v3, v4, :cond_24

    invoke-static {v2}, Lcom/caverock/androidsvg/SVGParser;->parseFontFamily(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_5a

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    :goto_56
    invoke-interface {p1, v2}, Lcom/caverock/androidsvg/SVG$SvgConditional;->setRequiredFonts(Ljava/util/Set;)V

    goto :goto_24

    :cond_5a
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2, v1}, Ljava/util/HashSet;-><init>(I)V

    goto :goto_56
.end method

.method private parseAttributesCore(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/caverock/androidsvg/SVG$SvgElementBase;",
            "Lorg/xml/sax/Attributes;",
            ")V^",
            "Lcom/caverock/androidsvg/SVGParseException;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/caverock/androidsvg/SVGParseException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_1
    invoke-interface {p2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v1

    if-lt v0, v1, :cond_8

    :goto_7
    return-void

    :cond_8
    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "id"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1c

    const-string v2, "xml:id"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_27

    :cond_1c
    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/caverock/androidsvg/SVG$SvgElementBase;->id:Ljava/lang/String;

    goto :goto_7

    :cond_27
    const-string v2, "xml:space"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6a

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "default"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_44

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p1, Lcom/caverock/androidsvg/SVG$SvgElementBase;->spacePreserve:Ljava/lang/Boolean;

    goto :goto_7

    :cond_44
    const-string v1, "preserve"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_51

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p1, Lcom/caverock/androidsvg/SVG$SvgElementBase;->spacePreserve:Ljava/lang/Boolean;

    goto :goto_7

    :cond_51
    new-instance v1, Lcom/caverock/androidsvg/SVGParseException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Invalid value for \"xml:space\" attribute: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/caverock/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_6a
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private parseAttributesEllipse(Lcom/caverock/androidsvg/SVG$Ellipse;Lorg/xml/sax/Attributes;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/caverock/androidsvg/SVG$Ellipse;",
            "Lorg/xml/sax/Attributes;",
            ")V^",
            "Lcom/caverock/androidsvg/SVGParseException;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/caverock/androidsvg/SVGParseException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_1
    invoke-interface {p2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v1

    if-lt v0, v1, :cond_8

    return-void

    :cond_8
    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->fromString(Ljava/lang/String;)Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    move-result-object v2

    sget-object v3, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->cx:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    if-ne v2, v3, :cond_25

    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v1

    iput-object v1, p1, Lcom/caverock/androidsvg/SVG$Ellipse;->cx:Lcom/caverock/androidsvg/SVG$Length;

    :cond_22
    :goto_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_25
    sget-object v3, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->cy:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    if-ne v2, v3, :cond_30

    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v1

    iput-object v1, p1, Lcom/caverock/androidsvg/SVG$Ellipse;->cy:Lcom/caverock/androidsvg/SVG$Length;

    goto :goto_22

    :cond_30
    sget-object v3, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->rx:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    if-ne v2, v3, :cond_4a

    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v1

    iput-object v1, p1, Lcom/caverock/androidsvg/SVG$Ellipse;->rx:Lcom/caverock/androidsvg/SVG$Length;

    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$Ellipse;->rx:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVG$Length;->isNegative()Z

    move-result v1

    if-eqz v1, :cond_22

    new-instance v0, Lcom/caverock/androidsvg/SVGParseException;

    const-string v1, "Invalid <ellipse> element. rx cannot be negative"

    invoke-direct {v0, v1}, Lcom/caverock/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4a
    sget-object v3, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ry:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    if-ne v2, v3, :cond_22

    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v1

    iput-object v1, p1, Lcom/caverock/androidsvg/SVG$Ellipse;->ry:Lcom/caverock/androidsvg/SVG$Length;

    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$Ellipse;->ry:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVG$Length;->isNegative()Z

    move-result v1

    if-eqz v1, :cond_22

    new-instance v0, Lcom/caverock/androidsvg/SVGParseException;

    const-string v1, "Invalid <ellipse> element. ry cannot be negative"

    invoke-direct {v0, v1}, Lcom/caverock/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private parseAttributesGradient(Lcom/caverock/androidsvg/SVG$GradientElement;Lorg/xml/sax/Attributes;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/caverock/androidsvg/SVG$GradientElement;",
            "Lorg/xml/sax/Attributes;",
            ")V^",
            "Lcom/caverock/androidsvg/SVGParseException;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/caverock/androidsvg/SVGParseException;
        }
    .end annotation

    const/4 v1, 0x0

    move v0, v1

    :goto_2
    invoke-interface {p2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v2

    if-lt v0, v2, :cond_9

    return-void

    :cond_9
    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->fromString(Ljava/lang/String;)Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    move-result-object v3

    sget-object v4, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->gradientUnits:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    if-ne v3, v4, :cond_48

    const-string v3, "objectBoundingBox"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2f

    new-instance v2, Ljava/lang/Boolean;

    invoke-direct {v2, v1}, Ljava/lang/Boolean;-><init>(Z)V

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$GradientElement;->gradientUnitsAreUser:Ljava/lang/Boolean;

    :cond_2c
    :goto_2c
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2f
    const-string v3, "userSpaceOnUse"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_40

    new-instance v2, Ljava/lang/Boolean;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/lang/Boolean;-><init>(Z)V

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$GradientElement;->gradientUnitsAreUser:Ljava/lang/Boolean;

    goto :goto_2c

    :cond_40
    new-instance v0, Lcom/caverock/androidsvg/SVGParseException;

    const-string v1, "Invalid value for attribute gradientUnits"

    invoke-direct {v0, v1}, Lcom/caverock/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_48
    sget-object v4, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->gradientTransform:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    if-ne v3, v4, :cond_53

    invoke-direct {p0, v2}, Lcom/caverock/androidsvg/SVGParser;->parseTransformList(Ljava/lang/String;)Landroid/graphics/Matrix;

    move-result-object v2

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$GradientElement;->gradientTransform:Landroid/graphics/Matrix;

    goto :goto_2c

    :cond_53
    sget-object v4, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->spreadMethod:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    if-ne v3, v4, :cond_8b

    :try_start_57
    invoke-static {v2}, Lcom/caverock/androidsvg/SVG$GradientSpread;->valueOf(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$GradientSpread;

    move-result-object v3

    iput-object v3, p1, Lcom/caverock/androidsvg/SVG$GradientElement;->spreadMethod:Lcom/caverock/androidsvg/SVG$GradientSpread;
    :try_end_5d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_57 .. :try_end_5d} :catch_5e

    goto :goto_2c

    :catch_5e
    move-exception v0

    new-instance v0, Lcom/caverock/androidsvg/SVGParseException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Invalid spreadMethod attribute. \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\" is not a valid value."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/caverock/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8b
    sget-object v4, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->href:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    if-ne v3, v4, :cond_2c

    const-string v3, ""

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getURI(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a7

    sget-object v3, Lcom/caverock/androidsvg/SVGParser;->XLINK_NAMESPACE:Ljava/lang/String;

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getURI(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2c

    :cond_a7
    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$GradientElement;->href:Ljava/lang/String;

    goto :goto_2c
.end method

.method private parseAttributesImage(Lcom/caverock/androidsvg/SVG$Image;Lorg/xml/sax/Attributes;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/caverock/androidsvg/SVG$Image;",
            "Lorg/xml/sax/Attributes;",
            ")V^",
            "Lcom/caverock/androidsvg/SVGParseException;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/caverock/androidsvg/SVGParseException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_1
    invoke-interface {p2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v1

    if-lt v0, v1, :cond_8

    return-void

    :cond_8
    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->fromString(Ljava/lang/String;)Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    move-result-object v2

    sget-object v3, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->x:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    if-ne v2, v3, :cond_25

    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v1

    iput-object v1, p1, Lcom/caverock/androidsvg/SVG$Image;->x:Lcom/caverock/androidsvg/SVG$Length;

    :cond_22
    :goto_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_25
    sget-object v3, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->y:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    if-ne v2, v3, :cond_30

    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v1

    iput-object v1, p1, Lcom/caverock/androidsvg/SVG$Image;->y:Lcom/caverock/androidsvg/SVG$Length;

    goto :goto_22

    :cond_30
    sget-object v3, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->width:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    if-ne v2, v3, :cond_4a

    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v1

    iput-object v1, p1, Lcom/caverock/androidsvg/SVG$Image;->width:Lcom/caverock/androidsvg/SVG$Length;

    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$Image;->width:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVG$Length;->isNegative()Z

    move-result v1

    if-eqz v1, :cond_22

    new-instance v0, Lcom/caverock/androidsvg/SVGParseException;

    const-string v1, "Invalid <use> element. width cannot be negative"

    invoke-direct {v0, v1}, Lcom/caverock/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4a
    sget-object v3, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->height:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    if-ne v2, v3, :cond_64

    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v1

    iput-object v1, p1, Lcom/caverock/androidsvg/SVG$Image;->height:Lcom/caverock/androidsvg/SVG$Length;

    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$Image;->height:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVG$Length;->isNegative()Z

    move-result v1

    if-eqz v1, :cond_22

    new-instance v0, Lcom/caverock/androidsvg/SVGParseException;

    const-string v1, "Invalid <use> element. height cannot be negative"

    invoke-direct {v0, v1}, Lcom/caverock/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_64
    sget-object v3, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->href:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    if-ne v2, v3, :cond_83

    const-string v2, ""

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getURI(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_80

    sget-object v2, Lcom/caverock/androidsvg/SVGParser;->XLINK_NAMESPACE:Ljava/lang/String;

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getURI(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22

    :cond_80
    iput-object v1, p1, Lcom/caverock/androidsvg/SVG$Image;->href:Ljava/lang/String;

    goto :goto_22

    :cond_83
    sget-object v3, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->preserveAspectRatio:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    if-ne v2, v3, :cond_22

    invoke-static {p1, v1}, Lcom/caverock/androidsvg/SVGParser;->parsePreserveAspectRatio(Lcom/caverock/androidsvg/SVG$SvgPreserveAspectRatioContainer;Ljava/lang/String;)V

    goto :goto_22
.end method

.method private parseAttributesLine(Lcom/caverock/androidsvg/SVG$Line;Lorg/xml/sax/Attributes;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/caverock/androidsvg/SVG$Line;",
            "Lorg/xml/sax/Attributes;",
            ")V^",
            "Lcom/caverock/androidsvg/SVGParseException;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/caverock/androidsvg/SVGParseException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_1
    invoke-interface {p2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v1

    if-lt v0, v1, :cond_8

    return-void

    :cond_8
    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->fromString(Ljava/lang/String;)Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    move-result-object v2

    sget-object v3, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->x1:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    if-ne v2, v3, :cond_25

    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v1

    iput-object v1, p1, Lcom/caverock/androidsvg/SVG$Line;->x1:Lcom/caverock/androidsvg/SVG$Length;

    :cond_22
    :goto_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_25
    sget-object v3, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->y1:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    if-ne v2, v3, :cond_30

    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v1

    iput-object v1, p1, Lcom/caverock/androidsvg/SVG$Line;->y1:Lcom/caverock/androidsvg/SVG$Length;

    goto :goto_22

    :cond_30
    sget-object v3, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->x2:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    if-ne v2, v3, :cond_3b

    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v1

    iput-object v1, p1, Lcom/caverock/androidsvg/SVG$Line;->x2:Lcom/caverock/androidsvg/SVG$Length;

    goto :goto_22

    :cond_3b
    sget-object v3, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->y2:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    if-ne v2, v3, :cond_22

    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v1

    iput-object v1, p1, Lcom/caverock/androidsvg/SVG$Line;->y2:Lcom/caverock/androidsvg/SVG$Length;

    goto :goto_22
.end method

.method private parseAttributesLinearGradient(Lcom/caverock/androidsvg/SVG$SvgLinearGradient;Lorg/xml/sax/Attributes;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/caverock/androidsvg/SVG$SvgLinearGradient;",
            "Lorg/xml/sax/Attributes;",
            ")V^",
            "Lcom/caverock/androidsvg/SVGParseException;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/caverock/androidsvg/SVGParseException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_1
    invoke-interface {p2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v1

    if-lt v0, v1, :cond_8

    return-void

    :cond_8
    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->fromString(Ljava/lang/String;)Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    move-result-object v2

    sget-object v3, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->x1:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    if-ne v2, v3, :cond_25

    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v1

    iput-object v1, p1, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->x1:Lcom/caverock/androidsvg/SVG$Length;

    :cond_22
    :goto_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_25
    sget-object v3, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->y1:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    if-ne v2, v3, :cond_30

    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v1

    iput-object v1, p1, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->y1:Lcom/caverock/androidsvg/SVG$Length;

    goto :goto_22

    :cond_30
    sget-object v3, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->x2:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    if-ne v2, v3, :cond_3b

    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v1

    iput-object v1, p1, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->x2:Lcom/caverock/androidsvg/SVG$Length;

    goto :goto_22

    :cond_3b
    sget-object v3, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->y2:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    if-ne v2, v3, :cond_22

    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v1

    iput-object v1, p1, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->y2:Lcom/caverock/androidsvg/SVG$Length;

    goto :goto_22
.end method

.method private parseAttributesMarker(Lcom/caverock/androidsvg/SVG$Marker;Lorg/xml/sax/Attributes;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/caverock/androidsvg/SVG$Marker;",
            "Lorg/xml/sax/Attributes;",
            ")V^",
            "Lcom/caverock/androidsvg/SVGParseException;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/caverock/androidsvg/SVGParseException;
        }
    .end annotation

    const/4 v1, 0x0

    move v0, v1

    :goto_2
    invoke-interface {p2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v2

    if-lt v0, v2, :cond_9

    return-void

    :cond_9
    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->fromString(Ljava/lang/String;)Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    move-result-object v3

    sget-object v4, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->refX:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    if-ne v3, v4, :cond_26

    invoke-static {v2}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v2

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$Marker;->refX:Lcom/caverock/androidsvg/SVG$Length;

    :cond_23
    :goto_23
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_26
    sget-object v4, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->refY:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    if-ne v3, v4, :cond_31

    invoke-static {v2}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v2

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$Marker;->refY:Lcom/caverock/androidsvg/SVG$Length;

    goto :goto_23

    :cond_31
    sget-object v4, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->markerWidth:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    if-ne v3, v4, :cond_4b

    invoke-static {v2}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v2

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$Marker;->markerWidth:Lcom/caverock/androidsvg/SVG$Length;

    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$Marker;->markerWidth:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVG$Length;->isNegative()Z

    move-result v2

    if-eqz v2, :cond_23

    new-instance v0, Lcom/caverock/androidsvg/SVGParseException;

    const-string v1, "Invalid <marker> element. markerWidth cannot be negative"

    invoke-direct {v0, v1}, Lcom/caverock/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4b
    sget-object v4, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->markerHeight:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    if-ne v3, v4, :cond_65

    invoke-static {v2}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v2

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$Marker;->markerHeight:Lcom/caverock/androidsvg/SVG$Length;

    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$Marker;->markerHeight:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVG$Length;->isNegative()Z

    move-result v2

    if-eqz v2, :cond_23

    new-instance v0, Lcom/caverock/androidsvg/SVGParseException;

    const-string v1, "Invalid <marker> element. markerHeight cannot be negative"

    invoke-direct {v0, v1}, Lcom/caverock/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_65
    sget-object v4, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->markerUnits:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    if-ne v3, v4, :cond_88

    const-string v3, "strokeWidth"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_74

    iput-boolean v1, p1, Lcom/caverock/androidsvg/SVG$Marker;->markerUnitsAreUser:Z

    goto :goto_23

    :cond_74
    const-string v3, "userSpaceOnUse"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_80

    const/4 v2, 0x1

    iput-boolean v2, p1, Lcom/caverock/androidsvg/SVG$Marker;->markerUnitsAreUser:Z

    goto :goto_23

    :cond_80
    new-instance v0, Lcom/caverock/androidsvg/SVGParseException;

    const-string v1, "Invalid value for attribute markerUnits"

    invoke-direct {v0, v1}, Lcom/caverock/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_88
    sget-object v4, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->orient:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    if-ne v3, v4, :cond_23

    const-string v3, "auto"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9e

    new-instance v2, Ljava/lang/Float;

    sget v3, Ljava/lang/Float;->NaN:F

    invoke-direct {v2, v3}, Ljava/lang/Float;-><init>(F)V

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$Marker;->orient:Ljava/lang/Float;

    goto :goto_23

    :cond_9e
    new-instance v3, Ljava/lang/Float;

    invoke-static {v2}, Lcom/caverock/androidsvg/SVGParser;->parseFloat(Ljava/lang/String;)F

    move-result v2

    invoke-direct {v3, v2}, Ljava/lang/Float;-><init>(F)V

    iput-object v3, p1, Lcom/caverock/androidsvg/SVG$Marker;->orient:Ljava/lang/Float;

    goto/16 :goto_23
.end method

.method private parseAttributesMask(Lcom/caverock/androidsvg/SVG$Mask;Lorg/xml/sax/Attributes;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/caverock/androidsvg/SVG$Mask;",
            "Lorg/xml/sax/Attributes;",
            ")V^",
            "Lcom/caverock/androidsvg/SVGParseException;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/caverock/androidsvg/SVGParseException;
        }
    .end annotation

    const/4 v5, 0x1

    const/4 v1, 0x0

    move v0, v1

    :goto_3
    invoke-interface {p2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v2

    if-lt v0, v2, :cond_a

    return-void

    :cond_a
    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->fromString(Ljava/lang/String;)Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    move-result-object v3

    sget-object v4, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->maskUnits:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    if-ne v3, v4, :cond_48

    const-string v3, "objectBoundingBox"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_30

    new-instance v2, Ljava/lang/Boolean;

    invoke-direct {v2, v1}, Ljava/lang/Boolean;-><init>(Z)V

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$Mask;->maskUnitsAreUser:Ljava/lang/Boolean;

    :cond_2d
    :goto_2d
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_30
    const-string v3, "userSpaceOnUse"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_40

    new-instance v2, Ljava/lang/Boolean;

    invoke-direct {v2, v5}, Ljava/lang/Boolean;-><init>(Z)V

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$Mask;->maskUnitsAreUser:Ljava/lang/Boolean;

    goto :goto_2d

    :cond_40
    new-instance v0, Lcom/caverock/androidsvg/SVGParseException;

    const-string v1, "Invalid value for attribute maskUnits"

    invoke-direct {v0, v1}, Lcom/caverock/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_48
    sget-object v4, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->maskContentUnits:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    if-ne v3, v4, :cond_74

    const-string v3, "objectBoundingBox"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5c

    new-instance v2, Ljava/lang/Boolean;

    invoke-direct {v2, v1}, Ljava/lang/Boolean;-><init>(Z)V

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$Mask;->maskContentUnitsAreUser:Ljava/lang/Boolean;

    goto :goto_2d

    :cond_5c
    const-string v3, "userSpaceOnUse"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6c

    new-instance v2, Ljava/lang/Boolean;

    invoke-direct {v2, v5}, Ljava/lang/Boolean;-><init>(Z)V

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$Mask;->maskContentUnitsAreUser:Ljava/lang/Boolean;

    goto :goto_2d

    :cond_6c
    new-instance v0, Lcom/caverock/androidsvg/SVGParseException;

    const-string v1, "Invalid value for attribute maskContentUnits"

    invoke-direct {v0, v1}, Lcom/caverock/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_74
    sget-object v4, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->x:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    if-ne v3, v4, :cond_7f

    invoke-static {v2}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v2

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$Mask;->x:Lcom/caverock/androidsvg/SVG$Length;

    goto :goto_2d

    :cond_7f
    sget-object v4, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->y:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    if-ne v3, v4, :cond_8a

    invoke-static {v2}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v2

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$Mask;->y:Lcom/caverock/androidsvg/SVG$Length;

    goto :goto_2d

    :cond_8a
    sget-object v4, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->width:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    if-ne v3, v4, :cond_a4

    invoke-static {v2}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v2

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$Mask;->width:Lcom/caverock/androidsvg/SVG$Length;

    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$Mask;->width:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVG$Length;->isNegative()Z

    move-result v2

    if-eqz v2, :cond_2d

    new-instance v0, Lcom/caverock/androidsvg/SVGParseException;

    const-string v1, "Invalid <mask> element. width cannot be negative"

    invoke-direct {v0, v1}, Lcom/caverock/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a4
    sget-object v4, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->height:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    if-ne v3, v4, :cond_2d

    invoke-static {v2}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v2

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$Mask;->height:Lcom/caverock/androidsvg/SVG$Length;

    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$Mask;->height:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVG$Length;->isNegative()Z

    move-result v2

    if-eqz v2, :cond_2d

    new-instance v0, Lcom/caverock/androidsvg/SVGParseException;

    const-string v1, "Invalid <mask> element. height cannot be negative"

    invoke-direct {v0, v1}, Lcom/caverock/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private parseAttributesPath(Lcom/caverock/androidsvg/SVG$Path;Lorg/xml/sax/Attributes;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/caverock/androidsvg/SVG$Path;",
            "Lorg/xml/sax/Attributes;",
            ")V^",
            "Lcom/caverock/androidsvg/SVGParseException;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/caverock/androidsvg/SVGParseException;
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    invoke-interface {p2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v0

    if-lt v1, v0, :cond_9

    return-void

    :cond_9
    invoke-interface {p2, v1}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v1}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->fromString(Ljava/lang/String;)Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    move-result-object v2

    sget-object v3, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->d:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    if-ne v2, v3, :cond_27

    invoke-static {v0}, Lcom/caverock/androidsvg/SVGParser;->parsePath(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$PathDefinition;

    move-result-object v0

    iput-object v0, p1, Lcom/caverock/androidsvg/SVG$Path;->d:Lcom/caverock/androidsvg/SVG$PathDefinition;

    :cond_23
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_27
    sget-object v3, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->pathLength:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    if-ne v2, v3, :cond_23

    new-instance v2, Ljava/lang/Float;

    invoke-static {v0}, Lcom/caverock/androidsvg/SVGParser;->parseFloat(Ljava/lang/String;)F

    move-result v0

    invoke-direct {v2, v0}, Ljava/lang/Float;-><init>(F)V

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$Path;->pathLength:Ljava/lang/Float;

    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$Path;->pathLength:Ljava/lang/Float;

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/4 v2, 0x0

    cmpg-float v0, v0, v2

    if-gez v0, :cond_23

    new-instance v0, Lcom/caverock/androidsvg/SVGParseException;

    const-string v1, "Invalid <path> element. pathLength cannot be negative"

    invoke-direct {v0, v1}, Lcom/caverock/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private parseAttributesPattern(Lcom/caverock/androidsvg/SVG$Pattern;Lorg/xml/sax/Attributes;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/caverock/androidsvg/SVG$Pattern;",
            "Lorg/xml/sax/Attributes;",
            ")V^",
            "Lcom/caverock/androidsvg/SVGParseException;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/caverock/androidsvg/SVGParseException;
        }
    .end annotation

    const/4 v5, 0x1

    const/4 v1, 0x0

    move v0, v1

    :goto_3
    invoke-interface {p2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v2

    if-lt v0, v2, :cond_a

    return-void

    :cond_a
    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->fromString(Ljava/lang/String;)Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    move-result-object v3

    sget-object v4, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->patternUnits:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    if-ne v3, v4, :cond_48

    const-string v3, "objectBoundingBox"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_30

    new-instance v2, Ljava/lang/Boolean;

    invoke-direct {v2, v1}, Ljava/lang/Boolean;-><init>(Z)V

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$Pattern;->patternUnitsAreUser:Ljava/lang/Boolean;

    :cond_2d
    :goto_2d
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_30
    const-string v3, "userSpaceOnUse"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_40

    new-instance v2, Ljava/lang/Boolean;

    invoke-direct {v2, v5}, Ljava/lang/Boolean;-><init>(Z)V

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$Pattern;->patternUnitsAreUser:Ljava/lang/Boolean;

    goto :goto_2d

    :cond_40
    new-instance v0, Lcom/caverock/androidsvg/SVGParseException;

    const-string v1, "Invalid value for attribute patternUnits"

    invoke-direct {v0, v1}, Lcom/caverock/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_48
    sget-object v4, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->patternContentUnits:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    if-ne v3, v4, :cond_74

    const-string v3, "objectBoundingBox"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5c

    new-instance v2, Ljava/lang/Boolean;

    invoke-direct {v2, v1}, Ljava/lang/Boolean;-><init>(Z)V

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$Pattern;->patternContentUnitsAreUser:Ljava/lang/Boolean;

    goto :goto_2d

    :cond_5c
    const-string v3, "userSpaceOnUse"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6c

    new-instance v2, Ljava/lang/Boolean;

    invoke-direct {v2, v5}, Ljava/lang/Boolean;-><init>(Z)V

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$Pattern;->patternContentUnitsAreUser:Ljava/lang/Boolean;

    goto :goto_2d

    :cond_6c
    new-instance v0, Lcom/caverock/androidsvg/SVGParseException;

    const-string v1, "Invalid value for attribute patternContentUnits"

    invoke-direct {v0, v1}, Lcom/caverock/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_74
    sget-object v4, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->patternTransform:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    if-ne v3, v4, :cond_7f

    invoke-direct {p0, v2}, Lcom/caverock/androidsvg/SVGParser;->parseTransformList(Ljava/lang/String;)Landroid/graphics/Matrix;

    move-result-object v2

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$Pattern;->patternTransform:Landroid/graphics/Matrix;

    goto :goto_2d

    :cond_7f
    sget-object v4, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->x:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    if-ne v3, v4, :cond_8a

    invoke-static {v2}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v2

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$Pattern;->x:Lcom/caverock/androidsvg/SVG$Length;

    goto :goto_2d

    :cond_8a
    sget-object v4, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->y:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    if-ne v3, v4, :cond_95

    invoke-static {v2}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v2

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$Pattern;->y:Lcom/caverock/androidsvg/SVG$Length;

    goto :goto_2d

    :cond_95
    sget-object v4, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->width:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    if-ne v3, v4, :cond_af

    invoke-static {v2}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v2

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$Pattern;->width:Lcom/caverock/androidsvg/SVG$Length;

    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$Pattern;->width:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVG$Length;->isNegative()Z

    move-result v2

    if-eqz v2, :cond_2d

    new-instance v0, Lcom/caverock/androidsvg/SVGParseException;

    const-string v1, "Invalid <pattern> element. width cannot be negative"

    invoke-direct {v0, v1}, Lcom/caverock/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_af
    sget-object v4, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->height:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    if-ne v3, v4, :cond_c9

    invoke-static {v2}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v2

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$Pattern;->height:Lcom/caverock/androidsvg/SVG$Length;

    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$Pattern;->height:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVG$Length;->isNegative()Z

    move-result v2

    if-eqz v2, :cond_2d

    new-instance v0, Lcom/caverock/androidsvg/SVGParseException;

    const-string v1, "Invalid <pattern> element. height cannot be negative"

    invoke-direct {v0, v1}, Lcom/caverock/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c9
    sget-object v4, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->href:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    if-ne v3, v4, :cond_2d

    const-string v3, ""

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getURI(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_e5

    sget-object v3, Lcom/caverock/androidsvg/SVGParser;->XLINK_NAMESPACE:Ljava/lang/String;

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getURI(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2d

    :cond_e5
    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$Pattern;->href:Ljava/lang/String;

    goto/16 :goto_2d
.end method

.method private parseAttributesPolyLine(Lcom/caverock/androidsvg/SVG$PolyLine;Lorg/xml/sax/Attributes;Ljava/lang/String;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/caverock/androidsvg/SVG$PolyLine;",
            "Lorg/xml/sax/Attributes;",
            "Ljava/lang/String;",
            ")V^",
            "Lcom/caverock/androidsvg/SVGParseException;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/caverock/androidsvg/SVGParseException;
        }
    .end annotation

    const/4 v2, 0x0

    move v1, v2

    :goto_2
    invoke-interface {p2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v0

    if-lt v1, v0, :cond_9

    return-void

    :cond_9
    invoke-interface {p2, v1}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->fromString(Ljava/lang/String;)Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    move-result-object v0

    sget-object v3, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->points:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    if-ne v0, v3, :cond_41

    new-instance v3, Lcom/caverock/androidsvg/SVGParser$TextScanner;

    invoke-interface {p2, v1}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v3}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    :goto_26
    invoke-virtual {v3}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->empty()Z

    move-result v4

    if-eqz v4, :cond_45

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [F

    iput-object v3, p1, Lcom/caverock/androidsvg/SVG$PolyLine;->points:[F

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v3, v2

    :goto_3b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_c9

    :cond_41
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_45
    invoke-virtual {v3}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextFloat()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-eqz v5, :cond_7b

    new-instance v0, Lcom/caverock/androidsvg/SVGParseException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Invalid <"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "> points attribute. Non-coordinate content found in list."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/caverock/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7b
    invoke-virtual {v3}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipCommaWhitespace()Z

    invoke-virtual {v3}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextFloat()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    move-result v6

    if-eqz v6, :cond_b4

    new-instance v0, Lcom/caverock/androidsvg/SVGParseException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Invalid <"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "> points attribute. There should be an even number of coordinates."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/caverock/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b4
    invoke-virtual {v3}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipCommaWhitespace()Z

    new-instance v6, Ljava/lang/Float;

    invoke-direct {v6, v4}, Ljava/lang/Float;-><init>(F)V

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Ljava/lang/Float;

    invoke-direct {v4, v5}, Ljava/lang/Float;-><init>(F)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_26

    :cond_c9
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget-object v5, p1, Lcom/caverock/androidsvg/SVG$PolyLine;->points:[F

    aput v0, v5, v3

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto/16 :goto_3b
.end method

.method private parseAttributesRadialGradient(Lcom/caverock/androidsvg/SVG$SvgRadialGradient;Lorg/xml/sax/Attributes;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/caverock/androidsvg/SVG$SvgRadialGradient;",
            "Lorg/xml/sax/Attributes;",
            ")V^",
            "Lcom/caverock/androidsvg/SVGParseException;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/caverock/androidsvg/SVGParseException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_1
    invoke-interface {p2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v1

    if-lt v0, v1, :cond_8

    return-void

    :cond_8
    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->fromString(Ljava/lang/String;)Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    move-result-object v2

    sget-object v3, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->cx:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    if-ne v2, v3, :cond_25

    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v1

    iput-object v1, p1, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->cx:Lcom/caverock/androidsvg/SVG$Length;

    :cond_22
    :goto_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_25
    sget-object v3, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->cy:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    if-ne v2, v3, :cond_30

    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v1

    iput-object v1, p1, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->cy:Lcom/caverock/androidsvg/SVG$Length;

    goto :goto_22

    :cond_30
    sget-object v3, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->r:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    if-ne v2, v3, :cond_4a

    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v1

    iput-object v1, p1, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->r:Lcom/caverock/androidsvg/SVG$Length;

    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->r:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVG$Length;->isNegative()Z

    move-result v1

    if-eqz v1, :cond_22

    new-instance v0, Lcom/caverock/androidsvg/SVGParseException;

    const-string v1, "Invalid <radialGradient> element. r cannot be negative"

    invoke-direct {v0, v1}, Lcom/caverock/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4a
    sget-object v3, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->fx:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    if-ne v2, v3, :cond_55

    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v1

    iput-object v1, p1, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->fx:Lcom/caverock/androidsvg/SVG$Length;

    goto :goto_22

    :cond_55
    sget-object v3, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->fy:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    if-ne v2, v3, :cond_22

    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v1

    iput-object v1, p1, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->fy:Lcom/caverock/androidsvg/SVG$Length;

    goto :goto_22
.end method

.method private parseAttributesRect(Lcom/caverock/androidsvg/SVG$Rect;Lorg/xml/sax/Attributes;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/caverock/androidsvg/SVG$Rect;",
            "Lorg/xml/sax/Attributes;",
            ")V^",
            "Lcom/caverock/androidsvg/SVGParseException;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/caverock/androidsvg/SVGParseException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_1
    invoke-interface {p2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v1

    if-lt v0, v1, :cond_8

    return-void

    :cond_8
    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->fromString(Ljava/lang/String;)Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    move-result-object v2

    sget-object v3, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->x:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    if-ne v2, v3, :cond_25

    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v1

    iput-object v1, p1, Lcom/caverock/androidsvg/SVG$Rect;->x:Lcom/caverock/androidsvg/SVG$Length;

    :cond_22
    :goto_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_25
    sget-object v3, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->y:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    if-ne v2, v3, :cond_30

    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v1

    iput-object v1, p1, Lcom/caverock/androidsvg/SVG$Rect;->y:Lcom/caverock/androidsvg/SVG$Length;

    goto :goto_22

    :cond_30
    sget-object v3, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->width:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    if-ne v2, v3, :cond_4a

    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v1

    iput-object v1, p1, Lcom/caverock/androidsvg/SVG$Rect;->width:Lcom/caverock/androidsvg/SVG$Length;

    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$Rect;->width:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVG$Length;->isNegative()Z

    move-result v1

    if-eqz v1, :cond_22

    new-instance v0, Lcom/caverock/androidsvg/SVGParseException;

    const-string v1, "Invalid <rect> element. width cannot be negative"

    invoke-direct {v0, v1}, Lcom/caverock/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4a
    sget-object v3, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->height:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    if-ne v2, v3, :cond_64

    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v1

    iput-object v1, p1, Lcom/caverock/androidsvg/SVG$Rect;->height:Lcom/caverock/androidsvg/SVG$Length;

    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$Rect;->height:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVG$Length;->isNegative()Z

    move-result v1

    if-eqz v1, :cond_22

    new-instance v0, Lcom/caverock/androidsvg/SVGParseException;

    const-string v1, "Invalid <rect> element. height cannot be negative"

    invoke-direct {v0, v1}, Lcom/caverock/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_64
    sget-object v3, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->rx:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    if-ne v2, v3, :cond_7e

    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v1

    iput-object v1, p1, Lcom/caverock/androidsvg/SVG$Rect;->rx:Lcom/caverock/androidsvg/SVG$Length;

    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$Rect;->rx:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVG$Length;->isNegative()Z

    move-result v1

    if-eqz v1, :cond_22

    new-instance v0, Lcom/caverock/androidsvg/SVGParseException;

    const-string v1, "Invalid <rect> element. rx cannot be negative"

    invoke-direct {v0, v1}, Lcom/caverock/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7e
    sget-object v3, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ry:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    if-ne v2, v3, :cond_22

    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v1

    iput-object v1, p1, Lcom/caverock/androidsvg/SVG$Rect;->ry:Lcom/caverock/androidsvg/SVG$Length;

    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$Rect;->ry:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVG$Length;->isNegative()Z

    move-result v1

    if-eqz v1, :cond_22

    new-instance v0, Lcom/caverock/androidsvg/SVGParseException;

    const-string v1, "Invalid <rect> element. ry cannot be negative"

    invoke-direct {v0, v1}, Lcom/caverock/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private parseAttributesSVG(Lcom/caverock/androidsvg/SVG$Svg;Lorg/xml/sax/Attributes;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/caverock/androidsvg/SVG$Svg;",
            "Lorg/xml/sax/Attributes;",
            ")V^",
            "Lcom/caverock/androidsvg/SVGParseException;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/caverock/androidsvg/SVGParseException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_1
    invoke-interface {p2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v1

    if-lt v0, v1, :cond_8

    return-void

    :cond_8
    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->fromString(Ljava/lang/String;)Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    move-result-object v2

    sget-object v3, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->x:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    if-ne v2, v3, :cond_25

    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v1

    iput-object v1, p1, Lcom/caverock/androidsvg/SVG$Svg;->x:Lcom/caverock/androidsvg/SVG$Length;

    :cond_22
    :goto_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_25
    sget-object v3, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->y:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    if-ne v2, v3, :cond_30

    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v1

    iput-object v1, p1, Lcom/caverock/androidsvg/SVG$Svg;->y:Lcom/caverock/androidsvg/SVG$Length;

    goto :goto_22

    :cond_30
    sget-object v3, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->width:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    if-ne v2, v3, :cond_4a

    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v1

    iput-object v1, p1, Lcom/caverock/androidsvg/SVG$Svg;->width:Lcom/caverock/androidsvg/SVG$Length;

    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$Svg;->width:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVG$Length;->isNegative()Z

    move-result v1

    if-eqz v1, :cond_22

    new-instance v0, Lcom/caverock/androidsvg/SVGParseException;

    const-string v1, "Invalid <svg> element. width cannot be negative"

    invoke-direct {v0, v1}, Lcom/caverock/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4a
    sget-object v3, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->height:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    if-ne v2, v3, :cond_64

    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v1

    iput-object v1, p1, Lcom/caverock/androidsvg/SVG$Svg;->height:Lcom/caverock/androidsvg/SVG$Length;

    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$Svg;->height:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVG$Length;->isNegative()Z

    move-result v1

    if-eqz v1, :cond_22

    new-instance v0, Lcom/caverock/androidsvg/SVGParseException;

    const-string v1, "Invalid <svg> element. height cannot be negative"

    invoke-direct {v0, v1}, Lcom/caverock/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_64
    sget-object v3, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->version:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    if-ne v2, v3, :cond_22

    iput-object v1, p1, Lcom/caverock/androidsvg/SVG$Svg;->version:Ljava/lang/String;

    goto :goto_22
.end method

.method private parseAttributesStop(Lcom/caverock/androidsvg/SVG$Stop;Lorg/xml/sax/Attributes;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/caverock/androidsvg/SVG$Stop;",
            "Lorg/xml/sax/Attributes;",
            ")V^",
            "Lcom/caverock/androidsvg/SVGParseException;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/caverock/androidsvg/SVGParseException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_1
    invoke-interface {p2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v1

    if-lt v0, v1, :cond_8

    return-void

    :cond_8
    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->fromString(Ljava/lang/String;)Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    move-result-object v2

    sget-object v3, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->offset:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    if-ne v2, v3, :cond_22

    invoke-direct {p0, v1}, Lcom/caverock/androidsvg/SVGParser;->parseGradientOffset(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    iput-object v1, p1, Lcom/caverock/androidsvg/SVG$Stop;->offset:Ljava/lang/Float;

    :cond_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private parseAttributesStyle(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/caverock/androidsvg/SVG$SvgElementBase;",
            "Lorg/xml/sax/Attributes;",
            ")V^",
            "Lcom/caverock/androidsvg/SVGParseException;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/caverock/androidsvg/SVGParseException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_1
    invoke-interface {p2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v1

    if-lt v0, v1, :cond_8

    return-void

    :cond_8
    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_19

    :goto_16
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_19
    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->fromString(Ljava/lang/String;)Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    move-result-object v2

    sget-object v3, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->style:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    if-ne v2, v3, :cond_29

    invoke-static {p1, v1}, Lcom/caverock/androidsvg/SVGParser;->parseStyle(Lcom/caverock/androidsvg/SVG$SvgElementBase;Ljava/lang/String;)V

    goto :goto_16

    :cond_29
    sget-object v3, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->CLASS:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    if-ne v2, v3, :cond_34

    invoke-static {v1}, Lcom/caverock/androidsvg/CSSParser;->parseClassAttribute(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p1, Lcom/caverock/androidsvg/SVG$SvgElementBase;->classNames:Ljava/util/List;

    goto :goto_16

    :cond_34
    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$SvgElementBase;->baseStyle:Lcom/caverock/androidsvg/SVG$Style;

    if-nez v1, :cond_3f

    new-instance v1, Lcom/caverock/androidsvg/SVG$Style;

    invoke-direct {v1}, Lcom/caverock/androidsvg/SVG$Style;-><init>()V

    iput-object v1, p1, Lcom/caverock/androidsvg/SVG$SvgElementBase;->baseStyle:Lcom/caverock/androidsvg/SVG$Style;

    :cond_3f
    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$SvgElementBase;->baseStyle:Lcom/caverock/androidsvg/SVG$Style;

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/caverock/androidsvg/SVGParser;->processStyleProperty(Lcom/caverock/androidsvg/SVG$Style;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_16
.end method

.method private parseAttributesTRef(Lcom/caverock/androidsvg/SVG$TRef;Lorg/xml/sax/Attributes;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/caverock/androidsvg/SVG$TRef;",
            "Lorg/xml/sax/Attributes;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_1
    invoke-interface {p2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v1

    if-lt v0, v1, :cond_8

    return-void

    :cond_8
    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->fromString(Ljava/lang/String;)Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    move-result-object v2

    sget-object v3, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->href:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    if-ne v2, v3, :cond_36

    const-string v2, ""

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getURI(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_34

    sget-object v2, Lcom/caverock/androidsvg/SVGParser;->XLINK_NAMESPACE:Ljava/lang/String;

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getURI(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_36

    :cond_34
    iput-object v1, p1, Lcom/caverock/androidsvg/SVG$TRef;->href:Ljava/lang/String;

    :cond_36
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private parseAttributesTextPath(Lcom/caverock/androidsvg/SVG$TextPath;Lorg/xml/sax/Attributes;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/caverock/androidsvg/SVG$TextPath;",
            "Lorg/xml/sax/Attributes;",
            ")V^",
            "Lcom/caverock/androidsvg/SVGParseException;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/caverock/androidsvg/SVGParseException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_1
    invoke-interface {p2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v1

    if-lt v0, v1, :cond_8

    return-void

    :cond_8
    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->fromString(Ljava/lang/String;)Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    move-result-object v2

    sget-object v3, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->href:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    if-ne v2, v3, :cond_39

    const-string v2, ""

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getURI(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_34

    sget-object v2, Lcom/caverock/androidsvg/SVGParser;->XLINK_NAMESPACE:Ljava/lang/String;

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getURI(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_36

    :cond_34
    iput-object v1, p1, Lcom/caverock/androidsvg/SVG$TextPath;->href:Ljava/lang/String;

    :cond_36
    :goto_36
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_39
    sget-object v3, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->startOffset:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    if-ne v2, v3, :cond_36

    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v1

    iput-object v1, p1, Lcom/caverock/androidsvg/SVG$TextPath;->startOffset:Lcom/caverock/androidsvg/SVG$Length;

    goto :goto_36
.end method

.method private parseAttributesTextPosition(Lcom/caverock/androidsvg/SVG$TextPositionedContainer;Lorg/xml/sax/Attributes;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/caverock/androidsvg/SVG$TextPositionedContainer;",
            "Lorg/xml/sax/Attributes;",
            ")V^",
            "Lcom/caverock/androidsvg/SVGParseException;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/caverock/androidsvg/SVGParseException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_1
    invoke-interface {p2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v1

    if-lt v0, v1, :cond_8

    return-void

    :cond_8
    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->fromString(Ljava/lang/String;)Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    move-result-object v2

    sget-object v3, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->x:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    if-ne v2, v3, :cond_25

    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseLengthList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p1, Lcom/caverock/androidsvg/SVG$TextPositionedContainer;->x:Ljava/util/List;

    :cond_22
    :goto_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_25
    sget-object v3, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->y:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    if-ne v2, v3, :cond_30

    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseLengthList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p1, Lcom/caverock/androidsvg/SVG$TextPositionedContainer;->y:Ljava/util/List;

    goto :goto_22

    :cond_30
    sget-object v3, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->dx:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    if-ne v2, v3, :cond_3b

    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseLengthList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p1, Lcom/caverock/androidsvg/SVG$TextPositionedContainer;->dx:Ljava/util/List;

    goto :goto_22

    :cond_3b
    sget-object v3, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->dy:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    if-ne v2, v3, :cond_22

    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseLengthList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p1, Lcom/caverock/androidsvg/SVG$TextPositionedContainer;->dy:Ljava/util/List;

    goto :goto_22
.end method

.method private parseAttributesTransform(Lcom/caverock/androidsvg/SVG$HasTransform;Lorg/xml/sax/Attributes;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/caverock/androidsvg/SVG$HasTransform;",
            "Lorg/xml/sax/Attributes;",
            ")V^",
            "Lcom/caverock/androidsvg/SVGParseException;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/caverock/androidsvg/SVGParseException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_1
    invoke-interface {p2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v1

    if-lt v0, v1, :cond_8

    return-void

    :cond_8
    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->fromString(Ljava/lang/String;)Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    move-result-object v1

    sget-object v2, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->transform:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    if-ne v1, v2, :cond_1f

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/caverock/androidsvg/SVGParser;->parseTransformList(Ljava/lang/String;)Landroid/graphics/Matrix;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/caverock/androidsvg/SVG$HasTransform;->setTransform(Landroid/graphics/Matrix;)V

    :cond_1f
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private parseAttributesUse(Lcom/caverock/androidsvg/SVG$Use;Lorg/xml/sax/Attributes;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/caverock/androidsvg/SVG$Use;",
            "Lorg/xml/sax/Attributes;",
            ")V^",
            "Lcom/caverock/androidsvg/SVGParseException;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/caverock/androidsvg/SVGParseException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_1
    invoke-interface {p2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v1

    if-lt v0, v1, :cond_8

    return-void

    :cond_8
    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->fromString(Ljava/lang/String;)Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    move-result-object v2

    sget-object v3, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->x:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    if-ne v2, v3, :cond_25

    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v1

    iput-object v1, p1, Lcom/caverock/androidsvg/SVG$Use;->x:Lcom/caverock/androidsvg/SVG$Length;

    :cond_22
    :goto_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_25
    sget-object v3, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->y:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    if-ne v2, v3, :cond_30

    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v1

    iput-object v1, p1, Lcom/caverock/androidsvg/SVG$Use;->y:Lcom/caverock/androidsvg/SVG$Length;

    goto :goto_22

    :cond_30
    sget-object v3, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->width:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    if-ne v2, v3, :cond_4a

    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v1

    iput-object v1, p1, Lcom/caverock/androidsvg/SVG$Use;->width:Lcom/caverock/androidsvg/SVG$Length;

    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$Use;->width:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVG$Length;->isNegative()Z

    move-result v1

    if-eqz v1, :cond_22

    new-instance v0, Lcom/caverock/androidsvg/SVGParseException;

    const-string v1, "Invalid <use> element. width cannot be negative"

    invoke-direct {v0, v1}, Lcom/caverock/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4a
    sget-object v3, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->height:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    if-ne v2, v3, :cond_64

    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v1

    iput-object v1, p1, Lcom/caverock/androidsvg/SVG$Use;->height:Lcom/caverock/androidsvg/SVG$Length;

    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$Use;->height:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVG$Length;->isNegative()Z

    move-result v1

    if-eqz v1, :cond_22

    new-instance v0, Lcom/caverock/androidsvg/SVGParseException;

    const-string v1, "Invalid <use> element. height cannot be negative"

    invoke-direct {v0, v1}, Lcom/caverock/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_64
    sget-object v3, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->href:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    if-ne v2, v3, :cond_22

    const-string v2, ""

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getURI(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_80

    sget-object v2, Lcom/caverock/androidsvg/SVGParser;->XLINK_NAMESPACE:Ljava/lang/String;

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getURI(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22

    :cond_80
    iput-object v1, p1, Lcom/caverock/androidsvg/SVG$Use;->href:Ljava/lang/String;

    goto :goto_22
.end method

.method private parseAttributesViewBox(Lcom/caverock/androidsvg/SVG$SvgViewBoxContainer;Lorg/xml/sax/Attributes;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/caverock/androidsvg/SVG$SvgViewBoxContainer;",
            "Lorg/xml/sax/Attributes;",
            ")V^",
            "Lcom/caverock/androidsvg/SVGParseException;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/caverock/androidsvg/SVGParseException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_1
    invoke-interface {p2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v1

    if-lt v0, v1, :cond_8

    return-void

    :cond_8
    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->fromString(Ljava/lang/String;)Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    move-result-object v2

    sget-object v3, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->viewBox:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    if-ne v2, v3, :cond_25

    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseViewBox(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Box;

    move-result-object v1

    iput-object v1, p1, Lcom/caverock/androidsvg/SVG$SvgViewBoxContainer;->viewBox:Lcom/caverock/androidsvg/SVG$Box;

    :cond_22
    :goto_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_25
    sget-object v3, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->preserveAspectRatio:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    if-ne v2, v3, :cond_22

    invoke-static {p1, v1}, Lcom/caverock/androidsvg/SVGParser;->parsePreserveAspectRatio(Lcom/caverock/androidsvg/SVG$SvgPreserveAspectRatioContainer;Ljava/lang/String;)V

    goto :goto_22
.end method

.method private parseCSSStyleSheet(Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    new-instance v0, Lcom/caverock/androidsvg/CSSParser;

    sget-object v1, Lcom/caverock/androidsvg/CSSParser$MediaType;->screen:Lcom/caverock/androidsvg/CSSParser$MediaType;

    sget-object v2, Lcom/caverock/androidsvg/CSSParser$Source;->Document:Lcom/caverock/androidsvg/CSSParser$Source;

    invoke-direct {v0, v1, v2}, Lcom/caverock/androidsvg/CSSParser;-><init>(Lcom/caverock/androidsvg/CSSParser$MediaType;Lcom/caverock/androidsvg/CSSParser$Source;)V

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->svgDocument:Lcom/caverock/androidsvg/SVG;

    invoke-virtual {v0, p1}, Lcom/caverock/androidsvg/CSSParser;->parse(Ljava/lang/String;)Lcom/caverock/androidsvg/CSSParser$Ruleset;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/caverock/androidsvg/SVG;->addCSSRules(Lcom/caverock/androidsvg/CSSParser$Ruleset;)V

    return-void
.end method

.method private static parseClip(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$CSSClipRect;
    .registers 8

    const/4 v0, 0x0

    const-string v1, "auto"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    check-cast v0, Lcom/caverock/androidsvg/SVG$CSSClipRect;

    :goto_b
    return-object v0

    :cond_c
    const-string v1, "rect("

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_17

    check-cast v0, Lcom/caverock/androidsvg/SVG$CSSClipRect;

    goto :goto_b

    :cond_17
    new-instance v1, Lcom/caverock/androidsvg/SVGParser$TextScanner;

    const/4 v2, 0x5

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/caverock/androidsvg/SVGParser$TextScanner;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseLengthOrAuto(Lcom/caverock/androidsvg/SVGParser$TextScanner;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v2

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipCommaWhitespace()Z

    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseLengthOrAuto(Lcom/caverock/androidsvg/SVGParser$TextScanner;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v3

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipCommaWhitespace()Z

    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseLengthOrAuto(Lcom/caverock/androidsvg/SVGParser$TextScanner;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v4

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipCommaWhitespace()Z

    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseLengthOrAuto(Lcom/caverock/androidsvg/SVGParser$TextScanner;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v5

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    const/16 v6, 0x29

    invoke-virtual {v1, v6}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->consume(C)Z

    move-result v6

    if-nez v6, :cond_51

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->empty()Z

    move-result v1

    if-nez v1, :cond_51

    check-cast v0, Lcom/caverock/androidsvg/SVG$CSSClipRect;

    goto :goto_b

    :cond_51
    new-instance v0, Lcom/caverock/androidsvg/SVG$CSSClipRect;

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/caverock/androidsvg/SVG$CSSClipRect;-><init>(Lcom/caverock/androidsvg/SVG$Length;Lcom/caverock/androidsvg/SVG$Length;Lcom/caverock/androidsvg/SVG$Length;Lcom/caverock/androidsvg/SVG$Length;)V

    goto :goto_b
.end method

.method private static parseColour(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Colour;
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/caverock/androidsvg/SVGParseException;
        }
    .end annotation

    const/16 v10, 0x64

    const/16 v9, 0x29

    const/high16 v8, -0x1000000

    const/16 v7, 0x100

    const/16 v6, 0x25

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x23

    if-ne v0, v1, :cond_bc

    const/4 v0, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {p0, v0, v1}, Lcom/caverock/androidsvg/IntegerParser;->parseHex(Ljava/lang/String;II)Lcom/caverock/androidsvg/IntegerParser;

    move-result-object v1

    if-nez v1, :cond_37

    new-instance v0, Lcom/caverock/androidsvg/SVGParseException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Bad hex colour value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/caverock/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_37
    invoke-virtual {v1}, Lcom/caverock/androidsvg/IntegerParser;->getEndPos()I

    move-result v0

    packed-switch v0, :pswitch_data_272

    :pswitch_3e  #0x6, 0x8
    new-instance v0, Lcom/caverock/androidsvg/SVGParseException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Bad hex colour value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/caverock/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_57  #0x4
    invoke-virtual {v1}, Lcom/caverock/androidsvg/IntegerParser;->value()I

    move-result v0

    and-int/lit16 v1, v0, 0xf00

    and-int/lit16 v2, v0, 0xf0

    and-int/lit8 v3, v0, 0xf

    new-instance v0, Lcom/caverock/androidsvg/SVG$Colour;

    shl-int/lit8 v4, v1, 0xc

    or-int/2addr v4, v8

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v1, v4

    shl-int/lit8 v4, v2, 0x8

    or-int/2addr v1, v4

    shl-int/lit8 v2, v2, 0x4

    or-int/2addr v1, v2

    shl-int/lit8 v2, v3, 0x4

    or-int/2addr v1, v2

    or-int/2addr v1, v3

    invoke-direct {v0, v1}, Lcom/caverock/androidsvg/SVG$Colour;-><init>(I)V

    :goto_76
    return-object v0

    :pswitch_77  #0x5
    invoke-virtual {v1}, Lcom/caverock/androidsvg/IntegerParser;->value()I

    move-result v0

    const v1, 0xf000

    and-int/2addr v1, v0

    and-int/lit16 v2, v0, 0xf00

    and-int/lit16 v3, v0, 0xf0

    and-int/lit8 v4, v0, 0xf

    new-instance v0, Lcom/caverock/androidsvg/SVG$Colour;

    shl-int/lit8 v5, v1, 0x8

    shl-int/lit8 v6, v4, 0x1c

    shl-int/lit8 v4, v4, 0x18

    or-int/2addr v4, v6

    or-int/2addr v4, v5

    shl-int/lit8 v1, v1, 0x4

    or-int/2addr v1, v4

    shl-int/lit8 v4, v2, 0x4

    or-int/2addr v1, v4

    or-int/2addr v1, v2

    or-int/2addr v1, v3

    shr-int/lit8 v2, v3, 0x4

    or-int/2addr v1, v2

    invoke-direct {v0, v1}, Lcom/caverock/androidsvg/SVG$Colour;-><init>(I)V

    goto :goto_76

    :pswitch_9e  #0x7
    new-instance v0, Lcom/caverock/androidsvg/SVG$Colour;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/IntegerParser;->value()I

    move-result v1

    or-int/2addr v1, v8

    invoke-direct {v0, v1}, Lcom/caverock/androidsvg/SVG$Colour;-><init>(I)V

    goto :goto_76

    :pswitch_a9  #0x9
    invoke-virtual {v1}, Lcom/caverock/androidsvg/IntegerParser;->value()I

    move-result v2

    new-instance v0, Lcom/caverock/androidsvg/SVG$Colour;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/IntegerParser;->value()I

    move-result v1

    ushr-int/lit8 v1, v1, 0x8

    shl-int/lit8 v2, v2, 0x18

    or-int/2addr v1, v2

    invoke-direct {v0, v1}, Lcom/caverock/androidsvg/SVG$Colour;-><init>(I)V

    goto :goto_76

    :cond_bc
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "rgba("

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_d2

    const-string v1, "rgb("

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1b4

    :cond_d2
    if-eqz v4, :cond_14c

    const/4 v0, 0x5

    :goto_d5
    new-instance v5, Lcom/caverock/androidsvg/SVGParser$TextScanner;

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    invoke-virtual {v5}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextFloat()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_f5

    invoke-virtual {v5, v6}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->consume(C)Z

    move-result v1

    if-eqz v1, :cond_f5

    int-to-float v1, v7

    mul-float/2addr v0, v1

    int-to-float v1, v10

    div-float/2addr v0, v1

    :cond_f5
    invoke-virtual {v5, v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->checkedNextFloat(F)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-nez v2, :cond_109

    invoke-virtual {v5, v6}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->consume(C)Z

    move-result v2

    if-eqz v2, :cond_109

    int-to-float v2, v7

    mul-float/2addr v1, v2

    int-to-float v2, v10

    div-float/2addr v1, v2

    :cond_109
    invoke-virtual {v5, v1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->checkedNextFloat(F)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-nez v3, :cond_26f

    invoke-virtual {v5, v6}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->consume(C)Z

    move-result v3

    if-eqz v3, :cond_26f

    int-to-float v3, v7

    mul-float/2addr v2, v3

    int-to-float v3, v10

    div-float/2addr v2, v3

    move v3, v2

    :goto_11e
    if-eqz v4, :cond_171

    invoke-virtual {v5, v3}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->checkedNextFloat(F)F

    move-result v2

    invoke-virtual {v5}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-nez v4, :cond_133

    invoke-virtual {v5, v9}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->consume(C)Z

    move-result v4

    if-nez v4, :cond_14e

    :cond_133
    new-instance v0, Lcom/caverock/androidsvg/SVGParseException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Bad rgba() colour value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/caverock/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_14c
    const/4 v0, 0x4

    goto :goto_d5

    :cond_14e
    int-to-float v4, v7

    mul-float/2addr v2, v4

    invoke-static {v2}, Lcom/caverock/androidsvg/SVGParser;->clamp255(F)I

    move-result v4

    new-instance v2, Lcom/caverock/androidsvg/SVG$Colour;

    invoke-static {v0}, Lcom/caverock/androidsvg/SVGParser;->clamp255(F)I

    move-result v0

    shl-int/lit8 v0, v0, 0x10

    shl-int/lit8 v4, v4, 0x18

    or-int/2addr v0, v4

    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->clamp255(F)I

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    invoke-static {v3}, Lcom/caverock/androidsvg/SVGParser;->clamp255(F)I

    move-result v1

    or-int/2addr v0, v1

    invoke-direct {v2, v0}, Lcom/caverock/androidsvg/SVG$Colour;-><init>(I)V

    move-object v0, v2

    goto/16 :goto_76

    :cond_171
    invoke-virtual {v5}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-nez v2, :cond_180

    invoke-virtual {v5, v9}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->consume(C)Z

    move-result v2

    if-nez v2, :cond_199

    :cond_180
    new-instance v0, Lcom/caverock/androidsvg/SVGParseException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Bad rgb() colour value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/caverock/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_199
    new-instance v2, Lcom/caverock/androidsvg/SVG$Colour;

    invoke-static {v0}, Lcom/caverock/androidsvg/SVGParser;->clamp255(F)I

    move-result v0

    shl-int/lit8 v0, v0, 0x10

    or-int/2addr v0, v8

    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->clamp255(F)I

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    invoke-static {v3}, Lcom/caverock/androidsvg/SVGParser;->clamp255(F)I

    move-result v1

    or-int/2addr v0, v1

    invoke-direct {v2, v0}, Lcom/caverock/androidsvg/SVG$Colour;-><init>(I)V

    move-object v0, v2

    goto/16 :goto_76

    :cond_1b4
    const-string v1, "hsla("

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1c4

    const-string v2, "hsl("

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_269

    :cond_1c4
    if-eqz v1, :cond_21f

    const/4 v0, 0x5

    :goto_1c7
    new-instance v2, Lcom/caverock/androidsvg/SVGParser$TextScanner;

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextFloat()F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->checkedNextFloat(F)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_1e4

    invoke-virtual {v2, v6}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->consume(C)Z

    :cond_1e4
    invoke-virtual {v2, v4}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->checkedNextFloat(F)F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_1f1

    invoke-virtual {v2, v6}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->consume(C)Z

    :cond_1f1
    if-eqz v1, :cond_235

    invoke-virtual {v2, v5}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->checkedNextFloat(F)F

    move-result v1

    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_206

    invoke-virtual {v2, v9}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->consume(C)Z

    move-result v0

    if-nez v0, :cond_221

    :cond_206
    new-instance v0, Lcom/caverock/androidsvg/SVGParseException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Bad hsla() colour value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/caverock/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_21f
    const/4 v0, 0x4

    goto :goto_1c7

    :cond_221
    new-instance v0, Lcom/caverock/androidsvg/SVG$Colour;

    int-to-float v2, v7

    mul-float/2addr v1, v2

    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->clamp255(F)I

    move-result v1

    shl-int/lit8 v1, v1, 0x18

    invoke-static {v3, v4, v5}, Lcom/caverock/androidsvg/SVGParser;->hslToRgb(FFF)I

    move-result v2

    or-int/2addr v1, v2

    invoke-direct {v0, v1}, Lcom/caverock/androidsvg/SVG$Colour;-><init>(I)V

    goto/16 :goto_76

    :cond_235
    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_244

    invoke-virtual {v2, v9}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->consume(C)Z

    move-result v0

    if-nez v0, :cond_25d

    :cond_244
    new-instance v0, Lcom/caverock/androidsvg/SVGParseException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Bad hsl() colour value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/caverock/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_25d
    new-instance v0, Lcom/caverock/androidsvg/SVG$Colour;

    invoke-static {v3, v4, v5}, Lcom/caverock/androidsvg/SVGParser;->hslToRgb(FFF)I

    move-result v1

    or-int/2addr v1, v8

    invoke-direct {v0, v1}, Lcom/caverock/androidsvg/SVG$Colour;-><init>(I)V

    goto/16 :goto_76

    :cond_269
    invoke-static {v0}, Lcom/caverock/androidsvg/SVGParser;->parseColourKeyword(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Colour;

    move-result-object v0

    goto/16 :goto_76

    :cond_26f
    move v3, v2

    goto/16 :goto_11e

    :pswitch_data_272
    .packed-switch 0x4
        :pswitch_57  #00000004
        :pswitch_77  #00000005
        :pswitch_3e  #00000006
        :pswitch_9e  #00000007
        :pswitch_3e  #00000008
        :pswitch_a9  #00000009
    .end packed-switch
.end method

.method private static parseColourKeyword(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Colour;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/caverock/androidsvg/SVGParseException;
        }
    .end annotation

    invoke-static {p0}, Lcom/caverock/androidsvg/SVGParser$ColourKeywords;->get(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_1f

    new-instance v0, Lcom/caverock/androidsvg/SVGParseException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Invalid colour keyword: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/caverock/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1f
    new-instance v1, Lcom/caverock/androidsvg/SVG$Colour;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {v1, v0}, Lcom/caverock/androidsvg/SVG$Colour;-><init>(I)V

    return-object v1
.end method

.method private static parseColourSpecifer(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$SvgPaint;
    .registers 3

    const/4 v1, 0x1

    const-string v0, "none"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-ne v0, v1, :cond_c

    sget-object v0, Lcom/caverock/androidsvg/SVG$Colour;->TRANSPARENT:Lcom/caverock/androidsvg/SVG$Colour;

    :goto_b
    return-object v0

    :cond_c
    const-string v0, "currentColor"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-ne v0, v1, :cond_19

    invoke-static {}, Lcom/caverock/androidsvg/SVG$CurrentColor;->getInstance()Lcom/caverock/androidsvg/SVG$CurrentColor;

    move-result-object v0

    goto :goto_b

    :cond_19
    :try_start_19
    invoke-static {p0}, Lcom/caverock/androidsvg/SVGParser;->parseColour(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Colour;
    :try_end_1c
    .catch Lcom/caverock/androidsvg/SVGParseException; {:try_start_19 .. :try_end_1c} :catch_1e

    move-result-object v0

    goto :goto_b

    :catch_1e
    move-exception v0

    const/4 v0, 0x0

    check-cast v0, Lcom/caverock/androidsvg/SVG$SvgPaint;

    goto :goto_b
.end method

.method private static parseFillRule(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Style$FillRule;
    .registers 2

    const-string v0, "nonzero"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    sget-object v0, Lcom/caverock/androidsvg/SVG$Style$FillRule;->NonZero:Lcom/caverock/androidsvg/SVG$Style$FillRule;

    :goto_a
    return-object v0

    :cond_b
    const-string v0, "evenodd"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    sget-object v0, Lcom/caverock/androidsvg/SVG$Style$FillRule;->EvenOdd:Lcom/caverock/androidsvg/SVG$Style$FillRule;

    goto :goto_a

    :cond_16
    const/4 v0, 0x0

    check-cast v0, Lcom/caverock/androidsvg/SVG$Style$FillRule;

    goto :goto_a
.end method

.method private static parseFloat(Ljava/lang/String;)F
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/caverock/androidsvg/SVGParseException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_e

    new-instance v0, Lcom/caverock/androidsvg/SVGParseException;

    const-string v1, "Invalid float value (empty string)"

    invoke-direct {v0, v1}, Lcom/caverock/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lcom/caverock/androidsvg/SVGParser;->parseFloat(Ljava/lang/String;II)F

    move-result v0

    return v0
.end method

.method private static parseFloat(Ljava/lang/String;II)F
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/caverock/androidsvg/SVGParseException;
        }
    .end annotation

    new-instance v0, Lcom/caverock/androidsvg/NumberParser;

    invoke-direct {v0}, Lcom/caverock/androidsvg/NumberParser;-><init>()V

    invoke-virtual {v0, p0, p1, p2}, Lcom/caverock/androidsvg/NumberParser;->parseNumber(Ljava/lang/String;II)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_10

    return v0

    :cond_10
    new-instance v0, Lcom/caverock/androidsvg/SVGParseException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Invalid float value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/caverock/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static parseFont(Lcom/caverock/androidsvg/SVG$Style;Ljava/lang/String;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/caverock/androidsvg/SVG$Style;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/16 v7, 0x7c

    const/16 v6, 0x2f

    const/4 v1, 0x0

    move-object v0, v1

    check-cast v0, Ljava/lang/Integer;

    move-object v2, v1

    check-cast v2, Lcom/caverock/androidsvg/SVG$Style$FontStyle;

    check-cast v1, Ljava/lang/String;

    const-string v3, "|caption|icon|menu|message-box|small-caption|status-bar|"

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_38

    :cond_37
    :goto_37
    return-void

    :cond_38
    new-instance v5, Lcom/caverock/androidsvg/SVGParser$TextScanner;

    invoke-direct {v5, p1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;-><init>(Ljava/lang/String;)V

    move-object v3, v2

    move-object v4, v0

    :cond_3f
    :goto_3f
    invoke-virtual {v5, v6}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextToken(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    if-eqz v2, :cond_37

    if-eqz v4, :cond_8c

    if-eqz v3, :cond_8c

    move-object v0, v4

    :goto_4d
    invoke-static {v2}, Lcom/caverock/androidsvg/SVGParser;->parseFontSize(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v1

    invoke-virtual {v5, v6}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->consume(C)Z

    move-result v2

    if-eqz v2, :cond_66

    invoke-virtual {v5}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    invoke-virtual {v5}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextToken()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_63

    :try_start_60
    invoke-static {v2}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;
    :try_end_63
    .catch Lcom/caverock/androidsvg/SVGParseException; {:try_start_60 .. :try_end_63} :catch_bb

    :cond_63
    invoke-virtual {v5}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    :cond_66
    invoke-virtual {v5}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->restOfText()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/caverock/androidsvg/SVGParser;->parseFontFamily(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/caverock/androidsvg/SVG$Style;->fontFamily:Ljava/util/List;

    iput-object v1, p0, Lcom/caverock/androidsvg/SVG$Style;->fontSize:Lcom/caverock/androidsvg/SVG$Length;

    if-nez v0, :cond_b4

    const/16 v0, 0x190

    :goto_76
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v0}, Ljava/lang/Integer;-><init>(I)V

    iput-object v1, p0, Lcom/caverock/androidsvg/SVG$Style;->fontWeight:Ljava/lang/Integer;

    if-nez v3, :cond_81

    sget-object v3, Lcom/caverock/androidsvg/SVG$Style$FontStyle;->Normal:Lcom/caverock/androidsvg/SVG$Style$FontStyle;

    :cond_81
    iput-object v3, p0, Lcom/caverock/androidsvg/SVG$Style;->fontStyle:Lcom/caverock/androidsvg/SVG$Style$FontStyle;

    iget-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide/32 v2, 0x1e000

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    goto :goto_37

    :cond_8c
    const-string v0, "normal"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3f

    if-nez v4, :cond_9d

    invoke-static {v2}, Lcom/caverock/androidsvg/SVGParser$FontWeightKeywords;->get(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_c0

    move-object v4, v0

    :cond_9d
    if-nez v3, :cond_a6

    invoke-static {v2}, Lcom/caverock/androidsvg/SVGParser;->parseFontStyle(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Style$FontStyle;

    move-result-object v0

    if-nez v0, :cond_be

    move-object v3, v0

    :cond_a6
    if-nez v1, :cond_b2

    const-string v0, "small-caps"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b2

    move-object v1, v2

    goto :goto_3f

    :cond_b2
    move-object v0, v4

    goto :goto_4d

    :cond_b4
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_76

    :catch_bb
    move-exception v0

    goto/16 :goto_37

    :cond_be
    move-object v3, v0

    goto :goto_3f

    :cond_c0
    move-object v4, v0

    goto/16 :goto_3f
.end method

.method private static parseFontFamily(Ljava/lang/String;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    check-cast v0, Ljava/util/List;

    new-instance v2, Lcom/caverock/androidsvg/SVGParser$TextScanner;

    invoke-direct {v2, p0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;-><init>(Ljava/lang/String;)V

    :cond_8
    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextQuotedString()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_14

    const/16 v1, 0x2c

    invoke-virtual {v2, v1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextTokenWithWhitespace(C)Ljava/lang/String;

    move-result-object v1

    :cond_14
    if-nez v1, :cond_17

    :goto_16
    return-object v0

    :cond_17
    if-nez v0, :cond_1e

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_1e
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipCommaWhitespace()Z

    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->empty()Z

    move-result v1

    if-eqz v1, :cond_8

    goto :goto_16
.end method

.method private static parseFontSize(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;
    .registers 2

    :try_start_0
    invoke-static {p0}, Lcom/caverock/androidsvg/SVGParser$FontSizeKeywords;->get(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v0

    if-nez v0, :cond_a

    invoke-static {p0}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;
    :try_end_9
    .catch Lcom/caverock/androidsvg/SVGParseException; {:try_start_0 .. :try_end_9} :catch_b

    move-result-object v0

    :cond_a
    :goto_a
    return-object v0

    :catch_b
    move-exception v0

    const/4 v0, 0x0

    check-cast v0, Lcom/caverock/androidsvg/SVG$Length;

    goto :goto_a
.end method

.method private static parseFontStyle(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Style$FontStyle;
    .registers 3

    const/4 v1, 0x1

    const-string v0, "italic"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-ne v0, v1, :cond_c

    sget-object v0, Lcom/caverock/androidsvg/SVG$Style$FontStyle;->Italic:Lcom/caverock/androidsvg/SVG$Style$FontStyle;

    :goto_b
    return-object v0

    :cond_c
    const-string v0, "normal"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-ne v0, v1, :cond_17

    sget-object v0, Lcom/caverock/androidsvg/SVG$Style$FontStyle;->Normal:Lcom/caverock/androidsvg/SVG$Style$FontStyle;

    goto :goto_b

    :cond_17
    const-string v0, "oblique"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-ne v0, v1, :cond_22

    sget-object v0, Lcom/caverock/androidsvg/SVG$Style$FontStyle;->Oblique:Lcom/caverock/androidsvg/SVG$Style$FontStyle;

    goto :goto_b

    :cond_22
    const/4 v0, 0x0

    check-cast v0, Lcom/caverock/androidsvg/SVG$Style$FontStyle;

    goto :goto_b
.end method

.method private static parseFontWeight(Ljava/lang/String;)Ljava/lang/Integer;
    .registers 2

    invoke-static {p0}, Lcom/caverock/androidsvg/SVGParser$FontWeightKeywords;->get(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method private static parseFunctionalIRI(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    const/4 v2, 0x4

    const/4 v0, 0x0

    const-string v1, "none"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    check-cast v0, Ljava/lang/String;

    :goto_c
    return-object v0

    :cond_d
    const-string v1, "url("

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_18

    check-cast v0, Ljava/lang/String;

    goto :goto_c

    :cond_18
    const-string v0, ")"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2f

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    :cond_2f
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_c
.end method

.method private parseGradientOffset(Ljava/lang/String;)Ljava/lang/Float;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/caverock/androidsvg/SVGParseException;
        }
    .end annotation

    const/16 v4, 0x64

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_11

    new-instance v0, Lcom/caverock/androidsvg/SVGParseException;

    const-string v1, "Invalid offset value in <stop> (empty string)"

    invoke-direct {v0, v1}, Lcom/caverock/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_11
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v3, 0x25

    if-ne v1, v3, :cond_5e

    add-int/lit8 v3, v0, -0x1

    const/4 v0, 0x1

    move v1, v0

    :goto_27
    const/4 v0, 0x0

    :try_start_28
    invoke-static {p1, v0, v3}, Lcom/caverock/androidsvg/SVGParser;->parseFloat(Ljava/lang/String;II)F

    move-result v0

    if-eqz v1, :cond_31

    const/high16 v1, 0x42c80000  # 100.0f

    div-float/2addr v0, v1

    :cond_31
    int-to-float v1, v2

    cmpg-float v1, v0, v1

    if-gez v1, :cond_3d

    int-to-float v0, v2

    :cond_37
    :goto_37
    new-instance v1, Ljava/lang/Float;

    invoke-direct {v1, v0}, Ljava/lang/Float;-><init>(F)V
    :try_end_3c
    .catch Ljava/lang/NumberFormatException; {:try_start_28 .. :try_end_3c} :catch_44

    return-object v1

    :cond_3d
    int-to-float v1, v4

    cmpl-float v1, v0, v1

    if-lez v1, :cond_37

    int-to-float v0, v4

    goto :goto_37

    :catch_44
    move-exception v0

    new-instance v1, Lcom/caverock/androidsvg/SVGParseException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Invalid offset value in <stop>: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/caverock/androidsvg/SVGParseException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :cond_5e
    move v1, v2

    move v3, v0

    goto :goto_27
.end method

.method static parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/caverock/androidsvg/SVGParseException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_e

    new-instance v0, Lcom/caverock/androidsvg/SVGParseException;

    const-string v1, "Invalid length value (empty string)"

    invoke-direct {v0, v1}, Lcom/caverock/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    sget-object v0, Lcom/caverock/androidsvg/SVG$Unit;->px:Lcom/caverock/androidsvg/SVG$Unit;

    add-int/lit8 v2, v1, -0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x25

    if-ne v2, v3, :cond_2d

    add-int/lit8 v1, v1, -0x1

    sget-object v0, Lcom/caverock/androidsvg/SVG$Unit;->percent:Lcom/caverock/androidsvg/SVG$Unit;

    :cond_22
    :goto_22
    :try_start_22
    new-instance v2, Lcom/caverock/androidsvg/SVG$Length;

    const/4 v3, 0x0

    invoke-static {p0, v3, v1}, Lcom/caverock/androidsvg/SVGParser;->parseFloat(Ljava/lang/String;II)F

    move-result v1

    invoke-direct {v2, v1, v0}, Lcom/caverock/androidsvg/SVG$Length;-><init>(FLcom/caverock/androidsvg/SVG$Unit;)V
    :try_end_2c
    .catch Ljava/lang/NumberFormatException; {:try_start_22 .. :try_end_2c} :catch_6d

    return-object v2

    :cond_2d
    const/4 v3, 0x2

    if-le v1, v3, :cond_22

    invoke-static {v2}, Ljava/lang/Character;->isLetter(C)Z

    move-result v2

    if-eqz v2, :cond_22

    add-int/lit8 v2, v1, -0x2

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isLetter(C)Z

    move-result v2

    if-eqz v2, :cond_22

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :try_start_48
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/caverock/androidsvg/SVG$Unit;->valueOf(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Unit;
    :try_end_51
    .catch Ljava/lang/IllegalArgumentException; {:try_start_48 .. :try_end_51} :catch_53

    move-result-object v0

    goto :goto_22

    :catch_53
    move-exception v0

    new-instance v0, Lcom/caverock/androidsvg/SVGParseException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Invalid length unit specifier: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/caverock/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_6d
    move-exception v0

    new-instance v1, Lcom/caverock/androidsvg/SVGParseException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Invalid length value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/caverock/androidsvg/SVGParseException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method

.method private static parseLengthList(Ljava/lang/String;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/caverock/androidsvg/SVG$Length;",
            ">;^",
            "Lcom/caverock/androidsvg/SVGParseException;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/caverock/androidsvg/SVGParseException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_e

    new-instance v0, Lcom/caverock/androidsvg/SVGParseException;

    const-string v1, "Invalid length list (empty string)"

    invoke-direct {v0, v1}, Lcom/caverock/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    new-instance v1, Ljava/util/ArrayList;

    const/4 v0, 0x1

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v2, Lcom/caverock/androidsvg/SVGParser$TextScanner;

    invoke-direct {v2, p0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    :goto_1c
    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->empty()Z

    move-result v0

    if-eqz v0, :cond_23

    return-object v1

    :cond_23
    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextFloat()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_4a

    new-instance v0, Lcom/caverock/androidsvg/SVGParseException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Invalid length list value: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->ahead()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/caverock/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4a
    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextUnit()Lcom/caverock/androidsvg/SVG$Unit;

    move-result-object v0

    if-nez v0, :cond_52

    sget-object v0, Lcom/caverock/androidsvg/SVG$Unit;->px:Lcom/caverock/androidsvg/SVG$Unit;

    :cond_52
    new-instance v4, Lcom/caverock/androidsvg/SVG$Length;

    invoke-direct {v4, v3, v0}, Lcom/caverock/androidsvg/SVG$Length;-><init>(FLcom/caverock/androidsvg/SVG$Unit;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipCommaWhitespace()Z

    goto :goto_1c
.end method

.method private static parseLengthOrAuto(Lcom/caverock/androidsvg/SVGParser$TextScanner;)Lcom/caverock/androidsvg/SVG$Length;
    .registers 3

    const-string v0, "auto"

    invoke-virtual {p0, v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->consume(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    new-instance v0, Lcom/caverock/androidsvg/SVG$Length;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/caverock/androidsvg/SVG$Length;-><init>(F)V

    :goto_e
    return-object v0

    :cond_f
    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextLength()Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v0

    goto :goto_e
.end method

.method private static parseOpacity(Ljava/lang/String;)Ljava/lang/Float;
    .registers 5

    const/high16 v1, 0x3f800000  # 1.0f

    const/4 v0, 0x0

    :try_start_3
    invoke-static {p0}, Lcom/caverock/androidsvg/SVGParser;->parseFloat(Ljava/lang/String;)F

    move-result v2

    cmpg-float v3, v2, v0

    if-gez v3, :cond_12

    move v1, v0

    :cond_c
    :goto_c
    new-instance v0, Ljava/lang/Float;

    invoke-direct {v0, v1}, Ljava/lang/Float;-><init>(F)V
    :try_end_11
    .catch Lcom/caverock/androidsvg/SVGParseException; {:try_start_3 .. :try_end_11} :catch_18

    :goto_11
    return-object v0

    :cond_12
    cmpl-float v0, v2, v1

    if-gtz v0, :cond_c

    move v1, v2

    goto :goto_c

    :catch_18
    move-exception v0

    const/4 v0, 0x0

    check-cast v0, Ljava/lang/Float;

    goto :goto_11
.end method

.method private static parseOverflow(Ljava/lang/String;)Ljava/lang/Boolean;
    .registers 3

    const/4 v1, 0x1

    const-string v0, "visible"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-ne v0, v1, :cond_c

    :cond_9
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_b
    return-object v0

    :cond_c
    const-string v0, "auto"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eq v0, v1, :cond_9

    const-string v0, "hidden"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-ne v0, v1, :cond_1f

    :cond_1c
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_b

    :cond_1f
    const-string v0, "scroll"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eq v0, v1, :cond_1c

    const/4 v0, 0x0

    check-cast v0, Ljava/lang/Boolean;

    goto :goto_b
.end method

.method private static parsePaintSpecifier(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$SvgPaint;
    .registers 5

    const/4 v3, 0x4

    const/4 v0, 0x0

    const-string v1, "url("

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_49

    const-string v1, ")"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_38

    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    check-cast v0, Lcom/caverock/androidsvg/SVG$SvgPaint;

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_31

    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseColourSpecifer(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$SvgPaint;

    move-result-object v0

    :cond_31
    new-instance v1, Lcom/caverock/androidsvg/SVG$PaintReference;

    invoke-direct {v1, v2, v0}, Lcom/caverock/androidsvg/SVG$PaintReference;-><init>(Ljava/lang/String;Lcom/caverock/androidsvg/SVG$SvgPaint;)V

    move-object v0, v1

    :goto_37
    return-object v0

    :cond_38
    new-instance v1, Lcom/caverock/androidsvg/SVG$PaintReference;

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    check-cast v0, Lcom/caverock/androidsvg/SVG$SvgPaint;

    invoke-direct {v1, v2, v0}, Lcom/caverock/androidsvg/SVG$PaintReference;-><init>(Ljava/lang/String;Lcom/caverock/androidsvg/SVG$SvgPaint;)V

    move-object v0, v1

    goto :goto_37

    :cond_49
    invoke-static {p0}, Lcom/caverock/androidsvg/SVGParser;->parseColourSpecifer(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$SvgPaint;

    move-result-object v0

    goto :goto_37
.end method

.method private static parsePath(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$PathDefinition;
    .registers 19

    new-instance v17, Lcom/caverock/androidsvg/SVGParser$TextScanner;

    invoke-direct/range {v17 .. v18}, Lcom/caverock/androidsvg/SVGParser$TextScanner;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    new-instance v1, Lcom/caverock/androidsvg/SVG$PathDefinition;

    invoke-direct {v1}, Lcom/caverock/androidsvg/SVG$PathDefinition;-><init>()V

    invoke-virtual/range {v17 .. v17}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->empty()Z

    move-result v2

    if-eqz v2, :cond_12

    :cond_11
    :goto_11
    return-object v1

    :cond_12
    invoke-virtual/range {v17 .. v17}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextChar()Ljava/lang/Integer;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v9

    const/16 v2, 0x4d

    if-eq v9, v2, :cond_24

    const/16 v2, 0x6d

    if-ne v9, v2, :cond_11

    :cond_24
    const/4 v12, 0x0

    const/16 v16, 0x0

    const/4 v5, 0x0

    const/4 v15, 0x0

    const/4 v6, 0x0

    move v11, v3

    move v8, v5

    move v14, v6

    move/from16 v10, v16

    move v13, v12

    :goto_30
    invoke-virtual/range {v17 .. v17}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    sparse-switch v9, :sswitch_data_3c0

    goto :goto_11

    :sswitch_37
    invoke-virtual/range {v17 .. v17}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextFloat()F

    move-result v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->checkedNextFloat(F)F

    move-result v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->checkedNextFloat(F)F

    move-result v4

    new-instance v5, Ljava/lang/Float;

    invoke-direct {v5, v4}, Ljava/lang/Float;-><init>(F)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->checkedNextFlag(Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object v5

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->checkedNextFlag(Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object v6

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->checkedNextFloat(Ljava/lang/Boolean;)F

    move-result v7

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->checkedNextFloat(F)F

    move-result v8

    invoke-static {v8}, Ljava/lang/Float;->isNaN(F)Z

    move-result v12

    if-nez v12, :cond_76

    const/4 v12, 0x0

    int-to-float v12, v12

    cmpl-float v12, v2, v12

    if-ltz v12, :cond_76

    const/4 v12, 0x0

    int-to-float v12, v12

    cmpg-float v12, v3, v12

    if-gez v12, :cond_398

    :cond_76
    const-string v2, "SVGParser"

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "Bad path coords for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    int-to-char v5, v9

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, " path segment"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_11

    :sswitch_a4
    invoke-virtual/range {v17 .. v17}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextFloat()F

    move-result v4

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->checkedNextFloat(F)F

    move-result v7

    invoke-static {v7}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_e2

    const-string v2, "SVGParser"

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "Bad path coords for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    int-to-char v5, v9

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, " path segment"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_11

    :cond_e2
    const/16 v2, 0x6d

    if-ne v9, v2, :cond_ee

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVG$PathDefinition;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_ee

    add-float/2addr v7, v11

    add-float/2addr v4, v14

    :cond_ee
    invoke-virtual {v1, v4, v7}, Lcom/caverock/androidsvg/SVG$PathDefinition;->moveTo(FF)V

    const/16 v2, 0x6d

    if-ne v9, v2, :cond_11f

    const/16 v2, 0x6c

    :goto_f7
    move v3, v7

    move v12, v4

    move v6, v4

    move v5, v7

    move v15, v4

    move/from16 v16, v7

    :goto_fe
    invoke-virtual/range {v17 .. v17}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipCommaWhitespace()Z

    invoke-virtual/range {v17 .. v17}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->empty()Z

    move-result v4

    if-nez v4, :cond_11

    invoke-virtual/range {v17 .. v17}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->hasLetter()Z

    move-result v4

    if-eqz v4, :cond_3b7

    invoke-virtual/range {v17 .. v17}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextChar()Ljava/lang/Integer;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v9

    move v11, v3

    move v8, v5

    move v14, v6

    move/from16 v10, v16

    move v13, v12

    goto/16 :goto_30

    :cond_11f
    const/16 v2, 0x4c

    goto :goto_f7

    :sswitch_122
    invoke-virtual/range {v17 .. v17}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextFloat()F

    move-result v4

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->checkedNextFloat(F)F

    move-result v7

    invoke-static {v7}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_160

    const-string v2, "SVGParser"

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "Bad path coords for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    int-to-char v5, v9

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, " path segment"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_11

    :cond_160
    const/16 v2, 0x6c

    if-ne v9, v2, :cond_166

    add-float/2addr v7, v11

    add-float/2addr v4, v14

    :cond_166
    invoke-virtual {v1, v4, v7}, Lcom/caverock/androidsvg/SVG$PathDefinition;->lineTo(FF)V

    move v2, v9

    move v3, v7

    move v12, v13

    move v6, v4

    move v5, v7

    move v15, v4

    move/from16 v16, v10

    goto :goto_fe

    :sswitch_172
    invoke-virtual/range {v17 .. v17}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextFloat()F

    move-result v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->checkedNextFloat(F)F

    move-result v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->checkedNextFloat(F)F

    move-result v4

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->checkedNextFloat(F)F

    move-result v5

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->checkedNextFloat(F)F

    move-result v6

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->checkedNextFloat(F)F

    move-result v7

    invoke-static {v7}, Ljava/lang/Float;->isNaN(F)Z

    move-result v8

    if-eqz v8, :cond_1c8

    const-string v2, "SVGParser"

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "Bad path coords for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    int-to-char v5, v9

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, " path segment"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_11

    :cond_1c8
    const/16 v8, 0x63

    if-ne v9, v8, :cond_1d2

    add-float/2addr v6, v14

    add-float/2addr v2, v14

    add-float/2addr v3, v11

    add-float/2addr v4, v14

    add-float/2addr v5, v11

    add-float/2addr v7, v11

    :cond_1d2
    invoke-virtual/range {v1 .. v7}, Lcom/caverock/androidsvg/SVG$PathDefinition;->cubicTo(FFFFFF)V

    move v2, v9

    move v3, v7

    move v12, v13

    move v15, v4

    move/from16 v16, v10

    goto/16 :goto_fe

    :sswitch_1dd
    const/4 v2, 0x2

    int-to-float v2, v2

    const/4 v3, 0x2

    int-to-float v3, v3

    invoke-virtual/range {v17 .. v17}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextFloat()F

    move-result v4

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->checkedNextFloat(F)F

    move-result v5

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->checkedNextFloat(F)F

    move-result v6

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->checkedNextFloat(F)F

    move-result v7

    invoke-static {v7}, Ljava/lang/Float;->isNaN(F)Z

    move-result v12

    if-eqz v12, :cond_22b

    const-string v2, "SVGParser"

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "Bad path coords for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    int-to-char v5, v9

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, " path segment"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_11

    :cond_22b
    const/16 v12, 0x73

    if-ne v9, v12, :cond_233

    add-float/2addr v6, v14

    add-float/2addr v4, v14

    add-float/2addr v5, v11

    add-float/2addr v7, v11

    :cond_233
    mul-float/2addr v2, v14

    sub-float/2addr v2, v15

    mul-float/2addr v3, v11

    sub-float/2addr v3, v8

    invoke-virtual/range {v1 .. v7}, Lcom/caverock/androidsvg/SVG$PathDefinition;->cubicTo(FFFFFF)V

    move v2, v9

    move v3, v7

    move v12, v13

    move v15, v4

    move/from16 v16, v10

    goto/16 :goto_fe

    :sswitch_242
    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVG$PathDefinition;->close()V

    move v2, v9

    move v3, v10

    move v12, v13

    move v6, v13

    move v5, v10

    move v15, v13

    move/from16 v16, v10

    goto/16 :goto_fe

    :sswitch_24f
    invoke-virtual/range {v17 .. v17}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextFloat()F

    move-result v7

    invoke-static {v7}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_287

    const-string v2, "SVGParser"

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "Bad path coords for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    int-to-char v5, v9

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, " path segment"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_11

    :cond_287
    const/16 v2, 0x68

    if-ne v9, v2, :cond_28c

    add-float/2addr v7, v14

    :cond_28c
    invoke-virtual {v1, v7, v11}, Lcom/caverock/androidsvg/SVG$PathDefinition;->lineTo(FF)V

    move v2, v9

    move v3, v11

    move v12, v13

    move v6, v7

    move v5, v8

    move v15, v7

    move/from16 v16, v10

    goto/16 :goto_fe

    :sswitch_299
    invoke-virtual/range {v17 .. v17}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextFloat()F

    move-result v7

    invoke-static {v7}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_2d1

    const-string v2, "SVGParser"

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "Bad path coords for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    int-to-char v5, v9

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, " path segment"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_11

    :cond_2d1
    const/16 v2, 0x76

    if-ne v9, v2, :cond_2d6

    add-float/2addr v7, v11

    :cond_2d6
    invoke-virtual {v1, v14, v7}, Lcom/caverock/androidsvg/SVG$PathDefinition;->lineTo(FF)V

    move v2, v9

    move v3, v7

    move v12, v13

    move v6, v14

    move v5, v7

    move/from16 v16, v10

    goto/16 :goto_fe

    :sswitch_2e2
    invoke-virtual/range {v17 .. v17}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextFloat()F

    move-result v4

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->checkedNextFloat(F)F

    move-result v5

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->checkedNextFloat(F)F

    move-result v6

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->checkedNextFloat(F)F

    move-result v7

    invoke-static {v7}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_32c

    const-string v2, "SVGParser"

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "Bad path coords for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    int-to-char v5, v9

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, " path segment"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_11

    :cond_32c
    const/16 v2, 0x71

    if-ne v9, v2, :cond_334

    add-float/2addr v6, v14

    add-float/2addr v7, v11

    add-float/2addr v4, v14

    add-float/2addr v5, v11

    :cond_334
    invoke-virtual {v1, v4, v5, v6, v7}, Lcom/caverock/androidsvg/SVG$PathDefinition;->quadTo(FFFF)V

    move v2, v9

    move v3, v7

    move v12, v13

    move v15, v4

    move/from16 v16, v10

    goto/16 :goto_fe

    :sswitch_33f
    const/4 v2, 0x2

    int-to-float v2, v2

    mul-float/2addr v2, v14

    sub-float v4, v2, v15

    const/4 v2, 0x2

    int-to-float v2, v2

    mul-float/2addr v2, v11

    sub-float v5, v2, v8

    invoke-virtual/range {v17 .. v17}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextFloat()F

    move-result v6

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->checkedNextFloat(F)F

    move-result v7

    invoke-static {v7}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_387

    const-string v2, "SVGParser"

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "Bad path coords for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    int-to-char v5, v9

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, " path segment"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_11

    :cond_387
    const/16 v2, 0x74

    if-ne v9, v2, :cond_38d

    add-float/2addr v7, v11

    add-float/2addr v6, v14

    :cond_38d
    invoke-virtual {v1, v4, v5, v6, v7}, Lcom/caverock/androidsvg/SVG$PathDefinition;->quadTo(FFFF)V

    move v2, v9

    move v3, v7

    move v12, v13

    move v15, v4

    move/from16 v16, v10

    goto/16 :goto_fe

    :cond_398
    const/16 v12, 0x61

    if-ne v9, v12, :cond_39e

    add-float/2addr v8, v11

    add-float/2addr v7, v14

    :cond_39e
    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-virtual/range {v1 .. v8}, Lcom/caverock/androidsvg/SVG$PathDefinition;->arcTo(FFFZZFF)V

    move v2, v9

    move v3, v8

    move v12, v13

    move v6, v7

    move v5, v8

    move v15, v7

    move/from16 v16, v10

    goto/16 :goto_fe

    :cond_3b7
    move v9, v2

    move v11, v3

    move v8, v5

    move v14, v6

    move/from16 v10, v16

    move v13, v12

    goto/16 :goto_30

    :sswitch_data_3c0
    .sparse-switch
        0x41 -> :sswitch_37
        0x43 -> :sswitch_172
        0x48 -> :sswitch_24f
        0x4c -> :sswitch_122
        0x4d -> :sswitch_a4
        0x51 -> :sswitch_2e2
        0x53 -> :sswitch_1dd
        0x54 -> :sswitch_33f
        0x56 -> :sswitch_299
        0x5a -> :sswitch_242
        0x61 -> :sswitch_37
        0x63 -> :sswitch_172
        0x68 -> :sswitch_24f
        0x6c -> :sswitch_122
        0x6d -> :sswitch_a4
        0x71 -> :sswitch_2e2
        0x73 -> :sswitch_1dd
        0x74 -> :sswitch_33f
        0x76 -> :sswitch_299
        0x7a -> :sswitch_242
    .end sparse-switch
.end method

.method static parsePreserveAspectRatio(Ljava/lang/String;)Lcom/caverock/androidsvg/PreserveAspectRatio;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/caverock/androidsvg/SVGParseException;
        }
    .end annotation

    const/4 v4, 0x1

    new-instance v1, Lcom/caverock/androidsvg/SVGParser$TextScanner;

    invoke-direct {v1, p0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextToken()Ljava/lang/String;

    move-result-object v0

    const-string v2, "defer"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextToken()Ljava/lang/String;

    move-result-object v0

    :cond_1c
    invoke-static {v0}, Lcom/caverock/androidsvg/SVGParser$AspectRatioKeywords;->get(Ljava/lang/String;)Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;

    move-result-object v2

    const/4 v0, 0x0

    check-cast v0, Lcom/caverock/androidsvg/PreserveAspectRatio$Scale;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->empty()Z

    move-result v3

    if-nez v3, :cond_3a

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextToken()Ljava/lang/String;

    move-result-object v0

    const-string v1, "meet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-ne v1, v4, :cond_40

    sget-object v0, Lcom/caverock/androidsvg/PreserveAspectRatio$Scale;->meet:Lcom/caverock/androidsvg/PreserveAspectRatio$Scale;

    :cond_3a
    :goto_3a
    new-instance v1, Lcom/caverock/androidsvg/PreserveAspectRatio;

    invoke-direct {v1, v2, v0}, Lcom/caverock/androidsvg/PreserveAspectRatio;-><init>(Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;Lcom/caverock/androidsvg/PreserveAspectRatio$Scale;)V

    return-object v1

    :cond_40
    const-string v1, "slice"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-ne v0, v4, :cond_4b

    sget-object v0, Lcom/caverock/androidsvg/PreserveAspectRatio$Scale;->slice:Lcom/caverock/androidsvg/PreserveAspectRatio$Scale;

    goto :goto_3a

    :cond_4b
    new-instance v0, Lcom/caverock/androidsvg/SVGParseException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Invalid preserveAspectRatio definition: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/caverock/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static parsePreserveAspectRatio(Lcom/caverock/androidsvg/SVG$SvgPreserveAspectRatioContainer;Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/caverock/androidsvg/SVG$SvgPreserveAspectRatioContainer;",
            "Ljava/lang/String;",
            ")V^",
            "Lcom/caverock/androidsvg/SVGParseException;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/caverock/androidsvg/SVGParseException;
        }
    .end annotation

    invoke-static {p1}, Lcom/caverock/androidsvg/SVGParser;->parsePreserveAspectRatio(Ljava/lang/String;)Lcom/caverock/androidsvg/PreserveAspectRatio;

    move-result-object v0

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$SvgPreserveAspectRatioContainer;->preserveAspectRatio:Lcom/caverock/androidsvg/PreserveAspectRatio;

    return-void
.end method

.method private parseProcessingInstructionAttributes(Lcom/caverock/androidsvg/SVGParser$TextScanner;)Ljava/util/Map;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/caverock/androidsvg/SVGParser$TextScanner;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/16 v3, 0x3d

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    invoke-virtual {p1, v3}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextToken(C)Ljava/lang/String;

    move-result-object v0

    :goto_e
    if-nez v0, :cond_11

    return-object v1

    :cond_11
    invoke-virtual {p1, v3}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->consume(C)Z

    invoke-virtual {p1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextQuotedString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    invoke-virtual {p1, v3}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextToken(C)Ljava/lang/String;

    move-result-object v0

    goto :goto_e
.end method

.method private static parseRenderQuality(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Style$RenderQuality;
    .registers 3

    const/4 v1, 0x1

    const-string v0, "auto"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-ne v0, v1, :cond_c

    sget-object v0, Lcom/caverock/androidsvg/SVG$Style$RenderQuality;->auto:Lcom/caverock/androidsvg/SVG$Style$RenderQuality;

    :goto_b
    return-object v0

    :cond_c
    const-string v0, "optimizeQuality"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-ne v0, v1, :cond_17

    sget-object v0, Lcom/caverock/androidsvg/SVG$Style$RenderQuality;->optimizeQuality:Lcom/caverock/androidsvg/SVG$Style$RenderQuality;

    goto :goto_b

    :cond_17
    const-string v0, "optimizeSpeed"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-ne v0, v1, :cond_22

    sget-object v0, Lcom/caverock/androidsvg/SVG$Style$RenderQuality;->optimizeSpeed:Lcom/caverock/androidsvg/SVG$Style$RenderQuality;

    goto :goto_b

    :cond_22
    const/4 v0, 0x0

    check-cast v0, Lcom/caverock/androidsvg/SVG$Style$RenderQuality;

    goto :goto_b
.end method

.method private static parseRequiredFeatures(Ljava/lang/String;)Ljava/util/Set;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/caverock/androidsvg/SVGParser$TextScanner;

    invoke-direct {v0, p0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    :goto_a
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->empty()Z

    move-result v2

    if-eqz v2, :cond_11

    return-object v1

    :cond_11
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextToken()Ljava/lang/String;

    move-result-object v2

    const-string v3, "http://www.w3.org/TR/SVG11/feature#"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2e

    sget-object v3, Lcom/caverock/androidsvg/SVGParser;->FEATURE_STRING_PREFIX:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :goto_2a
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    goto :goto_a

    :cond_2e
    const-string v2, "UNSUPPORTED"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_2a
.end method

.method private static parseRequiredFormats(Ljava/lang/String;)Ljava/util/Set;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/caverock/androidsvg/SVGParser$TextScanner;

    invoke-direct {v0, p0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    :goto_a
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->empty()Z

    move-result v2

    if-eqz v2, :cond_11

    return-object v1

    :cond_11
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    goto :goto_a
.end method

.method private static parseStrokeDashArray(Ljava/lang/String;)[Lcom/caverock/androidsvg/SVG$Length;
    .registers 7

    const/4 v0, 0x0

    new-instance v2, Lcom/caverock/androidsvg/SVGParser$TextScanner;

    invoke-direct {v2, p0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->empty()Z

    move-result v1

    if-eqz v1, :cond_12

    check-cast v0, [Lcom/caverock/androidsvg/SVG$Length;

    :goto_11
    return-object v0

    :cond_12
    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextLength()Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v3

    if-nez v3, :cond_1b

    check-cast v0, [Lcom/caverock/androidsvg/SVG$Length;

    goto :goto_11

    :cond_1b
    invoke-virtual {v3}, Lcom/caverock/androidsvg/SVG$Length;->isNegative()Z

    move-result v1

    if-eqz v1, :cond_24

    check-cast v0, [Lcom/caverock/androidsvg/SVG$Length;

    goto :goto_11

    :cond_24
    invoke-virtual {v3}, Lcom/caverock/androidsvg/SVG$Length;->floatValue()F

    move-result v1

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_30
    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->empty()Z

    move-result v3

    if-eqz v3, :cond_3e

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-nez v1, :cond_5c

    check-cast v0, [Lcom/caverock/androidsvg/SVG$Length;

    goto :goto_11

    :cond_3e
    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipCommaWhitespace()Z

    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextLength()Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v3

    if-nez v3, :cond_4a

    check-cast v0, [Lcom/caverock/androidsvg/SVG$Length;

    goto :goto_11

    :cond_4a
    invoke-virtual {v3}, Lcom/caverock/androidsvg/SVG$Length;->isNegative()Z

    move-result v5

    if-eqz v5, :cond_53

    check-cast v0, [Lcom/caverock/androidsvg/SVG$Length;

    goto :goto_11

    :cond_53
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3}, Lcom/caverock/androidsvg/SVG$Length;->floatValue()F

    move-result v3

    add-float/2addr v1, v3

    goto :goto_30

    :cond_5c
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/caverock/androidsvg/SVG$Length;

    invoke-interface {v4, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/caverock/androidsvg/SVG$Length;

    goto :goto_11
.end method

.method private static parseStrokeLineCap(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Style$LineCap;
    .registers 2

    const-string v0, "butt"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    sget-object v0, Lcom/caverock/androidsvg/SVG$Style$LineCap;->Butt:Lcom/caverock/androidsvg/SVG$Style$LineCap;

    :goto_a
    return-object v0

    :cond_b
    const-string v0, "round"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    sget-object v0, Lcom/caverock/androidsvg/SVG$Style$LineCap;->Round:Lcom/caverock/androidsvg/SVG$Style$LineCap;

    goto :goto_a

    :cond_16
    const-string v0, "square"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    sget-object v0, Lcom/caverock/androidsvg/SVG$Style$LineCap;->Square:Lcom/caverock/androidsvg/SVG$Style$LineCap;

    goto :goto_a

    :cond_21
    const/4 v0, 0x0

    check-cast v0, Lcom/caverock/androidsvg/SVG$Style$LineCap;

    goto :goto_a
.end method

.method private static parseStrokeLineJoin(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Style$LineJoin;
    .registers 2

    const-string v0, "miter"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    sget-object v0, Lcom/caverock/androidsvg/SVG$Style$LineJoin;->Miter:Lcom/caverock/androidsvg/SVG$Style$LineJoin;

    :goto_a
    return-object v0

    :cond_b
    const-string v0, "round"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    sget-object v0, Lcom/caverock/androidsvg/SVG$Style$LineJoin;->Round:Lcom/caverock/androidsvg/SVG$Style$LineJoin;

    goto :goto_a

    :cond_16
    const-string v0, "bevel"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    sget-object v0, Lcom/caverock/androidsvg/SVG$Style$LineJoin;->Bevel:Lcom/caverock/androidsvg/SVG$Style$LineJoin;

    goto :goto_a

    :cond_21
    const/4 v0, 0x0

    check-cast v0, Lcom/caverock/androidsvg/SVG$Style$LineJoin;

    goto :goto_a
.end method

.method private static parseStyle(Lcom/caverock/androidsvg/SVG$SvgElementBase;Ljava/lang/String;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/caverock/androidsvg/SVG$SvgElementBase;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/16 v5, 0x3b

    const/16 v4, 0x3a

    new-instance v0, Lcom/caverock/androidsvg/SVGParser$TextScanner;

    const-string v1, "/\\*.*?\\*/"

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;-><init>(Ljava/lang/String;)V

    :cond_11
    :goto_11
    invoke-virtual {v0, v4}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextToken(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    invoke-virtual {v0, v4}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->consume(C)Z

    move-result v2

    if-nez v2, :cond_1f

    :cond_1e
    return-void

    :cond_1f
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    invoke-virtual {v0, v5}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextTokenWithWhitespace(C)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1e

    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->empty()Z

    move-result v3

    if-nez v3, :cond_37

    invoke-virtual {v0, v5}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->consume(C)Z

    move-result v3

    if-eqz v3, :cond_11

    :cond_37
    iget-object v3, p0, Lcom/caverock/androidsvg/SVG$SvgElementBase;->style:Lcom/caverock/androidsvg/SVG$Style;

    if-nez v3, :cond_42

    new-instance v3, Lcom/caverock/androidsvg/SVG$Style;

    invoke-direct {v3}, Lcom/caverock/androidsvg/SVG$Style;-><init>()V

    iput-object v3, p0, Lcom/caverock/androidsvg/SVG$SvgElementBase;->style:Lcom/caverock/androidsvg/SVG$Style;

    :cond_42
    iget-object v3, p0, Lcom/caverock/androidsvg/SVG$SvgElementBase;->style:Lcom/caverock/androidsvg/SVG$Style;

    invoke-static {v3, v1, v2}, Lcom/caverock/androidsvg/SVGParser;->processStyleProperty(Lcom/caverock/androidsvg/SVG$Style;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    goto :goto_11
.end method

.method private static parseSystemLanguage(Ljava/lang/String;)Ljava/util/Set;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v1, Lcom/caverock/androidsvg/SVGParser$TextScanner;

    invoke-direct {v1, p0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    :goto_a
    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->empty()Z

    move-result v0

    if-eqz v0, :cond_11

    return-object v2

    :cond_11
    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextToken()Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x2d

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_23

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_23
    new-instance v3, Ljava/util/Locale;

    const-string v4, ""

    const-string v5, ""

    invoke-direct {v3, v0, v4, v5}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    goto :goto_a
.end method

.method private static parseTextAnchor(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Style$TextAnchor;
    .registers 3

    const/4 v1, 0x1

    const-string v0, "start"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-ne v0, v1, :cond_c

    sget-object v0, Lcom/caverock/androidsvg/SVG$Style$TextAnchor;->Start:Lcom/caverock/androidsvg/SVG$Style$TextAnchor;

    :goto_b
    return-object v0

    :cond_c
    const-string v0, "middle"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-ne v0, v1, :cond_17

    sget-object v0, Lcom/caverock/androidsvg/SVG$Style$TextAnchor;->Middle:Lcom/caverock/androidsvg/SVG$Style$TextAnchor;

    goto :goto_b

    :cond_17
    const-string v0, "end"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-ne v0, v1, :cond_22

    sget-object v0, Lcom/caverock/androidsvg/SVG$Style$TextAnchor;->End:Lcom/caverock/androidsvg/SVG$Style$TextAnchor;

    goto :goto_b

    :cond_22
    const/4 v0, 0x0

    check-cast v0, Lcom/caverock/androidsvg/SVG$Style$TextAnchor;

    goto :goto_b
.end method

.method private static parseTextDecoration(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Style$TextDecoration;
    .registers 3

    const/4 v1, 0x1

    const-string v0, "none"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-ne v0, v1, :cond_c

    sget-object v0, Lcom/caverock/androidsvg/SVG$Style$TextDecoration;->None:Lcom/caverock/androidsvg/SVG$Style$TextDecoration;

    :goto_b
    return-object v0

    :cond_c
    const-string v0, "underline"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-ne v0, v1, :cond_17

    sget-object v0, Lcom/caverock/androidsvg/SVG$Style$TextDecoration;->Underline:Lcom/caverock/androidsvg/SVG$Style$TextDecoration;

    goto :goto_b

    :cond_17
    const-string v0, "overline"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-ne v0, v1, :cond_22

    sget-object v0, Lcom/caverock/androidsvg/SVG$Style$TextDecoration;->Overline:Lcom/caverock/androidsvg/SVG$Style$TextDecoration;

    goto :goto_b

    :cond_22
    const-string v0, "line-through"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-ne v0, v1, :cond_2d

    sget-object v0, Lcom/caverock/androidsvg/SVG$Style$TextDecoration;->LineThrough:Lcom/caverock/androidsvg/SVG$Style$TextDecoration;

    goto :goto_b

    :cond_2d
    const-string v0, "blink"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-ne v0, v1, :cond_38

    sget-object v0, Lcom/caverock/androidsvg/SVG$Style$TextDecoration;->Blink:Lcom/caverock/androidsvg/SVG$Style$TextDecoration;

    goto :goto_b

    :cond_38
    const/4 v0, 0x0

    check-cast v0, Lcom/caverock/androidsvg/SVG$Style$TextDecoration;

    goto :goto_b
.end method

.method private static parseTextDirection(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Style$TextDirection;
    .registers 3

    const/4 v1, 0x1

    const-string v0, "ltr"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-ne v0, v1, :cond_c

    sget-object v0, Lcom/caverock/androidsvg/SVG$Style$TextDirection;->LTR:Lcom/caverock/androidsvg/SVG$Style$TextDirection;

    :goto_b
    return-object v0

    :cond_c
    const-string v0, "rtl"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-ne v0, v1, :cond_17

    sget-object v0, Lcom/caverock/androidsvg/SVG$Style$TextDirection;->RTL:Lcom/caverock/androidsvg/SVG$Style$TextDirection;

    goto :goto_b

    :cond_17
    const/4 v0, 0x0

    check-cast v0, Lcom/caverock/androidsvg/SVG$Style$TextDirection;

    goto :goto_b
.end method

.method private parseTransformList(Ljava/lang/String;)Landroid/graphics/Matrix;
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/caverock/androidsvg/SVGParseException;
        }
    .end annotation

    const/4 v13, 0x0

    const/4 v12, 0x0

    const/16 v11, 0x29

    const/4 v10, 0x1

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    new-instance v1, Lcom/caverock/androidsvg/SVGParser$TextScanner;

    invoke-direct {v1, p1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    :goto_12
    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->empty()Z

    move-result v2

    if-eqz v2, :cond_19

    :cond_18
    return-object v0

    :cond_19
    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextFunction()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_38

    new-instance v0, Lcom/caverock/androidsvg/SVGParseException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Bad transform function encountered in transform list: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/caverock/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_38
    const-string v3, "matrix"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-ne v3, v10, :cond_c9

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextFloat()F

    move-result v2

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipCommaWhitespace()Z

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextFloat()F

    move-result v3

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipCommaWhitespace()Z

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextFloat()F

    move-result v4

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipCommaWhitespace()Z

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextFloat()F

    move-result v5

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipCommaWhitespace()Z

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextFloat()F

    move-result v6

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipCommaWhitespace()Z

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextFloat()F

    move-result v7

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    invoke-static {v7}, Ljava/lang/Float;->isNaN(F)Z

    move-result v8

    if-nez v8, :cond_79

    invoke-virtual {v1, v11}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->consume(C)Z

    move-result v8

    if-nez v8, :cond_92

    :cond_79
    new-instance v0, Lcom/caverock/androidsvg/SVGParseException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Invalid transform list: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/caverock/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_92
    new-instance v8, Landroid/graphics/Matrix;

    invoke-direct {v8}, Landroid/graphics/Matrix;-><init>()V

    const/16 v9, 0x9

    new-array v9, v9, [F

    aput v2, v9, v13

    aput v4, v9, v10

    const/4 v2, 0x2

    aput v6, v9, v2

    const/4 v2, 0x3

    aput v3, v9, v2

    const/4 v2, 0x4

    aput v5, v9, v2

    const/4 v2, 0x5

    aput v7, v9, v2

    const/4 v2, 0x6

    int-to-float v3, v13

    aput v3, v9, v2

    const/4 v2, 0x7

    int-to-float v3, v13

    aput v3, v9, v2

    const/16 v2, 0x8

    int-to-float v3, v10

    aput v3, v9, v2

    invoke-virtual {v8, v9}, Landroid/graphics/Matrix;->setValues([F)V

    invoke-virtual {v0, v8}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    :goto_be
    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->empty()Z

    move-result v2

    if-nez v2, :cond_18

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipCommaWhitespace()Z

    goto/16 :goto_12

    :cond_c9
    const-string v3, "translate"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-ne v3, v10, :cond_112

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextFloat()F

    move-result v2

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->possibleNextFloat()F

    move-result v3

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-nez v4, :cond_eb

    invoke-virtual {v1, v11}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->consume(C)Z

    move-result v4

    if-nez v4, :cond_104

    :cond_eb
    new-instance v0, Lcom/caverock/androidsvg/SVGParseException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Invalid transform list: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/caverock/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_104
    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-eqz v4, :cond_10e

    invoke-virtual {v0, v2, v12}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    goto :goto_be

    :cond_10e
    invoke-virtual {v0, v2, v3}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    goto :goto_be

    :cond_112
    const-string v3, "scale"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-ne v3, v10, :cond_15d

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextFloat()F

    move-result v2

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->possibleNextFloat()F

    move-result v3

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-nez v4, :cond_134

    invoke-virtual {v1, v11}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->consume(C)Z

    move-result v4

    if-nez v4, :cond_14d

    :cond_134
    new-instance v0, Lcom/caverock/androidsvg/SVGParseException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Invalid transform list: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/caverock/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_14d
    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-eqz v4, :cond_158

    invoke-virtual {v0, v2, v2}, Landroid/graphics/Matrix;->preScale(FF)Z

    goto/16 :goto_be

    :cond_158
    invoke-virtual {v0, v2, v3}, Landroid/graphics/Matrix;->preScale(FF)Z

    goto/16 :goto_be

    :cond_15d
    const-string v3, "rotate"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-ne v3, v10, :cond_1cb

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextFloat()F

    move-result v2

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->possibleNextFloat()F

    move-result v3

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->possibleNextFloat()F

    move-result v4

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-nez v5, :cond_183

    invoke-virtual {v1, v11}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->consume(C)Z

    move-result v5

    if-nez v5, :cond_19c

    :cond_183
    new-instance v0, Lcom/caverock/androidsvg/SVGParseException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Invalid transform list: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/caverock/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_19c
    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-eqz v5, :cond_1a7

    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->preRotate(F)Z

    goto/16 :goto_be

    :cond_1a7
    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-nez v5, :cond_1b2

    invoke-virtual {v0, v2, v3, v4}, Landroid/graphics/Matrix;->preRotate(FFF)Z

    goto/16 :goto_be

    :cond_1b2
    new-instance v0, Lcom/caverock/androidsvg/SVGParseException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Invalid transform list: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/caverock/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1cb
    const-string v3, "skewX"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-ne v3, v10, :cond_211

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextFloat()F

    move-result v2

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-nez v3, :cond_1e9

    invoke-virtual {v1, v11}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->consume(C)Z

    move-result v3

    if-nez v3, :cond_202

    :cond_1e9
    new-instance v0, Lcom/caverock/androidsvg/SVGParseException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Invalid transform list: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/caverock/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_202
    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->tan(D)D

    move-result-wide v2

    double-to-float v2, v2

    invoke-virtual {v0, v2, v12}, Landroid/graphics/Matrix;->preSkew(FF)Z

    goto/16 :goto_be

    :cond_211
    const-string v3, "skewY"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-ne v3, v10, :cond_257

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextFloat()F

    move-result v2

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-nez v3, :cond_22f

    invoke-virtual {v1, v11}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->consume(C)Z

    move-result v3

    if-nez v3, :cond_248

    :cond_22f
    new-instance v0, Lcom/caverock/androidsvg/SVGParseException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Invalid transform list: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/caverock/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_248
    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->tan(D)D

    move-result-wide v2

    double-to-float v2, v2

    invoke-virtual {v0, v12, v2}, Landroid/graphics/Matrix;->preSkew(FF)Z

    goto/16 :goto_be

    :cond_257
    new-instance v0, Lcom/caverock/androidsvg/SVGParseException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Invalid transform list fn: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/caverock/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private parseUsingSAX(Ljava/io/InputStream;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")V^",
            "Lcom/caverock/androidsvg/SVGParseException;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/caverock/androidsvg/SVGParseException;
        }
    .end annotation

    const-string v0, "SVGParser"

    const-string v1, "Falling back to SAX parser"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_7
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v0

    const-string v1, "http://xml.org/sax/features/external-general-entities"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljavax/xml/parsers/SAXParserFactory;->setFeature(Ljava/lang/String;Z)V

    const-string v1, "http://xml.org/sax/features/external-parameter-entities"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljavax/xml/parsers/SAXParserFactory;->setFeature(Ljava/lang/String;Z)V

    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v0

    new-instance v1, Lcom/caverock/androidsvg/SVGParser$SAXHandler;

    invoke-direct {v1, p0}, Lcom/caverock/androidsvg/SVGParser$SAXHandler;-><init>(Lcom/caverock/androidsvg/SVGParser;)V

    invoke-interface {v0, v1}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    const-string v2, "http://xml.org/sax/properties/lexical-handler"

    invoke-interface {v0, v2, v1}, Lorg/xml/sax/XMLReader;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v1, Lorg/xml/sax/InputSource;

    invoke-direct {v1, p1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-interface {v0, v1}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V
    :try_end_34
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_7 .. :try_end_34} :catch_35
    .catch Lorg/xml/sax/SAXException; {:try_start_7 .. :try_end_34} :catch_3e
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_34} :catch_47

    return-void

    :catch_35
    move-exception v0

    new-instance v1, Lcom/caverock/androidsvg/SVGParseException;

    const-string v2, "XML parser problem"

    invoke-direct {v1, v2, v0}, Lcom/caverock/androidsvg/SVGParseException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :catch_3e
    move-exception v0

    new-instance v1, Lcom/caverock/androidsvg/SVGParseException;

    const-string v2, "SVG parse error"

    invoke-direct {v1, v2, v0}, Lcom/caverock/androidsvg/SVGParseException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :catch_47
    move-exception v0

    new-instance v1, Lcom/caverock/androidsvg/SVGParseException;

    const-string v2, "Stream error"

    invoke-direct {v1, v2, v0}, Lcom/caverock/androidsvg/SVGParseException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method

.method private parseUsingXmlPullParser(Ljava/io/InputStream;Z)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Z)V^",
            "Lcom/caverock/androidsvg/SVGParseException;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/caverock/androidsvg/SVGParseException;
        }
    .end annotation

    const/4 v6, 0x1

    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    new-instance v2, Lcom/caverock/androidsvg/SVGParser$XPPAttributesWrapper;

    invoke-direct {v2, p0, v1}, Lcom/caverock/androidsvg/SVGParser$XPPAttributesWrapper;-><init>(Lcom/caverock/androidsvg/SVGParser;Lorg/xmlpull/v1/XmlPullParser;)V

    const-string v0, "http://xmlpull.org/v1/doc/features.html#process-docdecl"

    const/4 v3, 0x0

    invoke-interface {v1, v0, v3}, Lorg/xmlpull/v1/XmlPullParser;->setFeature(Ljava/lang/String;Z)V

    const-string v0, "http://xmlpull.org/v1/doc/features.html#process-namespaces"

    const/4 v3, 0x1

    invoke-interface {v1, v0, v3}, Lorg/xmlpull/v1/XmlPullParser;->setFeature(Ljava/lang/String;Z)V

    const/4 v0, 0x0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, p1, v0}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    :goto_20
    if-ne v0, v6, :cond_26

    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGParser;->endDocument()V

    :goto_25
    return-void

    :cond_26
    packed-switch v0, :pswitch_data_13e

    :cond_29
    :goto_29
    :pswitch_29  #0x1, 0x6, 0x7, 0x9
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->nextToken()I

    move-result v0

    goto :goto_20

    :pswitch_2e  #0x0
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGParser;->startDocument()V
    :try_end_31
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_31} :catch_32
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_31} :catch_79

    goto :goto_29

    :catch_32
    move-exception v0

    new-instance v1, Lcom/caverock/androidsvg/SVGParseException;

    const-string v2, "XML parser problem"

    invoke-direct {v1, v2, v0}, Lcom/caverock/androidsvg/SVGParseException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :pswitch_3b  #0x2
    :try_start_3b
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getPrefix()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_6d

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getPrefix()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const/16 v5, 0x3a

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_6d
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4, v0, v2}, Lcom/caverock/androidsvg/SVGParser;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    :try_end_78
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3b .. :try_end_78} :catch_32
    .catch Ljava/io/IOException; {:try_start_3b .. :try_end_78} :catch_79

    goto :goto_29

    :catch_79
    move-exception v0

    new-instance v1, Lcom/caverock/androidsvg/SVGParseException;

    const-string v2, "Stream error"

    invoke-direct {v1, v2, v0}, Lcom/caverock/androidsvg/SVGParseException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :pswitch_82  #0x3
    :try_start_82
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getPrefix()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_b4

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getPrefix()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const/16 v5, 0x3a

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_b4
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4, v0}, Lcom/caverock/androidsvg/SVGParser;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_29

    :pswitch_c1  #0x4
    const/4 v0, 0x2

    new-array v0, v0, [I

    invoke-interface {v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getTextCharacters([I)[C

    move-result-object v3

    const/4 v4, 0x0

    aget v4, v0, v4

    const/4 v5, 0x1

    aget v0, v0, v5

    invoke-direct {p0, v3, v4, v0}, Lcom/caverock/androidsvg/SVGParser;->text([CII)V

    goto/16 :goto_29

    :pswitch_d3  #0x5
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/caverock/androidsvg/SVGParser;->text(Ljava/lang/String;)V

    goto/16 :goto_29

    :pswitch_dc  #0xa
    if-eqz p2, :cond_29

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->svgDocument:Lcom/caverock/androidsvg/SVG;

    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVG;->getRootElement()Lcom/caverock/androidsvg/SVG$Svg;

    move-result-object v0

    if-nez v0, :cond_29

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v0

    const-string v3, "<!ENTITY "

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_ef
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_82 .. :try_end_ef} :catch_32
    .catch Ljava/io/IOException; {:try_start_82 .. :try_end_ef} :catch_79

    move-result v0

    if-eqz v0, :cond_29

    :try_start_f2
    const-string v0, "SVGParser"

    const-string v1, "Switching to SAX parser to process entities"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V

    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseUsingSAX(Ljava/io/InputStream;)V
    :try_end_ff
    .catch Ljava/io/IOException; {:try_start_f2 .. :try_end_ff} :catch_101
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_f2 .. :try_end_ff} :catch_32

    goto/16 :goto_25

    :catch_101
    move-exception v0

    :try_start_102
    const-string v0, "SVGParser"

    const-string v1, "Detected internal entity definitions, but could not parse them."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_25

    :pswitch_10b  #0x8
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "SVGParser"

    const-string v4, "PROC INSTR: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/caverock/androidsvg/SVGParser$TextScanner;

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/caverock/androidsvg/SVGParser$TextScanner;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextToken()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0}, Lcom/caverock/androidsvg/SVGParser;->parseProcessingInstructionAttributes(Lcom/caverock/androidsvg/SVGParser$TextScanner;)Ljava/util/Map;

    move-result-object v0

    invoke-direct {p0, v3, v0}, Lcom/caverock/androidsvg/SVGParser;->handleProcessingInstruction(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_13b
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_102 .. :try_end_13b} :catch_32
    .catch Ljava/io/IOException; {:try_start_102 .. :try_end_13b} :catch_79

    goto/16 :goto_29

    nop

    :pswitch_data_13e
    .packed-switch 0x0
        :pswitch_2e  #00000000
        :pswitch_29  #00000001
        :pswitch_3b  #00000002
        :pswitch_82  #00000003
        :pswitch_c1  #00000004
        :pswitch_d3  #00000005
        :pswitch_29  #00000006
        :pswitch_29  #00000007
        :pswitch_10b  #00000008
        :pswitch_29  #00000009
        :pswitch_dc  #0000000a
    .end packed-switch
.end method

.method private static parseVectorEffect(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Style$VectorEffect;
    .registers 3

    const/4 v1, 0x1

    const-string v0, "none"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-ne v0, v1, :cond_c

    sget-object v0, Lcom/caverock/androidsvg/SVG$Style$VectorEffect;->None:Lcom/caverock/androidsvg/SVG$Style$VectorEffect;

    :goto_b
    return-object v0

    :cond_c
    const-string v0, "non-scaling-stroke"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-ne v0, v1, :cond_17

    sget-object v0, Lcom/caverock/androidsvg/SVG$Style$VectorEffect;->NonScalingStroke:Lcom/caverock/androidsvg/SVG$Style$VectorEffect;

    goto :goto_b

    :cond_17
    const/4 v0, 0x0

    check-cast v0, Lcom/caverock/androidsvg/SVG$Style$VectorEffect;

    goto :goto_b
.end method

.method private static parseViewBox(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Box;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/caverock/androidsvg/SVGParseException;
        }
    .end annotation

    const/4 v5, 0x0

    new-instance v0, Lcom/caverock/androidsvg/SVGParser$TextScanner;

    invoke-direct {v0, p0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextFloat()F

    move-result v1

    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipCommaWhitespace()Z

    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextFloat()F

    move-result v2

    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipCommaWhitespace()Z

    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextFloat()F

    move-result v3

    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipCommaWhitespace()Z

    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextFloat()F

    move-result v0

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-nez v4, :cond_3a

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-nez v4, :cond_3a

    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-nez v4, :cond_3a

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-eqz v4, :cond_42

    :cond_3a
    new-instance v0, Lcom/caverock/androidsvg/SVGParseException;

    const-string v1, "Invalid viewBox definition - should have four numbers"

    invoke-direct {v0, v1}, Lcom/caverock/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_42
    int-to-float v4, v5

    cmpg-float v4, v3, v4

    if-gez v4, :cond_4f

    new-instance v0, Lcom/caverock/androidsvg/SVGParseException;

    const-string v1, "Invalid viewBox. width cannot be negative"

    invoke-direct {v0, v1}, Lcom/caverock/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4f
    int-to-float v4, v5

    cmpg-float v4, v0, v4

    if-gez v4, :cond_5c

    new-instance v0, Lcom/caverock/androidsvg/SVGParseException;

    const-string v1, "Invalid viewBox. height cannot be negative"

    invoke-direct {v0, v1}, Lcom/caverock/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5c
    new-instance v4, Lcom/caverock/androidsvg/SVG$Box;

    invoke-direct {v4, v1, v2, v3, v0}, Lcom/caverock/androidsvg/SVG$Box;-><init>(FFFF)V

    return-object v4
.end method

.method private path(Lorg/xml/sax/Attributes;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xml/sax/Attributes;",
            ")V^",
            "Lcom/caverock/androidsvg/SVGParseException;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/caverock/androidsvg/SVGParseException;
        }
    .end annotation

    const-string v0, "<path>"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/caverock/androidsvg/SVGParser;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-nez v0, :cond_14

    new-instance v0, Lcom/caverock/androidsvg/SVGParseException;

    const-string v1, "Invalid document. Root element must be <svg>"

    invoke-direct {v0, v1}, Lcom/caverock/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_14
    new-instance v0, Lcom/caverock/androidsvg/SVG$Path;

    invoke-direct {v0}, Lcom/caverock/androidsvg/SVG$Path;-><init>()V

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->svgDocument:Lcom/caverock/androidsvg/SVG;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$SvgObject;->document:Lcom/caverock/androidsvg/SVG;

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$SvgObject;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesCore(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesStyle(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesTransform(Lcom/caverock/androidsvg/SVG$HasTransform;Lorg/xml/sax/Attributes;)V

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesConditional(Lcom/caverock/androidsvg/SVG$SvgConditional;Lorg/xml/sax/Attributes;)V

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesPath(Lcom/caverock/androidsvg/SVG$Path;Lorg/xml/sax/Attributes;)V

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-interface {v1, v0}, Lcom/caverock/androidsvg/SVG$SvgContainer;->addChild(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    return-void
.end method

.method private pattern(Lorg/xml/sax/Attributes;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xml/sax/Attributes;",
            ")V^",
            "Lcom/caverock/androidsvg/SVGParseException;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/caverock/androidsvg/SVGParseException;
        }
    .end annotation

    const-string v0, "<pattern>"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/caverock/androidsvg/SVGParser;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-nez v0, :cond_14

    new-instance v0, Lcom/caverock/androidsvg/SVGParseException;

    const-string v1, "Invalid document. Root element must be <svg>"

    invoke-direct {v0, v1}, Lcom/caverock/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_14
    new-instance v0, Lcom/caverock/androidsvg/SVG$Pattern;

    invoke-direct {v0}, Lcom/caverock/androidsvg/SVG$Pattern;-><init>()V

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->svgDocument:Lcom/caverock/androidsvg/SVG;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$SvgObject;->document:Lcom/caverock/androidsvg/SVG;

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$SvgObject;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesCore(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesStyle(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesConditional(Lcom/caverock/androidsvg/SVG$SvgConditional;Lorg/xml/sax/Attributes;)V

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesViewBox(Lcom/caverock/androidsvg/SVG$SvgViewBoxContainer;Lorg/xml/sax/Attributes;)V

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesPattern(Lcom/caverock/androidsvg/SVG$Pattern;Lorg/xml/sax/Attributes;)V

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-interface {v1, v0}, Lcom/caverock/androidsvg/SVG$SvgContainer;->addChild(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    iput-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    return-void
.end method

.method private polygon(Lorg/xml/sax/Attributes;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xml/sax/Attributes;",
            ")V^",
            "Lcom/caverock/androidsvg/SVGParseException;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/caverock/androidsvg/SVGParseException;
        }
    .end annotation

    const-string v0, "<polygon>"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/caverock/androidsvg/SVGParser;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-nez v0, :cond_14

    new-instance v0, Lcom/caverock/androidsvg/SVGParseException;

    const-string v1, "Invalid document. Root element must be <svg>"

    invoke-direct {v0, v1}, Lcom/caverock/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_14
    new-instance v0, Lcom/caverock/androidsvg/SVG$Polygon;

    invoke-direct {v0}, Lcom/caverock/androidsvg/SVG$Polygon;-><init>()V

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->svgDocument:Lcom/caverock/androidsvg/SVG;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$SvgObject;->document:Lcom/caverock/androidsvg/SVG;

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$SvgObject;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesCore(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesStyle(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesTransform(Lcom/caverock/androidsvg/SVG$HasTransform;Lorg/xml/sax/Attributes;)V

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesConditional(Lcom/caverock/androidsvg/SVG$SvgConditional;Lorg/xml/sax/Attributes;)V

    const-string v1, "polygon"

    invoke-direct {p0, v0, p1, v1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesPolyLine(Lcom/caverock/androidsvg/SVG$PolyLine;Lorg/xml/sax/Attributes;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-interface {v1, v0}, Lcom/caverock/androidsvg/SVG$SvgContainer;->addChild(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    return-void
.end method

.method private polyline(Lorg/xml/sax/Attributes;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xml/sax/Attributes;",
            ")V^",
            "Lcom/caverock/androidsvg/SVGParseException;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/caverock/androidsvg/SVGParseException;
        }
    .end annotation

    const-string v0, "<polyline>"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/caverock/androidsvg/SVGParser;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-nez v0, :cond_14

    new-instance v0, Lcom/caverock/androidsvg/SVGParseException;

    const-string v1, "Invalid document. Root element must be <svg>"

    invoke-direct {v0, v1}, Lcom/caverock/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_14
    new-instance v0, Lcom/caverock/androidsvg/SVG$PolyLine;

    invoke-direct {v0}, Lcom/caverock/androidsvg/SVG$PolyLine;-><init>()V

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->svgDocument:Lcom/caverock/androidsvg/SVG;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$SvgObject;->document:Lcom/caverock/androidsvg/SVG;

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$SvgObject;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesCore(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesStyle(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesTransform(Lcom/caverock/androidsvg/SVG$HasTransform;Lorg/xml/sax/Attributes;)V

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesConditional(Lcom/caverock/androidsvg/SVG$SvgConditional;Lorg/xml/sax/Attributes;)V

    const-string v1, "polyline"

    invoke-direct {p0, v0, p1, v1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesPolyLine(Lcom/caverock/androidsvg/SVG$PolyLine;Lorg/xml/sax/Attributes;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-interface {v1, v0}, Lcom/caverock/androidsvg/SVG$SvgContainer;->addChild(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    return-void
.end method

.method static processStyleProperty(Lcom/caverock/androidsvg/SVG$Style;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/caverock/androidsvg/SVG$Style;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-wide/16 v4, 0x200

    const/16 v3, 0x7c

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_b

    :cond_a
    :goto_a
    return-void

    :cond_b
    const-string v0, "inherit"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    invoke-static {p1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->fromString(Ljava/lang/String;)Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    move-result-object v0

    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->fill:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    if-ne v0, v1, :cond_2d

    invoke-static {p2}, Lcom/caverock/androidsvg/SVGParser;->parsePaintSpecifier(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$SvgPaint;

    move-result-object v0

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$Style;->fill:Lcom/caverock/androidsvg/SVG$SvgPaint;

    iget-object v0, p0, Lcom/caverock/androidsvg/SVG$Style;->fill:Lcom/caverock/androidsvg/SVG$SvgPaint;

    if-eqz v0, :cond_a

    iget-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    goto :goto_a

    :cond_2d
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->fill_rule:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    if-ne v0, v1, :cond_43

    invoke-static {p2}, Lcom/caverock/androidsvg/SVGParser;->parseFillRule(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Style$FillRule;

    move-result-object v0

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$Style;->fillRule:Lcom/caverock/androidsvg/SVG$Style$FillRule;

    iget-object v0, p0, Lcom/caverock/androidsvg/SVG$Style;->fillRule:Lcom/caverock/androidsvg/SVG$Style$FillRule;

    if-eqz v0, :cond_a

    iget-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    goto :goto_a

    :cond_43
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->fill_opacity:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    if-ne v0, v1, :cond_59

    invoke-static {p2}, Lcom/caverock/androidsvg/SVGParser;->parseOpacity(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$Style;->fillOpacity:Ljava/lang/Float;

    iget-object v0, p0, Lcom/caverock/androidsvg/SVG$Style;->fillOpacity:Ljava/lang/Float;

    if-eqz v0, :cond_a

    iget-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide/16 v2, 0x4

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    goto :goto_a

    :cond_59
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->stroke:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    if-ne v0, v1, :cond_6f

    invoke-static {p2}, Lcom/caverock/androidsvg/SVGParser;->parsePaintSpecifier(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$SvgPaint;

    move-result-object v0

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$Style;->stroke:Lcom/caverock/androidsvg/SVG$SvgPaint;

    iget-object v0, p0, Lcom/caverock/androidsvg/SVG$Style;->stroke:Lcom/caverock/androidsvg/SVG$SvgPaint;

    if-eqz v0, :cond_a

    iget-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide/16 v2, 0x8

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    goto :goto_a

    :cond_6f
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->stroke_opacity:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    if-ne v0, v1, :cond_85

    invoke-static {p2}, Lcom/caverock/androidsvg/SVGParser;->parseOpacity(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$Style;->strokeOpacity:Ljava/lang/Float;

    iget-object v0, p0, Lcom/caverock/androidsvg/SVG$Style;->strokeOpacity:Ljava/lang/Float;

    if-eqz v0, :cond_a

    iget-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide/16 v2, 0x10

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    goto :goto_a

    :cond_85
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->stroke_width:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    if-ne v0, v1, :cond_9b

    :try_start_89
    invoke-static {p2}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v0

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$Style;->strokeWidth:Lcom/caverock/androidsvg/SVG$Length;

    iget-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide/16 v2, 0x20

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J
    :try_end_96
    .catch Lcom/caverock/androidsvg/SVGParseException; {:try_start_89 .. :try_end_96} :catch_98

    goto/16 :goto_a

    :catch_98
    move-exception v0

    goto/16 :goto_a

    :cond_9b
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->stroke_linecap:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    if-ne v0, v1, :cond_b2

    invoke-static {p2}, Lcom/caverock/androidsvg/SVGParser;->parseStrokeLineCap(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Style$LineCap;

    move-result-object v0

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$Style;->strokeLineCap:Lcom/caverock/androidsvg/SVG$Style$LineCap;

    iget-object v0, p0, Lcom/caverock/androidsvg/SVG$Style;->strokeLineCap:Lcom/caverock/androidsvg/SVG$Style$LineCap;

    if-eqz v0, :cond_a

    iget-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide/16 v2, 0x40

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    goto/16 :goto_a

    :cond_b2
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->stroke_linejoin:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    if-ne v0, v1, :cond_c9

    invoke-static {p2}, Lcom/caverock/androidsvg/SVGParser;->parseStrokeLineJoin(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Style$LineJoin;

    move-result-object v0

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$Style;->strokeLineJoin:Lcom/caverock/androidsvg/SVG$Style$LineJoin;

    iget-object v0, p0, Lcom/caverock/androidsvg/SVG$Style;->strokeLineJoin:Lcom/caverock/androidsvg/SVG$Style$LineJoin;

    if-eqz v0, :cond_a

    iget-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide/16 v2, 0x80

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    goto/16 :goto_a

    :cond_c9
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->stroke_miterlimit:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    if-ne v0, v1, :cond_e4

    :try_start_cd
    invoke-static {p2}, Lcom/caverock/androidsvg/SVGParser;->parseFloat(Ljava/lang/String;)F

    move-result v0

    new-instance v1, Ljava/lang/Float;

    invoke-direct {v1, v0}, Ljava/lang/Float;-><init>(F)V

    iput-object v1, p0, Lcom/caverock/androidsvg/SVG$Style;->strokeMiterLimit:Ljava/lang/Float;

    iget-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide/16 v2, 0x100

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J
    :try_end_df
    .catch Lcom/caverock/androidsvg/SVGParseException; {:try_start_cd .. :try_end_df} :catch_e1

    goto/16 :goto_a

    :catch_e1
    move-exception v0

    goto/16 :goto_a

    :cond_e4
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->stroke_dasharray:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    if-ne v0, v1, :cond_10d

    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->NONE:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_fc

    const/4 v0, 0x0

    check-cast v0, [Lcom/caverock/androidsvg/SVG$Length;

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$Style;->strokeDashArray:[Lcom/caverock/androidsvg/SVG$Length;

    iget-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    or-long/2addr v0, v4

    iput-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    goto/16 :goto_a

    :cond_fc
    invoke-static {p2}, Lcom/caverock/androidsvg/SVGParser;->parseStrokeDashArray(Ljava/lang/String;)[Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v0

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$Style;->strokeDashArray:[Lcom/caverock/androidsvg/SVG$Length;

    iget-object v0, p0, Lcom/caverock/androidsvg/SVG$Style;->strokeDashArray:[Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v0, :cond_a

    iget-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    or-long/2addr v0, v4

    iput-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    goto/16 :goto_a

    :cond_10d
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->stroke_dashoffset:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    if-ne v0, v1, :cond_123

    :try_start_111
    invoke-static {p2}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v0

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$Style;->strokeDashOffset:Lcom/caverock/androidsvg/SVG$Length;

    iget-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide/16 v2, 0x400

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J
    :try_end_11e
    .catch Lcom/caverock/androidsvg/SVGParseException; {:try_start_111 .. :try_end_11e} :catch_120

    goto/16 :goto_a

    :catch_120
    move-exception v0

    goto/16 :goto_a

    :cond_123
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->opacity:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    if-ne v0, v1, :cond_136

    invoke-static {p2}, Lcom/caverock/androidsvg/SVGParser;->parseOpacity(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$Style;->opacity:Ljava/lang/Float;

    iget-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide/16 v2, 0x800

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    goto/16 :goto_a

    :cond_136
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->color:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    if-ne v0, v1, :cond_14c

    :try_start_13a
    invoke-static {p2}, Lcom/caverock/androidsvg/SVGParser;->parseColour(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Colour;

    move-result-object v0

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$Style;->color:Lcom/caverock/androidsvg/SVG$Colour;

    iget-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide/16 v2, 0x1000

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J
    :try_end_147
    .catch Lcom/caverock/androidsvg/SVGParseException; {:try_start_13a .. :try_end_147} :catch_149

    goto/16 :goto_a

    :catch_149
    move-exception v0

    goto/16 :goto_a

    :cond_14c
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->font:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    if-ne v0, v1, :cond_155

    invoke-static {p0, p2}, Lcom/caverock/androidsvg/SVGParser;->parseFont(Lcom/caverock/androidsvg/SVG$Style;Ljava/lang/String;)V

    goto/16 :goto_a

    :cond_155
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->font_family:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    if-ne v0, v1, :cond_16c

    invoke-static {p2}, Lcom/caverock/androidsvg/SVGParser;->parseFontFamily(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$Style;->fontFamily:Ljava/util/List;

    iget-object v0, p0, Lcom/caverock/androidsvg/SVG$Style;->fontFamily:Ljava/util/List;

    if-eqz v0, :cond_a

    iget-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide/16 v2, 0x2000

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    goto/16 :goto_a

    :cond_16c
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->font_size:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    if-ne v0, v1, :cond_183

    invoke-static {p2}, Lcom/caverock/androidsvg/SVGParser;->parseFontSize(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v0

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$Style;->fontSize:Lcom/caverock/androidsvg/SVG$Length;

    iget-object v0, p0, Lcom/caverock/androidsvg/SVG$Style;->fontSize:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v0, :cond_a

    iget-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide/16 v2, 0x4000

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    goto/16 :goto_a

    :cond_183
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->font_weight:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    if-ne v0, v1, :cond_19b

    invoke-static {p2}, Lcom/caverock/androidsvg/SVGParser;->parseFontWeight(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$Style;->fontWeight:Ljava/lang/Integer;

    iget-object v0, p0, Lcom/caverock/androidsvg/SVG$Style;->fontWeight:Ljava/lang/Integer;

    if-eqz v0, :cond_a

    iget-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide/32 v2, 0x8000

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    goto/16 :goto_a

    :cond_19b
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->font_style:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    if-ne v0, v1, :cond_1b3

    invoke-static {p2}, Lcom/caverock/androidsvg/SVGParser;->parseFontStyle(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Style$FontStyle;

    move-result-object v0

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$Style;->fontStyle:Lcom/caverock/androidsvg/SVG$Style$FontStyle;

    iget-object v0, p0, Lcom/caverock/androidsvg/SVG$Style;->fontStyle:Lcom/caverock/androidsvg/SVG$Style$FontStyle;

    if-eqz v0, :cond_a

    iget-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide/32 v2, 0x10000

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    goto/16 :goto_a

    :cond_1b3
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->text_decoration:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    if-ne v0, v1, :cond_1cb

    invoke-static {p2}, Lcom/caverock/androidsvg/SVGParser;->parseTextDecoration(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Style$TextDecoration;

    move-result-object v0

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$Style;->textDecoration:Lcom/caverock/androidsvg/SVG$Style$TextDecoration;

    iget-object v0, p0, Lcom/caverock/androidsvg/SVG$Style;->textDecoration:Lcom/caverock/androidsvg/SVG$Style$TextDecoration;

    if-eqz v0, :cond_a

    iget-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide/32 v2, 0x20000

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    goto/16 :goto_a

    :cond_1cb
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->direction:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    if-ne v0, v1, :cond_1e5

    invoke-static {p2}, Lcom/caverock/androidsvg/SVGParser;->parseTextDirection(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Style$TextDirection;

    move-result-object v0

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$Style;->direction:Lcom/caverock/androidsvg/SVG$Style$TextDirection;

    iget-object v0, p0, Lcom/caverock/androidsvg/SVG$Style;->direction:Lcom/caverock/androidsvg/SVG$Style$TextDirection;

    if-eqz v0, :cond_a

    iget-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide v2, 0x1000000000L

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    goto/16 :goto_a

    :cond_1e5
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->text_anchor:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    if-ne v0, v1, :cond_1fd

    invoke-static {p2}, Lcom/caverock/androidsvg/SVGParser;->parseTextAnchor(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Style$TextAnchor;

    move-result-object v0

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$Style;->textAnchor:Lcom/caverock/androidsvg/SVG$Style$TextAnchor;

    iget-object v0, p0, Lcom/caverock/androidsvg/SVG$Style;->textAnchor:Lcom/caverock/androidsvg/SVG$Style$TextAnchor;

    if-eqz v0, :cond_a

    iget-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide/32 v2, 0x40000

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    goto/16 :goto_a

    :cond_1fd
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->overflow:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    if-ne v0, v1, :cond_215

    invoke-static {p2}, Lcom/caverock/androidsvg/SVGParser;->parseOverflow(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$Style;->overflow:Ljava/lang/Boolean;

    iget-object v0, p0, Lcom/caverock/androidsvg/SVG$Style;->overflow:Ljava/lang/Boolean;

    if-eqz v0, :cond_a

    iget-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide/32 v2, 0x80000

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    goto/16 :goto_a

    :cond_215
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->marker:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    if-ne v0, v1, :cond_231

    invoke-static {p2, p1}, Lcom/caverock/androidsvg/SVGParser;->parseFunctionalIRI(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$Style;->markerStart:Ljava/lang/String;

    iget-object v0, p0, Lcom/caverock/androidsvg/SVG$Style;->markerStart:Ljava/lang/String;

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$Style;->markerMid:Ljava/lang/String;

    iget-object v0, p0, Lcom/caverock/androidsvg/SVG$Style;->markerStart:Ljava/lang/String;

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$Style;->markerEnd:Ljava/lang/String;

    iget-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide/32 v2, 0xe00000

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    goto/16 :goto_a

    :cond_231
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->marker_start:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    if-ne v0, v1, :cond_245

    invoke-static {p2, p1}, Lcom/caverock/androidsvg/SVGParser;->parseFunctionalIRI(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$Style;->markerStart:Ljava/lang/String;

    iget-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide/32 v2, 0x200000

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    goto/16 :goto_a

    :cond_245
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->marker_mid:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    if-ne v0, v1, :cond_259

    invoke-static {p2, p1}, Lcom/caverock/androidsvg/SVGParser;->parseFunctionalIRI(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$Style;->markerMid:Ljava/lang/String;

    iget-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide/32 v2, 0x400000

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    goto/16 :goto_a

    :cond_259
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->marker_end:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    if-ne v0, v1, :cond_26d

    invoke-static {p2, p1}, Lcom/caverock/androidsvg/SVGParser;->parseFunctionalIRI(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$Style;->markerEnd:Ljava/lang/String;

    iget-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide/32 v2, 0x800000

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    goto/16 :goto_a

    :cond_26d
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->display:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    if-ne v0, v1, :cond_2bd

    invoke-virtual {p2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_a

    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->VALID_DISPLAY_VALUES:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    const-string v0, "none"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2bb

    const/4 v0, 0x0

    :goto_2aa
    new-instance v1, Ljava/lang/Boolean;

    invoke-direct {v1, v0}, Ljava/lang/Boolean;-><init>(Z)V

    iput-object v1, p0, Lcom/caverock/androidsvg/SVG$Style;->display:Ljava/lang/Boolean;

    iget-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide/32 v2, 0x1000000

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    goto/16 :goto_a

    :cond_2bb
    const/4 v0, 0x1

    goto :goto_2aa

    :cond_2bd
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->visibility:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    if-ne v0, v1, :cond_308

    invoke-virtual {p2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_a

    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->VALID_VISIBILITY_VALUES:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    new-instance v0, Ljava/lang/Boolean;

    const-string v1, "visible"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/Boolean;-><init>(Z)V

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$Style;->visibility:Ljava/lang/Boolean;

    iget-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide/32 v2, 0x2000000

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    goto/16 :goto_a

    :cond_308
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->stop_color:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    if-ne v0, v1, :cond_337

    const-string v0, "currentColor"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_324

    invoke-static {}, Lcom/caverock/androidsvg/SVG$CurrentColor;->getInstance()Lcom/caverock/androidsvg/SVG$CurrentColor;

    move-result-object v0

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$Style;->stopColor:Lcom/caverock/androidsvg/SVG$SvgPaint;

    :goto_31a
    iget-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide/32 v2, 0x4000000

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    goto/16 :goto_a

    :cond_324
    :try_start_324
    invoke-static {p2}, Lcom/caverock/androidsvg/SVGParser;->parseColour(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Colour;

    move-result-object v0

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$Style;->stopColor:Lcom/caverock/androidsvg/SVG$SvgPaint;
    :try_end_32a
    .catch Lcom/caverock/androidsvg/SVGParseException; {:try_start_324 .. :try_end_32a} :catch_32b

    goto :goto_31a

    :catch_32b
    move-exception v0

    const-string v1, "SVGParser"

    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParseException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    :cond_337
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->stop_opacity:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    if-ne v0, v1, :cond_34b

    invoke-static {p2}, Lcom/caverock/androidsvg/SVGParser;->parseOpacity(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$Style;->stopOpacity:Ljava/lang/Float;

    iget-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide/32 v2, 0x8000000

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    goto/16 :goto_a

    :cond_34b
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->clip:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    if-ne v0, v1, :cond_363

    invoke-static {p2}, Lcom/caverock/androidsvg/SVGParser;->parseClip(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$CSSClipRect;

    move-result-object v0

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$Style;->clip:Lcom/caverock/androidsvg/SVG$CSSClipRect;

    iget-object v0, p0, Lcom/caverock/androidsvg/SVG$Style;->clip:Lcom/caverock/androidsvg/SVG$CSSClipRect;

    if-eqz v0, :cond_a

    iget-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide/32 v2, 0x100000

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    goto/16 :goto_a

    :cond_363
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->clip_path:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    if-ne v0, v1, :cond_377

    invoke-static {p2, p1}, Lcom/caverock/androidsvg/SVGParser;->parseFunctionalIRI(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$Style;->clipPath:Ljava/lang/String;

    iget-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide/32 v2, 0x10000000

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    goto/16 :goto_a

    :cond_377
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->clip_rule:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    if-ne v0, v1, :cond_38b

    invoke-static {p2}, Lcom/caverock/androidsvg/SVGParser;->parseFillRule(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Style$FillRule;

    move-result-object v0

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$Style;->clipRule:Lcom/caverock/androidsvg/SVG$Style$FillRule;

    iget-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide/32 v2, 0x20000000

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    goto/16 :goto_a

    :cond_38b
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->mask:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    if-ne v0, v1, :cond_39f

    invoke-static {p2, p1}, Lcom/caverock/androidsvg/SVGParser;->parseFunctionalIRI(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$Style;->mask:Ljava/lang/String;

    iget-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide/32 v2, 0x40000000

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    goto/16 :goto_a

    :cond_39f
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->solid_color:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    if-ne v0, v1, :cond_3d0

    const-string v0, "currentColor"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3bd

    invoke-static {}, Lcom/caverock/androidsvg/SVG$CurrentColor;->getInstance()Lcom/caverock/androidsvg/SVG$CurrentColor;

    move-result-object v0

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$Style;->solidColor:Lcom/caverock/androidsvg/SVG$SvgPaint;

    :goto_3b1
    iget-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide v2, 0x80000000L

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    goto/16 :goto_a

    :cond_3bd
    :try_start_3bd
    invoke-static {p2}, Lcom/caverock/androidsvg/SVGParser;->parseColour(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Colour;

    move-result-object v0

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$Style;->solidColor:Lcom/caverock/androidsvg/SVG$SvgPaint;
    :try_end_3c3
    .catch Lcom/caverock/androidsvg/SVGParseException; {:try_start_3bd .. :try_end_3c3} :catch_3c4

    goto :goto_3b1

    :catch_3c4
    move-exception v0

    const-string v1, "SVGParser"

    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParseException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    :cond_3d0
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->solid_opacity:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    if-ne v0, v1, :cond_3e6

    invoke-static {p2}, Lcom/caverock/androidsvg/SVGParser;->parseOpacity(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$Style;->solidOpacity:Ljava/lang/Float;

    iget-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide v2, 0x100000000L

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    goto/16 :goto_a

    :cond_3e6
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->viewport_fill:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    if-ne v0, v1, :cond_417

    const-string v0, "currentColor"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_404

    invoke-static {}, Lcom/caverock/androidsvg/SVG$CurrentColor;->getInstance()Lcom/caverock/androidsvg/SVG$CurrentColor;

    move-result-object v0

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$Style;->viewportFill:Lcom/caverock/androidsvg/SVG$SvgPaint;

    :goto_3f8
    iget-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide v2, 0x200000000L

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    goto/16 :goto_a

    :cond_404
    :try_start_404
    invoke-static {p2}, Lcom/caverock/androidsvg/SVGParser;->parseColour(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Colour;

    move-result-object v0

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$Style;->viewportFill:Lcom/caverock/androidsvg/SVG$SvgPaint;
    :try_end_40a
    .catch Lcom/caverock/androidsvg/SVGParseException; {:try_start_404 .. :try_end_40a} :catch_40b

    goto :goto_3f8

    :catch_40b
    move-exception v0

    const-string v1, "SVGParser"

    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParseException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    :cond_417
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->viewport_fill_opacity:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    if-ne v0, v1, :cond_42d

    invoke-static {p2}, Lcom/caverock/androidsvg/SVGParser;->parseOpacity(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$Style;->viewportFillOpacity:Ljava/lang/Float;

    iget-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide v2, 0x400000000L

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    goto/16 :goto_a

    :cond_42d
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->vector_effect:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    if-ne v0, v1, :cond_447

    invoke-static {p2}, Lcom/caverock/androidsvg/SVGParser;->parseVectorEffect(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Style$VectorEffect;

    move-result-object v0

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$Style;->vectorEffect:Lcom/caverock/androidsvg/SVG$Style$VectorEffect;

    iget-object v0, p0, Lcom/caverock/androidsvg/SVG$Style;->vectorEffect:Lcom/caverock/androidsvg/SVG$Style$VectorEffect;

    if-eqz v0, :cond_a

    iget-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide v2, 0x800000000L

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    goto/16 :goto_a

    :cond_447
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->image_rendering:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    if-ne v0, v1, :cond_a

    invoke-static {p2}, Lcom/caverock/androidsvg/SVGParser;->parseRenderQuality(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Style$RenderQuality;

    move-result-object v0

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$Style;->imageRendering:Lcom/caverock/androidsvg/SVG$Style$RenderQuality;

    iget-object v0, p0, Lcom/caverock/androidsvg/SVG$Style;->imageRendering:Lcom/caverock/androidsvg/SVG$Style$RenderQuality;

    if-eqz v0, :cond_a

    iget-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide v2, 0x2000000000L

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    goto/16 :goto_a
.end method

.method private radialGradient(Lorg/xml/sax/Attributes;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xml/sax/Attributes;",
            ")V^",
            "Lcom/caverock/androidsvg/SVGParseException;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/caverock/androidsvg/SVGParseException;
        }
    .end annotation

    const-string v0, "<radialGradient>"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/caverock/androidsvg/SVGParser;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-nez v0, :cond_14

    new-instance v0, Lcom/caverock/androidsvg/SVGParseException;

    const-string v1, "Invalid document. Root element must be <svg>"

    invoke-direct {v0, v1}, Lcom/caverock/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_14
    new-instance v0, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;

    invoke-direct {v0}, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;-><init>()V

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->svgDocument:Lcom/caverock/androidsvg/SVG;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$SvgObject;->document:Lcom/caverock/androidsvg/SVG;

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$SvgObject;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesCore(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesStyle(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesGradient(Lcom/caverock/androidsvg/SVG$GradientElement;Lorg/xml/sax/Attributes;)V

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesRadialGradient(Lcom/caverock/androidsvg/SVG$SvgRadialGradient;Lorg/xml/sax/Attributes;)V

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-interface {v1, v0}, Lcom/caverock/androidsvg/SVG$SvgContainer;->addChild(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    iput-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    return-void
.end method

.method private rect(Lorg/xml/sax/Attributes;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xml/sax/Attributes;",
            ")V^",
            "Lcom/caverock/androidsvg/SVGParseException;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/caverock/androidsvg/SVGParseException;
        }
    .end annotation

    const-string v0, "<rect>"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/caverock/androidsvg/SVGParser;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-nez v0, :cond_14

    new-instance v0, Lcom/caverock/androidsvg/SVGParseException;

    const-string v1, "Invalid document. Root element must be <svg>"

    invoke-direct {v0, v1}, Lcom/caverock/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_14
    new-instance v0, Lcom/caverock/androidsvg/SVG$Rect;

    invoke-direct {v0}, Lcom/caverock/androidsvg/SVG$Rect;-><init>()V

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->svgDocument:Lcom/caverock/androidsvg/SVG;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$SvgObject;->document:Lcom/caverock/androidsvg/SVG;

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$SvgObject;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesCore(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesStyle(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesTransform(Lcom/caverock/androidsvg/SVG$HasTransform;Lorg/xml/sax/Attributes;)V

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesConditional(Lcom/caverock/androidsvg/SVG$SvgConditional;Lorg/xml/sax/Attributes;)V

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesRect(Lcom/caverock/androidsvg/SVG$Rect;Lorg/xml/sax/Attributes;)V

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-interface {v1, v0}, Lcom/caverock/androidsvg/SVG$SvgContainer;->addChild(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    return-void
.end method

.method private solidColor(Lorg/xml/sax/Attributes;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xml/sax/Attributes;",
            ")V^",
            "Lcom/caverock/androidsvg/SVGParseException;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/caverock/androidsvg/SVGParseException;
        }
    .end annotation

    const-string v0, "<solidColor>"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/caverock/androidsvg/SVGParser;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-nez v0, :cond_14

    new-instance v0, Lcom/caverock/androidsvg/SVGParseException;

    const-string v1, "Invalid document. Root element must be <svg>"

    invoke-direct {v0, v1}, Lcom/caverock/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_14
    new-instance v0, Lcom/caverock/androidsvg/SVG$SolidColor;

    invoke-direct {v0}, Lcom/caverock/androidsvg/SVG$SolidColor;-><init>()V

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->svgDocument:Lcom/caverock/androidsvg/SVG;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$SvgObject;->document:Lcom/caverock/androidsvg/SVG;

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$SvgObject;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesCore(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesStyle(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-interface {v1, v0}, Lcom/caverock/androidsvg/SVG$SvgContainer;->addChild(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    iput-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    return-void
.end method

.method private startDocument()V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    new-instance v0, Lcom/caverock/androidsvg/SVG;

    invoke-direct {v0}, Lcom/caverock/androidsvg/SVG;-><init>()V

    iput-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->svgDocument:Lcom/caverock/androidsvg/SVG;

    return-void
.end method

.method private startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lorg/xml/sax/Attributes;",
            ")V^",
            "Lcom/caverock/androidsvg/SVGParseException;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/caverock/androidsvg/SVGParseException;
        }
    .end annotation

    const/4 v2, 0x1

    iget-boolean v0, p0, Lcom/caverock/androidsvg/SVGParser;->ignoring:Z

    if-eqz v0, :cond_c

    iget v0, p0, Lcom/caverock/androidsvg/SVGParser;->ignoreDepth:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/caverock/androidsvg/SVGParser;->ignoreDepth:I

    :cond_b
    :goto_b
    return-void

    :cond_c
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->SVG_NAMESPACE:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    :cond_1c
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_12e

    :goto_22
    invoke-static {p2}, Lcom/caverock/androidsvg/SVGParser$SVGElem;->fromString(Ljava/lang/String;)Lcom/caverock/androidsvg/SVGParser$SVGElem;

    move-result-object v0

    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGElem;->svg:Lcom/caverock/androidsvg/SVGParser$SVGElem;

    if-ne v0, v1, :cond_2e

    invoke-direct {p0, p4}, Lcom/caverock/androidsvg/SVGParser;->svg(Lorg/xml/sax/Attributes;)V

    goto :goto_b

    :cond_2e
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGElem;->g:Lcom/caverock/androidsvg/SVGParser$SVGElem;

    if-ne v0, v1, :cond_36

    :cond_32
    invoke-direct {p0, p4}, Lcom/caverock/androidsvg/SVGParser;->g(Lorg/xml/sax/Attributes;)V

    goto :goto_b

    :cond_36
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGElem;->a:Lcom/caverock/androidsvg/SVGParser$SVGElem;

    if-eq v0, v1, :cond_32

    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGElem;->defs:Lcom/caverock/androidsvg/SVGParser$SVGElem;

    if-ne v0, v1, :cond_42

    invoke-direct {p0, p4}, Lcom/caverock/androidsvg/SVGParser;->defs(Lorg/xml/sax/Attributes;)V

    goto :goto_b

    :cond_42
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGElem;->use:Lcom/caverock/androidsvg/SVGParser$SVGElem;

    if-ne v0, v1, :cond_4a

    invoke-direct {p0, p4}, Lcom/caverock/androidsvg/SVGParser;->use(Lorg/xml/sax/Attributes;)V

    goto :goto_b

    :cond_4a
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGElem;->path:Lcom/caverock/androidsvg/SVGParser$SVGElem;

    if-ne v0, v1, :cond_52

    invoke-direct {p0, p4}, Lcom/caverock/androidsvg/SVGParser;->path(Lorg/xml/sax/Attributes;)V

    goto :goto_b

    :cond_52
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGElem;->rect:Lcom/caverock/androidsvg/SVGParser$SVGElem;

    if-ne v0, v1, :cond_5a

    invoke-direct {p0, p4}, Lcom/caverock/androidsvg/SVGParser;->rect(Lorg/xml/sax/Attributes;)V

    goto :goto_b

    :cond_5a
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGElem;->circle:Lcom/caverock/androidsvg/SVGParser$SVGElem;

    if-ne v0, v1, :cond_62

    invoke-direct {p0, p4}, Lcom/caverock/androidsvg/SVGParser;->circle(Lorg/xml/sax/Attributes;)V

    goto :goto_b

    :cond_62
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGElem;->ellipse:Lcom/caverock/androidsvg/SVGParser$SVGElem;

    if-ne v0, v1, :cond_6a

    invoke-direct {p0, p4}, Lcom/caverock/androidsvg/SVGParser;->ellipse(Lorg/xml/sax/Attributes;)V

    goto :goto_b

    :cond_6a
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGElem;->line:Lcom/caverock/androidsvg/SVGParser$SVGElem;

    if-ne v0, v1, :cond_72

    invoke-direct {p0, p4}, Lcom/caverock/androidsvg/SVGParser;->line(Lorg/xml/sax/Attributes;)V

    goto :goto_b

    :cond_72
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGElem;->polyline:Lcom/caverock/androidsvg/SVGParser$SVGElem;

    if-ne v0, v1, :cond_7a

    invoke-direct {p0, p4}, Lcom/caverock/androidsvg/SVGParser;->polyline(Lorg/xml/sax/Attributes;)V

    goto :goto_b

    :cond_7a
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGElem;->polygon:Lcom/caverock/androidsvg/SVGParser$SVGElem;

    if-ne v0, v1, :cond_82

    invoke-direct {p0, p4}, Lcom/caverock/androidsvg/SVGParser;->polygon(Lorg/xml/sax/Attributes;)V

    goto :goto_b

    :cond_82
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGElem;->text:Lcom/caverock/androidsvg/SVGParser$SVGElem;

    if-ne v0, v1, :cond_8a

    invoke-direct {p0, p4}, Lcom/caverock/androidsvg/SVGParser;->text(Lorg/xml/sax/Attributes;)V

    goto :goto_b

    :cond_8a
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGElem;->tspan:Lcom/caverock/androidsvg/SVGParser$SVGElem;

    if-ne v0, v1, :cond_93

    invoke-direct {p0, p4}, Lcom/caverock/androidsvg/SVGParser;->tspan(Lorg/xml/sax/Attributes;)V

    goto/16 :goto_b

    :cond_93
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGElem;->tref:Lcom/caverock/androidsvg/SVGParser$SVGElem;

    if-ne v0, v1, :cond_9c

    invoke-direct {p0, p4}, Lcom/caverock/androidsvg/SVGParser;->tref(Lorg/xml/sax/Attributes;)V

    goto/16 :goto_b

    :cond_9c
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGElem;->SWITCH:Lcom/caverock/androidsvg/SVGParser$SVGElem;

    if-ne v0, v1, :cond_a5

    invoke-direct {p0, p4}, Lcom/caverock/androidsvg/SVGParser;->zwitch(Lorg/xml/sax/Attributes;)V

    goto/16 :goto_b

    :cond_a5
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGElem;->symbol:Lcom/caverock/androidsvg/SVGParser$SVGElem;

    if-ne v0, v1, :cond_ae

    invoke-direct {p0, p4}, Lcom/caverock/androidsvg/SVGParser;->symbol(Lorg/xml/sax/Attributes;)V

    goto/16 :goto_b

    :cond_ae
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGElem;->marker:Lcom/caverock/androidsvg/SVGParser$SVGElem;

    if-ne v0, v1, :cond_b7

    invoke-direct {p0, p4}, Lcom/caverock/androidsvg/SVGParser;->marker(Lorg/xml/sax/Attributes;)V

    goto/16 :goto_b

    :cond_b7
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGElem;->linearGradient:Lcom/caverock/androidsvg/SVGParser$SVGElem;

    if-ne v0, v1, :cond_c0

    invoke-direct {p0, p4}, Lcom/caverock/androidsvg/SVGParser;->linearGradient(Lorg/xml/sax/Attributes;)V

    goto/16 :goto_b

    :cond_c0
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGElem;->radialGradient:Lcom/caverock/androidsvg/SVGParser$SVGElem;

    if-ne v0, v1, :cond_c9

    invoke-direct {p0, p4}, Lcom/caverock/androidsvg/SVGParser;->radialGradient(Lorg/xml/sax/Attributes;)V

    goto/16 :goto_b

    :cond_c9
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGElem;->stop:Lcom/caverock/androidsvg/SVGParser$SVGElem;

    if-ne v0, v1, :cond_d2

    invoke-direct {p0, p4}, Lcom/caverock/androidsvg/SVGParser;->stop(Lorg/xml/sax/Attributes;)V

    goto/16 :goto_b

    :cond_d2
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGElem;->title:Lcom/caverock/androidsvg/SVGParser$SVGElem;

    if-ne v0, v1, :cond_dc

    :cond_d6
    iput-boolean v2, p0, Lcom/caverock/androidsvg/SVGParser;->inMetadataElement:Z

    iput-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->metadataTag:Lcom/caverock/androidsvg/SVGParser$SVGElem;

    goto/16 :goto_b

    :cond_dc
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGElem;->desc:Lcom/caverock/androidsvg/SVGParser$SVGElem;

    if-eq v0, v1, :cond_d6

    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGElem;->clipPath:Lcom/caverock/androidsvg/SVGParser$SVGElem;

    if-ne v0, v1, :cond_e9

    invoke-direct {p0, p4}, Lcom/caverock/androidsvg/SVGParser;->clipPath(Lorg/xml/sax/Attributes;)V

    goto/16 :goto_b

    :cond_e9
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGElem;->textPath:Lcom/caverock/androidsvg/SVGParser$SVGElem;

    if-ne v0, v1, :cond_f2

    invoke-direct {p0, p4}, Lcom/caverock/androidsvg/SVGParser;->textPath(Lorg/xml/sax/Attributes;)V

    goto/16 :goto_b

    :cond_f2
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGElem;->pattern:Lcom/caverock/androidsvg/SVGParser$SVGElem;

    if-ne v0, v1, :cond_fb

    invoke-direct {p0, p4}, Lcom/caverock/androidsvg/SVGParser;->pattern(Lorg/xml/sax/Attributes;)V

    goto/16 :goto_b

    :cond_fb
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGElem;->image:Lcom/caverock/androidsvg/SVGParser$SVGElem;

    if-ne v0, v1, :cond_104

    invoke-direct {p0, p4}, Lcom/caverock/androidsvg/SVGParser;->image(Lorg/xml/sax/Attributes;)V

    goto/16 :goto_b

    :cond_104
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGElem;->view:Lcom/caverock/androidsvg/SVGParser$SVGElem;

    if-ne v0, v1, :cond_10d

    invoke-direct {p0, p4}, Lcom/caverock/androidsvg/SVGParser;->view(Lorg/xml/sax/Attributes;)V

    goto/16 :goto_b

    :cond_10d
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGElem;->mask:Lcom/caverock/androidsvg/SVGParser$SVGElem;

    if-ne v0, v1, :cond_116

    invoke-direct {p0, p4}, Lcom/caverock/androidsvg/SVGParser;->mask(Lorg/xml/sax/Attributes;)V

    goto/16 :goto_b

    :cond_116
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGElem;->style:Lcom/caverock/androidsvg/SVGParser$SVGElem;

    if-ne v0, v1, :cond_11f

    invoke-direct {p0, p4}, Lcom/caverock/androidsvg/SVGParser;->style(Lorg/xml/sax/Attributes;)V

    goto/16 :goto_b

    :cond_11f
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGElem;->solidColor:Lcom/caverock/androidsvg/SVGParser$SVGElem;

    if-ne v0, v1, :cond_128

    invoke-direct {p0, p4}, Lcom/caverock/androidsvg/SVGParser;->solidColor(Lorg/xml/sax/Attributes;)V

    goto/16 :goto_b

    :cond_128
    iput-boolean v2, p0, Lcom/caverock/androidsvg/SVGParser;->ignoring:Z

    iput v2, p0, Lcom/caverock/androidsvg/SVGParser;->ignoreDepth:I

    goto/16 :goto_b

    :cond_12e
    move-object p2, p3

    goto/16 :goto_22
.end method

.method private stop(Lorg/xml/sax/Attributes;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xml/sax/Attributes;",
            ")V^",
            "Lcom/caverock/androidsvg/SVGParseException;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/caverock/androidsvg/SVGParseException;
        }
    .end annotation

    const-string v0, "<stop>"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/caverock/androidsvg/SVGParser;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-nez v0, :cond_14

    new-instance v0, Lcom/caverock/androidsvg/SVGParseException;

    const-string v1, "Invalid document. Root element must be <svg>"

    invoke-direct {v0, v1}, Lcom/caverock/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_14
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    instance-of v0, v0, Lcom/caverock/androidsvg/SVG$GradientElement;

    if-nez v0, :cond_22

    new-instance v0, Lcom/caverock/androidsvg/SVGParseException;

    const-string v1, "Invalid document. <stop> elements are only valid inside <linearGradient> or <radialGradient> elements."

    invoke-direct {v0, v1}, Lcom/caverock/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_22
    new-instance v0, Lcom/caverock/androidsvg/SVG$Stop;

    invoke-direct {v0}, Lcom/caverock/androidsvg/SVG$Stop;-><init>()V

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->svgDocument:Lcom/caverock/androidsvg/SVG;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$SvgObject;->document:Lcom/caverock/androidsvg/SVG;

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$SvgObject;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesCore(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesStyle(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesStop(Lcom/caverock/androidsvg/SVG$Stop;Lorg/xml/sax/Attributes;)V

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-interface {v1, v0}, Lcom/caverock/androidsvg/SVG$SvgContainer;->addChild(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    iput-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    return-void
.end method

.method private style(Lorg/xml/sax/Attributes;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xml/sax/Attributes;",
            ")V^",
            "Lcom/caverock/androidsvg/SVGParseException;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/caverock/androidsvg/SVGParseException;
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v3, 0x1

    const-string v0, "<style>"

    new-array v2, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v2}, Lcom/caverock/androidsvg/SVGParser;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-nez v0, :cond_15

    new-instance v0, Lcom/caverock/androidsvg/SVGParseException;

    const-string v1, "Invalid document. Root element must be <svg>"

    invoke-direct {v0, v1}, Lcom/caverock/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_15
    const-string v0, "all"

    move v2, v3

    move v4, v1

    :goto_19
    invoke-interface {p1}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v1

    if-lt v4, v1, :cond_2c

    if-eqz v2, :cond_51

    sget-object v1, Lcom/caverock/androidsvg/CSSParser$MediaType;->screen:Lcom/caverock/androidsvg/CSSParser$MediaType;

    invoke-static {v0, v1}, Lcom/caverock/androidsvg/CSSParser;->mediaMatches(Ljava/lang/String;Lcom/caverock/androidsvg/CSSParser$MediaType;)Z

    move-result v0

    if-eqz v0, :cond_51

    iput-boolean v3, p0, Lcom/caverock/androidsvg/SVGParser;->inStyleElement:Z

    :goto_2b
    return-void

    :cond_2c
    invoke-interface {p1, v4}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v4}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->fromString(Ljava/lang/String;)Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    move-result-object v5

    sget-object v6, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->type:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    if-ne v5, v6, :cond_4b

    const-string v2, "text/css"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    move v2, v1

    :cond_47
    :goto_47
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_19

    :cond_4b
    sget-object v6, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->media:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    if-ne v5, v6, :cond_47

    move-object v0, v1

    goto :goto_47

    :cond_51
    iput-boolean v3, p0, Lcom/caverock/androidsvg/SVGParser;->ignoring:Z

    iput v3, p0, Lcom/caverock/androidsvg/SVGParser;->ignoreDepth:I

    goto :goto_2b
.end method

.method private svg(Lorg/xml/sax/Attributes;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xml/sax/Attributes;",
            ")V^",
            "Lcom/caverock/androidsvg/SVGParseException;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/caverock/androidsvg/SVGParseException;
        }
    .end annotation

    const-string v0, "<svg>"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/caverock/androidsvg/SVGParser;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Lcom/caverock/androidsvg/SVG$Svg;

    invoke-direct {v0}, Lcom/caverock/androidsvg/SVG$Svg;-><init>()V

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->svgDocument:Lcom/caverock/androidsvg/SVG;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$SvgObject;->document:Lcom/caverock/androidsvg/SVG;

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$SvgObject;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesCore(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesStyle(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesConditional(Lcom/caverock/androidsvg/SVG$SvgConditional;Lorg/xml/sax/Attributes;)V

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesViewBox(Lcom/caverock/androidsvg/SVG$SvgViewBoxContainer;Lorg/xml/sax/Attributes;)V

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesSVG(Lcom/caverock/androidsvg/SVG$Svg;Lorg/xml/sax/Attributes;)V

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-nez v1, :cond_30

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->svgDocument:Lcom/caverock/androidsvg/SVG;

    invoke-virtual {v1, v0}, Lcom/caverock/androidsvg/SVG;->setRootElement(Lcom/caverock/androidsvg/SVG$Svg;)V

    :goto_2d
    iput-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    return-void

    :cond_30
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-interface {v1, v0}, Lcom/caverock/androidsvg/SVG$SvgContainer;->addChild(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    goto :goto_2d
.end method

.method private symbol(Lorg/xml/sax/Attributes;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xml/sax/Attributes;",
            ")V^",
            "Lcom/caverock/androidsvg/SVGParseException;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/caverock/androidsvg/SVGParseException;
        }
    .end annotation

    const-string v0, "<symbol>"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/caverock/androidsvg/SVGParser;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-nez v0, :cond_14

    new-instance v0, Lcom/caverock/androidsvg/SVGParseException;

    const-string v1, "Invalid document. Root element must be <svg>"

    invoke-direct {v0, v1}, Lcom/caverock/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_14
    new-instance v0, Lcom/caverock/androidsvg/SVG$Symbol;

    invoke-direct {v0}, Lcom/caverock/androidsvg/SVG$Symbol;-><init>()V

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->svgDocument:Lcom/caverock/androidsvg/SVG;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$SvgObject;->document:Lcom/caverock/androidsvg/SVG;

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$SvgObject;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesCore(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesStyle(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesConditional(Lcom/caverock/androidsvg/SVG$SvgConditional;Lorg/xml/sax/Attributes;)V

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesViewBox(Lcom/caverock/androidsvg/SVG$SvgViewBoxContainer;Lorg/xml/sax/Attributes;)V

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-interface {v1, v0}, Lcom/caverock/androidsvg/SVG$SvgContainer;->addChild(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    iput-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    return-void
.end method

.method private text(Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V^",
            "Lcom/caverock/androidsvg/SVGParseException;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/caverock/androidsvg/SVGParseException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/caverock/androidsvg/SVGParser;->ignoring:Z

    if-eqz v0, :cond_5

    :cond_4
    :goto_4
    return-void

    :cond_5
    iget-boolean v0, p0, Lcom/caverock/androidsvg/SVGParser;->inMetadataElement:Z

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->metadataElementContents:Ljava/lang/StringBuilder;

    if-nez v0, :cond_18

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->metadataElementContents:Ljava/lang/StringBuilder;

    :cond_18
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->metadataElementContents:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_1e
    iget-boolean v0, p0, Lcom/caverock/androidsvg/SVGParser;->inStyleElement:Z

    if-eqz v0, :cond_37

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->styleElementContents:Ljava/lang/StringBuilder;

    if-nez v0, :cond_31

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->styleElementContents:Ljava/lang/StringBuilder;

    :cond_31
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->styleElementContents:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_37
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    instance-of v0, v0, Lcom/caverock/androidsvg/SVG$TextContainer;

    if-eqz v0, :cond_4

    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGParser;->appendToTextContainer(Ljava/lang/String;)V

    goto :goto_4
.end method

.method private text(Lorg/xml/sax/Attributes;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xml/sax/Attributes;",
            ")V^",
            "Lcom/caverock/androidsvg/SVGParseException;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/caverock/androidsvg/SVGParseException;
        }
    .end annotation

    const-string v0, "<text>"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/caverock/androidsvg/SVGParser;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-nez v0, :cond_14

    new-instance v0, Lcom/caverock/androidsvg/SVGParseException;

    const-string v1, "Invalid document. Root element must be <svg>"

    invoke-direct {v0, v1}, Lcom/caverock/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_14
    new-instance v0, Lcom/caverock/androidsvg/SVG$Text;

    invoke-direct {v0}, Lcom/caverock/androidsvg/SVG$Text;-><init>()V

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->svgDocument:Lcom/caverock/androidsvg/SVG;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$SvgObject;->document:Lcom/caverock/androidsvg/SVG;

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$SvgObject;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesCore(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesStyle(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesTransform(Lcom/caverock/androidsvg/SVG$HasTransform;Lorg/xml/sax/Attributes;)V

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesConditional(Lcom/caverock/androidsvg/SVG$SvgConditional;Lorg/xml/sax/Attributes;)V

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesTextPosition(Lcom/caverock/androidsvg/SVG$TextPositionedContainer;Lorg/xml/sax/Attributes;)V

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-interface {v1, v0}, Lcom/caverock/androidsvg/SVG$SvgContainer;->addChild(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    iput-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    return-void
.end method

.method private text([CII)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([CII)V^",
            "Lcom/caverock/androidsvg/SVGParseException;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/caverock/androidsvg/SVGParseException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/caverock/androidsvg/SVGParser;->ignoring:Z

    if-eqz v0, :cond_5

    :cond_4
    :goto_4
    return-void

    :cond_5
    iget-boolean v0, p0, Lcom/caverock/androidsvg/SVGParser;->inMetadataElement:Z

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->metadataElementContents:Ljava/lang/StringBuilder;

    if-nez v0, :cond_14

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p3}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->metadataElementContents:Ljava/lang/StringBuilder;

    :cond_14
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->metadataElementContents:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_1a
    iget-boolean v0, p0, Lcom/caverock/androidsvg/SVGParser;->inStyleElement:Z

    if-eqz v0, :cond_2f

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->styleElementContents:Ljava/lang/StringBuilder;

    if-nez v0, :cond_29

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p3}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->styleElementContents:Ljava/lang/StringBuilder;

    :cond_29
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->styleElementContents:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_2f
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    instance-of v0, v0, Lcom/caverock/androidsvg/SVG$TextContainer;

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-direct {p0, v0}, Lcom/caverock/androidsvg/SVGParser;->appendToTextContainer(Ljava/lang/String;)V

    goto :goto_4
.end method

.method private textPath(Lorg/xml/sax/Attributes;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xml/sax/Attributes;",
            ")V^",
            "Lcom/caverock/androidsvg/SVGParseException;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/caverock/androidsvg/SVGParseException;
        }
    .end annotation

    const-string v0, "<textPath>"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/caverock/androidsvg/SVGParser;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-nez v0, :cond_14

    new-instance v0, Lcom/caverock/androidsvg/SVGParseException;

    const-string v1, "Invalid document. Root element must be <svg>"

    invoke-direct {v0, v1}, Lcom/caverock/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_14
    new-instance v1, Lcom/caverock/androidsvg/SVG$TextPath;

    invoke-direct {v1}, Lcom/caverock/androidsvg/SVG$TextPath;-><init>()V

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->svgDocument:Lcom/caverock/androidsvg/SVG;

    iput-object v0, v1, Lcom/caverock/androidsvg/SVG$SvgObject;->document:Lcom/caverock/androidsvg/SVG;

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    iput-object v0, v1, Lcom/caverock/androidsvg/SVG$SvgObject;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-direct {p0, v1, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesCore(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    invoke-direct {p0, v1, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesStyle(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    invoke-direct {p0, v1, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesConditional(Lcom/caverock/androidsvg/SVG$SvgConditional;Lorg/xml/sax/Attributes;)V

    invoke-direct {p0, v1, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesTextPath(Lcom/caverock/androidsvg/SVG$TextPath;Lorg/xml/sax/Attributes;)V

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-interface {v0, v1}, Lcom/caverock/androidsvg/SVG$SvgContainer;->addChild(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    iput-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    iget-object v0, v1, Lcom/caverock/androidsvg/SVG$SvgObject;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    instance-of v0, v0, Lcom/caverock/androidsvg/SVG$TextRoot;

    if-eqz v0, :cond_42

    iget-object v0, v1, Lcom/caverock/androidsvg/SVG$SvgObject;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    check-cast v0, Lcom/caverock/androidsvg/SVG$TextRoot;

    invoke-virtual {v1, v0}, Lcom/caverock/androidsvg/SVG$TextPath;->setTextRoot(Lcom/caverock/androidsvg/SVG$TextRoot;)V

    :goto_41
    return-void

    :cond_42
    iget-object v0, v1, Lcom/caverock/androidsvg/SVG$SvgObject;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    check-cast v0, Lcom/caverock/androidsvg/SVG$TextChild;

    invoke-interface {v0}, Lcom/caverock/androidsvg/SVG$TextChild;->getTextRoot()Lcom/caverock/androidsvg/SVG$TextRoot;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/caverock/androidsvg/SVG$TextPath;->setTextRoot(Lcom/caverock/androidsvg/SVG$TextRoot;)V

    goto :goto_41
.end method

.method private tref(Lorg/xml/sax/Attributes;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xml/sax/Attributes;",
            ")V^",
            "Lcom/caverock/androidsvg/SVGParseException;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/caverock/androidsvg/SVGParseException;
        }
    .end annotation

    const-string v0, "<tref>"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/caverock/androidsvg/SVGParser;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-nez v0, :cond_14

    new-instance v0, Lcom/caverock/androidsvg/SVGParseException;

    const-string v1, "Invalid document. Root element must be <svg>"

    invoke-direct {v0, v1}, Lcom/caverock/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_14
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    instance-of v0, v0, Lcom/caverock/androidsvg/SVG$TextContainer;

    if-nez v0, :cond_22

    new-instance v0, Lcom/caverock/androidsvg/SVGParseException;

    const-string v1, "Invalid document. <tref> elements are only valid inside <text> or <tspan> elements."

    invoke-direct {v0, v1}, Lcom/caverock/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_22
    new-instance v1, Lcom/caverock/androidsvg/SVG$TRef;

    invoke-direct {v1}, Lcom/caverock/androidsvg/SVG$TRef;-><init>()V

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->svgDocument:Lcom/caverock/androidsvg/SVG;

    iput-object v0, v1, Lcom/caverock/androidsvg/SVG$SvgObject;->document:Lcom/caverock/androidsvg/SVG;

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    iput-object v0, v1, Lcom/caverock/androidsvg/SVG$SvgObject;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-direct {p0, v1, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesCore(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    invoke-direct {p0, v1, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesStyle(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    invoke-direct {p0, v1, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesConditional(Lcom/caverock/androidsvg/SVG$SvgConditional;Lorg/xml/sax/Attributes;)V

    invoke-direct {p0, v1, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesTRef(Lcom/caverock/androidsvg/SVG$TRef;Lorg/xml/sax/Attributes;)V

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-interface {v0, v1}, Lcom/caverock/androidsvg/SVG$SvgContainer;->addChild(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    iget-object v0, v1, Lcom/caverock/androidsvg/SVG$SvgObject;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    instance-of v0, v0, Lcom/caverock/androidsvg/SVG$TextRoot;

    if-eqz v0, :cond_4e

    iget-object v0, v1, Lcom/caverock/androidsvg/SVG$SvgObject;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    check-cast v0, Lcom/caverock/androidsvg/SVG$TextRoot;

    invoke-virtual {v1, v0}, Lcom/caverock/androidsvg/SVG$TRef;->setTextRoot(Lcom/caverock/androidsvg/SVG$TextRoot;)V

    :goto_4d
    return-void

    :cond_4e
    iget-object v0, v1, Lcom/caverock/androidsvg/SVG$SvgObject;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    check-cast v0, Lcom/caverock/androidsvg/SVG$TextChild;

    invoke-interface {v0}, Lcom/caverock/androidsvg/SVG$TextChild;->getTextRoot()Lcom/caverock/androidsvg/SVG$TextRoot;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/caverock/androidsvg/SVG$TRef;->setTextRoot(Lcom/caverock/androidsvg/SVG$TextRoot;)V

    goto :goto_4d
.end method

.method private tspan(Lorg/xml/sax/Attributes;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xml/sax/Attributes;",
            ")V^",
            "Lcom/caverock/androidsvg/SVGParseException;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/caverock/androidsvg/SVGParseException;
        }
    .end annotation

    const-string v0, "<tspan>"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/caverock/androidsvg/SVGParser;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-nez v0, :cond_14

    new-instance v0, Lcom/caverock/androidsvg/SVGParseException;

    const-string v1, "Invalid document. Root element must be <svg>"

    invoke-direct {v0, v1}, Lcom/caverock/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_14
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    instance-of v0, v0, Lcom/caverock/androidsvg/SVG$TextContainer;

    if-nez v0, :cond_22

    new-instance v0, Lcom/caverock/androidsvg/SVGParseException;

    const-string v1, "Invalid document. <tspan> elements are only valid inside <text> or other <tspan> elements."

    invoke-direct {v0, v1}, Lcom/caverock/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_22
    new-instance v1, Lcom/caverock/androidsvg/SVG$TSpan;

    invoke-direct {v1}, Lcom/caverock/androidsvg/SVG$TSpan;-><init>()V

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->svgDocument:Lcom/caverock/androidsvg/SVG;

    iput-object v0, v1, Lcom/caverock/androidsvg/SVG$SvgObject;->document:Lcom/caverock/androidsvg/SVG;

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    iput-object v0, v1, Lcom/caverock/androidsvg/SVG$SvgObject;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-direct {p0, v1, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesCore(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    invoke-direct {p0, v1, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesStyle(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    invoke-direct {p0, v1, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesConditional(Lcom/caverock/androidsvg/SVG$SvgConditional;Lorg/xml/sax/Attributes;)V

    invoke-direct {p0, v1, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesTextPosition(Lcom/caverock/androidsvg/SVG$TextPositionedContainer;Lorg/xml/sax/Attributes;)V

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-interface {v0, v1}, Lcom/caverock/androidsvg/SVG$SvgContainer;->addChild(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    iput-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    iget-object v0, v1, Lcom/caverock/androidsvg/SVG$SvgObject;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    instance-of v0, v0, Lcom/caverock/androidsvg/SVG$TextRoot;

    if-eqz v0, :cond_50

    iget-object v0, v1, Lcom/caverock/androidsvg/SVG$SvgObject;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    check-cast v0, Lcom/caverock/androidsvg/SVG$TextRoot;

    invoke-virtual {v1, v0}, Lcom/caverock/androidsvg/SVG$TSpan;->setTextRoot(Lcom/caverock/androidsvg/SVG$TextRoot;)V

    :goto_4f
    return-void

    :cond_50
    iget-object v0, v1, Lcom/caverock/androidsvg/SVG$SvgObject;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    check-cast v0, Lcom/caverock/androidsvg/SVG$TextChild;

    invoke-interface {v0}, Lcom/caverock/androidsvg/SVG$TextChild;->getTextRoot()Lcom/caverock/androidsvg/SVG$TextRoot;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/caverock/androidsvg/SVG$TSpan;->setTextRoot(Lcom/caverock/androidsvg/SVG$TextRoot;)V

    goto :goto_4f
.end method

.method private use(Lorg/xml/sax/Attributes;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xml/sax/Attributes;",
            ")V^",
            "Lcom/caverock/androidsvg/SVGParseException;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/caverock/androidsvg/SVGParseException;
        }
    .end annotation

    const-string v0, "<use>"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/caverock/androidsvg/SVGParser;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-nez v0, :cond_14

    new-instance v0, Lcom/caverock/androidsvg/SVGParseException;

    const-string v1, "Invalid document. Root element must be <svg>"

    invoke-direct {v0, v1}, Lcom/caverock/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_14
    new-instance v0, Lcom/caverock/androidsvg/SVG$Use;

    invoke-direct {v0}, Lcom/caverock/androidsvg/SVG$Use;-><init>()V

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->svgDocument:Lcom/caverock/androidsvg/SVG;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$SvgObject;->document:Lcom/caverock/androidsvg/SVG;

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$SvgObject;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesCore(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesStyle(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesTransform(Lcom/caverock/androidsvg/SVG$HasTransform;Lorg/xml/sax/Attributes;)V

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesConditional(Lcom/caverock/androidsvg/SVG$SvgConditional;Lorg/xml/sax/Attributes;)V

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesUse(Lcom/caverock/androidsvg/SVG$Use;Lorg/xml/sax/Attributes;)V

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-interface {v1, v0}, Lcom/caverock/androidsvg/SVG$SvgContainer;->addChild(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    iput-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    return-void
.end method

.method private view(Lorg/xml/sax/Attributes;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xml/sax/Attributes;",
            ")V^",
            "Lcom/caverock/androidsvg/SVGParseException;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/caverock/androidsvg/SVGParseException;
        }
    .end annotation

    const-string v0, "<view>"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/caverock/androidsvg/SVGParser;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-nez v0, :cond_14

    new-instance v0, Lcom/caverock/androidsvg/SVGParseException;

    const-string v1, "Invalid document. Root element must be <svg>"

    invoke-direct {v0, v1}, Lcom/caverock/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_14
    new-instance v0, Lcom/caverock/androidsvg/SVG$View;

    invoke-direct {v0}, Lcom/caverock/androidsvg/SVG$View;-><init>()V

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->svgDocument:Lcom/caverock/androidsvg/SVG;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$SvgObject;->document:Lcom/caverock/androidsvg/SVG;

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$SvgObject;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesCore(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesConditional(Lcom/caverock/androidsvg/SVG$SvgConditional;Lorg/xml/sax/Attributes;)V

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesViewBox(Lcom/caverock/androidsvg/SVG$SvgViewBoxContainer;Lorg/xml/sax/Attributes;)V

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-interface {v1, v0}, Lcom/caverock/androidsvg/SVG$SvgContainer;->addChild(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    iput-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    return-void
.end method

.method private zwitch(Lorg/xml/sax/Attributes;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xml/sax/Attributes;",
            ")V^",
            "Lcom/caverock/androidsvg/SVGParseException;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/caverock/androidsvg/SVGParseException;
        }
    .end annotation

    const-string v0, "<switch>"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/caverock/androidsvg/SVGParser;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-nez v0, :cond_14

    new-instance v0, Lcom/caverock/androidsvg/SVGParseException;

    const-string v1, "Invalid document. Root element must be <svg>"

    invoke-direct {v0, v1}, Lcom/caverock/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_14
    new-instance v0, Lcom/caverock/androidsvg/SVG$Switch;

    invoke-direct {v0}, Lcom/caverock/androidsvg/SVG$Switch;-><init>()V

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->svgDocument:Lcom/caverock/androidsvg/SVG;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$SvgObject;->document:Lcom/caverock/androidsvg/SVG;

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$SvgObject;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesCore(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesStyle(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesTransform(Lcom/caverock/androidsvg/SVG$HasTransform;Lorg/xml/sax/Attributes;)V

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesConditional(Lcom/caverock/androidsvg/SVG$SvgConditional;Lorg/xml/sax/Attributes;)V

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-interface {v1, v0}, Lcom/caverock/androidsvg/SVG$SvgContainer;->addChild(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    iput-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    return-void
.end method


# virtual methods
.method parse(Ljava/io/InputStream;Z)Lcom/caverock/androidsvg/SVG;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/caverock/androidsvg/SVGParseException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    if-nez v0, :cond_52

    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {v1, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    :goto_b
    const/4 v0, 0x3

    :try_start_c
    invoke-virtual {v1, v0}, Ljava/io/InputStream;->mark(I)V

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v0

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v2

    invoke-virtual {v1}, Ljava/io/InputStream;->reset()V

    shl-int/lit8 v2, v2, 0x8

    add-int/2addr v0, v2

    const v2, 0x8b1f

    if-ne v0, v2, :cond_2d

    new-instance v0, Ljava/io/BufferedInputStream;

    new-instance v2, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v2, v1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_2c} :catch_54

    move-object v1, v0

    :cond_2d
    :goto_2d
    const/16 v0, 0x1000

    :try_start_2f
    invoke-virtual {v1, v0}, Ljava/io/InputStream;->mark(I)V

    invoke-direct {p0, v1, p2}, Lcom/caverock/androidsvg/SVGParser;->parseUsingXmlPullParser(Ljava/io/InputStream;Z)V
    :try_end_35
    .catchall {:try_start_2f .. :try_end_35} :catchall_3b

    :try_start_35
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_38} :catch_49

    :goto_38
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->svgDocument:Lcom/caverock/androidsvg/SVG;

    return-object v0

    :catchall_3b
    move-exception v0

    :try_start_3c
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3f
    .catch Ljava/io/IOException; {:try_start_3c .. :try_end_3f} :catch_40

    :goto_3f
    throw v0

    :catch_40
    move-exception v1

    const-string v1, "SVGParser"

    const-string v2, "Exception thrown closing input stream"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3f

    :catch_49
    move-exception v0

    const-string v0, "SVGParser"

    const-string v1, "Exception thrown closing input stream"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_38

    :cond_52
    move-object v1, p1

    goto :goto_b

    :catch_54
    move-exception v0

    goto :goto_2d
.end method
