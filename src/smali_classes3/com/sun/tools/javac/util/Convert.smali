.class public Lcom/sun/tools/javac/util/Convert;
.super Ljava/lang/Object;
.source "Convert.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static chars2utf([CI[BII)I
    .registers 10

    .line 170
    move v1, p1

    :goto_0
    add-int v0, p1, p4

    if-ge v1, v0, :cond_2

    .line 173
    aget-char v2, p0, v1

    .line 174
    const/4 v0, 0x1

    if-gt v0, v2, :cond_0

    const/16 v0, 0x7f

    if-gt v2, v0, :cond_0

    .line 175
    int-to-byte v0, v2

    aput-byte v0, p2, p3

    add-int/lit8 v0, p3, 0x1

    .line 172
    :goto_1
    add-int/lit8 v1, v1, 0x1

    move p3, v0

    goto :goto_0

    .line 176
    :cond_0
    const/16 v0, 0x7ff

    if-gt v2, v0, :cond_1

    .line 177
    add-int/lit8 v3, p3, 0x1

    shr-int/lit8 v0, v2, 0x6

    or-int/lit16 v0, v0, 0xc0

    int-to-byte v0, v0

    aput-byte v0, p2, p3

    .line 178
    add-int/lit8 v0, v3, 0x1

    and-int/lit8 v2, v2, 0x3f

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    aput-byte v2, p2, v3

    goto :goto_1

    .line 180
    :cond_1
    add-int/lit8 v0, p3, 0x1

    shr-int/lit8 v3, v2, 0xc

    or-int/lit16 v3, v3, 0xe0

    int-to-byte v3, v3

    aput-byte v3, p2, p3

    .line 181
    add-int/lit8 v3, v0, 0x1

    shr-int/lit8 v4, v2, 0x6

    and-int/lit8 v4, v4, 0x3f

    or-int/lit16 v4, v4, 0x80

    int-to-byte v4, v4

    aput-byte v4, p2, v0

    .line 182
    and-int/lit8 v0, v2, 0x3f

    or-int/lit16 v0, v0, 0x80

    int-to-byte v0, v0

    aput-byte v0, p2, v3

    add-int/lit8 v0, v3, 0x1

    goto :goto_1

    .line 185
    :cond_2
    return p3
.end method

