.class public final Lcom/s1243808733/android/dx/util/TwoColumnOutput;
.super Ljava/lang/Object;
.source "TwoColumnOutput.java"


# instance fields
.field private final leftBuf:Ljava/lang/StringBuffer;

.field private final leftColumn:Lcom/s1243808733/android/dx/util/IndentingWriter;

.field private final leftWidth:I

.field private final out:Ljava/io/Writer;

.field private final rightBuf:Ljava/lang/StringBuffer;

.field private final rightColumn:Lcom/s1243808733/android/dx/util/IndentingWriter;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;IILjava/lang/String;)V
    .registers 6

    .line 128
    new-instance v0, Ljava/io/OutputStreamWriter;

    invoke-direct {v0, p1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {p0, v0, p2, p3, p4}, Lcom/s1243808733/android/dx/util/TwoColumnOutput;-><init>(Ljava/io/Writer;IILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;IILjava/lang/String;)V
    .registers 8

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_4f

    const/4 v0, 0x1

    if-lt p2, v0, :cond_47

    if-lt p3, v0, :cond_3f

    if-eqz p4, :cond_37

    .line 106
    new-instance v0, Ljava/io/StringWriter;

    const/16 v1, 0x3e8

    invoke-direct {v0, v1}, Ljava/io/StringWriter;-><init>(I)V

    .line 107
    new-instance v2, Ljava/io/StringWriter;

    invoke-direct {v2, v1}, Ljava/io/StringWriter;-><init>(I)V

    .line 109
    iput-object p1, p0, Lcom/s1243808733/android/dx/util/TwoColumnOutput;->out:Ljava/io/Writer;

    .line 110
    iput p2, p0, Lcom/s1243808733/android/dx/util/TwoColumnOutput;->leftWidth:I

    .line 111
    invoke-virtual {v0}, Ljava/io/StringWriter;->getBuffer()Ljava/lang/StringBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/s1243808733/android/dx/util/TwoColumnOutput;->leftBuf:Ljava/lang/StringBuffer;

    .line 112
    invoke-virtual {v2}, Ljava/io/StringWriter;->getBuffer()Ljava/lang/StringBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/s1243808733/android/dx/util/TwoColumnOutput;->rightBuf:Ljava/lang/StringBuffer;

    .line 113
    new-instance p1, Lcom/s1243808733/android/dx/util/IndentingWriter;

    invoke-direct {p1, v0, p2}, Lcom/s1243808733/android/dx/util/IndentingWriter;-><init>(Ljava/io/Writer;I)V

    iput-object p1, p0, Lcom/s1243808733/android/dx/util/TwoColumnOutput;->leftColumn:Lcom/s1243808733/android/dx/util/IndentingWriter;

    .line 114
    new-instance p1, Lcom/s1243808733/android/dx/util/IndentingWriter;

    invoke-direct {p1, v2, p3, p4}, Lcom/s1243808733/android/dx/util/IndentingWriter;-><init>(Ljava/io/Writer;ILjava/lang/String;)V

    iput-object p1, p0, Lcom/s1243808733/android/dx/util/TwoColumnOutput;->rightColumn:Lcom/s1243808733/android/dx/util/IndentingWriter;

    return-void

    .line 103
    :cond_37
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "spacer == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 99
    :cond_3f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "rightWidth < 1"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 95
    :cond_47
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "leftWidth < 1"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 91
    :cond_4f
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "out == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static appendNewlineIfNecessary(Ljava/lang/StringBuffer;Ljava/io/Writer;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 235
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-eqz v0, :cond_13

    .line 237
    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result p0

    const/16 v0, 0xa

    if-eq p0, v0, :cond_13

    .line 238
    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(I)V

    :cond_13
    return-void
.end method

.method private flushLeft()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 204
    iget-object v0, p0, Lcom/s1243808733/android/dx/util/TwoColumnOutput;->leftBuf:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/s1243808733/android/dx/util/TwoColumnOutput;->leftColumn:Lcom/s1243808733/android/dx/util/IndentingWriter;

    invoke-static {v0, v1}, Lcom/s1243808733/android/dx/util/TwoColumnOutput;->appendNewlineIfNecessary(Ljava/lang/StringBuffer;Ljava/io/Writer;)V

    .line 206
    :goto_7
    iget-object v0, p0, Lcom/s1243808733/android/dx/util/TwoColumnOutput;->leftBuf:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-eqz v0, :cond_1a

    .line 207
    iget-object v0, p0, Lcom/s1243808733/android/dx/util/TwoColumnOutput;->rightColumn:Lcom/s1243808733/android/dx/util/IndentingWriter;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dx/util/IndentingWriter;->write(I)V

    .line 208
    invoke-direct {p0}, Lcom/s1243808733/android/dx/util/TwoColumnOutput;->outputFullLines()V

    goto :goto_7

    :cond_1a
    return-void
.end method

.method private flushRight()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 217
    iget-object v0, p0, Lcom/s1243808733/android/dx/util/TwoColumnOutput;->rightBuf:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/s1243808733/android/dx/util/TwoColumnOutput;->rightColumn:Lcom/s1243808733/android/dx/util/IndentingWriter;

    invoke-static {v0, v1}, Lcom/s1243808733/android/dx/util/TwoColumnOutput;->appendNewlineIfNecessary(Ljava/lang/StringBuffer;Ljava/io/Writer;)V

    .line 219
    :goto_7
    iget-object v0, p0, Lcom/s1243808733/android/dx/util/TwoColumnOutput;->rightBuf:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-eqz v0, :cond_1a

    .line 220
    iget-object v0, p0, Lcom/s1243808733/android/dx/util/TwoColumnOutput;->leftColumn:Lcom/s1243808733/android/dx/util/IndentingWriter;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dx/util/IndentingWriter;->write(I)V

    .line 221
    invoke-direct {p0}, Lcom/s1243808733/android/dx/util/TwoColumnOutput;->outputFullLines()V

    goto :goto_7

    :cond_1a
    return-void
.end method

.method private outputFullLines()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 173
    nop

    :goto_1
    iget-object v0, p0, Lcom/s1243808733/android/dx/util/TwoColumnOutput;->leftBuf:Ljava/lang/StringBuffer;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_c

    return-void

    .line 178
    :cond_c
    iget-object v2, p0, Lcom/s1243808733/android/dx/util/TwoColumnOutput;->rightBuf:Ljava/lang/StringBuffer;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_15

    return-void

    :cond_15
    const/4 v2, 0x0

    if-eqz v0, :cond_23

    .line 184
    iget-object v3, p0, Lcom/s1243808733/android/dx/util/TwoColumnOutput;->out:Ljava/io/Writer;

    iget-object v4, p0, Lcom/s1243808733/android/dx/util/TwoColumnOutput;->leftBuf:Ljava/lang/StringBuffer;

    invoke-virtual {v4, v2, v0}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :cond_23
    if-eqz v1, :cond_38

    .line 188
    iget-object v3, p0, Lcom/s1243808733/android/dx/util/TwoColumnOutput;->out:Ljava/io/Writer;

    iget v4, p0, Lcom/s1243808733/android/dx/util/TwoColumnOutput;->leftWidth:I

    sub-int/2addr v4, v0

    invoke-static {v3, v4}, Lcom/s1243808733/android/dx/util/TwoColumnOutput;->writeSpaces(Ljava/io/Writer;I)V

    .line 189
    iget-object v3, p0, Lcom/s1243808733/android/dx/util/TwoColumnOutput;->out:Ljava/io/Writer;

    iget-object v4, p0, Lcom/s1243808733/android/dx/util/TwoColumnOutput;->rightBuf:Ljava/lang/StringBuffer;

    invoke-virtual {v4, v2, v1}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 192
    :cond_38
    iget-object v3, p0, Lcom/s1243808733/android/dx/util/TwoColumnOutput;->out:Ljava/io/Writer;

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(I)V

    .line 194
    iget-object v3, p0, Lcom/s1243808733/android/dx/util/TwoColumnOutput;->leftBuf:Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v3, v2, v0}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 195
    iget-object v0, p0, Lcom/s1243808733/android/dx/util/TwoColumnOutput;->rightBuf:Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v2, v1}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    goto :goto_1
