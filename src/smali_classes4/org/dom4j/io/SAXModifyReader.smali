.class Lorg/dom4j/io/SAXModifyReader;
.super Lorg/dom4j/io/SAXReader;


# instance fields
.field private pruneElements:Z

.field private xmlWriter:Lorg/dom4j/io/XMLWriter;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lorg/dom4j/io/SAXReader;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lorg/dom4j/io/SAXReader;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lorg/dom4j/io/SAXReader;-><init>(Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Lorg/dom4j/DocumentFactory;)V
    .registers 2

    invoke-direct {p0, p1}, Lorg/dom4j/io/SAXReader;-><init>(Lorg/dom4j/DocumentFactory;)V

    return-void
.end method

.method public constructor <init>(Lorg/dom4j/DocumentFactory;Z)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lorg/dom4j/io/SAXReader;-><init>(Lorg/dom4j/DocumentFactory;Z)V

    return-void
.end method

.method public constructor <init>(Lorg/xml/sax/XMLReader;)V
    .registers 2

    invoke-direct {p0, p1}, Lorg/dom4j/io/SAXReader;-><init>(Lorg/xml/sax/XMLReader;)V

    return-void
.end method

.method public constructor <init>(Lorg/xml/sax/XMLReader;Z)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lorg/dom4j/io/SAXReader;-><init>(Lorg/xml/sax/XMLReader;Z)V

    return-void
.end method

.method public constructor <init>(Z)V
    .registers 2

    invoke-direct {p0, p1}, Lorg/dom4j/io/SAXReader;-><init>(Z)V

    return-void
.end method


# virtual methods
.method protected createContentHandler(Lorg/xml/sax/XMLReader;)Lorg/dom4j/io/SAXContentHandler;
    .registers 5

    new-instance v0, Lorg/dom4j/io/SAXModifyContentHandler;

    invoke-virtual {p0}, Lorg/dom4j/io/SAXModifyReader;->getDocumentFactory()Lorg/dom4j/DocumentFactory;

    move-result-object v1

    invoke-virtual {p0}, Lorg/dom4j/io/SAXModifyReader;->getDispatchHandler()Lorg/dom4j/io/DispatchHandler;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/dom4j/io/SAXModifyContentHandler;-><init>(Lorg/dom4j/DocumentFactory;Lorg/dom4j/ElementHandler;)V

    iget-object v1, p0, Lorg/dom4j/io/SAXModifyReader;->xmlWriter:Lorg/dom4j/io/XMLWriter;

    invoke-virtual {v0, v1}, Lorg/dom4j/io/SAXModifyContentHandler;->setXMLWriter(Lorg/dom4j/io/XMLWriter;)V

    return-object v0
.end method

.method protected getXMLWriter()Lorg/dom4j/io/XMLWriter;
    .registers 2

    iget-object v0, p0, Lorg/dom4j/io/SAXModifyReader;->xmlWriter:Lorg/dom4j/io/XMLWriter;

    return-object v0
.end method

.method public isPruneElements()Z
    .registers 2

    iget-boolean v0, p0, Lorg/dom4j/io/SAXModifyReader;->pruneElements:Z

    return v0
.end method

.method public setPruneElements(Z)V
    .registers 2

    iput-boolean p1, p0, Lorg/dom4j/io/SAXModifyReader;->pruneElements:Z

    return-void
.end method

.method public setXMLWriter(Lorg/dom4j/io/XMLWriter;)V
    .registers 2

    iput-object p1, p0, Lorg/dom4j/io/SAXModifyReader;->xmlWriter:Lorg/dom4j/io/XMLWriter;

    return-void
.end method
