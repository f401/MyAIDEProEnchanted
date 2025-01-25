.class public Lorg/apache/commons/io/output/XmlStreamWriter;
.super Ljava/io/Writer;


# static fields
.field private static final BUFFER_SIZE:I = 0x1000

.field static final ENCODING_PATTERN:Ljava/util/regex/Pattern;


# instance fields
.field private final defaultEncoding:Ljava/lang/String;

.field private encoding:Ljava/lang/String;

.field private final out:Ljava/io/OutputStream;

.field private writer:Ljava/io/Writer;

.field private xmlPrologWriter:Ljava/io/StringWriter;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-object v0, Lorg/apache/commons/io/input/XmlStreamReader;->ENCODING_PATTERN:Ljava/util/regex/Pattern;

    sput-object v0, Lorg/apache/commons/io/output/XmlStreamWriter;->ENCODING_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/io/output/XmlStreamWriter;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {p0, v0, p2}, Lorg/apache/commons/io/output/XmlStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/io/output/XmlStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    new-instance v0, Ljava/io/StringWriter;

    const/16 v1, 0x1000

    invoke-direct {v0, v1}, Ljava/io/StringWriter;-><init>(I)V

    iput-object v0, p0, Lorg/apache/commons/io/output/XmlStreamWriter;->xmlPrologWriter:Ljava/io/StringWriter;

    iput-object p1, p0, Lorg/apache/commons/io/output/XmlStreamWriter;->out:Ljava/io/OutputStream;

    if-eqz p2, :cond_13

    :goto_10
    iput-object p2, p0, Lorg/apache/commons/io/output/XmlStreamWriter;->defaultEncoding:Ljava/lang/String;

    return-void

    :cond_13
    const-string p2, "UTF-8"

    goto :goto_10
.end method

