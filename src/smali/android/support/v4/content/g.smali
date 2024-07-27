.class abstract Landroid/support/v4/content/g;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Params:",
        "Ljava/lang/Object;",
        "Progress:",
        "Ljava/lang/Object;",
        "Result:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final DW:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field public static final FH:Ljava/util/concurrent/Executor;

.field private static Hw:Landroid/support/v4/content/g$b;

.field private static final j6:Ljava/util/concurrent/ThreadFactory;

.field private static volatile v5:Ljava/util/concurrent/Executor;


# instance fields
.field private final VH:Ljava/util/concurrent/FutureTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/FutureTask",
            "<TResult;>;"
        }
    .end annotation
.end field

.field private final Zo:Landroid/support/v4/content/g$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/content/g$d",
            "<TParams;TResult;>;"
        }
    .end annotation
.end field

.field private volatile gn:Landroid/support/v4/content/g$c;

.field private final tp:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final u7:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    new-instance v0, Landroid/support/v4/content/c;

    invoke-direct {v0}, Landroid/support/v4/content/c;-><init>()V

    sput-object v0, Landroid/support/v4/content/g;->j6:Ljava/util/concurrent/ThreadFactory;

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    sput-object v0, Landroid/support/v4/content/g;->DW:Ljava/util/concurrent/BlockingQueue;

    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v2, 0x5

    const/16 v3, 0x80

    const-wide/16 v4, 0x1

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v7, Landroid/support/v4/content/g;->DW:Ljava/util/concurrent/BlockingQueue;

    sget-object v8, Landroid/support/v4/content/g;->j6:Ljava/util/concurrent/ThreadFactory;

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v1, Landroid/support/v4/content/g;->FH:Ljava/util/concurrent/Executor;

    sget-object v0, Landroid/support/v4/content/g;->FH:Ljava/util/concurrent/Executor;

    sput-object v0, Landroid/support/v4/content/g;->v5:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Landroid/support/v4/content/g$c;->j6:Landroid/support/v4/content/g$c;

    iput-object v0, p0, Landroid/support/v4/content/g;->gn:Landroid/support/v4/content/g$c;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Landroid/support/v4/content/g;->u7:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Landroid/support/v4/content/g;->tp:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Landroid/support/v4/content/d;

    invoke-direct {v0, p0}, Landroid/support/v4/content/d;-><init>(Landroid/support/v4/content/g;)V

    iput-object v0, p0, Landroid/support/v4/content/g;->Zo:Landroid/support/v4/content/g$d;

    new-instance v0, Landroid/support/v4/content/e;

    iget-object v1, p0, Landroid/support/v4/content/g;->Zo:Landroid/support/v4/content/g$d;

    invoke-direct {v0, p0, v1}, Landroid/support/v4/content/e;-><init>(Landroid/support/v4/content/g;Ljava/util/concurrent/Callable;)V

    iput-object v0, p0, Landroid/support/v4/content/g;->VH:Ljava/util/concurrent/FutureTask;

    return-void
.end method

.method static synthetic DW(Landroid/support/v4/content/g;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 2

    iget-object v0, p0, Landroid/support/v4/content/g;->u7:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method private static Hw()Landroid/os/Handler;
    .registers 2

    const-class v0, Landroid/support/v4/content/g;

    monitor-enter v0

    :try_start_0
    sget-object v0, Landroid/support/v4/content/g;->Hw:Landroid/support/v4/content/g$b;

    if-nez v0, :cond_0

    new-instance v0, Landroid/support/v4/content/g$b;

    invoke-direct {v0}, Landroid/support/v4/content/g$b;-><init>()V

    sput-object v0, Landroid/support/v4/content/g;->Hw:Landroid/support/v4/content/g$b;

    :cond_0
    sget-object v0, Landroid/support/v4/content/g;->Hw:Landroid/support/v4/content/g$b;

    const-class v1, Landroid/support/v4/content/g;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    const-class v1, Landroid/support/v4/content/g;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic j6(Landroid/support/v4/content/g;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 2

    iget-object v0, p0, Landroid/support/v4/content/g;->tp:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method


# virtual methods
.method protected varargs abstract DW([Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TParams;)TResult;"
        }
    .end annotation
.end method

.method protected DW()V
    .registers 1

    return-void
.end method

.method protected DW(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/support/v4/content/g;->DW()V

    return-void
.end method

.method protected FH()V
    .registers 1

    return-void
.end method

.method protected FH(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    return-void
.end method

.method protected varargs FH([Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TProgress;)V"
        }
    .end annotation

    return-void
.end method

.method Hw(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)TResult;"
        }
    .end annotation

    const/4 v4, 0x1

    invoke-static {}, Landroid/support/v4/content/g;->Hw()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/support/v4/content/g$a;

    new-array v2, v4, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-direct {v1, p0, v2}, Landroid/support/v4/content/g$a;-><init>(Landroid/support/v4/content/g;[Ljava/lang/Object;)V

    invoke-virtual {v0, v4, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-object p1
.end method

.method public final varargs j6(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/support/v4/content/g;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "[TParams;)",
            "Landroid/support/v4/content/g",
            "<TParams;TProgress;TResult;>;"
        }
    .end annotation

    iget-object v0, p0, Landroid/support/v4/content/g;->gn:Landroid/support/v4/content/g$c;

    sget-object v1, Landroid/support/v4/content/g$c;->j6:Landroid/support/v4/content/g$c;

    if-eq v0, v1, :cond_2

    sget-object v0, Landroid/support/v4/content/f;->j6:[I

    iget-object v1, p0, Landroid/support/v4/content/g;->gn:Landroid/support/v4/content/g$c;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "We should never reach this state"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot execute task: the task has already been executed (a task can be executed only once)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot execute task: the task is already running."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    sget-object v0, Landroid/support/v4/content/g$c;->DW:Landroid/support/v4/content/g$c;

    iput-object v0, p0, Landroid/support/v4/content/g;->gn:Landroid/support/v4/content/g$c;

    invoke-virtual {p0}, Landroid/support/v4/content/g;->FH()V

    iget-object v0, p0, Landroid/support/v4/content/g;->Zo:Landroid/support/v4/content/g$d;

    iput-object p2, v0, Landroid/support/v4/content/g$d;->j6:[Ljava/lang/Object;

    iget-object v0, p0, Landroid/support/v4/content/g;->VH:Ljava/util/concurrent/FutureTask;

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-object p0
.end method

.method j6(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/support/v4/content/g;->j6()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Landroid/support/v4/content/g;->DW(Ljava/lang/Object;)V

    :goto_0
    sget-object v0, Landroid/support/v4/content/g$c;->FH:Landroid/support/v4/content/g$c;

    iput-object v0, p0, Landroid/support/v4/content/g;->gn:Landroid/support/v4/content/g$c;

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Landroid/support/v4/content/g;->FH(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final j6()Z
    .registers 2

    iget-object v0, p0, Landroid/support/v4/content/g;->u7:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public final j6(Z)Z
    .registers 4

    iget-object v0, p0, Landroid/support/v4/content/g;->u7:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Landroid/support/v4/content/g;->VH:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/FutureTask;->cancel(Z)Z

    move-result v0

    return v0
.end method

.method v5(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    iget-object v0, p0, Landroid/support/v4/content/g;->tp:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Landroid/support/v4/content/g;->Hw(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method
