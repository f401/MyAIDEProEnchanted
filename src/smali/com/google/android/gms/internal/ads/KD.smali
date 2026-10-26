.class public final Lcom/google/android/gms/internal/ads/KD;
.super Ljava/lang/Object;


# instance fields
.field private DW:I

.field private FH:I

.field private Hw:I

.field private j6:[B


# direct methods
.method public constructor <init>([B)V
    .locals 1

    array-length v0, p1

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/KD;-><init>([BI)V

    return-void
.end method

.method private constructor <init>([BI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/KD;->j6:[B

    iput p2, p0, Lcom/google/android/gms/internal/ads/KD;->Hw:I

    return-void
.end method


# virtual methods
.method public final j6(I)I
    .locals 9

    const/16 v8, 0x8

    const/4 v2, 0x0

    if-nez p1, :cond_0

    :goto_0
    return v2

    :cond_0
    div-int/lit8 v4, p1, 0x8

    move v3, v2

    move v1, v2

    :goto_1
    if-ge v3, v4, :cond_2

    iget v0, p0, Lcom/google/android/gms/internal/ads/KD;->FH:I

    if-eqz v0, :cond_1

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/KD;->j6:[B

    iget v6, p0, Lcom/google/android/gms/internal/ads/KD;->DW:I

    aget-byte v7, v5, v6

    and-int/lit16 v7, v7, 0xff

    shl-int/2addr v7, v0

    add-int/lit8 v6, v6, 0x1

    aget-byte v5, v5, v6

    and-int/lit16 v5, v5, 0xff

    rsub-int/lit8 v0, v0, 0x8

    ushr-int v0, v5, v0

    or-int/2addr v0, v7

    :goto_2
    add-int/lit8 p1, p1, -0x8

    and-int/lit16 v0, v0, 0xff

    shl-int/2addr v0, p1

    or-int/2addr v1, v0

    iget v0, p0, Lcom/google/android/gms/internal/ads/KD;->DW:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/KD;->DW:I

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/KD;->j6:[B

    iget v5, p0, Lcom/google/android/gms/internal/ads/KD;->DW:I

    aget-byte v0, v0, v5

    goto :goto_2

    :cond_2
    if-lez p1, :cond_4

    iget v0, p0, Lcom/google/android/gms/internal/ads/KD;->FH:I

    add-int v3, v0, p1

    const/16 v0, 0xff

    rsub-int/lit8 v4, p1, 0x8

    shr-int/2addr v0, v4

    int-to-byte v4, v0

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/KD;->j6:[B

    iget v0, p0, Lcom/google/android/gms/internal/ads/KD;->DW:I

    if-le v3, v8, :cond_6

    aget-byte v6, v5, v0

    add-int/lit8 v0, v0, 0x1

    and-int/lit16 v6, v6, 0xff

    add-int/lit8 v7, v3, -0x8

    shl-int/2addr v6, v7

    aget-byte v5, v5, v0

    and-int/lit16 v5, v5, 0xff

    rsub-int/lit8 v7, v3, 0x10

    shr-int/2addr v5, v7

    or-int/2addr v5, v6

    and-int/2addr v4, v5

    or-int/2addr v1, v4

    :goto_3
    iput v0, p0, Lcom/google/android/gms/internal/ads/KD;->DW:I

    :cond_3
    rem-int/lit8 v0, v3, 0x8

    iput v0, p0, Lcom/google/android/gms/internal/ads/KD;->FH:I

    :cond_4
    iget v0, p0, Lcom/google/android/gms/internal/ads/KD;->DW:I

    if-ltz v0, :cond_7

    iget v3, p0, Lcom/google/android/gms/internal/ads/KD;->FH:I

    if-ltz v3, :cond_7

    if-ge v3, v8, :cond_7

    iget v4, p0, Lcom/google/android/gms/internal/ads/KD;->Hw:I

    if-lt v0, v4, :cond_5

    if-ne v0, v4, :cond_7

    if-nez v3, :cond_7

    :cond_5
    const/4 v0, 0x1

    :goto_4
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/CD;->DW(Z)V

    move v2, v1

    goto :goto_0

    :cond_6
    aget-byte v5, v5, v0

    and-int/lit16 v5, v5, 0xff

    rsub-int/lit8 v6, v3, 0x8

    shr-int/2addr v5, v6

    and-int/2addr v4, v5

    or-int/2addr v1, v4

    if-ne v3, v8, :cond_3

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_7
    move v0, v2

    goto :goto_4
.end method
