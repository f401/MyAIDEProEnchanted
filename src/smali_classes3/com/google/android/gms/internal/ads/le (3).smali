.class public final Lcom/google/android/gms/internal/ads/le;
.super Lcom/google/android/gms/internal/ads/Qp;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zh;
.end annotation


# static fields
.field private static DW:Lcom/google/android/gms/internal/ads/le;

.field private static final j6:Ljava/lang/Object;


# instance fields
.field private final FH:Lcom/google/android/gms/measurement/api/AppMeasurementSdk;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/le;->j6:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/measurement/api/AppMeasurementSdk;)V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/Qp;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/le;->FH:Lcom/google/android/gms/measurement/api/AppMeasurementSdk;

    return-void
.end method

.method static final synthetic j6(Landroid/content/Context;Lcom/google/android/gms/internal/ads/le;)V
    .registers 4

    :try_start_0
    const-string v0, "com.google.android.gms.ads.measurement.DynamiteMeasurementManager"

    sget-object v1, Lcom/google/android/gms/internal/ads/ne;->j6:Lcom/google/android/gms/internal/ads/lm;

    invoke-static {p0, v0, v1}, Lcom/google/android/gms/internal/ads/km;->j6(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ads/lm;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/Rp;

    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/Rp;->j6(Lcom/google/android/gms/internal/ads/Pp;)V
    :try_end_d
    .catch Lcom/google/android/gms/internal/ads/mm; {:try_start_0 .. :try_end_d} :catch_12
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_d} :catch_10
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_d} :catch_e

    return-void

    :catch_e
    move-exception p0

    goto :goto_13

    :catch_10
    move-exception p0

    goto :goto_13

    :catch_12
    move-exception p0

    :goto_13
    const-string p1, "#007 Could not call remote method."

    invoke-static {p1, p0}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static j6(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 7

    sget-object v0, Lcom/google/android/gms/internal/ads/le;->j6:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/google/android/gms/internal/ads/le;->DW:Lcom/google/android/gms/internal/ads/le;

    if-eqz v1, :cond_9

    monitor-exit v0

    return-void

    :cond_9
    new-instance v1, Lcom/google/android/gms/internal/ads/le;

    const-string v2, "Ads"

    const-string v3, "am"

    invoke-static {p0, v2, v3, p1, p2}, Lcom/google/android/gms/measurement/api/AppMeasurementSdk;->getInstance(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lcom/google/android/gms/measurement/api/AppMeasurementSdk;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/le;-><init>(Lcom/google/android/gms/measurement/api/AppMeasurementSdk;)V

    sput-object v1, Lcom/google/android/gms/internal/ads/le;->DW:Lcom/google/android/gms/internal/ads/le;

    new-instance p1, Ljava/lang/Thread;

    new-instance p2, Lcom/google/android/gms/internal/ads/me;

    invoke-direct {p2, p0, v1}, Lcom/google/android/gms/internal/ads/me;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/le;)V

    invoke-direct {p1, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    monitor-exit v0

    return-void

    :catchall_27
    move-exception p0

    monitor-exit v0
    :try_end_29
    .catchall {:try_start_3 .. :try_end_29} :catchall_27

    throw p0
.end method


# virtual methods
.method public final Ak()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/le;->FH:Lcom/google/android/gms/measurement/api/AppMeasurementSdk;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/api/AppMeasurementSdk;->getCurrentScreenClass()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final BT(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/le;->FH:Lcom/google/android/gms/measurement/api/AppMeasurementSdk;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/api/AppMeasurementSdk;->beginAdUnitExposure(Ljava/lang/String;)V

    return-void
.end method

.method public final DW(Labcd/ox;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/le;->FH:Lcom/google/android/gms/measurement/api/AppMeasurementSdk;

    if-eqz p1, :cond_b

    invoke-static {p1}, Labcd/px;->j6(Labcd/ox;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    goto :goto_c

    :cond_b
    const/4 p1, 0x0

    :goto_c
    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/measurement/api/AppMeasurementSdk;->setCurrentScreen(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final DW(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/le;->FH:Lcom/google/android/gms/measurement/api/AppMeasurementSdk;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/measurement/api/AppMeasurementSdk;->clearConditionalUserProperty(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public final EQ(Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/le;->FH:Lcom/google/android/gms/measurement/api/AppMeasurementSdk;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/api/AppMeasurementSdk;->performActionWithResponse(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1
.end method

.method public final Hl()J
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/le;->FH:Lcom/google/android/gms/measurement/api/AppMeasurementSdk;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/api/AppMeasurementSdk;->generateEventId()J

    move-result-wide v0

    return-wide v0
.end method

.method public final Jm()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/le;->FH:Lcom/google/android/gms/measurement/api/AppMeasurementSdk;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/api/AppMeasurementSdk;->getCurrentScreenName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final MP()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/le;->FH:Lcom/google/android/gms/measurement/api/AppMeasurementSdk;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/api/AppMeasurementSdk;->getGmpAppId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final Pa()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/le;->FH:Lcom/google/android/gms/measurement/api/AppMeasurementSdk;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/api/AppMeasurementSdk;->getAppInstanceId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final Zo(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/le;->FH:Lcom/google/android/gms/measurement/api/AppMeasurementSdk;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/measurement/api/AppMeasurementSdk;->getConditionalUserProperties(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/le;->FH:Lcom/google/android/gms/measurement/api/AppMeasurementSdk;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/api/AppMeasurementSdk;->getAppIdOrigin()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final ei(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/le;->FH:Lcom/google/android/gms/measurement/api/AppMeasurementSdk;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/api/AppMeasurementSdk;->endAdUnitExposure(Ljava/lang/String;)V

    return-void
.end method

.method public final gn(Landroid/os/Bundle;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/le;->FH:Lcom/google/android/gms/measurement/api/AppMeasurementSdk;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/api/AppMeasurementSdk;->performAction(Landroid/os/Bundle;)V

    return-void
.end method

.method public final j6(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/Map;
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/le;->FH:Lcom/google/android/gms/measurement/api/AppMeasurementSdk;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/measurement/api/AppMeasurementSdk;->getUserProperties(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public final j6(Ljava/lang/String;Ljava/lang/String;Labcd/ox;)V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/le;->FH:Lcom/google/android/gms/measurement/api/AppMeasurementSdk;

    if-eqz p3, :cond_9

    invoke-static {p3}, Labcd/px;->j6(Labcd/ox;)Ljava/lang/Object;

    move-result-object p3

    goto :goto_a

    :cond_9
    const/4 p3, 0x0

    :goto_a
    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/measurement/api/AppMeasurementSdk;->setUserProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final j6(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/le;->FH:Lcom/google/android/gms/measurement/api/AppMeasurementSdk;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/measurement/api/AppMeasurementSdk;->logEvent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public final ro(Ljava/lang/String;)I
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/le;->FH:Lcom/google/android/gms/measurement/api/AppMeasurementSdk;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/api/AppMeasurementSdk;->getMaxUserProperties(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public final u7(Landroid/os/Bundle;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/le;->FH:Lcom/google/android/gms/measurement/api/AppMeasurementSdk;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/api/AppMeasurementSdk;->setConditionalUserProperty(Landroid/os/Bundle;)V

    return-void
.end method
