.class public La/e/n;
.super La/e/h;


# instance fields
.field private final a:La/b/b;

.field private final b:Ljava/nio/charset/Charset;


# direct methods
.method public constructor <init>(La/b/b;Ljava/nio/charset/Charset;La/e/o;)V
    .registers 4

    invoke-direct {p0, p3}, La/e/h;-><init>(La/e/o;)V

    iput-object p1, p0, La/e/n;->a:La/b/b;

    iput-object p2, p0, La/e/n;->b:Ljava/nio/charset/Charset;

    return-void
.end method

.method private a(Ljava/io/Writer;Ljava/lang/String;)V
    .registers 8

    const/16 v4, 0x2f

    const/16 v3, 0x2e

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_34

    invoke-virtual {p2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_35

    const/4 v0, 0x1

    move v2, v0

    :goto_12
    if-eqz v2, :cond_38

    invoke-virtual {p2, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    :goto_18
    iget-object v1, p0, La/e/n;->a:La/b/b;

    invoke-virtual {v1, v0}, La/b/b;->a(Ljava/lang/String;)La/b/c;

    move-result-object v1

    if-eqz v1, :cond_31

    invoke-interface {v1}, La/b/c;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_31

    if-eqz v2, :cond_3a

    invoke-virtual {v1, v4, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    :goto_30
    move-object p2, v0

    :cond_31
    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :cond_34
    return-void

    :cond_35
    const/4 v0, 0x0

    move v2, v0

    goto :goto_12

    :cond_38
    move-object v0, p2

    goto :goto_18

    :cond_3a
    move-object v0, v1

    goto :goto_30
.end method


# virtual methods
.method protected a(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .registers 7

    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    iget-object v2, p0, La/e/n;->b:Ljava/nio/charset/Charset;

    invoke-direct {v1, p1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/OutputStreamWriter;

    iget-object v3, p0, La/e/n;->b:Ljava/nio/charset/Charset;

    invoke-direct {v2, p2, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p0, v0, v1}, La/e/n;->a(Ljava/io/Reader;Ljava/io/Writer;)V

    invoke-virtual {v1}, Ljava/io/Writer;->flush()V

    return-void
.end method

.method protected a(Ljava/io/Reader;Ljava/io/Writer;)V
    .registers 6

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    :goto_5
    invoke-virtual {p1}, Ljava/io/Reader;->read()I

    move-result v1

    if-gez v1, :cond_13

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, v0}, La/e/n;->a(Ljava/io/Writer;Ljava/lang/String;)V

    return-void

    :cond_13
    int-to-char v1, v1

    invoke-static {v1}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v2

    if-nez v2, :cond_22

    const/16 v2, 0x2e

    if-eq v1, v2, :cond_22

    const/16 v2, 0x2d

    if-ne v1, v2, :cond_26

    :cond_22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_5

    :cond_26
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p2, v2}, La/e/n;->a(Ljava/io/Writer;Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->setLength(I)V

    invoke-virtual {p2, v1}, Ljava/io/Writer;->write(I)V

    goto :goto_5
.end method
