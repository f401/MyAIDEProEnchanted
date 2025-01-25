.class public final Lcom/google/android/gms/internal/ads/zzzb;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zh;
.end annotation


# instance fields
.field private final DW:Landroid/content/Context;

.field private EQ:Lcom/google/android/gms/ads/e;

.field private final FH:Lcom/google/android/gms/internal/ads/fH;

.field private Hw:Lcom/google/android/gms/ads/a;

.field private J0:Z

.field private J8:Z

.field private VH:Ljava/lang/String;

.field private Zo:Lcom/google/android/gms/internal/ads/IH;

.field private gn:Labcd/fx;

.field private final j6:Lcom/google/android/gms/internal/ads/Fe;

.field private tp:Lcom/google/android/gms/ads/doubleclick/c;

.field private u7:Lcom/google/android/gms/ads/doubleclick/a;

.field private v5:Lcom/google/android/gms/internal/ads/WG;

.field private we:Labcd/hx;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    sget-object v0, Lcom/google/android/gms/internal/ads/fH;->j6:Lcom/google/android/gms/internal/ads/fH;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzzb;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/fH;Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;)V
    .registers 4

    sget-object v0, Lcom/google/android/gms/internal/ads/fH;->j6:Lcom/google/android/gms/internal/ads/fH;

    invoke-direct {p0, p1, v0, p2}, Lcom/google/android/gms/internal/ads/zzzb;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/fH;Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/fH;Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p3, Lcom/google/android/gms/internal/ads/Fe;

    invoke-direct {p3}, Lcom/google/android/gms/internal/ads/Fe;-><init>()V

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzzb;->j6:Lcom/google/android/gms/internal/ads/Fe;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzzb;->DW:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzzb;->FH:Lcom/google/android/gms/internal/ads/fH;

    return-void
.end method

