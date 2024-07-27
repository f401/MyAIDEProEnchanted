.class final Lcom/google/android/gms/internal/ads/iA;
.super Ljava/lang/Object;


# instance fields
.field private DW:I

.field private final j6:Lcom/google/android/gms/internal/ads/LD;


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/LD;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/LD;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/iA;->j6:Lcom/google/android/gms/internal/ads/LD;

    return-void
.end method

.method private final DW(Lcom/google/android/gms/internal/ads/Qz;)J
    .registers 8

    const/4 v5, 0x1

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/iA;->j6:Lcom/google/android/gms/internal/ads/LD;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/LD;->j6:[B

    invoke-interface {p1, v1, v0, v5}, Lcom/google/android/gms/internal/ads/Qz;->j6([BII)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/iA;->j6:Lcom/google/android/gms/internal/ads/LD;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/LD;->j6:[B

    aget-byte v1, v1, v0

    and-int/lit16 v3, v1, 0xff

    if-nez v3, :cond_0

    const-wide/high16 v0, -0x8000000000000000L

    :goto_0
    return-wide v0

    :cond_0
    const/16 v1, 0x80

    move v2, v0

    :goto_1
    and-int v4, v3, v1

    if-nez v4, :cond_1

    shr-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    xor-int/lit8 v1, v1, -0x1

    and-int/2addr v1, v3

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/iA;->j6:Lcom/google/android/gms/internal/ads/LD;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/LD;->j6:[B

    invoke-interface {p1, v3, v5, v2}, Lcom/google/android/gms/internal/ads/Qz;->j6([BII)V

    :goto_2
    if-ge v0, v2, :cond_2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/iA;->j6:Lcom/google/android/gms/internal/ads/LD;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/LD;->j6:[B

    add-int/lit8 v0, v0, 0x1

    aget-byte v3, v3, v0

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v1, v1, 0x8

    add-int/2addr v1, v3

    goto :goto_2

    :cond_2
    iget v0, p0, Lcom/google/android/gms/internal/ads/iA;->DW:I

    add-int/lit8 v2, v2, 0x1

    add-int/2addr v0, v2

    iput v0, p0, Lcom/google/android/gms/internal/ads/iA;->DW:I

    int-to-long v0, v1

    goto :goto_0
.end method


# virtual methods
.method public final j6(Lcom/google/android/gms/internal/ads/Qz;)Z
    .registers 16

    const-wide/16 v10, -0x1

    const-wide/high16 v12, -0x8000000000000000L

    const/4 v8, 0x4

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/Qz;->getLength()J

    move-result-wide v2

    const-wide/16 v0, 0x400

    cmp-long v6, v2, v10

    if-eqz v6, :cond_0

    const-wide/16 v6, 0x400

    cmp-long v6, v2, v6

    if-lez v6, :cond_1

    :cond_0
    :goto_0
    long-to-int v6, v0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/iA;->j6:Lcom/google/android/gms/internal/ads/LD;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/LD;->j6:[B

    invoke-interface {p1, v0, v4, v8}, Lcom/google/android/gms/internal/ads/Qz;->j6([BII)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/iA;->j6:Lcom/google/android/gms/internal/ads/LD;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/LD;->we()J

    move-result-wide v0

    iput v8, p0, Lcom/google/android/gms/internal/ads/iA;->DW:I

    :goto_1
    const-wide/32 v8, 0x1a45dfa3

    cmp-long v7, v0, v8

    if-eqz v7, :cond_3

    iget v7, p0, Lcom/google/android/gms/internal/ads/iA;->DW:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/google/android/gms/internal/ads/iA;->DW:I

    if-ne v7, v6, :cond_2

    move v0, v4

    :goto_2
    return v0

    :cond_1
    move-wide v0, v2

    goto :goto_0

    :cond_2
    iget-object v7, p0, Lcom/google/android/gms/internal/ads/iA;->j6:Lcom/google/android/gms/internal/ads/LD;

    iget-object v7, v7, Lcom/google/android/gms/internal/ads/LD;->j6:[B

    invoke-interface {p1, v7, v4, v5}, Lcom/google/android/gms/internal/ads/Qz;->j6([BII)V

    const/16 v7, 0x8

    shl-long/2addr v0, v7

    const-wide/16 v8, -0x100

    and-long/2addr v0, v8

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/iA;->j6:Lcom/google/android/gms/internal/ads/LD;

    iget-object v7, v7, Lcom/google/android/gms/internal/ads/LD;->j6:[B

    aget-byte v7, v7, v4

    and-int/lit16 v7, v7, 0xff

    int-to-long v8, v7

    or-long/2addr v0, v8

    goto :goto_1

    :cond_3
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/iA;->DW(Lcom/google/android/gms/internal/ads/Qz;)J

    move-result-wide v0

    iget v6, p0, Lcom/google/android/gms/internal/ads/iA;->DW:I

    int-to-long v6, v6

    cmp-long v8, v0, v12

    if-eqz v8, :cond_4

    cmp-long v8, v2, v10

    if-eqz v8, :cond_6

    add-long v8, v6, v0

    cmp-long v2, v8, v2

    if-ltz v2, :cond_6

    :cond_4
    move v0, v4

    goto :goto_2

    :cond_5
    const-wide/16 v8, 0x0

    cmp-long v8, v2, v8

    if-eqz v8, :cond_6

    long-to-int v8, v2

    invoke-interface {p1, v8}, Lcom/google/android/gms/internal/ads/Qz;->FH(I)V

    iget v8, p0, Lcom/google/android/gms/internal/ads/iA;->DW:I

    int-to-long v8, v8

    add-long/2addr v2, v8

    long-to-int v2, v2

    iput v2, p0, Lcom/google/android/gms/internal/ads/iA;->DW:I

    :cond_6
    iget v2, p0, Lcom/google/android/gms/internal/ads/iA;->DW:I

    int-to-long v8, v2

    add-long v10, v6, v0

    cmp-long v3, v8, v10

    if-gez v3, :cond_9

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/iA;->DW(Lcom/google/android/gms/internal/ads/Qz;)J

    move-result-wide v2

    cmp-long v2, v2, v12

    if-nez v2, :cond_7

    move v0, v4

    goto :goto_2

    :cond_7
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/iA;->DW(Lcom/google/android/gms/internal/ads/Qz;)J

    move-result-wide v2

    const-wide/16 v8, 0x0

    cmp-long v8, v2, v8

    if-ltz v8, :cond_8

    const-wide/32 v8, 0x7fffffff

    cmp-long v8, v2, v8

    if-lez v8, :cond_5

    :cond_8
    move v0, v4

    goto :goto_2

    :cond_9
    int-to-long v0, v2

    cmp-long v0, v0, v10

    if-nez v0, :cond_4

    move v0, v5

    goto :goto_2
.end method
