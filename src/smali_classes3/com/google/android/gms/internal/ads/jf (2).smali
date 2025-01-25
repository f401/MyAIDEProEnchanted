.class public final Lcom/google/android/gms/internal/ads/jf;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/ads/mediation/c;
.implements Lcom/google/ads/mediation/d;


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
        "Ljava/lang/Object;",
        "Lcom/google/ads/mediation/c;",
        "Lcom/google/ads/mediation/d;"
    }
.end annotation


# instance fields
.field private final j6:Lcom/google/android/gms/internal/ads/Me;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/Me;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/jf;->j6:Lcom/google/android/gms/internal/ads/Me;

    return-void
.end method

.method static synthetic j6(Lcom/google/android/gms/internal/ads/jf;)Lcom/google/android/gms/internal/ads/Me;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/jf;->j6:Lcom/google/android/gms/internal/ads/Me;

    return-object p0
.end method


# virtual methods
.method public final j6(Lcom/google/ads/mediation/MediationBannerAdapter;Labcd/ax;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/ads/mediation/MediationBannerAdapter<",
            "**>;",
            "Labcd/ax;",
            ")V"
        }
    .end annotation

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x2f

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Adapter called onFailedToReceiveAd with error. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->j6()Lcom/google/android/gms/internal/ads/Zl;

    invoke-static {}, Lcom/google/android/gms/internal/ads/Zl;->DW()Z

    move-result p1

    if-nez p1, :cond_3c

    const-string p1, "#008 Must be called on the main UI thread."

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object p1, Lcom/google/android/gms/internal/ads/Zl;->j6:Landroid/os/Handler;

    new-instance v0, Lcom/google/android/gms/internal/ads/kf;

    invoke-direct {v0, p0, p2}, Lcom/google/android/gms/internal/ads/kf;-><init>(Lcom/google/android/gms/internal/ads/jf;Labcd/ax;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_3c
    :try_start_3c
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/jf;->j6:Lcom/google/android/gms/internal/ads/Me;

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/mf;->j6(Labcd/ax;)I

    move-result p2

    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/Me;->Zo(I)V
    :try_end_45
    .catch Landroid/os/RemoteException; {:try_start_3c .. :try_end_45} :catch_46

    return-void

    :catch_46
    move-exception p1

    const-string p2, "#007 Could not call remote method."

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final j6(Lcom/google/ads/mediation/MediationInterstitialAdapter;Labcd/ax;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/ads/mediation/MediationInterstitialAdapter<",
            "**>;",
            "Labcd/ax;",
            ")V"
        }
    .end annotation

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x2f

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Adapter called onFailedToReceiveAd with error "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->j6()Lcom/google/android/gms/internal/ads/Zl;

    invoke-static {}, Lcom/google/android/gms/internal/ads/Zl;->DW()Z

    move-result p1

    if-nez p1, :cond_41

    const-string p1, "#008 Must be called on the main UI thread."

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object p1, Lcom/google/android/gms/internal/ads/Zl;->j6:Landroid/os/Handler;

    new-instance v0, Lcom/google/android/gms/internal/ads/lf;

    invoke-direct {v0, p0, p2}, Lcom/google/android/gms/internal/ads/lf;-><init>(Lcom/google/android/gms/internal/ads/jf;Labcd/ax;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_41
    :try_start_41
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/jf;->j6:Lcom/google/android/gms/internal/ads/Me;

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/mf;->j6(Labcd/ax;)I

    move-result p2

    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/Me;->Zo(I)V
    :try_end_4a
    .catch Landroid/os/RemoteException; {:try_start_41 .. :try_end_4a} :catch_4b

    return-void

    :catch_4b
    move-exception p1

    const-string p2, "#007 Could not call remote method."

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