.method private detectEncoding([CII)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v6, 0x1000

    const/4 v3, 0x5

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lorg/apache/commons/io/output/XmlStreamWriter;->xmlPrologWriter:Ljava/io/StringWriter;

    invoke-virtual {v0}, Ljava/io/StringWriter;->getBuffer()Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    add-int/2addr v0, p3

    if-le v0, v6, :cond_9d

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    rsub-int v0, v0, 0x1000

    :goto_18
    iget-object v2, p0, Lorg/apache/commons/io/output/XmlStreamWriter;->xmlPrologWriter:Ljava/io/StringWriter;

    invoke-virtual {v2, p1, p2, v0}, Ljava/io/StringWriter;->write([CII)V

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    if-lt v2, v3, :cond_87

    invoke-virtual {v1, v4, v3}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v3, "<?xml"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_98

    const-string v2, "?>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_8d

    sget-object v3, Lorg/apache/commons/io/output/XmlStreamWriter;->ENCODING_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v4, v2}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_88

    invoke-virtual {v2, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/commons/io/output/XmlStreamWriter;->encoding:Ljava/lang/String;

    iget-object v2, p0, Lorg/apache/commons/io/output/XmlStreamWriter;->encoding:Ljava/lang/String;

    iget-object v3, p0, Lorg/apache/commons/io/output/XmlStreamWriter;->encoding:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/commons/io/output/XmlStreamWriter;->encoding:Ljava/lang/String;

    :cond_61
    :goto_61
    iget-object v2, p0, Lorg/apache/commons/io/output/XmlStreamWriter;->encoding:Ljava/lang/String;

    if-eqz v2, :cond_87

    const/4 v2, 0x0

    iput-object v2, p0, Lorg/apache/commons/io/output/XmlStreamWriter;->xmlPrologWriter:Ljava/io/StringWriter;

    new-instance v2, Ljava/io/OutputStreamWriter;

    iget-object v3, p0, Lorg/apache/commons/io/output/XmlStreamWriter;->out:Ljava/io/OutputStream;

    iget-object v4, p0, Lorg/apache/commons/io/output/XmlStreamWriter;->encoding:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    iput-object v2, p0, Lorg/apache/commons/io/output/XmlStreamWriter;->writer:Ljava/io/Writer;

    iget-object v2, p0, Lorg/apache/commons/io/output/XmlStreamWriter;->writer:Ljava/io/Writer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    if-le p3, v0, :cond_87

    iget-object v1, p0, Lorg/apache/commons/io/output/XmlStreamWriter;->writer:Ljava/io/Writer;

    add-int v2, p2, v0

    sub-int v0, p3, v0

    invoke-virtual {v1, p1, v2, v0}, Ljava/io/Writer;->write([CII)V

    :cond_87
    return-void

    :cond_88
    iget-object v2, p0, Lorg/apache/commons/io/output/XmlStreamWriter;->defaultEncoding:Ljava/lang/String;

    iput-object v2, p0, Lorg/apache/commons/io/output/XmlStreamWriter;->encoding:Ljava/lang/String;

    goto :goto_61

    :cond_8d
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    if-lt v2, v6, :cond_61

    iget-object v2, p0, Lorg/apache/commons/io/output/XmlStreamWriter;->defaultEncoding:Ljava/lang/String;

    iput-object v2, p0, Lorg/apache/commons/io/output/XmlStreamWriter;->encoding:Ljava/lang/String;

    goto :goto_61

    :cond_98
    iget-object v2, p0, Lorg/apache/commons/io/output/XmlStreamWriter;->defaultEncoding:Ljava/lang/String;

    iput-object v2, p0, Lorg/apache/commons/io/output/XmlStreamWriter;->encoding:Ljava/lang/String;

    goto :goto_61

    :cond_9d
    move v0, p3

    goto/16 :goto_18
.end method


# virtual methods
.method public close()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/commons/io/output/XmlStreamWriter;->writer:Ljava/io/Writer;

    if-nez v0, :cond_1e

    iget-object v0, p0, Lorg/apache/commons/io/output/XmlStreamWriter;->defaultEncoding:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/commons/io/output/XmlStreamWriter;->encoding:Ljava/lang/String;

    new-instance v0, Ljava/io/OutputStreamWriter;

    iget-object v1, p0, Lorg/apache/commons/io/output/XmlStreamWriter;->out:Ljava/io/OutputStream;

    iget-object v2, p0, Lorg/apache/commons/io/output/XmlStreamWriter;->encoding:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/commons/io/output/XmlStreamWriter;->writer:Ljava/io/Writer;

    iget-object v0, p0, Lorg/apache/commons/io/output/XmlStreamWriter;->writer:Ljava/io/Writer;

    iget-object v1, p0, Lorg/apache/commons/io/output/XmlStreamWriter;->xmlPrologWriter:Ljava/io/StringWriter;

    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :cond_1e
    iget-object v0, p0, Lorg/apache/commons/io/output/XmlStreamWriter;->writer:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    return-void
.end method

.method public flush()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/commons/io/output/XmlStreamWriter;->writer:Ljava/io/Writer;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lorg/apache/commons/io/output/XmlStreamWriter;->writer:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V

    :cond_9
    return-void
.end method

.method public getDefaultEncoding()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/apache/commons/io/output/XmlStreamWriter;->defaultEncoding:Ljava/lang/String;

    return-object v0
.end method

.method public getEncoding()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/apache/commons/io/output/XmlStreamWriter;->encoding:Ljava/lang/String;

    return-object v0
.end method

.method public write([CII)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/commons/io/output/XmlStreamWriter;->xmlPrologWriter:Ljava/io/StringWriter;

    if-eqz v0, :cond_8

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/io/output/XmlStreamWriter;->detectEncoding([CII)V

    :goto_7
    return-void

    :cond_8
    iget-object v0, p0, Lorg/apache/commons/io/output/XmlStreamWriter;->writer:Ljava/io/Writer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/Writer;->write([CII)V

    goto :goto_7
.end method
