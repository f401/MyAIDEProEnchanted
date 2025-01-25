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
            "Ljava/util/HashMap<",
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
            "Ljava/util/ArrayList<",
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

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/JobIntentService;->Zo:Z

    iput-boolean v0, p0, Landroid/support/v4/app/JobIntentService;->VH:Z

    iput-boolean v0, p0, Landroid/support/v4/app/JobIntentService;->gn:Z

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_12

    const/4 v0, 0x0

    goto :goto_17

    :cond_12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_17
    iput-object v0, p0, Landroid/support/v4/app/JobIntentService;->u7:Ljava/util/ArrayList;

    return-void
.end method

.method static j6(Landroid/content/Context;Landroid/content/ComponentName;ZI)Landroid/support/v4/app/JobIntentService$h;
    .registers 7

    sget-object v0, Landroid/support/v4/app/JobIntentService;->DW:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/JobIntentService$h;

    if-nez v1, :cond_29

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_20

    if-eqz p2, :cond_18

    new-instance p2, Landroid/support/v4/app/JobIntentService$g;

    invoke-direct {p2, p0, p1, p3}, Landroid/support/v4/app/JobIntentService$g;-><init>(Landroid/content/Context;Landroid/content/ComponentName;I)V

    goto :goto_25

    :cond_18
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Can\'t be here without a job id"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_20
    new-instance p2, Landroid/support/v4/app/JobIntentService$c;

    invoke-direct {p2, p0, p1}, Landroid/support/v4/app/JobIntentService$c;-><init>(Landroid/content/Context;Landroid/content/ComponentName;)V

    :goto_25
    move-object v1, p2

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_29
    return-object v1
.end method


# virtual methods
.method DW()Z
    .registers 3

    iget-object v0, p0, Landroid/support/v4/app/JobIntentService;->v5:Landroid/support/v4/app/JobIntentService$a;

    if-eqz v0, :cond_9

    iget-boolean v1, p0, Landroid/support/v4/app/JobIntentService;->Zo:Z

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    :cond_9
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

    iget-object v0, p0, Landroid/support/v4/app/JobIntentService;->u7:Ljava/util/ArrayList;

    if-eqz v0, :cond_25

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_6
    iput-object v1, p0, Landroid/support/v4/app/JobIntentService;->v5:Landroid/support/v4/app/JobIntentService$a;

    iget-object v1, p0, Landroid/support/v4/app/JobIntentService;->u7:Ljava/util/ArrayList;

    if-eqz v1, :cond_17

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_17

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/support/v4/app/JobIntentService;->j6(Z)V

    goto :goto_20

    :cond_17
    iget-boolean v1, p0, Landroid/support/v4/app/JobIntentService;->gn:Z

    if-nez v1, :cond_20

    iget-object v1, p0, Landroid/support/v4/app/JobIntentService;->Hw:Landroid/support/v4/app/JobIntentService$h;

    invoke-virtual {v1}, Landroid/support/v4/app/JobIntentService$h;->j6()V

    :cond_20
    :goto_20
    monitor-exit v0

    goto :goto_25

    :catchall_22
    move-exception v1

    monitor-exit v0
    :try_end_24
    .catchall {:try_start_6 .. :try_end_24} :catchall_22

    throw v1

    :cond_25
    :goto_25
    return-void
.end method

.method j6()Landroid/support/v4/app/JobIntentService$e;
    .registers 4

    iget-object v0, p0, Landroid/support/v4/app/JobIntentService;->FH:Landroid/support/v4/app/JobIntentService$b;

    if-eqz v0, :cond_9

    invoke-interface {v0}, Landroid/support/v4/app/JobIntentService$b;->DW()Landroid/support/v4/app/JobIntentService$e;

    move-result-object v0

    return-object v0

    :cond_9
    iget-object v0, p0, Landroid/support/v4/app/JobIntentService;->u7:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_c
    iget-object v1, p0, Landroid/support/v4/app/JobIntentService;->u7:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1f

    iget-object v1, p0, Landroid/support/v4/app/JobIntentService;->u7:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/JobIntentService$e;

    monitor-exit v0

    return-object v1

    :cond_1f
    monitor-exit v0

    const/4 v0, 0x0

    return-object v0

    :catchall_22
    move-exception v1

    monitor-exit v0
    :try_end_24
    .catchall {:try_start_c .. :try_end_24} :catchall_22

    throw v1
.end method

.method protected abstract j6(Landroid/content/Intent;)V
.end method

