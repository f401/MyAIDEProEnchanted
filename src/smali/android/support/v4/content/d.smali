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
        "Landroid/support/v4/content/g$d",
        "<TParams;TResult;>;"
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

    const/4 v1, 0x0

    const/4 v2, 0x1

    iget-object v0, p0, Landroid/support/v4/content/d;->DW:Landroid/support/v4/content/g;

    invoke-static {v0}, Landroid/support/v4/content/g;->j6(Landroid/support/v4/content/g;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const/16 v0, 0xa

    :try_start_0
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    iget-object v0, p0, Landroid/support/v4/content/d;->DW:Landroid/support/v4/content/g;

    iget-object v2, p0, Landroid/support/v4/content/g$d;->j6:[Ljava/lang/Object;

    invoke-virtual {v0, v2}, Landroid/support/v4/content/g;->DW([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->flushPendingCommands()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Landroid/support/v4/content/d;->DW:Landroid/support/v4/content/g;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/g;->Hw(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1

    :catch_0
    move-exception v0

    :try_start_1
    iget-object v2, p0, Landroid/support/v4/content/d;->DW:Landroid/support/v4/content/g;

    invoke-static {v2}, Landroid/support/v4/content/g;->DW(Landroid/support/v4/content/g;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    iget-object v2, p0, Landroid/support/v4/content/d;->DW:Landroid/support/v4/content/g;

    invoke-virtual {v2, v1}, Landroid/support/v4/content/g;->Hw(Ljava/lang/Object;)Ljava/lang/Object;

    throw v0
.end method
