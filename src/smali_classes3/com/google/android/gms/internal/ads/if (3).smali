.class public final Lcom/google/android/gms/internal/ads/if;
.super Lcom/google/android/gms/internal/ads/Ke;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zh;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<NETWORK_EXTRAS::",
        "Lcom/google/ads/mediation/f;",
        "SERVER_PARAMETERS:",
        "Lcom/google/ads/mediation/e;",
        ">",
        "Lcom/google/android/gms/internal/ads/Ke;"
    }
.end annotation


# instance fields
.field private final DW:Lcom/google/ads/mediation/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TNETWORK_EXTRAS;"
        }
    .end annotation
.end field

.field private final j6:Lcom/google/ads/mediation/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/ads/mediation/b<",
            "TNETWORK_EXTRAS;TSERVER_PARAMETERS;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/ads/mediation/b;Lcom/google/ads/mediation/f;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/ads/mediation/b<",
            "TNETWORK_EXTRAS;TSERVER_PARAMETERS;>;TNETWORK_EXTRAS;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/Ke;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/if;->j6:Lcom/google/ads/mediation/b;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/if;->DW:Lcom/google/ads/mediation/f;

    return-void
.end method

.method private final DW(Ljava/lang/String;ILjava/lang/String;)Lcom/google/ads/mediation/e;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            ")TSERVER_PARAMETERS;"
        }
    .end annotation

    if-eqz p1, :cond_28

    :try_start_2
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance p1, Ljava/util/HashMap;

    invoke-virtual {p2}, Lorg/json/JSONObject;->length()I

    move-result p3

    invoke-direct {p1, p3}, Ljava/util/HashMap;-><init>(I)V

    invoke-virtual {p2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object p3

    :goto_14
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2e

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_14

    :cond_28
    new-instance p1, Ljava/util/HashMap;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/HashMap;-><init>(I)V

    :cond_2e
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/if;->j6:Lcom/google/ads/mediation/b;

    invoke-interface {p2}, Lcom/google/ads/mediation/b;->getServerParametersType()Ljava/lang/Class;

    move-result-object p2

    if-eqz p2, :cond_40

    invoke-virtual {p2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/ads/mediation/e;

    invoke-virtual {p2, p1}, Lcom/google/ads/mediation/e;->j6(Ljava/util/Map;)V
    :try_end_3f
    .catchall {:try_start_2 .. :try_end_3f} :catchall_42

    goto :goto_41

    :cond_40
    const/4 p2, 0x0

    :goto_41
    return-object p2

    :catchall_42
    move-exception p1

    const-string p2, ""

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance p1, Landroid/os/RemoteException;

    invoke-direct {p1}, Landroid/os/RemoteException;-><init>()V

    goto :goto_4f

    :goto_4e
    throw p1

    :goto_4f
    goto :goto_4e
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


# virtual methods
.method public final WB()Lcom/google/android/gms/internal/ads/Se;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public final destroy()V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/if;->j6:Lcom/google/ads/mediation/b;

    invoke-interface {v0}, Lcom/google/ads/mediation/b;->destroy()V
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
    .registers 2

    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0
.end method

.method public final fP()Lcom/google/android/gms/internal/ads/Ye;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public final fY()Labcd/ox;
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/if;->j6:Lcom/google/ads/mediation/b;

    instance-of v1, v0, Lcom/google/ads/mediation/MediationBannerAdapter;

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
    check-cast v0, Lcom/google/ads/mediation/MediationBannerAdapter;

    invoke-interface {v0}, Lcom/google/ads/mediation/MediationBannerAdapter;->getBannerView()Landroid/view/View;

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
    .registers 2

    return-void
.end method

.method public final getInterstitialAdapterInfo()Landroid/os/Bundle;
    .registers 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    return-object v0
.end method

.method public final getVideoController()Lcom/google/android/gms/internal/ads/kI;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public final gn(Z)V
    .registers 2

    return-void
.end method

.method public final isInitialized()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public final j6(Labcd/ox;Lcom/google/android/gms/internal/ads/Fj;Ljava/util/List;)V
    .registers 4
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

    return-void
.end method

.method public final j6(Labcd/ox;Lcom/google/android/gms/internal/ads/zzwb;Ljava/lang/String;Lcom/google/android/gms/internal/ads/Fj;Ljava/lang/String;)V
    .registers 6

    return-void
.end method

.method public final j6(Labcd/ox;Lcom/google/android/gms/internal/ads/zzwb;Ljava/lang/String;Lcom/google/android/gms/internal/ads/Me;)V
    .registers 11

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/if;->j6(Labcd/ox;Lcom/google/android/gms/internal/ads/zzwb;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/Me;)V

    return-void
.end method

.method public final j6(Labcd/ox;Lcom/google/android/gms/internal/ads/zzwb;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/Me;)V
    .registers 13

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/if;->j6:Lcom/google/ads/mediation/b;

    instance-of v1, v0, Lcom/google/ads/mediation/MediationInterstitialAdapter;

    if-nez v1, :cond_2d

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    const-string p3, "Not a MediationInterstitialAdapter: "

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
    const-string v0, "Requesting interstitial ad from adapter."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;)V

    :try_start_32
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/if;->j6:Lcom/google/ads/mediation/b;

    move-object v1, v0

    check-cast v1, Lcom/google/ads/mediation/MediationInterstitialAdapter;

    new-instance v2, Lcom/google/android/gms/internal/ads/jf;

    invoke-direct {v2, p5}, Lcom/google/android/gms/internal/ads/jf;-><init>(Lcom/google/android/gms/internal/ads/Me;)V

    invoke-static {p1}, Labcd/px;->j6(Labcd/ox;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Landroid/app/Activity;

    iget p1, p2, Lcom/google/android/gms/internal/ads/zzwb;->VH:I

    invoke-direct {p0, p3, p1, p4}, Lcom/google/android/gms/internal/ads/if;->DW(Ljava/lang/String;ILjava/lang/String;)Lcom/google/ads/mediation/e;

    move-result-object v4

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/if;->FH(Lcom/google/android/gms/internal/ads/zzwb;)Z

    move-result p1

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/mf;->j6(Lcom/google/android/gms/internal/ads/zzwb;Z)Lcom/google/ads/mediation/a;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/if;->DW:Lcom/google/ads/mediation/f;

    invoke-interface/range {v1 .. v6}, Lcom/google/ads/mediation/MediationInterstitialAdapter;->requestInterstitialAd(Lcom/google/ads/mediation/d;Landroid/app/Activity;Lcom/google/ads/mediation/e;Lcom/google/ads/mediation/a;Lcom/google/ads/mediation/f;)V
    :try_end_56
    .catchall {:try_start_32 .. :try_end_56} :catchall_57

    return-void

    :catchall_57
    move-exception p1

    const-string p2, ""

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance p1, Landroid/os/RemoteException;

    invoke-direct {p1}, Landroid/os/RemoteException;-><init>()V

    throw p1
.end method

.method public final j6(Labcd/ox;Lcom/google/android/gms/internal/ads/zzwb;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/Me;Lcom/google/android/gms/internal/ads/zzacp;Ljava/util/List;)V
    .registers 8
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

    return-void
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

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/if;->j6(Labcd/ox;Lcom/google/android/gms/internal/ads/zzwf;Lcom/google/android/gms/internal/ads/zzwb;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/Me;)V

    return-void
.end method

.method public final j6(Labcd/ox;Lcom/google/android/gms/internal/ads/zzwf;Lcom/google/android/gms/internal/ads/zzwb;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/Me;)V
    .registers 15

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/if;->j6:Lcom/google/ads/mediation/b;

    instance-of v1, v0, Lcom/google/ads/mediation/MediationBannerAdapter;

    if-nez v1, :cond_2d

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    const-string p3, "Not a MediationBannerAdapter: "

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
    const-string v0, "Requesting banner ad from adapter."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;)V

    :try_start_32
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/if;->j6:Lcom/google/ads/mediation/b;

    move-object v1, v0

    check-cast v1, Lcom/google/ads/mediation/MediationBannerAdapter;

    new-instance v2, Lcom/google/android/gms/internal/ads/jf;

    invoke-direct {v2, p6}, Lcom/google/android/gms/internal/ads/jf;-><init>(Lcom/google/android/gms/internal/ads/Me;)V

    invoke-static {p1}, Labcd/px;->j6(Labcd/ox;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Landroid/app/Activity;

    iget p1, p3, Lcom/google/android/gms/internal/ads/zzwb;->VH:I

    invoke-direct {p0, p4, p1, p5}, Lcom/google/android/gms/internal/ads/if;->DW(Ljava/lang/String;ILjava/lang/String;)Lcom/google/ads/mediation/e;

    move-result-object v4

    const/4 p1, 0x6

    new-array p4, p1, [Labcd/cx;

    sget-object p5, Labcd/cx;->j6:Labcd/cx;
    :try_end_4e
    .catchall {:try_start_32 .. :try_end_4e} :catchall_a4

    const/4 p6, 0x0

    aput-object p5, p4, p6

    :try_start_51
    sget-object p5, Labcd/cx;->DW:Labcd/cx;

    const/4 v0, 0x1

    aput-object p5, p4, v0

    sget-object p5, Labcd/cx;->FH:Labcd/cx;

    const/4 v0, 0x2

    aput-object p5, p4, v0

    sget-object p5, Labcd/cx;->Hw:Labcd/cx;

    const/4 v0, 0x3

    aput-object p5, p4, v0

    sget-object p5, Labcd/cx;->v5:Labcd/cx;

    const/4 v0, 0x4

    aput-object p5, p4, v0

    sget-object p5, Labcd/cx;->Zo:Labcd/cx;

    const/4 v0, 0x5

    aput-object p5, p4, v0

    :goto_6a
    if-ge p6, p1, :cond_86

    aget-object p5, p4, p6

    invoke-virtual {p5}, Labcd/cx;->DW()I

    move-result p5

    iget v0, p2, Lcom/google/android/gms/internal/ads/zzwf;->v5:I

    if-ne p5, v0, :cond_83

    aget-object p5, p4, p6

    invoke-virtual {p5}, Labcd/cx;->j6()I

    move-result p5

    iget v0, p2, Lcom/google/android/gms/internal/ads/zzwf;->DW:I
    :try_end_7e
    .catchall {:try_start_51 .. :try_end_7e} :catchall_a4

    if-ne p5, v0, :cond_83

    aget-object p1, p4, p6

    goto :goto_95

    :cond_83
    add-int/lit8 p6, p6, 0x1

    goto :goto_6a

    :cond_86
    :try_start_86
    new-instance p1, Labcd/cx;

    iget p4, p2, Lcom/google/android/gms/internal/ads/zzwf;->v5:I

    iget p5, p2, Lcom/google/android/gms/internal/ads/zzwf;->DW:I

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzwf;->j6:Ljava/lang/String;

    invoke-static {p4, p5, p2}, Lcom/google/android/gms/ads/l;->j6(IILjava/lang/String;)Lcom/google/android/gms/ads/d;

    move-result-object p2

    invoke-direct {p1, p2}, Labcd/cx;-><init>(Lcom/google/android/gms/ads/d;)V

    :goto_95
    move-object v5, p1

    invoke-static {p3}, Lcom/google/android/gms/internal/ads/if;->FH(Lcom/google/android/gms/internal/ads/zzwb;)Z

    move-result p1

    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/mf;->j6(Lcom/google/android/gms/internal/ads/zzwb;Z)Lcom/google/ads/mediation/a;

    move-result-object v6

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/if;->DW:Lcom/google/ads/mediation/f;

    invoke-interface/range {v1 .. v7}, Lcom/google/ads/mediation/MediationBannerAdapter;->requestBannerAd(Lcom/google/ads/mediation/c;Landroid/app/Activity;Lcom/google/ads/mediation/e;Labcd/cx;Lcom/google/ads/mediation/a;Lcom/google/ads/mediation/f;)V
    :try_end_a3
    .catchall {:try_start_86 .. :try_end_a3} :catchall_a4

    return-void

    :catchall_a4
    move-exception p1

    const-string p2, ""

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance p1, Landroid/os/RemoteException;

    invoke-direct {p1}, Landroid/os/RemoteException;-><init>()V

    goto :goto_b1

    :goto_b0
    throw p1

    :goto_b1
    goto :goto_b0
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/zzwb;Ljava/lang/String;)V
    .registers 3

    return-void
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/zzwb;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    return-void
.end method

.method public final ko()Lcom/google/android/gms/internal/ads/Ve;
    .registers 2

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
    .registers 2

    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0
.end method

.method public final pl()Lcom/google/android/gms/internal/ads/ab;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public final showInterstitial()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/if;->j6:Lcom/google/ads/mediation/b;

    instance-of v1, v0, Lcom/google/ads/mediation/MediationInterstitialAdapter;

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
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/if;->j6:Lcom/google/ads/mediation/b;

    check-cast v0, Lcom/google/ads/mediation/MediationInterstitialAdapter;

    invoke-interface {v0}, Lcom/google/ads/mediation/MediationInterstitialAdapter;->showInterstitial()V
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
    .registers 1

    return-void
.end method

.method public final wE()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final zzuw()Landroid/os/Bundle;
    .registers 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    return-object v0
.end method
