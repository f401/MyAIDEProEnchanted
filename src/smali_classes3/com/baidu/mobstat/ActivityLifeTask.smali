.class public Lcom/baidu/mobstat/ActivityLifeTask;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Z

.field private static b:Lcom/baidu/mobstat/ActivityLifeObserver$IActivityLifeCallback;

.field private static c:Lcom/baidu/mobstat/ActivityLifeObserver$IActivityLifeCallback;

.field private static d:Lcom/baidu/mobstat/ActivityLifeObserver$IActivityLifeCallback;

.field private static e:Lcom/baidu/mobstat/ActivityLifeObserver$IActivityLifeCallback;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 10
    const/4 v0, 0x0

    sput-boolean v0, Lcom/baidu/mobstat/ActivityLifeTask;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/Context;)V
    .registers 3

    .line 57
    const-class v0, Lcom/baidu/mobstat/ActivityLifeTask;

    monitor-enter v0

    :try_start_0
    new-instance v0, Lcom/baidu/mobstat/AutoTrack$MyActivityLifeCallback;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/baidu/mobstat/AutoTrack$MyActivityLifeCallback;-><init>(I)V

    sput-object v0, Lcom/baidu/mobstat/ActivityLifeTask;->b:Lcom/baidu/mobstat/ActivityLifeObserver$IActivityLifeCallback;

    .line 58
    new-instance v0, Lcom/baidu/mobstat/bz$a;

    invoke-direct {v0}, Lcom/baidu/mobstat/bz$a;-><init>()V

    sput-object v0, Lcom/baidu/mobstat/ActivityLifeTask;->d:Lcom/baidu/mobstat/ActivityLifeObserver$IActivityLifeCallback;

    .line 59
    new-instance v0, Lcom/baidu/mobstat/cq$a;

    invoke-direct {v0}, Lcom/baidu/mobstat/cq$a;-><init>()V

    sput-object v0, Lcom/baidu/mobstat/ActivityLifeTask;->c:Lcom/baidu/mobstat/ActivityLifeObserver$IActivityLifeCallback;

    .line 60
    new-instance v0, Lcom/baidu/mobstat/AutoTrack$MyActivityLifeCallback;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/baidu/mobstat/AutoTrack$MyActivityLifeCallback;-><init>(I)V

    sput-object v0, Lcom/baidu/mobstat/ActivityLifeTask;->e:Lcom/baidu/mobstat/ActivityLifeObserver$IActivityLifeCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    const-class v0, Lcom/baidu/mobstat/ActivityLifeTask;

    monitor-exit v0

    return-void

    .line 57
    :catchall_0
    move-exception v0

    const-class v1, Lcom/baidu/mobstat/ActivityLifeTask;

    monitor-exit v1

    throw v0
.end method

.method public static registerActivityLifeCallback(Landroid/content/Context;)V
    .registers 3

    .line 24
    const-class v0, Lcom/baidu/mobstat/ActivityLifeTask;

    monitor-enter v0

    :try_start_0
    sget-boolean v0, Lcom/baidu/mobstat/ActivityLifeTask;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 54
    :goto_0
    const-class v0, Lcom/baidu/mobstat/ActivityLifeTask;

    monitor-exit v0

    return-void

    .line 28
    :cond_0
    :try_start_1
    invoke-static {p0}, Lcom/baidu/mobstat/ActivityLifeTask;->a(Landroid/content/Context;)V

    .line 31
    invoke-static {}, Lcom/baidu/mobstat/ActivityLifeObserver;->instance()Lcom/baidu/mobstat/ActivityLifeObserver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/ActivityLifeObserver;->clearObservers()V

    .line 34
    invoke-static {}, Lcom/baidu/mobstat/ActivityLifeObserver;->instance()Lcom/baidu/mobstat/ActivityLifeObserver;

    move-result-object v0

    sget-object v1, Lcom/baidu/mobstat/ActivityLifeTask;->b:Lcom/baidu/mobstat/ActivityLifeObserver$IActivityLifeCallback;

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/ActivityLifeObserver;->addObserver(Lcom/baidu/mobstat/ActivityLifeObserver$IActivityLifeCallback;)V

    .line 39
    invoke-static {}, Lcom/baidu/mobstat/ActivityLifeObserver;->instance()Lcom/baidu/mobstat/ActivityLifeObserver;

    move-result-object v0

    sget-object v1, Lcom/baidu/mobstat/ActivityLifeTask;->d:Lcom/baidu/mobstat/ActivityLifeObserver$IActivityLifeCallback;

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/ActivityLifeObserver;->addObserver(Lcom/baidu/mobstat/ActivityLifeObserver$IActivityLifeCallback;)V

    .line 45
    invoke-static {}, Lcom/baidu/mobstat/ActivityLifeObserver;->instance()Lcom/baidu/mobstat/ActivityLifeObserver;

    move-result-object v0

    sget-object v1, Lcom/baidu/mobstat/ActivityLifeTask;->c:Lcom/baidu/mobstat/ActivityLifeObserver$IActivityLifeCallback;

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/ActivityLifeObserver;->addObserver(Lcom/baidu/mobstat/ActivityLifeObserver$IActivityLifeCallback;)V

    .line 49
    invoke-static {}, Lcom/baidu/mobstat/ActivityLifeObserver;->instance()Lcom/baidu/mobstat/ActivityLifeObserver;

    move-result-object v0

    sget-object v1, Lcom/baidu/mobstat/ActivityLifeTask;->e:Lcom/baidu/mobstat/ActivityLifeObserver$IActivityLifeCallback;

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/ActivityLifeObserver;->addObserver(Lcom/baidu/mobstat/ActivityLifeObserver$IActivityLifeCallback;)V

    .line 51
    invoke-static {}, Lcom/baidu/mobstat/ActivityLifeObserver;->instance()Lcom/baidu/mobstat/ActivityLifeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/baidu/mobstat/ActivityLifeObserver;->registerActivityLifeCallback(Landroid/content/Context;)V

    .line 53
    const/4 v0, 0x1

    sput-boolean v0, Lcom/baidu/mobstat/ActivityLifeTask;->a:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 24
    :catchall_0
    move-exception v0

    const-class v1, Lcom/baidu/mobstat/ActivityLifeTask;

    monitor-exit v1

    throw v0
.end method
