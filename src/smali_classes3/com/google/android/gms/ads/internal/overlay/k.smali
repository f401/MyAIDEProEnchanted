.class public final Lcom/google/android/gms/ads/internal/overlay/k;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zh;
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static j6(Landroid/content/Context;Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;Z)V
    .registers 6

    iget v0, p1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->EQ:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1b

    iget-object v0, p1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->FH:Lcom/google/android/gms/ads/internal/overlay/m;

    if-nez v0, :cond_1b

    iget-object p2, p1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->DW:Lcom/google/android/gms/internal/ads/WG;

    if-eqz p2, :cond_10

    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/WG;->J0()V

    :cond_10
    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->DW()Lcom/google/android/gms/ads/internal/overlay/a;

    iget-object p2, p1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->j6:Lcom/google/android/gms/ads/internal/overlay/zzc;

    iget-object p1, p1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->u7:Lcom/google/android/gms/ads/internal/overlay/s;

    invoke-static {p0, p2, p1}, Lcom/google/android/gms/ads/internal/overlay/a;->j6(Landroid/content/Context;Lcom/google/android/gms/ads/internal/overlay/zzc;Lcom/google/android/gms/ads/internal/overlay/s;)Z

    return-void

    :cond_1b
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.google.android.gms.ads.AdActivity"

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->J0:Lcom/google/android/gms/internal/ads/zzbbi;

    iget-boolean v1, v1, Lcom/google/android/gms/internal/ads/zzbbi;->Hw:Z

    const-string v2, "com.google.android.gms.ads.internal.overlay.useClientJar"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "shouldCallOnOverlayOpened"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-static {v0, p1}, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->j6(Landroid/content/Intent;Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;)V

    invoke-static {}, Lcom/google/android/gms/common/util/o;->gn()Z

    move-result p1

    if-nez p1, :cond_41

    const/high16 p1, 0x80000

    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_41
    instance-of p1, p0, Landroid/app/Activity;

    if-nez p1, :cond_4a

    const/high16 p1, 0x10000000

    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_4a
    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->v5()Lcom/google/android/gms/internal/ads/Nk;

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/ads/Nk;->j6(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
