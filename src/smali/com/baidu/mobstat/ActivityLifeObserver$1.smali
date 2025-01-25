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

    move-result-object v0

    monitor-enter v0

    .line 101
    :try_start_7
    iget-object v1, p0, Lcom/baidu/mobstat/ActivityLifeObserver$1;->a:Lcom/baidu/mobstat/ActivityLifeObserver;

    invoke-static {v1}, Lcom/baidu/mobstat/ActivityLifeObserver;->a(Lcom/baidu/mobstat/ActivityLifeObserver;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/mobstat/ActivityLifeObserver$IActivityLifeCallback;

    .line 102
    invoke-interface {v2, p1, p2}, Lcom/baidu/mobstat/ActivityLifeObserver$IActivityLifeCallback;->onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V

    goto :goto_11

    .line 104
    :cond_21
    monitor-exit v0

    return-void

    :catchall_23
    move-exception p1

    monitor-exit v0
    :try_end_25
    .catchall {:try_start_7 .. :try_end_25} :catchall_23

    goto :goto_27

    :goto_26
    throw p1

    :goto_27
    goto :goto_26
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .registers 5

    .line 136
    iget-object v0, p0, Lcom/baidu/mobstat/ActivityLifeObserver$1;->a:Lcom/baidu/mobstat/ActivityLifeObserver;

    invoke-static {v0}, Lcom/baidu/mobstat/ActivityLifeObserver;->a(Lcom/baidu/mobstat/ActivityLifeObserver;)Ljava/util/Set;

    move-result-object v0

    monitor-enter v0

    .line 137
    :try_start_7
    iget-object v1, p0, Lcom/baidu/mobstat/ActivityLifeObserver$1;->a:Lcom/baidu/mobstat/ActivityLifeObserver;

    invoke-static {v1}, Lcom/baidu/mobstat/ActivityLifeObserver;->a(Lcom/baidu/mobstat/ActivityLifeObserver;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/mobstat/ActivityLifeObserver$IActivityLifeCallback;

    .line 138
    invoke-interface {v2, p1}, Lcom/baidu/mobstat/ActivityLifeObserver$IActivityLifeCallback;->onActivityDestroyed(Landroid/app/Activity;)V

    goto :goto_11

    .line 140
    :cond_21
    monitor-exit v0

    return-void

    :catchall_23
    move-exception p1

    monitor-exit v0
    :try_end_25
    .catchall {:try_start_7 .. :try_end_25} :catchall_23

    goto :goto_27

    :goto_26
    throw p1

    :goto_27
    goto :goto_26
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .registers 5

    .line 91
    iget-object v0, p0, Lcom/baidu/mobstat/ActivityLifeObserver$1;->a:Lcom/baidu/mobstat/ActivityLifeObserver;

    invoke-static {v0}, Lcom/baidu/mobstat/ActivityLifeObserver;->a(Lcom/baidu/mobstat/ActivityLifeObserver;)Ljava/util/Set;

    move-result-object v0

    monitor-enter v0

    .line 92
    :try_start_7
    iget-object v1, p0, Lcom/baidu/mobstat/ActivityLifeObserver$1;->a:Lcom/baidu/mobstat/ActivityLifeObserver;

    invoke-static {v1}, Lcom/baidu/mobstat/ActivityLifeObserver;->a(Lcom/baidu/mobstat/ActivityLifeObserver;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/mobstat/ActivityLifeObserver$IActivityLifeCallback;

    .line 93
    invoke-interface {v2, p1}, Lcom/baidu/mobstat/ActivityLifeObserver$IActivityLifeCallback;->onActivityPaused(Landroid/app/Activity;)V

    goto :goto_11

    .line 95
    :cond_21
    monitor-exit v0

    return-void

    :catchall_23
    move-exception p1

    monitor-exit v0
    :try_end_25
    .catchall {:try_start_7 .. :try_end_25} :catchall_23

    goto :goto_27

    :goto_26
    throw p1

    :goto_27
    goto :goto_26
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .registers 5

    .line 82
    iget-object v0, p0, Lcom/baidu/mobstat/ActivityLifeObserver$1;->a:Lcom/baidu/mobstat/ActivityLifeObserver;

    invoke-static {v0}, Lcom/baidu/mobstat/ActivityLifeObserver;->a(Lcom/baidu/mobstat/ActivityLifeObserver;)Ljava/util/Set;

    move-result-object v0

    monitor-enter v0

    .line 83
    :try_start_7
    iget-object v1, p0, Lcom/baidu/mobstat/ActivityLifeObserver$1;->a:Lcom/baidu/mobstat/ActivityLifeObserver;

    invoke-static {v1}, Lcom/baidu/mobstat/ActivityLifeObserver;->a(Lcom/baidu/mobstat/ActivityLifeObserver;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/mobstat/ActivityLifeObserver$IActivityLifeCallback;

    .line 84
    invoke-interface {v2, p1}, Lcom/baidu/mobstat/ActivityLifeObserver$IActivityLifeCallback;->onActivityResumed(Landroid/app/Activity;)V

    goto :goto_11

    .line 86
    :cond_21
    monitor-exit v0

    return-void

    :catchall_23
    move-exception p1

    monitor-exit v0
    :try_end_25
    .catchall {:try_start_7 .. :try_end_25} :catchall_23

    goto :goto_27

    :goto_26
    throw p1

    :goto_27
    goto :goto_26
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 6

    .line 127
    iget-object v0, p0, Lcom/baidu/mobstat/ActivityLifeObserver$1;->a:Lcom/baidu/mobstat/ActivityLifeObserver;

    invoke-static {v0}, Lcom/baidu/mobstat/ActivityLifeObserver;->a(Lcom/baidu/mobstat/ActivityLifeObserver;)Ljava/util/Set;

    move-result-object v0

    monitor-enter v0

    .line 128
    :try_start_7
    iget-object v1, p0, Lcom/baidu/mobstat/ActivityLifeObserver$1;->a:Lcom/baidu/mobstat/ActivityLifeObserver;

    invoke-static {v1}, Lcom/baidu/mobstat/ActivityLifeObserver;->a(Lcom/baidu/mobstat/ActivityLifeObserver;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/mobstat/ActivityLifeObserver$IActivityLifeCallback;

    .line 129
    invoke-interface {v2, p1, p2}, Lcom/baidu/mobstat/ActivityLifeObserver$IActivityLifeCallback;->onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V

    goto :goto_11

    .line 131
    :cond_21
    monitor-exit v0

    return-void

    :catchall_23
    move-exception p1

    monitor-exit v0
    :try_end_25
    .catchall {:try_start_7 .. :try_end_25} :catchall_23

    goto :goto_27

    :goto_26
    throw p1

    :goto_27
    goto :goto_26
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .registers 5

    .line 109
    iget-object v0, p0, Lcom/baidu/mobstat/ActivityLifeObserver$1;->a:Lcom/baidu/mobstat/ActivityLifeObserver;

    invoke-static {v0}, Lcom/baidu/mobstat/ActivityLifeObserver;->a(Lcom/baidu/mobstat/ActivityLifeObserver;)Ljava/util/Set;

    move-result-object v0

    monitor-enter v0

    .line 110
    :try_start_7
    iget-object v1, p0, Lcom/baidu/mobstat/ActivityLifeObserver$1;->a:Lcom/baidu/mobstat/ActivityLifeObserver;

    invoke-static {v1}, Lcom/baidu/mobstat/ActivityLifeObserver;->a(Lcom/baidu/mobstat/ActivityLifeObserver;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/mobstat/ActivityLifeObserver$IActivityLifeCallback;

    .line 111
    invoke-interface {v2, p1}, Lcom/baidu/mobstat/ActivityLifeObserver$IActivityLifeCallback;->onActivityStarted(Landroid/app/Activity;)V

    goto :goto_11

    .line 113
    :cond_21
    monitor-exit v0

    return-void

    :catchall_23
    move-exception p1

    monitor-exit v0
    :try_end_25
    .catchall {:try_start_7 .. :try_end_25} :catchall_23

    goto :goto_27

    :goto_26
    throw p1

    :goto_27
    goto :goto_26
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .registers 5

    .line 118
    iget-object v0, p0, Lcom/baidu/mobstat/ActivityLifeObserver$1;->a:Lcom/baidu/mobstat/ActivityLifeObserver;

    invoke-static {v0}, Lcom/baidu/mobstat/ActivityLifeObserver;->a(Lcom/baidu/mobstat/ActivityLifeObserver;)Ljava/util/Set;

    move-result-object v0

    monitor-enter v0

    .line 119
    :try_start_7
    iget-object v1, p0, Lcom/baidu/mobstat/ActivityLifeObserver$1;->a:Lcom/baidu/mobstat/ActivityLifeObserver;

    invoke-static {v1}, Lcom/baidu/mobstat/ActivityLifeObserver;->a(Lcom/baidu/mobstat/ActivityLifeObserver;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/mobstat/ActivityLifeObserver$IActivityLifeCallback;

    .line 120
    invoke-interface {v2, p1}, Lcom/baidu/mobstat/ActivityLifeObserver$IActivityLifeCallback;->onActivityStopped(Landroid/app/Activity;)V

    goto :goto_11

    .line 122
    :cond_21
    monitor-exit v0

    return-void

    :catchall_23
    move-exception p1

    monitor-exit v0
    :try_end_25
    .catchall {:try_start_7 .. :try_end_25} :catchall_23

    goto :goto_27

    :goto_26
    throw p1

    :goto_27
    goto :goto_26
.end method
