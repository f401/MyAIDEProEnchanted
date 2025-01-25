.class public Lcom/aide/common/pa;
.super Ljava/lang/Object;


# annotations
.annotation runtime Labcd/xu;
.end annotation


# static fields
.field private static DW:Z
    .annotation runtime Labcd/uu;
    .end annotation
.end field

.field private static j6:Z
    .annotation runtime Labcd/tu;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Lcom/aide/common/pa;

    const-wide v1, -0x32a0d59c9dfeb8b9L  # -5.128310221298194E64

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>()V
    .registers 6

    const/4 v0, 0x0

    const-wide v1, -0x1a4480617fa67833L  # -1.14105504863905E182

    :try_start_6
    sget-boolean v3, Lcom/aide/common/pa;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_11

    return-void

    :catchall_11
    move-exception v3

    sget-boolean v4, Lcom/aide/common/pa;->DW:Z

    if-eqz v4, :cond_19

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_19
    throw v3
.end method

.method public static j6(Ljava/io/InputStream;)Lorg/w3c/dom/Document;
    .registers 9

    const/4 v0, 0x0

    const-wide v1, 0x42c056e787bdea2bL  # 3.5930875329492336E13

    :try_start_6
    sget-boolean v3, Lcom/aide/common/pa;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V
    :try_end_d
    .catchall {:try_start_6 .. :try_end_d} :catchall_54

    :cond_d
    :try_start_d
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v3

    invoke-virtual {v3}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v3

    invoke-virtual {v3}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v3

    const-string v4, "http://xml.org/sax/features/namespaces"

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Lorg/xml/sax/XMLReader;->setFeature(Ljava/lang/String;Z)V

    const-string v4, "http://xml.org/sax/features/namespace-prefixes"

    invoke-interface {v3, v4, v5}, Lorg/xml/sax/XMLReader;->setFeature(Ljava/lang/String;Z)V

    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v4

    invoke-virtual {v4}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljavax/xml/parsers/DocumentBuilder;->newDocument()Lorg/w3c/dom/Document;

    move-result-object v4
    :try_end_30
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_d .. :try_end_30} :catch_4b
    .catchall {:try_start_d .. :try_end_30} :catchall_54

    :try_start_30
    new-instance v5, Ljava/util/Stack;

    invoke-direct {v5}, Ljava/util/Stack;-><init>()V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v7, Lcom/aide/common/oa;

    invoke-direct {v7, v4, v5, v6}, Lcom/aide/common/oa;-><init>(Lorg/w3c/dom/Document;Ljava/util/Stack;Ljava/lang/StringBuilder;)V

    invoke-interface {v3, v7}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    new-instance v5, Lorg/xml/sax/InputSource;

    invoke-direct {v5, p0}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-interface {v3, v5}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    return-object v4

    :catch_4b
    move-exception v3

    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Can\'t create SAX parser / DOM builder."

    invoke-direct {v4, v5, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
    :try_end_54
    .catchall {:try_start_30 .. :try_end_54} :catchall_54

    :catchall_54
    move-exception v3

    sget-boolean v4, Lcom/aide/common/pa;->DW:Z

    if-eqz v4, :cond_5c

    invoke-static {v3, v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_5c
    throw v3
.end method
