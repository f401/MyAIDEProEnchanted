.class public final Lcom/google/android/gms/internal/ads/df;
.super Lcom/google/android/gms/internal/ads/Ke;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zh;
.end annotation


# instance fields
.field private DW:Lcom/google/android/gms/internal/ads/ef;

.field private final j6:Lcom/google/android/gms/ads/mediation/b;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/mediation/b;)V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/Ke;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/df;->j6:Lcom/google/android/gms/ads/mediation/b;

    return-void
.end method

.method private static FH(Lcom/google/android/gms/internal/ads/zzwb;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/google/android/gms/internal/ads/zzwb;->Zo:Z

    if-nez p0, :cond_10

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->j6()Lcom/google/android/gms/internal/ads/Zl;

    invoke-static {}, Lcom/google/android/gms/internal/ads/Zl;->j6()Z

    move-result p0

    if-eqz p0, :cond_e

    goto :goto_10

    :cond_e
    const/4 p0, 0x0

    return p0

    :cond_10
    :goto_10
    const/4 p0, 0x1

    return p0
.end method

.method private final j6(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzwb;Ljava/lang/String;)Landroid/os/Bundle;
    .registers 8

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const-string v2, "Server parameters: "

    if-eqz v1, :cond_11

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_16

    :cond_11
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_16
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;)V

    :try_start_19
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    if-eqz p1, :cond_43

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    :goto_2e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_42

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2e

    :cond_42
    move-object v0, p1

    :cond_43
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/df;->j6:Lcom/google/android/gms/ads/mediation/b;

    instance-of p1, p1, Lcom/google/ads/mediation/admob/AdMobAdapter;

    if-eqz p1, :cond_57

    const-string p1, "adJson"

    invoke-virtual {v0, p1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_57

    const-string p1, "tagForChildDirectedTreatment"

    iget p2, p2, Lcom/google/android/gms/internal/ads/zzwb;->VH:I

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_57
    .catchall {:try_start_19 .. :try_end_57} :catchall_58

    :cond_57
    return-object v0

    :catchall_58
    move-exception p1

    const-string p2, ""

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance p1, Landroid/os/RemoteException;

    invoke-direct {p1}, Landroid/os/RemoteException;-><init>()V

    goto :goto_65

    :goto_64
    throw p1

    :goto_65
    goto :goto_64
.end method


# virtual methods
.method public final WB()Lcom/google/android/gms/internal/ads/Se;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/df;->DW:Lcom/google/android/gms/internal/ads/ef;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ef;->j6()Lcom/google/android/gms/ads/mediation/f;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/gms/ads/mediation/g;

    if-eqz v1, :cond_12

    new-instance v1, Lcom/google/android/gms/internal/ads/ff;

    check-cast v0, Lcom/google/android/gms/ads/mediation/g;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/ff;-><init>(Lcom/google/android/gms/ads/mediation/g;)V

    return-object v1

    :cond_12
    const/4 v0, 0x0

    return-object v0
.end method

.method public final destroy()V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/df;->j6:Lcom/google/android/gms/ads/mediation/b;

    invoke-interface {v0}, Lcom/google/android/gms/ads/mediation/b;->onDestroy()V
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_6

    return-void

    :catchall_6
    move-exception v0

    const-string v1, ""

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0
.end method

.method public final er()V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/df;->j6:Lcom/google/android/gms/ads/mediation/b;

    invoke-interface {v0}, Lcom/google/android/gms/ads/mediation/b;->onResume()V
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_6

    return-void

    :catchall_6
    move-exception v0

    const-string v1, ""

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0
.end method

.method public final fP()Lcom/google/android/gms/internal/ads/Ye;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/df;->DW:Lcom/google/android/gms/internal/ads/ef;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ef;->DW()Lcom/google/android/gms/ads/mediation/m;

    move-result-object v0

    if-eqz v0, :cond_e

    new-instance v1, Lcom/google/android/gms/internal/ads/of;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/of;-><init>(Lcom/google/android/gms/ads/mediation/m;)V

    return-object v1

    :cond_e
    const/4 v0, 0x0

    return-object v0
.end method

.method public final fY()Labcd/ox;
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/df;->j6:Lcom/google/android/gms/ads/mediation/b;

    instance-of v1, v0, Lcom/google/android/gms/ads/mediation/MediationBannerAdapter;

    if-nez v1, :cond_2d

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const-string v2, "Not a MediationBannerAdapter: "

    if-eqz v1, :cond_1f

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_24

    :cond_1f
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_24
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;)V

    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0

    :cond_2d
    :try_start_2d
    check-cast v0, Lcom/google/android/gms/ads/mediation/MediationBannerAdapter;

    invoke-interface {v0}, Lcom/google/android/gms/ads/mediation/MediationBannerAdapter;->getBannerView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Labcd/px;->j6(Ljava/lang/Object;)Labcd/ox;

    move-result-object v0
    :try_end_37
    .catchall {:try_start_2d .. :try_end_37} :catchall_38

    return-object v0

    :catchall_38
    move-exception v0

    const-string v1, ""

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0
.end method

