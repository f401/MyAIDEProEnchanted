.class final Lcom/google/android/gms/internal/ads/dx;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final j6:Lcom/google/android/gms/internal/ads/cx;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/cx;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/dx;->j6:Lcom/google/android/gms/internal/ads/cx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 7

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dx;->j6:Lcom/google/android/gms/internal/ads/cx;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/cx;->v5:Ljava/lang/Boolean;

    if-eqz v0, :cond_7

    return-void

    :cond_7
    invoke-static {}, Lcom/google/android/gms/internal/ads/cx;->j6()Landroid/os/ConditionVariable;

    move-result-object v0

    monitor-enter v0

    :try_start_c
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dx;->j6:Lcom/google/android/gms/internal/ads/cx;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/cx;->v5:Ljava/lang/Boolean;

    if-eqz v1, :cond_14

    monitor-exit v0

    return-void

    :cond_14
    sget-object v1, Lcom/google/android/gms/internal/ads/p;->T6:Lcom/google/android/gms/internal/ads/e;

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->v5()Lcom/google/android/gms/internal/ads/m;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/m;->j6(Lcom/google/android/gms/internal/ads/e;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_24
    .catchall {:try_start_c .. :try_end_24} :catchall_4c

    if-eqz v1, :cond_3b

    :try_start_26
    new-instance v2, Lcom/google/android/gms/internal/ads/zzur;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/dx;->j6:Lcom/google/android/gms/internal/ads/cx;

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/cx;->j6(Lcom/google/android/gms/internal/ads/cx;)Lcom/google/android/gms/internal/ads/Ax;

    move-result-object v3

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/Ax;->DW:Landroid/content/Context;

    const-string v4, "ADSHIELD"

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Lcom/google/android/gms/internal/ads/zzur;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/google/android/gms/internal/ads/cx;->DW:Lcom/google/android/gms/internal/ads/zzur;
    :try_end_38
    .catchall {:try_start_26 .. :try_end_38} :catchall_39

    goto :goto_3b

    :catchall_39
    move-exception v1

    const/4 v1, 0x0

    :cond_3b
    :goto_3b
    :try_start_3b
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dx;->j6:Lcom/google/android/gms/internal/ads/cx;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v2, Lcom/google/android/gms/internal/ads/cx;->v5:Ljava/lang/Boolean;

    invoke-static {}, Lcom/google/android/gms/internal/ads/cx;->j6()Landroid/os/ConditionVariable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/ConditionVariable;->open()V

    monitor-exit v0

    return-void

    :catchall_4c
    move-exception v1

    monitor-exit v0
    :try_end_4e
    .catchall {:try_start_3b .. :try_end_4e} :catchall_4c

    throw v1
.end method
