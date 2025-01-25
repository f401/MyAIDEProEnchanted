.class public Lcom/s1243808733/formatter/FormatFactory;
.super Ljava/lang/Object;
.source "FormatFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/s1243808733/formatter/FormatFactory$Type;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 36
    :try_start_0
    const-class v0, Lcom/google/googlejavaformat/java/JavaFormatterOptions;

    invoke-static {v0}, Lcom/blankj/utilcode/util/ReflectUtils;->reflect(Ljava/lang/Class;)Lcom/blankj/utilcode/util/ReflectUtils;

    move-result-object v0

    const-string v1, "DEFAULT_MAX_LINE_LENGTH"

    const/16 v2, 0x3e8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/blankj/utilcode/util/ReflectUtils;->field(Ljava/lang/String;Ljava/lang/Object;)Lcom/blankj/utilcode/util/ReflectUtils;
    :try_end_11
    .catchall {:try_start_0 .. :try_end_11} :catchall_12

    goto :goto_13

    :catchall_12
    move-exception v0

    :goto_13
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static compressionJson(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 110
    new-instance v0, Lcom/google/gson/GsonBuilder;

    invoke-direct {v0}, Lcom/google/gson/GsonBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->setLenient()Lcom/google/gson/GsonBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v0

    .line 111
    new-instance v1, Lcom/google/gson/JsonParser;

    invoke-direct {v1}, Lcom/google/gson/JsonParser;-><init>()V

    invoke-virtual {v1, p0}, Lcom/google/gson/JsonParser;->parse(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p0

    .line 112
    invoke-virtual {v0, p0}, Lcom/google/gson/Gson;->toJson(Lcom/google/gson/JsonElement;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static format(Landroid/content/Context;Ljava/lang/String;Lcom/s1243808733/formatter/FormatFactory$Type;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-eqz p2, :cond_1e

    .line 63
    invoke-virtual {p2}, Lcom/s1243808733/formatter/FormatFactory$Type;->ordinal()I

    move-result p2

    if-eqz p2, :cond_19

    const/4 v0, 0x1

    if-eq p2, v0, :cond_14

    const/4 v0, 0x2

    if-eq p2, v0, :cond_f

    return-object p1

    .line 69
    :cond_f
    invoke-static {p0, p1}, Lcom/s1243808733/formatter/FormatFactory;->formatXml(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 65
    :cond_14
    invoke-static {p0, p1}, Lcom/s1243808733/formatter/FormatFactory;->formatJava(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 67
    :cond_19
    invoke-static {p0, p1}, Lcom/s1243808733/formatter/FormatFactory;->formatXml(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 62
    :cond_1e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "type is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static formatJava(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/googlejavaformat/java/FormatterException;
        }
    .end annotation

    .line 76
    invoke-static {}, Lcom/google/googlejavaformat/java/JavaFormatterOptions;->builder()Lcom/google/googlejavaformat/java/JavaFormatterOptions$Builder;

    move-result-object p0

    .line 77
    invoke-virtual {p0}, Lcom/google/googlejavaformat/java/JavaFormatterOptions$Builder;->build()Lcom/google/googlejavaformat/java/JavaFormatterOptions;

    move-result-object p0

    .line 78
    invoke-static {p1}, Lcom/google/googlejavaformat/java/ImportOrderer;->reorderImports(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 79
    new-instance v0, Lcom/google/googlejavaformat/java/Formatter;

    invoke-direct {v0, p0}, Lcom/google/googlejavaformat/java/Formatter;-><init>(Lcom/google/googlejavaformat/java/JavaFormatterOptions;)V

    invoke-virtual {v0, p1}, Lcom/google/googlejavaformat/java/Formatter;->formatSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatJson(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 100
    invoke-static {p1}, Lcom/s1243808733/formatter/FormatFactory;->formatJson(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatJson(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 104
    new-instance v0, Lcom/google/gson/GsonBuilder;

    invoke-direct {v0}, Lcom/google/gson/GsonBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->setPrettyPrinting()Lcom/google/gson/GsonBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v0

    .line 105
    new-instance v1, Lcom/google/gson/JsonParser;

    invoke-direct {v1}, Lcom/google/gson/JsonParser;-><init>()V

    invoke-virtual {v1, p0}, Lcom/google/gson/JsonParser;->parse(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p0

    .line 106
    invoke-virtual {v0, p0}, Lcom/google/gson/Gson;->toJson(Lcom/google/gson/JsonElement;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatXml(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;,
            Ljavax/xml/parsers/ParserConfigurationException;,
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 84
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object p0

    invoke-virtual {p0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object p0

    .line 85
    new-instance v0, Lorg/xml/sax/InputSource;

    new-instance v1, Ljava/io/StringReader;

    invoke-direct {v1, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    invoke-virtual {p0, v0}, Ljavax/xml/parsers/DocumentBuilder;->parse(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;

    move-result-object p0

    .line 87
    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;

    move-result-object p1

    invoke-virtual {p1}, Ljavax/xml/transform/TransformerFactory;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object p1

    .line 88
    const-string v0, "indent"

    const-string v1, "yes"

    invoke-virtual {p1, v0, v1}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    const-string v0, "{http://xml.apache.org/xslt}indent-amount"

    const-string v2, "4"

    invoke-virtual {p1, v0, v2}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    const-string v0, "omit-xml-declaration"

    invoke-virtual {p1, v0, v1}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    new-instance v0, Ljavax/xml/transform/stream/StreamResult;

    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    invoke-direct {v0, v1}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/Writer;)V

    .line 94
    new-instance v1, Ljavax/xml/transform/dom/DOMSource;

    invoke-direct {v1, p0}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V

    .line 95
    invoke-virtual {p1, v1, v0}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V

    .line 96
    invoke-virtual {v0}, Ljavax/xml/transform/stream/StreamResult;->getWriter()Ljava/io/Writer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getType(Ljava/io/File;)Lcom/s1243808733/formatter/FormatFactory$Type;
    .registers 2

    .line 46
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 p0, 0x0

    return-object p0

    .line 47
    :cond_8
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/s1243808733/formatter/FormatFactory;->getType(Ljava/lang/String;)Lcom/s1243808733/formatter/FormatFactory$Type;

    move-result-object p0

    return-object p0
.end method

.method public static getType(Ljava/lang/String;)Lcom/s1243808733/formatter/FormatFactory$Type;
    .registers 2

    .line 51
    const-string v0, ".java"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 52
    sget-object p0, Lcom/s1243808733/formatter/FormatFactory$Type;->JAVA:Lcom/s1243808733/formatter/FormatFactory$Type;

    return-object p0

    .line 53
    :cond_b
    const-string v0, ".xml"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    goto :goto_1f

    .line 55
    :cond_14
    const-string v0, ".json"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1f

    .line 56
    sget-object p0, Lcom/s1243808733/formatter/FormatFactory$Type;->JSON:Lcom/s1243808733/formatter/FormatFactory$Type;

    return-object p0

    :cond_1f
    :goto_1f
    const/4 p0, 0x0

    return-object p0
.end method

.method public static isSupportFormat(Ljava/io/File;)Z
    .registers 1

    .line 42
    invoke-static {p0}, Lcom/s1243808733/formatter/FormatFactory;->getType(Ljava/io/File;)Lcom/s1243808733/formatter/FormatFactory$Type;

    move-result-object p0

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method