.method j6(Z)V
    .registers 4

    iget-object v0, p0, Landroid/support/v4/app/JobIntentService;->v5:Landroid/support/v4/app/JobIntentService$a;

    if-nez v0, :cond_1e

    new-instance v0, Landroid/support/v4/app/JobIntentService$a;

    invoke-direct {v0, p0}, Landroid/support/v4/app/JobIntentService$a;-><init>(Landroid/support/v4/app/JobIntentService;)V

    iput-object v0, p0, Landroid/support/v4/app/JobIntentService;->v5:Landroid/support/v4/app/JobIntentService$a;

    iget-object v0, p0, Landroid/support/v4/app/JobIntentService;->Hw:Landroid/support/v4/app/JobIntentService$h;

    if-eqz v0, :cond_14

    if-eqz p1, :cond_14

    invoke-virtual {v0}, Landroid/support/v4/app/JobIntentService$h;->DW()V

    :cond_14
    iget-object p1, p0, Landroid/support/v4/app/JobIntentService;->v5:Landroid/support/v4/app/JobIntentService$a;

    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {p1, v0, v1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_1e
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 2

    iget-object p1, p0, Landroid/support/v4/app/JobIntentService;->FH:Landroid/support/v4/app/JobIntentService$b;

    if-eqz p1, :cond_9

    invoke-interface {p1}, Landroid/support/v4/app/JobIntentService$b;->j6()Landroid/os/IBinder;

    move-result-object p1

    return-object p1

    :cond_9
    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()V
    .registers 4

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    const/4 v2, 0x0

    if-lt v0, v1, :cond_14

    new-instance v0, Landroid/support/v4/app/JobIntentService$f;

    invoke-direct {v0, p0}, Landroid/support/v4/app/JobIntentService$f;-><init>(Landroid/support/v4/app/JobIntentService;)V

    iput-object v0, p0, Landroid/support/v4/app/JobIntentService;->FH:Landroid/support/v4/app/JobIntentService$b;

    iput-object v2, p0, Landroid/support/v4/app/JobIntentService;->Hw:Landroid/support/v4/app/JobIntentService$h;

    goto :goto_24

    :cond_14
    iput-object v2, p0, Landroid/support/v4/app/JobIntentService;->FH:Landroid/support/v4/app/JobIntentService$b;

    new-instance v0, Landroid/content/ComponentName;

    const-class v1, Landroid/support/v4/app/JobIntentService;

    invoke-direct {v0, p0, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v1, 0x0

    invoke-static {p0, v0, v1, v1}, Landroid/support/v4/app/JobIntentService;->j6(Landroid/content/Context;Landroid/content/ComponentName;ZI)Landroid/support/v4/app/JobIntentService$h;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/JobIntentService;->Hw:Landroid/support/v4/app/JobIntentService$h;

    :goto_24
    return-void
.end method

.method public onDestroy()V
    .registers 3

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    iget-object v0, p0, Landroid/support/v4/app/JobIntentService;->u7:Ljava/util/ArrayList;

    if-eqz v0, :cond_15

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_9
    iput-boolean v1, p0, Landroid/support/v4/app/JobIntentService;->gn:Z

    iget-object v1, p0, Landroid/support/v4/app/JobIntentService;->Hw:Landroid/support/v4/app/JobIntentService$h;

    invoke-virtual {v1}, Landroid/support/v4/app/JobIntentService$h;->j6()V

    monitor-exit v0

    goto :goto_15

    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_9 .. :try_end_14} :catchall_12

    throw v1

    :cond_15
    :goto_15
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 6

    iget-object p2, p0, Landroid/support/v4/app/JobIntentService;->u7:Ljava/util/ArrayList;

    if-eqz p2, :cond_28

    iget-object p2, p0, Landroid/support/v4/app/JobIntentService;->Hw:Landroid/support/v4/app/JobIntentService$h;

    invoke-virtual {p2}, Landroid/support/v4/app/JobIntentService$h;->FH()V

    iget-object p2, p0, Landroid/support/v4/app/JobIntentService;->u7:Ljava/util/ArrayList;

    monitor-enter p2

    :try_start_c
    iget-object v0, p0, Landroid/support/v4/app/JobIntentService;->u7:Ljava/util/ArrayList;

    new-instance v1, Landroid/support/v4/app/JobIntentService$d;

    if-eqz p1, :cond_13

    goto :goto_18

    :cond_13
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    :goto_18
    invoke-direct {v1, p0, p1, p3}, Landroid/support/v4/app/JobIntentService$d;-><init>(Landroid/support/v4/app/JobIntentService;Landroid/content/Intent;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/support/v4/app/JobIntentService;->j6(Z)V

    monitor-exit p2

    const/4 p1, 0x3

    return p1

    :catchall_25
    move-exception p1

    monitor-exit p2
    :try_end_27
    .catchall {:try_start_c .. :try_end_27} :catchall_25

    throw p1

    :cond_28
    const/4 p1, 0x2

    return p1
.end method
