.class public final Lcom/google/android/gms/internal/ads/Jj;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/ads/reward/mediation/a;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zh;
.end annotation


# instance fields
.field private final j6:Lcom/google/android/gms/internal/ads/Fj;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/Fj;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Jj;->j6:Lcom/google/android/gms/internal/ads/Fj;

    return-void
.end method


# virtual methods
.method public final DW(Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdAdapter;)V
    .registers 3

    const-string v0, "#008 Must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/r;->j6(Ljava/lang/String;)V

    const-string v0, "Adapter called onInitializationSucceeded."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;)V

    :try_start_a
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Jj;->j6:Lcom/google/android/gms/internal/ads/Fj;

    invoke-static {p1}, Labcd/px;->j6(Ljava/lang/Object;)Labcd/ox;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/Fj;->EQ(Labcd/ox;)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_13} :catch_14

    return-void

    :catch_14
    move-exception p1

    const-string v0, "#007 Could not call remote method."

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final FH(Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdAdapter;)V
    .registers 3

    const-string v0, "#008 Must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/r;->j6(Ljava/lang/String;)V

    const-string v0, "Adapter called onAdClosed."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;)V

    :try_start_a
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Jj;->j6:Lcom/google/android/gms/internal/ads/Fj;

    invoke-static {p1}, Labcd/px;->j6(Ljava/lang/Object;)Labcd/ox;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/Fj;->aM(Labcd/ox;)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_13} :catch_14

    return-void

    :catch_14
    move-exception p1

    const-string v0, "#007 Could not call remote method."

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final Hw(Landroid/os/Bundle;)V
    .registers 3

    const-string v0, "#008 Must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/r;->j6(Ljava/lang/String;)V

    const-string v0, "Adapter called onAdMetadataChanged."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;)V

    :try_start_a
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Jj;->j6:Lcom/google/android/gms/internal/ads/Fj;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/Fj;->Hw(Landroid/os/Bundle;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_f} :catch_10

    return-void

    :catch_10
    move-exception p1

    const-string v0, "#007 Could not call remote method."

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final Hw(Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdAdapter;)V
    .registers 3

    const-string v0, "#008 Must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/r;->j6(Ljava/lang/String;)V

    const-string v0, "Adapter called onVideoCompleted."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;)V

    :try_start_a
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Jj;->j6:Lcom/google/android/gms/internal/ads/Fj;

    invoke-static {p1}, Labcd/px;->j6(Ljava/lang/Object;)Labcd/ox;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/Fj;->lg(Labcd/ox;)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_13} :catch_14

    return-void

    :catch_14
    move-exception p1

    const-string v0, "#007 Could not call remote method."

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final VH(Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdAdapter;)V
    .registers 3

    const-string v0, "#008 Must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/r;->j6(Ljava/lang/String;)V

    const-string v0, "Adapter called onAdLeftApplication."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;)V

    :try_start_a
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Jj;->j6:Lcom/google/android/gms/internal/ads/Fj;

    invoke-static {p1}, Labcd/px;->j6(Ljava/lang/Object;)Labcd/ox;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/Fj;->a8(Labcd/ox;)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_13} :catch_14

    return-void

    :catch_14
    move-exception p1

    const-string v0, "#007 Could not call remote method."

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final Zo(Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdAdapter;)V
    .registers 3

    const-string v0, "#008 Must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/r;->j6(Ljava/lang/String;)V

    const-string v0, "Adapter called onVideoStarted."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;)V

    :try_start_a
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Jj;->j6:Lcom/google/android/gms/internal/ads/Fj;

    invoke-static {p1}, Labcd/px;->j6(Ljava/lang/Object;)Labcd/ox;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/Fj;->Mr(Labcd/ox;)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_13} :catch_14

    return-void

    :catch_14
    move-exception p1

    const-string v0, "#007 Could not call remote method."

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final j6(Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdAdapter;)V
    .registers 3

    const-string v0, "#008 Must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/r;->j6(Ljava/lang/String;)V

    const-string v0, "Adapter called onAdLoaded."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;)V

    :try_start_a
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Jj;->j6:Lcom/google/android/gms/internal/ads/Fj;

    invoke-static {p1}, Labcd/px;->j6(Ljava/lang/Object;)Labcd/ox;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/Fj;->Ws(Labcd/ox;)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_13} :catch_14

    return-void

    :catch_14
    move-exception p1

    const-string v0, "#007 Could not call remote method."

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final j6(Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdAdapter;I)V
    .registers 4

    const-string v0, "#008 Must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/r;->j6(Ljava/lang/String;)V

    const-string v0, "Adapter called onAdFailedToLoad."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;)V

    :try_start_a
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Jj;->j6:Lcom/google/android/gms/internal/ads/Fj;

    invoke-static {p1}, Labcd/px;->j6(Ljava/lang/Object;)Labcd/ox;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/Fj;->DW(Labcd/ox;I)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_13} :catch_14

    return-void

    :catch_14
    move-exception p1

    const-string p2, "#007 Could not call remote method."

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final j6(Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdAdapter;Labcd/gx;)V
    .registers 6

    const-string v0, "#008 Must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/r;->j6(Ljava/lang/String;)V

    const-string v0, "Adapter called onRewarded."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;)V

    if-eqz p2, :cond_1b

    :try_start_c
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Jj;->j6:Lcom/google/android/gms/internal/ads/Fj;

    invoke-static {p1}, Labcd/px;->j6(Ljava/lang/Object;)Labcd/ox;

    move-result-object p1

    new-instance v1, Lcom/google/android/gms/internal/ads/zzawd;

    invoke-direct {v1, p2}, Lcom/google/android/gms/internal/ads/zzawd;-><init>(Labcd/gx;)V

    invoke-interface {v0, p1, v1}, Lcom/google/android/gms/internal/ads/Fj;->j6(Labcd/ox;Lcom/google/android/gms/internal/ads/zzawd;)V

    return-void

    :cond_1b
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/Jj;->j6:Lcom/google/android/gms/internal/ads/Fj;

    invoke-static {p1}, Labcd/px;->j6(Ljava/lang/Object;)Labcd/ox;

    move-result-object p1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzawd;

    const-string v1, ""

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzawd;-><init>(Ljava/lang/String;I)V

    invoke-interface {p2, p1, v0}, Lcom/google/android/gms/internal/ads/Fj;->j6(Labcd/ox;Lcom/google/android/gms/internal/ads/zzawd;)V
    :try_end_2c
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_2c} :catch_2d

    return-void

    :catch_2d
    move-exception p1

    const-string p2, "#007 Could not call remote method."

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final v5(Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdAdapter;)V
    .registers 3

    const-string v0, "#008 Must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/r;->j6(Ljava/lang/String;)V

    const-string v0, "Adapter called onAdOpened."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;)V

    :try_start_a
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Jj;->j6:Lcom/google/android/gms/internal/ads/Fj;

    invoke-static {p1}, Labcd/px;->j6(Ljava/lang/Object;)Labcd/ox;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/Fj;->J8(Labcd/ox;)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_13} :catch_14

    return-void

    :catch_14
    move-exception p1

    const-string v0, "#007 Could not call remote method."

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
