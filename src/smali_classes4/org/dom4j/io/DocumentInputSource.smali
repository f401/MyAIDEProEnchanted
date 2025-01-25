.class Lorg/dom4j/io/DocumentInputSource;
.super Lorg/xml/sax/InputSource;


# instance fields
.field private document:Lorg/dom4j/Document;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lorg/xml/sax/InputSource;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/dom4j/Document;)V
    .registers 3

    invoke-direct {p0}, Lorg/xml/sax/InputSource;-><init>()V

    iput-object p1, p0, Lorg/dom4j/io/DocumentInputSource;->document:Lorg/dom4j/Document;

    invoke-interface {p1}, Lorg/dom4j/Document;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/dom4j/io/DocumentInputSource;->setSystemId(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getCharacterStream()Ljava/io/Reader;
    .registers 4

    :try_start_0
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    new-instance v0, Lorg/dom4j/io/XMLWriter;

    invoke-direct {v0, v1}, Lorg/dom4j/io/XMLWriter;-><init>(Ljava/io/Writer;)V

    iget-object v2, p0, Lorg/dom4j/io/DocumentInputSource;->document:Lorg/dom4j/Document;

    invoke-virtual {v0, v2}, Lorg/dom4j/io/XMLWriter;->write(Lorg/dom4j/Document;)V

    invoke-virtual {v0}, Lorg/dom4j/io/XMLWriter;->flush()V

    new-instance v0, Ljava/io/StringReader;

    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_1b} :catch_1c

    :goto_1b
    return-object v0

    :catch_1c
    move-exception v0

    move-object v1, v0

    new-instance v0, Lorg/dom4j/io/DocumentInputSource$1;

    invoke-direct {v0, p0, v1}, Lorg/dom4j/io/DocumentInputSource$1;-><init>(Lorg/dom4j/io/DocumentInputSource;Ljava/io/IOException;)V

    goto :goto_1b
.end method

.method public getDocument()Lorg/dom4j/Document;
    .registers 2

    iget-object v0, p0, Lorg/dom4j/io/DocumentInputSource;->document:Lorg/dom4j/Document;

    return-object v0
.end method

.method public setCharacterStream(Ljava/io/Reader;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setDocument(Lorg/dom4j/Document;)V
    .registers 3

    iput-object p1, p0, Lorg/dom4j/io/DocumentInputSource;->document:Lorg/dom4j/Document;

    invoke-interface {p1}, Lorg/dom4j/Document;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/dom4j/io/DocumentInputSource;->setSystemId(Ljava/lang/String;)V

    return-void
.end method
