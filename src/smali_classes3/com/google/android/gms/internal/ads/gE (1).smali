.class public final Lcom/google/android/gms/internal/ads/gE;
.super Ljava/lang/Object;


# instance fields
.field private final DW:Lcom/google/android/gms/internal/ads/fE;

.field private final j6:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lcom/google/android/gms/internal/ads/fE;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_c

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/CD;->j6(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Landroid/os/Handler;

    goto :goto_d

    :cond_c
    const/4 p1, 0x0

    :goto_d
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/gE;->j6:Landroid/os/Handler;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/gE;->DW:Lcom/google/android/gms/internal/ads/fE;

    return-void
.end method

.method static synthetic j6(Lcom/google/android/gms/internal/ads/gE;)Lcom/google/android/gms/internal/ads/fE;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/gE;->DW:Lcom/google/android/gms/internal/ads/fE;

    return-object p0
.end method


# virtual methods
.method public final DW(Lcom/google/android/gms/internal/ads/Dz;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/gE;->DW:Lcom/google/android/gms/internal/ads/fE;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/gE;->j6:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/ads/oE;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/oE;-><init>(Lcom/google/android/gms/internal/ads/gE;Lcom/google/android/gms/internal/ads/Dz;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_e
    return-void
.end method

.method public final j6(IIIF)V
    .registers 13

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/gE;->DW:Lcom/google/android/gms/internal/ads/fE;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/gE;->j6:Landroid/os/Handler;

    new-instance v7, Lcom/google/android/gms/internal/ads/mE;

    move-object v1, v7

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/mE;-><init>(Lcom/google/android/gms/internal/ads/gE;IIIF)V

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_14
    return-void
.end method

.method public final j6(IJ)V
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/gE;->DW:Lcom/google/android/gms/internal/ads/fE;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/gE;->j6:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/ads/kE;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/kE;-><init>(Lcom/google/android/gms/internal/ads/gE;IJ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_e
    return-void
.end method

.method public final j6(Landroid/view/Surface;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/gE;->DW:Lcom/google/android/gms/internal/ads/fE;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/gE;->j6:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/ads/nE;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/nE;-><init>(Lcom/google/android/gms/internal/ads/gE;Landroid/view/Surface;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_e
    return-void
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/Dz;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/gE;->DW:Lcom/google/android/gms/internal/ads/fE;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/gE;->j6:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/ads/hE;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/hE;-><init>(Lcom/google/android/gms/internal/ads/gE;Lcom/google/android/gms/internal/ads/Dz;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_e
    return-void
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/zzfs;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/gE;->DW:Lcom/google/android/gms/internal/ads/fE;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/gE;->j6:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/ads/jE;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/jE;-><init>(Lcom/google/android/gms/internal/ads/gE;Lcom/google/android/gms/internal/ads/zzfs;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_e
    return-void
.end method

.method public final j6(Ljava/lang/String;JJ)V
    .registers 15

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/gE;->DW:Lcom/google/android/gms/internal/ads/fE;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/gE;->j6:Landroid/os/Handler;

    new-instance v8, Lcom/google/android/gms/internal/ads/iE;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/iE;-><init>(Lcom/google/android/gms/internal/ads/gE;Ljava/lang/String;JJ)V

    invoke-virtual {v0, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_13
    return-void
.end method
