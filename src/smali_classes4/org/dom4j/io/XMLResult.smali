.class public Lorg/dom4j/io/XMLResult;
.super Ljavax/xml/transform/sax/SAXResult;


# instance fields
.field private xmlWriter:Lorg/dom4j/io/XMLWriter;


# direct methods
.method public constructor <init>()V
    .registers 2

    new-instance v0, Lorg/dom4j/io/XMLWriter;

    invoke-direct {v0}, Lorg/dom4j/io/XMLWriter;-><init>()V

    invoke-direct {p0, v0}, Lorg/dom4j/io/XMLResult;-><init>(Lorg/dom4j/io/XMLWriter;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    new-instance v0, Lorg/dom4j/io/XMLWriter;

    invoke-direct {v0, p1}, Lorg/dom4j/io/XMLWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {p0, v0}, Lorg/dom4j/io/XMLResult;-><init>(Lorg/dom4j/io/XMLWriter;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Lorg/dom4j/io/OutputFormat;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    new-instance v0, Lorg/dom4j/io/XMLWriter;

    invoke-direct {v0, p1, p2}, Lorg/dom4j/io/XMLWriter;-><init>(Ljava/io/OutputStream;Lorg/dom4j/io/OutputFormat;)V

    invoke-direct {p0, v0}, Lorg/dom4j/io/XMLResult;-><init>(Lorg/dom4j/io/XMLWriter;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;)V
    .registers 3

    new-instance v0, Lorg/dom4j/io/XMLWriter;

    invoke-direct {v0, p1}, Lorg/dom4j/io/XMLWriter;-><init>(Ljava/io/Writer;)V

    invoke-direct {p0, v0}, Lorg/dom4j/io/XMLResult;-><init>(Lorg/dom4j/io/XMLWriter;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;Lorg/dom4j/io/OutputFormat;)V
    .registers 4

    new-instance v0, Lorg/dom4j/io/XMLWriter;

    invoke-direct {v0, p1, p2}, Lorg/dom4j/io/XMLWriter;-><init>(Ljava/io/Writer;Lorg/dom4j/io/OutputFormat;)V

    invoke-direct {p0, v0}, Lorg/dom4j/io/XMLResult;-><init>(Lorg/dom4j/io/XMLWriter;)V

    return-void
.end method

.method public constructor <init>(Lorg/dom4j/io/XMLWriter;)V
    .registers 2

    invoke-direct {p0, p1}, Ljavax/xml/transform/sax/SAXResult;-><init>(Lorg/xml/sax/ContentHandler;)V

    iput-object p1, p0, Lorg/dom4j/io/XMLResult;->xmlWriter:Lorg/dom4j/io/XMLWriter;

    invoke-virtual {p0, p1}, Lorg/dom4j/io/XMLResult;->setLexicalHandler(Lorg/xml/sax/ext/LexicalHandler;)V

    return-void
.end method


# virtual methods
.method public getHandler()Lorg/xml/sax/ContentHandler;
    .registers 2

    iget-object v0, p0, Lorg/dom4j/io/XMLResult;->xmlWriter:Lorg/dom4j/io/XMLWriter;

    return-object v0
.end method

.method public getLexicalHandler()Lorg/xml/sax/ext/LexicalHandler;
    .registers 2

    iget-object v0, p0, Lorg/dom4j/io/XMLResult;->xmlWriter:Lorg/dom4j/io/XMLWriter;

    return-object v0
.end method

.method public getXMLWriter()Lorg/dom4j/io/XMLWriter;
    .registers 2

    iget-object v0, p0, Lorg/dom4j/io/XMLResult;->xmlWriter:Lorg/dom4j/io/XMLWriter;

    return-object v0
.end method

.method public setXMLWriter(Lorg/dom4j/io/XMLWriter;)V
    .registers 3

    iput-object p1, p0, Lorg/dom4j/io/XMLResult;->xmlWriter:Lorg/dom4j/io/XMLWriter;

    iget-object v0, p0, Lorg/dom4j/io/XMLResult;->xmlWriter:Lorg/dom4j/io/XMLWriter;

    invoke-virtual {p0, v0}, Lorg/dom4j/io/XMLResult;->setHandler(Lorg/xml/sax/ContentHandler;)V

    iget-object v0, p0, Lorg/dom4j/io/XMLResult;->xmlWriter:Lorg/dom4j/io/XMLWriter;

    invoke-virtual {p0, v0}, Lorg/dom4j/io/XMLResult;->setLexicalHandler(Lorg/xml/sax/ext/LexicalHandler;)V

    return-void
.end method
