.class public final Labcd/IK;
.super Ljava/lang/Object;


# static fields
.field private static final DW:[B

.field private static final FH:[B

.field private static final Hw:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
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

    const/16 v1, 0x41

    const/4 v5, -0x1

    const/16 v7, 0x39

    const/16 v2, 0x30

    const/4 v6, 0x1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Labcd/IK;->Hw:Ljava/util/Map;

    sget-object v0, Labcd/IK;->Hw:Ljava/util/Map;

    const-string v3, "latin-1"

    const-string v4, "ISO-8859-1"

    invoke-static {v4}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x3a

    new-array v0, v0, [B

    sput-object v0, Labcd/IK;->j6:[B

    sget-object v0, Labcd/IK;->j6:[B

    invoke-static {v0, v5}, Ljava/util/Arrays;->fill([BB)V

    move v0, v2

    :goto_0
    if-le v0, v7, :cond_6

    const/16 v0, 0x67

    new-array v0, v0, [B

    sput-object v0, Labcd/IK;->DW:[B

    sget-object v0, Labcd/IK;->DW:[B

    invoke-static {v0, v5}, Ljava/util/Arrays;->fill([BB)V

    move v0, v2

    :goto_1
    if-le v0, v7, :cond_5

    const/16 v0, 0x61

    const/16 v3, 0x61

    :goto_2
    const/16 v4, 0x66

    if-le v3, v4, :cond_4

    move v3, v1

    :goto_3
    const/16 v4, 0x46

    if-le v3, v4, :cond_3

    const/16 v3, 0x7b

    new-array v3, v3, [B

    sput-object v3, Labcd/IK;->FH:[B

    sget-object v3, Labcd/IK;->FH:[B

    const/16 v4, 0x2d

    aput-byte v6, v3, v4

    :goto_4
    if-le v2, v7, :cond_2

    :goto_5
    const/16 v2, 0x5a

    if-le v1, v2, :cond_1

    :goto_6
    const/16 v1, 0x7a

    if-le v0, v1, :cond_0

    const/16 v0, 0xa

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Labcd/IK;->v5:[B

    return-void

    :cond_0
    sget-object v1, Labcd/IK;->FH:[B

    aput-byte v6, v1, v0

    add-int/lit8 v0, v0, 0x1

    int-to-char v0, v0

    goto :goto_6

    :cond_1
    sget-object v2, Labcd/IK;->FH:[B

    aput-byte v6, v2, v1

    add-int/lit8 v1, v1, 0x1

    int-to-char v1, v1

    goto :goto_5

    :cond_2
    sget-object v3, Labcd/IK;->FH:[B

    aput-byte v6, v3, v2

    add-int/lit8 v2, v2, 0x1

    int-to-char v2, v2

    goto :goto_4

    :cond_3
    sget-object v4, Labcd/IK;->DW:[B

    add-int/lit8 v5, v3, -0x41

    add-int/lit8 v5, v5, 0xa

    int-to-byte v5, v5

    aput-byte v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    int-to-char v3, v3

    goto :goto_3

    :cond_4
    sget-object v4, Labcd/IK;->DW:[B

    add-int/lit8 v5, v3, -0x61

    add-int/lit8 v5, v5, 0xa

    int-to-byte v5, v5

    aput-byte v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    int-to-char v3, v3

    goto :goto_2

    :cond_5
    sget-object v3, Labcd/IK;->DW:[B

    add-int/lit8 v4, v0, -0x30

    int-to-byte v4, v4

    aput-byte v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    int-to-char v0, v0

    goto :goto_1

    :cond_6
    sget-object v3, Labcd/IK;->j6:[B

    add-int/lit8 v4, v0, -0x30

    int-to-byte v4, v4

    aput-byte v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    int-to-char v0, v0

    goto/16 :goto_0

    :array_0
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

    if-nez p1, :cond_0

    add-int/lit8 p1, p1, 0x2e

    :cond_0
    :goto_0
    if-ge p1, v0, :cond_1

    aget-byte v1, p0, p1

    const/16 v2, 0x70

    if-eq v1, v2, :cond_2

    :cond_1
    invoke-static {p0, p1}, Labcd/IK;->J0([BI)I

    move-result v0

    return v0

    :cond_2
    add-int/lit8 p1, p1, 0x30

    goto :goto_0
.end method

.method public static final DW([BIC)I
    .registers 7

    array-length v2, p0

    move v0, p1

    :goto_0
    if-lt v0, v2, :cond_0

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v1, v0, 0x1

    aget-byte v0, p0, v0

    if-eq v0, p2, :cond_1

    const/16 v3, 0xa

    if-ne v0, v3, :cond_2

    :cond_1
    move v0, v1

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public static final DW([BILabcd/EK;)J
    .registers 11

    const-wide/16 v0, 0x0

    const/4 v3, 0x0

    :try_start_0
    array-length v4, p0
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move v2, p1

    :goto_0
    if-ge v2, v4, :cond_0

    aget-byte v5, p0, v2

    const/16 v6, 0x20

    if-eq v5, v6, :cond_2

    :cond_0
    if-lt v2, v4, :cond_3

    :cond_1
    :goto_1
    return-wide v0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    aget-byte v5, p0, v2

    const/16 v6, 0x2b

    if-eq v5, v6, :cond_7

    const/16 v6, 0x2d

    if-eq v5, v6, :cond_6

    :goto_2
    if-lt v2, v4, :cond_8

    :cond_4
    :goto_3
    if-eqz p2, :cond_5

    iput v2, p2, Labcd/EK;->j6:I

    :cond_5
    if-gez v3, :cond_1

    neg-long v0, v0

    goto :goto_1

    :cond_6
    const/4 v3, -0x1

    :cond_7
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_8
    :try_start_1
    sget-object v5, Labcd/IK;->j6:[B

    aget-byte v6, p0, v2

    aget-byte v5, v5, v6
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    if-ltz v5, :cond_4

    const-wide/16 v6, 0xa

    mul-long/2addr v0, v6

    int-to-long v6, v5

    add-long/2addr v0, v6

    goto :goto_4

    :catch_0
    move-exception v2

    move v2, p1

    goto :goto_3

    :catch_1
    move-exception v4

    goto :goto_3
.end method

.method public static DW(Ljava/nio/charset/Charset;[BII)Ljava/lang/String;
    .registers 7

    sub-int v0, p3, p2

    invoke-static {p1, p2, v0}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->mark()Ljava/nio/Buffer;

    :try_start_0
    sget-object v1, Labcd/hE;->Zo:Ljava/nio/charset/Charset;

    invoke-static {v0, v1}, Labcd/IK;->j6(Ljava/nio/ByteBuffer;Ljava/nio/charset/Charset;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/nio/charset/CharacterCodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->reset()Ljava/nio/Buffer;

    sget-object v1, Labcd/hE;->Zo:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v1}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    :try_start_1
    invoke-static {v0, p0}, Labcd/IK;->j6(Ljava/nio/ByteBuffer;Ljava/nio/charset/Charset;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/nio/charset/CharacterCodingException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    goto :goto_0

    :catch_1
    move-exception v1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->reset()Ljava/nio/Buffer;

    :cond_0
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v2, Labcd/hE;->Zo:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v2}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    :try_start_2
    invoke-static {v0, v1}, Labcd/IK;->j6(Ljava/nio/ByteBuffer;Ljava/nio/charset/Charset;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/nio/charset/CharacterCodingException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v0

    goto :goto_0

    :catch_2
    move-exception v1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->reset()Ljava/nio/Buffer;

    :cond_1
    new-instance v0, Ljava/nio/charset/CharacterCodingException;

    invoke-direct {v0}, Ljava/nio/charset/CharacterCodingException;-><init>()V

    throw v0
.end method

.method public static DW([BII)Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    sub-int v1, p2, p1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    :goto_0
    if-lt p1, p2, :cond_0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    aget-byte v1, p0, p1

    and-int/lit16 v1, v1, 0xff

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 p1, p1, 0x1

    goto :goto_0
.end method

.method public static DW([B)Ljava/nio/charset/Charset;
    .registers 4

    const/4 v0, 0x0

    invoke-static {p0, v0}, Labcd/IK;->Hw([BI)I

    move-result v0

    if-gez v0, :cond_1

    sget-object v0, Labcd/hE;->Zo:Ljava/nio/charset/Charset;

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-static {p0, v0}, Labcd/IK;->Zo([BI)I

    move-result v1

    sget-object v2, Labcd/hE;->Zo:Ljava/nio/charset/Charset;

    add-int/lit8 v1, v1, -0x1

    invoke-static {v2, p0, v0, v1}, Labcd/IK;->j6(Ljava/nio/charset/Charset;[BII)Ljava/lang/String;

    move-result-object v0

    :try_start_0
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;
    :try_end_0
    .catch Ljava/nio/charset/IllegalCharsetNameException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/nio/charset/UnsupportedCharsetException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-static {v0}, Labcd/IK;->j6(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    if-nez v0, :cond_0

    throw v1

    :catch_1
    move-exception v1

    invoke-static {v0}, Labcd/IK;->j6(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    if-nez v0, :cond_0

    throw v1
.end method

.method public static final EQ([BI)I
    .registers 4

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Labcd/IK;->j6([BILabcd/EK;)I

    move-result v0

    div-int/lit8 v1, v0, 0x64

    mul-int/lit8 v1, v1, 0x3c

    rem-int/lit8 v0, v0, 0x64

    add-int/2addr v0, v1

    return v0
.end method

.method public static final FH([BI)I
    .registers 6

    array-length v1, p0

    if-nez p1, :cond_3

    add-int/lit8 v0, p1, 0x2e

    :goto_0
    if-ge v0, v1, :cond_0

    aget-byte v2, p0, v0

    const/16 v3, 0x70

    if-eq v2, v3, :cond_2

    :cond_0
    if-ge v0, v1, :cond_1

    aget-byte v1, p0, v0

    const/16 v2, 0x61

    if-ne v1, v2, :cond_1

    invoke-static {p0, v0}, Labcd/IK;->Zo([BI)I

    move-result v0

    :cond_1
    sget-object v1, Labcd/wE;->Hw:[B

    invoke-static {p0, v0, v1}, Labcd/IK;->j6([BI[B)I

    move-result v0

    return v0

    :cond_2
    add-int/lit8 v0, v0, 0x30

    goto :goto_0

    :cond_3
    move v0, p1

    goto :goto_0
.end method

.method public static final FH([BIC)I
    .registers 5

    array-length v0, p0

    if-ne p1, v0, :cond_2

    add-int/lit8 v0, p1, -0x1

    :goto_0
    if-gez v0, :cond_0

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v1, v0, -0x1

    aget-byte v0, p0, v0

    if-ne v0, p2, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    move v0, p1

    goto :goto_0
.end method

.method public static FH([BII)I
    .registers 6

    if-nez p2, :cond_1

    add-int/lit8 v0, p1, -0x1

    const/16 v1, 0x30

    aput-byte v1, p0, v0

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-gez p2, :cond_2

    const/4 v0, 0x1

    move v1, v0

    :goto_1
    if-eqz v1, :cond_4

    neg-int p2, p2

    move v0, p1

    :goto_2
    if-nez p2, :cond_3

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, -0x1

    const/16 v1, 0x2d

    aput-byte v1, p0, v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    move v1, v0

    goto :goto_1

    :cond_3
    add-int/lit8 p1, v0, -0x1

    sget-object v0, Labcd/IK;->v5:[B

    rem-int/lit8 v2, p2, 0xa

    aget-byte v0, v0, v2

    aput-byte v0, p0, p1

    div-int/lit8 p2, p2, 0xa

    move v0, p1

    goto :goto_2

    :cond_4
    move v0, p1

    goto :goto_2
.end method

.method public static final Hw([BI)I
    .registers 5

    array-length v0, p0

    :goto_0
    if-lt p1, v0, :cond_1

    :cond_0
    sget-object v0, Labcd/wE;->v5:[B

    invoke-static {p0, p1, v0}, Labcd/IK;->j6([BI[B)I

    move-result v0

    :goto_1
    return v0

    :cond_1
    aget-byte v1, p0, p1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_2

    const/4 v0, -0x1

    goto :goto_1

    :cond_2
    aget-byte v1, p0, p1

    const/16 v2, 0x65

    if-eq v1, v2, :cond_0

    invoke-static {p0, p1}, Labcd/IK;->Zo([BI)I

    move-result p1

    goto :goto_0
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

    :goto_0
    if-lt p1, p2, :cond_0

    invoke-virtual {v0, p2}, Labcd/CK;->j6(I)V

    return-object v0

    :cond_0
    invoke-virtual {v0, p1}, Labcd/CK;->j6(I)V

    invoke-static {p0, p1}, Labcd/IK;->Zo([BI)I

    move-result p1

    goto :goto_0
.end method

.method public static final J0([BI)I
    .registers 5

    const/16 v2, 0xa

    array-length v0, p0

    if-nez p1, :cond_0

    add-int/lit8 p1, p1, 0x30

    :cond_0
    :goto_0
    if-ge p1, v0, :cond_1

    aget-byte v1, p0, p1

    if-ne v1, v2, :cond_2

    :cond_1
    if-ge p1, v0, :cond_3

    aget-byte v0, p0, p1

    if-ne v0, v2, :cond_3

    add-int/lit8 v0, p1, 0x1

    :goto_1
    return v0

    :cond_2
    invoke-static {p0, p1}, Labcd/IK;->Zo([BI)I

    move-result p1

    goto :goto_0

    :cond_3
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public static final VH([BI)I
    .registers 7

    sget-object v0, Labcd/IK;->DW:[B

    aget-byte v1, p0, p1

    aget-byte v1, v0, v1

    add-int/lit8 v2, p1, 0x1

    aget-byte v2, p0, v2

    aget-byte v2, v0, v2

    add-int/lit8 v3, p1, 0x2

    aget-byte v3, p0, v3

    aget-byte v3, v0, v3

    add-int/lit8 v4, p1, 0x3

    aget-byte v4, p0, v4

    aget-byte v0, v0, v4

    shl-int/lit8 v1, v1, 0x4

    or-int/2addr v1, v2

    shl-int/lit8 v1, v1, 0x4

    or-int/2addr v1, v3

    shl-int/lit8 v1, v1, 0x4

    or-int/2addr v0, v1

    if-ltz v0, :cond_0

    return v0

    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public static final Zo([BI)I
    .registers 3

    const/16 v0, 0xa

    invoke-static {p0, p1, v0}, Labcd/IK;->j6([BIC)I

    move-result v0

    return v0
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

    add-int/lit8 v2, p1, 0x7

    aget-byte v2, p0, v2

    aget-byte v0, v0, v2

    if-ltz v1, :cond_0

    if-ltz v0, :cond_0

    shl-int/lit8 v1, v1, 0x4

    or-int/2addr v0, v1

    return v0

    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public static final j6(B)I
    .registers 2

    sget-object v0, Labcd/IK;->DW:[B

    aget-byte v0, v0, p0

    if-ltz v0, :cond_0

    return v0

    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method private static j6([BCI)I
    .registers 6

    move v0, p2

    :goto_0
    if-ltz v0, :cond_0

    aget-byte v1, p0, v0

    const/16 v2, 0x20

    if-eq v1, v2, :cond_2

    :cond_0
    :goto_1
    if-ltz v0, :cond_1

    aget-byte v1, p0, v0

    if-ne v1, p1, :cond_3

    :cond_1
    return v0

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method

.method public static final j6([BI)I
    .registers 5

    array-length v0, p0

    if-nez p1, :cond_0

    add-int/lit8 p1, p1, 0x2e

    :cond_0
    :goto_0
    if-ge p1, v0, :cond_1

    aget-byte v1, p0, p1

    const/16 v2, 0x70

    if-eq v1, v2, :cond_2

    :cond_1
    sget-object v0, Labcd/wE;->FH:[B

    invoke-static {p0, p1, v0}, Labcd/IK;->j6([BI[B)I

    move-result v0

    return v0

    :cond_2
    add-int/lit8 p1, p1, 0x30

    goto :goto_0
.end method

.method public static final j6([BIC)I
    .registers 6

    array-length v2, p0

    move v0, p1

    :goto_0
    if-lt v0, v2, :cond_0

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v1, v0, 0x1

    aget-byte v0, p0, v0

    if-ne v0, p2, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public static final j6([BILabcd/EK;)I
    .registers 9

    const/4 v0, 0x0

    :try_start_0
    array-length v4, p0
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move v2, p1

    :goto_0
    if-ge v2, v4, :cond_0

    aget-byte v1, p0, v2

    const/16 v3, 0x20

    if-eq v1, v3, :cond_1

    :cond_0
    if-lt v2, v4, :cond_2

    :goto_1
    return v0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    aget-byte v1, p0, v2

    const/16 v3, 0x2b

    if-eq v1, v3, :cond_6

    const/16 v3, 0x2d

    if-eq v1, v3, :cond_5

    :goto_2
    move v3, v0

    move v1, v0

    :goto_3
    if-lt v2, v4, :cond_7

    :cond_3
    :goto_4
    if-eqz p2, :cond_4

    iput v2, p2, Labcd/EK;->j6:I

    :cond_4
    if-gez v1, :cond_8

    neg-int v0, v3

    goto :goto_1

    :cond_5
    const/4 v1, -0x1

    :goto_5
    add-int/lit8 v2, v2, 0x1

    move v3, v0

    goto :goto_3

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_7
    :try_start_1
    sget-object v0, Labcd/IK;->j6:[B

    aget-byte v5, p0, v2

    aget-byte v0, v0, v5
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    if-ltz v0, :cond_3

    mul-int/lit8 v3, v3, 0xa

    add-int/2addr v0, v3

    goto :goto_5

    :catch_0
    move-exception v1

    move v3, v0

    move v1, v0

    move v2, p1

    goto :goto_4

    :catch_1
    move-exception v0

    goto :goto_4

    :cond_8
    move v0, v3

    goto :goto_1
.end method

.method public static final j6([BI[B)I
    .registers 7

    const/4 v1, -0x1

    array-length v0, p2

    add-int/2addr v0, p1

    array-length v2, p0

    if-le v0, v2, :cond_1

    move p1, v1

    :cond_0
    :goto_0
    return p1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    array-length v2, p2

    if-ge v0, v2, :cond_0

    aget-byte v2, p0, p1

    aget-byte v3, p2, v0

    if-eq v2, v3, :cond_2

    move p1, v1

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 p1, p1, 0x1

    goto :goto_1
.end method

.method private static j6(Ljava/nio/ByteBuffer;Ljava/nio/charset/Charset;)Ljava/lang/String;
    .registers 4

    invoke-virtual {p1}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v0

    sget-object v1, Ljava/nio/charset/CodingErrorAction;->REPORT:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetDecoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    sget-object v1, Ljava/nio/charset/CodingErrorAction;->REPORT:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetDecoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    invoke-virtual {v0, p0}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static j6(Ljava/nio/charset/Charset;[BII)Ljava/lang/String;
    .registers 5

    :try_start_0
    invoke-static {p0, p1, p2, p3}, Labcd/IK;->DW(Ljava/nio/charset/Charset;[BII)Ljava/lang/String;
    :try_end_0
    .catch Ljava/nio/charset/CharacterCodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-static {p1, p2, p3}, Labcd/IK;->DW([BII)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static j6([B)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Labcd/IK;->j6([BII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static j6([BII)Ljava/lang/String;
    .registers 4

    sget-object v0, Labcd/hE;->Zo:Ljava/nio/charset/Charset;

    invoke-static {v0, p0, p1, p2}, Labcd/IK;->j6(Ljava/nio/charset/Charset;[BII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static j6(Ljava/lang/String;)Ljava/nio/charset/Charset;
    .registers 3

    sget-object v0, Labcd/IK;->Hw:Ljava/util/Map;

    invoke-static {p0}, Labcd/NK;->Hw(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/charset/Charset;

    return-object v0
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

    move-result v4

    if-ge v4, v0, :cond_0

    add-int/lit8 v2, v4, -0x1

    invoke-static {p0, v1, v2}, Labcd/IK;->j6([BII)Ljava/lang/String;

    move-result-object v3

    :goto_0
    if-ge v1, v0, :cond_1

    add-int/lit8 v1, v1, -0x2

    invoke-static {p0, p1, v1}, Labcd/IK;->j6([BII)Ljava/lang/String;

    move-result-object v2

    :goto_1
    new-instance v5, Labcd/EK;

    invoke-direct {v5}, Labcd/EK;-><init>()V

    if-ge v4, v0, :cond_2

    add-int/lit8 v0, v4, 0x1

    invoke-static {p0, v0, v5}, Labcd/IK;->DW([BILabcd/EK;)J

    move-result-wide v0

    iget v4, v5, Labcd/EK;->j6:I

    invoke-static {p0, v4}, Labcd/IK;->EQ([BI)I

    move-result v6

    move-wide v4, v0

    :goto_2
    new-instance v1, Labcd/KE;

    const-wide/16 v8, 0x3e8

    mul-long/2addr v4, v8

    invoke-direct/range {v1 .. v6}, Labcd/KE;-><init>(Ljava/lang/String;Ljava/lang/String;JI)V

    return-object v1

    :cond_0
    const-string v3, "invalid"

    goto :goto_0

    :cond_1
    invoke-static {p0, p1, v0}, Labcd/IK;->j6([BII)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_2
    const-wide/16 v0, 0x0

    const/4 v6, 0x0

    move-wide v4, v0

    goto :goto_2
.end method

.method public static u7([BI)Labcd/KE;
    .registers 13

    const-wide/16 v4, 0x0

    const/4 v7, 0x0

    const/16 v10, 0x3e

    const/4 v6, 0x0

    const/16 v9, 0x20

    invoke-static {p0}, Labcd/IK;->DW([B)Ljava/nio/charset/Charset;

    move-result-object v1

    const/16 v0, 0x3c

    invoke-static {p0, p1, v0}, Labcd/IK;->DW([BIC)I

    move-result v3

    invoke-static {p0, v3, v10}, Labcd/IK;->DW([BIC)I

    move-result v8

    array-length v0, p0

    if-ge v3, v0, :cond_0

    aget-byte v0, p0, v3

    const/16 v2, 0xa

    if-eq v0, v2, :cond_0

    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    if-lt v8, v0, :cond_1

    add-int/lit8 v0, v8, -0x1

    aget-byte v0, p0, v0

    if-eq v0, v10, :cond_1

    :cond_0
    move-object v1, v7

    :goto_0
    return-object v1

    :cond_1
    add-int/lit8 v0, v3, -0x2

    if-lt v0, p1, :cond_2

    aget-byte v2, p0, v0

    if-ne v2, v9, :cond_2

    :goto_1
    invoke-static {v1, p0, p1, v0}, Labcd/IK;->j6(Ljava/nio/charset/Charset;[BII)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v0, v8, -0x1

    invoke-static {v1, p0, v3, v0}, Labcd/IK;->j6(Ljava/nio/charset/Charset;[BII)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v0}, Labcd/IK;->Zo([BI)I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    invoke-static {p0, v9, v0}, Labcd/IK;->j6([BCI)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    if-gt v0, v8, :cond_3

    new-instance v1, Labcd/KE;

    invoke-direct/range {v1 .. v6}, Labcd/KE;-><init>(Ljava/lang/String;Ljava/lang/String;JI)V

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v3, -0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v1, v0, -0x1

    invoke-static {p0, v9, v1}, Labcd/IK;->j6([BCI)I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    if-lt v8, v1, :cond_4

    new-instance v1, Labcd/KE;

    invoke-direct/range {v1 .. v6}, Labcd/KE;-><init>(Ljava/lang/String;Ljava/lang/String;JI)V

    goto :goto_0

    :cond_4
    new-instance v1, Labcd/KE;

    invoke-static {p0, v8, v7}, Labcd/IK;->DW([BILabcd/EK;)J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    invoke-static {p0, v0}, Labcd/IK;->EQ([BI)I

    move-result v6

    invoke-direct/range {v1 .. v6}, Labcd/KE;-><init>(Ljava/lang/String;Ljava/lang/String;JI)V

    goto :goto_0
.end method

.method public static final v5([BI)I
    .registers 6

    const/16 v3, 0xa

    array-length v1, p0

    move v0, p1

    :goto_0
    if-ge v0, v1, :cond_0

    aget-byte v2, p0, v0

    if-ne v2, v3, :cond_2

    :cond_0
    :goto_1
    if-lez v0, :cond_1

    if-ge p1, v0, :cond_1

    add-int/lit8 v1, v0, -0x1

    aget-byte v1, p0, v1

    if-eq v1, v3, :cond_3

    :cond_1
    return v0

    :cond_2
    invoke-static {p0, v0}, Labcd/IK;->Zo([BI)I

    move-result v0

    goto :goto_0

    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method

.method public static final we([BI)I
    .registers 3

    const/16 v0, 0xa

    invoke-static {p0, p1, v0}, Labcd/IK;->FH([BIC)I

    move-result v0

    return v0
.end method
