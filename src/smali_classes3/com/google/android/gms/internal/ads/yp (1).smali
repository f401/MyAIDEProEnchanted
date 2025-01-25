.class public final Lcom/google/android/gms/internal/ads/yp;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zh;
.end annotation


# instance fields
.field public final DW:I

.field public final FH:I

.field private final j6:I


# direct methods
.method private constructor <init>(III)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/ads/yp;->j6:I

    iput p2, p0, Lcom/google/android/gms/internal/ads/yp;->FH:I

    iput p3, p0, Lcom/google/android/gms/internal/ads/yp;->DW:I

    return-void
.end method

.method public static DW()Lcom/google/android/gms/internal/ads/yp;
    .registers 2

    new-instance v0, Lcom/google/android/gms/internal/ads/yp;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1}, Lcom/google/android/gms/internal/ads/yp;-><init>(III)V

    return-object v0
.end method

.method public static FH()Lcom/google/android/gms/internal/ads/yp;
    .registers 3

    new-instance v0, Lcom/google/android/gms/internal/ads/yp;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/gms/internal/ads/yp;-><init>(III)V

    return-object v0
.end method

.method public static Hw()Lcom/google/android/gms/internal/ads/yp;
    .registers 3

    new-instance v0, Lcom/google/android/gms/internal/ads/yp;

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/gms/internal/ads/yp;-><init>(III)V

    return-object v0
.end method

.method public static j6(II)Lcom/google/android/gms/internal/ads/yp;
    .registers 4

    new-instance v0, Lcom/google/android/gms/internal/ads/yp;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0, p1}, Lcom/google/android/gms/internal/ads/yp;-><init>(III)V

    return-object v0
.end method

.method public static j6(Lcom/google/android/gms/internal/ads/zzwf;)Lcom/google/android/gms/internal/ads/yp;
    .registers 3

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzwf;->Hw:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    new-instance p0, Lcom/google/android/gms/internal/ads/yp;

    const/4 v0, 0x3

    invoke-direct {p0, v0, v1, v1}, Lcom/google/android/gms/internal/ads/yp;-><init>(III)V

    return-object p0

    :cond_c
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzwf;->u7:Z

    if-eqz v0, :cond_17

    new-instance p0, Lcom/google/android/gms/internal/ads/yp;

    const/4 v0, 0x2

    invoke-direct {p0, v0, v1, v1}, Lcom/google/android/gms/internal/ads/yp;-><init>(III)V

    return-object p0

    :cond_17
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzwf;->gn:Z

    if-eqz v0, :cond_20

    invoke-static {}, Lcom/google/android/gms/internal/ads/yp;->DW()Lcom/google/android/gms/internal/ads/yp;

    move-result-object p0

    return-object p0

    :cond_20
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzwf;->Zo:I

    iget p0, p0, Lcom/google/android/gms/internal/ads/zzwf;->FH:I

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/ads/yp;->j6(II)Lcom/google/android/gms/internal/ads/yp;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final VH()Z
    .registers 3

    iget v0, p0, Lcom/google/android/gms/internal/ads/yp;->j6:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    return v0

    :cond_7
    const/4 v0, 0x0

    return v0
.end method

.method public final Zo()Z
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/yp;->j6:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public final gn()Z
    .registers 3

    iget v0, p0, Lcom/google/android/gms/internal/ads/yp;->j6:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    return v0

    :cond_7
    const/4 v0, 0x0

    return v0
.end method

.method public final j6()Z
    .registers 3

    iget v0, p0, Lcom/google/android/gms/internal/ads/yp;->j6:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    return v0

    :cond_7
    const/4 v0, 0x0

    return v0
.end method

.method public final v5()Z
    .registers 3

    iget v0, p0, Lcom/google/android/gms/internal/ads/yp;->j6:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    return v0

    :cond_7
    const/4 v0, 0x0

    return v0
.end method
