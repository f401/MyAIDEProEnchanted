.class public Lcom/google/android/gms/internal/ads/Xm;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/Tm;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zh;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/Tm<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private DW:I

.field private final FH:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/google/android/gms/internal/ads/Ym;",
            ">;"
        }
    .end annotation
.end field

.field private Hw:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final j6:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Xm;->j6:Ljava/lang/Object;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/Xm;->DW:I

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Xm;->FH:Ljava/util/concurrent/BlockingQueue;

    return-void
.end method


# virtual methods
.method public final DW()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Xm;->j6:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget v1, p0, Lcom/google/android/gms/internal/ads/Xm;->DW:I

    if-nez v1, :cond_29

    const/4 v1, -0x1

    iput v1, p0, Lcom/google/android/gms/internal/ads/Xm;->DW:I

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Xm;->FH:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1}, Ljava/util/concurrent/BlockingQueue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_22

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/Ym;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/Ym;->DW:Lcom/google/android/gms/internal/ads/Um;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/Um;->run()V

    goto :goto_10

    :cond_22
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Xm;->FH:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1}, Ljava/util/concurrent/BlockingQueue;->clear()V

    monitor-exit v0

    return-void

    :cond_29
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v1

    :catchall_2f
    move-exception v1

    monitor-exit v0
    :try_end_31
    .catchall {:try_start_3 .. :try_end_31} :catchall_2f

    goto :goto_33

    :goto_32
    throw v1

    :goto_33
    goto :goto_32
.end method

.method public final j6()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/Xm;->DW:I

    return v0
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/Wm;Lcom/google/android/gms/internal/ads/Um;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/Wm<",
            "TT;>;",
            "Lcom/google/android/gms/internal/ads/Um;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Xm;->j6:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget v1, p0, Lcom/google/android/gms/internal/ads/Xm;->DW:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_e

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/Xm;->Hw:Ljava/lang/Object;

    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/Wm;->j6(Ljava/lang/Object;)V

    goto :goto_21

    :cond_e
    const/4 v2, -0x1

    if-ne v1, v2, :cond_15

    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/Um;->run()V

    goto :goto_21

    :cond_15
    if-nez v1, :cond_21

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Xm;->FH:Ljava/util/concurrent/BlockingQueue;

    new-instance v2, Lcom/google/android/gms/internal/ads/Ym;

    invoke-direct {v2, p0, p1, p2}, Lcom/google/android/gms/internal/ads/Ym;-><init>(Lcom/google/android/gms/internal/ads/Xm;Lcom/google/android/gms/internal/ads/Wm;Lcom/google/android/gms/internal/ads/Um;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    :cond_21
    :goto_21
    monitor-exit v0

    return-void

    :catchall_23
    move-exception p1

    monitor-exit v0
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_23

    throw p1
.end method

.method public final j6(Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Xm;->j6:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget v1, p0, Lcom/google/android/gms/internal/ads/Xm;->DW:I

    if-nez v1, :cond_2b

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Xm;->Hw:Ljava/lang/Object;

    const/4 v1, 0x1

    iput v1, p0, Lcom/google/android/gms/internal/ads/Xm;->DW:I

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Xm;->FH:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1}, Ljava/util/concurrent/BlockingQueue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_24

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/Ym;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/Ym;->j6:Lcom/google/android/gms/internal/ads/Wm;

    invoke-interface {v2, p1}, Lcom/google/android/gms/internal/ads/Wm;->j6(Ljava/lang/Object;)V

    goto :goto_12

    :cond_24
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/Xm;->FH:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {p1}, Ljava/util/concurrent/BlockingQueue;->clear()V

    monitor-exit v0

    return-void

    :cond_2b
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :catchall_31
    move-exception p1

    monitor-exit v0
    :try_end_33
    .catchall {:try_start_3 .. :try_end_33} :catchall_31

    goto :goto_35

    :goto_34
    throw p1

    :goto_35
    goto :goto_34
.end method
