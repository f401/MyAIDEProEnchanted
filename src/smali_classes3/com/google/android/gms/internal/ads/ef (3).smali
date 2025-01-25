.class public final Lcom/google/android/gms/internal/ads/ef;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/ads/mediation/c;
.implements Lcom/google/android/gms/ads/mediation/d;
.implements Lcom/google/android/gms/ads/mediation/e;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zh;
.end annotation


# instance fields
.field private DW:Lcom/google/android/gms/ads/mediation/f;

.field private FH:Lcom/google/android/gms/ads/mediation/m;

.field private Hw:Lcom/google/android/gms/ads/formats/f;

.field private final j6:Lcom/google/android/gms/internal/ads/Me;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/Me;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ef;->j6:Lcom/google/android/gms/internal/ads/Me;

    return-void
.end method

.method private static j6(Lcom/google/android/gms/ads/mediation/MediationNativeAdapter;Lcom/google/android/gms/ads/mediation/m;Lcom/google/android/gms/ads/mediation/f;)V
    .registers 4

    instance-of p0, p0, Lcom/google/ads/mediation/admob/AdMobAdapter;

    if-eqz p0, :cond_5

    return-void

    :cond_5
    new-instance p0, Lcom/google/android/gms/ads/h;

    invoke-direct {p0}, Lcom/google/android/gms/ads/h;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/bf;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/bf;-><init>()V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/h;->j6(Lcom/google/android/gms/internal/ads/kI;)V

    if-eqz p1, :cond_1d

    invoke-virtual {p1}, Lcom/google/android/gms/ads/mediation/m;->Ws()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-virtual {p1, p0}, Lcom/google/android/gms/ads/mediation/m;->j6(Lcom/google/android/gms/ads/h;)V

    :cond_1d
    if-eqz p2, :cond_28

    invoke-virtual {p2}, Lcom/google/android/gms/ads/mediation/f;->Zo()Z

    move-result p1

    if-eqz p1, :cond_28

    invoke-virtual {p2, p0}, Lcom/google/android/gms/ads/mediation/f;->j6(Lcom/google/android/gms/ads/h;)V

    :cond_28
    return-void
.end method


# virtual methods
.method public final DW()Lcom/google/android/gms/ads/mediation/m;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ef;->FH:Lcom/google/android/gms/ads/mediation/m;

    return-object v0
.end method

.method public final DW(Lcom/google/android/gms/ads/mediation/MediationBannerAdapter;)V
    .registers 3

    const-string p1, "#008 Must be called on the main UI thread."

    invoke-static {p1}, Lcom/google/android/gms/common/internal/r;->j6(Ljava/lang/String;)V

    const-string p1, "Adapter called onAdLoaded."

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;)V

    :try_start_a
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/ef;->j6:Lcom/google/android/gms/internal/ads/Me;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/Me;->QO()V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_f} :catch_10

    return-void

    :catch_10
    move-exception p1

    const-string v0, "#007 Could not call remote method."

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final DW(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;)V
    .registers 3

    const-string p1, "#008 Must be called on the main UI thread."

    invoke-static {p1}, Lcom/google/android/gms/common/internal/r;->j6(Ljava/lang/String;)V

    const-string p1, "Adapter called onAdClicked."

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;)V

    :try_start_a
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/ef;->j6:Lcom/google/android/gms/internal/ads/Me;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/Me;->J0()V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_f} :catch_10

    return-void

    :catch_10
    move-exception p1

    const-string v0, "#007 Could not call remote method."

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final DW(Lcom/google/android/gms/ads/mediation/MediationNativeAdapter;)V
    .registers 3

    const-string p1, "#008 Must be called on the main UI thread."

    invoke-static {p1}, Lcom/google/android/gms/common/internal/r;->j6(Ljava/lang/String;)V

    const-string p1, "Adapter called onAdClosed."

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;)V

    :try_start_a
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/ef;->j6:Lcom/google/android/gms/internal/ads/Me;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/Me;->a5()V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_f} :catch_10

    return-void

    :catch_10
    move-exception p1

    const-string v0, "#007 Could not call remote method."

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final FH()Lcom/google/android/gms/ads/formats/f;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ef;->Hw:Lcom/google/android/gms/ads/formats/f;

    return-object v0
