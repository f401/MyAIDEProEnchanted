.class public Lio/github/zeroaicy/util/DeleteOnExitHook;
.super Ljava/lang/Object;
.source "DeleteOnExitHook.java"


# static fields
.field private static files:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$smlog(Ljava/lang/String;)V
    .registers 1

    invoke-static {p0}, Lio/github/zeroaicy/util/DeleteOnExitHook;->log(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smrunHooks()V
    .registers 0

    invoke-static {}, Lio/github/zeroaicy/util/DeleteOnExitHook;->runHooks()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 16
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    sput-object v0, Lio/github/zeroaicy/util/DeleteOnExitHook;->files:Ljava/util/LinkedHashSet;

    .line 19
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    new-instance v1, Lio/github/zeroaicy/util/DeleteOnExitHook$1;

    invoke-direct {v1}, Lio/github/zeroaicy/util/DeleteOnExitHook$1;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->addShutdownHook(Ljava/lang/Thread;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static add(Ljava/lang/String;)V
    .registers 2

    const-class v0, Lio/github/zeroaicy/util/DeleteOnExitHook;

    monitor-enter v0

    .line 49
    :try_start_3
    sget-object v0, Lio/github/zeroaicy/util/DeleteOnExitHook;->files:Ljava/util/LinkedHashSet;

    if-eqz v0, :cond_e

    .line 53
    invoke-virtual {v0, p0}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_16

    .line 55
    const-class p0, Lio/github/zeroaicy/util/DeleteOnExitHook;

    monitor-exit p0

    return-void

    .line 51
    :cond_e
    :try_start_e
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Shutdown in progress"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_16
    .catchall {:try_start_e .. :try_end_16} :catchall_16

    :catchall_16
    move-exception p0

    const-class v0, Lio/github/zeroaicy/util/DeleteOnExitHook;

    monitor-exit v0

    throw p0
.end method

.method public static addAll([Ljava/io/File;)V
    .registers 5

    const-class v0, Lio/github/zeroaicy/util/DeleteOnExitHook;

    monitor-enter v0

    .line 36
    :try_start_3
    sget-object v0, Lio/github/zeroaicy/util/DeleteOnExitHook;->files:Ljava/util/LinkedHashSet;

    if-eqz v0, :cond_1f

    .line 40
    array-length v0, p0
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_27

    const/4 v1, 0x0

    :goto_9
    if-ge v1, v0, :cond_1b

    aget-object v2, p0, v1

    if-eqz v2, :cond_18

    .line 42
    :try_start_f
    sget-object v3, Lio/github/zeroaicy/util/DeleteOnExitHook;->files:Ljava/util/LinkedHashSet;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z
    :try_end_18
    .catchall {:try_start_f .. :try_end_18} :catchall_27

    :cond_18
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 46
    :cond_1b
    const-class p0, Lio/github/zeroaicy/util/DeleteOnExitHook;

    monitor-exit p0

    return-void

    .line 38
    :cond_1f
    :try_start_1f
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Shutdown in progress"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_27
    .catchall {:try_start_1f .. :try_end_27} :catchall_27

    :catchall_27
    move-exception p0

    const-class v0, Lio/github/zeroaicy/util/DeleteOnExitHook;

    monitor-exit v0

    goto :goto_2d

    :goto_2c
    throw p0

    :goto_2d
    goto :goto_2c
.end method

.method private static log(Ljava/lang/String;)V
    .registers 2

    .line 33
    const-string v0, "DeleteOnExitHook"

    invoke-static {v0, p0}, Lio/github/zeroaicy/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static runHooks()V
    .registers 3

    .line 57
    const-string v0, "runHooks-开始"

    invoke-static {v0}, Lio/github/zeroaicy/util/DeleteOnExitHook;->log(Ljava/lang/String;)V

    .line 61
    const-class v0, Lio/github/zeroaicy/util/DeleteOnExitHook;

    monitor-enter v0

    .line 62
    :try_start_8
    sget-object v0, Lio/github/zeroaicy/util/DeleteOnExitHook;->files:Ljava/util/LinkedHashSet;

    .line 63
    const/4 v1, 0x0

    sput-object v1, Lio/github/zeroaicy/util/DeleteOnExitHook;->files:Ljava/util/LinkedHashSet;

    .line 64
    const-class v1, Lio/github/zeroaicy/util/DeleteOnExitHook;

    monitor-exit v1
    :try_end_10
    .catchall {:try_start_8 .. :try_end_10} :catchall_37

    .line 66
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 70
    invoke-static {v1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 72
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_31

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 73
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    goto :goto_1c

    .line 75
    :cond_31
    const-string v0, "runHooks-END"

    invoke-static {v0}, Lio/github/zeroaicy/util/DeleteOnExitHook;->log(Ljava/lang/String;)V

    return-void

    :catchall_37
    move-exception v0

    .line 64
    :try_start_38
    const-class v1, Lio/github/zeroaicy/util/DeleteOnExitHook;

    monitor-exit v1
    :try_end_3b
    .catchall {:try_start_38 .. :try_end_3b} :catchall_37

    goto :goto_3d

    :goto_3c
    throw v0

    :goto_3d
    goto :goto_3c
.end method
