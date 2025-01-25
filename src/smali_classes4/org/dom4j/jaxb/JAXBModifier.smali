.class public Lorg/dom4j/jaxb/JAXBModifier;
.super Lorg/dom4j/jaxb/JAXBSupport;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/dom4j/jaxb/JAXBModifier$JAXBElementModifier;
    }
.end annotation


# instance fields
.field private modifier:Lorg/dom4j/io/SAXModifier;

.field private modifiers:Ljava/util/HashMap;

.field private outputFormat:Lorg/dom4j/io/OutputFormat;

.field private pruneElements:Z

.field private xmlWriter:Lorg/dom4j/io/XMLWriter;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1}, Lorg/dom4j/jaxb/JAXBSupport;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/dom4j/jaxb/JAXBModifier;->modifiers:Ljava/util/HashMap;

    new-instance v0, Lorg/dom4j/io/OutputFormat;

    invoke-direct {v0}, Lorg/dom4j/io/OutputFormat;-><init>()V

    iput-object v0, p0, Lorg/dom4j/jaxb/JAXBModifier;->outputFormat:Lorg/dom4j/io/OutputFormat;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lorg/dom4j/jaxb/JAXBSupport;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/dom4j/jaxb/JAXBModifier;->modifiers:Ljava/util/HashMap;

    new-instance v0, Lorg/dom4j/io/OutputFormat;

    invoke-direct {v0}, Lorg/dom4j/io/OutputFormat;-><init>()V

    iput-object v0, p0, Lorg/dom4j/jaxb/JAXBModifier;->outputFormat:Lorg/dom4j/io/OutputFormat;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/ClassLoader;Lorg/dom4j/io/OutputFormat;)V
    .registers 5

    invoke-direct {p0, p1, p2}, Lorg/dom4j/jaxb/JAXBSupport;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/dom4j/jaxb/JAXBModifier;->modifiers:Ljava/util/HashMap;

    iput-object p3, p0, Lorg/dom4j/jaxb/JAXBModifier;->outputFormat:Lorg/dom4j/io/OutputFormat;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/dom4j/io/OutputFormat;)V
    .registers 4

    invoke-direct {p0, p1}, Lorg/dom4j/jaxb/JAXBSupport;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/dom4j/jaxb/JAXBModifier;->modifiers:Ljava/util/HashMap;

    iput-object p2, p0, Lorg/dom4j/jaxb/JAXBModifier;->outputFormat:Lorg/dom4j/io/OutputFormat;

    return-void
.end method

.method private createXMLWriter()Lorg/dom4j/io/XMLWriter;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/dom4j/jaxb/JAXBModifier;->xmlWriter:Lorg/dom4j/io/XMLWriter;

    if-nez v0, :cond_d

    new-instance v0, Lorg/dom4j/io/XMLWriter;

    iget-object v1, p0, Lorg/dom4j/jaxb/JAXBModifier;->outputFormat:Lorg/dom4j/io/OutputFormat;

    invoke-direct {v0, v1}, Lorg/dom4j/io/XMLWriter;-><init>(Lorg/dom4j/io/OutputFormat;)V

    iput-object v0, p0, Lorg/dom4j/jaxb/JAXBModifier;->xmlWriter:Lorg/dom4j/io/XMLWriter;

    :cond_d
    iget-object v0, p0, Lorg/dom4j/jaxb/JAXBModifier;->xmlWriter:Lorg/dom4j/io/XMLWriter;

    return-object v0
.end method

.method private getModifier()Lorg/dom4j/io/SAXModifier;
    .registers 3

    iget-object v0, p0, Lorg/dom4j/jaxb/JAXBModifier;->modifier:Lorg/dom4j/io/SAXModifier;

    if-nez v0, :cond_f

    new-instance v0, Lorg/dom4j/io/SAXModifier;

    invoke-virtual {p0}, Lorg/dom4j/jaxb/JAXBModifier;->isPruneElements()Z

    move-result v1

    invoke-direct {v0, v1}, Lorg/dom4j/io/SAXModifier;-><init>(Z)V

    iput-object v0, p0, Lorg/dom4j/jaxb/JAXBModifier;->modifier:Lorg/dom4j/io/SAXModifier;

    :cond_f
    iget-object v0, p0, Lorg/dom4j/jaxb/JAXBModifier;->modifier:Lorg/dom4j/io/SAXModifier;

    return-object v0