.end method

.method public final FH(Lcom/google/android/gms/ads/mediation/MediationBannerAdapter;)V
    .registers 3

    const-string p1, "#008 Must be called on the main UI thread."

    invoke-static {p1}, Lcom/google/android/gms/common/internal/r;->j6(Ljava/lang/String;)V

    const-string p1, "Adapter called onAdOpened."

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;)V

    :try_start_a
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/ef;->j6:Lcom/google/android/gms/internal/ads/Me;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/Me;->Gj()V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_f} :catch_10

    return-void

    :catch_10
    move-exception p1

    const-string v0, "#007 Could not call remote method."

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final FH(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;)V
    .registers 3

    const-string p1, "#008 Must be called on the main UI thread."

    invoke-static {p1}, Lcom/google/android/gms/common/internal/r;->j6(Ljava/lang/String;)V

    const-string p1, "Adapter called onAdLoaded."

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;)V

    :try_start_a
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/ef;->j6:Lcom/google/android/gms/internal/ads/Me;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/Me;->QO()V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_f} :catch_10

    return-void

    :catch_10
    move-exception p1

    const-string v0, "#007 Could not call remote method."

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final FH(Lcom/google/android/gms/ads/mediation/MediationNativeAdapter;)V
    .registers 3

    const-string p1, "#008 Must be called on the main UI thread."

    invoke-static {p1}, Lcom/google/android/gms/common/internal/r;->j6(Ljava/lang/String;)V

    const-string p1, "Adapter called onAdLeftApplication."

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;)V

    :try_start_a
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/ef;->j6:Lcom/google/android/gms/internal/ads/Me;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/Me;->Cz()V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_f} :catch_10

    return-void

    :catch_10
    move-exception p1

    const-string v0, "#007 Could not call remote method."

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final Hw(Lcom/google/android/gms/ads/mediation/MediationBannerAdapter;)V
    .registers 3

    const-string p1, "#008 Must be called on the main UI thread."

    invoke-static {p1}, Lcom/google/android/gms/common/internal/r;->j6(Ljava/lang/String;)V

    const-string p1, "Adapter called onAdClosed."

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;)V

    :try_start_a
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/ef;->j6:Lcom/google/android/gms/internal/ads/Me;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/Me;->a5()V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_f} :catch_10

    return-void

    :catch_10
    move-exception p1

    const-string v0, "#007 Could not call remote method."

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final Hw(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;)V
    .registers 3

    const-string p1, "#008 Must be called on the main UI thread."

    invoke-static {p1}, Lcom/google/android/gms/common/internal/r;->j6(Ljava/lang/String;)V

    const-string p1, "Adapter called onAdClosed."

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;)V

    :try_start_a
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/ef;->j6:Lcom/google/android/gms/internal/ads/Me;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/Me;->a5()V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_f} :catch_10

    return-void

    :catch_10
    move-exception p1

    const-string v0, "#007 Could not call remote method."

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final Hw(Lcom/google/android/gms/ads/mediation/MediationNativeAdapter;)V
    .registers 5

    const-string p1, "#008 Must be called on the main UI thread."

    invoke-static {p1}, Lcom/google/android/gms/common/internal/r;->j6(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/ef;->DW:Lcom/google/android/gms/ads/mediation/f;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ef;->FH:Lcom/google/android/gms/ads/mediation/m;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ef;->Hw:Lcom/google/android/gms/ads/formats/f;

    const-string v2, "#007 Could not call remote method."

    if-nez v1, :cond_32

    if-nez p1, :cond_18

    if-nez v0, :cond_18

    const/4 p1, 0x0

    invoke-static {v2, p1}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :cond_18
    const-string v1, "Could not call onAdImpression since setOverrideImpressionRecording is not set to true"

    if-eqz v0, :cond_26

    invoke-virtual {v0}, Lcom/google/android/gms/ads/mediation/m;->tp()Z

    move-result v0

    if-nez v0, :cond_26

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;)V

    return-void

    :cond_26
    if-eqz p1, :cond_32

    invoke-virtual {p1}, Lcom/google/android/gms/ads/mediation/f;->Hw()Z

    move-result p1

    if-nez p1, :cond_32

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;)V

    return-void

    :cond_32
    const-string p1, "Adapter called onAdImpression."

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;)V

    :try_start_37
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/ef;->j6:Lcom/google/android/gms/internal/ads/Me;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/Me;->pN()V
    :try_end_3c
    .catch Landroid/os/RemoteException; {:try_start_37 .. :try_end_3c} :catch_3d

    return-void

    :catch_3d
    move-exception p1

    invoke-static {v2, p1}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final j6()Lcom/google/android/gms/ads/mediation/f;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ef;->DW:Lcom/google/android/gms/ads/mediation/f;

    return-object v0
