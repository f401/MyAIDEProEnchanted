.class public Lorg/dom4j/io/DocumentSource;
.super Ljavax/xml/transform/sax/SAXSource;


# static fields
.field public static final DOM4J_FEATURE:Ljava/lang/String; = "http://org.dom4j.io.DoucmentSource/feature"


# instance fields
.field private xmlReader:Lorg/xml/sax/XMLReader;


# direct methods
.method public constructor <init>(Lorg/dom4j/Document;)V
    .registers 3

    invoke-direct {p0}, Ljavax/xml/transform/sax/SAXSource;-><init>()V

    new-instance v0, Lorg/dom4j/io/SAXWriter;

    invoke-direct {v0}, Lorg/dom4j/io/SAXWriter;-><init>()V

    iput-object v0, p0, Lorg/dom4j/io/DocumentSource;->xmlReader:Lorg/xml/sax/XMLReader;

    invoke-virtual {p0, p1}, Lorg/dom4j/io/DocumentSource;->setDocument(Lorg/dom4j/Document;)V

    return-void
.end method

.method public constructor <init>(Lorg/dom4j/Node;)V
    .registers 3

    invoke-direct {p0}, Ljavax/xml/transform/sax/SAXSource;-><init>()V

    new-instance v0, Lorg/dom4j/io/SAXWriter;

    invoke-direct {v0}, Lorg/dom4j/io/SAXWriter;-><init>()V

    iput-object v0, p0, Lorg/dom4j/io/DocumentSource;->xmlReader:Lorg/xml/sax/XMLReader;

    invoke-interface {p1}, Lorg/dom4j/Node;->getDocument()Lorg/dom4j/Document;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/dom4j/io/DocumentSource;->setDocument(Lorg/dom4j/Document;)V

    return-void
.end method


# virtual methods
.method public getDocument()Lorg/dom4j/Document;
    .registers 2

    invoke-virtual {p0}, Lorg/dom4j/io/DocumentSource;->getInputSource()Lorg/xml/sax/InputSource;

    move-result-object v0

    check-cast v0, Lorg/dom4j/io/DocumentInputSource;

    invoke-virtual {v0}, Lorg/dom4j/io/DocumentInputSource;->getDocument()Lorg/dom4j/Document;

    move-result-object v0

    return-object v0
.end method

.method public getXMLReader()Lorg/xml/sax/XMLReader;
    .registers 2

    iget-object v0, p0, Lorg/dom4j/io/DocumentSource;->xmlReader:Lorg/xml/sax/XMLReader;

    return-object v0
.end method

.method public setDocument(Lorg/dom4j/Document;)V
    .registers 3

    new-instance v0, Lorg/dom4j/io/DocumentInputSource;

    invoke-direct {v0, p1}, Lorg/dom4j/io/DocumentInputSource;-><init>(Lorg/dom4j/Document;)V

    invoke-super {p0, v0}, Ljavax/xml/transform/sax/SAXSource;->setInputSource(Lorg/xml/sax/InputSource;)V

    return-void
.end method

.method public setInputSource(Lorg/xml/sax/InputSource;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    instance-of v0, p1, Lorg/dom4j/io/DocumentInputSource;

    if-eqz v0, :cond_a

    check-cast p1, Lorg/dom4j/io/DocumentInputSource;

    invoke-super {p0, p1}, Ljavax/xml/transform/sax/SAXSource;->setInputSource(Lorg/xml/sax/InputSource;)V

    return-void

    :cond_a
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setXMLReader(Lorg/xml/sax/XMLReader;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    instance-of v0, p1, Lorg/dom4j/io/SAXWriter;

    if-eqz v0, :cond_9

    check-cast p1, Lorg/dom4j/io/SAXWriter;

    iput-object p1, p0, Lorg/dom4j/io/DocumentSource;->xmlReader:Lorg/xml/sax/XMLReader;

    :goto_8
    return-void

    :cond_9
    instance-of v0, p1, Lorg/xml/sax/XMLFilter;

    if-eqz v0, :cond_23

    check-cast p1, Lorg/xml/sax/XMLFilter;

    :goto_f
    invoke-interface {p1}, Lorg/xml/sax/XMLFilter;->getParent()Lorg/xml/sax/XMLReader;

    move-result-object v0

    instance-of v1, v0, Lorg/xml/sax/XMLFilter;

    if-eqz v1, :cond_1b

    check-cast v0, Lorg/xml/sax/XMLFilter;

    move-object p1, v0

    goto :goto_f

    :cond_1b
    iget-object v0, p0, Lorg/dom4j/io/DocumentSource;->xmlReader:Lorg/xml/sax/XMLReader;

    invoke-interface {p1, v0}, Lorg/xml/sax/XMLFilter;->setParent(Lorg/xml/sax/XMLReader;)V

    iput-object p1, p0, Lorg/dom4j/io/DocumentSource;->xmlReader:Lorg/xml/sax/XMLReader;

    goto :goto_8

    :cond_23
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
