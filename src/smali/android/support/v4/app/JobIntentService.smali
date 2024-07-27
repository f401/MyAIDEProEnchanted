.class public abstract Landroid/support/v4/app/JobIntentService;
.super Landroid/app/Service;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/app/JobIntentService$a;,
        Landroid/support/v4/app/JobIntentService$b;,
        Landroid/support/v4/app/JobIntentService$c;,
        Landroid/support/v4/app/JobIntentService$d;,
        Landroid/support/v4/app/JobIntentService$e;,
        Landroid/support/v4/app/JobIntentService$f;,
        Landroid/support/v4/app/JobIntentService$f$a;,
        Landroid/support/v4/app/JobIntentService$g;,
        Landroid/support/v4/app/JobIntentService$h;
    }
.end annotation


# static fields
.field static final DW:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/ComponentName;",
            "Landroid/support/v4/app/JobIntentService$h;",
            ">;"
        }
    .end annotation
.end field

.field static final j6:Ljava/lang/Object;


# instance fields
.field FH:Landroid/support/v4/app/JobIntentService$b;

.field Hw:Landroid/support/v4/app/JobIntentService$h;

.field VH:Z

.field Zo:Z

.field gn:Z

.field final u7:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/app/JobIntentService$d;",
            ">;"
        }
    .end annotation
.end field

.field v5:Landroid/support/v4/app/JobIntentService$a;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/support/v4/app/JobIntentService;->j6:Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/support/v4/app/JobIntentService;->DW:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    iput-boolean v0, p0, Landroid/support/v4/app/JobIntentService;->Zo:Z

    iput-boolean v0, p0, Landroid/support/v4/app/JobIntentService;->VH:Z

    iput-boolean v0, p0, Landroid/support/v4/app/JobIntentService;->gn:Z

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/app/JobIntentService;->u7:Ljava/util/ArrayList;

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/JobIntentService;->u7:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method static j6(Landroid/content/Context;Landroid/content/ComponentName;ZI)Landroid/support/v4/app/JobIntentService$h;
    .registers 6

    sget-object v0, Landroid/support/v4/app/JobIntentService;->DW:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/JobIntentService$h;

    if-nez v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_2

    if-eqz p2, :cond_1

    new-instance v0, Landroid/support/v4/app/JobIntentService$g;

    invoke-direct {v0, p0, p1, p3}, Landroid/support/v4/app/JobIntentService$g;-><init>(Landroid/content/Context;Landroid/content/ComponentName;I)V

    :goto_0
    sget-object v1, Landroid/support/v4/app/JobIntentService;->DW:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t be here without a job id"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Landroid/support/v4/app/JobIntentService$c;

    invoke-direct {v0, p0, p1}, Landroid/support/v4/app/JobIntentService$c;-><init>(Landroid/content/Context;Landroid/content/ComponentName;)V

    goto :goto_0
.end method


# virtual methods
.method DW()Z
    .registers 3

    iget-object v0, p0, Landroid/support/v4/app/JobIntentService;->v5:Landroid/support/v4/app/JobIntentService$a;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Landroid/support/v4/app/JobIntentService;->Zo:Z

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/JobIntentService;->VH:Z

    invoke-virtual {p0}, Landroid/support/v4/app/JobIntentService;->FH()Z

    move-result v0

    return v0
.end method

.method public FH()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method Hw()V
    .registers 3

    iget-object v1, p0, Landroid/support/v4/app/JobIntentService;->u7:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Landroid/support/v4/app/JobIntentService;->v5:Landroid/support/v4/app/JobIntentService$a;

    iget-object v0, p0, Landroid/support/v4/app/JobIntentService;->u7:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v4/app/JobIntentService;->u7:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v4/app/JobIntentService;->j6(Z)V

    :cond_0
    :goto_0
    monitor-exit v1

    :cond_1
    return-void

    :cond_2
    iget-boolean v0, p0, Landroid/support/v4/app/JobIntentService;->gn:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/JobIntentService;->Hw:Landroid/support/v4/app/JobIntentService$h;

    invoke-virtual {v0}, Landroid/support/v4/app/JobIntentService$h;->j6()V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method j6()Landroid/support/v4/app/JobIntentService$e;
    .registers 4

    iget-object v0, p0, Landroid/support/v4/app/JobIntentService;->FH:Landroid/support/v4/app/JobIntentService$b;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/support/v4/app/JobIntentService$b;->DW()Landroid/support/v4/app/JobIntentService$e;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Landroid/support/v4/app/JobIntentService;->u7:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Landroid/support/v4/app/JobIntentService;->u7:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Landroid/support/v4/app/JobIntentService;->u7:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/JobIntentService$e;

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected abstract j6(Landroid/content/Intent;)V
.end method

