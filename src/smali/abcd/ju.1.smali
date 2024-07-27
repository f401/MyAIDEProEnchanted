.class public final Labcd/ju;
.super Ljava/lang/Object;


# direct methods
.method public static j6(Labcd/St;[C)Ljava/lang/String;
    .registers 9

    const/4 v1, 0x0

    const/16 v6, 0x80

    move v0, v1

    :goto_0
    invoke-interface {p0}, Labcd/St;->readByte()B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    int-to-char v3, v2

    if-nez v3, :cond_0

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p1, v1, v0}, Ljava/lang/String;-><init>([CII)V

    return-object v2

    :cond_0
    aput-char v3, p1, v0

    if-ge v3, v6, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    and-int/lit16 v2, v3, 0xe0

    const/16 v4, 0xc0

    if-ne v2, v4, :cond_3

    invoke-interface {p0}, Labcd/St;->readByte()B

    move-result v2

    and-int/lit16 v4, v2, 0xff

    and-int/lit16 v2, v4, 0xc0

    if-ne v2, v6, :cond_2

    add-int/lit8 v2, v0, 0x1

    and-int/lit8 v3, v3, 0x1f

    shl-int/lit8 v3, v3, 0x6

    and-int/lit8 v4, v4, 0x3f

    or-int/2addr v3, v4

    int-to-char v3, v3

    aput-char v3, p1, v0

    move v0, v2

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/io/UTFDataFormatException;

    const-string v1, "bad second byte"

    invoke-direct {v0, v1}, Ljava/io/UTFDataFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    and-int/lit16 v2, v3, 0xf0

    const/16 v4, 0xe0

    if-ne v2, v4, :cond_5

    invoke-interface {p0}, Labcd/St;->readByte()B

    move-result v2

    and-int/lit16 v4, v2, 0xff

    invoke-interface {p0}, Labcd/St;->readByte()B

    move-result v2

    and-int/lit16 v5, v2, 0xff

    and-int/lit16 v2, v4, 0xc0

    if-ne v2, v6, :cond_4

    and-int/lit16 v2, v5, 0xc0

    if-ne v2, v6, :cond_4

    add-int/lit8 v2, v0, 0x1

    and-int/lit8 v3, v3, 0xf

    shl-int/lit8 v3, v3, 0xc

    and-int/lit8 v4, v4, 0x3f

    shl-int/lit8 v4, v4, 0x6

    or-int/2addr v3, v4

    and-int/lit8 v4, v5, 0x3f

    or-int/2addr v3, v4

    int-to-char v3, v3

    aput-char v3, p1, v0

    move v0, v2

    goto :goto_0

    :cond_4
    new-instance v0, Ljava/io/UTFDataFormatException;

    const-string v1, "bad second or third byte"

    invoke-direct {v0, v1}, Ljava/io/UTFDataFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    new-instance v0, Ljava/io/UTFDataFormatException;

    const-string v1, "bad byte"

    invoke-direct {v0, v1}, Ljava/io/UTFDataFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
