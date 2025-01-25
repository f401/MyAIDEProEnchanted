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
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/android/gms/measurement/AppMeasurement;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/r;->j6(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Labcd/ty;->DW:Lcom/google/android/gms/measurement/AppMeasurement;

    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Labcd/ty;->FH:Ljava/util/Map;

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

    if-nez v0, :cond_55

    const-class v0, Labcd/ty;

    monitor-enter v0

    :try_start_17
    sget-object v0, Labcd/ty;->j6:Labcd/sy;

    if-nez v0, :cond_4c

    new-instance v0, Landroid/os/Bundle;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(I)V

    invoke-virtual {p0}, Lcom/google/firebase/FirebaseApp;->Hw()Z

    move-result v1

    if-eqz v1, :cond_39

    const-class v1, Lcom/google/firebase/a;

    sget-object v2, Labcd/uy;->j6:Ljava/util/concurrent/Executor;

    sget-object v3, Labcd/vy;->j6:Labcd/xy;

    invoke-interface {p2, v1, v2, v3}, Labcd/zy;->j6(Ljava/lang/Class;Ljava/util/concurrent/Executor;Labcd/xy;)V

    const-string p2, "dataCollectionDefaultEnabled"

    invoke-virtual {p0}, Lcom/google/firebase/FirebaseApp;->isDataCollectionDefaultEnabled()Z

    move-result p0

    invoke-virtual {v0, p2, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_39
    new-instance p0, Labcd/ty;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzan;->zzc(Landroid/os/Bundle;)Lcom/google/android/gms/measurement/internal/zzan;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/google/android/gms/measurement/internal/zzbw;->zza(Landroid/content/Context;Lcom/google/android/gms/measurement/internal/zzan;)Lcom/google/android/gms/measurement/internal/zzbw;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzbw;->zzkm()Lcom/google/android/gms/measurement/AppMeasurement;

    move-result-object p1

    invoke-direct {p0, p1}, Labcd/ty;-><init>(Lcom/google/android/gms/measurement/AppMeasurement;)V

    sput-object p0, Labcd/ty;->j6:Labcd/sy;

    :cond_4c
    const-class p0, Labcd/ty;

    monitor-exit p0

    goto :goto_55

    :catchall_50
    move-exception p0

    const-class p1, Labcd/ty;

    monitor-exit p1
    :try_end_54
    .catchall {:try_start_17 .. :try_end_54} :catchall_50

    throw p0

    :cond_55
    :goto_55
    sget-object p0, Labcd/ty;->j6:Labcd/sy;

    return-object p0
.end method

.method static final synthetic j6(Labcd/wy;)V
    .registers 2

    invoke-virtual {p0}, Labcd/wy;->j6()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/a;

    iget-boolean p0, p0, Lcom/google/firebase/a;->j6:Z

    const-class v0, Labcd/ty;

    monitor-enter v0

    :try_start_b
    sget-object v0, Labcd/ty;->j6:Labcd/sy;

    check-cast v0, Labcd/ty;

    iget-object v0, v0, Labcd/ty;->DW:Lcom/google/android/gms/measurement/AppMeasurement;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/measurement/AppMeasurement;->zzd(Z)V

    const-class p0, Labcd/ty;

    monitor-exit p0

    return-void

    :catchall_18
    move-exception p0

    const-class v0, Labcd/ty;

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_b .. :try_end_1c} :catchall_18

    throw p0
.end method
