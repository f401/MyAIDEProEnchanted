.class public final Labcd/TP;
.super Ljava/lang/Object;


# direct methods
.method public static DW(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    move v0, v1

    move v2, v1

    :goto_0
    array-length v1, v3

    if-ne v0, v1, :cond_1

    if-eqz v2, :cond_0

    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v3}, Ljava/lang/String;-><init>([C)V

    :cond_0
    return-object p0

    :cond_1
    aget-char v1, v3, v0

    const/16 v4, 0x41

    if-gt v4, v1, :cond_2

    const/16 v4, 0x5a

    if-lt v4, v1, :cond_2

    add-int/lit8 v1, v1, -0x41

    add-int/lit8 v1, v1, 0x61

    int-to-char v1, v1

    aput-char v1, v3, v0

    const/4 v2, 0x1

    move v1, v2

    :goto_1
    add-int/lit8 v0, v0, 0x1

    move v2, v1

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1
.end method

.method public static DW([B)Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/String;

    invoke-static {p0}, Labcd/TP;->j6([B)[C

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

.method public static FH(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    move v0, v1

    move v2, v1

    :goto_0
    array-length v1, v3

    if-ne v2, v1, :cond_1

    if-eqz v0, :cond_0

    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v3}, Ljava/lang/String;-><init>([C)V

    :cond_0
    return-object p0

    :cond_1
    aget-char v1, v3, v2

    const/16 v4, 0x61

    if-gt v4, v1, :cond_2

    const/16 v4, 0x7a

    if-lt v4, v1, :cond_2

    add-int/lit8 v0, v1, -0x61

    add-int/lit8 v0, v0, 0x41

    int-to-char v0, v0

    aput-char v0, v3, v2

    const/4 v0, 0x1

    :cond_2
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0
.end method

.method public static FH([B)Ljava/lang/String;
    .registers 10

    const/16 v8, 0xf0

    const/16 v7, 0xe0

    const/16 v6, 0xc0

    const/4 v1, 0x0

    move v0, v1

    move v2, v1

    :goto_0
    array-length v3, p0

    if-lt v2, v3, :cond_5

    new-array v4, v0, [C

    move v0, v1

    move v2, v1

    :goto_1
    array-length v1, p0

    if-lt v2, v1, :cond_0

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>([C)V

    return-object v0

    :cond_0
    aget-byte v1, p0, v2

    and-int/lit16 v1, v1, 0xf0

    if-ne v1, v8, :cond_1

    aget-byte v1, p0, v2

    and-int/lit8 v1, v1, 0x3

    shl-int/lit8 v1, v1, 0x12

    add-int/lit8 v3, v2, 0x1

    aget-byte v3, p0, v3

    and-int/lit8 v3, v3, 0x3f

    shl-int/lit8 v3, v3, 0xc

    or-int/2addr v1, v3

    add-int/lit8 v3, v2, 0x2

    aget-byte v3, p0, v3

    and-int/lit8 v3, v3, 0x3f

    shl-int/lit8 v3, v3, 0x6

    or-int/2addr v1, v3

    add-int/lit8 v3, v2, 0x3

    aget-byte v3, p0, v3

    and-int/lit8 v3, v3, 0x3f

    or-int/2addr v1, v3

    const/high16 v3, 0x10000

    sub-int/2addr v1, v3

    const v3, 0xd800

    shr-int/lit8 v5, v1, 0xa

    or-int/2addr v3, v5

    int-to-char v3, v3

    and-int/lit16 v1, v1, 0x3ff

    const v5, 0xdc00

    or-int/2addr v1, v5

    int-to-char v1, v1

    aput-char v3, v4, v0

    add-int/lit8 v2, v2, 0x4

    add-int/lit8 v0, v0, 0x1

    :goto_2
    aput-char v1, v4, v0

    add-int/lit8 v1, v0, 0x1

    move v0, v1

    goto :goto_1

    :cond_1
    aget-byte v1, p0, v2

    and-int/lit16 v1, v1, 0xe0

    if-ne v1, v7, :cond_2

    aget-byte v1, p0, v2

    and-int/lit8 v1, v1, 0xf

    shl-int/lit8 v1, v1, 0xc

    add-int/lit8 v3, v2, 0x1

    aget-byte v3, p0, v3

    and-int/lit8 v3, v3, 0x3f

    shl-int/lit8 v3, v3, 0x6

    or-int/2addr v1, v3

    add-int/lit8 v3, v2, 0x2

    aget-byte v3, p0, v3

    and-int/lit8 v3, v3, 0x3f

    or-int/2addr v1, v3

    int-to-char v1, v1

    add-int/lit8 v2, v2, 0x3

    goto :goto_2

    :cond_2
    aget-byte v1, p0, v2

    and-int/lit16 v1, v1, 0xd0

    const/16 v3, 0xd0

    if-ne v1, v3, :cond_3

    aget-byte v1, p0, v2

    and-int/lit8 v1, v1, 0x1f

    shl-int/lit8 v3, v1, 0x6

    add-int/lit8 v1, v2, 0x1

    aget-byte v1, p0, v1

    :goto_3
    and-int/lit8 v1, v1, 0x3f

    or-int/2addr v1, v3

    int-to-char v1, v1

    add-int/lit8 v2, v2, 0x2

    goto :goto_2

    :cond_3
    aget-byte v1, p0, v2

    and-int/lit16 v1, v1, 0xc0

    if-ne v1, v6, :cond_4

    aget-byte v1, p0, v2

    and-int/lit8 v1, v1, 0x1f

    shl-int/lit8 v3, v1, 0x6

    add-int/lit8 v1, v2, 0x1

    aget-byte v1, p0, v1

    goto :goto_3

    :cond_4
    aget-byte v1, p0, v2

    and-int/lit16 v1, v1, 0xff

    int-to-char v1, v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    add-int/lit8 v0, v0, 0x1

    aget-byte v3, p0, v2

    and-int/lit16 v3, v3, 0xf0

    if-ne v3, v8, :cond_6

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v2, v2, 0x4

    goto/16 :goto_0

    :cond_6
    aget-byte v3, p0, v2

    and-int/lit16 v3, v3, 0xe0

    if-ne v3, v7, :cond_7

    add-int/lit8 v2, v2, 0x3

    goto/16 :goto_0

    :cond_7
    aget-byte v3, p0, v2

    and-int/lit16 v3, v3, 0xc0

    if-ne v3, v6, :cond_8

    add-int/lit8 v2, v2, 0x2

    goto/16 :goto_0

    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0
.end method

.method public static j6(Ljava/lang/String;)[B
    .registers 4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    new-array v1, v0, [B

    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ne v0, v2, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static j6([B)[C
    .registers 4

    array-length v0, p0

    new-array v1, v0, [C

    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ne v0, v2, :cond_0

    return-object v1

    :cond_0
    aget-byte v2, p0, v0

    and-int/lit16 v2, v2, 0xff

    int-to-char v2, v2

    aput-char v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