.method public final gW(Labcd/ox;)V
    .registers 4

    invoke-static {p1}, Labcd/px;->j6(Labcd/ox;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/df;->j6:Lcom/google/android/gms/ads/mediation/b;

    instance-of v1, v0, Lcom/google/android/gms/ads/mediation/k;

    if-eqz v1, :cond_11

    check-cast v0, Lcom/google/android/gms/ads/mediation/k;

    invoke-interface {v0, p1}, Lcom/google/android/gms/ads/mediation/k;->j6(Landroid/content/Context;)V

    :cond_11
    return-void
.end method

.method public final getInterstitialAdapterInfo()Landroid/os/Bundle;
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/df;->j6:Lcom/google/android/gms/ads/mediation/b;

    instance-of v1, v0, Lcom/google/android/gms/internal/ads/zzbiy;

    if-nez v1, :cond_2d

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const-string v2, "Not a v2 MediationInterstitialAdapter: "

    if-eqz v1, :cond_1f

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_24

    :cond_1f
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_24
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    return-object v0

    :cond_2d
    check-cast v0, Lcom/google/android/gms/internal/ads/zzbiy;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbiy;->getInterstitialAdapterInfo()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public final getVideoController()Lcom/google/android/gms/internal/ads/kI;
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/df;->j6:Lcom/google/android/gms/ads/mediation/b;

    instance-of v1, v0, Lcom/google/android/gms/ads/mediation/o;

    const/4 v2, 0x0

    if-nez v1, :cond_8

    return-object v2

    :cond_8
    :try_start_8
    check-cast v0, Lcom/google/android/gms/ads/mediation/o;

    invoke-interface {v0}, Lcom/google/android/gms/ads/mediation/o;->getVideoController()Lcom/google/android/gms/internal/ads/kI;

    move-result-object v0
    :try_end_e
    .catchall {:try_start_8 .. :try_end_e} :catchall_f

    return-object v0

    :catchall_f
    move-exception v0

    const-string v1, ""

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v2
.end method

.method public final gn(Z)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/df;->j6:Lcom/google/android/gms/ads/mediation/b;

    instance-of v1, v0, Lcom/google/android/gms/ads/mediation/l;

    if-nez v1, :cond_28

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const-string v1, "Not an OnImmersiveModeUpdatedListener: "

    if-eqz v0, :cond_1f

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_24

    :cond_1f
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_24
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/jm;->FH(Ljava/lang/String;)V

    return-void

    :cond_28
    :try_start_28
    check-cast v0, Lcom/google/android/gms/ads/mediation/l;

    invoke-interface {v0, p1}, Lcom/google/android/gms/ads/mediation/l;->onImmersiveModeUpdated(Z)V
    :try_end_2d
    .catchall {:try_start_28 .. :try_end_2d} :catchall_2e

    return-void

    :catchall_2e
    move-exception p1

    const-string v0, ""

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final isInitialized()Z
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/df;->j6:Lcom/google/android/gms/ads/mediation/b;

    instance-of v1, v0, Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdAdapter;

    if-nez v1, :cond_2d

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const-string v2, "Not a MediationRewardedVideoAdAdapter: "

    if-eqz v1, :cond_1f

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_24

    :cond_1f
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_24
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;)V

    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0

    :cond_2d
    const-string v0, "Check if adapter is initialized."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;)V

    :try_start_32
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/df;->j6:Lcom/google/android/gms/ads/mediation/b;

    check-cast v0, Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdAdapter;

    invoke-interface {v0}, Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdAdapter;->isInitialized()Z

    move-result v0
    :try_end_3a
    .catchall {:try_start_32 .. :try_end_3a} :catchall_3b

    return v0

    :catchall_3b
    move-exception v0

    const-string v1, ""

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0
.end method

