.class final Lcom/google/android/gms/internal/ads/Im;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zh;
.end annotation


# instance fields
.field private final DW:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private FH:Z

.field private final j6:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Im;->j6:Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Im;->DW:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/Im;->FH:Z

    return-void
.end method


# virtual methods
.method public final j6()V
    .registers 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Im;->j6:Ljava/lang/Object;

    monitor-enter v1

    :try_start_8
    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/Im;->FH:Z

    if-eqz v2, :cond_e

    monitor-exit v1

    return-void

    :cond_e
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Im;->DW:Ljava/util/List;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Im;->DW:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/Im;->FH:Z

    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_8 .. :try_end_1c} :catchall_30

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_21
    if-ge v2, v1, :cond_2f

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Ljava/lang/Runnable;

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    goto :goto_21

    :cond_2f
    return-void

    :catchall_30
    move-exception v0

    :try_start_31
    monitor-exit v1
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_30

    goto :goto_34

    :goto_33
    throw v0

    :goto_34
    goto :goto_33
.end method

.method public final j6(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Im;->j6:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/Im;->FH:Z

    if-eqz v1, :cond_b

    invoke-interface {p2, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_15

    :cond_b
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Im;->DW:Ljava/util/List;

    new-instance v2, Lcom/google/android/gms/internal/ads/Jm;

    invoke-direct {v2, p2, p1}, Lcom/google/android/gms/internal/ads/Jm;-><init>(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_15
    monitor-exit v0

    return-void

    :catchall_17
    move-exception p1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw p1
.end method
