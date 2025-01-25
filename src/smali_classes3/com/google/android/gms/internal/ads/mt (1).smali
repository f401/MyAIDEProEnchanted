.class final Lcom/google/android/gms/internal/ads/mt;
.super Lcom/google/android/gms/internal/ads/jt;


# instance fields
.field private final DW:Lcom/google/android/gms/internal/ads/kt;


# direct methods
.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/jt;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/kt;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/kt;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/mt;->DW:Lcom/google/android/gms/internal/ads/kt;

    return-void
.end method


# virtual methods
.method public final j6(Ljava/lang/Throwable;)V
    .registers 6

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/mt;->DW:Lcom/google/android/gms/internal/ads/kt;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/ads/kt;->j6(Ljava/lang/Throwable;Z)Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_d

    return-void

    :cond_d
    monitor-enter p1

    :try_start_e
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_29

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Throwable;

    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v3, "Suppressed: "

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_12

    :cond_29
    monitor-exit p1

    return-void

    :catchall_2b
    move-exception v0

    monitor-exit p1
    :try_end_2d
    .catchall {:try_start_e .. :try_end_2d} :catchall_2b

    goto :goto_2f

    :goto_2e
    throw v0

    :goto_2f
    goto :goto_2e
.end method

.method public final j6(Ljava/lang/Throwable;Ljava/io/PrintWriter;)V
    .registers 6

    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/mt;->DW:Lcom/google/android/gms/internal/ads/kt;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/ads/kt;->j6(Ljava/lang/Throwable;Z)Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_d

    return-void

    :cond_d
    monitor-enter p1

    :try_start_e
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_27

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Throwable;

    const-string v2, "Suppressed: "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    goto :goto_12

    :cond_27
    monitor-exit p1

    return-void

    :catchall_29
    move-exception p2

    monitor-exit p1
    :try_end_2b
    .catchall {:try_start_e .. :try_end_2b} :catchall_29

    goto :goto_2d

    :goto_2c
    throw p2

    :goto_2d
    goto :goto_2c
.end method
