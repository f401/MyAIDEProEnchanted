.class public Lcom/sun/tools/javac/parser/DocCommentScanner;
.super Lcom/sun/tools/javac/parser/Scanner;
.source "DocCommentScanner.java"


# instance fields
.field private bp:I

.field private buf:[C

.field private buflen:I

.field private ch:C

.field private col:I

.field private docComment:Ljava/lang/String;

.field private docCommentBuffer:[C

.field private docCommentCount:I

.field private pos:I

.field private unicodeConversionBp:I


# direct methods
.method protected constructor <init>(Lcom/sun/tools/javac/parser/ScannerFactory;Ljava/nio/CharBuffer;)V
    .registers 4

    .line 53
    invoke-direct {p0, p1, p2}, Lcom/sun/tools/javac/parser/Scanner;-><init>(Lcom/sun/tools/javac/parser/ScannerFactory;Ljava/nio/CharBuffer;)V

    .line 84
    const/4 v0, 0x0

    iput v0, p0, Lcom/sun/tools/javac/parser/DocCommentScanner;->unicodeConversionBp:I

    .line 89
    const/16 v0, 0x400

    new-array v0, v0, [C

    iput-object v0, p0, Lcom/sun/tools/javac/parser/DocCommentScanner;->docCommentBuffer:[C

    .line 99
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/tools/javac/parser/DocCommentScanner;->docComment:Ljava/lang/String;

    .line 54
    return-void
.end method

.method protected constructor <init>(Lcom/sun/tools/javac/parser/ScannerFactory;[CI)V
    .registers 5

    .line 60
    invoke-direct {p0, p1, p2, p3}, Lcom/sun/tools/javac/parser/Scanner;-><init>(Lcom/sun/tools/javac/parser/ScannerFactory;[CI)V

    .line 84
    const/4 v0, 0x0

    iput v0, p0, Lcom/sun/tools/javac/parser/DocCommentScanner;->unicodeConversionBp:I

    .line 89
    const/16 v0, 0x400

    new-array v0, v0, [C

    iput-object v0, p0, Lcom/sun/tools/javac/parser/DocCommentScanner;->docCommentBuffer:[C

    .line 99
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/tools/javac/parser/DocCommentScanner;->docComment:Ljava/lang/String;

    .line 61
    return-void
.end method

.method private convertUnicode()V
    .registers 7

    const/16 v5, 0x75

    const/16 v3, 0x5c

    const/16 v4, 0x10

    .line 127
    iget-char v0, p0, Lcom/sun/tools/javac/parser/DocCommentScanner;->ch:C

    if-ne v0, v3, :cond_2

    iget v0, p0, Lcom/sun/tools/javac/parser/DocCommentScanner;->unicodeConversionBp:I

    iget v1, p0, Lcom/sun/tools/javac/parser/DocCommentScanner;->bp:I

    if-eq v0, v1, :cond_2

    .line 128
    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/sun/tools/javac/parser/DocCommentScanner;->bp:I

    iget-object v1, p0, Lcom/sun/tools/javac/parser/DocCommentScanner;->buf:[C

    aget-char v1, v1, v0

    iput-char v1, p0, Lcom/sun/tools/javac/parser/DocCommentScanner;->ch:C

    iget v2, p0, Lcom/sun/tools/javac/parser/DocCommentScanner;->col:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/sun/tools/javac/parser/DocCommentScanner;->col:I

    .line 129
    if-ne v1, v5, :cond_3

    .line 131
    :cond_0
    iget v0, p0, Lcom/sun/tools/javac/parser/DocCommentScanner;->bp:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sun/tools/javac/parser/DocCommentScanner;->bp:I

    iget-object v1, p0, Lcom/sun/tools/javac/parser/DocCommentScanner;->buf:[C

    aget-char v1, v1, v0

    iput-char v1, p0, Lcom/sun/tools/javac/parser/DocCommentScanner;->ch:C

    iget v2, p0, Lcom/sun/tools/javac/parser/DocCommentScanner;->col:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/sun/tools/javac/parser/DocCommentScanner;->col:I

    .line 132
    if-eq v1, v5, :cond_0

    .line 133
    add-int/lit8 v3, v0, 0x3

    .line 134
    iget v0, p0, Lcom/sun/tools/javac/parser/DocCommentScanner;->buflen:I

    if-ge v3, v0, :cond_2

    .line 135
    invoke-direct {p0, v4}, Lcom/sun/tools/javac/parser/DocCommentScanner;->digit(I)I

    move-result v1

    move v0, v1

    move v2, v1

    .line 137
    :goto_0
    iget v1, p0, Lcom/sun/tools/javac/parser/DocCommentScanner;->bp:I

    if-ge v1, v3, :cond_1

    if-ltz v0, :cond_1

    .line 138
    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/sun/tools/javac/parser/DocCommentScanner;->bp:I

    iget-object v1, p0, Lcom/sun/tools/javac/parser/DocCommentScanner;->buf:[C

    aget-char v0, v1, v0

    iput-char v0, p0, Lcom/sun/tools/javac/parser/DocCommentScanner;->ch:C

    iget v0, p0, Lcom/sun/tools/javac/parser/DocCommentScanner;->col:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sun/tools/javac/parser/DocCommentScanner;->col:I

    .line 139
    invoke-direct {p0, v4}, Lcom/sun/tools/javac/parser/DocCommentScanner;->digit(I)I

    move-result v0

    .line 140
    shl-int/lit8 v1, v2, 0x4

    add-int/2addr v1, v0

    move v2, v1

    goto :goto_0

    .line 142
    :cond_1
    if-ltz v0, :cond_2

    .line 143
    int-to-char v0, v2

    iput-char v0, p0, Lcom/sun/tools/javac/parser/DocCommentScanner;->ch:C

    .line 144
    iget v0, p0, Lcom/sun/tools/javac/parser/DocCommentScanner;->bp:I

    iput v0, p0, Lcom/sun/tools/javac/parser/DocCommentScanner;->unicodeConversionBp:I

    .line 155
    :cond_2
    :goto_1
    return-void

    .line 150
    :cond_3
    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/sun/tools/javac/parser/DocCommentScanner;->bp:I

    .line 151
    iput-char v3, p0, Lcom/sun/tools/javac/parser/DocCommentScanner;->ch:C

    .line 152
    add-int/lit8 v0, v2, -0x1

    iput v0, p0, Lcom/sun/tools/javac/parser/DocCommentScanner;->col:I

    goto :goto_1
.end method

.method private digit(I)I
    .registers 5

    .line 115
    iget-char v0, p0, Lcom/sun/tools/javac/parser/DocCommentScanner;->ch:C

    .line 116
    invoke-static {v0, p1}, Ljava/lang/Character;->digit(CI)I

    move-result v1

    .line 117
    if-ltz v1, :cond_0

    const/16 v2, 0x7f

    if-le v0, v2, :cond_0

    .line 118
    const-string v0, "0123456789abcdef"

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    iput-char v0, p0, Lcom/sun/tools/javac/parser/DocCommentScanner;->ch:C

    .line 120
    :cond_0
    return v1
.end method

.method private expandCommentBuffer()V
    .registers 5

    const/4 v3, 0x0

    .line 105
    iget-object v0, p0, Lcom/sun/tools/javac/parser/DocCommentScanner;->docCommentBuffer:[C

    array-length v1, v0

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [C

    .line 106
    array-length v2, v0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 108
    iput-object v1, p0, Lcom/sun/tools/javac/parser/DocCommentScanner;->docCommentBuffer:[C

    .line 109
    return-void
.end method

.method private scanChar()V
    .registers 7

    const/16 v5, 0xd

    const/4 v4, 0x0

    .line 161
    iget v0, p0, Lcom/sun/tools/javac/parser/DocCommentScanner;->bp:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sun/tools/javac/parser/DocCommentScanner;->bp:I

    .line 162
    iget-object v1, p0, Lcom/sun/tools/javac/parser/DocCommentScanner;->buf:[C

    aget-char v2, v1, v0

    iput-char v2, p0, Lcom/sun/tools/javac/parser/DocCommentScanner;->ch:C

    .line 163
    const/16 v3, 0x9

    if-eq v2, v3, :cond_5

    const/16 v3, 0xa

    if-eq v2, v3, :cond_3

    if-eq v2, v5, :cond_2

    const/16 v0, 0x5c

    if-eq v2, v0, :cond_1

    .line 180
    iget v0, p0, Lcom/sun/tools/javac/parser/DocCommentScanner;->col:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sun/tools/javac/parser/DocCommentScanner;->col:I

    .line 174
    :cond_0
    :goto_0
    return-void

    .line 176
    :cond_1
    iget v0, p0, Lcom/sun/tools/javac/parser/DocCommentScanner;->col:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sun/tools/javac/parser/DocCommentScanner;->col:I

    .line 177
    invoke-direct {p0}, Lcom/sun/tools/javac/parser/DocCommentScanner;->convertUnicode()V

    goto :goto_0

    .line 165
    :cond_2
    iput v4, p0, Lcom/sun/tools/javac/parser/DocCommentScanner;->col:I

    goto :goto_0

    .line 168
    :cond_3
    if-eqz v0, :cond_4

    add-int/lit8 v0, v0, -0x1

    aget-char v0, v1, v0

    if-eq v0, v5, :cond_0

    .line 169
    :cond_4
    iput v4, p0, Lcom/sun/tools/javac/parser/DocCommentScanner;->col:I

    goto :goto_0

    .line 173
    :cond_5
    iget v0, p0, Lcom/sun/tools/javac/parser/DocCommentScanner;->col:I

    div-int/lit8 v0, v0, 0x8

    mul-int/lit8 v0, v0, 0x8

    add-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/sun/tools/javac/parser/DocCommentScanner;->col:I

    goto :goto_0
.end method

.method private scanDocCommentChar()V
    .registers 5

    const/16 v3, 0x5c

    .line 190
    invoke-direct {p0}, Lcom/sun/tools/javac/parser/DocCommentScanner;->scanChar()V

    .line 191
    iget-char v0, p0, Lcom/sun/tools/javac/parser/DocCommentScanner;->ch:C

    if-ne v0, v3, :cond_1

    .line 192
    iget-object v0, p0, Lcom/sun/tools/javac/parser/DocCommentScanner;->buf:[C

    iget v1, p0, Lcom/sun/tools/javac/parser/DocCommentScanner;->bp:I

    add-int/lit8 v2, v1, 0x1

    aget-char v0, v0, v2

    if-ne v0, v3, :cond_2

    iget v0, p0, Lcom/sun/tools/javac/parser/DocCommentScanner;->unicodeConversionBp:I

    if-eq v0, v1, :cond_2

    .line 193
    iget v0, p0, Lcom/sun/tools/javac/parser/DocCommentScanner;->docCommentCount:I

    iget-object v1, p0, Lcom/sun/tools/javac/parser/DocCommentScanner;->docCommentBuffer:[C

    array-length v1, v1

    if-ne v0, v1, :cond_0

    .line 194
    invoke-direct {p0}, Lcom/sun/tools/javac/parser/DocCommentScanner;->expandCommentBuffer()V

    .line 195
    :cond_0
    iget-object v0, p0, Lcom/sun/tools/javac/parser/DocCommentScanner;->docCommentBuffer:[C

    iget v1, p0, Lcom/sun/tools/javac/parser/DocCommentScanner;->docCommentCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/sun/tools/javac/parser/DocCommentScanner;->docCommentCount:I

    iget-char v2, p0, Lcom/sun/tools/javac/parser/DocCommentScanner;->ch:C

    aput-char v2, v0, v1

    .line 196
    iget v0, p0, Lcom/sun/tools/javac/parser/DocCommentScanner;->bp:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sun/tools/javac/parser/DocCommentScanner;->bp:I

    iget v0, p0, Lcom/sun/tools/javac/parser/DocCommentScanner;->col:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sun/tools/javac/parser/DocCommentScanner;->col:I

    .line 201
    :cond_1
    :goto_0
    return-void

    .line 198
    :cond_2
    invoke-direct {p0}, Lcom/sun/tools/javac/parser/DocCommentScanner;->convertUnicode()V

    goto :goto_0
.end method


# virtual methods
.method public docComment()Ljava/lang/String;
    .registers 2

    .line 214
    iget-object v0, p0, Lcom/sun/tools/javac/parser/DocCommentScanner;->docComment:Ljava/lang/String;

    return-object v0
.end method

.method public getLineMap()Lcom/sun/tools/javac/util/Position$LineMap;
    .registers 4

    .line 421
    invoke-virtual {p0}, Lcom/sun/tools/javac/parser/DocCommentScanner;->getRawCharacters()[C

    move-result-object v0

    .line 422
    array-length v1, v0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/sun/tools/javac/util/Position;->makeLineMap([CIZ)Lcom/sun/tools/javac/util/Position$LineMap;

    move-result-object v0

    return-object v0
.end method

.method public nextToken()V
    .registers 2

    .line 206
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/tools/javac/parser/DocCommentScanner;->docComment:Ljava/lang/String;

    .line 207
    invoke-super {p0}, Lcom/sun/tools/javac/parser/Scanner;->nextToken()V

    .line 208
    return-void
.end method

.method protected processComment(Lcom/sun/tools/javac/parser/Scanner$CommentStyle;)V
    .registers 11

    const/16 v8, 0x2f

    const/16 v7, 0x20

    const/16 v6, 0xa

    const/16 v5, 0x2a

    const/4 v1, 0x0

    .line 223
    sget-object v0, Lcom/sun/tools/javac/parser/Scanner$CommentStyle;->JAVADOC:Lcom/sun/tools/javac/parser/Scanner$CommentStyle;

    if-eq p1, v0, :cond_0

    .line 414
    :goto_0
    return-void

    .line 227
    :cond_0
    invoke-virtual {p0}, Lcom/sun/tools/javac/parser/DocCommentScanner;->pos()I

    move-result v0

    iput v0, p0, Lcom/sun/tools/javac/parser/DocCommentScanner;->pos:I

    .line 228
    invoke-virtual {p0}, Lcom/sun/tools/javac/parser/DocCommentScanner;->endPos()I

    move-result v2

    invoke-virtual {p0, v0, v2}, Lcom/sun/tools/javac/parser/DocCommentScanner;->getRawCharacters(II)[C

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/parser/DocCommentScanner;->buf:[C

    .line 229
    array-length v0, v0

    iput v0, p0, Lcom/sun/tools/javac/parser/DocCommentScanner;->buflen:I

    .line 230
    iput v1, p0, Lcom/sun/tools/javac/parser/DocCommentScanner;->bp:I

    .line 231
    iput v1, p0, Lcom/sun/tools/javac/parser/DocCommentScanner;->col:I

    .line 233
    iput v1, p0, Lcom/sun/tools/javac/parser/DocCommentScanner;->docCommentCount:I

    .line 235
    const/4 v0, 0x1

    .line 238
    invoke-direct {p0}, Lcom/sun/tools/javac/parser/DocCommentScanner;->scanDocCommentChar()V

    .line 240
    invoke-direct {p0}, Lcom/sun/tools/javac/parser/DocCommentScanner;->scanDocCommentChar()V

    .line 243
    :goto_1
    iget v2, p0, Lcom/sun/tools/javac/parser/DocCommentScanner;->bp:I

    iget v3, p0, Lcom/sun/tools/javac/parser/DocCommentScanner;->buflen:I

    if-ge v2, v3, :cond_1

    iget-char v2, p0, Lcom/sun/tools/javac/parser/DocCommentScanner;->ch:C

    if-ne v2, v5, :cond_1

    .line 244
    invoke-direct {p0}, Lcom/sun/tools/javac/parser/DocCommentScanner;->scanDocCommentChar()V

    goto :goto_1

    .line 247
    :cond_1
    iget v2, p0, Lcom/sun/tools/javac/parser/DocCommentScanner;->bp:I

    iget v3, p0, Lcom/sun/tools/javac/parser/DocCommentScanner;->buflen:I

    if-ge v2, v3, :cond_2

    iget-char v2, p0, Lcom/sun/tools/javac/parser/DocCommentScanner;->ch:C

    if-ne v2, v8, :cond_2

    .line 248
    const-string v0, ""

    iput-object v0, p0, Lcom/sun/tools/javac/parser/DocCommentScanner;->docComment:Ljava/lang/String;

    goto :goto_0

    .line 253
    :cond_2
    iget v2, p0, Lcom/sun/tools/javac/parser/DocCommentScanner;->bp:I

    iget v3, p0, Lcom/sun/tools/javac/parser/DocCommentScanner;->buflen:I

    if-ge v2, v3, :cond_3

    .line 254
    iget-char v2, p0, Lcom/sun/tools/javac/parser/DocCommentScanner;->ch:C

    if-ne v2, v6, :cond_8

    .line 255
    invoke-direct {p0}, Lcom/sun/tools/javac/parser/DocCommentScanner;->scanDocCommentChar()V

    move v0, v1

    .line 272
    :cond_3
    :goto_2
    iget v2, p0, Lcom/sun/tools/javac/parser/DocCommentScanner;->bp:I

    iget v3, p0, Lcom/sun/tools/javac/parser/DocCommentScanner;->buflen:I

    if-ge v2, v3, :cond_6

    .line 278
    :goto_3
    iget v2, p0, Lcom/sun/tools/javac/parser/DocCommentScanner;->bp:I

    iget v3, p0, Lcom/sun/tools/javac/parser/DocCommentScanner;->buflen:I

    if-ge v2, v3, :cond_4

    .line 279
    iget-char v2, p0, Lcom/sun/tools/javac/parser/DocCommentScanner;->ch:C

    const/16 v3, 0x9

    if-eq v2, v3, :cond_b

    const/16 v3, 0xc

    if-eq v2, v3, :cond_a

    if-eq v2, v7, :cond_9

    .line 314
    :cond_4
    iget-char v2, p0, Lcom/sun/tools/javac/parser/DocCommentScanner;->ch:C

    if-ne v2, v5, :cond_c

    .line 317
    :cond_5
    invoke-direct {p0}, Lcom/sun/tools/javac/parser/DocCommentScanner;->scanDocCommentChar()V

    .line 318
    iget-char v0, p0, Lcom/sun/tools/javac/parser/DocCommentScanner;->ch:C

    if-eq v0, v5, :cond_5

    .line 321
    if-ne v0, v8, :cond_e

    .line 395
    :cond_6
    iget v0, p0, Lcom/sun/tools/javac/parser/DocCommentScanner;->docCommentCount:I

    if-lez v0, :cond_1b

    .line 396
    add-int/lit8 v0, v0, -0x1

    .line 398
    :goto_4
    const/4 v2, -0x1

    if-le v0, v2, :cond_7

    .line 399
    iget-object v2, p0, Lcom/sun/tools/javac/parser/DocCommentScanner;->docCommentBuffer:[C

    aget-char v2, v2, v0

    if-eq v2, v5, :cond_1a

    .line 407
    :cond_7
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sun/tools/javac/parser/DocCommentScanner;->docCommentCount:I

    .line 410
    new-instance v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/sun/tools/javac/parser/DocCommentScanner;->docCommentBuffer:[C

    iget v3, p0, Lcom/sun/tools/javac/parser/DocCommentScanner;->docCommentCount:I

    invoke-direct {v0, v2, v1, v3}, Ljava/lang/String;-><init>([CII)V

    iput-object v0, p0, Lcom/sun/tools/javac/parser/DocCommentScanner;->docComment:Ljava/lang/String;

    goto/16 :goto_0

    .line 257
    :cond_8
    const/16 v3, 0xd

    if-ne v2, v3, :cond_3

    .line 258
    invoke-direct {p0}, Lcom/sun/tools/javac/parser/DocCommentScanner;->scanDocCommentChar()V

    .line 259
    iget-char v2, p0, Lcom/sun/tools/javac/parser/DocCommentScanner;->ch:C

    if-ne v2, v6, :cond_3

    .line 260
    invoke-direct {p0}, Lcom/sun/tools/javac/parser/DocCommentScanner;->scanDocCommentChar()V

    move v0, v1

    .line 261
    goto :goto_2

    .line 281
    :cond_9
    invoke-direct {p0}, Lcom/sun/tools/javac/parser/DocCommentScanner;->scanDocCommentChar()V

    goto :goto_3

    .line 288
    :cond_a
    iput v1, p0, Lcom/sun/tools/javac/parser/DocCommentScanner;->col:I

    .line 289
    invoke-direct {p0}, Lcom/sun/tools/javac/parser/DocCommentScanner;->scanDocCommentChar()V

    goto :goto_3

    .line 284
    :cond_b
    iget v2, p0, Lcom/sun/tools/javac/parser/DocCommentScanner;->col:I

    add-int/lit8 v2, v2, -0x1

    div-int/lit8 v2, v2, 0x8

    mul-int/lit8 v2, v2, 0x8

    add-int/lit8 v2, v2, 0x8

    iput v2, p0, Lcom/sun/tools/javac/parser/DocCommentScanner;->col:I

    .line 285
    invoke-direct {p0}, Lcom/sun/tools/javac/parser/DocCommentScanner;->scanDocCommentChar()V

    goto :goto_3

    .line 326
    :cond_c
    if-nez v0, :cond_e

    .line 328
    const/4 v0, 0x1

    :goto_5
    iget v2, p0, Lcom/sun/tools/javac/parser/DocCommentScanner;->col:I

    if-ge v0, v2, :cond_e

    .line 329
    iget v2, p0, Lcom/sun/tools/javac/parser/DocCommentScanner;->docCommentCount:I

    iget-object v3, p0, Lcom/sun/tools/javac/parser/DocCommentScanner;->docCommentBuffer:[C

    array-length v3, v3

    if-ne v2, v3, :cond_d

    .line 330
    invoke-direct {p0}, Lcom/sun/tools/javac/parser/DocCommentScanner;->expandCommentBuffer()V

    .line 331
    :cond_d
    iget-object v2, p0, Lcom/sun/tools/javac/parser/DocCommentScanner;->docCommentBuffer:[C

    iget v3, p0, Lcom/sun/tools/javac/parser/DocCommentScanner;->docCommentCount:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/sun/tools/javac/parser/DocCommentScanner;->docCommentCount:I

    aput-char v7, v2, v3

    .line 328
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 338
    :cond_e
    :goto_6
    iget v0, p0, Lcom/sun/tools/javac/parser/DocCommentScanner;->bp:I

    iget v2, p0, Lcom/sun/tools/javac/parser/DocCommentScanner;->buflen:I

    if-ge v0, v2, :cond_14

    .line 339
    iget-char v0, p0, Lcom/sun/tools/javac/parser/DocCommentScanner;->ch:C

    const/16 v2, 0x9

    if-eq v0, v2, :cond_18

    if-eq v0, v6, :cond_16

    const/16 v2, 0xc

    if-eq v0, v2, :cond_15

    const/16 v2, 0xd

    if-eq v0, v2, :cond_12

    if-eq v0, v7, :cond_18

    if-eq v0, v5, :cond_10

    .line 386
    iget v0, p0, Lcom/sun/tools/javac/parser/DocCommentScanner;->docCommentCount:I

    iget-object v2, p0, Lcom/sun/tools/javac/parser/DocCommentScanner;->docCommentBuffer:[C

    array-length v2, v2

    if-ne v0, v2, :cond_f

    .line 387
    invoke-direct {p0}, Lcom/sun/tools/javac/parser/DocCommentScanner;->expandCommentBuffer()V

    .line 388
    :cond_f
    iget-object v0, p0, Lcom/sun/tools/javac/parser/DocCommentScanner;->docCommentBuffer:[C

    iget v2, p0, Lcom/sun/tools/javac/parser/DocCommentScanner;->docCommentCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/sun/tools/javac/parser/DocCommentScanner;->docCommentCount:I

    iget-char v3, p0, Lcom/sun/tools/javac/parser/DocCommentScanner;->ch:C

    aput-char v3, v0, v2

    .line 389
    invoke-direct {p0}, Lcom/sun/tools/javac/parser/DocCommentScanner;->scanDocCommentChar()V

    goto :goto_6

    .line 343
    :cond_10
    invoke-direct {p0}, Lcom/sun/tools/javac/parser/DocCommentScanner;->scanDocCommentChar()V

    .line 344
    iget-char v0, p0, Lcom/sun/tools/javac/parser/DocCommentScanner;->ch:C

    if-eq v0, v8, :cond_6

    .line 351
    iget v0, p0, Lcom/sun/tools/javac/parser/DocCommentScanner;->docCommentCount:I

    iget-object v2, p0, Lcom/sun/tools/javac/parser/DocCommentScanner;->docCommentBuffer:[C

    array-length v2, v2

    if-ne v0, v2, :cond_11

    .line 352
    invoke-direct {p0}, Lcom/sun/tools/javac/parser/DocCommentScanner;->expandCommentBuffer()V

    .line 353
    :cond_11
    iget-object v0, p0, Lcom/sun/tools/javac/parser/DocCommentScanner;->docCommentBuffer:[C

    iget v2, p0, Lcom/sun/tools/javac/parser/DocCommentScanner;->docCommentCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/sun/tools/javac/parser/DocCommentScanner;->docCommentCount:I

    aput-char v5, v0, v2

    goto :goto_6

    .line 366
    :cond_12
    invoke-direct {p0}, Lcom/sun/tools/javac/parser/DocCommentScanner;->scanDocCommentChar()V

    .line 367
    iget-char v0, p0, Lcom/sun/tools/javac/parser/DocCommentScanner;->ch:C

    if-eq v0, v6, :cond_16

    .line 369
    iget v0, p0, Lcom/sun/tools/javac/parser/DocCommentScanner;->docCommentCount:I

    iget-object v2, p0, Lcom/sun/tools/javac/parser/DocCommentScanner;->docCommentBuffer:[C

    array-length v2, v2

    if-ne v0, v2, :cond_13

    .line 370
    invoke-direct {p0}, Lcom/sun/tools/javac/parser/DocCommentScanner;->expandCommentBuffer()V

    .line 371
    :cond_13
    iget-object v0, p0, Lcom/sun/tools/javac/parser/DocCommentScanner;->docCommentBuffer:[C

    iget v2, p0, Lcom/sun/tools/javac/parser/DocCommentScanner;->docCommentCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/sun/tools/javac/parser/DocCommentScanner;->docCommentCount:I

    aput-char v6, v0, v2

    :cond_14
    :goto_7
    move v0, v1

    .line 392
    goto/16 :goto_2

    .line 363
    :cond_15
    invoke-direct {p0}, Lcom/sun/tools/javac/parser/DocCommentScanner;->scanDocCommentChar()V

    goto :goto_7

    .line 379
    :cond_16
    iget v0, p0, Lcom/sun/tools/javac/parser/DocCommentScanner;->docCommentCount:I

    iget-object v2, p0, Lcom/sun/tools/javac/parser/DocCommentScanner;->docCommentBuffer:[C

    array-length v2, v2

    if-ne v0, v2, :cond_17

    .line 380
    invoke-direct {p0}, Lcom/sun/tools/javac/parser/DocCommentScanner;->expandCommentBuffer()V

    .line 381
    :cond_17
    iget-object v0, p0, Lcom/sun/tools/javac/parser/DocCommentScanner;->docCommentBuffer:[C

    iget v2, p0, Lcom/sun/tools/javac/parser/DocCommentScanner;->docCommentCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/sun/tools/javac/parser/DocCommentScanner;->docCommentCount:I

    iget-char v3, p0, Lcom/sun/tools/javac/parser/DocCommentScanner;->ch:C

    aput-char v3, v0, v2

    .line 382
    invoke-direct {p0}, Lcom/sun/tools/javac/parser/DocCommentScanner;->scanDocCommentChar()V

    goto :goto_7

    .line 357
    :cond_18
    iget v0, p0, Lcom/sun/tools/javac/parser/DocCommentScanner;->docCommentCount:I

    iget-object v2, p0, Lcom/sun/tools/javac/parser/DocCommentScanner;->docCommentBuffer:[C

    array-length v2, v2

    if-ne v0, v2, :cond_19

    .line 358
    invoke-direct {p0}, Lcom/sun/tools/javac/parser/DocCommentScanner;->expandCommentBuffer()V

    .line 359
    :cond_19
    iget-object v0, p0, Lcom/sun/tools/javac/parser/DocCommentScanner;->docCommentBuffer:[C

    iget v2, p0, Lcom/sun/tools/javac/parser/DocCommentScanner;->docCommentCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/sun/tools/javac/parser/DocCommentScanner;->docCommentCount:I

    iget-char v3, p0, Lcom/sun/tools/javac/parser/DocCommentScanner;->ch:C

    aput-char v3, v0, v2

    .line 360
    invoke-direct {p0}, Lcom/sun/tools/javac/parser/DocCommentScanner;->scanDocCommentChar()V

    goto/16 :goto_6

    .line 401
    :cond_1a
    add-int/lit8 v0, v0, -0x1

    .line 402
    goto/16 :goto_4

    .line 412
    :cond_1b
    const-string v0, ""

    iput-object v0, p0, Lcom/sun/tools/javac/parser/DocCommentScanner;->docComment:Ljava/lang/String;

    goto/16 :goto_0
.end method
