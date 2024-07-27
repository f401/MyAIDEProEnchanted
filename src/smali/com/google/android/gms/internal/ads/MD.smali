.class public final Lcom/google/android/gms/internal/ads/MD;
.super Ljava/lang/Object;


# instance fields
.field private DW:I

.field private FH:I

.field private Hw:I

.field private j6:[B


# direct methods
.method public constructor <init>([BII)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/MD;->j6:[B

    iput p2, p0, Lcom/google/android/gms/internal/ads/MD;->FH:I

    iput p3, p0, Lcom/google/android/gms/internal/ads/MD;->DW:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/MD;->Hw:I

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/MD;->v5()V

    return-void
.end method

.method private final FH(I)Z
    .registers 5

    const/4 v0, 0x2

    if-gt v0, p1, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/ads/MD;->DW:I

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/MD;->j6:[B

    aget-byte v1, v0, p1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    add-int/lit8 v1, p1, -0x2

    aget-byte v1, v0, v1

    if-nez v1, :cond_0

    add-int/lit8 v1, p1, -0x1

    aget-byte v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final Hw()I
    .registers 4

    const/4 v1, 0x0

    move v0, v1

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/MD;->j6()Z

    move-result v2

    if-nez v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    if-lez v0, :cond_1

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/MD;->j6(I)I

    move-result v1

    :cond_1
    const/4 v2, 0x1

    shl-int v0, v2, v0

    add-int/lit8 v0, v0, -0x1

    add-int/2addr v0, v1

    return v0
.end method

.method private final v5()V
    .registers 4

    iget v0, p0, Lcom/google/android/gms/internal/ads/MD;->FH:I

    if-ltz v0, :cond_1

    iget v1, p0, Lcom/google/android/gms/internal/ads/MD;->Hw:I

    if-ltz v1, :cond_1

    const/16 v2, 0x8

    if-ge v1, v2, :cond_1

    iget v2, p0, Lcom/google/android/gms/internal/ads/MD;->DW:I

    if-lt v0, v2, :cond_0

    if-ne v0, v2, :cond_1

    if-nez v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/CD;->DW(Z)V

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final DW()I
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/MD;->Hw()I

    move-result v0

    return v0
.end method

.method public final DW(I)V
    .registers 5

    iget v0, p0, Lcom/google/android/gms/internal/ads/MD;->FH:I

    div-int/lit8 v1, p1, 0x8

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/android/gms/internal/ads/MD;->FH:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/MD;->Hw:I

    rem-int/lit8 v2, p1, 0x8

    add-int/2addr v1, v2

    iput v1, p0, Lcom/google/android/gms/internal/ads/MD;->Hw:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/MD;->Hw:I

    const/4 v2, 0x7

    if-le v1, v2, :cond_0

    iget v2, p0, Lcom/google/android/gms/internal/ads/MD;->FH:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/ads/MD;->FH:I

    add-int/lit8 v1, v1, -0x8

    iput v1, p0, Lcom/google/android/gms/internal/ads/MD;->Hw:I

    :cond_0
    :goto_0
    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/google/android/gms/internal/ads/MD;->FH:I

    if-gt v0, v1, :cond_1

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/MD;->FH(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/google/android/gms/internal/ads/MD;->FH:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/android/gms/internal/ads/MD;->FH:I

    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/MD;->v5()V

    return-void
.end method

.method public final FH()I
    .registers 3

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/MD;->Hw()I

    move-result v1

    rem-int/lit8 v0, v1, 0x2

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    add-int/lit8 v1, v1, 0x1

    div-int/lit8 v1, v1, 0x2

    mul-int/2addr v0, v1

    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final j6(I)I
    .registers 11

    const/16 v8, 0x8

    const/4 v0, 0x0

    if-nez p1, :cond_0

    :goto_0
    return v0

    :cond_0
    div-int/lit8 v4, p1, 0x8

    move v3, v0

    move v2, v0

    :goto_1
    if-ge v3, v4, :cond_3

    iget v0, p0, Lcom/google/android/gms/internal/ads/MD;->FH:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/MD;->FH(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/google/android/gms/internal/ads/MD;->FH:I

    add-int/lit8 v0, v0, 0x2

    :goto_2
    iget v1, p0, Lcom/google/android/gms/internal/ads/MD;->Hw:I

    if-eqz v1, :cond_2

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/MD;->j6:[B

    iget v6, p0, Lcom/google/android/gms/internal/ads/MD;->FH:I

    aget-byte v6, v5, v6

    aget-byte v5, v5, v0

    and-int/lit16 v5, v5, 0xff

    rsub-int/lit8 v7, v1, 0x8

    ushr-int/2addr v5, v7

    and-int/lit16 v6, v6, 0xff

    shl-int v1, v6, v1

    or-int/2addr v1, v5

    :goto_3
    add-int/lit8 p1, p1, -0x8

    and-int/lit16 v1, v1, 0xff

    shl-int/2addr v1, p1

    or-int/2addr v2, v1

    iput v0, p0, Lcom/google/android/gms/internal/ads/MD;->FH:I

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    :cond_1
    iget v0, p0, Lcom/google/android/gms/internal/ads/MD;->FH:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/MD;->j6:[B

    iget v5, p0, Lcom/google/android/gms/internal/ads/MD;->FH:I

    aget-byte v1, v1, v5

    goto :goto_3

    :cond_3
    if-lez p1, :cond_7

    iget v0, p0, Lcom/google/android/gms/internal/ads/MD;->Hw:I

    add-int v3, v0, p1

    const/16 v0, 0xff

    rsub-int/lit8 v1, p1, 0x8

    shr-int/2addr v0, v1

    int-to-byte v4, v0

    iget v0, p0, Lcom/google/android/gms/internal/ads/MD;->FH:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/MD;->FH(I)Z

    move-result v0

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/google/android/gms/internal/ads/MD;->FH:I

    add-int/lit8 v0, v0, 0x2

    move v1, v0

    :goto_4
    if-le v3, v8, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/MD;->j6:[B

    iget v5, p0, Lcom/google/android/gms/internal/ads/MD;->FH:I

    aget-byte v5, v0, v5

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    rsub-int/lit8 v6, v3, 0x10

    shr-int/2addr v0, v6

    and-int/lit16 v5, v5, 0xff

    add-int/lit8 v6, v3, -0x8

    shl-int/2addr v5, v6

    or-int/2addr v0, v5

    and-int/2addr v0, v4

    or-int/2addr v0, v2

    iput v1, p0, Lcom/google/android/gms/internal/ads/MD;->FH:I

    :cond_4
    :goto_5
    rem-int/lit8 v1, v3, 0x8

    iput v1, p0, Lcom/google/android/gms/internal/ads/MD;->Hw:I

    :goto_6
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/MD;->v5()V

    goto :goto_0

    :cond_5
    iget v0, p0, Lcom/google/android/gms/internal/ads/MD;->FH:I

    add-int/lit8 v0, v0, 0x1

    move v1, v0

    goto :goto_4

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/MD;->j6:[B

    iget v5, p0, Lcom/google/android/gms/internal/ads/MD;->FH:I

    aget-byte v0, v0, v5

    and-int/lit16 v0, v0, 0xff

    rsub-int/lit8 v5, v3, 0x8

    shr-int/2addr v0, v5

    and-int/2addr v0, v4

    or-int/2addr v0, v2

    if-ne v3, v8, :cond_4

    iput v1, p0, Lcom/google/android/gms/internal/ads/MD;->FH:I

    goto :goto_5

    :cond_7
    move v0, v2

    goto :goto_6
.end method

.method public final j6()Z
    .registers 3

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/MD;->j6(I)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
