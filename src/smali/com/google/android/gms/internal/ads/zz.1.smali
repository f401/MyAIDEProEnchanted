.class public Lcom/google/android/gms/internal/ads/zz;
.super Ljava/lang/Object;


# instance fields
.field private j6:I


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final DW(I)V
    .registers 4

    iget v0, p0, Lcom/google/android/gms/internal/ads/zz;->j6:I

    const/high16 v1, -0x80000000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zz;->j6:I

    return-void
.end method

.method public final DW()Z
    .registers 2

    const/high16 v0, -0x80000000

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zz;->FH(I)Z

    move-result v0

    return v0
.end method

.method public final FH()Z
    .registers 2

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zz;->FH(I)Z

    move-result v0

    return v0
.end method

.method protected final FH(I)Z
    .registers 3

    iget v0, p0, Lcom/google/android/gms/internal/ads/zz;->j6:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final Hw()Z
    .registers 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zz;->FH(I)Z

    move-result v0

    return v0
.end method

.method public j6()V
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zz;->j6:I

    return-void
.end method

.method public final j6(I)V
    .registers 2

    iput p1, p0, Lcom/google/android/gms/internal/ads/zz;->j6:I

    return-void
.end method
