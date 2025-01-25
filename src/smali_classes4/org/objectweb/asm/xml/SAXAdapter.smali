.class public Lorg/objectweb/asm/xml/SAXAdapter;
.super Ljava/lang/Object;


# instance fields
.field private final h:Lorg/xml/sax/ContentHandler;


# direct methods
.method protected constructor <init>(Lorg/xml/sax/ContentHandler;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/objectweb/asm/xml/SAXAdapter;->h:Lorg/xml/sax/ContentHandler;

    return-void
.end method


# virtual methods
.method protected addDocumentEnd()V
    .registers 4

    :try_start_0
    iget-object v0, p0, Lorg/objectweb/asm/xml/SAXAdapter;->h:Lorg/xml/sax/ContentHandler;

    invoke-interface {v0}, Lorg/xml/sax/ContentHandler;->endDocument()V
    :try_end_5
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Lorg/xml/sax/SAXException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lorg/xml/sax/SAXException;->getException()Ljava/lang/Exception;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected addDocumentStart()V
    .registers 4

    :try_start_0
    iget-object v0, p0, Lorg/objectweb/asm/xml/SAXAdapter;->h:Lorg/xml/sax/ContentHandler;

    invoke-interface {v0}, Lorg/xml/sax/ContentHandler;->startDocument()V
    :try_end_5
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Lorg/xml/sax/SAXException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lorg/xml/sax/SAXException;->getException()Ljava/lang/Exception;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected final addElement(Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lorg/objectweb/asm/xml/SAXAdapter;->addStart(Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    invoke-virtual {p0, p1}, Lorg/objectweb/asm/xml/SAXAdapter;->addEnd(Ljava/lang/String;)V

    return-void
.end method

.method protected final addEnd(Ljava/lang/String;)V
    .registers 5

    :try_start_0
    iget-object v0, p0, Lorg/objectweb/asm/xml/SAXAdapter;->h:Lorg/xml/sax/ContentHandler;

    const-string v1, ""

    invoke-interface {v0, v1, p1, p1}, Lorg/xml/sax/ContentHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_7} :catch_8

    return-void

    :catch_8
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Lorg/xml/sax/SAXException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lorg/xml/sax/SAXException;->getException()Ljava/lang/Exception;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected final addStart(Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .registers 6

    :try_start_0
    iget-object v0, p0, Lorg/objectweb/asm/xml/SAXAdapter;->h:Lorg/xml/sax/ContentHandler;

    const-string v1, ""

    invoke-interface {v0, v1, p1, p1, p2}, Lorg/xml/sax/ContentHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    :try_end_7
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_7} :catch_8

    return-void

    :catch_8
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Lorg/xml/sax/SAXException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lorg/xml/sax/SAXException;->getException()Ljava/lang/Exception;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected getContentHandler()Lorg/xml/sax/ContentHandler;
    .registers 2

    iget-object v0, p0, Lorg/objectweb/asm/xml/SAXAdapter;->h:Lorg/xml/sax/ContentHandler;

    return-object v0
.end method
