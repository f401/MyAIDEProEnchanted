.class public abstract Labcd/Xy;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Labcd/Xy$a;,
        Labcd/Xy$b;,
        Labcd/Xy$c;,
        Labcd/Xy$d;
    }
.end annotation

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
.field private static final DW:I

.field private static final FH:I

.field private static final Hw:Ljava/util/concurrent/ThreadFactory;

.field public static final VH:Ljava/util/concurrent/Executor;

.field public static final Zo:Ljava/util/concurrent/Executor;

.field private static final gn:Labcd/Xy$b;

.field private static final j6:I

.field private static volatile u7:Ljava/util/concurrent/Executor;

.field private static final v5:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final EQ:Ljava/util/concurrent/FutureTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/FutureTask<",
            "TResult;>;"
        }
    .end annotation
.end field

.field private final J0:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final J8:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final tp:Labcd/Xy$e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LXy$e<",
            "TParams;TResult;>;"
        }
    .end annotation
.end field

.field private volatile we:Labcd/Xy$d;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    sput v0, Labcd/Xy;->j6:I

    add-int/lit8 v2, v0, 0x1

    sput v2, Labcd/Xy;->DW:I

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v3, v0, 0x1

    sput v3, Labcd/Xy;->FH:I

    new-instance v8, Labcd/Ty;

    invoke-direct {v8}, Labcd/Ty;-><init>()V

    sput-object v8, Labcd/Xy;->Hw:Ljava/util/concurrent/ThreadFactory;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v0, 0x80

    invoke-direct {v7, v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    sput-object v7, Labcd/Xy;->v5:Ljava/util/concurrent/BlockingQueue;

    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    const-wide/16 v4, 0x1

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v0, Labcd/Xy;->Zo:Ljava/util/concurrent/Executor;

    new-instance v0, Labcd/Xy$c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Labcd/Xy$c;-><init>(Labcd/Ty;)V

    sput-object v0, Labcd/Xy;->VH:Ljava/util/concurrent/Executor;

    new-instance v1, Labcd/Xy$b;

    invoke-direct {v1}, Labcd/Xy$b;-><init>()V

    sput-object v1, Labcd/Xy;->gn:Labcd/Xy$b;

    sput-object v0, Labcd/Xy;->u7:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Labcd/Xy$d;->j6:Labcd/Xy$d;

    iput-object v0, p0, Labcd/Xy;->we:Labcd/Xy$d;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Labcd/Xy;->J0:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Labcd/Xy;->J8:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Labcd/Uy;

    invoke-direct {v0, p0}, Labcd/Uy;-><init>(Labcd/Xy;)V

    iput-object v0, p0, Labcd/Xy;->tp:Labcd/Xy$e;

    new-instance v1, Labcd/Vy;

    invoke-direct {v1, p0, v0}, Labcd/Vy;-><init>(Labcd/Xy;Ljava/util/concurrent/Callable;)V

    iput-object v1, p0, Labcd/Xy;->EQ:Ljava/util/concurrent/FutureTask;

    return-void
.end method

.method static synthetic DW(Labcd/Xy;Ljava/lang/Object;)V
    .registers 2

    invoke-direct {p0, p1}, Labcd/Xy;->Zo(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic FH(Labcd/Xy;Ljava/lang/Object;)V
    .registers 2

    invoke-direct {p0, p1}, Labcd/Xy;->Hw(Ljava/lang/Object;)V

    return-void
.end method

.method private Hw(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    invoke-virtual {p0}, Labcd/Xy;->Zo()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {p0, p1}, Labcd/Xy;->DW(Ljava/lang/Object;)V

    goto :goto_d

    :cond_a
    invoke-virtual {p0, p1}, Labcd/Xy;->FH(Ljava/lang/Object;)V

    :goto_d
    sget-object p1, Labcd/Xy$d;->FH:Labcd/Xy$d;

    iput-object p1, p0, Labcd/Xy;->we:Labcd/Xy$d;

    return-void
.end method

.method private Zo(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    iget-object v0, p0, Labcd/Xy;->J8:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_b

    invoke-direct {p0, p1}, Labcd/Xy;->v5(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b
    return-void
.end method

.method static synthetic j6(Labcd/Xy;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    invoke-direct {p0, p1}, Labcd/Xy;->v5(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic j6(Labcd/Xy;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 1

    iget-object p0, p0, Labcd/Xy;->J8:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method private v5(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)TResult;"
        }
    .end annotation

    sget-object v0, Labcd/Xy;->gn:Labcd/Xy$b;

    new-instance v1, Labcd/Xy$a;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-direct {v1, p0, v3}, Labcd/Xy$a;-><init>(Labcd/Xy;[Ljava/lang/Object;)V

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-object p1
.end method


# virtual methods
.method protected abstract DW(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation
.end method

.method protected varargs DW([Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TProgress;)V"
        }
    .end annotation

    return-void
.end method

.method public final DW(Z)Z
    .registers 4

    iget-object v0, p0, Labcd/Xy;->J0:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Labcd/Xy;->EQ:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/FutureTask;->cancel(Z)Z

    move-result p1

    return p1
.end method

.method protected abstract FH(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation
.end method

.method public final Hw()Labcd/Xy$d;
    .registers 2

    iget-object v0, p0, Labcd/Xy;->we:Labcd/Xy$d;

    return-object v0
.end method

.method protected VH()V
    .registers 1

    return-void
.end method

.method public final Zo()Z
    .registers 2

    iget-object v0, p0, Labcd/Xy;->J0:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public final varargs j6(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Labcd/Xy;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "[TParams;)",
            "LXy<",
            "TParams;TProgress;TResult;>;"
        }
    .end annotation

    iget-object v0, p0, Labcd/Xy;->we:Labcd/Xy$d;

    sget-object v1, Labcd/Xy$d;->j6:Labcd/Xy$d;

    if-eq v0, v1, :cond_27

    sget-object v0, Labcd/Wy;->j6:[I

    iget-object v1, p0, Labcd/Xy;->we:Labcd/Xy$d;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1f

    const/4 v1, 0x2

    if-eq v0, v1, :cond_17

    goto :goto_27

    :cond_17
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot execute task: the task has already been executed (a task can be executed only once)"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1f
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot execute task: the task is already running."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_27
    :goto_27
    sget-object v0, Labcd/Xy$d;->DW:Labcd/Xy$d;

    iput-object v0, p0, Labcd/Xy;->we:Labcd/Xy$d;

    invoke-virtual {p0}, Labcd/Xy;->VH()V

    iget-object v0, p0, Labcd/Xy;->tp:Labcd/Xy$e;

    iput-object p2, v0, Labcd/Xy$e;->j6:[Ljava/lang/Object;

    iget-object p2, p0, Labcd/Xy;->EQ:Ljava/util/concurrent/FutureTask;

    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-object p0
.end method

.method protected varargs abstract j6([Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TParams;)TResult;"
        }
    .end annotation
.end method
