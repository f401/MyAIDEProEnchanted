.class public final Lcom/s1243808733/android/dx/util/Hex;
.super Ljava/lang/Object;
.source "Hex.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dump([BIIIII)Ljava/lang/String;
    .locals 5

    const/16 v4, 0xa

    const/4 v1, 0x0

    add-int v0, p1, p2

    or-int v2, p1, p2

    or-int/2addr v2, v0

    if-ltz v2, :cond_a

    .line 254
    array-length v2, p0

    if-gt v0, v2, :cond_a

    if-ltz p3, :cond_9

    if-nez p2, :cond_0

    .line 265
    const-string v0, ""

    .line 301
    :goto_0
    return-object v0

    .line 268
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    mul-int/lit8 v0, p2, 0x4

    add-int/lit8 v0, v0, 0x6

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    move v2, v1

    :goto_1
    if-lez p2, :cond_7

    if-nez v2, :cond_6

    const/4 v0, 0x2

    if-eq p5, v0, :cond_5

    const/4 v0, 0x4

    if-eq p5, v0, :cond_4

    const/4 v0, 0x6

    if-eq p5, v0, :cond_3

    .line 279
    invoke-static {p3}, Lcom/s1243808733/android/dx/util/Hex;->u4(I)Ljava/lang/String;

    move-result-object v0

    .line 281
    :goto_2
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    const-string v0, ": "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    :cond_1
    :goto_3
    aget-byte v0, p0, p1

    invoke-static {v0}, Lcom/s1243808733/android/dx/util/Hex;->u1(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p3, p3, 0x1

    add-int/lit8 p1, p1, 0x1

    add-int/lit8 v0, v2, 0x1

    if-ne v0, p4, :cond_2

    .line 291
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v0, v1

    :cond_2
    add-int/lit8 p2, p2, -0x1

    move v2, v0

    goto :goto_1

    .line 278
    :cond_3
    invoke-static {p3}, Lcom/s1243808733/android/dx/util/Hex;->u3(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 277
    :cond_4
    invoke-static {p3}, Lcom/s1243808733/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 276
    :cond_5
    invoke-static {p3}, Lcom/s1243808733/android/dx/util/Hex;->u1(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 282
    :cond_6
    and-int/lit8 v0, v2, 0x1

    if-nez v0, :cond_1

    .line 284
    const/16 v0, 0x20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 291
    :cond_7
    if-eqz v2, :cond_8

    .line 298
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 301
    :cond_8
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 261
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "outOffset < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 255
    :cond_a
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "arr.length "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v2, p0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "..!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static s1(I)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    .line 218
    const/4 v1, 0x3

    new-array v1, v1, [C

    if-gez p0, :cond_0

    .line 221
    const/16 v2, 0x2d

    aput-char v2, v1, v0

    neg-int p0, p0

    .line 224
    :goto_0
    const/4 v2, 0x2

    if-ge v0, v2, :cond_1

    .line 228
    rsub-int/lit8 v2, v0, 0x2

    and-int/lit8 v3, p0, 0xf

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Character;->forDigit(II)C

    move-result v3

    aput-char v3, v1, v2

    shr-int/lit8 p0, p0, 0x4

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 224
    :cond_0
    const/16 v2, 0x2b

    aput-char v2, v1, v0

    goto :goto_0

    .line 232
    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

.method public static s2(I)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    .line 194
    const/4 v1, 0x5

    new-array v1, v1, [C

    if-gez p0, :cond_0

    .line 197
    const/16 v2, 0x2d

    aput-char v2, v1, v0

    neg-int p0, p0

    .line 200
    :goto_0
    const/4 v2, 0x4

    if-ge v0, v2, :cond_1

    .line 204
    rsub-int/lit8 v2, v0, 0x4

    and-int/lit8 v3, p0, 0xf

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Character;->forDigit(II)C

    move-result v3

    aput-char v3, v1, v2

    shr-int/lit8 p0, p0, 0x4

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 200
    :cond_0
    const/16 v2, 0x2b

    aput-char v2, v1, v0

    goto :goto_0

    .line 208
    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

.method public static s4(I)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    .line 170
    const/16 v1, 0x9

    new-array v1, v1, [C

    if-gez p0, :cond_0

    .line 173
    const/16 v2, 0x2d

    aput-char v2, v1, v0

    neg-int p0, p0

    .line 176
    :goto_0
    const/16 v2, 0x8

    if-ge v0, v2, :cond_1

    .line 180
    rsub-int/lit8 v2, v0, 0x8

    and-int/lit8 v3, p0, 0xf

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Character;->forDigit(II)C

    move-result v3

    aput-char v3, v1, v2

    shr-int/lit8 p0, p0, 0x4

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 176
    :cond_0
    const/16 v2, 0x2b

    aput-char v2, v1, v0

    goto :goto_0

    .line 184
    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

.method public static s8(J)Ljava/lang/String;
    .locals 6

    const/16 v4, 0x10

    const/4 v0, 0x0

    .line 146
    const/16 v1, 0x11

    new-array v1, v1, [C

    const-wide/16 v2, 0x0

    cmp-long v2, p0, v2

    if-gez v2, :cond_0

    .line 149
    const/16 v2, 0x2d

    aput-char v2, v1, v0

    neg-long p0, p0

    .line 152
    :goto_0
    if-ge v0, v4, :cond_1

    long-to-int v2, p0

    .line 156
    rsub-int/lit8 v3, v0, 0x10

    and-int/lit8 v2, v2, 0xf

    invoke-static {v2, v4}, Ljava/lang/Character;->forDigit(II)C

    move-result v2

    aput-char v2, v1, v3

    const/4 v2, 0x4

    shr-long/2addr p0, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 152
    :cond_0
    const/16 v2, 0x2b

    aput-char v2, v1, v0

    goto :goto_0

    .line 160
    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

.method public static u1(I)Ljava/lang/String;
    .locals 6

    const/4 v5, 0x2

    .line 117
    new-array v1, v5, [C

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v5, :cond_0

    .line 119
    rsub-int/lit8 v2, v0, 0x1

    and-int/lit8 v3, p0, 0xf

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Character;->forDigit(II)C

    move-result v3

    aput-char v3, v1, v2

    shr-int/lit8 p0, p0, 0x4

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 123
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

.method public static u2(I)Ljava/lang/String;
    .locals 6

    const/4 v5, 0x4

    .line 85
    new-array v1, v5, [C

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v5, :cond_0

    .line 87
    rsub-int/lit8 v2, v0, 0x3

    and-int/lit8 v3, p0, 0xf

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Character;->forDigit(II)C

    move-result v3

    aput-char v3, v1, v2

    shr-int/lit8 p0, p0, 0x4

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 91
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

.method public static u2or4(I)Ljava/lang/String;
    .locals 1

    int-to-char v0, p0

    if-ne p0, v0, :cond_0

    .line 104
    invoke-static {p0}, Lcom/s1243808733/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v0

    .line 106
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/s1243808733/android/dx/util/Hex;->u4(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static u3(I)Ljava/lang/String;
    .locals 6

    const/4 v5, 0x6

    .line 69
    new-array v1, v5, [C

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v5, :cond_0

    .line 71
    rsub-int/lit8 v2, v0, 0x5

    and-int/lit8 v3, p0, 0xf

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Character;->forDigit(II)C

    move-result v3

    aput-char v3, v1, v2

    shr-int/lit8 p0, p0, 0x4

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 75
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

.method public static u4(I)Ljava/lang/String;
    .locals 6

    const/16 v5, 0x8

    .line 53
    new-array v1, v5, [C

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v5, :cond_0

    .line 55
    rsub-int/lit8 v2, v0, 0x7

    and-int/lit8 v3, p0, 0xf

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Character;->forDigit(II)C

    move-result v3

    aput-char v3, v1, v2

    shr-int/lit8 p0, p0, 0x4

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 59
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

.method public static u8(J)Ljava/lang/String;
    .locals 6

    const/16 v4, 0x10

    .line 37
    new-array v1, v4, [C

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v4, :cond_0

    long-to-int v2, p0

    .line 39
    rsub-int/lit8 v3, v0, 0xf

    and-int/lit8 v2, v2, 0xf

    invoke-static {v2, v4}, Ljava/lang/Character;->forDigit(II)C

    move-result v2

    aput-char v2, v1, v3

    const/4 v2, 0x4

    shr-long/2addr p0, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 43
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

.method public static uNibble(I)Ljava/lang/String;
    .locals 4

    .line 135
    and-int/lit8 v0, p0, 0xf

    const/16 v1, 0x10

    invoke-static {v0, v1}, Ljava/lang/Character;->forDigit(II)C

    move-result v0

    .line 136
    new-instance v1, Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [C

    const/4 v3, 0x0

    aput-char v0, v2, v3

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([C)V

    return-object v1
.end method
