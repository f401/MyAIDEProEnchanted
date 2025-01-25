.class public final Labcd/ju;
.super Ljava/lang/Object;


# direct methods
.method public static j6(Labcd/St;[C)Ljava/lang/String;
    .registers 9

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_2
    invoke-interface {p0}, Labcd/St;->readByte()B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    int-to-char v2, v2

    if-nez v2, :cond_11

    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, p1, v0, v1}, Ljava/lang/String;-><init>([CII)V

    return-object p0

    :cond_11
    aput-char v2, p1, v1

    const/16 v3, 0x80

    if-ge v2, v3, :cond_1a

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_1a
    and-int/lit16 v4, v2, 0xe0

    const/16 v5, 0xc0

    if-ne v4, v5, :cond_40

    invoke-interface {p0}, Labcd/St;->readByte()B

    move-result v4

    and-int/lit16 v4, v4, 0xff

    and-int/lit16 v5, v4, 0xc0

    if-ne v5, v3, :cond_38

    add-int/lit8 v3, v1, 0x1

    and-int/lit8 v2, v2, 0x1f

    shl-int/lit8 v2, v2, 0x6

    and-int/lit8 v4, v4, 0x3f

    or-int/2addr v2, v4

    int-to-char v2, v2

    aput-char v2, p1, v1

    :goto_36
    move v1, v3

    goto :goto_2

    :cond_38
    new-instance p0, Ljava/io/UTFDataFormatException;

    const-string p1, "bad second byte"

    invoke-direct {p0, p1}, Ljava/io/UTFDataFormatException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_40
    and-int/lit16 v4, v2, 0xf0

    const/16 v5, 0xe0

    if-ne v4, v5, :cond_74

    invoke-interface {p0}, Labcd/St;->readByte()B

    move-result v4

    and-int/lit16 v4, v4, 0xff

    invoke-interface {p0}, Labcd/St;->readByte()B

    move-result v5

    and-int/lit16 v5, v5, 0xff

    and-int/lit16 v6, v4, 0xc0

    if-ne v6, v3, :cond_6c

    and-int/lit16 v6, v5, 0xc0

    if-ne v6, v3, :cond_6c

    add-int/lit8 v3, v1, 0x1

    and-int/lit8 v2, v2, 0xf

    shl-int/lit8 v2, v2, 0xc

    and-int/lit8 v4, v4, 0x3f

    shl-int/lit8 v4, v4, 0x6

    or-int/2addr v2, v4

    and-int/lit8 v4, v5, 0x3f

    or-int/2addr v2, v4

    int-to-char v2, v2

    aput-char v2, p1, v1

    goto :goto_36

    :cond_6c
    new-instance p0, Ljava/io/UTFDataFormatException;

    const-string p1, "bad second or third byte"

    invoke-direct {p0, p1}, Ljava/io/UTFDataFormatException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_74
    new-instance p0, Ljava/io/UTFDataFormatException;

    const-string p1, "bad byte"

    invoke-direct {p0, p1}, Ljava/io/UTFDataFormatException;-><init>(Ljava/lang/String;)V

    goto :goto_7d

    :goto_7c
    throw p0

    :goto_7d
    goto :goto_7c
.end method
