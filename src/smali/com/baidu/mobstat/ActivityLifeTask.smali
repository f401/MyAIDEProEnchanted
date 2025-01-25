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
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/Context;)V
    .registers 2

    const-class p0, Lcom/baidu/mobstat/ActivityLifeTask;

    monitor-enter p0

    .line 57
    :try_start_3
    new-instance p0, Lcom/baidu/mobstat/AutoTrack$MyActivityLifeCallback;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/baidu/mobstat/AutoTrack$MyActivityLifeCallback;-><init>(I)V

    sput-object p0, Lcom/baidu/mobstat/ActivityLifeTask;->b:Lcom/baidu/mobstat/ActivityLifeObserver$IActivityLifeCallback;

    .line 58
    new-instance p0, Lcom/baidu/mobstat/bz$a;

    invoke-direct {p0}, Lcom/baidu/mobstat/bz$a;-><init>()V

    sput-object p0, Lcom/baidu/mobstat/ActivityLifeTask;->d:Lcom/baidu/mobstat/ActivityLifeObserver$IActivityLifeCallback;

    .line 59
    new-instance p0, Lcom/baidu/mobstat/cq$a;

    invoke-direct {p0}, Lcom/baidu/mobstat/cq$a;-><init>()V

    sput-object p0, Lcom/baidu/mobstat/ActivityLifeTask;->c:Lcom/baidu/mobstat/ActivityLifeObserver$IActivityLifeCallback;

    .line 60
    new-instance p0, Lcom/baidu/mobstat/AutoTrack$MyActivityLifeCallback;

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/baidu/mobstat/AutoTrack$MyActivityLifeCallback;-><init>(I)V

    sput-object p0, Lcom/baidu/mobstat/ActivityLifeTask;->e:Lcom/baidu/mobstat/ActivityLifeObserver$IActivityLifeCallback;
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_25

    .line 61
    const-class p0, Lcom/baidu/mobstat/ActivityLifeTask;

    monitor-exit p0

    return-void

    :catchall_25
    move-exception p0

    const-class v0, Lcom/baidu/mobstat/ActivityLifeTask;

    monitor-exit v0

    throw p0
.end method

.method public static registerActivityLifeCallback(Landroid/content/Context;)V
    .registers 3

    const-class v0, Lcom/baidu/mobstat/ActivityLifeTask;

    monitor-enter v0

    .line 24
    :try_start_3
    sget-boolean v0, Lcom/baidu/mobstat/ActivityLifeTask;->a:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_47

    if-eqz v0, :cond_b

    .line 25
    const-class p0, Lcom/baidu/mobstat/ActivityLifeTask;

    monitor-exit p0

    return-void

    .line 28
    :cond_b
    :try_start_b
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
    const/4 p0, 0x1

    sput-boolean p0, Lcom/baidu/mobstat/ActivityLifeTask;->a:Z
    :try_end_43
    .catchall {:try_start_b .. :try_end_43} :catchall_47

    .line 54
    const-class p0, Lcom/baidu/mobstat/ActivityLifeTask;

    monitor-exit p0

    return-void

    :catchall_47
    move-exception p0

    const-class v0, Lcom/baidu/mobstat/ActivityLifeTask;

    monitor-exit v0

    throw p0
.end method
