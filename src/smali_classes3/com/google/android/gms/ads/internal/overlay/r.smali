.class public final Lcom/google/android/gms/ads/internal/overlay/r;
.super Lcom/google/android/gms/internal/ads/fg;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zh;
.end annotation


# instance fields
.field private DW:Landroid/app/Activity;

.field private FH:Z

.field private Hw:Z

.field private j6:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;)V
    .registers 4

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/fg;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/r;->FH:Z

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/r;->Hw:Z

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/overlay/r;->j6:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/r;->DW:Landroid/app/Activity;

    return-void
.end method

.method private final K3()V
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/r;->Hw:Z

    if-nez v0, :cond_15

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/r;->j6:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->FH:Lcom/google/android/gms/ads/internal/overlay/m;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/r;->j6:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->FH:Lcom/google/android/gms/ads/internal/overlay/m;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/overlay/m;->uC()V

    :cond_12
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/r;->Hw:Z
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_17

    :cond_15
    monitor-exit p0

    return-void

    :catchall_17
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final An()V
    .registers 1

    return-void
.end method

.method public final IS()V
    .registers 1

    return-void
.end method

.method public final ct()V
    .registers 1

    return-void
.end method

.method public final onActivityResult(IILandroid/content/Intent;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Object;IILandroid/content/Intent;)V

    return-void
.end method

.method public final onDestroy()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/r;->DW:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/overlay/r;->K3()V

    :cond_b
    return-void
.end method

.method public final onPause()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/r;->j6:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->FH:Lcom/google/android/gms/ads/internal/overlay/m;

    if-eqz v0, :cond_9

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/overlay/m;->onPause()V

    :cond_9
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/r;->DW:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/overlay/r;->K3()V

    :cond_14
    return-void
.end method

.method public final onResume()V
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/r;->FH:Z

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/r;->DW:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_a
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/r;->FH:Z

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/r;->j6:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->FH:Lcom/google/android/gms/ads/internal/overlay/m;

    if-eqz v0, :cond_16

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/overlay/m;->onResume()V

    :cond_16
    return-void
.end method

.method public final sT()V
    .registers 1

    return-void
.end method

.method public final ti()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final tp(Landroid/os/Bundle;)V
    .registers 4

    const/4 v0, 0x0

    if-eqz p1, :cond_9

    const-string v1, "com.google.android.gms.ads.internal.overlay.hasResumed"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    :cond_9
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/r;->j6:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    if-nez v1, :cond_13

    :goto_d
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/r;->DW:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void

    :cond_13
    if-eqz v0, :cond_16

    goto :goto_d

    :cond_16
    if-nez p1, :cond_3f

    iget-object p1, v1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->DW:Lcom/google/android/gms/internal/ads/WG;

    if-eqz p1, :cond_1f

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/WG;->J0()V

    :cond_1f
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/r;->DW:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_3f

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/r;->DW:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "shouldCallOnOverlayOpened"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_3f

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/r;->j6:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object p1, p1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->FH:Lcom/google/android/gms/ads/internal/overlay/m;

    if-eqz p1, :cond_3f

    invoke-interface {p1}, Lcom/google/android/gms/ads/internal/overlay/m;->ep()V

    :cond_3f
    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->DW()Lcom/google/android/gms/ads/internal/overlay/a;

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/r;->DW:Landroid/app/Activity;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/r;->j6:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v1, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->j6:Lcom/google/android/gms/ads/internal/overlay/zzc;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->u7:Lcom/google/android/gms/ads/internal/overlay/s;

    invoke-static {p1, v1, v0}, Lcom/google/android/gms/ads/internal/overlay/a;->j6(Landroid/content/Context;Lcom/google/android/gms/ads/internal/overlay/zzc;Lcom/google/android/gms/ads/internal/overlay/s;)Z

    move-result p1

    if-nez p1, :cond_55

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/r;->DW:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :cond_55
    return-void
.end method

.method public final u7(Labcd/ox;)V
    .registers 2

    return-void
.end method

.method public final u9()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/r;->DW:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/overlay/r;->K3()V

    :cond_b
    return-void
.end method

.method public final we(Landroid/os/Bundle;)V
    .registers 4

    const-string v0, "com.google.android.gms.ads.internal.overlay.hasResumed"

    iget-boolean v1, p0, Lcom/google/android/gms/ads/internal/overlay/r;->FH:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method
