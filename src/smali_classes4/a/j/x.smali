.class public La/j/x;
.super Ljava/lang/Object;


# direct methods
.method public static a(Ljava/lang/String;)[B
    .registers 10

    const/16 v8, 0x800

    const/16 v7, 0x80

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    move v3, v2

    move v4, v2

    :goto_c
    if-ge v4, v5, :cond_24

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-nez v0, :cond_1a

    move v0, v1

    :goto_15
    add-int/2addr v0, v3

    add-int/lit8 v4, v4, 0x1

    move v3, v0

    goto :goto_c

    :cond_1a
    if-ge v0, v7, :cond_1e

    const/4 v0, 0x1

    goto :goto_15

    :cond_1e
    if-ge v0, v8, :cond_22

    move v0, v1

    goto :goto_15

    :cond_22
    const/4 v0, 0x3

    goto :goto_15

    :cond_24
    new-array v4, v3, [B

    move v1, v2

    move v3, v2

    :goto_28
    if-ge v1, v5, :cond_7f

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-nez v2, :cond_40

    add-int/lit8 v2, v3, 0x1

    const/16 v0, -0x40

    aput-byte v0, v4, v3

    add-int/lit8 v0, v2, 0x1

    const/16 v3, -0x80

    aput-byte v3, v4, v2

    :goto_3c
    add-int/lit8 v1, v1, 0x1

    move v3, v0

    goto :goto_28

    :cond_40
    if-ge v2, v7, :cond_48

    add-int/lit8 v0, v3, 0x1

    int-to-byte v2, v2

    aput-byte v2, v4, v3

    goto :goto_3c

    :cond_48
    if-ge v2, v8, :cond_5f

    add-int/lit8 v6, v3, 0x1

    ushr-int/lit8 v0, v2, 0x6

    and-int/lit8 v0, v0, 0x1f

    or-int/lit16 v0, v0, 0xc0

    int-to-byte v0, v0

    aput-byte v0, v4, v3

    add-int/lit8 v0, v6, 0x1

    and-int/lit8 v2, v2, 0x3f

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    aput-byte v2, v4, v6

    goto :goto_3c

    :cond_5f
    add-int/lit8 v0, v3, 0x1

    ushr-int/lit8 v6, v2, 0xc

    and-int/lit8 v6, v6, 0xf

    or-int/lit16 v6, v6, 0xe0

    int-to-byte v6, v6

    aput-byte v6, v4, v3

    add-int/lit8 v3, v0, 0x1

    ushr-int/lit8 v6, v2, 0x6

    and-int/lit8 v6, v6, 0x3f

    or-int/lit16 v6, v6, 0x80

    int-to-byte v6, v6

    aput-byte v6, v4, v0

    add-int/lit8 v0, v3, 0x1

    and-int/lit8 v2, v2, 0x3f

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    aput-byte v2, v4, v3

    goto :goto_3c

    :cond_7f
    return-object v4
.end method
