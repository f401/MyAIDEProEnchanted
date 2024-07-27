.class public final Lcom/google/android/gms/internal/ads/ot;
.super Ljava/lang/Object;


# instance fields
.field private DW:I

.field private FH:I

.field private final j6:[B


# direct methods
.method public constructor <init>([B)V
    .registers 9

    const/16 v6, 0x100

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, v6, [B

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ot;->j6:[B

    move v0, v1

    :goto_0
    if-ge v0, v6, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ot;->j6:[B

    int-to-byte v3, v0

    aput-byte v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    move v2, v1

    :goto_1
    if-ge v2, v6, :cond_1

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/ot;->j6:[B

    aget-byte v4, v3, v2

    add-int/2addr v0, v4

    array-length v4, p1

    rem-int v4, v2, v4

    aget-byte v4, p1, v4

    add-int/2addr v0, v4

    and-int/lit16 v0, v0, 0xff

    aget-byte v4, v3, v2

    aget-byte v5, v3, v0

    aput-byte v5, v3, v2

    aput-byte v4, v3, v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    iput v1, p0, Lcom/google/android/gms/internal/ads/ot;->DW:I

    iput v1, p0, Lcom/google/android/gms/internal/ads/ot;->FH:I

    return-void
.end method


# virtual methods
.method public final j6([B)V
    .registers 9

    iget v0, p0, Lcom/google/android/gms/internal/ads/ot;->DW:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/ot;->FH:I

    const/4 v2, 0x0

    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_0

    add-int/lit8 v0, v0, 0x1

    and-int/lit16 v0, v0, 0xff

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/ot;->j6:[B

    aget-byte v4, v3, v0

    add-int/2addr v1, v4

    and-int/lit16 v1, v1, 0xff

    aget-byte v4, v3, v0

    aget-byte v5, v3, v1

    aput-byte v5, v3, v0

    aput-byte v4, v3, v1

    aget-byte v4, p1, v2

    aget-byte v5, v3, v0

    aget-byte v6, v3, v1

    add-int/2addr v5, v6

    and-int/lit16 v5, v5, 0xff

    aget-byte v3, v3, v5

    xor-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, p1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iput v0, p0, Lcom/google/android/gms/internal/ads/ot;->DW:I

    iput v1, p0, Lcom/google/android/gms/internal/ads/ot;->FH:I

    return-void
.end method
