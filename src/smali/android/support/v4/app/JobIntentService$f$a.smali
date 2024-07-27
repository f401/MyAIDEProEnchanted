.class final Landroid/support/v4/app/JobIntentService$f$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/v4/app/JobIntentService$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/JobIntentService$f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation


# instance fields
.field final DW:Landroid/support/v4/app/JobIntentService$f;

.field final j6:Landroid/app/job/JobWorkItem;


# direct methods
.method constructor <init>(Landroid/support/v4/app/JobIntentService$f;Landroid/app/job/JobWorkItem;)V
    .registers 3

    iput-object p1, p0, Landroid/support/v4/app/JobIntentService$f$a;->DW:Landroid/support/v4/app/JobIntentService$f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroid/support/v4/app/JobIntentService$f$a;->j6:Landroid/app/job/JobWorkItem;

    return-void
.end method


# virtual methods
.method public getIntent()Landroid/content/Intent;
    .registers 2

    iget-object v0, p0, Landroid/support/v4/app/JobIntentService$f$a;->j6:Landroid/app/job/JobWorkItem;

    invoke-virtual {v0}, Landroid/app/job/JobWorkItem;->getIntent()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public j6()V
    .registers 4

    iget-object v0, p0, Landroid/support/v4/app/JobIntentService$f$a;->DW:Landroid/support/v4/app/JobIntentService$f;

    iget-object v1, v0, Landroid/support/v4/app/JobIntentService$f;->DW:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Landroid/support/v4/app/JobIntentService$f$a;->DW:Landroid/support/v4/app/JobIntentService$f;

    iget-object v0, v0, Landroid/support/v4/app/JobIntentService$f;->FH:Landroid/app/job/JobParameters;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/JobIntentService$f$a;->DW:Landroid/support/v4/app/JobIntentService$f;

    iget-object v0, v0, Landroid/support/v4/app/JobIntentService$f;->FH:Landroid/app/job/JobParameters;

    iget-object v2, p0, Landroid/support/v4/app/JobIntentService$f$a;->j6:Landroid/app/job/JobWorkItem;

    invoke-virtual {v0, v2}, Landroid/app/job/JobParameters;->completeWork(Landroid/app/job/JobWorkItem;)V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
