.class public Lcom/baidu/mobstat/ActivityLifeObserver;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/mobstat/ActivityLifeObserver$IActivityLifeCallback;
    }
.end annotation


# static fields
.field private static final c:Lcom/baidu/mobstat/ActivityLifeObserver;


# instance fields
.field private a:Z

.field private b:Landroid/app/Application$ActivityLifecycleCallbacks;

.field private d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/baidu/mobstat/ActivityLifeObserver$IActivityLifeCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 22
    new-instance v0, Lcom/baidu/mobstat/ActivityLifeObserver;

    invoke-direct {v0}, Lcom/baidu/mobstat/ActivityLifeObserver;-><init>()V

    sput-object v0, Lcom/baidu/mobstat/ActivityLifeObserver;->c:Lcom/baidu/mobstat/ActivityLifeObserver;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/baidu/mobstat/ActivityLifeObserver;->d:Ljava/util/Set;

    return-void
.end method

.method static synthetic a(Lcom/baidu/mobstat/ActivityLifeObserver;)Ljava/util/Set;
    .registers 2

    .line 17
    iget-object v0, p0, Lcom/baidu/mobstat/ActivityLifeObserver;->d:Ljava/util/Set;

    return-object v0
.end method

.method public static instance()Lcom/baidu/mobstat/ActivityLifeObserver;
    .registers 1

    .line 28
    sget-object v0, Lcom/baidu/mobstat/ActivityLifeObserver;->c:Lcom/baidu/mobstat/ActivityLifeObserver;

    return-object v0
.end method


# virtual methods
.method public addObserver(Lcom/baidu/mobstat/ActivityLifeObserver$IActivityLifeCallback;)V
    .registers 4

    .line 32
    iget-object v1, p0, Lcom/baidu/mobstat/ActivityLifeObserver;->d:Ljava/util/Set;

    monitor-enter v1

    .line 33
    :try_start_0
    iget-object v0, p0, Lcom/baidu/mobstat/ActivityLifeObserver;->d:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 34
    monitor-exit v1

    .line 35
    return-void

    .line 34
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public clearObservers()V
    .registers 3

    .line 38
    iget-object v1, p0, Lcom/baidu/mobstat/ActivityLifeObserver;->d:Ljava/util/Set;

    monitor-enter v1

    .line 39
    :try_start_0
    iget-object v0, p0, Lcom/baidu/mobstat/ActivityLifeObserver;->d:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 40
    monitor-exit v1

    .line 41
    return-void

    .line 40
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public doRegister(Landroid/content/Context;)V
    .registers 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .line 77
    new-instance v0, Lcom/baidu/mobstat/ActivityLifeObserver$1;

    invoke-direct {v0, p0}, Lcom/baidu/mobstat/ActivityLifeObserver$1;-><init>(Lcom/baidu/mobstat/ActivityLifeObserver;)V

    iput-object v0, p0, Lcom/baidu/mobstat/ActivityLifeObserver;->b:Landroid/app/Application$ActivityLifecycleCallbacks;

    .line 145
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    .line 146
    iget-object v1, p0, Lcom/baidu/mobstat/ActivityLifeObserver;->b:Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-virtual {v0, v1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    :goto_0
    return-void

    .line 147
    :catch_0
    move-exception v0

    .line 148
    invoke-static {}, Lcom/baidu/mobstat/cx;->c()Lcom/baidu/mobstat/cx;

    move-result-object v0

    const-string v1, "registerActivityLifecycleCallbacks encounter exception"

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/cx;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public registerActivityLifeCallback(Landroid/content/Context;)V
    .registers 4

    .line 50
    iget-boolean v0, p0, Lcom/baidu/mobstat/ActivityLifeObserver;->a:Z

    if-eqz v0, :cond_1

    .line 61
    :cond_0
    :goto_0
    return-void

    .line 54
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 58
    invoke-virtual {p0, p1}, Lcom/baidu/mobstat/ActivityLifeObserver;->doRegister(Landroid/content/Context;)V

    .line 60
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/mobstat/ActivityLifeObserver;->a:Z

    goto :goto_0
.end method

.method public removeObserver(Lcom/baidu/mobstat/ActivityLifeObserver$IActivityLifeCallback;)V
    .registers 4

    .line 44
    iget-object v1, p0, Lcom/baidu/mobstat/ActivityLifeObserver;->d:Ljava/util/Set;

    monitor-enter v1

    .line 45
    :try_start_0
    iget-object v0, p0, Lcom/baidu/mobstat/ActivityLifeObserver;->d:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 46
    monitor-exit v1

    .line 47
    return-void

    .line 46
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public unRegister(Landroid/content/Context;)V
    .registers 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .line 66
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    .line 67
    iget-object v1, p0, Lcom/baidu/mobstat/ActivityLifeObserver;->b:Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-virtual {v0, v1}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    :goto_0
    return-void

    .line 68
    :catch_0
    move-exception v0

    .line 69
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
