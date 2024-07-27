.class final Lcom/google/android/gms/internal/ads/hF;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final j6:Lcom/google/android/gms/internal/ads/gF;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/gF;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/hF;->j6:Lcom/google/android/gms/internal/ads/gF;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/hF;->j6:Lcom/google/android/gms/internal/ads/gF;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/gF;->j6(Lcom/google/android/gms/internal/ads/gF;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/hF;->j6:Lcom/google/android/gms/internal/ads/gF;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/gF;->DW(Lcom/google/android/gms/internal/ads/gF;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/hF;->j6:Lcom/google/android/gms/internal/ads/gF;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/gF;->FH(Lcom/google/android/gms/internal/ads/gF;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/hF;->j6:Lcom/google/android/gms/internal/ads/gF;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/ads/gF;->j6(Lcom/google/android/gms/internal/ads/gF;Z)Z

    const-string v0, "App went background"

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/hF;->j6:Lcom/google/android/gms/internal/ads/gF;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/gF;->Hw(Lcom/google/android/gms/internal/ads/gF;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/iF;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x0

    :try_start_1
    invoke-interface {v0, v3}, Lcom/google/android/gms/internal/ads/iF;->j6(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    const-string v3, ""

    invoke-static {v3, v0}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_0
    :try_start_3
    const-string v0, "App is still foreground"

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;)V

    :cond_1
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return-void
.end method