.method public static chars2utf([C)[B
    .registers 3

    .line 206
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcom/sun/tools/javac/util/Convert;->chars2utf([CII)[B

    move-result-object v0

    return-object v0
.end method

.method public static chars2utf([CII)[B
    .registers 7

    const/4 v3, 0x0

    .line 194
    mul-int/lit8 v0, p2, 0x3

    new-array v0, v0, [B

    .line 195
    invoke-static {p0, p1, v0, v3, p2}, Lcom/sun/tools/javac/util/Convert;->chars2utf([CI[BII)I

    move-result v1

    .line 196
    new-array v2, v1, [B

    .line 197
    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 198
    return-object v2
.end method

.method public static enclosingCandidates(Lcom/sun/tools/javac/util/Name;)Lcom/sun/tools/javac/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/util/Name;",
            ")",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/util/Name;",
            ">;"
        }
    .end annotation

    .line 312
    invoke-static {}, Lcom/sun/tools/javac/util/List;->nil()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    .line 314
    :goto_0
    const/16 v1, 0x24

    invoke-virtual {p0, v1}, Lcom/sun/tools/javac/util/Name;->lastIndexOf(B)I

    move-result v1

    if-lez v1, :cond_0

    .line 315
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Lcom/sun/tools/javac/util/Name;->subName(II)Lcom/sun/tools/javac/util/Name;

    move-result-object p0

    .line 316
    invoke-virtual {v0, p0}, Lcom/sun/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v0

    goto :goto_0

    .line 318
    :cond_0
    return-object v0
.end method

.method public static escapeUnicode(Ljava/lang/String;)Ljava/lang/String;
    .registers 10

    const/16 v8, 0xff

    const/4 v2, 0x0

    const/16 v7, 0x10

    .line 258
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    move v0, v2

    move-object v1, p0

    .line 260
    :goto_0
    if-ge v0, v3, :cond_3

    .line 261
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 262
    if-le v4, v8, :cond_2

    .line 263
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 264
    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 265
    :goto_1
    if-ge v0, v3, :cond_1

    .line 266
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 267
    if-le v5, v8, :cond_0

    .line 268
    const-string v6, "\\u"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 269
    shr-int/lit8 v6, v5, 0xc

    rem-int/lit8 v6, v6, 0x10

    invoke-static {v6, v7}, Ljava/lang/Character;->forDigit(II)C

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 270
    shr-int/lit8 v6, v5, 0x8

    rem-int/lit8 v6, v6, 0x10

    invoke-static {v6, v7}, Ljava/lang/Character;->forDigit(II)C

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 271
    shr-int/lit8 v6, v5, 0x4

    rem-int/lit8 v6, v6, 0x10

    invoke-static {v6, v7}, Ljava/lang/Character;->forDigit(II)C

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 272
    rem-int/lit8 v5, v5, 0x10

    invoke-static {v5, v7}, Ljava/lang/Character;->forDigit(II)C

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 276
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 274
    :cond_0
    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 278
    :cond_1
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 280
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 283
    :cond_3
    return-object v1
.end method

.method private static isPrintableAscii(C)Z
    .registers 2

    .line 252
    const/16 v0, 0x20

    if-lt p0, v0, :cond_0

    const/16 v0, 0x7e

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static packagePart(Lcom/sun/tools/javac/util/Name;)Lcom/sun/tools/javac/util/Name;
    .registers 3

    .line 303
    const/4 v0, 0x0

    const/16 v1, 0x2e

    invoke-virtual {p0, v1}, Lcom/sun/tools/javac/util/Name;->lastIndexOf(B)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/sun/tools/javac/util/Name;->subName(II)Lcom/sun/tools/javac/util/Name;

    move-result-object v0

    return-object v0
.end method

.method public static packagePart(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 307
    const/16 v0, 0x2e

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 308
    if-gez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static quote(C)Ljava/lang/String;
    .registers 5

    .line 232
    const/16 v0, 0xc

    if-eq p0, v0, :cond_5

    const/16 v0, 0xd

    if-eq p0, v0, :cond_4

    const/16 v0, 0x22

    if-eq p0, v0, :cond_3

    const/16 v0, 0x27

    if-eq p0, v0, :cond_2

    const/16 v0, 0x5c

    if-eq p0, v0, :cond_1

    packed-switch p0, :pswitch_data_0

    .line 242
    invoke-static {p0}, Lcom/sun/tools/javac/util/Convert;->isPrintableAscii(C)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 243
    invoke-static {p0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    .line 242
    :goto_0
    return-object v0

    .line 244
    :cond_0
    const-string v0, "\\u%04x"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 235
    :pswitch_0
    const-string v0, "\\n"

    goto :goto_0

    .line 237
    :pswitch_1
    const-string v0, "\\t"

    goto :goto_0

    .line 233
    :pswitch_2
    const-string v0, "\\b"

    goto :goto_0

    .line 240
    :cond_1
    const-string v0, "\\\\"

    goto :goto_0

    .line 238
    :cond_2
    const-string v0, "\\\'"

    goto :goto_0

    .line 239
    :cond_3
    const-string v0, "\\\""

    goto :goto_0

    .line 236
    :cond_4
    const-string v0, "\\r"

    goto :goto_0

    .line 234
    :cond_5
    const-string v0, "\\f"

    goto :goto_0

    .line 232
    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static quote(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 220
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 221
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 222
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/sun/tools/javac/util/Convert;->quote(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 224
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static shortName(Lcom/sun/tools/javac/util/Name;)Lcom/sun/tools/javac/util/Name;
    .registers 3

    .line 291
    const/16 v0, 0x2e

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/util/Name;->lastIndexOf(B)I

    move-result v0

    invoke-virtual {p0}, Lcom/sun/tools/javac/util/Name;->getByteLength()I

    move-result v1

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/sun/tools/javac/util/Name;->subName(II)Lcom/sun/tools/javac/util/Name;

    move-result-object v0

    return-object v0
.end method

.method public static shortName(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 296
    const/16 v0, 0x2e

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static string2int(Ljava/lang/String;I)I
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    const v7, 0x7fffffff

    const/4 v1, 0x0

    .line 42
    const/16 v0, 0xa

    if-ne p1, v0, :cond_1

    .line 43
    invoke-static {p0, p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    .line 56
    :cond_0
    return v0

    .line 45
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    .line 46
    div-int/lit8 v0, p1, 0x2

    div-int v4, v7, v0

    move v0, v1

    move v2, v1

    .line 48
    :goto_0
    array-length v1, v3

    if-ge v2, v1, :cond_0

    .line 49
    aget-char v1, v3, v2

    invoke-static {v1, p1}, Ljava/lang/Character;->digit(CI)I

    move-result v1

    .line 50
    if-ltz v0, :cond_2

    if-gt v0, v4, :cond_2

    mul-int v5, v0, p1

    sub-int v6, v7, v1

    if-gt v5, v6, :cond_2

    .line 54
    mul-int/2addr v0, p1

    add-int/2addr v0, v1

    .line 48
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    .line 53
    :cond_2
    new-instance v0, Ljava/lang/NumberFormatException;

    invoke-direct {v0}, Ljava/lang/NumberFormatException;-><init>()V

    throw v0
.end method

.method public static string2long(Ljava/lang/String;I)J
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .line 64
    const/16 v0, 0xa

    if-ne p1, v0, :cond_1

    .line 65
    invoke-static {p0, p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v0

    .line 78
    :cond_0
    return-wide v0

    .line 67
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    .line 68
    const-wide v0, 0x7fffffffffffffffL

    div-int/lit8 v2, p1, 0x2

    int-to-long v4, v2

    div-long v4, v0, v4

    .line 69
    const-wide/16 v0, 0x0

    .line 70
    const/4 v2, 0x0

    :goto_0
    array-length v6, v3

    if-ge v2, v6, :cond_0

    .line 71
    aget-char v6, v3, v2

    invoke-static {v6, p1}, Ljava/lang/Character;->digit(CI)I

    move-result v6

    .line 72
    const-wide/16 v8, 0x0

    cmp-long v7, v0, v8

    if-ltz v7, :cond_2

    cmp-long v7, v0, v4

    if-gtz v7, :cond_2

    int-to-long v8, p1

    mul-long/2addr v8, v0

    const-wide v10, 0x7fffffffffffffffL

    int-to-long v12, v6

    sub-long/2addr v10, v12

    cmp-long v7, v8, v10

    if-gtz v7, :cond_2

    .line 76
    int-to-long v8, p1

    mul-long/2addr v0, v8

    int-to-long v6, v6

    add-long/2addr v0, v6

    .line 70
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 75
    :cond_2
    new-instance v0, Ljava/lang/NumberFormatException;

    invoke-direct {v0}, Ljava/lang/NumberFormatException;-><init>()V

    throw v0
.end method

.method public static string2utf(Ljava/lang/String;)[B
    .registers 2

    .line 212
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-static {v0}, Lcom/sun/tools/javac/util/Convert;->chars2utf([C)[B

    move-result-object v0

    return-object v0
.end method

.method public static utf2chars([BI[CII)I
    .registers 9

    .line 98
    move v0, p1

    .line 101
    :goto_0
    add-int v1, p1, p4

    if-ge v0, v1, :cond_2

    .line 102
    add-int/lit8 v1, v0, 0x1

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    .line 103
    const/16 v2, 0xe0

    if-lt v0, v2, :cond_1

    .line 104
    add-int/lit8 v2, v1, 0x1

    aget-byte v3, p0, v1

    .line 106
    add-int/lit8 v1, v2, 0x1

    and-int/lit8 v0, v0, 0xf

    shl-int/lit8 v0, v0, 0xc

    and-int/lit8 v3, v3, 0x3f

    shl-int/lit8 v3, v3, 0x6

    or-int/2addr v0, v3

    aget-byte v2, p0, v2

    and-int/lit8 v2, v2, 0x3f

    or-int/2addr v0, v2

    .line 111
    :cond_0
    :goto_1
    int-to-char v0, v0

    aput-char v0, p2, p3

    .line 112
    add-int/lit8 p3, p3, 0x1

    move v0, v1

    goto :goto_0

    .line 107
    :cond_1
    const/16 v2, 0xc0

    if-lt v0, v2, :cond_0

    .line 108
    and-int/lit8 v0, v0, 0x1f

    shl-int/lit8 v0, v0, 0x6

    aget-byte v2, p0, v1

    and-int/lit8 v2, v2, 0x3f

    or-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 113
    :cond_2
    return p3
.end method

.method public static utf2chars([B)[C
    .registers 3

    .line 134
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcom/sun/tools/javac/util/Convert;->utf2chars([BII)[C

    move-result-object v0

    return-object v0
.end method

.method public static utf2chars([BII)[C
    .registers 7

    const/4 v3, 0x0

    .line 122
    new-array v0, p2, [C

    .line 123
    invoke-static {p0, p1, v0, v3, p2}, Lcom/sun/tools/javac/util/Convert;->utf2chars([BI[CII)I

    move-result v1

    .line 124
    new-array v2, v1, [C

    .line 125
    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 126
    return-object v2
.end method

.method public static utf2string([B)Ljava/lang/String;
    .registers 3

    .line 153
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcom/sun/tools/javac/util/Convert;->utf2string([BII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static utf2string([BII)Ljava/lang/String;
    .registers 7

    const/4 v3, 0x0

    .line 143
    new-array v0, p2, [C

    .line 144
    invoke-static {p0, p1, v0, v3, p2}, Lcom/sun/tools/javac/util/Convert;->utf2chars([BI[CII)I

    move-result v1

    .line 145
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0, v3, v1}, Ljava/lang/String;-><init>([CII)V

    return-object v2
.end method
