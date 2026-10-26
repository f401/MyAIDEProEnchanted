.class public Lorg/antlr/v4/runtime/UnbufferedCharStream;
.super Ljava/lang/Object;
.source "UnbufferedCharStream.java"

# interfaces
.implements Lorg/antlr/v4/runtime/CharStream;


# instance fields
.field protected currentCharIndex:I

.field protected data:[I

.field protected input:Ljava/io/Reader;

.field protected lastChar:I

.field protected lastCharBufferStart:I

.field protected n:I

.field public name:Ljava/lang/String;

.field protected numMarkers:I

.field protected p:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 87
    const/16 v0, 0x100

    invoke-direct {p0, v0}, Lorg/antlr/v4/runtime/UnbufferedCharStream;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    const/4 v1, 0x0

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput v1, p0, Lorg/antlr/v4/runtime/UnbufferedCharStream;->p:I

    .line 59
    iput v1, p0, Lorg/antlr/v4/runtime/UnbufferedCharStream;->numMarkers:I

    .line 64
    const/4 v0, -0x1

    iput v0, p0, Lorg/antlr/v4/runtime/UnbufferedCharStream;->lastChar:I

    .line 78
    iput v1, p0, Lorg/antlr/v4/runtime/UnbufferedCharStream;->currentCharIndex:I

    .line 92
    iput v1, p0, Lorg/antlr/v4/runtime/UnbufferedCharStream;->n:I

    .line 93
    new-array v0, p1, [I

    iput-object v0, p0, Lorg/antlr/v4/runtime/UnbufferedCharStream;->data:[I

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    .line 97
    const/16 v0, 0x100

    invoke-direct {p0, p1, v0}, Lorg/antlr/v4/runtime/UnbufferedCharStream;-><init>(Ljava/io/InputStream;I)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;I)V
    .locals 1

    .line 105
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {p0, p1, p2, v0}, Lorg/antlr/v4/runtime/UnbufferedCharStream;-><init>(Ljava/io/InputStream;ILjava/nio/charset/Charset;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;ILjava/nio/charset/Charset;)V
    .locals 1

    .line 109
    invoke-direct {p0, p2}, Lorg/antlr/v4/runtime/UnbufferedCharStream;-><init>(I)V

    .line 110
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p1, p3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    iput-object v0, p0, Lorg/antlr/v4/runtime/UnbufferedCharStream;->input:Ljava/io/Reader;

    .line 111
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/antlr/v4/runtime/UnbufferedCharStream;->fill(I)I

    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;)V
    .locals 1

    .line 101
    const/16 v0, 0x100

    invoke-direct {p0, p1, v0}, Lorg/antlr/v4/runtime/UnbufferedCharStream;-><init>(Ljava/io/Reader;I)V

    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;I)V
    .locals 1

    .line 115
    invoke-direct {p0, p2}, Lorg/antlr/v4/runtime/UnbufferedCharStream;-><init>(I)V

    .line 116
    iput-object p1, p0, Lorg/antlr/v4/runtime/UnbufferedCharStream;->input:Ljava/io/Reader;

    .line 117
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/antlr/v4/runtime/UnbufferedCharStream;->fill(I)I

    return-void
.end method