.end method

.method public static toString(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .registers 8

    .line 62
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 63
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    .line 65
    new-instance v2, Ljava/io/StringWriter;

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x3

    invoke-direct {v2, v0}, Ljava/io/StringWriter;-><init>(I)V

    .line 66
    new-instance v0, Lcom/s1243808733/android/dx/util/TwoColumnOutput;

    invoke-direct {v0, v2, p1, p4, p2}, Lcom/s1243808733/android/dx/util/TwoColumnOutput;-><init>(Ljava/io/Writer;IILjava/lang/String;)V

    .line 70
    :try_start_15
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/util/TwoColumnOutput;->getLeft()Ljava/io/Writer;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 71
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/util/TwoColumnOutput;->getRight()Ljava/io/Writer;

    move-result-object p0

    invoke-virtual {p0, p3}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_23} :catch_2b

    .line 76
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/util/TwoColumnOutput;->flush()V

    .line 77
    invoke-virtual {v2}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catch_2b
    move-exception p0

    .line 73
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "shouldn\'t happen"

    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method private static writeSpaces(Ljava/io/Writer;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    if-lez p1, :cond_a

    .line 250
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(I)V

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_a
    return-void
.end method


# virtual methods
.method public flush()V
    .registers 3

    .line 155
    :try_start_0
    iget-object v0, p0, Lcom/s1243808733/android/dx/util/TwoColumnOutput;->leftBuf:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/s1243808733/android/dx/util/TwoColumnOutput;->leftColumn:Lcom/s1243808733/android/dx/util/IndentingWriter;

    invoke-static {v0, v1}, Lcom/s1243808733/android/dx/util/TwoColumnOutput;->appendNewlineIfNecessary(Ljava/lang/StringBuffer;Ljava/io/Writer;)V

    .line 156
    iget-object v0, p0, Lcom/s1243808733/android/dx/util/TwoColumnOutput;->rightBuf:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/s1243808733/android/dx/util/TwoColumnOutput;->rightColumn:Lcom/s1243808733/android/dx/util/IndentingWriter;

    invoke-static {v0, v1}, Lcom/s1243808733/android/dx/util/TwoColumnOutput;->appendNewlineIfNecessary(Ljava/lang/StringBuffer;Ljava/io/Writer;)V

    .line 157
    invoke-direct {p0}, Lcom/s1243808733/android/dx/util/TwoColumnOutput;->outputFullLines()V

    .line 158
    invoke-direct {p0}, Lcom/s1243808733/android/dx/util/TwoColumnOutput;->flushLeft()V

    .line 159
    invoke-direct {p0}, Lcom/s1243808733/android/dx/util/TwoColumnOutput;->flushRight()V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_17} :catch_18

    return-void

    :catch_18
    move-exception v0

    .line 161
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getLeft()Ljava/io/Writer;
    .registers 2

    .line 137
    iget-object v0, p0, Lcom/s1243808733/android/dx/util/TwoColumnOutput;->leftColumn:Lcom/s1243808733/android/dx/util/IndentingWriter;

    return-object v0
.end method

.method public getRight()Ljava/io/Writer;
    .registers 2

    .line 146
    iget-object v0, p0, Lcom/s1243808733/android/dx/util/TwoColumnOutput;->rightColumn:Lcom/s1243808733/android/dx/util/IndentingWriter;

    return-object v0
.end method
