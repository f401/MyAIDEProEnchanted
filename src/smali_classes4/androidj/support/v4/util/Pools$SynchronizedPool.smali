.class public Landroidj/support/v4/util/Pools$SynchronizedPool;
.super Landroidj/support/v4/util/Pools$SimplePool;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidj/support/v4/util/Pools;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SynchronizedPool"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroidj/support/v4/util/Pools$SimplePool",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final mLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .registers 3

    invoke-direct {p0, p1}, Landroidj/support/v4/util/Pools$SimplePool;-><init>(I)V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidj/support/v4/util/Pools$SynchronizedPool;->mLock:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public acquire()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v1, p0, Landroidj/support/v4/util/Pools$SynchronizedPool;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    invoke-super {p0}, Landroidj/support/v4/util/Pools$SimplePool;->acquire()Ljava/lang/Object;

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_9
    move-exception v0

    monitor-exit v1
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw v0
.end method

.method public release(Ljava/lang/Object;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    iget-object v1, p0, Landroidj/support/v4/util/Pools$SynchronizedPool;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    invoke-super {p0, p1}, Landroidj/support/v4/util/Pools$SimplePool;->release(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1

    return v0

    :catchall_9
    move-exception v0

    monitor-exit v1
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw v0
.end method