.end method

.method private getXMLWriter()Lorg/dom4j/io/XMLWriter;
    .registers 2

    iget-object v0, p0, Lorg/dom4j/jaxb/JAXBModifier;->xmlWriter:Lorg/dom4j/io/XMLWriter;

    return-object v0
.end method

.method private installModifier()Lorg/dom4j/io/SAXModifier;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lorg/dom4j/io/SAXModifier;

    invoke-virtual {p0}, Lorg/dom4j/jaxb/JAXBModifier;->isPruneElements()Z

    move-result v1

    invoke-direct {v0, v1}, Lorg/dom4j/io/SAXModifier;-><init>(Z)V

    iput-object v0, p0, Lorg/dom4j/jaxb/JAXBModifier;->modifier:Lorg/dom4j/io/SAXModifier;

    iget-object v0, p0, Lorg/dom4j/jaxb/JAXBModifier;->modifier:Lorg/dom4j/io/SAXModifier;

    invoke-virtual {v0}, Lorg/dom4j/io/SAXModifier;->resetModifiers()V

    iget-object v0, p0, Lorg/dom4j/jaxb/JAXBModifier;->modifiers:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    new-instance v3, Lorg/dom4j/jaxb/JAXBModifier$JAXBElementModifier;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/dom4j/jaxb/JAXBObjectModifier;

    invoke-direct {v3, p0, p0, v1}, Lorg/dom4j/jaxb/JAXBModifier$JAXBElementModifier;-><init>(Lorg/dom4j/jaxb/JAXBModifier;Lorg/dom4j/jaxb/JAXBModifier;Lorg/dom4j/jaxb/JAXBObjectModifier;)V

    invoke-direct {p0}, Lorg/dom4j/jaxb/JAXBModifier;->getModifier()Lorg/dom4j/io/SAXModifier;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0, v3}, Lorg/dom4j/io/SAXModifier;->addModifier(Ljava/lang/String;Lorg/dom4j/io/ElementModifier;)V

    goto :goto_1a

    :cond_3f
    iget-object v0, p0, Lorg/dom4j/jaxb/JAXBModifier;->modifier:Lorg/dom4j/io/SAXModifier;

    invoke-direct {p0}, Lorg/dom4j/jaxb/JAXBModifier;->getXMLWriter()Lorg/dom4j/io/XMLWriter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/dom4j/io/SAXModifier;->setXMLWriter(Lorg/dom4j/io/XMLWriter;)V

    iget-object v0, p0, Lorg/dom4j/jaxb/JAXBModifier;->modifier:Lorg/dom4j/io/SAXModifier;

    return-object v0
.end method


# virtual methods
.method public addObjectModifier(Ljava/lang/String;Lorg/dom4j/jaxb/JAXBObjectModifier;)V
    .registers 4

    iget-object v0, p0, Lorg/dom4j/jaxb/JAXBModifier;->modifiers:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public isPruneElements()Z
    .registers 2

    iget-boolean v0, p0, Lorg/dom4j/jaxb/JAXBModifier;->pruneElements:Z

    return v0
.end method

.method public modify(Ljava/io/File;)Lorg/dom4j/Document;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/dom4j/DocumentException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lorg/dom4j/jaxb/JAXBModifier;->installModifier()Lorg/dom4j/io/SAXModifier;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/dom4j/io/SAXModifier;->modify(Ljava/io/File;)Lorg/dom4j/Document;

    move-result-object v0

    return-object v0
.end method

