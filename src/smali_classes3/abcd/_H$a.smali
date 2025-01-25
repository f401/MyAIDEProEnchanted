.class final Labcd/_H$a;
.super Lorg/xml/sax/helpers/DefaultHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/_H;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation


# instance fields
.field private final DW:Ljava/lang/String;

.field private final FH:Ljava/lang/String;

.field Hw:Z

.field final Zo:Labcd/_H;

.field final j6:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private v5:Ljava/lang/StringBuilder;


# direct methods
.method constructor <init>(Labcd/_H;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    iput-object p1, p0, Labcd/_H$a;->Zo:Labcd/_H;

    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Labcd/_H$a;->j6:Ljava/util/List;

    iput-object p2, p0, Labcd/_H$a;->DW:Ljava/lang/String;

    iput-object p3, p0, Labcd/_H$a;->FH:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public characters([CII)V
    .registers 5

    iget-object v0, p0, Labcd/_H$a;->v5:Ljava/lang/StringBuilder;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    :cond_7
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    const-string p1, "Key"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1e

    iget-object p1, p0, Labcd/_H$a;->j6:Ljava/util/List;

    iget-object p2, p0, Labcd/_H$a;->v5:Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Labcd/_H$a;->FH:Ljava/lang/String;

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_34

    :cond_1e
    const-string p1, "IsTruncated"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_34

    iget-object p1, p0, Labcd/_H$a;->v5:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "true"

    invoke-static {p2, p1}, Labcd/NK;->j6(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Labcd/_H$a;->Hw:Z

    :cond_34
    :goto_34
    const/4 p1, 0x0

    iput-object p1, p0, Labcd/_H$a;->v5:Ljava/lang/StringBuilder;

    return-void
.end method

.method public ignorableWhitespace([CII)V
    .registers 5

    iget-object v0, p0, Labcd/_H$a;->v5:Ljava/lang/StringBuilder;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    :cond_7
    return-void
.end method

.method j6()V
    .registers 10

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iget-object v1, p0, Labcd/_H$a;->FH:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_14

    const-string v1, "prefix"

    iget-object v2, p0, Labcd/_H$a;->FH:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_14
    iget-object v1, p0, Labcd/_H$a;->j6:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_41

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v3, p0, Labcd/_H$a;->FH:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Labcd/_H$a;->j6:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v2

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "marker"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_41
    const/4 v1, 0x0

    const/4 v3, 0x0

    :goto_43
    iget-object v4, p0, Labcd/_H$a;->Zo:Labcd/_H;

    invoke-static {v4}, Labcd/_H;->j6(Labcd/_H;)I

    move-result v4

    const-string v5, "Listing"

    if-ge v3, v4, :cond_bf

    iget-object v4, p0, Labcd/_H$a;->Zo:Labcd/_H;

    iget-object v6, p0, Labcd/_H$a;->DW:Ljava/lang/String;

    const-string v7, ""

    const-string v8, "GET"

    invoke-static {v4, v8, v6, v7, v0}, Labcd/_H;->j6(Labcd/_H;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/net/HttpURLConnection;

    move-result-object v4

    iget-object v6, p0, Labcd/_H$a;->Zo:Labcd/_H;

    invoke-static {v6, v4}, Labcd/_H;->j6(Labcd/_H;Ljava/net/HttpURLConnection;)V

    invoke-static {v4}, Labcd/AK;->j6(Ljava/net/HttpURLConnection;)I

    move-result v6

    const/16 v7, 0xc8

    if-eq v6, v7, :cond_76

    const/16 v7, 0x1f4

    if-ne v6, v7, :cond_6d

    add-int/lit8 v3, v3, 0x1

    goto :goto_43

    :cond_6d
    iget-object v0, p0, Labcd/_H$a;->Zo:Labcd/_H;

    iget-object v1, p0, Labcd/_H$a;->FH:Ljava/lang/String;

    invoke-static {v0, v5, v1, v4}, Labcd/_H;->j6(Labcd/_H;Ljava/lang/String;Ljava/lang/String;Ljava/net/HttpURLConnection;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_76
    iput-boolean v1, p0, Labcd/_H$a;->Hw:Z

    const/4 v0, 0x0

    iput-object v0, p0, Labcd/_H$a;->v5:Ljava/lang/StringBuilder;

    :try_start_7b
    invoke-static {}, Lorg/xml/sax/helpers/XMLReaderFactory;->createXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v0
    :try_end_7f
    .catch Lorg/xml/sax/SAXException; {:try_start_7b .. :try_end_7f} :catch_b2

    invoke-interface {v0, p0}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    :try_start_86
    new-instance v4, Lorg/xml/sax/InputSource;

    invoke-direct {v4, v3}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-interface {v0, v4}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V
    :try_end_8e
    .catch Lorg/xml/sax/SAXException; {:try_start_86 .. :try_end_8e} :catch_94
    .catchall {:try_start_86 .. :try_end_8e} :catchall_92

    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    return-void

    :catchall_92
    move-exception v0

    goto :goto_ae

    :catch_94
    move-exception v0

    :try_start_95
    new-instance v4, Ljava/io/IOException;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v5

    iget-object v5, v5, Lorg/eclipse/jgit/JGitText;->errorListing:Ljava/lang/String;

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v6, p0, Labcd/_H$a;->FH:Ljava/lang/String;

    aput-object v6, v2, v1

    invoke-static {v5, v2}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v4
    :try_end_ae
    .catchall {:try_start_95 .. :try_end_ae} :catchall_92

    :goto_ae
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    throw v0

    :catch_b2
    move-exception v0

    new-instance v0, Ljava/io/IOException;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->noXMLParserAvailable:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_bf
    iget-object v0, p0, Labcd/_H$a;->Zo:Labcd/_H;

    iget-object v1, p0, Labcd/_H$a;->FH:Ljava/lang/String;

    invoke-static {v0, v5, v1}, Labcd/_H;->j6(Labcd/_H;Ljava/lang/String;Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    goto :goto_c9

    :goto_c8
    throw v0

    :goto_c9
    goto :goto_c8
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .registers 5

    const-string p1, "Key"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_10

    const-string p1, "IsTruncated"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_17

    :cond_10
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object p1, p0, Labcd/_H$a;->v5:Ljava/lang/StringBuilder;

    :cond_17
    return-void
.end method
