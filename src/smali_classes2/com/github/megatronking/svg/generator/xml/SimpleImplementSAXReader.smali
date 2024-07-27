.class public abstract Lcom/github/megatronking/svg/generator/xml/SimpleImplementSAXReader;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/github/megatronking/svg/generator/xml/ObjectXmlSAXReader;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/github/megatronking/svg/generator/xml/ObjectXmlSAXReader;"
    }
.end annotation


# instance fields
.field private mReader:Lorg/dom4j/io/SAXReader;


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/dom4j/io/SAXReader;

    invoke-direct {v0}, Lorg/dom4j/io/SAXReader;-><init>()V

    iput-object v0, p0, Lcom/github/megatronking/svg/generator/xml/SimpleImplementSAXReader;->mReader:Lorg/dom4j/io/SAXReader;

    iget-object v0, p0, Lcom/github/megatronking/svg/generator/xml/SimpleImplementSAXReader;->mReader:Lorg/dom4j/io/SAXReader;

    new-instance v1, Lcom/github/megatronking/svg/generator/xml/IgnoreDTDEntityResolver;

    invoke-direct {v1}, Lcom/github/megatronking/svg/generator/xml/IgnoreDTDEntityResolver;-><init>()V

    invoke-virtual {v0, v1}, Lorg/dom4j/io/SAXReader;->setEntityResolver(Lorg/xml/sax/EntityResolver;)V

    return-void
.end method


# virtual methods
.method protected abstract parseDocument(Lorg/dom4j/Document;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/dom4j/Document;",
            ")TT;^",
            "Lorg/dom4j/DocumentException;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/dom4j/DocumentException;
        }
    .end annotation
.end method

.method public read(Ljava/io/File;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")TT;^",
            "Ljava/io/IOException;",
            "^",
            "Lorg/dom4j/DocumentException;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/dom4j/DocumentException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {p0, v0}, Lcom/github/megatronking/svg/generator/xml/SimpleImplementSAXReader;->read(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Object;

    return-object v0
.end method

.method public read(Ljava/io/InputStream;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")TT;^",
            "Ljava/io/IOException;",
            "^",
            "Lorg/dom4j/DocumentException;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/dom4j/DocumentException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    iget-object v0, p0, Lcom/github/megatronking/svg/generator/xml/SimpleImplementSAXReader;->mReader:Lorg/dom4j/io/SAXReader;

    invoke-virtual {v0, p1}, Lorg/dom4j/io/SAXReader;->read(Ljava/io/InputStream;)Lorg/dom4j/Document;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/github/megatronking/svg/generator/xml/SimpleImplementSAXReader;->parseDocument(Lorg/dom4j/Document;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Object;

    return-object v0
.end method

.method public read(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;^",
            "Ljava/io/IOException;",
            "^",
            "Lorg/dom4j/DocumentException;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/dom4j/DocumentException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/github/megatronking/svg/generator/xml/SimpleImplementSAXReader;->read(Ljava/io/File;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Object;

    return-object v0
.end method
