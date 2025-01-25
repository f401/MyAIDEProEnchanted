.class public final Lcom/s1243808733/android/dx/util/Hex;
.super Ljava/lang/Object;
.source "Hex.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dump([BIIIII)Ljava/lang/String;
    .registers 12

    add-int v0, p1, p2

    or-int v1, p1, p2

    or-int/2addr v1, v0

    if-ltz v1, :cond_79

    .line 254
    array-length v1, p0

    if-gt v0, v1, :cond_79

    if-ltz p3, :cond_71

    if-nez p2, :cond_11

    .line 265
    const-string p0, ""

    return-object p0

    .line 268
    :cond_11
    new-instance v0, Ljava/lang/StringBuilder;

    mul-int/lit8 v1, p2, 0x4

    const/4 v2, 0x6

    add-int/2addr v1, v2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x0

    const/4 v3, 0x0

    :goto_1c
    const/16 v4, 0xa

    if-lez p2, :cond_67

    if-nez v3, :cond_46

    const/4 v5, 0x2

    if-eq p5, v5, :cond_39

    const/4 v5, 0x4

    if-eq p5, v5, :cond_34

    if-eq p5, v2, :cond_2f

    .line 279
    invoke-static {p3}, Lcom/s1243808733/android/dx/util/Hex;->u4(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_3d

    .line 278
    :cond_2f
    invoke-static {p3}, Lcom/s1243808733/android/dx/util/Hex;->u3(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_3d

    .line 277
    :cond_34
    invoke-static {p3}, Lcom/s1243808733/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_3d

    .line 276
    :cond_39
    invoke-static {p3}, Lcom/s1243808733/android/dx/util/Hex;->u1(I)Ljava/lang/String;

    move-result-object v5

    .line 281
    :goto_3d
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    const-string v5, ": "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4f

    :cond_46
    and-int/lit8 v5, v3, 0x1

    if-nez v5, :cond_4f

    .line 284
    const/16 v5, 0x20

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 286
    :cond_4f
    :goto_4f
    aget-byte v5, p0, p1

    invoke-static {v5}, Lcom/s1243808733/android/dx/util/Hex;->u1(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p3, p3, 0x1

    add-int/lit8 p1, p1, 0x1

    add-int/lit8 v3, v3, 0x1

    if-ne v3, p4, :cond_64

    .line 291
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    :cond_64
    add-int/lit8 p2, p2, -0x1

    goto :goto_1c

    :cond_67
    if-eqz v3, :cond_6c

    .line 298
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 301
    :cond_6c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 261
    :cond_71
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "outOffset < 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 255
    :cond_79
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "arr.length "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length p0, p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "; "

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "..!"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    goto :goto_9f

    :goto_9e
    throw p0

    :goto_9f
    goto :goto_9e
.end method

.method public static s1(I)Ljava/lang/String;
    .registers 6

    .line 218
    const/4 v0, 0x3

    new-array v0, v0, [C

    const/4 v1, 0x0

    if-gez p0, :cond_c

    .line 221
    const/16 v2, 0x2d

    aput-char v2, v0, v1

    neg-int p0, p0

    goto :goto_10

    .line 224
    :cond_c
    const/16 v2, 0x2b

    aput-char v2, v0, v1

    :goto_10
    const/4 v2, 0x2

    if-ge v1, v2, :cond_24

    .line 228
    rsub-int/lit8 v2, v1, 0x2

    and-int/lit8 v3, p0, 0xf

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Character;->forDigit(II)C

    move-result v3

    aput-char v3, v0, v2

    shr-int/lit8 p0, p0, 0x4

    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 232
    :cond_24
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>([C)V

    return-object p0
.end method

.method public static s2(I)Ljava/lang/String;
    .registers 7

    .line 194
    const/4 v0, 0x5

    new-array v0, v0, [C

    const/4 v1, 0x0

    if-gez p0, :cond_c

    .line 197
    const/16 v2, 0x2d

    aput-char v2, v0, v1

    neg-int p0, p0

    goto :goto_10

    .line 200
    :cond_c
    const/16 v2, 0x2b

    aput-char v2, v0, v1

    :goto_10
    const/4 v2, 0x4

    if-ge v1, v2, :cond_23

    .line 204
    rsub-int/lit8 v3, v1, 0x4

    and-int/lit8 v4, p0, 0xf

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Character;->forDigit(II)C

    move-result v4

    aput-char v4, v0, v3

    shr-int/2addr p0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 208
    :cond_23
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>([C)V

    return-object p0
.end method

.method public static s4(I)Ljava/lang/String;
    .registers 6

    .line 170
    const/16 v0, 0x9

    new-array v0, v0, [C

    const/4 v1, 0x0

    if-gez p0, :cond_d

    .line 173
    const/16 v2, 0x2d

    aput-char v2, v0, v1

    neg-int p0, p0

    goto :goto_11

    .line 176
    :cond_d
    const/16 v2, 0x2b

    aput-char v2, v0, v1

    :goto_11
    const/16 v2, 0x8

    if-ge v1, v2, :cond_26

    .line 180
    rsub-int/lit8 v2, v1, 0x8

    and-int/lit8 v3, p0, 0xf

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Character;->forDigit(II)C

    move-result v3

    aput-char v3, v0, v2

    shr-int/lit8 p0, p0, 0x4

    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 184
    :cond_26
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>([C)V

    return-object p0
.end method

.method public static s8(J)Ljava/lang/String;
    .registers 7

    .line 146
    const/16 v0, 0x11

    new-array v0, v0, [C

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    cmp-long v4, p0, v1

    if-gez v4, :cond_11

    .line 149
    const/16 v1, 0x2d

    aput-char v1, v0, v3

    neg-long p0, p0

    goto :goto_15

    .line 152
    :cond_11
    const/16 v1, 0x2b

    aput-char v1, v0, v3

    :goto_15
    const/16 v1, 0x10

    if-ge v3, v1, :cond_29

    long-to-int v2, p0

    .line 156
    rsub-int/lit8 v4, v3, 0x10

    and-int/lit8 v2, v2, 0xf

    invoke-static {v2, v1}, Ljava/lang/Character;->forDigit(II)C

    move-result v1

    aput-char v1, v0, v4

    const/4 v1, 0x4

    shr-long/2addr p0, v1

    add-int/lit8 v3, v3, 0x1

    goto :goto_15

    .line 160
    :cond_29
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>([C)V

    return-object p0
.end method

.method public static u1(I)Ljava/lang/String;
    .registers 7

    .line 117
    const/4 v0, 0x2

    new-array v1, v0, [C

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v0, :cond_17

    .line 119
    rsub-int/lit8 v3, v2, 0x1

    and-int/lit8 v4, p0, 0xf

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Character;->forDigit(II)C

    move-result v4

    aput-char v4, v1, v3

    shr-int/lit8 p0, p0, 0x4

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 123
    :cond_17
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1}, Ljava/lang/String;-><init>([C)V

    return-object p0
.end method

.method public static u2(I)Ljava/lang/String;
    .registers 7

    .line 85
    const/4 v0, 0x4

    new-array v1, v0, [C

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v0, :cond_16

    .line 87
    rsub-int/lit8 v3, v2, 0x3

    and-int/lit8 v4, p0, 0xf

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Character;->forDigit(II)C

    move-result v4

    aput-char v4, v1, v3

    shr-int/2addr p0, v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 91
    :cond_16
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1}, Ljava/lang/String;-><init>([C)V

    return-object p0
.end method

.method public static u2or4(I)Ljava/lang/String;
    .registers 2

    int-to-char v0, p0

    if-ne p0, v0, :cond_8

    .line 104
    invoke-static {p0}, Lcom/s1243808733/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 106
    :cond_8
    invoke-static {p0}, Lcom/s1243808733/android/dx/util/Hex;->u4(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static u3(I)Ljava/lang/String;
    .registers 7

    .line 69
    const/4 v0, 0x6

    new-array v1, v0, [C

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v0, :cond_17

    .line 71
    rsub-int/lit8 v3, v2, 0x5

    and-int/lit8 v4, p0, 0xf

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Character;->forDigit(II)C

    move-result v4

    aput-char v4, v1, v3

    shr-int/lit8 p0, p0, 0x4

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 75
    :cond_17
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1}, Ljava/lang/String;-><init>([C)V

    return-object p0
.end method

.method public static u4(I)Ljava/lang/String;
    .registers 7

    .line 53
    const/16 v0, 0x8

    new-array v1, v0, [C

    const/4 v2, 0x0

    :goto_5
    if-ge v2, v0, :cond_18

    .line 55
    rsub-int/lit8 v3, v2, 0x7

    and-int/lit8 v4, p0, 0xf

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Character;->forDigit(II)C

    move-result v4

    aput-char v4, v1, v3

    shr-int/lit8 p0, p0, 0x4

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 59
    :cond_18
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1}, Ljava/lang/String;-><init>([C)V

    return-object p0
.end method

.method public static u8(J)Ljava/lang/String;
    .registers 7

    .line 37
    const/16 v0, 0x10

    new-array v1, v0, [C

    const/4 v2, 0x0

    :goto_5
    if-ge v2, v0, :cond_17

    long-to-int v3, p0

    .line 39
    rsub-int/lit8 v4, v2, 0xf

    and-int/lit8 v3, v3, 0xf

    invoke-static {v3, v0}, Ljava/lang/Character;->forDigit(II)C

    move-result v3

    aput-char v3, v1, v4

    const/4 v3, 0x4

    shr-long/2addr p0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 43
    :cond_17
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1}, Ljava/lang/String;-><init>([C)V

    return-object p0
.end method

.method public static uNibble(I)Ljava/lang/String;
    .registers 4

    .line 135
    and-int/lit8 p0, p0, 0xf

    const/16 v0, 0x10

    invoke-static {p0, v0}, Ljava/lang/Character;->forDigit(II)C

    move-result p0

    .line 136
    new-instance v0, Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [C

    const/4 v2, 0x0

    aput-char p0, v1, v2

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method
