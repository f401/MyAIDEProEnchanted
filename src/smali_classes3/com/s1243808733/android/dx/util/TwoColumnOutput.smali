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

    const/16 v2, 0x3e8

    const/4 v0, 0x1

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    if-nez p1, :cond_0

    .line 91
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "out == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 94
    :cond_0
    if-ge p2, v0, :cond_1

    .line 95
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "leftWidth < 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 98
    :cond_1
    if-ge p3, v0, :cond_2

    .line 99
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "rightWidth < 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 102
    :cond_2
    if-nez p4, :cond_3

    .line 103
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "spacer == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 106
    :cond_3
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0, v2}, Ljava/io/StringWriter;-><init>(I)V

    .line 107
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1, v2}, Ljava/io/StringWriter;-><init>(I)V

    .line 109
    iput-object p1, p0, Lcom/s1243808733/android/dx/util/TwoColumnOutput;->out:Ljava/io/Writer;

    .line 110
    iput p2, p0, Lcom/s1243808733/android/dx/util/TwoColumnOutput;->leftWidth:I

    .line 111
    invoke-virtual {v0}, Ljava/io/StringWriter;->getBuffer()Ljava/lang/StringBuffer;

    move-result-object v2

    iput-object v2, p0, Lcom/s1243808733/android/dx/util/TwoColumnOutput;->leftBuf:Ljava/lang/StringBuffer;

    .line 112
    invoke-virtual {v1}, Ljava/io/StringWriter;->getBuffer()Ljava/lang/StringBuffer;

    move-result-object v2

    iput-object v2, p0, Lcom/s1243808733/android/dx/util/TwoColumnOutput;->rightBuf:Ljava/lang/StringBuffer;

    .line 113
    new-instance v2, Lcom/s1243808733/android/dx/util/IndentingWriter;

    invoke-direct {v2, v0, p2}, Lcom/s1243808733/android/dx/util/IndentingWriter;-><init>(Ljava/io/Writer;I)V

    iput-object v2, p0, Lcom/s1243808733/android/dx/util/TwoColumnOutput;->leftColumn:Lcom/s1243808733/android/dx/util/IndentingWriter;

    .line 114
    new-instance v0, Lcom/s1243808733/android/dx/util/IndentingWriter;

    invoke-direct {v0, v1, p3, p4}, Lcom/s1243808733/android/dx/util/IndentingWriter;-><init>(Ljava/io/Writer;ILjava/lang/String;)V

    iput-object v0, p0, Lcom/s1243808733/android/dx/util/TwoColumnOutput;->rightColumn:Lcom/s1243808733/android/dx/util/IndentingWriter;

    return-void
.end method

.method private static appendNewlineIfNecessary(Ljava/lang/StringBuffer;Ljava/io/Writer;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuffer;",
            "Ljava/io/Writer;",
            ")V^",
            "Ljava/io/IOException;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v1, 0xa

    .line 235
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    .line 237
    if-eqz v0, :cond_0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v0

    if-eq v0, v1, :cond_0

    .line 238
    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(I)V

    :cond_0
    return-void
.end method

.method private flushLeft()V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V^",
            "Ljava/io/IOException;"
        }
    .end annotation

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
    :goto_0
    iget-object v0, p0, Lcom/s1243808733/android/dx/util/TwoColumnOutput;->leftBuf:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 207
    :cond_0
    iget-object v0, p0, Lcom/s1243808733/android/dx/util/TwoColumnOutput;->rightColumn:Lcom/s1243808733/android/dx/util/IndentingWriter;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dx/util/IndentingWriter;->write(I)V

    .line 208
    invoke-direct {p0}, Lcom/s1243808733/android/dx/util/TwoColumnOutput;->outputFullLines()V

    goto :goto_0
.end method

.method private flushRight()V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V^",
            "Ljava/io/IOException;"
        }
    .end annotation

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
    :goto_0
    iget-object v0, p0, Lcom/s1243808733/android/dx/util/TwoColumnOutput;->rightBuf:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 220
    :cond_0
    iget-object v0, p0, Lcom/s1243808733/android/dx/util/TwoColumnOutput;->leftColumn:Lcom/s1243808733/android/dx/util/IndentingWriter;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dx/util/IndentingWriter;->write(I)V

    .line 221
    invoke-direct {p0}, Lcom/s1243808733/android/dx/util/TwoColumnOutput;->outputFullLines()V

    goto :goto_0
.end method

.method private outputFullLines()V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V^",
            "Ljava/io/IOException;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x0

    .line 173
    :goto_0
    iget-object v0, p0, Lcom/s1243808733/android/dx/util/TwoColumnOutput;->leftBuf:Ljava/lang/StringBuffer;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 174
    if-gez v0, :cond_1

    .line 180
    :cond_0
    return-void

    .line 178
    :cond_1
    iget-object v1, p0, Lcom/s1243808733/android/dx/util/TwoColumnOutput;->rightBuf:Ljava/lang/StringBuffer;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 179
    if-ltz v1, :cond_0

    .line 183
    if-eqz v0, :cond_2

    .line 184
    iget-object v2, p0, Lcom/s1243808733/android/dx/util/TwoColumnOutput;->out:Ljava/io/Writer;

    iget-object v3, p0, Lcom/s1243808733/android/dx/util/TwoColumnOutput;->leftBuf:Ljava/lang/StringBuffer;

    invoke-virtual {v3, v4, v0}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 187
    :cond_2
    if-eqz v1, :cond_3

    .line 188
    iget-object v2, p0, Lcom/s1243808733/android/dx/util/TwoColumnOutput;->out:Ljava/io/Writer;

    iget v3, p0, Lcom/s1243808733/android/dx/util/TwoColumnOutput;->leftWidth:I

    sub-int/2addr v3, v0

    invoke-static {v2, v3}, Lcom/s1243808733/android/dx/util/TwoColumnOutput;->writeSpaces(Ljava/io/Writer;I)V

    .line 189
    iget-object v2, p0, Lcom/s1243808733/android/dx/util/TwoColumnOutput;->out:Ljava/io/Writer;

    iget-object v3, p0, Lcom/s1243808733/android/dx/util/TwoColumnOutput;->rightBuf:Ljava/lang/StringBuffer;

    invoke-virtual {v3, v4, v1}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 192
    :cond_3
    iget-object v2, p0, Lcom/s1243808733/android/dx/util/TwoColumnOutput;->out:Ljava/io/Writer;

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(I)V

    .line 194
    iget-object v2, p0, Lcom/s1243808733/android/dx/util/TwoColumnOutput;->leftBuf:Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v2, v4, v0}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 195
    iget-object v0, p0, Lcom/s1243808733/android/dx/util/TwoColumnOutput;->rightBuf:Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v4, v1}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    goto :goto_0
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
    :try_start_0
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/util/TwoColumnOutput;->getLeft()Ljava/io/Writer;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 71
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/util/TwoColumnOutput;->getRight()Ljava/io/Writer;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/util/TwoColumnOutput;->flush()V

    .line 77
    invoke-virtual {v2}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 71
    :catch_0
    move-exception v0

    .line 73
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "shouldn\'t happen"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static writeSpaces(Ljava/io/Writer;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/Writer;",
            "I)V^",
            "Ljava/io/IOException;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 249
    :goto_0
    if-gtz p1, :cond_0

    return-void

    .line 250
    :cond_0
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(I)V

    .line 251
    add-int/lit8 p1, p1, -0x1

    goto :goto_0
.end method


# virtual methods
.method public flush()V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

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
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 161
    return-void

    .line 159
    :catch_0
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
