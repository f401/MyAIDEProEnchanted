.class final Lorg/objectweb/asm/xml/Processor$OutputSlicingHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;


# instance fields
.field private final entryElement:Lorg/objectweb/asm/xml/Processor$EntryElement;

.field private isXml:Z

.field private subdocument:Z

.field private subdocumentHandler:Lorg/xml/sax/ContentHandler;

.field private subdocumentHandlerFactory:Lorg/objectweb/asm/xml/Processor$ContentHandlerFactory;

.field private final subdocumentRoot:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/objectweb/asm/xml/Processor$ContentHandlerFactory;Lorg/objectweb/asm/xml/Processor$EntryElement;Z)V
    .registers 5

    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/objectweb/asm/xml/Processor$OutputSlicingHandler;->subdocument:Z

    const-string v0, "class"

    iput-object v0, p0, Lorg/objectweb/asm/xml/Processor$OutputSlicingHandler;->subdocumentRoot:Ljava/lang/String;

    iput-object p1, p0, Lorg/objectweb/asm/xml/Processor$OutputSlicingHandler;->subdocumentHandlerFactory:Lorg/objectweb/asm/xml/Processor$ContentHandlerFactory;

    iput-object p2, p0, Lorg/objectweb/asm/xml/Processor$OutputSlicingHandler;->entryElement:Lorg/objectweb/asm/xml/Processor$EntryElement;

    iput-boolean p3, p0, Lorg/objectweb/asm/xml/Processor$OutputSlicingHandler;->isXml:Z

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

    iget-boolean v0, p0, Lorg/objectweb/asm/xml/Processor$OutputSlicingHandler;->subdocument:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Lorg/objectweb/asm/xml/Processor$OutputSlicingHandler;->subdocumentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v0, p1, p2, p3}, Lorg/xml/sax/ContentHandler;->characters([CII)V

    :cond_9
    return-void
.end method

.method public final endDocument()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    return-void
.end method

.method public final endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-boolean v0, p0, Lorg/objectweb/asm/xml/Processor$OutputSlicingHandler;->subdocument:Z

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lorg/objectweb/asm/xml/Processor$OutputSlicingHandler;->subdocumentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v0, p1, p2, p3}, Lorg/xml/sax/ContentHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/objectweb/asm/xml/Processor$OutputSlicingHandler;->subdocumentRoot:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lorg/objectweb/asm/xml/Processor$OutputSlicingHandler;->subdocumentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v0}, Lorg/xml/sax/ContentHandler;->endDocument()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/objectweb/asm/xml/Processor$OutputSlicingHandler;->subdocument:Z

    :try_start_19
    iget-object v0, p0, Lorg/objectweb/asm/xml/Processor$OutputSlicingHandler;->entryElement:Lorg/objectweb/asm/xml/Processor$EntryElement;

    invoke-interface {v0}, Lorg/objectweb/asm/xml/Processor$EntryElement;->closeEntry()V
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_1e} :catch_1f

    :cond_1e
    return-void

    :catch_1f
    move-exception v0

    new-instance v1, Lorg/xml/sax/SAXException;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method

.method public final startDocument()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    return-void
.end method

.method public final startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-boolean v0, p0, Lorg/objectweb/asm/xml/Processor$OutputSlicingHandler;->subdocument:Z

    if-eqz v0, :cond_a

    iget-object v0, p0, Lorg/objectweb/asm/xml/Processor$OutputSlicingHandler;->subdocumentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/xml/sax/ContentHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    :cond_9
    :goto_9
    return-void

    :cond_a
    iget-object v0, p0, Lorg/objectweb/asm/xml/Processor$OutputSlicingHandler;->subdocumentRoot:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "name"

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_20

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_28

    :cond_20
    new-instance v0, Lorg/xml/sax/SAXException;

    const-string v1, "Class element without name attribute."

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_28
    :try_start_28
    iget-object v1, p0, Lorg/objectweb/asm/xml/Processor$OutputSlicingHandler;->entryElement:Lorg/objectweb/asm/xml/Processor$EntryElement;

    iget-boolean v2, p0, Lorg/objectweb/asm/xml/Processor$OutputSlicingHandler;->isXml:Z

    if-eqz v2, :cond_5a

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, ".class.xml"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_41
    invoke-interface {v1, v0}, Lorg/objectweb/asm/xml/Processor$EntryElement;->openEntry(Ljava/lang/String;)Ljava/io/OutputStream;
    :try_end_44
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_44} :catch_6e

    iget-object v0, p0, Lorg/objectweb/asm/xml/Processor$OutputSlicingHandler;->subdocumentHandlerFactory:Lorg/objectweb/asm/xml/Processor$ContentHandlerFactory;

    invoke-interface {v0}, Lorg/objectweb/asm/xml/Processor$ContentHandlerFactory;->createContentHandler()Lorg/xml/sax/ContentHandler;

    move-result-object v0

    iput-object v0, p0, Lorg/objectweb/asm/xml/Processor$OutputSlicingHandler;->subdocumentHandler:Lorg/xml/sax/ContentHandler;

    iget-object v0, p0, Lorg/objectweb/asm/xml/Processor$OutputSlicingHandler;->subdocumentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v0}, Lorg/xml/sax/ContentHandler;->startDocument()V

    iget-object v0, p0, Lorg/objectweb/asm/xml/Processor$OutputSlicingHandler;->subdocumentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/xml/sax/ContentHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/objectweb/asm/xml/Processor$OutputSlicingHandler;->subdocument:Z

    goto :goto_9

    :cond_5a
    :try_start_5a
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, ".class"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_6c
    .catch Ljava/io/IOException; {:try_start_5a .. :try_end_6c} :catch_6e

    move-result-object v0

    goto :goto_41

    :catch_6e
    move-exception v0

    new-instance v1, Lorg/xml/sax/SAXException;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method
