.class final Lorg/objectweb/asm/xml/Processor$InputSlicingHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;


# instance fields
.field private final rootHandler:Lorg/xml/sax/ContentHandler;

.field private subdocument:Z

.field private subdocumentHandler:Lorg/xml/sax/ContentHandler;

.field private subdocumentHandlerFactory:Lorg/objectweb/asm/xml/Processor$ContentHandlerFactory;

.field private subdocumentRoot:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Lorg/xml/sax/ContentHandler;Lorg/objectweb/asm/xml/Processor$ContentHandlerFactory;)V
    .registers 5

    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/objectweb/asm/xml/Processor$InputSlicingHandler;->subdocument:Z

    iput-object p1, p0, Lorg/objectweb/asm/xml/Processor$InputSlicingHandler;->subdocumentRoot:Ljava/lang/String;

    iput-object p2, p0, Lorg/objectweb/asm/xml/Processor$InputSlicingHandler;->rootHandler:Lorg/xml/sax/ContentHandler;

    iput-object p3, p0, Lorg/objectweb/asm/xml/Processor$InputSlicingHandler;->subdocumentHandlerFactory:Lorg/objectweb/asm/xml/Processor$ContentHandlerFactory;

    return-void
.end method


# virtual methods
.method public final characters([CII)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-boolean v0, p0, Lorg/objectweb/asm/xml/Processor$InputSlicingHandler;->subdocument:Z

    if-eqz v0, :cond_a

    iget-object v0, p0, Lorg/objectweb/asm/xml/Processor$InputSlicingHandler;->subdocumentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v0, p1, p2, p3}, Lorg/xml/sax/ContentHandler;->characters([CII)V

    :cond_9
    :goto_9
    return-void

    :cond_a
    iget-object v0, p0, Lorg/objectweb/asm/xml/Processor$InputSlicingHandler;->rootHandler:Lorg/xml/sax/ContentHandler;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lorg/objectweb/asm/xml/Processor$InputSlicingHandler;->rootHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v0, p1, p2, p3}, Lorg/xml/sax/ContentHandler;->characters([CII)V

    goto :goto_9
.end method

.method public final endDocument()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object v0, p0, Lorg/objectweb/asm/xml/Processor$InputSlicingHandler;->rootHandler:Lorg/xml/sax/ContentHandler;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lorg/objectweb/asm/xml/Processor$InputSlicingHandler;->rootHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v0}, Lorg/xml/sax/ContentHandler;->endDocument()V

    :cond_9
    return-void
.end method

.method public final endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-boolean v0, p0, Lorg/objectweb/asm/xml/Processor$InputSlicingHandler;->subdocument:Z

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lorg/objectweb/asm/xml/Processor$InputSlicingHandler;->subdocumentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v0, p1, p2, p3}, Lorg/xml/sax/ContentHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/objectweb/asm/xml/Processor$InputSlicingHandler;->subdocumentRoot:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lorg/objectweb/asm/xml/Processor$InputSlicingHandler;->subdocumentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v0}, Lorg/xml/sax/ContentHandler;->endDocument()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/objectweb/asm/xml/Processor$InputSlicingHandler;->subdocument:Z

    :cond_19
    :goto_19
    return-void

    :cond_1a
    iget-object v0, p0, Lorg/objectweb/asm/xml/Processor$InputSlicingHandler;->rootHandler:Lorg/xml/sax/ContentHandler;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lorg/objectweb/asm/xml/Processor$InputSlicingHandler;->rootHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v0, p1, p2, p3}, Lorg/xml/sax/ContentHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_19
.end method

.method public final startDocument()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object v0, p0, Lorg/objectweb/asm/xml/Processor$InputSlicingHandler;->rootHandler:Lorg/xml/sax/ContentHandler;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lorg/objectweb/asm/xml/Processor$InputSlicingHandler;->rootHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v0}, Lorg/xml/sax/ContentHandler;->startDocument()V

    :cond_9
    return-void
.end method

.method public final startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-boolean v0, p0, Lorg/objectweb/asm/xml/Processor$InputSlicingHandler;->subdocument:Z

    if-eqz v0, :cond_a

    iget-object v0, p0, Lorg/objectweb/asm/xml/Processor$InputSlicingHandler;->subdocumentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/xml/sax/ContentHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    :cond_9
    :goto_9
    return-void

    :cond_a
    iget-object v0, p0, Lorg/objectweb/asm/xml/Processor$InputSlicingHandler;->subdocumentRoot:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    iget-object v0, p0, Lorg/objectweb/asm/xml/Processor$InputSlicingHandler;->subdocumentHandlerFactory:Lorg/objectweb/asm/xml/Processor$ContentHandlerFactory;

    invoke-interface {v0}, Lorg/objectweb/asm/xml/Processor$ContentHandlerFactory;->createContentHandler()Lorg/xml/sax/ContentHandler;

    move-result-object v0

    iput-object v0, p0, Lorg/objectweb/asm/xml/Processor$InputSlicingHandler;->subdocumentHandler:Lorg/xml/sax/ContentHandler;

    iget-object v0, p0, Lorg/objectweb/asm/xml/Processor$InputSlicingHandler;->subdocumentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v0}, Lorg/xml/sax/ContentHandler;->startDocument()V

    iget-object v0, p0, Lorg/objectweb/asm/xml/Processor$InputSlicingHandler;->subdocumentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/xml/sax/ContentHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/objectweb/asm/xml/Processor$InputSlicingHandler;->subdocument:Z

    goto :goto_9

    :cond_28
    iget-object v0, p0, Lorg/objectweb/asm/xml/Processor$InputSlicingHandler;->rootHandler:Lorg/xml/sax/ContentHandler;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lorg/objectweb/asm/xml/Processor$InputSlicingHandler;->rootHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/xml/sax/ContentHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    goto :goto_9
.end method