.end method

.method public final j6(Lcom/google/android/gms/ads/mediation/MediationBannerAdapter;)V
    .registers 3

    const-string p1, "#008 Must be called on the main UI thread."

    invoke-static {p1}, Lcom/google/android/gms/common/internal/r;->j6(Ljava/lang/String;)V

    const-string p1, "Adapter called onAdClicked."

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;)V

    :try_start_a
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/ef;->j6:Lcom/google/android/gms/internal/ads/Me;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/Me;->J0()V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_f} :catch_10

    return-void

    :catch_10
    move-exception p1

    const-string v0, "#007 Could not call remote method."

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final j6(Lcom/google/android/gms/ads/mediation/MediationBannerAdapter;I)V
    .registers 4

    const-string p1, "#008 Must be called on the main UI thread."

    invoke-static {p1}, Lcom/google/android/gms/common/internal/r;->j6(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    const/16 v0, 0x37

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Adapter called onAdFailedToLoad with error. "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;)V

    :try_start_1b
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/ef;->j6:Lcom/google/android/gms/internal/ads/Me;

    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/Me;->Zo(I)V
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_20} :catch_21

    return-void

    :catch_21
    move-exception p1

    const-string p2, "#007 Could not call remote method."

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final j6(Lcom/google/android/gms/ads/mediation/MediationBannerAdapter;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    const-string p1, "#008 Must be called on the main UI thread."

    invoke-static {p1}, Lcom/google/android/gms/common/internal/r;->j6(Ljava/lang/String;)V

    const-string p1, "Adapter called onAppEvent."

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;)V

    :try_start_a
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/ef;->j6:Lcom/google/android/gms/internal/ads/Me;

    invoke-interface {p1, p2, p3}, Lcom/google/android/gms/internal/ads/Me;->j6(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_f} :catch_10

    return-void

    :catch_10
    move-exception p1

    const-string p2, "#007 Could not call remote method."

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final j6(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;)V
    .registers 3

    const-string p1, "#008 Must be called on the main UI thread."

    invoke-static {p1}, Lcom/google/android/gms/common/internal/r;->j6(Ljava/lang/String;)V

    const-string p1, "Adapter called onAdLeftApplication."

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;)V

    :try_start_a
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/ef;->j6:Lcom/google/android/gms/internal/ads/Me;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/Me;->Cz()V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_f} :catch_10

    return-void

    :catch_10
    move-exception p1

    const-string v0, "#007 Could not call remote method."

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final j6(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;I)V
    .registers 4

    const-string p1, "#008 Must be called on the main UI thread."

    invoke-static {p1}, Lcom/google/android/gms/common/internal/r;->j6(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    const/16 v0, 0x37

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Adapter called onAdFailedToLoad with error "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;)V

    :try_start_20
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/ef;->j6:Lcom/google/android/gms/internal/ads/Me;

    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/Me;->Zo(I)V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_25} :catch_26

    return-void

    :catch_26
    move-exception p1

    const-string p2, "#007 Could not call remote method."

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final j6(Lcom/google/android/gms/ads/mediation/MediationNativeAdapter;)V
    .registers 3

    const-string p1, "#008 Must be called on the main UI thread."

    invoke-static {p1}, Lcom/google/android/gms/common/internal/r;->j6(Ljava/lang/String;)V

    const-string p1, "Adapter called onAdOpened."

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;)V

    :try_start_a
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/ef;->j6:Lcom/google/android/gms/internal/ads/Me;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/Me;->Gj()V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_f} :catch_10

    return-void

    :catch_10
    move-exception p1

    const-string v0, "#007 Could not call remote method."

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final j6(Lcom/google/android/gms/ads/mediation/MediationNativeAdapter;I)V
    .registers 4

    const-string p1, "#008 Must be called on the main UI thread."

    invoke-static {p1}, Lcom/google/android/gms/common/internal/r;->j6(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    const/16 v0, 0x37

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Adapter called onAdFailedToLoad with error "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;)V

    :try_start_20
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/ef;->j6:Lcom/google/android/gms/internal/ads/Me;

    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/Me;->Zo(I)V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_25} :catch_26

    return-void

    :catch_26
    move-exception p1

    const-string p2, "#007 Could not call remote method."

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final j6(Lcom/google/android/gms/ads/mediation/MediationNativeAdapter;Lcom/google/android/gms/ads/formats/f;)V
    .registers 5

    const-string p1, "#008 Must be called on the main UI thread."

    invoke-static {p1}, Lcom/google/android/gms/common/internal/r;->j6(Ljava/lang/String;)V

    invoke-interface {p2}, Lcom/google/android/gms/ads/formats/f;->vJ()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const-string v1, "Adapter called onAdLoaded with template id "

    if-eqz v0, :cond_1a

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1f

    :cond_1a
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1f
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/ef;->Hw:Lcom/google/android/gms/ads/formats/f;

    :try_start_24
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/ef;->j6:Lcom/google/android/gms/internal/ads/Me;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/Me;->QO()V
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_24 .. :try_end_29} :catch_2a

    return-void

    :catch_2a
    move-exception p1

    const-string p2, "#007 Could not call remote method."

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final j6(Lcom/google/android/gms/ads/mediation/MediationNativeAdapter;Lcom/google/android/gms/ads/formats/f;Ljava/lang/String;)V
    .registers 4

    instance-of p1, p2, Lcom/google/android/gms/internal/ads/eb;

    if-eqz p1, :cond_17

    :try_start_4
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/ef;->j6:Lcom/google/android/gms/internal/ads/Me;

    check-cast p2, Lcom/google/android/gms/internal/ads/eb;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/eb;->j6()Lcom/google/android/gms/internal/ads/ab;

    move-result-object p2

    invoke-interface {p1, p2, p3}, Lcom/google/android/gms/internal/ads/Me;->j6(Lcom/google/android/gms/internal/ads/ab;Ljava/lang/String;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_f} :catch_10

    return-void

    :catch_10
    move-exception p1

    const-string p2, "#007 Could not call remote method."

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :cond_17
    const-string p1, "Unexpected native custom template ad type."

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;)V

    return-void
