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
    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lsun/misc/Lock;->locked:Z

    if-eqz v0, :cond_0

    .line 80
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 78
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 82
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lsun/misc/Lock;->locked:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 83
    monitor-exit p0

    return-void
.end method

.method public final unlock()V
    .registers 2

    monitor-enter p0

    .line 90
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lsun/misc/Lock;->locked:Z

    .line 91
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    monitor-exit p0

    return-void

    .line 89
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
