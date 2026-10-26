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
    .locals 3

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
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    return-void

    :catchall_0
    move-exception v0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static compressionJson(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

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

    move-result-object v1

    .line 112
    invoke-virtual {v0, v1}, Lcom/google/gson/Gson;->toJson(Lcom/google/gson/JsonElement;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static format(Landroid/content/Context;Ljava/lang/String;Lcom/s1243808733/formatter/FormatFactory$Type;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-eqz p2, :cond_3

    .line 63
    invoke-virtual {p2}, Lcom/s1243808733/formatter/FormatFactory$Type;->ordinal()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 69
    :goto_0
    return-object p1

    :cond_0
    invoke-static {p0, p1}, Lcom/s1243808733/formatter/FormatFactory;->formatXml(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 65
    :cond_1
    invoke-static {p0, p1}, Lcom/s1243808733/formatter/FormatFactory;->formatJava(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 67
    :cond_2
    invoke-static {p0, p1}, Lcom/s1243808733/formatter/FormatFactory;->formatXml(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 62
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "type is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static formatJava(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/googlejavaformat/java/FormatterException;
        }
    .end annotation

    .line 76
    invoke-static {}, Lcom/google/googlejavaformat/java/JavaFormatterOptions;->builder()Lcom/google/googlejavaformat/java/JavaFormatterOptions$Builder;

    move-result-object v0

    .line 77
    invoke-virtual {v0}, Lcom/google/googlejavaformat/java/JavaFormatterOptions$Builder;->build()Lcom/google/googlejavaformat/java/JavaFormatterOptions;

    move-result-object v0

    .line 78
    invoke-static {p1}, Lcom/google/googlejavaformat/java/ImportOrderer;->reorderImports(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 79
    new-instance v2, Lcom/google/googlejavaformat/java/Formatter;

    invoke-direct {v2, v0}, Lcom/google/googlejavaformat/java/Formatter;-><init>(Lcom/google/googlejavaformat/java/JavaFormatterOptions;)V

    invoke-virtual {v2, v1}, Lcom/google/googlejavaformat/java/Formatter;->formatSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatJson(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 100
    invoke-static {p1}, Lcom/s1243808733/formatter/FormatFactory;->formatJson(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatJson(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

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

    move-result-object v1

    .line 106
    invoke-virtual {v0, v1}, Lcom/google/gson/Gson;->toJson(Lcom/google/gson/JsonElement;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatXml(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
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

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    .line 85
    new-instance v1, Lorg/xml/sax/InputSource;

    new-instance v2, Ljava/io/StringReader;

    invoke-direct {v2, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    invoke-virtual {v0, v1}, Ljavax/xml/parsers/DocumentBuilder;->parse(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;

    move-result-object v0

    .line 87
    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/xml/transform/TransformerFactory;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v1

    .line 88
    const-string v2, "indent"

    const-string v3, "yes"

    invoke-virtual {v1, v2, v3}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    const-string v2, "{http://xml.apache.org/xslt}indent-amount"

    const-string v3, "4"

    invoke-virtual {v1, v2, v3}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    const-string v2, "omit-xml-declaration"

    const-string v3, "yes"

    invoke-virtual {v1, v2, v3}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    new-instance v2, Ljavax/xml/transform/stream/StreamResult;

    new-instance v3, Ljava/io/StringWriter;

    invoke-direct {v3}, Ljava/io/StringWriter;-><init>()V

    invoke-direct {v2, v3}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/Writer;)V

    .line 94
    new-instance v3, Ljavax/xml/transform/dom/DOMSource;

    invoke-direct {v3, v0}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V

    .line 95
    invoke-virtual {v1, v3, v2}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V

    .line 96
    invoke-virtual {v2}, Ljavax/xml/transform/stream/StreamResult;->getWriter()Ljava/io/Writer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getType(Ljava/io/File;)Lcom/s1243808733/formatter/FormatFactory$Type;
    .locals 1

    .line 46
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 47
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/s1243808733/formatter/FormatFactory;->getType(Ljava/lang/String;)Lcom/s1243808733/formatter/FormatFactory$Type;

    move-result-object v0

    goto :goto_0
.end method

.method public static getType(Ljava/lang/String;)Lcom/s1243808733/formatter/FormatFactory$Type;
    .locals 1

    .line 51
    const-string v0, ".java"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    sget-object v0, Lcom/s1243808733/formatter/FormatFactory$Type;->JAVA:Lcom/s1243808733/formatter/FormatFactory$Type;

    .line 56
    :goto_0
    return-object v0

    .line 53
    :cond_0
    const-string v0, ".xml"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 56
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 55
    :cond_2
    const-string v0, ".json"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 56
    sget-object v0, Lcom/s1243808733/formatter/FormatFactory$Type;->JSON:Lcom/s1243808733/formatter/FormatFactory$Type;

    goto :goto_0
.end method

.method public static isSupportFormat(Ljava/io/File;)Z
    .locals 1

    .line 42
    invoke-static {p0}, Lcom/s1243808733/formatter/FormatFactory;->getType(Ljava/io/File;)Lcom/s1243808733/formatter/FormatFactory$Type;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
