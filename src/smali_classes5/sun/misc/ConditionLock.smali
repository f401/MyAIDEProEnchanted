.class public final Lsun/misc/ConditionLock;
.super Lsun/misc/Lock;
.source "ConditionLock.java"


# instance fields
.field private state:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 48
    invoke-direct {p0}, Lsun/misc/Lock;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput v0, p0, Lsun/misc/ConditionLock;->state:I

    .line 49
    return-void
.end method

.method public constructor <init>(I)V
    .registers 3

    .line 54
    invoke-direct {p0}, Lsun/misc/Lock;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput v0, p0, Lsun/misc/ConditionLock;->state:I

    .line 55
    iput p1, p0, Lsun/misc/ConditionLock;->state:I

    .line 56
    return-void
.end method


# virtual methods
.method public lockWhen(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    monitor-enter p0

    .line 68
    :goto_1
    :try_start_1
    iget v0, p0, Lsun/misc/ConditionLock;->state:I

    if-eq v0, p1, :cond_c

    .line 69
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_9

    goto :goto_1

    .line 67
    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0

    .line 71
    :cond_c
    :try_start_c
    invoke-virtual {p0}, Lsun/misc/ConditionLock;->lock()V
    :try_end_f
    .catchall {:try_start_c .. :try_end_f} :catchall_9

    .line 72
    monitor-exit p0

    return-void
.end method

.method public unlockWith(I)V
    .registers 3

    monitor-enter p0

    .line 79
    :try_start_1
    iput p1, p0, Lsun/misc/ConditionLock;->state:I

    .line 80
    invoke-virtual {p0}, Lsun/misc/ConditionLock;->unlock()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 81
    monitor-exit p0

    return-void

    .line 78
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method
