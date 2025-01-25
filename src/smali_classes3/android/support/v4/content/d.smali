.class Landroid/support/v4/content/d;
.super Landroid/support/v4/content/g$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/content/g;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/content/g$d<",
        "TParams;TResult;>;"
    }
.end annotation


# instance fields
.field final DW:Landroid/support/v4/content/g;


# direct methods
.method constructor <init>(Landroid/support/v4/content/g;)V
    .registers 2

    iput-object p1, p0, Landroid/support/v4/content/d;->DW:Landroid/support/v4/content/g;

    invoke-direct {p0}, Landroid/support/v4/content/g$d;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TResult;"
        }
    .end annotation

    iget-object v0, p0, Landroid/support/v4/content/d;->DW:Landroid/support/v4/content/g;

    invoke-static {v0}, Landroid/support/v4/content/g;->j6(Landroid/support/v4/content/g;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const/16 v0, 0xa

    const/4 v2, 0x0

    :try_start_d
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    iget-object v0, p0, Landroid/support/v4/content/d;->DW:Landroid/support/v4/content/g;

    iget-object v3, p0, Landroid/support/v4/content/g$d;->j6:[Ljava/lang/Object;

    invoke-virtual {v0, v3}, Landroid/support/v4/content/g;->DW([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->flushPendingCommands()V
    :try_end_1b
    .catchall {:try_start_d .. :try_end_1b} :catchall_21

    iget-object v0, p0, Landroid/support/v4/content/d;->DW:Landroid/support/v4/content/g;

    invoke-virtual {v0, v2}, Landroid/support/v4/content/g;->Hw(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v2

    :catchall_21
    move-exception v0

    :try_start_22
    iget-object v3, p0, Landroid/support/v4/content/d;->DW:Landroid/support/v4/content/g;

    invoke-static {v3}, Landroid/support/v4/content/g;->DW(Landroid/support/v4/content/g;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    throw v0
    :try_end_2c
    .catchall {:try_start_22 .. :try_end_2c} :catchall_2c

    :catchall_2c
    move-exception v0

    iget-object v1, p0, Landroid/support/v4/content/d;->DW:Landroid/support/v4/content/g;

    invoke-virtual {v1, v2}, Landroid/support/v4/content/g;->Hw(Ljava/lang/Object;)Ljava/lang/Object;

    throw v0
.end method
