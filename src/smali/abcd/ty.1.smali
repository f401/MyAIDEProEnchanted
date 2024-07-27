.class public Labcd/ty;
.super Ljava/lang/Object;

# interfaces
.implements Labcd/sy;


# static fields
.field private static volatile j6:Labcd/sy;


# instance fields
.field private final DW:Lcom/google/android/gms/measurement/AppMeasurement;

.field final FH:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/android/gms/measurement/AppMeasurement;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/r;->j6(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Labcd/ty;->DW:Lcom/google/android/gms/measurement/AppMeasurement;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Labcd/ty;->FH:Ljava/util/Map;

    return-void
.end method

.method public static j6(Lcom/google/firebase/FirebaseApp;Landroid/content/Context;Labcd/zy;)Labcd/sy;
    .registers 7

    invoke-static {p0}, Lcom/google/android/gms/common/internal/r;->j6(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Lcom/google/android/gms/common/internal/r;->j6(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lcom/google/android/gms/common/internal/r;->j6(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/r;->j6(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Labcd/ty;->j6:Labcd/sy;

    if-nez v0, :cond_2

    const-class v0, Labcd/ty;

    monitor-enter v0

    :try_start_0
    sget-object v0, Labcd/ty;->j6:Labcd/sy;

    if-nez v0, :cond_1

    new-instance v0, Landroid/os/Bundle;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(I)V

    invoke-virtual {p0}, Lcom/google/firebase/FirebaseApp;->Hw()Z

    move-result v1

    if-eqz v1, :cond_0

    const-class v1, Lcom/google/firebase/a;

    sget-object v2, Labcd/uy;->j6:Ljava/util/concurrent/Executor;

    sget-object v3, Labcd/vy;->j6:Labcd/xy;

    invoke-interface {p2, v1, v2, v3}, Labcd/zy;->j6(Ljava/lang/Class;Ljava/util/concurrent/Executor;Labcd/xy;)V

    const-string v1, "dataCollectionDefaultEnabled"

    invoke-virtual {p0}, Lcom/google/firebase/FirebaseApp;->isDataCollectionDefaultEnabled()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_0
    new-instance v1, Labcd/ty;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzan;->zzc(Landroid/os/Bundle;)Lcom/google/android/gms/measurement/internal/zzan;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/android/gms/measurement/internal/zzbw;->zza(Landroid/content/Context;Lcom/google/android/gms/measurement/internal/zzan;)Lcom/google/android/gms/measurement/internal/zzbw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbw;->zzkm()Lcom/google/android/gms/measurement/AppMeasurement;

    move-result-object v0

    invoke-direct {v1, v0}, Labcd/ty;-><init>(Lcom/google/android/gms/measurement/AppMeasurement;)V

    sput-object v1, Labcd/ty;->j6:Labcd/sy;

    :cond_1
    const-class v0, Labcd/ty;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    sget-object v0, Labcd/ty;->j6:Labcd/sy;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    const-class v1, Labcd/ty;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static final synthetic j6(Labcd/wy;)V
    .registers 3

    invoke-virtual {p0}, Labcd/wy;->j6()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/a;

    iget-boolean v1, v0, Lcom/google/firebase/a;->j6:Z

    const-class v0, Labcd/ty;

    monitor-enter v0

    :try_start_0
    sget-object v0, Labcd/ty;->j6:Labcd/sy;

    check-cast v0, Labcd/ty;

    iget-object v0, v0, Labcd/ty;->DW:Lcom/google/android/gms/measurement/AppMeasurement;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/AppMeasurement;->zzd(Z)V

    const-class v0, Labcd/ty;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v0

    const-class v1, Labcd/ty;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
