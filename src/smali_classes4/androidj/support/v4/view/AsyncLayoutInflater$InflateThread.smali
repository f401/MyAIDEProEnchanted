.class Landroidj/support/v4/view/AsyncLayoutInflater$InflateThread;
.super Ljava/lang/Thread;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidj/support/v4/view/AsyncLayoutInflater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InflateThread"
.end annotation


# static fields
.field private static final sInstance:Landroidj/support/v4/view/AsyncLayoutInflater$InflateThread;


# instance fields
.field private mQueue:Ljava/util/concurrent/ArrayBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ArrayBlockingQueue",
            "<",
            "Landroidj/support/v4/view/AsyncLayoutInflater$InflateRequest;",
            ">;"
        }
    .end annotation
.end field

.field private mRequestPool:Landroidj/support/v4/util/Pools$SynchronizedPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidj/support/v4/util/Pools$SynchronizedPool",
            "<",
            "Landroidj/support/v4/view/AsyncLayoutInflater$InflateRequest;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroidj/support/v4/view/AsyncLayoutInflater$InflateThread;

    invoke-direct {v0}, Landroidj/support/v4/view/AsyncLayoutInflater$InflateThread;-><init>()V

    sput-object v0, Landroidj/support/v4/view/AsyncLayoutInflater$InflateThread;->sInstance:Landroidj/support/v4/view/AsyncLayoutInflater$InflateThread;

    sget-object v0, Landroidj/support/v4/view/AsyncLayoutInflater$InflateThread;->sInstance:Landroidj/support/v4/view/AsyncLayoutInflater$InflateThread;

    invoke-virtual {v0}, Landroidj/support/v4/view/AsyncLayoutInflater$InflateThread;->start()V

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    const/16 v1, 0xa

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-direct {v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object v0, p0, Landroidj/support/v4/view/AsyncLayoutInflater$InflateThread;->mQueue:Ljava/util/concurrent/ArrayBlockingQueue;

    new-instance v0, Landroidj/support/v4/util/Pools$SynchronizedPool;

    invoke-direct {v0, v1}, Landroidj/support/v4/util/Pools$SynchronizedPool;-><init>(I)V

    iput-object v0, p0, Landroidj/support/v4/view/AsyncLayoutInflater$InflateThread;->mRequestPool:Landroidj/support/v4/util/Pools$SynchronizedPool;

    return-void
.end method

.method public static getInstance()Landroidj/support/v4/view/AsyncLayoutInflater$InflateThread;
    .registers 1

    sget-object v0, Landroidj/support/v4/view/AsyncLayoutInflater$InflateThread;->sInstance:Landroidj/support/v4/view/AsyncLayoutInflater$InflateThread;

    return-object v0
.end method


# virtual methods
.method public enqueue(Landroidj/support/v4/view/AsyncLayoutInflater$InflateRequest;)V
    .registers 5

    :try_start_0
    iget-object v0, p0, Landroidj/support/v4/view/AsyncLayoutInflater$InflateThread;->mQueue:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ArrayBlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Failed to enqueue async inflate request"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public obtainRequest()Landroidj/support/v4/view/AsyncLayoutInflater$InflateRequest;
    .registers 2

    iget-object v0, p0, Landroidj/support/v4/view/AsyncLayoutInflater$InflateThread;->mRequestPool:Landroidj/support/v4/util/Pools$SynchronizedPool;

    invoke-virtual {v0}, Landroidj/support/v4/util/Pools$SynchronizedPool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidj/support/v4/view/AsyncLayoutInflater$InflateRequest;

    if-nez v0, :cond_f

    new-instance v0, Landroidj/support/v4/view/AsyncLayoutInflater$InflateRequest;

    invoke-direct {v0}, Landroidj/support/v4/view/AsyncLayoutInflater$InflateRequest;-><init>()V

    :cond_f
    return-object v0
.end method

.method public releaseRequest(Landroidj/support/v4/view/AsyncLayoutInflater$InflateRequest;)V
    .registers 4

    const/4 v1, 0x0

    iput-object v1, p1, Landroidj/support/v4/view/AsyncLayoutInflater$InflateRequest;->callback:Landroidj/support/v4/view/AsyncLayoutInflater$OnInflateFinishedListener;

    iput-object v1, p1, Landroidj/support/v4/view/AsyncLayoutInflater$InflateRequest;->inflater:Landroidj/support/v4/view/AsyncLayoutInflater;

    iput-object v1, p1, Landroidj/support/v4/view/AsyncLayoutInflater$InflateRequest;->parent:Landroid/view/ViewGroup;

    const/4 v0, 0x0

    iput v0, p1, Landroidj/support/v4/view/AsyncLayoutInflater$InflateRequest;->resid:I

    iput-object v1, p1, Landroidj/support/v4/view/AsyncLayoutInflater$InflateRequest;->view:Landroid/view/View;

    iget-object v0, p0, Landroidj/support/v4/view/AsyncLayoutInflater$InflateThread;->mRequestPool:Landroidj/support/v4/util/Pools$SynchronizedPool;

    invoke-virtual {v0, p1}, Landroidj/support/v4/util/Pools$SynchronizedPool;->release(Ljava/lang/Object;)Z

    return-void
.end method

.method public run()V
    .registers 7

    const/4 v5, 0x0

    :goto_1
    :try_start_1
    iget-object v0, p0, Landroidj/support/v4/view/AsyncLayoutInflater$InflateThread;->mQueue:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ArrayBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidj/support/v4/view/AsyncLayoutInflater$InflateRequest;
    :try_end_9
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_9} :catch_24

    :try_start_9
    iget-object v1, v0, Landroidj/support/v4/view/AsyncLayoutInflater$InflateRequest;->inflater:Landroidj/support/v4/view/AsyncLayoutInflater;

    iget-object v1, v1, Landroidj/support/v4/view/AsyncLayoutInflater;->mInflater:Landroid/view/LayoutInflater;

    iget v2, v0, Landroidj/support/v4/view/AsyncLayoutInflater$InflateRequest;->resid:I

    iget-object v3, v0, Landroidj/support/v4/view/AsyncLayoutInflater$InflateRequest;->parent:Landroid/view/ViewGroup;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Landroidj/support/v4/view/AsyncLayoutInflater$InflateRequest;->view:Landroid/view/View;
    :try_end_18
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_18} :catch_2b

    :goto_18
    iget-object v1, v0, Landroidj/support/v4/view/AsyncLayoutInflater$InflateRequest;->inflater:Landroidj/support/v4/view/AsyncLayoutInflater;

    iget-object v1, v1, Landroidj/support/v4/view/AsyncLayoutInflater;->mHandler:Landroid/os/Handler;

    invoke-static {v1, v5, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_1

    :catch_24
    move-exception v0

    const-string v1, "AsyncLayoutInflater"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catch_2b
    move-exception v1

    const-string v2, "AsyncLayoutInflater"

    const-string v3, "Failed to inflate resource in the background! Retrying on the UI thread"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_18
.end method
