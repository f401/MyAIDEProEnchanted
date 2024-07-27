.class public Lorg/apache/tools/ant/util/JAXPUtils;
.super Ljava/lang/Object;
.source "JAXPUtils.java"


# static fields
.field private static final FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

.field private static builderFactory:Ljavax/xml/parsers/DocumentBuilderFactory;

.field private static nsParserFactory:Ljavax/xml/parsers/SAXParserFactory;

.field private static parserFactory:Ljavax/xml/parsers/SAXParserFactory;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v1, 0x0

    .line 51
    invoke-static {}, Lorg/apache/tools/ant/util/FileUtils;->getFileUtils()Lorg/apache/tools/ant/util/FileUtils;

    move-result-object v0

    sput-object v0, Lorg/apache/tools/ant/util/JAXPUtils;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    .line 59
    sput-object v1, Lorg/apache/tools/ant/util/JAXPUtils;->parserFactory:Ljavax/xml/parsers/SAXParserFactory;

    .line 66
    sput-object v1, Lorg/apache/tools/ant/util/JAXPUtils;->nsParserFactory:Ljavax/xml/parsers/SAXParserFactory;

    .line 73
    sput-object v1, Lorg/apache/tools/ant/util/JAXPUtils;->builderFactory:Ljavax/xml/parsers/DocumentBuilderFactory;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static convertToBuildException(Lorg/xml/sax/SAXException;)Lorg/apache/tools/ant/BuildException;
    .registers 3

    .line 232
    invoke-virtual {p0}, Lorg/xml/sax/SAXException;->getException()Ljava/lang/Exception;

    move-result-object v1

    .line 233
    if-eqz v1, :cond_0

    .line 234
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/Throwable;)V

    .line 236
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    invoke-direct {v0, p0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static getDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 202
    :try_start_0
    invoke-static {}, Lorg/apache/tools/ant/util/JAXPUtils;->getDocumentBuilderFactory()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 203
    :catch_0
    move-exception v0

    .line 204
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-direct {v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static getDocumentBuilderFactory()Ljavax/xml/parsers/DocumentBuilderFactory;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    const-class v0, Lorg/apache/tools/ant/util/JAXPUtils;

    monitor-enter v0

    .line 247
    :try_start_0
    sget-object v0, Lorg/apache/tools/ant/util/JAXPUtils;->builderFactory:Ljavax/xml/parsers/DocumentBuilderFactory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 249
    :try_start_1
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    sput-object v0, Lorg/apache/tools/ant/util/JAXPUtils;->builderFactory:Ljavax/xml/parsers/DocumentBuilderFactory;
    :try_end_1
    .catch Ljavax/xml/parsers/FactoryConfigurationError; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 256
    :cond_0
    :try_start_2
    sget-object v0, Lorg/apache/tools/ant/util/JAXPUtils;->builderFactory:Ljavax/xml/parsers/DocumentBuilderFactory;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-class v1, Lorg/apache/tools/ant/util/JAXPUtils;

    monitor-exit v1

    return-object v0

    .line 250
    :catch_0
    move-exception v0

    .line 251
    :try_start_3
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Document builder factory has not been configured correctly: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    invoke-virtual {v0}, Ljavax/xml/parsers/FactoryConfigurationError;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 246
    :catchall_0
    move-exception v0

    const-class v1, Lorg/apache/tools/ant/util/JAXPUtils;

    monitor-exit v1

    throw v0
.end method

.method public static getNSParserFactory()Ljavax/xml/parsers/SAXParserFactory;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    const-class v0, Lorg/apache/tools/ant/util/JAXPUtils;

    monitor-enter v0

    .line 105
    :try_start_0
    sget-object v0, Lorg/apache/tools/ant/util/JAXPUtils;->nsParserFactory:Ljavax/xml/parsers/SAXParserFactory;

    if-nez v0, :cond_0

    .line 106
    invoke-static {}, Lorg/apache/tools/ant/util/JAXPUtils;->newParserFactory()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v0

    sput-object v0, Lorg/apache/tools/ant/util/JAXPUtils;->nsParserFactory:Ljavax/xml/parsers/SAXParserFactory;

    .line 107
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljavax/xml/parsers/SAXParserFactory;->setNamespaceAware(Z)V

    .line 109
    :cond_0
    sget-object v0, Lorg/apache/tools/ant/util/JAXPUtils;->nsParserFactory:Ljavax/xml/parsers/SAXParserFactory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-class v1, Lorg/apache/tools/ant/util/JAXPUtils;

    monitor-exit v1

    return-object v0

    .line 104
    :catchall_0
    move-exception v0

    const-class v1, Lorg/apache/tools/ant/util/JAXPUtils;

    monitor-exit v1

    throw v0
.end method

.method public static getNamespaceXMLReader()Lorg/xml/sax/XMLReader;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 174
    :try_start_0
    invoke-static {}, Lorg/apache/tools/ant/util/JAXPUtils;->getNSParserFactory()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/tools/ant/util/JAXPUtils;->newSAXParser(Ljavax/xml/parsers/SAXParserFactory;)Ljavax/xml/parsers/SAXParser;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 175
    :catch_0
    move-exception v0

    .line 176
    invoke-static {v0}, Lorg/apache/tools/ant/util/JAXPUtils;->convertToBuildException(Lorg/xml/sax/SAXException;)Lorg/apache/tools/ant/BuildException;

    move-result-object v0

    throw v0
.end method

.method public static getParser()Lorg/xml/sax/Parser;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 141
    :try_start_0
    invoke-static {}, Lorg/apache/tools/ant/util/JAXPUtils;->getParserFactory()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/tools/ant/util/JAXPUtils;->newSAXParser(Ljavax/xml/parsers/SAXParserFactory;)Ljavax/xml/parsers/SAXParser;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParser;->getParser()Lorg/xml/sax/Parser;
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 142
    :catch_0
    move-exception v0

    .line 143
    invoke-static {v0}, Lorg/apache/tools/ant/util/JAXPUtils;->convertToBuildException(Lorg/xml/sax/SAXException;)Lorg/apache/tools/ant/BuildException;

    move-result-object v0

    throw v0
.end method

.method public static getParserFactory()Ljavax/xml/parsers/SAXParserFactory;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    const-class v0, Lorg/apache/tools/ant/util/JAXPUtils;

    monitor-enter v0

    .line 87
    :try_start_0
    sget-object v0, Lorg/apache/tools/ant/util/JAXPUtils;->parserFactory:Ljavax/xml/parsers/SAXParserFactory;

    if-nez v0, :cond_0

    .line 88
    invoke-static {}, Lorg/apache/tools/ant/util/JAXPUtils;->newParserFactory()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v0

    sput-object v0, Lorg/apache/tools/ant/util/JAXPUtils;->parserFactory:Ljavax/xml/parsers/SAXParserFactory;

    .line 90
    :cond_0
    sget-object v0, Lorg/apache/tools/ant/util/JAXPUtils;->parserFactory:Ljavax/xml/parsers/SAXParserFactory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-class v1, Lorg/apache/tools/ant/util/JAXPUtils;

    monitor-exit v1

    return-object v0

    .line 86
    :catchall_0
    move-exception v0

    const-class v1, Lorg/apache/tools/ant/util/JAXPUtils;

    monitor-exit v1

    throw v0
.end method

.method public static getSystemId(Ljava/io/File;)Ljava/lang/String;
    .registers 3

    .line 190
    sget-object v0, Lorg/apache/tools/ant/util/JAXPUtils;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/util/FileUtils;->toURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getXMLReader()Lorg/xml/sax/XMLReader;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 158
    :try_start_0
    invoke-static {}, Lorg/apache/tools/ant/util/JAXPUtils;->getParserFactory()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/tools/ant/util/JAXPUtils;->newSAXParser(Ljavax/xml/parsers/SAXParserFactory;)Ljavax/xml/parsers/SAXParser;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 159
    :catch_0
    move-exception v0

    .line 160
    invoke-static {v0}, Lorg/apache/tools/ant/util/JAXPUtils;->convertToBuildException(Lorg/xml/sax/SAXException;)Lorg/apache/tools/ant/BuildException;

    move-result-object v0

    throw v0
.end method

.method public static newParserFactory()Ljavax/xml/parsers/SAXParserFactory;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 122
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;
    :try_end_0
    .catch Ljavax/xml/parsers/FactoryConfigurationError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 123
    :catch_0
    move-exception v0

    .line 124
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "XML parser factory has not been configured correctly: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    invoke-virtual {v0}, Ljavax/xml/parsers/FactoryConfigurationError;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private static newSAXParser(Ljavax/xml/parsers/SAXParserFactory;)Ljavax/xml/parsers/SAXParser;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 217
    :try_start_0
    invoke-virtual {p0}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 221
    :catch_0
    move-exception v0

    .line 222
    invoke-static {v0}, Lorg/apache/tools/ant/util/JAXPUtils;->convertToBuildException(Lorg/xml/sax/SAXException;)Lorg/apache/tools/ant/BuildException;

    move-result-object v0

    throw v0

    .line 218
    :catch_1
    move-exception v0

    .line 219
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot create parser for the given configuration: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    invoke-virtual {v0}, Ljavax/xml/parsers/ParserConfigurationException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method
