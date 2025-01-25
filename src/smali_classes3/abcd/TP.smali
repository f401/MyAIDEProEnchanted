.class public final Labcd/TP;
.super Ljava/lang/Object;


# direct methods
.method public static DW(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_6
    array-length v3, v0

    if-ne v1, v3, :cond_11

    if-eqz v2, :cond_10

    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>([C)V

    :cond_10
    return-object p0

    :cond_11
    aget-char v3, v0, v1

    const/16 v4, 0x41

    if-gt v4, v3, :cond_23

    const/16 v4, 0x5a

    if-lt v4, v3, :cond_23

    add-int/lit8 v3, v3, -0x41

    add-int/lit8 v3, v3, 0x61

    int-to-char v2, v3

    aput-char v2, v0, v1

    const/4 v2, 0x1

    :cond_23
    add-int/lit8 v1, v1, 0x1

    goto :goto_6
.end method

.method public static DW([B)Ljava/lang/String;
    .registers 2

    new-instance v0, Ljava/lang/String;

    invoke-static {p0}, Labcd/TP;->j6([B)[C

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

.method public static FH(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_6
    array-length v3, v0

    if-ne v1, v3, :cond_11

    if-eqz v2, :cond_10

    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>([C)V

    :cond_10
    return-object p0

    :cond_11
    aget-char v3, v0, v1

    const/16 v4, 0x61

    if-gt v4, v3, :cond_23

    const/16 v4, 0x7a

    if-lt v4, v3, :cond_23

    add-int/lit8 v3, v3, -0x61

    add-int/lit8 v3, v3, 0x41

    int-to-char v2, v3

    aput-char v2, v0, v1

    const/4 v2, 0x1

    :cond_23
    add-int/lit8 v1, v1, 0x1

    goto :goto_6
.end method

.method public static FH([B)Ljava/lang/String;
    .registers 10

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_3
    array-length v3, p0

    const/16 v4, 0xc0

    const/16 v5, 0xe0

    const/16 v6, 0xf0

    if-lt v1, v3, :cond_9c

    new-array v3, v2, [C

    const/4 v1, 0x0

    :goto_f
    array-length v2, p0

    if-lt v0, v2, :cond_18

    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v3}, Ljava/lang/String;-><init>([C)V

    return-object p0

    :cond_18
    aget-byte v2, p0, v0

    and-int/lit16 v7, v2, 0xf0

    if-ne v7, v6, :cond_53

    and-int/lit8 v2, v2, 0x3

    shl-int/lit8 v2, v2, 0x12

    add-int/lit8 v7, v0, 0x1

    aget-byte v7, p0, v7

    and-int/lit8 v7, v7, 0x3f

    shl-int/lit8 v7, v7, 0xc

    or-int/2addr v2, v7

    add-int/lit8 v7, v0, 0x2

    aget-byte v7, p0, v7

    and-int/lit8 v7, v7, 0x3f

    shl-int/lit8 v7, v7, 0x6

    or-int/2addr v2, v7

    add-int/lit8 v7, v0, 0x3

    aget-byte v7, p0, v7

    and-int/lit8 v7, v7, 0x3f

    or-int/2addr v2, v7

    const/high16 v7, 0x10000

    sub-int/2addr v2, v7

    shr-int/lit8 v7, v2, 0xa

    const v8, 0xd800

    or-int/2addr v7, v8

    int-to-char v7, v7

    and-int/lit16 v2, v2, 0x3ff

    const v8, 0xdc00

    or-int/2addr v2, v8

    int-to-char v2, v2

    aput-char v7, v3, v1

    add-int/lit8 v0, v0, 0x4

    add-int/lit8 v1, v1, 0x1

    goto :goto_96

    :cond_53
    and-int/lit16 v7, v2, 0xe0

    if-ne v7, v5, :cond_6f

    and-int/lit8 v2, v2, 0xf

    shl-int/lit8 v2, v2, 0xc

    add-int/lit8 v7, v0, 0x1

    aget-byte v7, p0, v7

    and-int/lit8 v7, v7, 0x3f

    shl-int/lit8 v7, v7, 0x6

    or-int/2addr v2, v7

    add-int/lit8 v7, v0, 0x2

    aget-byte v7, p0, v7

    and-int/lit8 v7, v7, 0x3f

    or-int/2addr v2, v7

    int-to-char v2, v2

    add-int/lit8 v0, v0, 0x3

    goto :goto_96

    :cond_6f
    and-int/lit16 v7, v2, 0xd0

    const/16 v8, 0xd0

    if-ne v7, v8, :cond_7e

    and-int/lit8 v2, v2, 0x1f

    shl-int/lit8 v2, v2, 0x6

    add-int/lit8 v7, v0, 0x1

    aget-byte v7, p0, v7

    goto :goto_8a

    :cond_7e
    and-int/lit16 v7, v2, 0xc0

    if-ne v7, v4, :cond_91

    and-int/lit8 v2, v2, 0x1f

    shl-int/lit8 v2, v2, 0x6

    add-int/lit8 v7, v0, 0x1

    aget-byte v7, p0, v7

    :goto_8a
    and-int/lit8 v7, v7, 0x3f

    or-int/2addr v2, v7

    int-to-char v2, v2

    add-int/lit8 v0, v0, 0x2

    goto :goto_96

    :cond_91
    and-int/lit16 v2, v2, 0xff

    int-to-char v2, v2

    add-int/lit8 v0, v0, 0x1

    :goto_96
    aput-char v2, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_f

    :cond_9c
    add-int/lit8 v2, v2, 0x1

    aget-byte v3, p0, v1

    and-int/lit16 v7, v3, 0xf0

    if-ne v7, v6, :cond_aa

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v1, v1, 0x4

    goto/16 :goto_3

    :cond_aa
    and-int/lit16 v6, v3, 0xe0

    if-ne v6, v5, :cond_b2

    add-int/lit8 v1, v1, 0x3

    goto/16 :goto_3

    :cond_b2
    and-int/lit16 v3, v3, 0xc0

    if-ne v3, v4, :cond_ba

    add-int/lit8 v1, v1, 0x2

    goto/16 :goto_3

    :cond_ba
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_3
.end method

.method public static j6(Ljava/lang/String;)[B
    .registers 5

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    new-array v1, v0, [B

    const/4 v2, 0x0

    :goto_7
    if-ne v2, v0, :cond_a

    return-object v1

    :cond_a
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_7
.end method

.method public static j6([B)[C
    .registers 5

    array-length v0, p0

    new-array v1, v0, [C

    const/4 v2, 0x0

    :goto_4
    if-ne v2, v0, :cond_7

    return-object v1

    :cond_7
    aget-byte v3, p0, v2

    and-int/lit16 v3, v3, 0xff

    int-to-char v3, v3

    aput-char v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_4
.end method
