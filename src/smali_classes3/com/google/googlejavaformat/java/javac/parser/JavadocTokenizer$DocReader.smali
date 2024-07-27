.class Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer$DocReader;
.super Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;
.source "JavadocTokenizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DocReader"
.end annotation


# instance fields
.field col:I

.field pbuf:[I

.field pp:I

.field startPos:I


# direct methods
.method constructor <init>(Lcom/google/googlejavaformat/java/javac/parser/ScannerFactory;[CII)V
    .registers 6

    .line 111
    invoke-direct {p0, p1, p2, p3}, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;-><init>(Lcom/google/googlejavaformat/java/javac/parser/ScannerFactory;[CI)V

    .line 103
    const/16 v0, 0x80

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer$DocReader;->pbuf:[I

    .line 108
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer$DocReader;->pp:I

    .line 112
    iput p4, p0, Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer$DocReader;->startPos:I

    .line 113
    return-void
.end method


# virtual methods
.method protected convertUnicode()V
    .registers 6

    const/16 v3, 0x75

    const/16 v2, 0x5c

    const/16 v4, 0x10

    .line 117
    iget-char v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer$DocReader;->ch:C

    if-ne v0, v2, :cond_2

    iget v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer$DocReader;->unicodeConversionBp:I

    iget v1, p0, Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer$DocReader;->bp:I

    if-eq v0, v1, :cond_2

    .line 118
    iget v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer$DocReader;->bp:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer$DocReader;->bp:I

    iget-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer$DocReader;->buf:[C

    iget v1, p0, Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer$DocReader;->bp:I

    aget-char v0, v0, v1

    iput-char v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer$DocReader;->ch:C

    iget v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer$DocReader;->col:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer$DocReader;->col:I

    .line 119
    iget-char v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer$DocReader;->ch:C

    if-ne v0, v3, :cond_3

    .line 121
    :cond_0
    iget v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer$DocReader;->bp:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer$DocReader;->bp:I

    iget-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer$DocReader;->buf:[C

    iget v1, p0, Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer$DocReader;->bp:I

    aget-char v0, v0, v1

    iput-char v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer$DocReader;->ch:C

    iget v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer$DocReader;->col:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer$DocReader;->col:I

    .line 122
    iget-char v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer$DocReader;->ch:C

    if-eq v0, v3, :cond_0

    .line 123
    iget v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer$DocReader;->bp:I

    add-int/lit8 v3, v0, 0x3

    .line 124
    iget v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer$DocReader;->buflen:I

    if-ge v3, v0, :cond_2

    .line 125
    iget v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer$DocReader;->bp:I

    invoke-virtual {p0, v0, v4}, Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer$DocReader;->digit(II)I

    move-result v1

    move v0, v1

    move v2, v1

    .line 127
    :goto_0
    iget v1, p0, Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer$DocReader;->bp:I

    if-ge v1, v3, :cond_1

    if-ltz v0, :cond_1

    .line 128
    iget v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer$DocReader;->bp:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer$DocReader;->bp:I

    iget-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer$DocReader;->buf:[C

    iget v1, p0, Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer$DocReader;->bp:I

    aget-char v0, v0, v1

    iput-char v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer$DocReader;->ch:C

    iget v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer$DocReader;->col:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer$DocReader;->col:I

    .line 129
    iget v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer$DocReader;->bp:I

    invoke-virtual {p0, v0, v4}, Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer$DocReader;->digit(II)I

    move-result v0

    .line 130
    shl-int/lit8 v1, v2, 0x4

    add-int/2addr v1, v0

    move v2, v1

    goto :goto_0

    .line 132
    :cond_1
    if-ltz v0, :cond_2

    .line 133
    int-to-char v0, v2

    iput-char v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer$DocReader;->ch:C

    .line 134
    iget v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer$DocReader;->bp:I

    iput v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer$DocReader;->unicodeConversionBp:I

    .line 145
    :cond_2
    :goto_1
    return-void

    .line 140
    :cond_3
    iget v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer$DocReader;->bp:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer$DocReader;->bp:I

    .line 141
    iput-char v2, p0, Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer$DocReader;->ch:C

    .line 142
    iget v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer$DocReader;->col:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer$DocReader;->col:I

    goto :goto_1
.end method

.method public putChar(CZ)V
    .registers 8

    const/4 v4, 0x0

    .line 194
    iget v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer$DocReader;->pp:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer$DocReader;->sp:I

    iget-object v1, p0, Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer$DocReader;->pbuf:[I

    iget v2, p0, Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer$DocReader;->pp:I

    add-int/lit8 v2, v2, -0x2

    aget v1, v1, v2

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer$DocReader;->startPos:I

    iget v2, p0, Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer$DocReader;->bp:I

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer$DocReader;->pbuf:[I

    iget v3, p0, Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer$DocReader;->pp:I

    add-int/lit8 v3, v3, -0x1

    aget v2, v2, v3

    sub-int/2addr v1, v2

    if-eq v0, v1, :cond_2

    .line 196
    :cond_0
    iget v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer$DocReader;->pp:I

    iget-object v1, p0, Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer$DocReader;->pbuf:[I

    add-int/lit8 v0, v0, 0x1

    array-length v2, v1

    if-lt v0, v2, :cond_1

    .line 197
    array-length v0, v1

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [I

    .line 198
    array-length v2, v1

    invoke-static {v1, v4, v0, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 199
    iput-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer$DocReader;->pbuf:[I

    .line 201
    :cond_1
    iget-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer$DocReader;->pbuf:[I

    iget v1, p0, Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer$DocReader;->pp:I

    iget v2, p0, Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer$DocReader;->sp:I

    aput v2, v0, v1

    .line 202
    iget-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer$DocReader;->pbuf:[I

    iget v1, p0, Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer$DocReader;->pp:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer$DocReader;->startPos:I

    iget v3, p0, Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer$DocReader;->bp:I

    add-int/2addr v2, v3

    aput v2, v0, v1

    .line 203
    iget v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer$DocReader;->pp:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer$DocReader;->pp:I

    .line 205
    :cond_2
    invoke-super {p0, p1, p2}, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;->putChar(CZ)V

    .line 206
    return-void
.end method

.method protected scanChar()V
    .registers 5

    const/16 v3, 0xd

    const/4 v2, 0x0

    .line 162
    iget v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer$DocReader;->bp:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer$DocReader;->bp:I

    .line 163
    iget-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer$DocReader;->buf:[C

    iget v1, p0, Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer$DocReader;->bp:I

    aget-char v0, v0, v1

    iput-char v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer$DocReader;->ch:C

    .line 164
    iget-char v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer$DocReader;->ch:C

    const/16 v1, 0x9

    if-eq v0, v1, :cond_5

    const/16 v1, 0xa

    if-eq v0, v1, :cond_3

    if-eq v0, v3, :cond_2

    const/16 v1, 0x5c

    if-eq v0, v1, :cond_1

    .line 181
    iget v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer$DocReader;->col:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer$DocReader;->col:I

    .line 175
    :cond_0
    :goto_0
    return-void

    .line 177
    :cond_1
    iget v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer$DocReader;->col:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer$DocReader;->col:I

    .line 178
    invoke-virtual {p0}, Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer$DocReader;->convertUnicode()V

    goto :goto_0

    .line 166
    :cond_2
    iput v2, p0, Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer$DocReader;->col:I

    goto :goto_0

    .line 169
    :cond_3
    iget v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer$DocReader;->bp:I

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer$DocReader;->buf:[C

    iget v1, p0, Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer$DocReader;->bp:I

    add-int/lit8 v1, v1, -0x1

    aget-char v0, v0, v1

    if-eq v0, v3, :cond_0

    .line 170
    :cond_4
    iput v2, p0, Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer$DocReader;->col:I

    goto :goto_0

    .line 174
    :cond_5
    iget v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer$DocReader;->col:I

    div-int/lit8 v0, v0, 0x8

    mul-int/lit8 v0, v0, 0x8

    add-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer$DocReader;->col:I

    goto :goto_0
.end method

.method protected scanCommentChar()V
    .registers 3

    const/16 v1, 0x5c

    .line 149
    invoke-virtual {p0}, Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer$DocReader;->scanChar()V

    .line 150
    iget-char v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer$DocReader;->ch:C

    if-ne v0, v1, :cond_0

    .line 151
    invoke-virtual {p0}, Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer$DocReader;->peekChar()C

    move-result v0

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer$DocReader;->isUnicode()Z

    move-result v0

    if-nez v0, :cond_1

    .line 152
    iget-char v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer$DocReader;->ch:C

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer$DocReader;->putChar(CZ)V

    .line 153
    iget v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer$DocReader;->bp:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer$DocReader;->bp:I

    iget v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer$DocReader;->col:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer$DocReader;->col:I

    .line 158
    :cond_0
    :goto_0
    return-void

    .line 155
    :cond_1
    invoke-virtual {p0}, Lcom/google/googlejavaformat/java/javac/parser/JavadocTokenizer$DocReader;->convertUnicode()V

    goto :goto_0
.end method