.method public final j6(Labcd/ox;Lcom/google/android/gms/internal/ads/Fj;Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Labcd/ox;",
            "Lcom/google/android/gms/internal/ads/Fj;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/df;->j6:Lcom/google/android/gms/ads/mediation/b;

    instance-of v1, v0, Lcom/google/android/gms/ads/reward/mediation/InitializableMediationRewardedVideoAdAdapter;

    if-nez v1, :cond_2d

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    const-string p3, "Not an InitializableMediationRewardedVideoAdAdapter: "

    if-eqz p2, :cond_1f

    invoke-virtual {p3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_24

    :cond_1f
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_24
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;)V

    new-instance p1, Landroid/os/RemoteException;

    invoke-direct {p1}, Landroid/os/RemoteException;-><init>()V

    throw p1

    :cond_2d
    const-string v0, "Initialize rewarded video adapter."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;)V

    :try_start_32
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/df;->j6:Lcom/google/android/gms/ads/mediation/b;

    check-cast v0, Lcom/google/android/gms/ads/reward/mediation/InitializableMediationRewardedVideoAdAdapter;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_3f
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_54

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3, v3}, Lcom/google/android/gms/internal/ads/df;->j6(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzwb;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3f

    :cond_54
    invoke-static {p1}, Labcd/px;->j6(Labcd/ox;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    new-instance p3, Lcom/google/android/gms/internal/ads/Jj;

    invoke-direct {p3, p2}, Lcom/google/android/gms/internal/ads/Jj;-><init>(Lcom/google/android/gms/internal/ads/Fj;)V

    invoke-interface {v0, p1, p3, v1}, Lcom/google/android/gms/ads/reward/mediation/InitializableMediationRewardedVideoAdAdapter;->initialize(Landroid/content/Context;Lcom/google/android/gms/ads/reward/mediation/a;Ljava/util/List;)V
    :try_end_62
    .catchall {:try_start_32 .. :try_end_62} :catchall_63

    return-void

    :catchall_63
    move-exception p1

    const-string p2, "Could not initialize rewarded video adapter."

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/jm;->FH(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance p1, Landroid/os/RemoteException;

    invoke-direct {p1}, Landroid/os/RemoteException;-><init>()V

    goto :goto_70

    :goto_6f
    throw p1

    :goto_70
    goto :goto_6f
.end method

.method public final j6(Labcd/ox;Lcom/google/android/gms/internal/ads/zzwb;Ljava/lang/String;Lcom/google/android/gms/internal/ads/Fj;Ljava/lang/String;)V
    .registers 23

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/df;->j6:Lcom/google/android/gms/ads/mediation/b;

    instance-of v3, v2, Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdAdapter;

    if-nez v3, :cond_31

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const-string v3, "Not a MediationRewardedVideoAdAdapter: "

    if-eqz v2, :cond_23

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_28

    :cond_23
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_28
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;)V

    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0

    :cond_31
    const-string v2, "Initialize rewarded video adapter."

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;)V

    :try_start_36
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/df;->j6:Lcom/google/android/gms/ads/mediation/b;

    move-object v3, v2

    check-cast v3, Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdAdapter;

    const/4 v2, 0x0

    move-object/from16 v4, p5

    invoke-direct {v1, v4, v0, v2}, Lcom/google/android/gms/internal/ads/df;->j6(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzwb;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v8

    if-eqz v0, :cond_8d

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzwb;->v5:Ljava/util/List;

    if-eqz v4, :cond_51

    new-instance v4, Ljava/util/HashSet;

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzwb;->v5:Ljava/util/List;

    invoke-direct {v4, v5}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    move-object v12, v4

    goto :goto_52

    :cond_51
    move-object v12, v2

    :goto_52
    new-instance v4, Lcom/google/android/gms/internal/ads/cf;

    iget-wide v5, v0, Lcom/google/android/gms/internal/ads/zzwb;->DW:J

    const-wide/16 v9, -0x1

    cmp-long v7, v5, v9

    if-nez v7, :cond_5e

    move-object v10, v2

    goto :goto_66

    :cond_5e
    new-instance v5, Ljava/util/Date;

    iget-wide v6, v0, Lcom/google/android/gms/internal/ads/zzwb;->DW:J

    invoke-direct {v5, v6, v7}, Ljava/util/Date;-><init>(J)V

    move-object v10, v5

    :goto_66
    iget v11, v0, Lcom/google/android/gms/internal/ads/zzwb;->Hw:I

    iget-object v13, v0, Lcom/google/android/gms/internal/ads/zzwb;->EQ:Landroid/location/Location;

    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/df;->FH(Lcom/google/android/gms/internal/ads/zzwb;)Z

    move-result v14

    iget v15, v0, Lcom/google/android/gms/internal/ads/zzwb;->VH:I

    iget-boolean v5, v0, Lcom/google/android/gms/internal/ads/zzwb;->aM:Z

    move-object v9, v4

    move/from16 v16, v5

    invoke-direct/range {v9 .. v16}, Lcom/google/android/gms/internal/ads/cf;-><init>(Ljava/util/Date;ILjava/util/Set;Landroid/location/Location;ZIZ)V

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzwb;->J0:Landroid/os/Bundle;

    if-eqz v5, :cond_8a

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzwb;->J0:Landroid/os/Bundle;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    :cond_8a
    move-object v9, v2

    move-object v5, v4

    goto :goto_8f

    :cond_8d
    move-object v5, v2

    move-object v9, v5

    :goto_8f
    invoke-static/range {p1 .. p1}, Labcd/px;->j6(Labcd/ox;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/content/Context;

    new-instance v7, Lcom/google/android/gms/internal/ads/Jj;

    move-object/from16 v0, p4

    invoke-direct {v7, v0}, Lcom/google/android/gms/internal/ads/Jj;-><init>(Lcom/google/android/gms/internal/ads/Fj;)V

    move-object/from16 v6, p3

    invoke-interface/range {v3 .. v9}, Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdAdapter;->initialize(Landroid/content/Context;Lcom/google/android/gms/ads/mediation/a;Ljava/lang/String;Lcom/google/android/gms/ads/reward/mediation/a;Landroid/os/Bundle;Landroid/os/Bundle;)V
    :try_end_a2
    .catchall {:try_start_36 .. :try_end_a2} :catchall_a3

    return-void

    :catchall_a3
    move-exception v0

    const-string v2, ""

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0
.end method

.method public final j6(Labcd/ox;Lcom/google/android/gms/internal/ads/zzwb;Ljava/lang/String;Lcom/google/android/gms/internal/ads/Me;)V
    .registers 11

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/df;->j6(Labcd/ox;Lcom/google/android/gms/internal/ads/zzwb;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/Me;)V

    return-void
.end method

.method public final j6(Labcd/ox;Lcom/google/android/gms/internal/ads/zzwb;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/Me;)V
    .registers 20

    move-object v1, p0

    move-object/from16 v0, p2

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/df;->j6:Lcom/google/android/gms/ads/mediation/b;

    instance-of v3, v2, Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;

    if-nez v3, :cond_30

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const-string v3, "Not a MediationInterstitialAdapter: "

    if-eqz v2, :cond_22

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_27

    :cond_22
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_27
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;)V

    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0

    :cond_30
    const-string v2, "Requesting interstitial ad from adapter."

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;)V

    :try_start_35
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/df;->j6:Lcom/google/android/gms/ads/mediation/b;

    move-object v3, v2

    check-cast v3, Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzwb;->v5:Ljava/util/List;

    const/4 v4, 0x0

    if-eqz v2, :cond_48

    new-instance v2, Ljava/util/HashSet;

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzwb;->v5:Ljava/util/List;

    invoke-direct {v2, v5}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    move-object v9, v2

    goto :goto_49

    :cond_48
    move-object v9, v4

    :goto_49
    new-instance v2, Lcom/google/android/gms/internal/ads/cf;

    iget-wide v5, v0, Lcom/google/android/gms/internal/ads/zzwb;->DW:J

    const-wide/16 v7, -0x1

    cmp-long v10, v5, v7

    if-nez v10, :cond_55

    move-object v7, v4

    goto :goto_5d

    :cond_55
    new-instance v5, Ljava/util/Date;

    iget-wide v6, v0, Lcom/google/android/gms/internal/ads/zzwb;->DW:J

    invoke-direct {v5, v6, v7}, Ljava/util/Date;-><init>(J)V

    move-object v7, v5

    :goto_5d
    iget v8, v0, Lcom/google/android/gms/internal/ads/zzwb;->Hw:I

    iget-object v10, v0, Lcom/google/android/gms/internal/ads/zzwb;->EQ:Landroid/location/Location;

    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/df;->FH(Lcom/google/android/gms/internal/ads/zzwb;)Z

    move-result v11

    iget v12, v0, Lcom/google/android/gms/internal/ads/zzwb;->VH:I

    iget-boolean v13, v0, Lcom/google/android/gms/internal/ads/zzwb;->aM:Z

    move-object v6, v2

    invoke-direct/range {v6 .. v13}, Lcom/google/android/gms/internal/ads/cf;-><init>(Ljava/util/Date;ILjava/util/Set;Landroid/location/Location;ZIZ)V

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzwb;->J0:Landroid/os/Bundle;

    if-eqz v5, :cond_7f

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzwb;->J0:Landroid/os/Bundle;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    :cond_7f
    move-object v8, v4

    invoke-static {p1}, Labcd/px;->j6(Labcd/ox;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/Context;

    new-instance v5, Lcom/google/android/gms/internal/ads/ef;

    move-object/from16 v6, p5

    invoke-direct {v5, v6}, Lcom/google/android/gms/internal/ads/ef;-><init>(Lcom/google/android/gms/internal/ads/Me;)V

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    invoke-direct {p0, v6, v0, v7}, Lcom/google/android/gms/internal/ads/df;->j6(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzwb;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v6

    move-object v7, v2

    invoke-interface/range {v3 .. v8}, Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;->requestInterstitialAd(Landroid/content/Context;Lcom/google/android/gms/ads/mediation/d;Landroid/os/Bundle;Lcom/google/android/gms/ads/mediation/a;Landroid/os/Bundle;)V
    :try_end_99
    .catchall {:try_start_35 .. :try_end_99} :catchall_9a

    return-void

    :catchall_9a
    move-exception v0

    const-string v2, ""

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0
.end method

.method public final j6(Labcd/ox;Lcom/google/android/gms/internal/ads/zzwb;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/Me;Lcom/google/android/gms/internal/ads/zzacp;Ljava/util/List;)V
    .registers 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Labcd/ox;",
            "Lcom/google/android/gms/internal/ads/zzwb;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/Me;",
            "Lcom/google/android/gms/internal/ads/zzacp;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/df;->j6:Lcom/google/android/gms/ads/mediation/b;

    instance-of v3, v2, Lcom/google/android/gms/ads/mediation/MediationNativeAdapter;

    if-nez v3, :cond_31

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const-string v3, "Not a MediationNativeAdapter: "

    if-eqz v2, :cond_23

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_28

    :cond_23
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_28
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;)V

    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0

    :cond_31
    :try_start_31
    check-cast v2, Lcom/google/android/gms/ads/mediation/MediationNativeAdapter;

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzwb;->v5:Ljava/util/List;

    const/4 v4, 0x0

    if-eqz v3, :cond_41

    new-instance v3, Ljava/util/HashSet;

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzwb;->v5:Ljava/util/List;

    invoke-direct {v3, v5}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    move-object v9, v3

    goto :goto_42

    :cond_41
    move-object v9, v4

    :goto_42
    new-instance v3, Lcom/google/android/gms/internal/ads/hf;

    iget-wide v5, v0, Lcom/google/android/gms/internal/ads/zzwb;->DW:J

    const-wide/16 v7, -0x1

    cmp-long v10, v5, v7

    if-nez v10, :cond_4e

    move-object v7, v4

    goto :goto_56

    :cond_4e
    new-instance v5, Ljava/util/Date;

    iget-wide v6, v0, Lcom/google/android/gms/internal/ads/zzwb;->DW:J

    invoke-direct {v5, v6, v7}, Ljava/util/Date;-><init>(J)V

    move-object v7, v5

    :goto_56
    iget v8, v0, Lcom/google/android/gms/internal/ads/zzwb;->Hw:I

    iget-object v10, v0, Lcom/google/android/gms/internal/ads/zzwb;->EQ:Landroid/location/Location;

    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/df;->FH(Lcom/google/android/gms/internal/ads/zzwb;)Z

    move-result v11

    iget v12, v0, Lcom/google/android/gms/internal/ads/zzwb;->VH:I

    iget-boolean v15, v0, Lcom/google/android/gms/internal/ads/zzwb;->aM:Z

    move-object v6, v3

    move-object/from16 v13, p6

    move-object/from16 v14, p7

    invoke-direct/range {v6 .. v15}, Lcom/google/android/gms/internal/ads/hf;-><init>(Ljava/util/Date;ILjava/util/Set;Landroid/location/Location;ZILcom/google/android/gms/internal/ads/zzacp;Ljava/util/List;Z)V

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzwb;->J0:Landroid/os/Bundle;

    if-eqz v5, :cond_7c

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzwb;->J0:Landroid/os/Bundle;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    :cond_7c
    new-instance v5, Lcom/google/android/gms/internal/ads/ef;

    move-object/from16 v6, p5

    invoke-direct {v5, v6}, Lcom/google/android/gms/internal/ads/ef;-><init>(Lcom/google/android/gms/internal/ads/Me;)V

    iput-object v5, v1, Lcom/google/android/gms/internal/ads/df;->DW:Lcom/google/android/gms/internal/ads/ef;

    invoke-static/range {p1 .. p1}, Labcd/px;->j6(Labcd/ox;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/Context;

    iget-object v6, v1, Lcom/google/android/gms/internal/ads/df;->DW:Lcom/google/android/gms/internal/ads/ef;

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    invoke-direct {v1, v7, v0, v8}, Lcom/google/android/gms/internal/ads/df;->j6(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzwb;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    move-object/from16 p1, v2

    move-object/from16 p2, v5

    move-object/from16 p3, v6

    move-object/from16 p4, v0

    move-object/from16 p5, v3

    move-object/from16 p6, v4

    invoke-interface/range {p1 .. p6}, Lcom/google/android/gms/ads/mediation/MediationNativeAdapter;->requestNativeAd(Landroid/content/Context;Lcom/google/android/gms/ads/mediation/e;Landroid/os/Bundle;Lcom/google/android/gms/ads/mediation/i;Landroid/os/Bundle;)V
    :try_end_a4
    .catchall {:try_start_31 .. :try_end_a4} :catchall_a5

    return-void

    :catchall_a5
    move-exception v0

    const-string v2, ""

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0
.end method

.method public final j6(Labcd/ox;Lcom/google/android/gms/internal/ads/zzwf;Lcom/google/android/gms/internal/ads/zzwb;Ljava/lang/String;Lcom/google/android/gms/internal/ads/Me;)V
    .registers 13

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/df;->j6(Labcd/ox;Lcom/google/android/gms/internal/ads/zzwf;Lcom/google/android/gms/internal/ads/zzwb;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/Me;)V

    return-void
.end method

.method public final j6(Labcd/ox;Lcom/google/android/gms/internal/ads/zzwf;Lcom/google/android/gms/internal/ads/zzwb;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/Me;)V
    .registers 22

    move-object v1, p0

    move-object/from16 v0, p2

    move-object/from16 v2, p3

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/df;->j6:Lcom/google/android/gms/ads/mediation/b;

    instance-of v4, v3, Lcom/google/android/gms/ads/mediation/MediationBannerAdapter;

    if-nez v4, :cond_32

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const-string v3, "Not a MediationBannerAdapter: "

    if-eqz v2, :cond_24

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_29

    :cond_24
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_29
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;)V

    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0

    :cond_32
    const-string v3, "Requesting banner ad from adapter."

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;)V

    :try_start_37
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/df;->j6:Lcom/google/android/gms/ads/mediation/b;

    move-object v4, v3

    check-cast v4, Lcom/google/android/gms/ads/mediation/MediationBannerAdapter;

    iget-object v3, v2, Lcom/google/android/gms/internal/ads/zzwb;->v5:Ljava/util/List;

    const/4 v5, 0x0

    if-eqz v3, :cond_4a

    new-instance v3, Ljava/util/HashSet;

    iget-object v6, v2, Lcom/google/android/gms/internal/ads/zzwb;->v5:Ljava/util/List;

    invoke-direct {v3, v6}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    move-object v10, v3

    goto :goto_4b

    :cond_4a
    move-object v10, v5

    :goto_4b
    new-instance v3, Lcom/google/android/gms/internal/ads/cf;

    iget-wide v6, v2, Lcom/google/android/gms/internal/ads/zzwb;->DW:J

    const-wide/16 v8, -0x1

    cmp-long v11, v6, v8

    if-nez v11, :cond_57

    move-object v8, v5

    goto :goto_5f

    :cond_57
    new-instance v6, Ljava/util/Date;

    iget-wide v7, v2, Lcom/google/android/gms/internal/ads/zzwb;->DW:J

    invoke-direct {v6, v7, v8}, Ljava/util/Date;-><init>(J)V

    move-object v8, v6

    :goto_5f
    iget v9, v2, Lcom/google/android/gms/internal/ads/zzwb;->Hw:I

    iget-object v11, v2, Lcom/google/android/gms/internal/ads/zzwb;->EQ:Landroid/location/Location;

    invoke-static/range {p3 .. p3}, Lcom/google/android/gms/internal/ads/df;->FH(Lcom/google/android/gms/internal/ads/zzwb;)Z

    move-result v12

    iget v13, v2, Lcom/google/android/gms/internal/ads/zzwb;->VH:I

    iget-boolean v14, v2, Lcom/google/android/gms/internal/ads/zzwb;->aM:Z

    move-object v7, v3

    invoke-direct/range {v7 .. v14}, Lcom/google/android/gms/internal/ads/cf;-><init>(Ljava/util/Date;ILjava/util/Set;Landroid/location/Location;ZIZ)V

    iget-object v6, v2, Lcom/google/android/gms/internal/ads/zzwb;->J0:Landroid/os/Bundle;

    if-eqz v6, :cond_81

    iget-object v5, v2, Lcom/google/android/gms/internal/ads/zzwb;->J0:Landroid/os/Bundle;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v5

    :cond_81
    move-object v10, v5

    invoke-static/range {p1 .. p1}, Labcd/px;->j6(Labcd/ox;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/Context;

    new-instance v6, Lcom/google/android/gms/internal/ads/ef;

    move-object/from16 v7, p6

    invoke-direct {v6, v7}, Lcom/google/android/gms/internal/ads/ef;-><init>(Lcom/google/android/gms/internal/ads/Me;)V

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    invoke-direct {p0, v7, v2, v8}, Lcom/google/android/gms/internal/ads/df;->j6(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzwb;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v7

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzwf;->v5:I

    iget v8, v0, Lcom/google/android/gms/internal/ads/zzwf;->DW:I

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzwf;->j6:Ljava/lang/String;

    invoke-static {v2, v8, v0}, Lcom/google/android/gms/ads/l;->j6(IILjava/lang/String;)Lcom/google/android/gms/ads/d;

    move-result-object v8

    move-object v9, v3

    invoke-interface/range {v4 .. v10}, Lcom/google/android/gms/ads/mediation/MediationBannerAdapter;->requestBannerAd(Landroid/content/Context;Lcom/google/android/gms/ads/mediation/c;Landroid/os/Bundle;Lcom/google/android/gms/ads/d;Lcom/google/android/gms/ads/mediation/a;Landroid/os/Bundle;)V
    :try_end_a5
    .catchall {:try_start_37 .. :try_end_a5} :catchall_a6

    return-void

    :catchall_a6
    move-exception v0

    const-string v2, ""

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/zzwb;Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/gms/internal/ads/df;->j6(Lcom/google/android/gms/internal/ads/zzwb;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/zzwb;Ljava/lang/String;Ljava/lang/String;)V
    .registers 15

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/df;->j6:Lcom/google/android/gms/ads/mediation/b;

    instance-of v1, v0, Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdAdapter;

    if-nez v1, :cond_2d

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    const-string p3, "Not a MediationRewardedVideoAdAdapter: "

    if-eqz p2, :cond_1f

    invoke-virtual {p3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_24

    :cond_1f
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_24
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;)V

    new-instance p1, Landroid/os/RemoteException;

    invoke-direct {p1}, Landroid/os/RemoteException;-><init>()V

    throw p1

    :cond_2d
    const-string v0, "Requesting rewarded video ad from adapter."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;)V

    :try_start_32
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/df;->j6:Lcom/google/android/gms/ads/mediation/b;

    check-cast v0, Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdAdapter;

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzwb;->v5:Ljava/util/List;

    const/4 v2, 0x0

    if-eqz v1, :cond_44

    new-instance v1, Ljava/util/HashSet;

    iget-object v3, p1, Lcom/google/android/gms/internal/ads/zzwb;->v5:Ljava/util/List;

    invoke-direct {v1, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    move-object v6, v1

    goto :goto_45

    :cond_44
    move-object v6, v2

    :goto_45
    new-instance v1, Lcom/google/android/gms/internal/ads/cf;

    iget-wide v3, p1, Lcom/google/android/gms/internal/ads/zzwb;->DW:J

    const-wide/16 v7, -0x1

    cmp-long v5, v3, v7

    if-nez v5, :cond_51

    move-object v4, v2

    goto :goto_59

    :cond_51
    new-instance v3, Ljava/util/Date;

    iget-wide v4, p1, Lcom/google/android/gms/internal/ads/zzwb;->DW:J

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    move-object v4, v3

    :goto_59
    iget v5, p1, Lcom/google/android/gms/internal/ads/zzwb;->Hw:I

    iget-object v7, p1, Lcom/google/android/gms/internal/ads/zzwb;->EQ:Landroid/location/Location;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/df;->FH(Lcom/google/android/gms/internal/ads/zzwb;)Z

    move-result v8

    iget v9, p1, Lcom/google/android/gms/internal/ads/zzwb;->VH:I

    iget-boolean v10, p1, Lcom/google/android/gms/internal/ads/zzwb;->aM:Z

    move-object v3, v1

    invoke-direct/range {v3 .. v10}, Lcom/google/android/gms/internal/ads/cf;-><init>(Ljava/util/Date;ILjava/util/Set;Landroid/location/Location;ZIZ)V

    iget-object v3, p1, Lcom/google/android/gms/internal/ads/zzwb;->J0:Landroid/os/Bundle;

    if-eqz v3, :cond_7b

    iget-object v2, p1, Lcom/google/android/gms/internal/ads/zzwb;->J0:Landroid/os/Bundle;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    :cond_7b
    invoke-direct {p0, p2, p1, p3}, Lcom/google/android/gms/internal/ads/df;->j6(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzwb;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    invoke-interface {v0, v1, p1, v2}, Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdAdapter;->loadAd(Lcom/google/android/gms/ads/mediation/a;Landroid/os/Bundle;Landroid/os/Bundle;)V
    :try_end_82
    .catchall {:try_start_32 .. :try_end_82} :catchall_83

    return-void

    :catchall_83
    move-exception p1

    const-string p2, ""

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance p1, Landroid/os/RemoteException;

    invoke-direct {p1}, Landroid/os/RemoteException;-><init>()V

    throw p1
.end method

.method public final ko()Lcom/google/android/gms/internal/ads/Ve;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/df;->DW:Lcom/google/android/gms/internal/ads/ef;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ef;->j6()Lcom/google/android/gms/ads/mediation/f;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/gms/ads/mediation/h;

    if-eqz v1, :cond_12

    new-instance v1, Lcom/google/android/gms/internal/ads/gf;

    check-cast v0, Lcom/google/android/gms/ads/mediation/h;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/gf;-><init>(Lcom/google/android/gms/ads/mediation/h;)V

    return-object v1

    :cond_12
    const/4 v0, 0x0

    return-object v0
.end method

.method public final oY()Landroid/os/Bundle;
    .registers 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    return-object v0
.end method

.method public final pause()V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/df;->j6:Lcom/google/android/gms/ads/mediation/b;

    invoke-interface {v0}, Lcom/google/android/gms/ads/mediation/b;->onPause()V
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_6

    return-void

    :catchall_6
    move-exception v0

    const-string v1, ""

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0
.end method

.method public final pl()Lcom/google/android/gms/internal/ads/ab;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/df;->DW:Lcom/google/android/gms/internal/ads/ef;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ef;->FH()Lcom/google/android/gms/ads/formats/f;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/gms/internal/ads/eb;

    if-eqz v1, :cond_11

    check-cast v0, Lcom/google/android/gms/internal/ads/eb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/eb;->j6()Lcom/google/android/gms/internal/ads/ab;

    move-result-object v0

    return-object v0

    :cond_11
    const/4 v0, 0x0

    return-object v0
.end method

.method public final showInterstitial()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/df;->j6:Lcom/google/android/gms/ads/mediation/b;

    instance-of v1, v0, Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;

    if-nez v1, :cond_2d

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const-string v2, "Not a MediationInterstitialAdapter: "

    if-eqz v1, :cond_1f

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_24

    :cond_1f
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_24
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;)V

    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0

    :cond_2d
    const-string v0, "Showing interstitial from adapter."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;)V

    :try_start_32
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/df;->j6:Lcom/google/android/gms/ads/mediation/b;

    check-cast v0, Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;

    invoke-interface {v0}, Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;->showInterstitial()V
    :try_end_39
    .catchall {:try_start_32 .. :try_end_39} :catchall_3a

    return-void

    :catchall_3a
    move-exception v0

    const-string v1, ""

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0
.end method

.method public final showVideo()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/df;->j6:Lcom/google/android/gms/ads/mediation/b;

    instance-of v1, v0, Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdAdapter;

    if-nez v1, :cond_2d

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const-string v2, "Not a MediationRewardedVideoAdAdapter: "

    if-eqz v1, :cond_1f

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_24

    :cond_1f
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_24
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;)V

    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0

    :cond_2d
    const-string v0, "Show rewarded video ad from adapter."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;)V

    :try_start_32
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/df;->j6:Lcom/google/android/gms/ads/mediation/b;

    check-cast v0, Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdAdapter;

    invoke-interface {v0}, Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdAdapter;->showVideo()V
    :try_end_39
    .catchall {:try_start_32 .. :try_end_39} :catchall_3a

    return-void

    :catchall_3a
    move-exception v0

    const-string v1, ""

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0
.end method

.method public final wE()Z
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/df;->j6:Lcom/google/android/gms/ads/mediation/b;

    instance-of v0, v0, Lcom/google/android/gms/ads/reward/mediation/InitializableMediationRewardedVideoAdAdapter;

    return v0
.end method

.method public final zzuw()Landroid/os/Bundle;
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/df;->j6:Lcom/google/android/gms/ads/mediation/b;

    instance-of v1, v0, Lcom/google/android/gms/internal/ads/zzbix;

    if-nez v1, :cond_2d

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const-string v2, "Not a v2 MediationBannerAdapter: "

    if-eqz v1, :cond_1f

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_24

    :cond_1f
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_24
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    return-object v0

    :cond_2d
    check-cast v0, Lcom/google/android/gms/internal/ads/zzbix;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbix;->zzuw()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method
