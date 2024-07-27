.class final Landroid/support/v4/app/JobIntentService$f;
.super Landroid/app/job/JobServiceEngine;

# interfaces
.implements Landroid/support/v4/app/JobIntentService$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/JobIntentService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/app/JobIntentService$f$a;
    }
.end annotation


# instance fields
.field final DW:Ljava/lang/Object;

.field FH:Landroid/app/job/JobParameters;

.field final j6:Landroid/support/v4/app/JobIntentService;


# direct methods
.method constructor <init>(Landroid/support/v4/app/JobIntentService;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/app/job/JobServiceEngine;-><init>(Landroid/app/Service;)V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/JobIntentService$f;->DW:Ljava/lang/Object;

    iput-object p1, p0, Landroid/support/v4/app/JobIntentService$f;->j6:Landroid/support/v4/app/JobIntentService;

    return-void
.end method


# virtual methods
.method public DW()Landroid/support/v4/app/JobIntentService$e;
    .registers 4

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/support/v4/app/JobIntentService$f;->DW:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Landroid/support/v4/app/JobIntentService$f;->FH:Landroid/app/job/JobParameters;

    if-nez v2, :cond_1

    monitor-exit v1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v2, p0, Landroid/support/v4/app/JobIntentService$f;->FH:Landroid/app/job/JobParameters;

    invoke-virtual {v2}, Landroid/app/job/JobParameters;->dequeueWork()Landroid/app/job/JobWorkItem;

    move-result-object v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/app/job/JobWorkItem;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/app/JobIntentService$f;->j6:Landroid/support/v4/app/JobIntentService;

    invoke-virtual {v1}, Landroid/app/Service;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    new-instance v0, Landroid/support/v4/app/JobIntentService$f$a;

    invoke-direct {v0, p0, v2}, Landroid/support/v4/app/JobIntentService$f$a;-><init>(Landroid/support/v4/app/JobIntentService$f;Landroid/app/job/JobWorkItem;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public j6()Landroid/os/IBinder;
    .registers 2

    invoke-virtual {p0}, Landroid/app/job/JobServiceEngine;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .registers 4

    iput-object p1, p0, Landroid/support/v4/app/JobIntentService$f;->FH:Landroid/app/job/JobParameters;

    iget-object v0, p0, Landroid/support/v4/app/JobIntentService$f;->j6:Landroid/support/v4/app/JobIntentService;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/app/JobIntentService;->j6(Z)V

    const/4 v0, 0x1

    return v0
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .registers 5

    iget-object v0, p0, Landroid/support/v4/app/JobIntentService$f;->j6:Landroid/support/v4/app/JobIntentService;

    invoke-virtual {v0}, Landroid/support/v4/app/JobIntentService;->DW()Z

    move-result v0

    iget-object v1, p0, Landroid/support/v4/app/JobIntentService$f;->DW:Ljava/lang/Object;

    monitor-enter v1

    const/4 v2, 0x0

    :try_start_0
    iput-object v2, p0, Landroid/support/v4/app/JobIntentService$f;->FH:Landroid/app/job/JobParameters;

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
