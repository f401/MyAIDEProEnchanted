.class public abstract Lsun/misc/Ref;
.super Ljava/lang/Object;
.source "Ref.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private soft:Ljava/lang/ref/SoftReference;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lsun/misc/Ref;->soft:Ljava/lang/ref/SoftReference;

    .line 113
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .registers 3

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lsun/misc/Ref;->soft:Ljava/lang/ref/SoftReference;

    .line 119
    invoke-virtual {p0, p1}, Lsun/misc/Ref;->setThing(Ljava/lang/Object;)V

    .line 120
    return-void
.end method


# virtual methods
.method public check()Ljava/lang/Object;
    .registers 2

    monitor-enter p0

    .line 105
    :try_start_0
    iget-object v0, p0, Lsun/misc/Ref;->soft:Ljava/lang/ref/SoftReference;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    if-nez v0, :cond_0

    monitor-exit p0

    const/4 v0, 0x0

    .line 107
    :goto_0
    return-object v0

    :cond_0
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    monitor-exit p0

    goto :goto_0

    .line 104
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public flush()V
    .registers 2

    monitor-enter p0

    .line 87
    :try_start_0
    iget-object v0, p0, Lsun/misc/Ref;->soft:Ljava/lang/ref/SoftReference;

    .line 88
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->clear()V

    .line 89
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lsun/misc/Ref;->soft:Ljava/lang/ref/SoftReference;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    monitor-exit p0

    return-void

    .line 86
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public get()Ljava/lang/Object;
    .registers 2

    monitor-enter p0

    .line 62
    :try_start_0
    invoke-virtual {p0}, Lsun/misc/Ref;->check()Ljava/lang/Object;

    move-result-object v0

    .line 63
    if-nez v0, :cond_0

    .line 64
    invoke-virtual {p0}, Lsun/misc/Ref;->reconstitute()Ljava/lang/Object;

    move-result-object v0

    .line 65
    invoke-virtual {p0, v0}, Lsun/misc/Ref;->setThing(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    :cond_0
    monitor-exit p0

    return-object v0

    .line 61
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public abstract reconstitute()Ljava/lang/Object;
.end method

.method public setThing(Ljava/lang/Object;)V
    .registers 3

    monitor-enter p0

    .line 97
    :try_start_0
    invoke-virtual {p0}, Lsun/misc/Ref;->flush()V

    .line 98
    new-instance v0, Ljava/lang/ref/SoftReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lsun/misc/Ref;->soft:Ljava/lang/ref/SoftReference;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    monitor-exit p0

    return-void

    .line 96
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
