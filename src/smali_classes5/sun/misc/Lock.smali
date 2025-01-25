.class public Lsun/misc/Lock;
.super Ljava/lang/Object;
.source "Lock.java"


# instance fields
.field private locked:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    const/4 v0, 0x0

    iput-boolean v0, p0, Lsun/misc/Lock;->locked:Z

    .line 68
    return-void
.end method


# virtual methods
.method public final lock()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    monitor-enter p0

    .line 79
    :goto_1
    :try_start_1
    iget-boolean v0, p0, Lsun/misc/Lock;->locked:Z

    if-eqz v0, :cond_c

    .line 80
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_9

    goto :goto_1

    .line 78
    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0

    .line 82
    :cond_c
    const/4 v0, 0x1

    :try_start_d
    iput-boolean v0, p0, Lsun/misc/Lock;->locked:Z
    :try_end_f
    .catchall {:try_start_d .. :try_end_f} :catchall_9

    .line 83
    monitor-exit p0

    return-void
.end method

.method public final unlock()V
    .registers 2

    monitor-enter p0

    .line 90
    const/4 v0, 0x0

    :try_start_2
    iput-boolean v0, p0, Lsun/misc/Lock;->locked:Z

    .line 91
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_9

    .line 92
    monitor-exit p0

    return-void

    .line 89
    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method