.method private final DW(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzzb;->Zo:Lcom/google/android/gms/internal/ads/IH;

    if-eqz v0, :cond_5

    return-void

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x3f

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "The ad unit ID must be set on InterstitialAd before "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is called."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final DW()V
    .registers 3

    :try_start_0
    const-string v0, "show"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzzb;->DW(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzzb;->Zo:Lcom/google/android/gms/internal/ads/IH;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/IH;->showInterstitial()V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    return-void

    :catch_b
    move-exception v0

    const-string v1, "#008 Must be called on the main UI thread."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final DW(Z)V
    .registers 2

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzzb;->J0:Z

    return-void
.end method

.method public final j6()Landroid/os/Bundle;
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzzb;->Zo:Lcom/google/android/gms/internal/ads/IH;

    if-eqz v0, :cond_f

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/IH;->e9()Landroid/os/Bundle;

    move-result-object v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return-object v0

    :catch_9
    move-exception v0

    const-string v1, "#008 Must be called on the main UI thread."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_f
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    return-object v0
.end method

.method public final j6(Labcd/fx;)V
    .registers 4

    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzzb;->gn:Labcd/fx;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzzb;->Zo:Lcom/google/android/gms/internal/ads/IH;

    if-eqz v0, :cond_12

    if-eqz p1, :cond_e

    new-instance v1, Lcom/google/android/gms/internal/ads/cH;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/cH;-><init>(Labcd/fx;)V

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    :goto_f
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/IH;->j6(Lcom/google/android/gms/internal/ads/NH;)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_12} :catch_13

    :cond_12
    return-void

    :catch_13
    move-exception p1

    const-string v0, "#008 Must be called on the main UI thread."

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final j6(Labcd/hx;)V
    .registers 4

    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzzb;->we:Labcd/hx;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzzb;->Zo:Lcom/google/android/gms/internal/ads/IH;

    if-eqz v0, :cond_12

    if-eqz p1, :cond_e

    new-instance v1, Lcom/google/android/gms/internal/ads/oj;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/oj;-><init>(Labcd/hx;)V

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    :goto_f
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/IH;->j6(Lcom/google/android/gms/internal/ads/jj;)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_12} :catch_13

    :cond_12
    return-void

    :catch_13
    move-exception p1

    const-string v0, "#008 Must be called on the main UI thread."

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final j6(Lcom/google/android/gms/ads/a;)V
    .registers 4

    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzzb;->Hw:Lcom/google/android/gms/ads/a;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzzb;->Zo:Lcom/google/android/gms/internal/ads/IH;

    if-eqz v0, :cond_12

    if-eqz p1, :cond_e

    new-instance v1, Lcom/google/android/gms/internal/ads/ZG;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/ZG;-><init>(Lcom/google/android/gms/ads/a;)V

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    :goto_f
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/IH;->DW(Lcom/google/android/gms/internal/ads/xH;)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_12} :catch_13

    :cond_12
    return-void

    :catch_13
    move-exception p1

    const-string v0, "#008 Must be called on the main UI thread."

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/WG;)V
    .registers 4

    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzzb;->v5:Lcom/google/android/gms/internal/ads/WG;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzzb;->Zo:Lcom/google/android/gms/internal/ads/IH;

    if-eqz v0, :cond_12

    if-eqz p1, :cond_e

    new-instance v1, Lcom/google/android/gms/internal/ads/XG;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/XG;-><init>(Lcom/google/android/gms/internal/ads/WG;)V

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    :goto_f
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/IH;->j6(Lcom/google/android/gms/internal/ads/tH;)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_12} :catch_13

    :cond_12
    return-void

    :catch_13
    move-exception p1

    const-string v0, "#008 Must be called on the main UI thread."

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/rI;)V
    .registers 10

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzzb;->Zo:Lcom/google/android/gms/internal/ads/IH;

    if-nez v0, :cond_a6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzzb;->VH:Ljava/lang/String;

    if-nez v0, :cond_d

    const-string v0, "loadAd"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzzb;->DW(Ljava/lang/String;)V

    :cond_d
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzzb;->J0:Z

    if-eqz v0, :cond_17

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwf;->DW()Lcom/google/android/gms/internal/ads/zzwf;

    move-result-object v0

    :goto_15
    move-object v4, v0

    goto :goto_1d

    :cond_17
    new-instance v0, Lcom/google/android/gms/internal/ads/zzwf;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzwf;-><init>()V

    goto :goto_15

    :goto_1d
    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->DW()Lcom/google/android/gms/internal/ads/iH;

    move-result-object v2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzzb;->DW:Landroid/content/Context;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzzb;->VH:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzzb;->j6:Lcom/google/android/gms/internal/ads/Fe;

    new-instance v7, Lcom/google/android/gms/internal/ads/mH;

    move-object v1, v7

    move-object v3, v0

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/mH;-><init>(Lcom/google/android/gms/internal/ads/iH;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzwf;Ljava/lang/String;Lcom/google/android/gms/internal/ads/Ge;)V

    const/4 v1, 0x0

    invoke-virtual {v7, v0, v1}, Lcom/google/android/gms/internal/ads/pH;->j6(Landroid/content/Context;Z)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/IH;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzzb;->Zo:Lcom/google/android/gms/internal/ads/IH;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzzb;->Hw:Lcom/google/android/gms/ads/a;

    if-eqz v1, :cond_45

    new-instance v1, Lcom/google/android/gms/internal/ads/ZG;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzzb;->Hw:Lcom/google/android/gms/ads/a;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/ZG;-><init>(Lcom/google/android/gms/ads/a;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/IH;->DW(Lcom/google/android/gms/internal/ads/xH;)V

    :cond_45
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzzb;->v5:Lcom/google/android/gms/internal/ads/WG;

    if-eqz v0, :cond_55

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzzb;->Zo:Lcom/google/android/gms/internal/ads/IH;

    new-instance v1, Lcom/google/android/gms/internal/ads/XG;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzzb;->v5:Lcom/google/android/gms/internal/ads/WG;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/XG;-><init>(Lcom/google/android/gms/internal/ads/WG;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/IH;->j6(Lcom/google/android/gms/internal/ads/tH;)V

    :cond_55
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzzb;->gn:Labcd/fx;

    if-eqz v0, :cond_65

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzzb;->Zo:Lcom/google/android/gms/internal/ads/IH;

    new-instance v1, Lcom/google/android/gms/internal/ads/cH;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzzb;->gn:Labcd/fx;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/cH;-><init>(Labcd/fx;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/IH;->j6(Lcom/google/android/gms/internal/ads/NH;)V

    :cond_65
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzzb;->u7:Lcom/google/android/gms/ads/doubleclick/a;

    if-eqz v0, :cond_75

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzzb;->Zo:Lcom/google/android/gms/internal/ads/IH;

    new-instance v1, Lcom/google/android/gms/internal/ads/hH;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzzb;->u7:Lcom/google/android/gms/ads/doubleclick/a;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/hH;-><init>(Lcom/google/android/gms/ads/doubleclick/a;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/IH;->j6(Lcom/google/android/gms/internal/ads/QH;)V

    :cond_75
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzzb;->tp:Lcom/google/android/gms/ads/doubleclick/c;

    if-eqz v0, :cond_85

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzzb;->Zo:Lcom/google/android/gms/internal/ads/IH;

    new-instance v1, Lcom/google/android/gms/internal/ads/M;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzzb;->tp:Lcom/google/android/gms/ads/doubleclick/c;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/M;-><init>(Lcom/google/android/gms/ads/doubleclick/c;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/IH;->j6(Lcom/google/android/gms/internal/ads/J;)V

    :cond_85
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzzb;->EQ:Lcom/google/android/gms/ads/e;

    if-nez v0, :cond_a1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzzb;->we:Labcd/hx;

    if-eqz v0, :cond_99

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzzb;->Zo:Lcom/google/android/gms/internal/ads/IH;

    new-instance v1, Lcom/google/android/gms/internal/ads/oj;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzzb;->we:Labcd/hx;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/oj;-><init>(Labcd/hx;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/IH;->j6(Lcom/google/android/gms/internal/ads/jj;)V

    :cond_99
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzzb;->Zo:Lcom/google/android/gms/internal/ads/IH;

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzzb;->J8:Z

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/IH;->gn(Z)V

    goto :goto_a6

    :cond_a1
    invoke-virtual {v0}, Lcom/google/android/gms/ads/e;->j6()Lcom/google/android/gms/internal/ads/rH;
    :try_end_a4
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a4} :catch_be

    const/4 p1, 0x0

    throw p1

    :cond_a6
    :goto_a6
    :try_start_a6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzzb;->Zo:Lcom/google/android/gms/internal/ads/IH;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzzb;->DW:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/google/android/gms/internal/ads/fH;->j6(Landroid/content/Context;Lcom/google/android/gms/internal/ads/rI;)Lcom/google/android/gms/internal/ads/zzwb;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/IH;->j6(Lcom/google/android/gms/internal/ads/zzwb;)Z

    move-result v0

    if-eqz v0, :cond_bd

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzzb;->j6:Lcom/google/android/gms/internal/ads/Fe;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/rI;->we()Ljava/util/Map;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/Fe;->j6(Ljava/util/Map;)V
    :try_end_bd
    .catch Landroid/os/RemoteException; {:try_start_a6 .. :try_end_bd} :catch_be

    :cond_bd
    return-void

    :catch_be
    move-exception p1

    const-string v0, "#008 Must be called on the main UI thread."

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final j6(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzzb;->VH:Ljava/lang/String;

    if-nez v0, :cond_7

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzzb;->VH:Ljava/lang/String;

    return-void

    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "The ad unit ID can only be set once on InterstitialAd."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final j6(Z)V
    .registers 3

    :try_start_0
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzzb;->J8:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzzb;->Zo:Lcom/google/android/gms/internal/ads/IH;

    if-eqz v0, :cond_9

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/IH;->gn(Z)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    :cond_9
    return-void

    :catch_a
    move-exception p1

    const-string v0, "#008 Must be called on the main UI thread."

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
