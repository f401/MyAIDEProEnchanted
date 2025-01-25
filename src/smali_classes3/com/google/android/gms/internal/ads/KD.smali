.class public final Lcom/google/android/gms/internal/ads/KD;
.super Ljava/lang/Object;


# instance fields
.field private DW:I

.field private FH:I

.field private Hw:I

.field private j6:[B


# direct methods
.method public constructor <init>([B)V
    .registers 3

    array-length v0, p1

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/KD;-><init>([BI)V

    return-void
.end method

.method private constructor <init>([BI)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/KD;->j6:[B

    iput p2, p0, Lcom/google/android/gms/internal/ads/KD;->Hw:I

    return-void
.end method


# virtual methods
.method public final j6(I)I
    .registers 12

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    :cond_4
    div-int/lit8 v1, p1, 0x8

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_8
    const/4 v4, 0x1

    const/16 v5, 0xff

    if-ge v2, v1, :cond_37

    iget v6, p0, Lcom/google/android/gms/internal/ads/KD;->FH:I

    if-eqz v6, :cond_24

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/KD;->j6:[B

    iget v8, p0, Lcom/google/android/gms/internal/ads/KD;->DW:I

    aget-byte v9, v7, v8

    add-int/2addr v8, v4

    aget-byte v7, v7, v8

    and-int/2addr v7, v5

    rsub-int/lit8 v8, v6, 0x8

    ushr-int/2addr v7, v8

    and-int/lit16 v8, v9, 0xff

    shl-int v6, v8, v6

    or-int/2addr v6, v7

    goto :goto_2a

    :cond_24
    iget-object v6, p0, Lcom/google/android/gms/internal/ads/KD;->j6:[B

    iget v7, p0, Lcom/google/android/gms/internal/ads/KD;->DW:I

    aget-byte v6, v6, v7

    :goto_2a
    add-int/lit8 p1, p1, -0x8

    and-int/2addr v5, v6

    shl-int/2addr v5, p1

    or-int/2addr v3, v5

    iget v5, p0, Lcom/google/android/gms/internal/ads/KD;->DW:I

    add-int/2addr v5, v4

    iput v5, p0, Lcom/google/android/gms/internal/ads/KD;->DW:I

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_37
    const/16 v1, 0x8

    if-lez p1, :cond_6c

    iget v2, p0, Lcom/google/android/gms/internal/ads/KD;->FH:I

    add-int/2addr v2, p1

    rsub-int/lit8 p1, p1, 0x8

    shr-int p1, v5, p1

    int-to-byte p1, p1

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/KD;->j6:[B

    iget v7, p0, Lcom/google/android/gms/internal/ads/KD;->DW:I

    if-le v2, v1, :cond_5c

    aget-byte v8, v6, v7

    add-int/2addr v7, v4

    aget-byte v6, v6, v7

    and-int/2addr v6, v5

    rsub-int/lit8 v9, v2, 0x10

    shr-int/2addr v6, v9

    and-int/2addr v5, v8

    add-int/lit8 v8, v2, -0x8

    shl-int/2addr v5, v8

    or-int/2addr v5, v6

    and-int/2addr p1, v5

    or-int/2addr p1, v3

    :goto_59
    iput v7, p0, Lcom/google/android/gms/internal/ads/KD;->DW:I

    goto :goto_68

    :cond_5c
    aget-byte v6, v6, v7

    and-int/2addr v5, v6

    rsub-int/lit8 v6, v2, 0x8

    shr-int/2addr v5, v6

    and-int/2addr p1, v5

    or-int/2addr p1, v3

    if-ne v2, v1, :cond_68

    add-int/2addr v7, v4

    goto :goto_59

    :cond_68
    :goto_68
    move v3, p1

    rem-int/2addr v2, v1

    iput v2, p0, Lcom/google/android/gms/internal/ads/KD;->FH:I

    :cond_6c
    iget p1, p0, Lcom/google/android/gms/internal/ads/KD;->DW:I

    if-ltz p1, :cond_7f

    iget v2, p0, Lcom/google/android/gms/internal/ads/KD;->FH:I

    if-ltz v2, :cond_7f

    if-ge v2, v1, :cond_7f

    iget v1, p0, Lcom/google/android/gms/internal/ads/KD;->Hw:I

    if-lt p1, v1, :cond_7e

    if-ne p1, v1, :cond_7f

    if-nez v2, :cond_7f

    :cond_7e
    const/4 v0, 0x1

    :cond_7f
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/CD;->DW(Z)V

    return v3
.end method
