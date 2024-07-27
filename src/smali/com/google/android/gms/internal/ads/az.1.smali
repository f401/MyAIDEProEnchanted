.class public final Lcom/google/android/gms/internal/ads/az;
.super Ljava/lang/Object;


# instance fields
.field private final DW:Lcom/google/android/gms/internal/ads/_y;

.field private final j6:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lcom/google/android/gms/internal/ads/_y;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_0

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/CD;->j6(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Landroid/os/Handler;

    :goto_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/az;->j6:Landroid/os/Handler;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/az;->DW:Lcom/google/android/gms/internal/ads/_y;

    return-void

    :cond_0
    const/4 p1, 0x0

    goto :goto_0
.end method

.method static synthetic j6(Lcom/google/android/gms/internal/ads/az;)Lcom/google/android/gms/internal/ads/_y;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/az;->DW:Lcom/google/android/gms/internal/ads/_y;

    return-object v0
.end method


# virtual methods
.method public final DW(Lcom/google/android/gms/internal/ads/Dz;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/az;->DW:Lcom/google/android/gms/internal/ads/_y;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/az;->j6:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/ads/fz;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/fz;-><init>(Lcom/google/android/gms/internal/ads/az;Lcom/google/android/gms/internal/ads/Dz;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final j6(I)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/az;->DW:Lcom/google/android/gms/internal/ads/_y;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/az;->j6:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/ads/gz;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/gz;-><init>(Lcom/google/android/gms/internal/ads/az;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final j6(IJJ)V
    .registers 14

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/az;->DW:Lcom/google/android/gms/internal/ads/_y;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/az;->j6:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/ads/ez;

    move-object v2, p0

    move v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/ez;-><init>(Lcom/google/android/gms/internal/ads/az;IJJ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/Dz;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/az;->DW:Lcom/google/android/gms/internal/ads/_y;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/az;->j6:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/ads/bz;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/bz;-><init>(Lcom/google/android/gms/internal/ads/az;Lcom/google/android/gms/internal/ads/Dz;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/zzfs;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/az;->DW:Lcom/google/android/gms/internal/ads/_y;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/az;->j6:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/ads/dz;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/dz;-><init>(Lcom/google/android/gms/internal/ads/az;Lcom/google/android/gms/internal/ads/zzfs;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final j6(Ljava/lang/String;JJ)V
    .registers 14

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/az;->DW:Lcom/google/android/gms/internal/ads/_y;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/az;->j6:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/ads/cz;

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/cz;-><init>(Lcom/google/android/gms/internal/ads/az;Ljava/lang/String;JJ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
