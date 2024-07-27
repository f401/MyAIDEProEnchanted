.class final Lcom/google/android/gms/internal/ads/Gv;
.super Ljava/lang/Object;


# static fields
.field private static final j6:Lcom/google/android/gms/internal/ads/Iv;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    invoke-static {}, Lcom/google/android/gms/internal/ads/Ev;->DW()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/ads/Ev;->FH()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_1

    invoke-static {}, Lcom/google/android/gms/internal/ads/tt;->j6()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/android/gms/internal/ads/Lv;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/Lv;-><init>()V

    :goto_1
    sput-object v0, Lcom/google/android/gms/internal/ads/Gv;->j6:Lcom/google/android/gms/internal/ads/Iv;

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/ads/Jv;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/Jv;-><init>()V

    goto :goto_1
.end method

.method private static DW(I)I
    .registers 2

    const/16 v0, -0xc

    if-le p0, v0, :cond_0

    const/4 p0, -0x1

    :cond_0
    return p0
.end method

.method private static DW(II)I
    .registers 3

    const/16 v0, -0xc

    if-gt p0, v0, :cond_0

    const/16 v0, -0x41

    if-le p1, v0, :cond_1

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_1
    shl-int/lit8 v0, p1, 0x8

    xor-int/2addr v0, p0

    goto :goto_0
.end method

.method private static DW(III)I
    .registers 5

    const/16 v1, -0x41

    const/16 v0, -0xc

    if-gt p0, v0, :cond_0

    if-gt p1, v1, :cond_0

    if-le p2, v1, :cond_1

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_1
    shl-int/lit8 v0, p1, 0x8

    xor-int/2addr v0, p0

    shl-int/lit8 v1, p2, 0x10

    xor-int/2addr v0, v1

    goto :goto_0
.end method

.method static DW([BII)Ljava/lang/String;
    .registers 4

    sget-object v0, Lcom/google/android/gms/internal/ads/Gv;->j6:Lcom/google/android/gms/internal/ads/Iv;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/android/gms/internal/ads/Iv;->DW([BII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic FH([BII)I
    .registers 4

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ads/Gv;->Hw([BII)I

    move-result v0

    return v0
.end method

.method private static Hw([BII)I
    .registers 6

    add-int/lit8 v0, p1, -0x1

    aget-byte v0, p0, v0

    sub-int v1, p2, p1

    if-eqz v1, :cond_2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    aget-byte v1, p0, p1

    add-int/lit8 v2, p1, 0x1

    aget-byte v2, p0, v2

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/Gv;->DW(III)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    aget-byte v1, p0, p1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/Gv;->DW(II)I

    move-result v0

    goto :goto_0

    :cond_2
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Gv;->DW(I)I

    move-result v0

    goto :goto_0
.end method

.method static synthetic j6(I)I
    .registers 2

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/Gv;->DW(I)I

    move-result v0

    return v0
.end method

.method static synthetic j6(II)I
    .registers 3

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/Gv;->DW(II)I

    move-result v0

    return v0
.end method

.method static synthetic j6(III)I
    .registers 4

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ads/Gv;->DW(III)I

    move-result v0

    return v0
.end method

.method static j6(Ljava/lang/CharSequence;)I
    .registers 9

    const/16 v7, 0x800

    const/4 v1, 0x0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    move v0, v1

    :goto_0
    if-ge v0, v3, :cond_0

    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/16 v4, 0x80

    if-ge v2, v4, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_1
    if-ge v0, v3, :cond_7

    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    if-ge v4, v7, :cond_1

    rsub-int/lit8 v4, v4, 0x7f

    ushr-int/lit8 v4, v4, 0x1f

    add-int/2addr v2, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    :goto_2
    if-ge v0, v4, :cond_5

    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    if-ge v5, v7, :cond_3

    rsub-int/lit8 v5, v5, 0x7f

    ushr-int/lit8 v5, v5, 0x1f

    add-int/2addr v1, v5

    :cond_2
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    add-int/lit8 v1, v1, 0x2

    const v6, 0xd800

    if-gt v6, v5, :cond_2

    const v6, 0xdfff

    if-gt v5, v6, :cond_2

    invoke-static {p0, v0}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v5

    const/high16 v6, 0x10000

    if-lt v5, v6, :cond_4

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_4
    new-instance v1, Lcom/google/android/gms/internal/ads/Kv;

    invoke-direct {v1, v0, v4}, Lcom/google/android/gms/internal/ads/Kv;-><init>(II)V

    throw v1

    :cond_5
    add-int v0, v2, v1

    :goto_4
    if-lt v0, v3, :cond_6

    return v0

    :cond_6
    int-to-long v0, v0

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x36

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "UTF-8 length does not fit in int: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide v4, 0x100000000L

    add-long/2addr v0, v4

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    move v0, v2

    goto :goto_4
.end method

.method static j6(Ljava/lang/CharSequence;[BII)I
    .registers 5

    sget-object v0, Lcom/google/android/gms/internal/ads/Gv;->j6:Lcom/google/android/gms/internal/ads/Iv;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/Iv;->j6(Ljava/lang/CharSequence;[BII)I

    move-result v0

    return v0
.end method

.method static j6(Ljava/lang/CharSequence;Ljava/nio/ByteBuffer;)V
    .registers 6

    sget-object v0, Lcom/google/android/gms/internal/ads/Gv;->j6:Lcom/google/android/gms/internal/ads/Iv;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    invoke-static {p0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/Gv;->j6(Ljava/lang/CharSequence;[BII)I

    move-result v1

    sub-int v0, v1, v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0, p0, p1}, Lcom/google/android/gms/internal/ads/Iv;->j6(Ljava/lang/CharSequence;Ljava/nio/ByteBuffer;)V

    goto :goto_0

    :cond_1
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/Iv;->DW(Ljava/lang/CharSequence;Ljava/nio/ByteBuffer;)V

    goto :goto_0
.end method

.method public static j6([B)Z
    .registers 4

    sget-object v0, Lcom/google/android/gms/internal/ads/Gv;->j6:Lcom/google/android/gms/internal/ads/Iv;

    const/4 v1, 0x0

    array-length v2, p0

    invoke-virtual {v0, p0, v1, v2}, Lcom/google/android/gms/internal/ads/Iv;->j6([BII)Z

    move-result v0

    return v0
.end method

.method public static j6([BII)Z
    .registers 4

    sget-object v0, Lcom/google/android/gms/internal/ads/Gv;->j6:Lcom/google/android/gms/internal/ads/Iv;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/android/gms/internal/ads/Iv;->j6([BII)Z

    move-result v0

    return v0
.end method