# virtual methods
.method public LA(I)I
    .locals 3

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    .line 222
    iget v0, p0, Lorg/antlr/v4/runtime/UnbufferedCharStream;->lastChar:I

    .line 227
    :cond_0
    :goto_0
    return v0

    .line 223
    :cond_1
    invoke-virtual {p0, p1}, Lorg/antlr/v4/runtime/UnbufferedCharStream;->sync(I)V

    .line 224
    iget v1, p0, Lorg/antlr/v4/runtime/UnbufferedCharStream;->p:I

    add-int/2addr v1, p1

    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_2

    .line 226
    iget v2, p0, Lorg/antlr/v4/runtime/UnbufferedCharStream;->n:I

    if-ge v1, v2, :cond_0

    .line 227
    iget-object v0, p0, Lorg/antlr/v4/runtime/UnbufferedCharStream;->data:[I

    aget v0, v0, v1

    goto :goto_0

    .line 225
    :cond_2
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method protected add(I)V
    .locals 3

    .line 214
    iget v0, p0, Lorg/antlr/v4/runtime/UnbufferedCharStream;->n:I

    iget-object v1, p0, Lorg/antlr/v4/runtime/UnbufferedCharStream;->data:[I

    array-length v2, v1

    if-lt v0, v2, :cond_0

    .line 215
    array-length v0, v1

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Lorg/antlr/v4/runtime/UnbufferedCharStream;->data:[I

    .line 217
    :cond_0
    iget-object v0, p0, Lorg/antlr/v4/runtime/UnbufferedCharStream;->data:[I

    iget v1, p0, Lorg/antlr/v4/runtime/UnbufferedCharStream;->n:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/antlr/v4/runtime/UnbufferedCharStream;->n:I

    aput p1, v0, v1

    return-void
.end method

.method public consume()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, -0x1

    .line 122
    invoke-virtual {p0, v4}, Lorg/antlr/v4/runtime/UnbufferedCharStream;->LA(I)I

    move-result v0

    if-eq v0, v3, :cond_1

    .line 127
    iget-object v0, p0, Lorg/antlr/v4/runtime/UnbufferedCharStream;->data:[I

    iget v1, p0, Lorg/antlr/v4/runtime/UnbufferedCharStream;->p:I

    aget v0, v0, v1

    iput v0, p0, Lorg/antlr/v4/runtime/UnbufferedCharStream;->lastChar:I

    .line 129
    iget v2, p0, Lorg/antlr/v4/runtime/UnbufferedCharStream;->n:I

    add-int/lit8 v2, v2, -0x1

    if-ne v1, v2, :cond_0

    iget v1, p0, Lorg/antlr/v4/runtime/UnbufferedCharStream;->numMarkers:I

    if-nez v1, :cond_0

    .line 130
    const/4 v1, 0x0

    iput v1, p0, Lorg/antlr/v4/runtime/UnbufferedCharStream;->n:I

    .line 131
    iput v3, p0, Lorg/antlr/v4/runtime/UnbufferedCharStream;->p:I

    .line 132
    iput v0, p0, Lorg/antlr/v4/runtime/UnbufferedCharStream;->lastCharBufferStart:I

    .line 135
    :cond_0
    iget v0, p0, Lorg/antlr/v4/runtime/UnbufferedCharStream;->p:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/antlr/v4/runtime/UnbufferedCharStream;->p:I

    .line 136
    iget v0, p0, Lorg/antlr/v4/runtime/UnbufferedCharStream;->currentCharIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/antlr/v4/runtime/UnbufferedCharStream;->currentCharIndex:I

    .line 137
    invoke-virtual {p0, v4}, Lorg/antlr/v4/runtime/UnbufferedCharStream;->sync(I)V

    return-void

    .line 123
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "cannot consume EOF"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected fill(I)I
    .locals 6

    const v5, 0xffff

    const/4 v4, -0x1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    .line 160
    iget v1, p0, Lorg/antlr/v4/runtime/UnbufferedCharStream;->n:I

    if-lez v1, :cond_1

    iget-object v2, p0, Lorg/antlr/v4/runtime/UnbufferedCharStream;->data:[I

    add-int/lit8 v1, v1, -0x1

    aget v1, v2, v1

    if-ne v1, v4, :cond_1

    move p1, v0

    .line 198
    :cond_0
    return p1

    .line 165
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/UnbufferedCharStream;->nextChar()I

    move-result v1

    if-gt v1, v5, :cond_2

    if-ne v1, v4, :cond_3

    .line 167
    :cond_2
    invoke-virtual {p0, v1}, Lorg/antlr/v4/runtime/UnbufferedCharStream;->add(I)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 165
    :cond_3
    int-to-char v2, v1

    .line 171
    invoke-static {v2}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v3

    if-nez v3, :cond_8

    .line 174
    invoke-static {v2}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 175
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/UnbufferedCharStream;->nextChar()I

    move-result v1

    if-gt v1, v5, :cond_6

    if-eq v1, v4, :cond_5

    int-to-char v1, v1

    .line 184
    invoke-static {v1}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 185
    invoke-static {v2, v1}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/antlr/v4/runtime/UnbufferedCharStream;->add(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 167
    :catch_0
    move-exception v0

    .line 198
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 188
    :cond_4
    :try_start_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Invalid UTF-16 (dangling high surrogate"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 180
    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Invalid UTF-16 (dangling high surrogate at end of file)"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 177
    :cond_6
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Invalid UTF-16 (high surrogate followed by code point > U+FFFF"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 193
    :cond_7
    invoke-virtual {p0, v1}, Lorg/antlr/v4/runtime/UnbufferedCharStream;->add(I)V

    goto :goto_1

    .line 172
    :cond_8
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Invalid UTF-16 (low surrogate with no preceding high surrogate)"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
.end method

.method protected final getBufferStartIndex()I
    .locals 2

    .line 345
    iget v0, p0, Lorg/antlr/v4/runtime/UnbufferedCharStream;->currentCharIndex:I

    iget v1, p0, Lorg/antlr/v4/runtime/UnbufferedCharStream;->p:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getSourceName()Ljava/lang/String;
    .locals 1

    .line 315
    iget-object v0, p0, Lorg/antlr/v4/runtime/UnbufferedCharStream;->name:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 316
    :cond_0
    const-string v0, "<unknown>"

    .line 319
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lorg/antlr/v4/runtime/UnbufferedCharStream;->name:Ljava/lang/String;

    goto :goto_0
.end method

.method public getText(Lorg/antlr/v4/runtime/misc/Interval;)Ljava/lang/String;
    .locals 4

    .line 324
    iget v0, p1, Lorg/antlr/v4/runtime/misc/Interval;->a:I

    if-ltz v0, :cond_3

    iget v0, p1, Lorg/antlr/v4/runtime/misc/Interval;->b:I

    iget v1, p1, Lorg/antlr/v4/runtime/misc/Interval;->a:I

    add-int/lit8 v1, v1, -0x1

    if-lt v0, v1, :cond_3

    .line 328
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/UnbufferedCharStream;->getBufferStartIndex()I

    move-result v0

    .line 329
    iget v1, p0, Lorg/antlr/v4/runtime/UnbufferedCharStream;->n:I

    if-lez v1, :cond_0

    iget-object v2, p0, Lorg/antlr/v4/runtime/UnbufferedCharStream;->data:[I

    add-int/lit8 v1, v1, -0x1

    aget v1, v2, v1

    const v2, 0xffff

    if-ne v1, v2, :cond_0

    .line 330
    iget v1, p1, Lorg/antlr/v4/runtime/misc/Interval;->a:I

    invoke-virtual {p1}, Lorg/antlr/v4/runtime/misc/Interval;->length()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, p0, Lorg/antlr/v4/runtime/UnbufferedCharStream;->n:I

    add-int/2addr v2, v0

    if-gt v1, v2, :cond_1

    .line 335
    :cond_0
    iget v1, p1, Lorg/antlr/v4/runtime/misc/Interval;->a:I

    if-lt v1, v0, :cond_2

    iget v1, p1, Lorg/antlr/v4/runtime/misc/Interval;->b:I

    iget v2, p0, Lorg/antlr/v4/runtime/UnbufferedCharStream;->n:I

    add-int/2addr v2, v0

    if-ge v1, v2, :cond_2

    .line 340
    iget v1, p1, Lorg/antlr/v4/runtime/misc/Interval;->a:I

    .line 341
    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lorg/antlr/v4/runtime/UnbufferedCharStream;->data:[I

    sub-int v0, v1, v0

    invoke-virtual {p1}, Lorg/antlr/v4/runtime/misc/Interval;->length()I

    move-result v1

    invoke-direct {v2, v3, v0, v1}, Ljava/lang/String;-><init>([III)V

    return-object v2

    .line 331
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "the interval extends past the end of the stream"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 336
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "interval "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " outside buffer: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ".."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/antlr/v4/runtime/UnbufferedCharStream;->n:I

    add-int/2addr v0, v2

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 325
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid interval"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public index()I
    .locals 1

    .line 271
    iget v0, p0, Lorg/antlr/v4/runtime/UnbufferedCharStream;->currentCharIndex:I

    return v0
.end method

.method public mark()I
    .locals 2

    .line 239
    iget v0, p0, Lorg/antlr/v4/runtime/UnbufferedCharStream;->numMarkers:I

    if-nez v0, :cond_0

    .line 240
    iget v1, p0, Lorg/antlr/v4/runtime/UnbufferedCharStream;->lastChar:I

    iput v1, p0, Lorg/antlr/v4/runtime/UnbufferedCharStream;->lastCharBufferStart:I

    :cond_0
    neg-int v1, v0

    .line 244
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/antlr/v4/runtime/UnbufferedCharStream;->numMarkers:I

    add-int/lit8 v0, v1, -0x1

    return v0
.end method

.method protected nextChar()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 210
    iget-object v0, p0, Lorg/antlr/v4/runtime/UnbufferedCharStream;->input:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->read()I

    move-result v0

    return v0
.end method

.method public release(I)V
    .locals 4

    const/4 v3, 0x0

    .line 253
    iget v0, p0, Lorg/antlr/v4/runtime/UnbufferedCharStream;->numMarkers:I

    neg-int v1, v0

    if-ne p1, v1, :cond_1

    add-int/lit8 v0, v0, -0x1

    .line 258
    iput v0, p0, Lorg/antlr/v4/runtime/UnbufferedCharStream;->numMarkers:I

    if-nez v0, :cond_0

    .line 259
    iget v0, p0, Lorg/antlr/v4/runtime/UnbufferedCharStream;->p:I

    if-lez v0, :cond_0

    .line 262
    iget-object v1, p0, Lorg/antlr/v4/runtime/UnbufferedCharStream;->data:[I

    iget v2, p0, Lorg/antlr/v4/runtime/UnbufferedCharStream;->n:I

    sub-int/2addr v2, v0

    invoke-static {v1, v0, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 263
    iget v0, p0, Lorg/antlr/v4/runtime/UnbufferedCharStream;->n:I

    iget v1, p0, Lorg/antlr/v4/runtime/UnbufferedCharStream;->p:I

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/antlr/v4/runtime/UnbufferedCharStream;->n:I

    .line 264
    iput v3, p0, Lorg/antlr/v4/runtime/UnbufferedCharStream;->p:I

    .line 265
    iget v0, p0, Lorg/antlr/v4/runtime/UnbufferedCharStream;->lastChar:I

    iput v0, p0, Lorg/antlr/v4/runtime/UnbufferedCharStream;->lastCharBufferStart:I

    :cond_0
    return-void

    .line 255
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "release() called with an invalid marker."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public seek(I)V
    .locals 3

    .line 279
    iget v0, p0, Lorg/antlr/v4/runtime/UnbufferedCharStream;->currentCharIndex:I

    if-ne p1, v0, :cond_0

    .line 304
    :goto_0
    return-void

    .line 279
    :cond_0
    if-le p1, v0, :cond_1

    .line 284
    sub-int v0, p1, v0

    invoke-virtual {p0, v0}, Lorg/antlr/v4/runtime/UnbufferedCharStream;->sync(I)V

    .line 285
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/UnbufferedCharStream;->getBufferStartIndex()I

    move-result v0

    iget v1, p0, Lorg/antlr/v4/runtime/UnbufferedCharStream;->n:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 289
    :cond_1
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/UnbufferedCharStream;->getBufferStartIndex()I

    move-result v0

    sub-int v0, p1, v0

    if-ltz v0, :cond_4

    .line 293
    iget v1, p0, Lorg/antlr/v4/runtime/UnbufferedCharStream;->n:I

    if-ge v0, v1, :cond_3

    .line 298
    iput v0, p0, Lorg/antlr/v4/runtime/UnbufferedCharStream;->p:I

    .line 299
    iput p1, p0, Lorg/antlr/v4/runtime/UnbufferedCharStream;->currentCharIndex:I

    if-nez v0, :cond_2

    .line 301
    iget v0, p0, Lorg/antlr/v4/runtime/UnbufferedCharStream;->lastCharBufferStart:I

    iput v0, p0, Lorg/antlr/v4/runtime/UnbufferedCharStream;->lastChar:I

    goto :goto_0

    .line 304
    :cond_2
    iget-object v1, p0, Lorg/antlr/v4/runtime/UnbufferedCharStream;->data:[I

    add-int/lit8 v0, v0, -0x1

    aget v0, v1, v0

    iput v0, p0, Lorg/antlr/v4/runtime/UnbufferedCharStream;->lastChar:I

    goto :goto_0

    .line 294
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "seek to index outside buffer: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " not in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/antlr/v4/runtime/UnbufferedCharStream;->getBufferStartIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ".."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/antlr/v4/runtime/UnbufferedCharStream;->getBufferStartIndex()I

    move-result v1

    iget v2, p0, Lorg/antlr/v4/runtime/UnbufferedCharStream;->n:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 291
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "cannot seek to negative index "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public size()I
    .locals 2

    .line 310
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Unbuffered stream cannot know its size"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected sync(I)V
    .locals 2

    .line 147
    iget v0, p0, Lorg/antlr/v4/runtime/UnbufferedCharStream;->p:I

    add-int/2addr v0, p1

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lorg/antlr/v4/runtime/UnbufferedCharStream;->n:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    if-lez v0, :cond_0

    .line 149
    invoke-virtual {p0, v0}, Lorg/antlr/v4/runtime/UnbufferedCharStream;->fill(I)I

    :cond_0
    return-void
.end method
