.class public final Lcom/google/android/gms/internal/ads/mB;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/IB;


# instance fields
.field private final j6:[Lcom/google/android/gms/internal/ads/IB;


# direct methods
.method public constructor <init>([Lcom/google/android/gms/internal/ads/IB;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/mB;->j6:[Lcom/google/android/gms/internal/ads/IB;

    return-void
.end method


# virtual methods
.method public final DW()J
    .registers 13

    const-wide v4, 0x7fffffffffffffffL

    const-wide/high16 v2, -0x8000000000000000L

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/mB;->j6:[Lcom/google/android/gms/internal/ads/IB;

    array-length v8, v7

    const/4 v6, 0x0

    move-wide v0, v4

    :goto_0
    if-ge v6, v8, :cond_1

    aget-object v9, v7, v6

    invoke-interface {v9}, Lcom/google/android/gms/internal/ads/IB;->DW()J

    move-result-wide v10

    cmp-long v9, v10, v2

    if-eqz v9, :cond_0

    invoke-static {v0, v1, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    cmp-long v4, v0, v4

    if-nez v4, :cond_2

    move-wide v0, v2

    :cond_2
    return-wide v0
.end method

.method public final DW(J)Z
    .registers 16

    const/4 v1, 0x0

    move v0, v1

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/mB;->DW()J

    move-result-wide v4

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v2, v4, v2

    if-eqz v2, :cond_3

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/mB;->j6:[Lcom/google/android/gms/internal/ads/IB;

    array-length v7, v6

    move v2, v1

    move v3, v1

    :goto_0
    if-ge v3, v7, :cond_2

    aget-object v8, v6, v3

    invoke-interface {v8}, Lcom/google/android/gms/internal/ads/IB;->DW()J

    move-result-wide v10

    cmp-long v9, v10, v4

    if-nez v9, :cond_1

    invoke-interface {v8, p1, p2}, Lcom/google/android/gms/internal/ads/IB;->DW(J)Z

    move-result v8

    or-int/2addr v2, v8

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    or-int/2addr v0, v2

    if-nez v2, :cond_0

    :cond_3
    return v0
.end method
