.class public Lio/github/zeroaicy/util/DeleteOnExitHook;
.super Ljava/lang/Object;
.source "DeleteOnExitHook.java"


# static fields
.field private static files:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$smlog(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lio/github/zeroaicy/util/DeleteOnExitHook;->log(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smrunHooks()V
    .locals 0

    invoke-static {}, Lio/github/zeroaicy/util/DeleteOnExitHook;->runHooks()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

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
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static add(Ljava/lang/String;)V
    .locals 2

    const-class v0, Lio/github/zeroaicy/util/DeleteOnExitHook;

    monitor-enter v0

    .line 49
    :try_start_0
    sget-object v0, Lio/github/zeroaicy/util/DeleteOnExitHook;->files:Ljava/util/LinkedHashSet;

    if-eqz v0, :cond_0

    .line 53
    invoke-virtual {v0, p0}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    const-class v0, Lio/github/zeroaicy/util/DeleteOnExitHook;

    monitor-exit v0

    return-void

    .line 51
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Shutdown in progress"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    const-class v1, Lio/github/zeroaicy/util/DeleteOnExitHook;

    monitor-exit v1

    throw v0
.end method

.method public static addAll([Ljava/io/File;)V
    .locals 4

    const-class v0, Lio/github/zeroaicy/util/DeleteOnExitHook;

    monitor-enter v0

    .line 36
    :try_start_0
    sget-object v0, Lio/github/zeroaicy/util/DeleteOnExitHook;->files:Ljava/util/LinkedHashSet;

    if-eqz v0, :cond_2

    .line 40
    array-length v1, p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    aget-object v2, p0, v0

    if-eqz v2, :cond_0

    .line 42
    :try_start_1
    sget-object v3, Lio/github/zeroaicy/util/DeleteOnExitHook;->files:Ljava/util/LinkedHashSet;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 46
    :cond_1
    const-class v0, Lio/github/zeroaicy/util/DeleteOnExitHook;

    monitor-exit v0

    return-void

    .line 38
    :cond_2
    :try_start_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Shutdown in progress"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    const-class v1, Lio/github/zeroaicy/util/DeleteOnExitHook;

    monitor-exit v1

    throw v0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1

    .line 33
    const-string v0, "DeleteOnExitHook"

    invoke-static {v0, p0}, Lio/github/zeroaicy/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static runHooks()V
    .locals 3

    .line 57
    const-string v0, "runHooks-\u5f00\u59cb"

    invoke-static {v0}, Lio/github/zeroaicy/util/DeleteOnExitHook;->log(Ljava/lang/String;)V

    .line 61
    const-class v0, Lio/github/zeroaicy/util/DeleteOnExitHook;

    monitor-enter v0

    .line 62
    :try_start_0
    sget-object v0, Lio/github/zeroaicy/util/DeleteOnExitHook;->files:Ljava/util/LinkedHashSet;

    .line 63
    const/4 v1, 0x0

    sput-object v1, Lio/github/zeroaicy/util/DeleteOnExitHook;->files:Ljava/util/LinkedHashSet;

    .line 64
    const-class v1, Lio/github/zeroaicy/util/DeleteOnExitHook;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 70
    invoke-static {v1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 72
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 73
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 75
    :cond_0
    const-string v0, "runHooks-END"

    invoke-static {v0}, Lio/github/zeroaicy/util/DeleteOnExitHook;->log(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v0

    .line 64
    :try_start_1
    const-class v1, Lio/github/zeroaicy/util/DeleteOnExitHook;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
