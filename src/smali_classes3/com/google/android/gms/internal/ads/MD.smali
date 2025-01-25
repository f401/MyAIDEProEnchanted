.class public final Lcom/google/android/gms/internal/ads/MD;
.super Ljava/lang/Object;


# instance fields
.field private DW:I

.field private FH:I

.field private Hw:I

.field private j6:[B


# direct methods
.method public constructor <init>([BII)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/MD;->j6:[B

    iput p2, p0, Lcom/google/android/gms/internal/ads/MD;->FH:I

    iput p3, p0, Lcom/google/android/gms/internal/ads/MD;->DW:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/gms/internal/ads/MD;->Hw:I

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/MD;->v5()V

    return-void
.end method

.method private final FH(I)Z
    .registers 5

    const/4 v0, 0x2

    if-gt v0, p1, :cond_1b

    iget v0, p0, Lcom/google/android/gms/internal/ads/MD;->DW:I

    if-ge p1, v0, :cond_1b

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/MD;->j6:[B

    aget-byte v1, v0, p1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1b

    add-int/lit8 v1, p1, -0x2

    aget-byte v1, v0, v1

    if-nez v1, :cond_1b

    const/4 v1, 0x1

    sub-int/2addr p1, v1

    aget-byte p1, v0, p1

    if-nez p1, :cond_1b

    return v1

    :cond_1b
    const/4 p1, 0x0

    return p1
.end method

.method private final Hw()I
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/MD;->j6()Z

    move-result v2

    if-nez v2, :cond_b

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_b
    if-lez v1, :cond_11

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/MD;->j6(I)I

    move-result v0

    :cond_11
    const/4 v2, 0x1

    shl-int v1, v2, v1

    sub-int/2addr v1, v2

    add-int/2addr v1, v0

    return v1
.end method

.method private final v5()V
    .registers 4

    iget v0, p0, Lcom/google/android/gms/internal/ads/MD;->FH:I

    if-ltz v0, :cond_16

    iget v1, p0, Lcom/google/android/gms/internal/ads/MD;->Hw:I

    if-ltz v1, :cond_16

    const/16 v2, 0x8

    if-ge v1, v2, :cond_16

    iget v2, p0, Lcom/google/android/gms/internal/ads/MD;->DW:I

    if-lt v0, v2, :cond_14

    if-ne v0, v2, :cond_16

    if-nez v1, :cond_16

    :cond_14
    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    :goto_17
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/CD;->DW(Z)V

    return-void
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

    iget v2, p0, Lcom/google/android/gms/internal/ads/MD;->Hw:I

    rem-int/lit8 p1, p1, 0x8

    add-int/2addr v2, p1

    iput v2, p0, Lcom/google/android/gms/internal/ads/MD;->Hw:I

    const/4 p1, 0x7

    if-le v2, p1, :cond_19

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/android/gms/internal/ads/MD;->FH:I

    add-int/lit8 v2, v2, -0x8

    iput v2, p0, Lcom/google/android/gms/internal/ads/MD;->Hw:I

    :cond_19
    :goto_19
    add-int/lit8 v0, v0, 0x1

    iget p1, p0, Lcom/google/android/gms/internal/ads/MD;->FH:I

    if-gt v0, p1, :cond_2e

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/MD;->FH(I)Z

    move-result p1

    if-eqz p1, :cond_19

    iget p1, p0, Lcom/google/android/gms/internal/ads/MD;->FH:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/ads/MD;->FH:I

    add-int/lit8 v0, v0, 0x2

    goto :goto_19

    :cond_2e
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/MD;->v5()V

    return-void
.end method

.method public final FH()I
    .registers 4

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/MD;->Hw()I

    move-result v0

    rem-int/lit8 v1, v0, 0x2

    const/4 v2, 0x1

    if-nez v1, :cond_b

    const/4 v1, -0x1

    goto :goto_c

    :cond_b
    const/4 v1, 0x1

    :goto_c
    add-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x2

    mul-int v1, v1, v0

    return v1
.end method

.method public final j6(I)I
    .registers 11

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    :cond_4
    div-int/lit8 v1, p1, 0x8

    const/4 v2, 0x0

    :goto_7
    const/16 v3, 0xff

    if-ge v0, v1, :cond_43

    iget v4, p0, Lcom/google/android/gms/internal/ads/MD;->FH:I

    add-int/lit8 v4, v4, 0x1

    invoke-direct {p0, v4}, Lcom/google/android/gms/internal/ads/MD;->FH(I)Z

    move-result v4

    if-eqz v4, :cond_1a

    iget v4, p0, Lcom/google/android/gms/internal/ads/MD;->FH:I

    add-int/lit8 v4, v4, 0x2

    goto :goto_1e

    :cond_1a
    iget v4, p0, Lcom/google/android/gms/internal/ads/MD;->FH:I

    add-int/lit8 v4, v4, 0x1

    :goto_1e
    iget v5, p0, Lcom/google/android/gms/internal/ads/MD;->Hw:I

    if-eqz v5, :cond_33

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/MD;->j6:[B

    iget v7, p0, Lcom/google/android/gms/internal/ads/MD;->FH:I

    aget-byte v7, v6, v7

    aget-byte v6, v6, v4

    and-int/2addr v6, v3

    rsub-int/lit8 v8, v5, 0x8

    ushr-int/2addr v6, v8

    and-int/2addr v7, v3

    shl-int v5, v7, v5

    or-int/2addr v5, v6

    goto :goto_39

    :cond_33
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/MD;->j6:[B

    iget v6, p0, Lcom/google/android/gms/internal/ads/MD;->FH:I

    aget-byte v5, v5, v6

    :goto_39
    add-int/lit8 p1, p1, -0x8

    and-int/2addr v3, v5

    shl-int/2addr v3, p1

    or-int/2addr v2, v3

    iput v4, p0, Lcom/google/android/gms/internal/ads/MD;->FH:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_43
    if-lez p1, :cond_89

    iget v0, p0, Lcom/google/android/gms/internal/ads/MD;->Hw:I

    add-int/2addr v0, p1

    const/16 v1, 0x8

    rsub-int/lit8 p1, p1, 0x8

    shr-int p1, v3, p1

    int-to-byte p1, p1

    iget v4, p0, Lcom/google/android/gms/internal/ads/MD;->FH:I

    add-int/lit8 v4, v4, 0x1

    invoke-direct {p0, v4}, Lcom/google/android/gms/internal/ads/MD;->FH(I)Z

    move-result v4

    if-eqz v4, :cond_5e

    iget v4, p0, Lcom/google/android/gms/internal/ads/MD;->FH:I

    add-int/lit8 v4, v4, 0x2

    goto :goto_62

    :cond_5e
    iget v4, p0, Lcom/google/android/gms/internal/ads/MD;->FH:I

    add-int/lit8 v4, v4, 0x1

    :goto_62
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/MD;->j6:[B

    iget v6, p0, Lcom/google/android/gms/internal/ads/MD;->FH:I

    if-le v0, v1, :cond_7a

    aget-byte v6, v5, v6

    aget-byte v5, v5, v4

    and-int/2addr v5, v3

    rsub-int/lit8 v7, v0, 0x10

    shr-int/2addr v5, v7

    and-int/2addr v3, v6

    add-int/lit8 v6, v0, -0x8

    shl-int/2addr v3, v6

    or-int/2addr v3, v5

    and-int/2addr p1, v3

    or-int/2addr p1, v2

    :goto_77
    iput v4, p0, Lcom/google/android/gms/internal/ads/MD;->FH:I

    goto :goto_85

    :cond_7a
    aget-byte v5, v5, v6

    and-int/2addr v3, v5

    rsub-int/lit8 v5, v0, 0x8

    shr-int/2addr v3, v5

    and-int/2addr p1, v3

    or-int/2addr p1, v2

    if-ne v0, v1, :cond_85

    goto :goto_77

    :cond_85
    :goto_85
    move v2, p1

    rem-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/ads/MD;->Hw:I

    :cond_89
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/MD;->v5()V

    return v2
.end method

.method public final j6()Z
    .registers 3

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/MD;->j6(I)I

    move-result v1

    if-ne v1, v0, :cond_8

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method
