.class public final Labcd/IK;
.super Ljava/lang/Object;


# static fields
.field private static final DW:[B

.field private static final FH:[B

.field private static final Hw:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/nio/charset/Charset;",
            ">;"
        }
    .end annotation
.end field

.field private static final j6:[B

.field private static final v5:[B


# direct methods
.method static constructor <clinit>()V
    .registers 8

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Labcd/IK;->Hw:Ljava/util/Map;

    const-string v1, "ISO-8859-1"

    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    const-string v2, "latin-1"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x3a

    new-array v0, v0, [B

    sput-object v0, Labcd/IK;->j6:[B

    const/4 v1, -0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    const/16 v0, 0x30

    const/16 v2, 0x30

    :goto_20
    const/16 v3, 0x39

    if-le v2, v3, :cond_9b

    const/16 v2, 0x67

    new-array v2, v2, [B

    sput-object v2, Labcd/IK;->DW:[B

    invoke-static {v2, v1}, Ljava/util/Arrays;->fill([BB)V

    const/16 v1, 0x30

    :goto_2f
    if-le v1, v3, :cond_90

    const/16 v2, 0x61

    const/16 v1, 0x61

    :goto_35
    const/16 v4, 0x66

    const/16 v5, 0xa

    if-le v1, v4, :cond_84

    const/16 v4, 0x41

    const/16 v1, 0x41

    :goto_3f
    const/16 v6, 0x46

    if-le v1, v6, :cond_78

    const/16 v1, 0x7b

    new-array v1, v1, [B

    sput-object v1, Labcd/IK;->FH:[B

    const/16 v6, 0x2d

    const/4 v7, 0x1

    aput-byte v7, v1, v6

    :goto_4e
    if-le v0, v3, :cond_70

    :goto_50
    const/16 v0, 0x5a

    if-le v4, v0, :cond_68

    :goto_54
    const/16 v0, 0x7a

    if-le v2, v0, :cond_60

    new-array v0, v5, [B

    fill-array-data v0, :array_a8

    sput-object v0, Labcd/IK;->v5:[B

    return-void

    :cond_60
    sget-object v0, Labcd/IK;->FH:[B

    aput-byte v7, v0, v2

    add-int/lit8 v2, v2, 0x1

    int-to-char v2, v2

    goto :goto_54

    :cond_68
    sget-object v0, Labcd/IK;->FH:[B

    aput-byte v7, v0, v4

    add-int/lit8 v4, v4, 0x1

    int-to-char v4, v4

    goto :goto_50

    :cond_70
    sget-object v1, Labcd/IK;->FH:[B

    aput-byte v7, v1, v0

    add-int/lit8 v0, v0, 0x1

    int-to-char v0, v0

    goto :goto_4e

    :cond_78
    sget-object v6, Labcd/IK;->DW:[B

    add-int/lit8 v7, v1, -0x41

    add-int/2addr v7, v5

    int-to-byte v7, v7

    aput-byte v7, v6, v1

    add-int/lit8 v1, v1, 0x1

    int-to-char v1, v1

    goto :goto_3f

    :cond_84
    sget-object v4, Labcd/IK;->DW:[B

    add-int/lit8 v6, v1, -0x61

    add-int/2addr v6, v5

    int-to-byte v5, v6

    aput-byte v5, v4, v1

    add-int/lit8 v1, v1, 0x1

    int-to-char v1, v1

    goto :goto_35

    :cond_90
    sget-object v2, Labcd/IK;->DW:[B

    add-int/lit8 v4, v1, -0x30

    int-to-byte v4, v4

    aput-byte v4, v2, v1

    add-int/lit8 v1, v1, 0x1

    int-to-char v1, v1

    goto :goto_2f

    :cond_9b
    sget-object v3, Labcd/IK;->j6:[B

    add-int/lit8 v4, v2, -0x30

    int-to-byte v4, v4

    aput-byte v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    int-to-char v2, v2

    goto/16 :goto_20

    nop

    :array_a8
    .array-data 1
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
    .end array-data
.end method

.method public static final DW([BI)I
    .registers 5

    array-length v0, p0

    if-nez p1, :cond_5

    add-int/lit8 p1, p1, 0x2e

    :cond_5
    :goto_5
    if-ge p1, v0, :cond_11

    aget-byte v1, p0, p1

    const/16 v2, 0x70

    if-eq v1, v2, :cond_e

    goto :goto_11

    :cond_e
    add-int/lit8 p1, p1, 0x30

    goto :goto_5

    :cond_11
    :goto_11
    invoke-static {p0, p1}, Labcd/IK;->J0([BI)I

    move-result p0

    return p0
.end method

.method public static final DW([BIC)I
    .registers 6

    array-length v0, p0

    :goto_1
    if-lt p1, v0, :cond_4

    return p1

    :cond_4
    add-int/lit8 v1, p1, 0x1

    aget-byte p1, p0, p1

    if-eq p1, p2, :cond_11

    const/16 v2, 0xa

    if-ne p1, v2, :cond_f

    goto :goto_11

    :cond_f
    move p1, v1

    goto :goto_1

    :cond_11
    :goto_11
    return v1
.end method

.method public static final DW([BILabcd/EK;)J
    .registers 10

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :try_start_3
    array-length v3, p0
    :try_end_4
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_3 .. :try_end_4} :catch_34

    :goto_4
    if-ge p1, v3, :cond_10

    aget-byte v4, p0, p1

    const/16 v5, 0x20

    if-eq v4, v5, :cond_d

    goto :goto_10

    :cond_d
    add-int/lit8 p1, p1, 0x1

    goto :goto_4

    :cond_10
    :goto_10
    if-lt p1, v3, :cond_13

    return-wide v0

    :cond_13
    aget-byte v4, p0, p1

    const/16 v5, 0x2b

    if-eq v4, v5, :cond_1f

    const/16 v5, 0x2d

    if-eq v4, v5, :cond_1e

    goto :goto_21

    :cond_1e
    const/4 v2, -0x1

    :cond_1f
    :goto_1f
    add-int/lit8 p1, p1, 0x1

    :goto_21
    if-lt p1, v3, :cond_24

    goto :goto_35

    :cond_24
    :try_start_24
    sget-object v4, Labcd/IK;->j6:[B

    aget-byte v5, p0, p1

    aget-byte v4, v4, v5
    :try_end_2a
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_24 .. :try_end_2a} :catch_34

    if-gez v4, :cond_2d

    goto :goto_35

    :cond_2d
    const-wide/16 v5, 0xa

    mul-long v0, v0, v5

    int-to-long v4, v4

    add-long/2addr v0, v4

    goto :goto_1f

    :catch_34
    move-exception p0

    :goto_35
    if-eqz p2, :cond_39

    iput p1, p2, Labcd/EK;->j6:I

    :cond_39
    if-gez v2, :cond_3c

    neg-long v0, v0

    :cond_3c
    return-wide v0
.end method

.method public static DW(Ljava/nio/charset/Charset;[BII)Ljava/lang/String;
    .registers 4

    sub-int/2addr p3, p2

    invoke-static {p1, p2, p3}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->mark()Ljava/nio/Buffer;

    :try_start_8
    sget-object p2, Labcd/hE;->Zo:Ljava/nio/charset/Charset;

    invoke-static {p1, p2}, Labcd/IK;->j6(Ljava/nio/ByteBuffer;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p0
    :try_end_e
    .catch Ljava/nio/charset/CharacterCodingException; {:try_start_8 .. :try_end_e} :catch_f

    return-object p0

    :catch_f
    move-exception p2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->reset()Ljava/nio/Buffer;

    sget-object p2, Labcd/hE;->Zo:Ljava/nio/charset/Charset;

    invoke-virtual {p0, p2}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_24

    :try_start_1b
    invoke-static {p1, p0}, Labcd/IK;->j6(Ljava/nio/ByteBuffer;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p0
    :try_end_1f
    .catch Ljava/nio/charset/CharacterCodingException; {:try_start_1b .. :try_end_1f} :catch_20

    return-object p0

    :catch_20
    move-exception p2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->reset()Ljava/nio/Buffer;

    :cond_24
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object p2

    invoke-virtual {p2, p0}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3f

    sget-object p0, Labcd/hE;->Zo:Ljava/nio/charset/Charset;

    invoke-virtual {p2, p0}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3f

    :try_start_36
    invoke-static {p1, p2}, Labcd/IK;->j6(Ljava/nio/ByteBuffer;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p0
    :try_end_3a
    .catch Ljava/nio/charset/CharacterCodingException; {:try_start_36 .. :try_end_3a} :catch_3b

    return-object p0

    :catch_3b
    move-exception p0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->reset()Ljava/nio/Buffer;

    :cond_3f
    new-instance p0, Ljava/nio/charset/CharacterCodingException;

    invoke-direct {p0}, Ljava/nio/charset/CharacterCodingException;-><init>()V

    throw p0
.end method

.method public static DW([BII)Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    sub-int v1, p2, p1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    :goto_7
    if-lt p1, p2, :cond_e

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_e
    aget-byte v1, p0, p1

    and-int/lit16 v1, v1, 0xff

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 p1, p1, 0x1

    goto :goto_7
.end method

.method public static DW([B)Ljava/nio/charset/Charset;
    .registers 4

    const/4 v0, 0x0

    invoke-static {p0, v0}, Labcd/IK;->Hw([BI)I

    move-result v0

    if-gez v0, :cond_a

    sget-object p0, Labcd/hE;->Zo:Ljava/nio/charset/Charset;

    return-object p0

    :cond_a
    invoke-static {p0, v0}, Labcd/IK;->Zo([BI)I

    move-result v1

    sget-object v2, Labcd/hE;->Zo:Ljava/nio/charset/Charset;

    add-int/lit8 v1, v1, -0x1

    invoke-static {v2, p0, v0, v1}, Labcd/IK;->j6(Ljava/nio/charset/Charset;[BII)Ljava/lang/String;

    move-result-object p0

    :try_start_16
    invoke-static {p0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p0
    :try_end_1a
    .catch Ljava/nio/charset/IllegalCharsetNameException; {:try_start_16 .. :try_end_1a} :catch_24
    .catch Ljava/nio/charset/UnsupportedCharsetException; {:try_start_16 .. :try_end_1a} :catch_1b

    return-object p0

    :catch_1b
    move-exception v0

    invoke-static {p0}, Labcd/IK;->j6(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p0

    if-eqz p0, :cond_23

    return-object p0

    :cond_23
    throw v0

    :catch_24
    move-exception v0

    invoke-static {p0}, Labcd/IK;->j6(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p0

    if-eqz p0, :cond_2c

    return-object p0

    :cond_2c
    throw v0
.end method

.method public static final EQ([BI)I
    .registers 3

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Labcd/IK;->j6([BILabcd/EK;)I

    move-result p0

    div-int/lit8 p1, p0, 0x64

    mul-int/lit8 p1, p1, 0x3c

    rem-int/lit8 p0, p0, 0x64

    add-int/2addr p1, p0

    return p1
.end method

.method public static final FH([BI)I
    .registers 5

    array-length v0, p0

    if-nez p1, :cond_5

    add-int/lit8 p1, p1, 0x2e

    :cond_5
    :goto_5
    if-ge p1, v0, :cond_11

    aget-byte v1, p0, p1

    const/16 v2, 0x70

    if-eq v1, v2, :cond_e

    goto :goto_11

    :cond_e
    add-int/lit8 p1, p1, 0x30

    goto :goto_5

    :cond_11
    :goto_11
    if-ge p1, v0, :cond_1d

    aget-byte v0, p0, p1

    const/16 v1, 0x61

    if-ne v0, v1, :cond_1d

    invoke-static {p0, p1}, Labcd/IK;->Zo([BI)I

    move-result p1

    :cond_1d
    sget-object v0, Labcd/wE;->Hw:[B

    invoke-static {p0, p1, v0}, Labcd/IK;->j6([BI[B)I

    move-result p0

    return p0
.end method

.method public static final FH([BIC)I
    .registers 4

    array-length v0, p0

    if-ne p1, v0, :cond_5

    add-int/lit8 p1, p1, -0x1

    :cond_5
    :goto_5
    if-gez p1, :cond_8

    return p1

    :cond_8
    add-int/lit8 v0, p1, -0x1

    aget-byte p1, p0, p1

    if-ne p1, p2, :cond_f

    return v0

    :cond_f
    move p1, v0

    goto :goto_5
.end method

.method public static FH([BII)I
    .registers 6

    if-nez p2, :cond_9

    add-int/lit8 p1, p1, -0x1

    const/16 p2, 0x30

    aput-byte p2, p0, p1

    return p1

    :cond_9
    if-gez p2, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    if-eqz v0, :cond_11

    neg-int p2, p2

    :cond_11
    :goto_11
    if-nez p2, :cond_1c

    if-eqz v0, :cond_1b

    add-int/lit8 p1, p1, -0x1

    const/16 p2, 0x2d

    aput-byte p2, p0, p1

    :cond_1b
    return p1

    :cond_1c
    add-int/lit8 p1, p1, -0x1

    sget-object v1, Labcd/IK;->v5:[B

    rem-int/lit8 v2, p2, 0xa

    aget-byte v1, v1, v2

    aput-byte v1, p0, p1

    div-int/lit8 p2, p2, 0xa

    goto :goto_11
.end method

.method public static final Hw([BI)I
    .registers 5

    array-length v0, p0

    :goto_1
    if-lt p1, v0, :cond_4

    goto :goto_10

    :cond_4
    aget-byte v1, p0, p1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_c

    const/4 p0, -0x1

    return p0

    :cond_c
    const/16 v2, 0x65

    if-ne v1, v2, :cond_17

    :goto_10
    sget-object v0, Labcd/wE;->v5:[B

    invoke-static {p0, p1, v0}, Labcd/IK;->j6([BI[B)I

    move-result p0

    return p0

    :cond_17
    invoke-static {p0, p1}, Labcd/IK;->Zo([BI)I

    move-result p1

    goto :goto_1
.end method

.method public static final Hw([BII)Labcd/CK;
    .registers 6

    new-instance v0, Labcd/CK;

    sub-int v1, p2, p1

    div-int/lit8 v1, v1, 0x24

    invoke-direct {v0, v1}, Labcd/CK;-><init>(I)V

    const/4 v1, 0x1

    const/high16 v2, -0x80000000

    invoke-virtual {v0, v1, v2}, Labcd/CK;->j6(II)V

    :goto_f
    if-lt p1, p2, :cond_15

    invoke-virtual {v0, p2}, Labcd/CK;->j6(I)V

    return-object v0

    :cond_15
    invoke-virtual {v0, p1}, Labcd/CK;->j6(I)V

    invoke-static {p0, p1}, Labcd/IK;->Zo([BI)I

    move-result p1

    goto :goto_f
.end method

.method public static final J0([BI)I
    .registers 5

    array-length v0, p0

    if-nez p1, :cond_5

    add-int/lit8 p1, p1, 0x30

    :cond_5
    :goto_5
    const/16 v1, 0xa

    if-ge p1, v0, :cond_13

    aget-byte v2, p0, p1

    if-ne v2, v1, :cond_e

    goto :goto_13

    :cond_e
    invoke-static {p0, p1}, Labcd/IK;->Zo([BI)I

    move-result p1

    goto :goto_5

    :cond_13
    :goto_13
    if-ge p1, v0, :cond_1c

    aget-byte p0, p0, p1

    if-ne p0, v1, :cond_1c

    add-int/lit8 p1, p1, 0x1

    return p1

    :cond_1c
    const/4 p0, -0x1

    return p0
.end method

.method public static final VH([BI)I
    .registers 6

    sget-object v0, Labcd/IK;->DW:[B

    aget-byte v1, p0, p1

    aget-byte v1, v0, v1

    add-int/lit8 v2, p1, 0x1

    aget-byte v2, p0, v2

    aget-byte v2, v0, v2

    add-int/lit8 v3, p1, 0x2

    aget-byte v3, p0, v3

    aget-byte v3, v0, v3

    add-int/lit8 p1, p1, 0x3

    aget-byte p0, p0, p1

    aget-byte p0, v0, p0

    shl-int/lit8 p1, v1, 0x4

    or-int/2addr p1, v2

    shl-int/lit8 p1, p1, 0x4

    or-int/2addr p1, v3

    shl-int/lit8 p1, p1, 0x4

    or-int/2addr p0, p1

    if-ltz p0, :cond_24

    return p0

    :cond_24
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw p0
.end method

.method public static final Zo([BI)I
    .registers 3

    const/16 v0, 0xa

    invoke-static {p0, p1, v0}, Labcd/IK;->j6([BIC)I

    move-result p0

    return p0
.end method

.method public static final gn([BI)I
    .registers 5

    sget-object v0, Labcd/IK;->DW:[B

    aget-byte v1, p0, p1

    aget-byte v1, v0, v1

    shl-int/lit8 v1, v1, 0x4

    add-int/lit8 v2, p1, 0x1

    aget-byte v2, p0, v2

    aget-byte v2, v0, v2

    or-int/2addr v1, v2

    shl-int/lit8 v1, v1, 0x4

    add-int/lit8 v2, p1, 0x2

    aget-byte v2, p0, v2

    aget-byte v2, v0, v2

    or-int/2addr v1, v2

    shl-int/lit8 v1, v1, 0x4

    add-int/lit8 v2, p1, 0x3

    aget-byte v2, p0, v2

    aget-byte v2, v0, v2

    or-int/2addr v1, v2

    shl-int/lit8 v1, v1, 0x4

    add-int/lit8 v2, p1, 0x4

    aget-byte v2, p0, v2

    aget-byte v2, v0, v2

    or-int/2addr v1, v2

    shl-int/lit8 v1, v1, 0x4

    add-int/lit8 v2, p1, 0x5

    aget-byte v2, p0, v2

    aget-byte v2, v0, v2

    or-int/2addr v1, v2

    shl-int/lit8 v1, v1, 0x4

    add-int/lit8 v2, p1, 0x6

    aget-byte v2, p0, v2

    aget-byte v2, v0, v2

    or-int/2addr v1, v2

    add-int/lit8 p1, p1, 0x7

    aget-byte p0, p0, p1

    aget-byte p0, v0, p0

    if-ltz v1, :cond_4a

    if-ltz p0, :cond_4a

    shl-int/lit8 p1, v1, 0x4

    or-int/2addr p0, p1

    return p0

    :cond_4a
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw p0
.end method

.method public static final j6(B)I
    .registers 2

    sget-object v0, Labcd/IK;->DW:[B

    aget-byte p0, v0, p0

    if-ltz p0, :cond_7

    return p0

    :cond_7
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw p0
.end method

.method private static j6([BCI)I
    .registers 5

    :goto_0
    if-ltz p2, :cond_c

    aget-byte v0, p0, p2

    const/16 v1, 0x20

    if-eq v0, v1, :cond_9

    goto :goto_c

    :cond_9
    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_c
    :goto_c
    if-ltz p2, :cond_16

    aget-byte v0, p0, p2

    if-ne v0, p1, :cond_13

    goto :goto_16

    :cond_13
    add-int/lit8 p2, p2, -0x1

    goto :goto_c

    :cond_16
    :goto_16
    return p2
.end method

.method public static final j6([BI)I
    .registers 5

    array-length v0, p0

    if-nez p1, :cond_5

    add-int/lit8 p1, p1, 0x2e

    :cond_5
    :goto_5
    if-ge p1, v0, :cond_11

    aget-byte v1, p0, p1

    const/16 v2, 0x70

    if-eq v1, v2, :cond_e

    goto :goto_11

    :cond_e
    add-int/lit8 p1, p1, 0x30

    goto :goto_5

    :cond_11
    :goto_11
    sget-object v0, Labcd/wE;->FH:[B

    invoke-static {p0, p1, v0}, Labcd/IK;->j6([BI[B)I

    move-result p0

    return p0
.end method

.method public static final j6([BIC)I
    .registers 5

    array-length v0, p0

    :goto_1
    if-lt p1, v0, :cond_4

    return p1

    :cond_4
    add-int/lit8 v1, p1, 0x1

    aget-byte p1, p0, p1

    if-ne p1, p2, :cond_b

    return v1

    :cond_b
    move p1, v1

    goto :goto_1
.end method

.method public static final j6([BILabcd/EK;)I
    .registers 8

    const/4 v0, 0x0

    :try_start_1
    array-length v1, p0
    :try_end_2
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_2} :catch_3a

    :goto_2
    if-ge p1, v1, :cond_e

    aget-byte v2, p0, p1

    const/16 v3, 0x20

    if-eq v2, v3, :cond_b

    goto :goto_e

    :cond_b
    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_e
    :goto_e
    if-lt p1, v1, :cond_11

    return v0

    :cond_11
    aget-byte v2, p0, p1

    const/16 v3, 0x2b

    if-eq v2, v3, :cond_20

    const/16 v3, 0x2d

    if-eq v2, v3, :cond_1c

    goto :goto_22

    :cond_1c
    const/4 v2, -0x1

    move v2, v1

    const/4 v1, -0x1

    goto :goto_33

    :cond_20
    add-int/lit8 p1, p1, 0x1

    :goto_22
    move v2, v1

    const/4 v1, 0x0

    :goto_24
    if-lt p1, v2, :cond_27

    goto :goto_37

    :cond_27
    :try_start_27
    sget-object v3, Labcd/IK;->j6:[B

    aget-byte v4, p0, p1

    aget-byte v3, v3, v4
    :try_end_2d
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_27 .. :try_end_2d} :catch_36

    if-gez v3, :cond_30

    goto :goto_37

    :cond_30
    mul-int/lit8 v0, v0, 0xa

    add-int/2addr v0, v3

    :goto_33
    add-int/lit8 p1, p1, 0x1

    goto :goto_24

    :catch_36
    move-exception p0

    :goto_37
    move p0, v0

    move v0, v1

    goto :goto_3c

    :catch_3a
    move-exception p0

    const/4 p0, 0x0

    :goto_3c
    if-eqz p2, :cond_40

    iput p1, p2, Labcd/EK;->j6:I

    :cond_40
    if-gez v0, :cond_43

    neg-int p0, p0

    :cond_43
    return p0
.end method

.method public static final j6([BI[B)I
    .registers 7

    array-length v0, p2

    add-int/2addr v0, p1

    array-length v1, p0

    const/4 v2, -0x1

    if-le v0, v1, :cond_7

    return v2

    :cond_7
    const/4 v0, 0x0

    :goto_8
    array-length v1, p2

    if-lt v0, v1, :cond_c

    return p1

    :cond_c
    aget-byte v1, p0, p1

    aget-byte v3, p2, v0

    if-eq v1, v3, :cond_13

    return v2

    :cond_13
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 p1, p1, 0x1

    goto :goto_8
.end method

.method private static j6(Ljava/nio/ByteBuffer;Ljava/nio/charset/Charset;)Ljava/lang/String;
    .registers 3

    invoke-virtual {p1}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object p1

    sget-object v0, Ljava/nio/charset/CodingErrorAction;->REPORT:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {p1, v0}, Ljava/nio/charset/CharsetDecoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    sget-object v0, Ljava/nio/charset/CodingErrorAction;->REPORT:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {p1, v0}, Ljava/nio/charset/CharsetDecoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    invoke-virtual {p1, p0}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static j6(Ljava/nio/charset/Charset;[BII)Ljava/lang/String;
    .registers 4

    :try_start_0
    invoke-static {p0, p1, p2, p3}, Labcd/IK;->DW(Ljava/nio/charset/Charset;[BII)Ljava/lang/String;

    move-result-object p0
    :try_end_4
    .catch Ljava/nio/charset/CharacterCodingException; {:try_start_0 .. :try_end_4} :catch_5

    return-object p0

    :catch_5
    move-exception p0

    invoke-static {p1, p2, p3}, Labcd/IK;->DW([BII)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static j6([B)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Labcd/IK;->j6([BII)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static j6([BII)Ljava/lang/String;
    .registers 4

    sget-object v0, Labcd/hE;->Zo:Ljava/nio/charset/Charset;

    invoke-static {v0, p0, p1, p2}, Labcd/IK;->j6(Ljava/nio/charset/Charset;[BII)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static j6(Ljava/lang/String;)Ljava/nio/charset/Charset;
    .registers 2

    sget-object v0, Labcd/IK;->Hw:Ljava/util/Map;

    invoke-static {p0}, Labcd/NK;->Hw(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/nio/charset/Charset;

    return-object p0
.end method

.method public static tp([BI)Labcd/KE;
    .registers 12

    invoke-static {p0, p1}, Labcd/IK;->Zo([BI)I

    move-result v0

    const/16 v1, 0x3c

    invoke-static {p0, p1, v1}, Labcd/IK;->DW([BIC)I

    move-result v1

    const/16 v2, 0x3e

    invoke-static {p0, v1, v2}, Labcd/IK;->DW([BIC)I

    move-result v2

    if-ge v2, v0, :cond_19

    add-int/lit8 v3, v2, -0x1

    invoke-static {p0, v1, v3}, Labcd/IK;->j6([BII)Ljava/lang/String;

    move-result-object v3

    goto :goto_1b

    :cond_19
    const-string v3, "invalid"

    :goto_1b
    move-object v6, v3

    if-ge v1, v0, :cond_25

    add-int/lit8 v1, v1, -0x2

    invoke-static {p0, p1, v1}, Labcd/IK;->j6([BII)Ljava/lang/String;

    move-result-object p1

    goto :goto_29

    :cond_25
    invoke-static {p0, p1, v0}, Labcd/IK;->j6([BII)Ljava/lang/String;

    move-result-object p1

    :goto_29
    move-object v5, p1

    new-instance p1, Labcd/EK;

    invoke-direct {p1}, Labcd/EK;-><init>()V

    if-ge v2, v0, :cond_3f

    add-int/lit8 v2, v2, 0x1

    invoke-static {p0, v2, p1}, Labcd/IK;->DW([BILabcd/EK;)J

    move-result-wide v0

    iget p1, p1, Labcd/EK;->j6:I

    invoke-static {p0, p1}, Labcd/IK;->EQ([BI)I

    move-result p0

    move v9, p0

    goto :goto_43

    :cond_3f
    const-wide/16 v0, 0x0

    const/4 p0, 0x0

    const/4 v9, 0x0

    :goto_43
    new-instance p0, Labcd/KE;

    const-wide/16 v2, 0x3e8

    mul-long v7, v0, v2

    move-object v4, p0

    invoke-direct/range {v4 .. v9}, Labcd/KE;-><init>(Ljava/lang/String;Ljava/lang/String;JI)V

    return-object p0
.end method

.method public static u7([BI)Labcd/KE;
    .registers 14

    invoke-static {p0}, Labcd/IK;->DW([B)Ljava/nio/charset/Charset;

    move-result-object v0

    const/16 v1, 0x3c

    invoke-static {p0, p1, v1}, Labcd/IK;->DW([BIC)I

    move-result v1

    const/16 v2, 0x3e

    invoke-static {p0, v1, v2}, Labcd/IK;->DW([BIC)I

    move-result v3

    array-length v4, p0

    const/4 v5, 0x0

    if-ge v1, v4, :cond_80

    aget-byte v4, p0, v1

    const/16 v6, 0xa

    if-eq v4, v6, :cond_80

    array-length v4, p0

    add-int/lit8 v4, v4, -0x1

    if-lt v3, v4, :cond_26

    add-int/lit8 v4, v3, -0x1

    aget-byte v4, p0, v4

    if-eq v4, v2, :cond_26

    goto :goto_80

    :cond_26
    add-int/lit8 v2, v1, -0x2

    const/16 v4, 0x20

    if-lt v2, p1, :cond_31

    aget-byte v6, p0, v2

    if-ne v6, v4, :cond_31

    goto :goto_33

    :cond_31
    add-int/lit8 v2, v1, -0x1

    :goto_33
    invoke-static {v0, p0, p1, v2}, Labcd/IK;->j6(Ljava/nio/charset/Charset;[BII)Ljava/lang/String;

    move-result-object v7

    add-int/lit8 p1, v3, -0x1

    invoke-static {v0, p0, v1, p1}, Labcd/IK;->j6(Ljava/nio/charset/Charset;[BII)Ljava/lang/String;

    move-result-object v8

    invoke-static {p0, p1}, Labcd/IK;->Zo([BI)I

    move-result p1

    add-int/lit8 p1, p1, -0x2

    invoke-static {p0, v4, p1}, Labcd/IK;->j6([BCI)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    if-gt p1, v3, :cond_55

    new-instance p0, Labcd/KE;

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    move-object v6, p0

    invoke-direct/range {v6 .. v11}, Labcd/KE;-><init>(Ljava/lang/String;Ljava/lang/String;JI)V

    return-object p0

    :cond_55
    add-int/lit8 v0, p1, -0x1

    invoke-static {p0, v4, v0}, Labcd/IK;->j6([BCI)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    if-lt v1, v0, :cond_6d

    new-instance p0, Labcd/KE;

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    move-object v6, p0

    invoke-direct/range {v6 .. v11}, Labcd/KE;-><init>(Ljava/lang/String;Ljava/lang/String;JI)V

    return-object p0

    :cond_6d
    new-instance v0, Labcd/KE;

    invoke-static {p0, v1, v5}, Labcd/IK;->DW([BILabcd/EK;)J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    mul-long v9, v1, v3

    invoke-static {p0, p1}, Labcd/IK;->EQ([BI)I

    move-result v11

    move-object v6, v0

    invoke-direct/range {v6 .. v11}, Labcd/KE;-><init>(Ljava/lang/String;Ljava/lang/String;JI)V

    return-object v0

    :cond_80
    :goto_80
    return-object v5
.end method

.method public static final v5([BI)I
    .registers 6

    array-length v0, p0

    move v1, p1

    :goto_2
    const/16 v2, 0xa

    if-ge v1, v0, :cond_10

    aget-byte v3, p0, v1

    if-ne v3, v2, :cond_b

    goto :goto_10

    :cond_b
    invoke-static {p0, v1}, Labcd/IK;->Zo([BI)I

    move-result v1

    goto :goto_2

    :cond_10
    :goto_10
    if-lez v1, :cond_1e

    if-ge p1, v1, :cond_1e

    add-int/lit8 v0, v1, -0x1

    aget-byte v0, p0, v0

    if-eq v0, v2, :cond_1b

    goto :goto_1e

    :cond_1b
    add-int/lit8 v1, v1, -0x1

    goto :goto_10

    :cond_1e
    :goto_1e
    return v1
.end method

.method public static final we([BI)I
    .registers 3

    const/16 v0, 0xa

    invoke-static {p0, p1, v0}, Labcd/IK;->FH([BIC)I

    move-result p0

    return p0
.end method
