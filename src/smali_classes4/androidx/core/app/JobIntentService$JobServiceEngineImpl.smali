.class final Landroidx/core/app/JobIntentService$JobServiceEngineImpl;
.super Landroid/app/job/JobServiceEngine;

# interfaces
.implements Landroidx/core/app/JobIntentService$CompatJobEngine;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/JobIntentService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "JobServiceEngineImpl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/app/JobIntentService$JobServiceEngineImpl$WrapperWorkItem;
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field static final TAG:Ljava/lang/String; = "JobServiceEngineImpl"


# instance fields
.field final mLock:Ljava/lang/Object;

.field mParams:Landroid/app/job/JobParameters;

.field final mService:Landroidx/core/app/JobIntentService;


# direct methods
.method constructor <init>(Landroidx/core/app/JobIntentService;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/app/job/JobServiceEngine;-><init>(Landroid/app/Service;)V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/core/app/JobIntentService$JobServiceEngineImpl;->mLock:Ljava/lang/Object;

    iput-object p1, p0, Landroidx/core/app/JobIntentService$JobServiceEngineImpl;->mService:Landroidx/core/app/JobIntentService;

    return-void
.end method


# virtual methods
.method public compatGetBinder()Landroid/os/IBinder;
    .registers 2

    invoke-virtual {p0}, Landroidx/core/app/JobIntentService$JobServiceEngineImpl;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public dequeueWork()Landroidx/core/app/JobIntentService$GenericWorkItem;
    .registers 4

    const/4 v0, 0x0

    iget-object v1, p0, Landroidx/core/app/JobIntentService$JobServiceEngineImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_4
    iget-object v2, p0, Landroidx/core/app/JobIntentService$JobServiceEngineImpl;->mParams:Landroid/app/job/JobParameters;

    if-nez v2, :cond_a

    monitor-exit v1

    :cond_9
    :goto_9
    return-object v0

    :cond_a
    iget-object v2, p0, Landroidx/core/app/JobIntentService$JobServiceEngineImpl;->mParams:Landroid/app/job/JobParameters;

    invoke-virtual {v2}, Landroid/app/job/JobParameters;->dequeueWork()Landroid/app/job/JobWorkItem;

    move-result-object v2

    monitor-exit v1
    :try_end_11
    .catchall {:try_start_4 .. :try_end_11} :catchall_26

    if-eqz v2, :cond_9

    invoke-virtual {v2}, Landroid/app/job/JobWorkItem;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Landroidx/core/app/JobIntentService$JobServiceEngineImpl;->mService:Landroidx/core/app/JobIntentService;

    invoke-virtual {v1}, Landroidx/core/app/JobIntentService;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    new-instance v0, Landroidx/core/app/JobIntentService$JobServiceEngineImpl$WrapperWorkItem;

    invoke-direct {v0, p0, v2}, Landroidx/core/app/JobIntentService$JobServiceEngineImpl$WrapperWorkItem;-><init>(Landroidx/core/app/JobIntentService$JobServiceEngineImpl;Landroid/app/job/JobWorkItem;)V

    goto :goto_9

    :catchall_26
    move-exception v0

    :try_start_27
    monitor-exit v1
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_26

    throw v0
.end method

.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .registers 4

    iput-object p1, p0, Landroidx/core/app/JobIntentService$JobServiceEngineImpl;->mParams:Landroid/app/job/JobParameters;

    iget-object v0, p0, Landroidx/core/app/JobIntentService$JobServiceEngineImpl;->mService:Landroidx/core/app/JobIntentService;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/core/app/JobIntentService;->ensureProcessorRunningLocked(Z)V

    const/4 v0, 0x1

    return v0
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .registers 5

    iget-object v0, p0, Landroidx/core/app/JobIntentService$JobServiceEngineImpl;->mService:Landroidx/core/app/JobIntentService;

    invoke-virtual {v0}, Landroidx/core/app/JobIntentService;->doStopCurrentWork()Z

    move-result v0

    iget-object v1, p0, Landroidx/core/app/JobIntentService$JobServiceEngineImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v2, 0x0

    :try_start_a
    iput-object v2, p0, Landroidx/core/app/JobIntentService$JobServiceEngineImpl;->mParams:Landroid/app/job/JobParameters;

    monitor-exit v1

    return v0

    :catchall_e
    move-exception v0

    monitor-exit v1
    :try_end_10
    .catchall {:try_start_a .. :try_end_10} :catchall_e

    throw v0
.end method
