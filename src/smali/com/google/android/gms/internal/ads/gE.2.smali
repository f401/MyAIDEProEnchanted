.class public final Lcom/google/android/gms/internal/ads/gE;
.super Ljava/lang/Object;


# instance fields
.field private final DW:Lcom/google/android/gms/internal/ads/fE;

.field private final j6:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lcom/google/android/gms/internal/ads/fE;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_0

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/CD;->j6(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Landroid/os/Handler;

    :goto_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/gE;->j6:Landroid/os/Handler;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/gE;->DW:Lcom/google/android/gms/internal/ads/fE;

    return-void

    :cond_0
    const/4 p1, 0x0

    goto :goto_0
.end method

.method static synthetic j6(Lcom/google/android/gms/internal/ads/gE;)Lcom/google/android/gms/internal/ads/fE;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/gE;->DW:Lcom/google/android/gms/internal/ads/fE;

    return-object v0
.end method


# virtual methods
.method public final DW(Lcom/google/android/gms/internal/ads/Dz;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/gE;->DW:Lcom/google/android/gms/internal/ads/fE;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/gE;->j6:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/ads/oE;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/oE;-><init>(Lcom/google/android/gms/internal/ads/gE;Lcom/google/android/gms/internal/ads/Dz;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final j6(IIIF)V
    .registers 12

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/gE;->DW:Lcom/google/android/gms/internal/ads/fE;

    if-eqz v0, :cond_0

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/gE;->j6:Landroid/os/Handler;

    new-instance v0, Lcom/google/android/gms/internal/ads/mE;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/mE;-><init>(Lcom/google/android/gms/internal/ads/gE;IIIF)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final j6(IJ)V
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/gE;->DW:Lcom/google/android/gms/internal/ads/fE;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/gE;->j6:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/ads/kE;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/kE;-><init>(Lcom/google/android/gms/internal/ads/gE;IJ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final j6(Landroid/view/Surface;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/gE;->DW:Lcom/google/android/gms/internal/ads/fE;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/gE;->j6:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/ads/nE;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/nE;-><init>(Lcom/google/android/gms/internal/ads/gE;Landroid/view/Surface;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/Dz;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/gE;->DW:Lcom/google/android/gms/internal/ads/fE;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/gE;->j6:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/ads/hE;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/hE;-><init>(Lcom/google/android/gms/internal/ads/gE;Lcom/google/android/gms/internal/ads/Dz;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/zzfs;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/gE;->DW:Lcom/google/android/gms/internal/ads/fE;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/gE;->j6:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/ads/jE;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/jE;-><init>(Lcom/google/android/gms/internal/ads/gE;Lcom/google/android/gms/internal/ads/zzfs;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final j6(Ljava/lang/String;JJ)V
    .registers 14

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/gE;->DW:Lcom/google/android/gms/internal/ads/fE;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/gE;->j6:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/ads/iE;

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/iE;-><init>(Lcom/google/android/gms/internal/ads/gE;Ljava/lang/String;JJ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
