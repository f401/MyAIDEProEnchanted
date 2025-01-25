.class public final Landroid/support/v4/os/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/os/a$a;
    }
.end annotation


# instance fields
.field private DW:Landroid/support/v4/os/a$a;

.field private FH:Ljava/lang/Object;

.field private Hw:Z

.field private j6:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public DW()Ljava/lang/Object;
    .registers 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_8

    const/4 v0, 0x0

    return-object v0

    :cond_8
    monitor-enter p0

    :try_start_9
    iget-object v0, p0, Landroid/support/v4/os/a;->FH:Ljava/lang/Object;

    if-nez v0, :cond_1e

    new-instance v0, Landroid/os/CancellationSignal;

    invoke-direct {v0}, Landroid/os/CancellationSignal;-><init>()V

    iput-object v0, p0, Landroid/support/v4/os/a;->FH:Ljava/lang/Object;

    iget-boolean v1, p0, Landroid/support/v4/os/a;->j6:Z

    if-eqz v1, :cond_1e

    move-object v1, v0

    check-cast v1, Landroid/os/CancellationSignal;

    invoke-virtual {v0}, Landroid/os/CancellationSignal;->cancel()V

    :cond_1e
    iget-object v0, p0, Landroid/support/v4/os/a;->FH:Ljava/lang/Object;

    monitor-exit p0

    return-object v0

    :catchall_22
    move-exception v0

    monitor-exit p0
    :try_end_24
    .catchall {:try_start_9 .. :try_end_24} :catchall_22

    throw v0
.end method

.method public FH()Z
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Landroid/support/v4/os/a;->j6:Z

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public Hw()V
    .registers 2

    invoke-virtual {p0}, Landroid/support/v4/os/a;->FH()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    new-instance v0, Landroid/support/v4/os/c;

    invoke-direct {v0}, Landroid/support/v4/os/c;-><init>()V

    throw v0
.end method

.method public j6()V
    .registers 5

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Landroid/support/v4/os/a;->j6:Z

    if-eqz v0, :cond_7

    monitor-exit p0

    return-void

    :cond_7
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/os/a;->j6:Z

    iput-boolean v0, p0, Landroid/support/v4/os/a;->Hw:Z

    iget-object v0, p0, Landroid/support/v4/os/a;->DW:Landroid/support/v4/os/a$a;

    iget-object v1, p0, Landroid/support/v4/os/a;->FH:Ljava/lang/Object;

    monitor-exit p0
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_3e

    const/4 v2, 0x0

    if-eqz v0, :cond_1a

    :try_start_14
    invoke-interface {v0}, Landroid/support/v4/os/a$a;->onCancel()V

    goto :goto_1a

    :catchall_18
    move-exception v0

    goto :goto_28

    :cond_1a
    :goto_1a
    if-eqz v1, :cond_33

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-lt v0, v3, :cond_33

    check-cast v1, Landroid/os/CancellationSignal;

    invoke-virtual {v1}, Landroid/os/CancellationSignal;->cancel()V
    :try_end_27
    .catchall {:try_start_14 .. :try_end_27} :catchall_18

    goto :goto_33

    :goto_28
    monitor-enter p0

    :try_start_29
    iput-boolean v2, p0, Landroid/support/v4/os/a;->Hw:Z

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0
    :try_end_2f
    .catchall {:try_start_29 .. :try_end_2f} :catchall_30

    throw v0

    :catchall_30
    move-exception v0

    :try_start_31
    monitor-exit p0
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_30

    throw v0

    :cond_33
    :goto_33
    monitor-enter p0

    :try_start_34
    iput-boolean v2, p0, Landroid/support/v4/os/a;->Hw:Z

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0

    return-void

    :catchall_3b
    move-exception v0

    monitor-exit p0
    :try_end_3d
    .catchall {:try_start_34 .. :try_end_3d} :catchall_3b

    throw v0

    :catchall_3e
    move-exception v0

    :try_start_3f
    monitor-exit p0
    :try_end_40
    .catchall {:try_start_3f .. :try_end_40} :catchall_3e

    throw v0
.end method