.end method

.method public final j6(Lcom/google/android/gms/ads/mediation/MediationNativeAdapter;Lcom/google/android/gms/ads/mediation/f;)V
    .registers 4

    const-string v0, "#008 Must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/r;->j6(Ljava/lang/String;)V

    const-string v0, "Adapter called onAdLoaded."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/ef;->DW:Lcom/google/android/gms/ads/mediation/f;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ef;->FH:Lcom/google/android/gms/ads/mediation/m;

    invoke-static {p1, v0, p2}, Lcom/google/android/gms/internal/ads/ef;->j6(Lcom/google/android/gms/ads/mediation/MediationNativeAdapter;Lcom/google/android/gms/ads/mediation/m;Lcom/google/android/gms/ads/mediation/f;)V

    :try_start_12
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/ef;->j6:Lcom/google/android/gms/internal/ads/Me;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/Me;->QO()V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_17} :catch_18

    return-void

    :catch_18
    move-exception p1

    const-string p2, "#007 Could not call remote method."

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final j6(Lcom/google/android/gms/ads/mediation/MediationNativeAdapter;Lcom/google/android/gms/ads/mediation/m;)V
    .registers 4

    const-string v0, "#008 Must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/r;->j6(Ljava/lang/String;)V

    const-string v0, "Adapter called onAdLoaded."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/ef;->FH:Lcom/google/android/gms/ads/mediation/m;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ef;->DW:Lcom/google/android/gms/ads/mediation/f;

    invoke-static {p1, p2, v0}, Lcom/google/android/gms/internal/ads/ef;->j6(Lcom/google/android/gms/ads/mediation/MediationNativeAdapter;Lcom/google/android/gms/ads/mediation/m;Lcom/google/android/gms/ads/mediation/f;)V

    :try_start_12
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/ef;->j6:Lcom/google/android/gms/internal/ads/Me;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/Me;->QO()V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_17} :catch_18

    return-void

    :catch_18
    move-exception p1

    const-string p2, "#007 Could not call remote method."

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final v5(Lcom/google/android/gms/ads/mediation/MediationBannerAdapter;)V
    .registers 3

    const-string p1, "#008 Must be called on the main UI thread."

    invoke-static {p1}, Lcom/google/android/gms/common/internal/r;->j6(Ljava/lang/String;)V

    const-string p1, "Adapter called onAdLeftApplication."

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;)V

    :try_start_a
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/ef;->j6:Lcom/google/android/gms/internal/ads/Me;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/Me;->Cz()V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_f} :catch_10

    return-void

    :catch_10
    move-exception p1

    const-string v0, "#007 Could not call remote method."

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final v5(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;)V
    .registers 3

    const-string p1, "#008 Must be called on the main UI thread."

    invoke-static {p1}, Lcom/google/android/gms/common/internal/r;->j6(Ljava/lang/String;)V

    const-string p1, "Adapter called onAdOpened."

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;)V

    :try_start_a
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/ef;->j6:Lcom/google/android/gms/internal/ads/Me;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/Me;->Gj()V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_f} :catch_10

    return-void

    :catch_10
    move-exception p1

    const-string v0, "#007 Could not call remote method."

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final v5(Lcom/google/android/gms/ads/mediation/MediationNativeAdapter;)V
    .registers 5

    const-string p1, "#008 Must be called on the main UI thread."

    invoke-static {p1}, Lcom/google/android/gms/common/internal/r;->j6(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/ef;->DW:Lcom/google/android/gms/ads/mediation/f;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ef;->FH:Lcom/google/android/gms/ads/mediation/m;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ef;->Hw:Lcom/google/android/gms/ads/formats/f;

    const-string v2, "#007 Could not call remote method."

    if-nez v1, :cond_32

    if-nez p1, :cond_18

    if-nez v0, :cond_18

    const/4 p1, 0x0

    invoke-static {v2, p1}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :cond_18
    const-string v1, "Could not call onAdClicked since setOverrideClickHandling is not set to true"

    if-eqz v0, :cond_26

    invoke-virtual {v0}, Lcom/google/android/gms/ads/mediation/m;->u7()Z

    move-result v0

    if-nez v0, :cond_26

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;)V

    return-void

    :cond_26
    if-eqz p1, :cond_32

    invoke-virtual {p1}, Lcom/google/android/gms/ads/mediation/f;->FH()Z

    move-result p1

    if-nez p1, :cond_32

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;)V

    return-void

    :cond_32
    const-string p1, "Adapter called onAdClicked."

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;)V

    :try_start_37
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/ef;->j6:Lcom/google/android/gms/internal/ads/Me;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/Me;->J0()V
    :try_end_3c
    .catch Landroid/os/RemoteException; {:try_start_37 .. :try_end_3c} :catch_3d

    return-void

    :catch_3d
    move-exception p1

    invoke-static {v2, p1}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