.method public modify(Ljava/io/File;Ljava/nio/charset/Charset;)Lorg/dom4j/Document;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/dom4j/DocumentException;,
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    new-instance v0, Ljava/io/InputStreamReader;

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1, p2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {p0}, Lorg/dom4j/jaxb/JAXBModifier;->installModifier()Lorg/dom4j/io/SAXModifier;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/dom4j/io/SAXModifier;->modify(Ljava/io/Reader;)Lorg/dom4j/Document;
    :try_end_11
    .catch Lorg/dom4j/jaxb/JAXBRuntimeException; {:try_start_0 .. :try_end_11} :catch_13
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_11} :catch_22

    move-result-object v0

    return-object v0

    :catch_13
    move-exception v0

    invoke-virtual {v0}, Lorg/dom4j/jaxb/JAXBRuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    new-instance v1, Lorg/dom4j/DocumentException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/dom4j/DocumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_22
    move-exception v0

    new-instance v1, Lorg/dom4j/DocumentException;

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/dom4j/DocumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public modify(Ljava/io/InputStream;)Lorg/dom4j/Document;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/dom4j/DocumentException;,
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    invoke-direct {p0}, Lorg/dom4j/jaxb/JAXBModifier;->installModifier()Lorg/dom4j/io/SAXModifier;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/dom4j/io/SAXModifier;->modify(Ljava/io/InputStream;)Lorg/dom4j/Document;
    :try_end_7
    .catch Lorg/dom4j/jaxb/JAXBRuntimeException; {:try_start_0 .. :try_end_7} :catch_9

    move-result-object v0

    return-object v0

    :catch_9
    move-exception v0

    invoke-virtual {v0}, Lorg/dom4j/jaxb/JAXBRuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    new-instance v1, Lorg/dom4j/DocumentException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/dom4j/DocumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public modify(Ljava/io/InputStream;Ljava/lang/String;)Lorg/dom4j/Document;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/dom4j/DocumentException;,
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    invoke-direct {p0}, Lorg/dom4j/jaxb/JAXBModifier;->installModifier()Lorg/dom4j/io/SAXModifier;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/dom4j/io/SAXModifier;->modify(Ljava/io/InputStream;)Lorg/dom4j/Document;
    :try_end_7
    .catch Lorg/dom4j/jaxb/JAXBRuntimeException; {:try_start_0 .. :try_end_7} :catch_9

    move-result-object v0

    return-object v0

    :catch_9
    move-exception v0

    invoke-virtual {v0}, Lorg/dom4j/jaxb/JAXBRuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    new-instance v1, Lorg/dom4j/DocumentException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/dom4j/DocumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public modify(Ljava/io/Reader;)Lorg/dom4j/Document;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/dom4j/DocumentException;,
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    invoke-direct {p0}, Lorg/dom4j/jaxb/JAXBModifier;->installModifier()Lorg/dom4j/io/SAXModifier;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/dom4j/io/SAXModifier;->modify(Ljava/io/Reader;)Lorg/dom4j/Document;
    :try_end_7
    .catch Lorg/dom4j/jaxb/JAXBRuntimeException; {:try_start_0 .. :try_end_7} :catch_9

    move-result-object v0

    return-object v0

    :catch_9
    move-exception v0

    invoke-virtual {v0}, Lorg/dom4j/jaxb/JAXBRuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    new-instance v1, Lorg/dom4j/DocumentException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/dom4j/DocumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public modify(Ljava/io/Reader;Ljava/lang/String;)Lorg/dom4j/Document;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/dom4j/DocumentException;,
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    invoke-direct {p0}, Lorg/dom4j/jaxb/JAXBModifier;->installModifier()Lorg/dom4j/io/SAXModifier;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/dom4j/io/SAXModifier;->modify(Ljava/io/Reader;)Lorg/dom4j/Document;
    :try_end_7
    .catch Lorg/dom4j/jaxb/JAXBRuntimeException; {:try_start_0 .. :try_end_7} :catch_9

    move-result-object v0

    return-object v0

    :catch_9
    move-exception v0

    invoke-virtual {v0}, Lorg/dom4j/jaxb/JAXBRuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    new-instance v1, Lorg/dom4j/DocumentException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/dom4j/DocumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public modify(Ljava/lang/String;)Lorg/dom4j/Document;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/dom4j/DocumentException;,
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    invoke-direct {p0}, Lorg/dom4j/jaxb/JAXBModifier;->installModifier()Lorg/dom4j/io/SAXModifier;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/dom4j/io/SAXModifier;->modify(Ljava/lang/String;)Lorg/dom4j/Document;
    :try_end_7
    .catch Lorg/dom4j/jaxb/JAXBRuntimeException; {:try_start_0 .. :try_end_7} :catch_9

    move-result-object v0

    return-object v0

    :catch_9
    move-exception v0

    invoke-virtual {v0}, Lorg/dom4j/jaxb/JAXBRuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    new-instance v1, Lorg/dom4j/DocumentException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/dom4j/DocumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public modify(Ljava/net/URL;)Lorg/dom4j/Document;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/dom4j/DocumentException;,
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    invoke-direct {p0}, Lorg/dom4j/jaxb/JAXBModifier;->installModifier()Lorg/dom4j/io/SAXModifier;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/dom4j/io/SAXModifier;->modify(Ljava/net/URL;)Lorg/dom4j/Document;
    :try_end_7
    .catch Lorg/dom4j/jaxb/JAXBRuntimeException; {:try_start_0 .. :try_end_7} :catch_9

    move-result-object v0

    return-object v0

    :catch_9
    move-exception v0

    invoke-virtual {v0}, Lorg/dom4j/jaxb/JAXBRuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    new-instance v1, Lorg/dom4j/DocumentException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/dom4j/DocumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public modify(Lorg/xml/sax/InputSource;)Lorg/dom4j/Document;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/dom4j/DocumentException;,
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    invoke-direct {p0}, Lorg/dom4j/jaxb/JAXBModifier;->installModifier()Lorg/dom4j/io/SAXModifier;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/dom4j/io/SAXModifier;->modify(Lorg/xml/sax/InputSource;)Lorg/dom4j/Document;
    :try_end_7
    .catch Lorg/dom4j/jaxb/JAXBRuntimeException; {:try_start_0 .. :try_end_7} :catch_9

    move-result-object v0

    return-object v0

    :catch_9
    move-exception v0

    invoke-virtual {v0}, Lorg/dom4j/jaxb/JAXBRuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    new-instance v1, Lorg/dom4j/DocumentException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/dom4j/DocumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public removeObjectModifier(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lorg/dom4j/jaxb/JAXBModifier;->modifiers:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lorg/dom4j/jaxb/JAXBModifier;->getModifier()Lorg/dom4j/io/SAXModifier;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/dom4j/io/SAXModifier;->removeModifier(Ljava/lang/String;)V

    return-void
.end method

.method public resetObjectModifiers()V
    .registers 2

    iget-object v0, p0, Lorg/dom4j/jaxb/JAXBModifier;->modifiers:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    invoke-direct {p0}, Lorg/dom4j/jaxb/JAXBModifier;->getModifier()Lorg/dom4j/io/SAXModifier;

    move-result-object v0

    invoke-virtual {v0}, Lorg/dom4j/io/SAXModifier;->resetModifiers()V

    return-void
.end method

.method public setOutput(Ljava/io/File;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lorg/dom4j/jaxb/JAXBModifier;->createXMLWriter()Lorg/dom4j/io/XMLWriter;

    move-result-object v0

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v0, v1}, Lorg/dom4j/io/XMLWriter;->setOutputStream(Ljava/io/OutputStream;)V

    return-void
.end method

.method public setOutput(Ljava/io/OutputStream;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lorg/dom4j/jaxb/JAXBModifier;->createXMLWriter()Lorg/dom4j/io/XMLWriter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/dom4j/io/XMLWriter;->setOutputStream(Ljava/io/OutputStream;)V

    return-void
.end method

.method public setOutput(Ljava/io/Writer;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lorg/dom4j/jaxb/JAXBModifier;->createXMLWriter()Lorg/dom4j/io/XMLWriter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/dom4j/io/XMLWriter;->setWriter(Ljava/io/Writer;)V

    return-void
.end method

.method public setPruneElements(Z)V
    .registers 2

    iput-boolean p1, p0, Lorg/dom4j/jaxb/JAXBModifier;->pruneElements:Z

    return-void
.end method