.method j6(Z)V
    .registers 5

    iget-object v0, p0, Landroid/support/v4/app/JobIntentService;->v5:Landroid/support/v4/app/JobIntentService$a;

    if-nez v0, :cond_1

    new-instance v0, Landroid/support/v4/app/JobIntentService$a;

    invoke-direct {v0, p0}, Landroid/support/v4/app/JobIntentService$a;-><init>(Landroid/support/v4/app/JobIntentService;)V

    iput-object v0, p0, Landroid/support/v4/app/JobIntentService;->v5:Landroid/support/v4/app/JobIntentService$a;

    iget-object v0, p0, Landroid/support/v4/app/JobIntentService;->Hw:Landroid/support/v4/app/JobIntentService$h;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Landroid/support/v4/app/JobIntentService$h;->DW()V

    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/JobIntentService;->v5:Landroid/support/v4/app/JobIntentService$a;

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_1
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3

    iget-object v0, p0, Landroid/support/v4/app/JobIntentService;->FH:Landroid/support/v4/app/JobIntentService$b;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/support/v4/app/JobIntentService$b;->j6()Landroid/os/IBinder;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreate()V
    .registers 5

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    new-instance v0, Landroid/support/v4/app/JobIntentService$f;

    invoke-direct {v0, p0}, Landroid/support/v4/app/JobIntentService$f;-><init>(Landroid/support/v4/app/JobIntentService;)V

    iput-object v0, p0, Landroid/support/v4/app/JobIntentService;->FH:Landroid/support/v4/app/JobIntentService$b;

    iput-object v3, p0, Landroid/support/v4/app/JobIntentService;->Hw:Landroid/support/v4/app/JobIntentService$h;

    :goto_0
    return-void

    :cond_0
    iput-object v3, p0, Landroid/support/v4/app/JobIntentService;->FH:Landroid/support/v4/app/JobIntentService$b;

    new-instance v0, Landroid/content/ComponentName;

    const-class v1, Landroid/support/v4/app/JobIntentService;

    invoke-direct {v0, p0, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {p0, v0, v2, v2}, Landroid/support/v4/app/JobIntentService;->j6(Landroid/content/Context;Landroid/content/ComponentName;ZI)Landroid/support/v4/app/JobIntentService$h;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/JobIntentService;->Hw:Landroid/support/v4/app/JobIntentService$h;

    goto :goto_0
.end method

.method public onDestroy()V
    .registers 3

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    iget-object v1, p0, Landroid/support/v4/app/JobIntentService;->u7:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Landroid/support/v4/app/JobIntentService;->gn:Z

    iget-object v0, p0, Landroid/support/v4/app/JobIntentService;->Hw:Landroid/support/v4/app/JobIntentService$h;

    invoke-virtual {v0}, Landroid/support/v4/app/JobIntentService$h;->j6()V

    monitor-exit v1

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 7

    iget-object v0, p0, Landroid/support/v4/app/JobIntentService;->u7:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v4/app/JobIntentService;->Hw:Landroid/support/v4/app/JobIntentService$h;

    invoke-virtual {v0}, Landroid/support/v4/app/JobIntentService$h;->FH()V

    iget-object v1, p0, Landroid/support/v4/app/JobIntentService;->u7:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Landroid/support/v4/app/JobIntentService;->u7:Ljava/util/ArrayList;

    new-instance v2, Landroid/support/v4/app/JobIntentService$d;

    if-eqz p1, :cond_0

    :goto_0
    invoke-direct {v2, p0, p1, p3}, Landroid/support/v4/app/JobIntentService$d;-><init>(Landroid/support/v4/app/JobIntentService;Landroid/content/Intent;I)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/v4/app/JobIntentService;->j6(Z)V

    monitor-exit v1

    const/4 v0, 0x3

    :goto_1
    return v0

    :cond_0
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    const/4 v0, 0x2

    goto :goto_1
.end method
