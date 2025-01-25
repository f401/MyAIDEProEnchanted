.class public Lorg/dom4j/io/DocumentResult;
.super Ljavax/xml/transform/sax/SAXResult;


# instance fields
.field private contentHandler:Lorg/dom4j/io/SAXContentHandler;


# direct methods
.method public constructor <init>()V
    .registers 2

    new-instance v0, Lorg/dom4j/io/SAXContentHandler;

    invoke-direct {v0}, Lorg/dom4j/io/SAXContentHandler;-><init>()V

    invoke-direct {p0, v0}, Lorg/dom4j/io/DocumentResult;-><init>(Lorg/dom4j/io/SAXContentHandler;)V

    return-void
.end method

.method public constructor <init>(Lorg/dom4j/io/SAXContentHandler;)V
    .registers 3

    invoke-direct {p0}, Ljavax/xml/transform/sax/SAXResult;-><init>()V

    iput-object p1, p0, Lorg/dom4j/io/DocumentResult;->contentHandler:Lorg/dom4j/io/SAXContentHandler;

    iget-object v0, p0, Lorg/dom4j/io/DocumentResult;->contentHandler:Lorg/dom4j/io/SAXContentHandler;

    invoke-super {p0, v0}, Ljavax/xml/transform/sax/SAXResult;->setHandler(Lorg/xml/sax/ContentHandler;)V

    iget-object v0, p0, Lorg/dom4j/io/DocumentResult;->contentHandler:Lorg/dom4j/io/SAXContentHandler;

    invoke-super {p0, v0}, Ljavax/xml/transform/sax/SAXResult;->setLexicalHandler(Lorg/xml/sax/ext/LexicalHandler;)V

    return-void
.end method


# virtual methods
.method public getDocument()Lorg/dom4j/Document;
    .registers 2

    iget-object v0, p0, Lorg/dom4j/io/DocumentResult;->contentHandler:Lorg/dom4j/io/SAXContentHandler;

    invoke-virtual {v0}, Lorg/dom4j/io/SAXContentHandler;->getDocument()Lorg/dom4j/Document;

    move-result-object v0

    return-object v0
.end method

.method public setHandler(Lorg/xml/sax/ContentHandler;)V
    .registers 3

    instance-of v0, p1, Lorg/dom4j/io/SAXContentHandler;

    if-eqz v0, :cond_d

    check-cast p1, Lorg/dom4j/io/SAXContentHandler;

    iput-object p1, p0, Lorg/dom4j/io/DocumentResult;->contentHandler:Lorg/dom4j/io/SAXContentHandler;

    iget-object v0, p0, Lorg/dom4j/io/DocumentResult;->contentHandler:Lorg/dom4j/io/SAXContentHandler;

    invoke-super {p0, v0}, Ljavax/xml/transform/sax/SAXResult;->setHandler(Lorg/xml/sax/ContentHandler;)V

    :cond_d
    return-void
.end method

.method public setLexicalHandler(Lorg/xml/sax/ext/LexicalHandler;)V
    .registers 3

    instance-of v0, p1, Lorg/dom4j/io/SAXContentHandler;

    if-eqz v0, :cond_d

    check-cast p1, Lorg/dom4j/io/SAXContentHandler;

    iput-object p1, p0, Lorg/dom4j/io/DocumentResult;->contentHandler:Lorg/dom4j/io/SAXContentHandler;

    iget-object v0, p0, Lorg/dom4j/io/DocumentResult;->contentHandler:Lorg/dom4j/io/SAXContentHandler;

    invoke-super {p0, v0}, Ljavax/xml/transform/sax/SAXResult;->setLexicalHandler(Lorg/xml/sax/ext/LexicalHandler;)V

    :cond_d
    return-void
.end method
