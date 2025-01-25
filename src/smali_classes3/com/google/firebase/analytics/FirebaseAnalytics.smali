.class public final Lcom/google/firebase/analytics/FirebaseAnalytics;
.super Ljava/lang/Object;


# static fields
.field private static volatile j6:Lcom/google/firebase/analytics/FirebaseAnalytics;


# instance fields
.field private final DW:Lcom/google/android/gms/measurement/internal/zzbw;

.field private final FH:Ljava/lang/Object;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/measurement/internal/zzbw;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/r;->j6(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/firebase/analytics/FirebaseAnalytics;->DW:Lcom/google/android/gms/measurement/internal/zzbw;

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/analytics/FirebaseAnalytics;->FH:Ljava/lang/Object;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/google/firebase/analytics/FirebaseAnalytics;
    .registers 2

    sget-object v0, Lcom/google/firebase/analytics/FirebaseAnalytics;->j6:Lcom/google/firebase/analytics/FirebaseAnalytics;

    if-nez v0, :cond_20

    const-class v0, Lcom/google/firebase/analytics/FirebaseAnalytics;

    monitor-enter v0

    :try_start_7
    sget-object v0, Lcom/google/firebase/analytics/FirebaseAnalytics;->j6:Lcom/google/firebase/analytics/FirebaseAnalytics;

    if-nez v0, :cond_17

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/android/gms/measurement/internal/zzbw;->zza(Landroid/content/Context;Lcom/google/android/gms/measurement/internal/zzan;)Lcom/google/android/gms/measurement/internal/zzbw;

    move-result-object p0

    new-instance v0, Lcom/google/firebase/analytics/FirebaseAnalytics;

    invoke-direct {v0, p0}, Lcom/google/firebase/analytics/FirebaseAnalytics;-><init>(Lcom/google/android/gms/measurement/internal/zzbw;)V

    sput-object v0, Lcom/google/firebase/analytics/FirebaseAnalytics;->j6:Lcom/google/firebase/analytics/FirebaseAnalytics;

    :cond_17
    const-class p0, Lcom/google/firebase/analytics/FirebaseAnalytics;

    monitor-exit p0

    goto :goto_20

    :catchall_1b
    move-exception p0

    const-class v0, Lcom/google/firebase/analytics/FirebaseAnalytics;

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_7 .. :try_end_1f} :catchall_1b

    throw p0

    :cond_20
    :goto_20
    sget-object p0, Lcom/google/firebase/analytics/FirebaseAnalytics;->j6:Lcom/google/firebase/analytics/FirebaseAnalytics;

    return-object p0
.end method


# virtual methods
.method public final getFirebaseInstanceId()Ljava/lang/String;
    .registers 2

    invoke-static {}, Lcom/google/firebase/iid/FirebaseInstanceId;->DW()Lcom/google/firebase/iid/FirebaseInstanceId;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/iid/FirebaseInstanceId;->j6()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final j6(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 4

    iget-object v0, p0, Lcom/google/firebase/analytics/FirebaseAnalytics;->DW:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbw;->zzkm()Lcom/google/android/gms/measurement/AppMeasurement;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/measurement/AppMeasurement;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public final j6(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/google/firebase/analytics/FirebaseAnalytics;->DW:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbw;->zzkm()Lcom/google/android/gms/measurement/AppMeasurement;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/measurement/AppMeasurement;->setUserProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final j6(Z)V
    .registers 3

    iget-object v0, p0, Lcom/google/firebase/analytics/FirebaseAnalytics;->DW:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbw;->zzkm()Lcom/google/android/gms/measurement/AppMeasurement;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/AppMeasurement;->setMeasurementEnabled(Z)V

    return-void
.end method

.method public final setCurrentScreen(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzn;->isMainThread()Z

    move-result v0

    if-nez v0, :cond_16

    iget-object p1, p0, Lcom/google/firebase/analytics/FirebaseAnalytics;->DW:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzas;->zzjj()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object p1

    const-string p2, "setCurrentScreen must be called from the main thread"

    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/zzau;->zzby(Ljava/lang/String;)V

    return-void

    :cond_16
    iget-object v0, p0, Lcom/google/firebase/analytics/FirebaseAnalytics;->DW:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgm()Lcom/google/android/gms/measurement/internal/zzdy;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/measurement/internal/zzdy;->setCurrentScreen(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
