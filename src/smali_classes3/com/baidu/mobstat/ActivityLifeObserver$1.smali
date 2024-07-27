.class Lcom/baidu/mobstat/ActivityLifeObserver$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/mobstat/ActivityLifeObserver;->doRegister(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final a:Lcom/baidu/mobstat/ActivityLifeObserver;


# direct methods
.method constructor <init>(Lcom/baidu/mobstat/ActivityLifeObserver;)V
    .registers 2

    .line 78
    iput-object p1, p0, Lcom/baidu/mobstat/ActivityLifeObserver$1;->a:Lcom/baidu/mobstat/ActivityLifeObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 6

    .line 100
    iget-object v0, p0, Lcom/baidu/mobstat/ActivityLifeObserver$1;->a:Lcom/baidu/mobstat/ActivityLifeObserver;

    invoke-static {v0}, Lcom/baidu/mobstat/ActivityLifeObserver;->a(Lcom/baidu/mobstat/ActivityLifeObserver;)Ljava/util/Set;

    move-result-object v1

    monitor-enter v1

    .line 101
    :try_start_0
    iget-object v0, p0, Lcom/baidu/mobstat/ActivityLifeObserver$1;->a:Lcom/baidu/mobstat/ActivityLifeObserver;

    invoke-static {v0}, Lcom/baidu/mobstat/ActivityLifeObserver;->a(Lcom/baidu/mobstat/ActivityLifeObserver;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mobstat/ActivityLifeObserver$IActivityLifeCallback;

    .line 102
    invoke-interface {v0, p1, p2}, Lcom/baidu/mobstat/ActivityLifeObserver$IActivityLifeCallback;->onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V

    goto :goto_0

    .line 104
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 105
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .registers 5

    .line 136
    iget-object v0, p0, Lcom/baidu/mobstat/ActivityLifeObserver$1;->a:Lcom/baidu/mobstat/ActivityLifeObserver;

    invoke-static {v0}, Lcom/baidu/mobstat/ActivityLifeObserver;->a(Lcom/baidu/mobstat/ActivityLifeObserver;)Ljava/util/Set;

    move-result-object v1

    monitor-enter v1

    .line 137
    :try_start_0
    iget-object v0, p0, Lcom/baidu/mobstat/ActivityLifeObserver$1;->a:Lcom/baidu/mobstat/ActivityLifeObserver;

    invoke-static {v0}, Lcom/baidu/mobstat/ActivityLifeObserver;->a(Lcom/baidu/mobstat/ActivityLifeObserver;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mobstat/ActivityLifeObserver$IActivityLifeCallback;

    .line 138
    invoke-interface {v0, p1}, Lcom/baidu/mobstat/ActivityLifeObserver$IActivityLifeCallback;->onActivityDestroyed(Landroid/app/Activity;)V

    goto :goto_0

    .line 140
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 141
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .registers 5

    .line 91
    iget-object v0, p0, Lcom/baidu/mobstat/ActivityLifeObserver$1;->a:Lcom/baidu/mobstat/ActivityLifeObserver;

    invoke-static {v0}, Lcom/baidu/mobstat/ActivityLifeObserver;->a(Lcom/baidu/mobstat/ActivityLifeObserver;)Ljava/util/Set;

    move-result-object v1

    monitor-enter v1

    .line 92
    :try_start_0
    iget-object v0, p0, Lcom/baidu/mobstat/ActivityLifeObserver$1;->a:Lcom/baidu/mobstat/ActivityLifeObserver;

    invoke-static {v0}, Lcom/baidu/mobstat/ActivityLifeObserver;->a(Lcom/baidu/mobstat/ActivityLifeObserver;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mobstat/ActivityLifeObserver$IActivityLifeCallback;

    .line 93
    invoke-interface {v0, p1}, Lcom/baidu/mobstat/ActivityLifeObserver$IActivityLifeCallback;->onActivityPaused(Landroid/app/Activity;)V

    goto :goto_0

    .line 95
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 96
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .registers 5

    .line 82
    iget-object v0, p0, Lcom/baidu/mobstat/ActivityLifeObserver$1;->a:Lcom/baidu/mobstat/ActivityLifeObserver;

    invoke-static {v0}, Lcom/baidu/mobstat/ActivityLifeObserver;->a(Lcom/baidu/mobstat/ActivityLifeObserver;)Ljava/util/Set;

    move-result-object v1

    monitor-enter v1

    .line 83
    :try_start_0
    iget-object v0, p0, Lcom/baidu/mobstat/ActivityLifeObserver$1;->a:Lcom/baidu/mobstat/ActivityLifeObserver;

    invoke-static {v0}, Lcom/baidu/mobstat/ActivityLifeObserver;->a(Lcom/baidu/mobstat/ActivityLifeObserver;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mobstat/ActivityLifeObserver$IActivityLifeCallback;

    .line 84
    invoke-interface {v0, p1}, Lcom/baidu/mobstat/ActivityLifeObserver$IActivityLifeCallback;->onActivityResumed(Landroid/app/Activity;)V

    goto :goto_0

    .line 86
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 87
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 6

    .line 127
    iget-object v0, p0, Lcom/baidu/mobstat/ActivityLifeObserver$1;->a:Lcom/baidu/mobstat/ActivityLifeObserver;

    invoke-static {v0}, Lcom/baidu/mobstat/ActivityLifeObserver;->a(Lcom/baidu/mobstat/ActivityLifeObserver;)Ljava/util/Set;

    move-result-object v1

    monitor-enter v1

    .line 128
    :try_start_0
    iget-object v0, p0, Lcom/baidu/mobstat/ActivityLifeObserver$1;->a:Lcom/baidu/mobstat/ActivityLifeObserver;

    invoke-static {v0}, Lcom/baidu/mobstat/ActivityLifeObserver;->a(Lcom/baidu/mobstat/ActivityLifeObserver;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mobstat/ActivityLifeObserver$IActivityLifeCallback;

    .line 129
    invoke-interface {v0, p1, p2}, Lcom/baidu/mobstat/ActivityLifeObserver$IActivityLifeCallback;->onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V

    goto :goto_0

    .line 131
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 132
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .registers 5

    .line 109
    iget-object v0, p0, Lcom/baidu/mobstat/ActivityLifeObserver$1;->a:Lcom/baidu/mobstat/ActivityLifeObserver;

    invoke-static {v0}, Lcom/baidu/mobstat/ActivityLifeObserver;->a(Lcom/baidu/mobstat/ActivityLifeObserver;)Ljava/util/Set;

    move-result-object v1

    monitor-enter v1

    .line 110
    :try_start_0
    iget-object v0, p0, Lcom/baidu/mobstat/ActivityLifeObserver$1;->a:Lcom/baidu/mobstat/ActivityLifeObserver;

    invoke-static {v0}, Lcom/baidu/mobstat/ActivityLifeObserver;->a(Lcom/baidu/mobstat/ActivityLifeObserver;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mobstat/ActivityLifeObserver$IActivityLifeCallback;

    .line 111
    invoke-interface {v0, p1}, Lcom/baidu/mobstat/ActivityLifeObserver$IActivityLifeCallback;->onActivityStarted(Landroid/app/Activity;)V

    goto :goto_0

    .line 113
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 114
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .registers 5

    .line 118
    iget-object v0, p0, Lcom/baidu/mobstat/ActivityLifeObserver$1;->a:Lcom/baidu/mobstat/ActivityLifeObserver;

    invoke-static {v0}, Lcom/baidu/mobstat/ActivityLifeObserver;->a(Lcom/baidu/mobstat/ActivityLifeObserver;)Ljava/util/Set;

    move-result-object v1

    monitor-enter v1

    .line 119
    :try_start_0
    iget-object v0, p0, Lcom/baidu/mobstat/ActivityLifeObserver$1;->a:Lcom/baidu/mobstat/ActivityLifeObserver;

    invoke-static {v0}, Lcom/baidu/mobstat/ActivityLifeObserver;->a(Lcom/baidu/mobstat/ActivityLifeObserver;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mobstat/ActivityLifeObserver$IActivityLifeCallback;

    .line 120
    invoke-interface {v0, p1}, Lcom/baidu/mobstat/ActivityLifeObserver$IActivityLifeCallback;->onActivityStopped(Landroid/app/Activity;)V

    goto :goto_0

    .line 122
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 123
    return-void
.end method
