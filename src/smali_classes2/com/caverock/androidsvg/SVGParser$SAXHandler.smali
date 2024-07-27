.class Lcom/caverock/androidsvg/SVGParser$SAXHandler;
.super Lorg/xml/sax/ext/DefaultHandler2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/caverock/androidsvg/SVGParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SAXHandler"
.end annotation


# instance fields
.field private final this$0:Lcom/caverock/androidsvg/SVGParser;


# direct methods
.method public constructor <init>(Lcom/caverock/androidsvg/SVGParser;)V
    .registers 2

    invoke-direct {p0}, Lorg/xml/sax/ext/DefaultHandler2;-><init>()V

    iput-object p1, p0, Lcom/caverock/androidsvg/SVGParser$SAXHandler;->this$0:Lcom/caverock/androidsvg/SVGParser;

    return-void
.end method

.method static access$0(Lcom/caverock/androidsvg/SVGParser$SAXHandler;)Lcom/caverock/androidsvg/SVGParser;
    .registers 2

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser$SAXHandler;->this$0:Lcom/caverock/androidsvg/SVGParser;

    return-object v0
.end method


# virtual methods
.method public characters([CII)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([CII)V^",
            "Lorg/xml/sax/SAXException;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser$SAXHandler;->this$0:Lcom/caverock/androidsvg/SVGParser;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-static {v0, v1}, Lcom/caverock/androidsvg/SVGParser;->access$1000029(Lcom/caverock/androidsvg/SVGParser;Ljava/lang/String;)V

    return-void
.end method

.method public endDocument()V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V^",
            "Lorg/xml/sax/SAXException;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser$SAXHandler;->this$0:Lcom/caverock/androidsvg/SVGParser;

    invoke-static {v0}, Lcom/caverock/androidsvg/SVGParser;->access$1000033(Lcom/caverock/androidsvg/SVGParser;)V

    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V^",
            "Lorg/xml/sax/SAXException;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser$SAXHandler;->this$0:Lcom/caverock/androidsvg/SVGParser;

    invoke-static {v0, p1, p2, p3}, Lcom/caverock/androidsvg/SVGParser;->access$1000032(Lcom/caverock/androidsvg/SVGParser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public processingInstruction(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V^",
            "Lorg/xml/sax/SAXException;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    new-instance v0, Lcom/caverock/androidsvg/SVGParser$TextScanner;

    invoke-direct {v0, p2}, Lcom/caverock/androidsvg/SVGParser$TextScanner;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser$SAXHandler;->this$0:Lcom/caverock/androidsvg/SVGParser;

    invoke-static {v1, v0}, Lcom/caverock/androidsvg/SVGParser;->access$1000035(Lcom/caverock/androidsvg/SVGParser;Lcom/caverock/androidsvg/SVGParser$TextScanner;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser$SAXHandler;->this$0:Lcom/caverock/androidsvg/SVGParser;

    invoke-static {v1, p1, v0}, Lcom/caverock/androidsvg/SVGParser;->access$1000034(Lcom/caverock/androidsvg/SVGParser;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public startDocument()V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V^",
            "Lorg/xml/sax/SAXException;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser$SAXHandler;->this$0:Lcom/caverock/androidsvg/SVGParser;

    invoke-static {v0}, Lcom/caverock/androidsvg/SVGParser;->access$1000027(Lcom/caverock/androidsvg/SVGParser;)V

    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lorg/xml/sax/Attributes;",
            ")V^",
            "Lorg/xml/sax/SAXException;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser$SAXHandler;->this$0:Lcom/caverock/androidsvg/SVGParser;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/caverock/androidsvg/SVGParser;->access$1000028(Lcom/caverock/androidsvg/SVGParser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    return-void
.end method
