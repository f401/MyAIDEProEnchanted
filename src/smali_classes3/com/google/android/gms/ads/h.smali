.class public final Lcom/google/android/gms/ads/h;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zh;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/ads/h$a;
    }
.end annotation


# instance fields
.field private DW:Lcom/google/android/gms/internal/ads/kI;

.field private FH:Lcom/google/android/gms/ads/h$a;

.field private final j6:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/h;->j6:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final j6()Lcom/google/android/gms/internal/ads/kI;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/ads/h;->j6:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/ads/h;->DW:Lcom/google/android/gms/internal/ads/kI;

    monitor-exit v0

    return-object v1

    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public final j6(Lcom/google/android/gms/ads/h$a;)V
    .registers 5

    const-string v0, "VideoLifecycleCallbacks may not be null."

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/r;->j6(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/ads/h;->j6:Ljava/lang/Object;

    monitor-enter v0

    :try_start_8
    iput-object p1, p0, Lcom/google/android/gms/ads/h;->FH:Lcom/google/android/gms/ads/h$a;

    iget-object v1, p0, Lcom/google/android/gms/ads/h;->DW:Lcom/google/android/gms/internal/ads/kI;

    if-nez v1, :cond_10

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_8 .. :try_end_f} :catchall_21

    return-void

    :cond_10
    :try_start_10
    new-instance v2, Lcom/google/android/gms/internal/ads/FI;

    invoke-direct {v2, p1}, Lcom/google/android/gms/internal/ads/FI;-><init>(Lcom/google/android/gms/ads/h$a;)V

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/kI;->j6(Lcom/google/android/gms/internal/ads/nI;)V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_18} :catch_19
    .catchall {:try_start_10 .. :try_end_18} :catchall_21

    goto :goto_1f

    :catch_19
    move-exception p1

    :try_start_1a
    const-string v1, "Unable to call setVideoLifecycleCallbacks on video controller."

    invoke-static {v1, p1}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1f
    monitor-exit v0

    return-void

    :catchall_21
    move-exception p1

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_1a .. :try_end_23} :catchall_21

    throw p1
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/kI;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/ads/h;->j6:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iput-object p1, p0, Lcom/google/android/gms/ads/h;->DW:Lcom/google/android/gms/internal/ads/kI;

    iget-object p1, p0, Lcom/google/android/gms/ads/h;->FH:Lcom/google/android/gms/ads/h$a;

    if-eqz p1, :cond_c

    invoke-virtual {p0, p1}, Lcom/google/android/gms/ads/h;->j6(Lcom/google/android/gms/ads/h$a;)V

    :cond_c
    monitor-exit v0

    return-void

    :catchall_e
    move-exception p1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw p1
.end method
