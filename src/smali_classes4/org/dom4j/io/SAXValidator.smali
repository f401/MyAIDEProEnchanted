.class public Lorg/dom4j/io/SAXValidator;
.super Ljava/lang/Object;


# instance fields
.field private errorHandler:Lorg/xml/sax/ErrorHandler;

.field private xmlReader:Lorg/xml/sax/XMLReader;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/xml/sax/XMLReader;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/dom4j/io/SAXValidator;->xmlReader:Lorg/xml/sax/XMLReader;

    return-void
.end method


# virtual methods
.method protected configureReader()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v2, 0x1

    iget-object v0, p0, Lorg/dom4j/io/SAXValidator;->xmlReader:Lorg/xml/sax/XMLReader;

    invoke-interface {v0}, Lorg/xml/sax/XMLReader;->getContentHandler()Lorg/xml/sax/ContentHandler;

    move-result-object v0

    if-nez v0, :cond_13

    iget-object v0, p0, Lorg/dom4j/io/SAXValidator;->xmlReader:Lorg/xml/sax/XMLReader;

    new-instance v1, Lorg/xml/sax/helpers/DefaultHandler;

    invoke-direct {v1}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    invoke-interface {v0, v1}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    :cond_13
    iget-object v0, p0, Lorg/dom4j/io/SAXValidator;->xmlReader:Lorg/xml/sax/XMLReader;

    const-string v1, "http://xml.org/sax/features/validation"

    invoke-interface {v0, v1, v2}, Lorg/xml/sax/XMLReader;->setFeature(Ljava/lang/String;Z)V

    iget-object v0, p0, Lorg/dom4j/io/SAXValidator;->xmlReader:Lorg/xml/sax/XMLReader;

    const-string v1, "http://xml.org/sax/features/namespaces"

    invoke-interface {v0, v1, v2}, Lorg/xml/sax/XMLReader;->setFeature(Ljava/lang/String;Z)V

    iget-object v0, p0, Lorg/dom4j/io/SAXValidator;->xmlReader:Lorg/xml/sax/XMLReader;

    const-string v1, "http://xml.org/sax/features/namespace-prefixes"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lorg/xml/sax/XMLReader;->setFeature(Ljava/lang/String;Z)V

    return-void
.end method

.method protected createXMLReader()Lorg/xml/sax/XMLReader;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-static {v0}, Lorg/dom4j/io/SAXHelper;->createXMLReader(Z)Lorg/xml/sax/XMLReader;

    move-result-object v0

    return-object v0
.end method

.method public getErrorHandler()Lorg/xml/sax/ErrorHandler;
    .registers 2

    iget-object v0, p0, Lorg/dom4j/io/SAXValidator;->errorHandler:Lorg/xml/sax/ErrorHandler;

    return-object v0
.end method

.method public getXMLReader()Lorg/xml/sax/XMLReader;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object v0, p0, Lorg/dom4j/io/SAXValidator;->xmlReader:Lorg/xml/sax/XMLReader;

    if-nez v0, :cond_d

    invoke-virtual {p0}, Lorg/dom4j/io/SAXValidator;->createXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v0

    iput-object v0, p0, Lorg/dom4j/io/SAXValidator;->xmlReader:Lorg/xml/sax/XMLReader;

    invoke-virtual {p0}, Lorg/dom4j/io/SAXValidator;->configureReader()V

    :cond_d
    iget-object v0, p0, Lorg/dom4j/io/SAXValidator;->xmlReader:Lorg/xml/sax/XMLReader;

    return-object v0
.end method

.method public setErrorHandler(Lorg/xml/sax/ErrorHandler;)V
    .registers 2

    iput-object p1, p0, Lorg/dom4j/io/SAXValidator;->errorHandler:Lorg/xml/sax/ErrorHandler;

    return-void
.end method

.method public setXMLReader(Lorg/xml/sax/XMLReader;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iput-object p1, p0, Lorg/dom4j/io/SAXValidator;->xmlReader:Lorg/xml/sax/XMLReader;

    invoke-virtual {p0}, Lorg/dom4j/io/SAXValidator;->configureReader()V

    return-void
.end method

.method public validate(Lorg/dom4j/Document;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    if-eqz p1, :cond_17

    invoke-virtual {p0}, Lorg/dom4j/io/SAXValidator;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v0

    iget-object v1, p0, Lorg/dom4j/io/SAXValidator;->errorHandler:Lorg/xml/sax/ErrorHandler;

    if-eqz v1, :cond_f

    iget-object v1, p0, Lorg/dom4j/io/SAXValidator;->errorHandler:Lorg/xml/sax/ErrorHandler;

    invoke-interface {v0, v1}, Lorg/xml/sax/XMLReader;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V

    :cond_f
    :try_start_f
    new-instance v1, Lorg/dom4j/io/DocumentInputSource;

    invoke-direct {v1, p1}, Lorg/dom4j/io/DocumentInputSource;-><init>(Lorg/dom4j/Document;)V

    invoke-interface {v0, v1}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_17} :catch_18

    :cond_17
    return-void

    :catch_18
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Caught and exception that should never happen: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
