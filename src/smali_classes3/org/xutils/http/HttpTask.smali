.class public Lorg/xutils/http/HttpTask;
.super Lorg/xutils/common/task/AbsTask;
.source "HttpTask.java"

# interfaces
.implements Lorg/xutils/http/ProgressHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/xutils/http/HttpTask$RequestWorker;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ResultType:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/xutils/common/task/AbsTask",
        "<TResultType;>;",
        "Lorg/xutils/http/ProgressHandler;"
    }
.end annotation


# static fields
.field static final $assertionsDisabled:Z = false

.field private static final CACHE_EXECUTOR:Lorg/xutils/common/task/PriorityExecutor;

.field private static final DOWNLOAD_TASK:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lorg/xutils/http/HttpTask",
            "<*>;>;>;"
        }
    .end annotation
.end field

.field private static final FLAG_CACHE:I = 0x2

.field private static final FLAG_PROGRESS:I = 0x3

.field private static final FLAG_REQUEST_CREATED:I = 0x1

.field private static final HTTP_EXECUTOR:Lorg/xutils/common/task/PriorityExecutor;

.field private static final sCurrFileLoadCount:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private cacheCallback:Lorg/xutils/common/Callback$CacheCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/xutils/common/Callback$CacheCallback",
            "<TResultType;>;"
        }
    .end annotation
.end field

.field private final cacheLock:Ljava/lang/Object;

.field private final callback:Lorg/xutils/common/Callback$CommonCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/xutils/common/Callback$CommonCallback",
            "<TResultType;>;"
        }
    .end annotation
.end field

.field private final executor:Ljava/util/concurrent/Executor;

.field private volatile hasException:Z

.field private lastUpdateTime:J

.field private loadType:Ljava/lang/reflect/Type;

.field private loadingUpdateMaxTimeSpan:J

.field private params:Lorg/xutils/http/RequestParams;

.field private prepareCallback:Lorg/xutils/common/Callback$PrepareCallback;

.field private progressCallback:Lorg/xutils/common/Callback$ProgressCallback;

.field private rawResult:Ljava/lang/Object;

.field private request:Lorg/xutils/http/request/UriRequest;

.field private requestInterceptListener:Lorg/xutils/http/app/RequestInterceptListener;

.field private tracker:Lorg/xutils/http/app/RequestTracker;

.field private volatile trustCache:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/4 v3, 0x5

    const/4 v2, 0x1

    .line 36
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lorg/xutils/http/HttpTask;->sCurrFileLoadCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 62
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v2}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lorg/xutils/http/HttpTask;->DOWNLOAD_TASK:Ljava/util/HashMap;

    .line 66
    new-instance v0, Lorg/xutils/common/task/PriorityExecutor;

    invoke-direct {v0, v3, v2}, Lorg/xutils/common/task/PriorityExecutor;-><init>(IZ)V

    sput-object v0, Lorg/xutils/http/HttpTask;->HTTP_EXECUTOR:Lorg/xutils/common/task/PriorityExecutor;

    .line 67
    new-instance v0, Lorg/xutils/common/task/PriorityExecutor;

    invoke-direct {v0, v3, v2}, Lorg/xutils/common/task/PriorityExecutor;-><init>(IZ)V

    sput-object v0, Lorg/xutils/http/HttpTask;->CACHE_EXECUTOR:Lorg/xutils/common/task/PriorityExecutor;

    return-void
.end method

.method public constructor <init>(Lorg/xutils/http/RequestParams;Lorg/xutils/common/Callback$Cancelable;Lorg/xutils/common/Callback$CommonCallback;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xutils/http/RequestParams;",
            "Lorg/xutils/common/Callback$Cancelable;",
            "Lorg/xutils/common/Callback$CommonCallback",
            "<TResultType;>;)V"
        }
    .end annotation

    const/4 v1, 0x0

    .line 72
    invoke-direct {p0, p2}, Lorg/xutils/common/task/AbsTask;-><init>(Lorg/xutils/common/Callback$Cancelable;)V

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/xutils/http/HttpTask;->hasException:Z

    .line 46
    iput-object v1, p0, Lorg/xutils/http/HttpTask;->rawResult:Ljava/lang/Object;

    .line 47
    iput-object v1, p0, Lorg/xutils/http/HttpTask;->trustCache:Ljava/lang/Boolean;

    .line 48
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/xutils/http/HttpTask;->cacheLock:Ljava/lang/Object;

    .line 522
    const-wide/16 v0, 0x12c

    iput-wide v0, p0, Lorg/xutils/http/HttpTask;->loadingUpdateMaxTimeSpan:J

    .line 74
    iput-object p1, p0, Lorg/xutils/http/HttpTask;->params:Lorg/xutils/http/RequestParams;

    .line 79
    iput-object p3, p0, Lorg/xutils/http/HttpTask;->callback:Lorg/xutils/common/Callback$CommonCallback;

    .line 80
    instance-of v0, p3, Lorg/xutils/common/Callback$CacheCallback;

    if-eqz v0, :cond_0

    move-object v0, p3

    .line 81
    check-cast v0, Lorg/xutils/common/Callback$CacheCallback;

    iput-object v0, p0, Lorg/xutils/http/HttpTask;->cacheCallback:Lorg/xutils/common/Callback$CacheCallback;

    .line 83
    :cond_0
    instance-of v0, p3, Lorg/xutils/common/Callback$PrepareCallback;

    if-eqz v0, :cond_1

    move-object v0, p3

    .line 84
    check-cast v0, Lorg/xutils/common/Callback$PrepareCallback;

    iput-object v0, p0, Lorg/xutils/http/HttpTask;->prepareCallback:Lorg/xutils/common/Callback$PrepareCallback;

    .line 86
    :cond_1
    instance-of v0, p3, Lorg/xutils/common/Callback$ProgressCallback;

    if-eqz v0, :cond_2

    move-object v0, p3

    .line 87
    check-cast v0, Lorg/xutils/common/Callback$ProgressCallback;

    iput-object v0, p0, Lorg/xutils/http/HttpTask;->progressCallback:Lorg/xutils/common/Callback$ProgressCallback;

    .line 89
    :cond_2
    instance-of v0, p3, Lorg/xutils/http/app/RequestInterceptListener;

    if-eqz v0, :cond_3

    move-object v0, p3

    .line 90
    check-cast v0, Lorg/xutils/http/app/RequestInterceptListener;

    iput-object v0, p0, Lorg/xutils/http/HttpTask;->requestInterceptListener:Lorg/xutils/http/app/RequestInterceptListener;

    .line 95
    :cond_3
    invoke-virtual {p1}, Lorg/xutils/http/RequestParams;->getRequestTracker()Lorg/xutils/http/app/RequestTracker;

    move-result-object v0

    .line 96
    if-nez v0, :cond_8

    .line 97
    instance-of v0, p3, Lorg/xutils/http/app/RequestTracker;

    if-eqz v0, :cond_5

    .line 98
    check-cast p3, Lorg/xutils/http/app/RequestTracker;

    .line 103
    :goto_0
    if-eqz p3, :cond_4

    .line 104
    new-instance v0, Lorg/xutils/http/RequestTrackerWrapper;

    invoke-direct {v0, p3}, Lorg/xutils/http/RequestTrackerWrapper;-><init>(Lorg/xutils/http/app/RequestTracker;)V

    iput-object v0, p0, Lorg/xutils/http/HttpTask;->tracker:Lorg/xutils/http/app/RequestTracker;

    .line 109
    :cond_4
    invoke-virtual {p1}, Lorg/xutils/http/RequestParams;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 110
    invoke-virtual {p1}, Lorg/xutils/http/RequestParams;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    iput-object v0, p0, Lorg/xutils/http/HttpTask;->executor:Ljava/util/concurrent/Executor;

    .line 118
    :goto_1
    return-void

    .line 100
    :cond_5
    invoke-static {}, Lorg/xutils/http/request/UriRequestFactory;->getDefaultTracker()Lorg/xutils/http/app/RequestTracker;

    move-result-object p3

    goto :goto_0

    .line 112
    :cond_6
    iget-object v0, p0, Lorg/xutils/http/HttpTask;->cacheCallback:Lorg/xutils/common/Callback$CacheCallback;

    if-eqz v0, :cond_7

    .line 113
    sget-object v0, Lorg/xutils/http/HttpTask;->CACHE_EXECUTOR:Lorg/xutils/common/task/PriorityExecutor;

    iput-object v0, p0, Lorg/xutils/http/HttpTask;->executor:Ljava/util/concurrent/Executor;

    goto :goto_1

    .line 115
    :cond_7
    sget-object v0, Lorg/xutils/http/HttpTask;->HTTP_EXECUTOR:Lorg/xutils/common/task/PriorityExecutor;

    iput-object v0, p0, Lorg/xutils/http/HttpTask;->executor:Ljava/util/concurrent/Executor;

    goto :goto_1

    :cond_8
    move-object p3, v0

    goto :goto_0
.end method

.method static synthetic access$100(Lorg/xutils/http/HttpTask;)V
    .registers 1

    .line 36
    invoke-direct {p0}, Lorg/xutils/http/HttpTask;->closeRequestSync()V

    return-void
.end method

.method static synthetic access$200(Lorg/xutils/http/HttpTask;)Ljava/lang/reflect/Type;
    .registers 2

    .line 36
    iget-object v0, p0, Lorg/xutils/http/HttpTask;->loadType:Ljava/lang/reflect/Type;

    return-object v0
.end method

.method static synthetic access$300()Ljava/util/concurrent/atomic/AtomicInteger;
    .registers 1

    .line 36
    sget-object v0, Lorg/xutils/http/HttpTask;->sCurrFileLoadCount:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic access$400(Lorg/xutils/http/HttpTask;)Lorg/xutils/http/app/RequestInterceptListener;
    .registers 2

    .line 36
    iget-object v0, p0, Lorg/xutils/http/HttpTask;->requestInterceptListener:Lorg/xutils/http/app/RequestInterceptListener;

    return-object v0
.end method

.method static synthetic access$500(Lorg/xutils/http/HttpTask;)Lorg/xutils/http/request/UriRequest;
    .registers 2

    .line 36
    iget-object v0, p0, Lorg/xutils/http/HttpTask;->request:Lorg/xutils/http/request/UriRequest;

    return-object v0
.end method

.method static synthetic access$502(Lorg/xutils/http/HttpTask;Lorg/xutils/http/request/UriRequest;)Lorg/xutils/http/request/UriRequest;
    .registers 2

    .line 36
    iput-object p1, p0, Lorg/xutils/http/HttpTask;->request:Lorg/xutils/http/request/UriRequest;

    return-object p1
.end method

.method static synthetic access$600(Lorg/xutils/http/HttpTask;)Lorg/xutils/http/RequestParams;
    .registers 2

    .line 36
    iget-object v0, p0, Lorg/xutils/http/HttpTask;->params:Lorg/xutils/http/RequestParams;

    return-object v0
.end method

.method static synthetic access$602(Lorg/xutils/http/HttpTask;Lorg/xutils/http/RequestParams;)Lorg/xutils/http/RequestParams;
    .registers 2

    .line 36
    iput-object p1, p0, Lorg/xutils/http/HttpTask;->params:Lorg/xutils/http/RequestParams;

    return-object p1
.end method

.method static synthetic access$700(Lorg/xutils/http/HttpTask;)Lorg/xutils/http/request/UriRequest;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 36
    invoke-direct {p0}, Lorg/xutils/http/HttpTask;->createNewRequest()Lorg/xutils/http/request/UriRequest;

    move-result-object v0

    return-object v0
.end method

.method private checkDownloadTask()V
    .registers 4

    .line 145
    const-class v0, Ljava/io/File;

    iget-object v1, p0, Lorg/xutils/http/HttpTask;->loadType:Ljava/lang/reflect/Type;

    if-ne v0, v1, :cond_6

    .line 146
    sget-object v1, Lorg/xutils/http/HttpTask;->DOWNLOAD_TASK:Ljava/util/HashMap;

    monitor-enter v1

    .line 147
    :try_start_0
    iget-object v0, p0, Lorg/xutils/http/HttpTask;->params:Lorg/xutils/http/RequestParams;

    invoke-virtual {v0}, Lorg/xutils/http/RequestParams;->getSaveFilePath()Ljava/lang/String;

    move-result-object v2

    .line 153
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 154
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 155
    if-eqz v0, :cond_1

    .line 156
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xutils/http/HttpTask;

    .line 157
    if-eqz v0, :cond_0

    .line 158
    invoke-virtual {v0}, Lorg/xutils/http/HttpTask;->cancel()V

    .line 159
    invoke-direct {v0}, Lorg/xutils/http/HttpTask;->closeRequestSync()V

    .line 161
    :cond_0
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    :cond_1
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    :cond_2
    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v0

    const/16 v2, 0xa

    if-le v0, v2, :cond_5

    .line 168
    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 169
    :cond_3
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 170
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 171
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 172
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_3

    .line 173
    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 177
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_5
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 179
    :cond_6
    return-void
.end method

.method private clearRawResult()V
    .registers 3

    .line 479
    iget-object v0, p0, Lorg/xutils/http/HttpTask;->rawResult:Ljava/lang/Object;

    instance-of v1, v0, Ljava/io/Closeable;

    if-eqz v1, :cond_0

    .line 480
    check-cast v0, Ljava/io/Closeable;

    invoke-static {v0}, Lorg/xutils/common/util/IOUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 482
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/xutils/http/HttpTask;->rawResult:Ljava/lang/Object;

    .line 483
    return-void
.end method

.method private closeRequestSync()V
    .registers 3

    .line 501
    const-class v0, Ljava/io/File;

    iget-object v1, p0, Lorg/xutils/http/HttpTask;->loadType:Ljava/lang/reflect/Type;

    if-ne v0, v1, :cond_0

    .line 502
    sget-object v1, Lorg/xutils/http/HttpTask;->sCurrFileLoadCount:Ljava/util/concurrent/atomic/AtomicInteger;

    monitor-enter v1

    .line 503
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 504
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 506
    :cond_0
    invoke-direct {p0}, Lorg/xutils/http/HttpTask;->clearRawResult()V

    .line 507
    iget-object v0, p0, Lorg/xutils/http/HttpTask;->request:Lorg/xutils/http/request/UriRequest;

    invoke-static {v0}, Lorg/xutils/common/util/IOUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 508
    return-void

    .line 504
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private createNewRequest()Lorg/xutils/http/request/UriRequest;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 v4, 0x1

    .line 135
    iget-object v0, p0, Lorg/xutils/http/HttpTask;->params:Lorg/xutils/http/RequestParams;

    invoke-virtual {v0}, Lorg/xutils/http/RequestParams;->init()V

    .line 136
    iget-object v0, p0, Lorg/xutils/http/HttpTask;->params:Lorg/xutils/http/RequestParams;

    iget-object v1, p0, Lorg/xutils/http/HttpTask;->loadType:Ljava/lang/reflect/Type;

    invoke-static {v0, v1}, Lorg/xutils/http/request/UriRequestFactory;->getUriRequest(Lorg/xutils/http/RequestParams;Ljava/lang/reflect/Type;)Lorg/xutils/http/request/UriRequest;

    move-result-object v0

    .line 137
    invoke-virtual {v0, p0}, Lorg/xutils/http/request/UriRequest;->setProgressHandler(Lorg/xutils/http/ProgressHandler;)V

    .line 138
    iget-object v1, p0, Lorg/xutils/http/HttpTask;->params:Lorg/xutils/http/RequestParams;

    invoke-virtual {v1}, Lorg/xutils/http/RequestParams;->getLoadingUpdateMaxTimeSpan()I

    move-result v1

    int-to-long v2, v1

    iput-wide v2, p0, Lorg/xutils/http/HttpTask;->loadingUpdateMaxTimeSpan:J

    .line 139
    new-array v1, v4, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-virtual {p0, v4, v1}, Lorg/xutils/http/HttpTask;->update(I[Ljava/lang/Object;)V

    .line 140
    return-object v0
.end method

.method private resolveLoadType()V
    .registers 5

    const/4 v3, 0x0

    .line 122
    iget-object v0, p0, Lorg/xutils/http/HttpTask;->callback:Lorg/xutils/common/Callback$CommonCallback;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 123
    iget-object v0, p0, Lorg/xutils/http/HttpTask;->callback:Lorg/xutils/common/Callback$CommonCallback;

    instance-of v2, v0, Lorg/xutils/common/Callback$TypedCallback;

    if-eqz v2, :cond_0

    .line 124
    check-cast v0, Lorg/xutils/common/Callback$TypedCallback;

    invoke-interface {v0}, Lorg/xutils/common/Callback$TypedCallback;->getLoadType()Ljava/lang/reflect/Type;

    move-result-object v0

    iput-object v0, p0, Lorg/xutils/http/HttpTask;->loadType:Ljava/lang/reflect/Type;

    .line 130
    :goto_0
    return-void

    .line 125
    :cond_0
    instance-of v0, v0, Lorg/xutils/common/Callback$PrepareCallback;

    if-eqz v0, :cond_1

    .line 126
    const-class v0, Lorg/xutils/common/Callback$PrepareCallback;

    invoke-static {v1, v0, v3}, Lorg/xutils/common/util/ParameterizedTypeUtil;->getParameterizedType(Ljava/lang/reflect/Type;Ljava/lang/Class;I)Ljava/lang/reflect/Type;

    move-result-object v0

    iput-object v0, p0, Lorg/xutils/http/HttpTask;->loadType:Ljava/lang/reflect/Type;

    goto :goto_0

    .line 128
    :cond_1
    const-class v0, Lorg/xutils/common/Callback$CommonCallback;

    invoke-static {v1, v0, v3}, Lorg/xutils/common/util/ParameterizedTypeUtil;->getParameterizedType(Ljava/lang/reflect/Type;Ljava/lang/Class;I)Ljava/lang/reflect/Type;

    move-result-object v0

    iput-object v0, p0, Lorg/xutils/http/HttpTask;->loadType:Ljava/lang/reflect/Type;

    goto :goto_0
.end method


# virtual methods
.method protected cancelWorks()V
    .registers 3

    .line 487
    invoke-static {}, Lorg/xutils/x;->task()Lorg/xutils/common/TaskController;

    move-result-object v0

    new-instance v1, Lorg/xutils/http/HttpTask$2;

    invoke-direct {v1, p0}, Lorg/xutils/http/HttpTask$2;-><init>(Lorg/xutils/http/HttpTask;)V

    invoke-interface {v0, v1}, Lorg/xutils/common/TaskController;->run(Ljava/lang/Runnable;)V

    .line 493
    return-void
.end method

.method protected doBackground()Ljava/lang/Object;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TResultType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v2, 0x0

    .line 185
    invoke-virtual {p0}, Lorg/xutils/http/HttpTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_16

    .line 191
    invoke-direct {p0}, Lorg/xutils/http/HttpTask;->resolveLoadType()V

    .line 192
    invoke-direct {p0}, Lorg/xutils/http/HttpTask;->createNewRequest()Lorg/xutils/http/request/UriRequest;

    move-result-object v0

    iput-object v0, p0, Lorg/xutils/http/HttpTask;->request:Lorg/xutils/http/request/UriRequest;

    .line 193
    invoke-direct {p0}, Lorg/xutils/http/HttpTask;->checkDownloadTask()V

    .line 198
    iget-object v0, p0, Lorg/xutils/http/HttpTask;->params:Lorg/xutils/http/RequestParams;

    invoke-virtual {v0}, Lorg/xutils/http/RequestParams;->getHttpRetryHandler()Lorg/xutils/http/app/HttpRetryHandler;

    move-result-object v0

    .line 199
    if-nez v0, :cond_17

    .line 200
    new-instance v0, Lorg/xutils/http/app/HttpRetryHandler;

    invoke-direct {v0}, Lorg/xutils/http/app/HttpRetryHandler;-><init>()V

    move-object v1, v0

    .line 202
    :goto_0
    iget-object v0, p0, Lorg/xutils/http/HttpTask;->params:Lorg/xutils/http/RequestParams;

    invoke-virtual {v0}, Lorg/xutils/http/RequestParams;->getMaxRetryCount()I

    move-result v0

    invoke-virtual {v1, v0}, Lorg/xutils/http/app/HttpRetryHandler;->setMaxRetryCount(I)V

    .line 204
    invoke-virtual {p0}, Lorg/xutils/http/HttpTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_15

    .line 210
    iget-object v0, p0, Lorg/xutils/http/HttpTask;->cacheCallback:Lorg/xutils/common/Callback$CacheCallback;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/xutils/http/HttpTask;->params:Lorg/xutils/http/RequestParams;

    invoke-virtual {v0}, Lorg/xutils/http/RequestParams;->getMethod()Lorg/xutils/http/HttpMethod;

    move-result-object v0

    invoke-static {v0}, Lorg/xutils/http/HttpMethod;->permitsCache(Lorg/xutils/http/HttpMethod;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 213
    :try_start_0
    invoke-direct {p0}, Lorg/xutils/http/HttpTask;->clearRawResult()V

    .line 214
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "load cache: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/xutils/http/HttpTask;->request:Lorg/xutils/http/request/UriRequest;

    invoke-virtual {v3}, Lorg/xutils/http/request/UriRequest;->getRequestUri()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/xutils/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 215
    iget-object v0, p0, Lorg/xutils/http/HttpTask;->request:Lorg/xutils/http/request/UriRequest;

    invoke-virtual {v0}, Lorg/xutils/http/request/UriRequest;->loadResultFromCache()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/xutils/http/HttpTask;->rawResult:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 220
    :goto_1
    invoke-virtual {p0}, Lorg/xutils/http/HttpTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_4

    .line 225
    iget-object v0, p0, Lorg/xutils/http/HttpTask;->rawResult:Ljava/lang/Object;

    if-eqz v0, :cond_5

    .line 226
    iget-object v3, p0, Lorg/xutils/http/HttpTask;->prepareCallback:Lorg/xutils/common/Callback$PrepareCallback;

    if-eqz v3, :cond_0

    .line 228
    :try_start_1
    invoke-interface {v3, v0}, Lorg/xutils/common/Callback$PrepareCallback;->prepare(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result-object v0

    .line 233
    :goto_2
    invoke-direct {p0}, Lorg/xutils/http/HttpTask;->clearRawResult()V

    .line 239
    :goto_3
    invoke-virtual {p0}, Lorg/xutils/http/HttpTask;->isCancelled()Z

    move-result v3

    if-nez v3, :cond_3

    .line 243
    if-eqz v0, :cond_6

    .line 245
    const/4 v3, 0x2

    new-array v4, v6, [Ljava/lang/Object;

    aput-object v0, v4, v5

    invoke-virtual {p0, v3, v4}, Lorg/xutils/http/HttpTask;->update(I[Ljava/lang/Object;)V

    .line 246
    iget-object v3, p0, Lorg/xutils/http/HttpTask;->cacheLock:Ljava/lang/Object;

    monitor-enter v3

    .line 247
    :goto_4
    :try_start_2
    iget-object v4, p0, Lorg/xutils/http/HttpTask;->trustCache:Ljava/lang/Boolean;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v4, :cond_1

    .line 249
    :try_start_3
    iget-object v4, p0, Lorg/xutils/http/HttpTask;->cacheLock:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->wait()V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_9

    goto :goto_4

    .line 250
    :catch_0
    move-exception v0

    .line 251
    :try_start_4
    new-instance v0, Lorg/xutils/common/Callback$CancelledException;

    const-string v1, "cancelled before request"

    invoke-direct {v0, v1}, Lorg/xutils/common/Callback$CancelledException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 255
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    .line 216
    :catchall_1
    move-exception v0

    .line 217
    const-string v3, "load disk cache error"

    invoke-static {v3, v0}, Lorg/xutils/common/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 229
    :catchall_2
    move-exception v0

    .line 231
    :try_start_5
    const-string v3, "prepare disk cache error"

    invoke-static {v3, v0}, Lorg/xutils/common/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    move-object v0, v2

    goto :goto_2

    .line 233
    :catchall_3
    move-exception v0

    invoke-direct {p0}, Lorg/xutils/http/HttpTask;->clearRawResult()V

    .line 234
    throw v0

    .line 236
    :cond_0
    iget-object v0, p0, Lorg/xutils/http/HttpTask;->rawResult:Ljava/lang/Object;

    goto :goto_3

    .line 255
    :cond_1
    :try_start_6
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 258
    iget-object v3, p0, Lorg/xutils/http/HttpTask;->trustCache:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 365
    :cond_2
    :goto_5
    :sswitch_0
    return-object v2

    .line 240
    :cond_3
    new-instance v0, Lorg/xutils/common/Callback$CancelledException;

    const-string v1, "cancelled before request"

    invoke-direct {v0, v1}, Lorg/xutils/common/Callback$CancelledException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 221
    :cond_4
    invoke-direct {p0}, Lorg/xutils/http/HttpTask;->clearRawResult()V

    .line 222
    new-instance v0, Lorg/xutils/common/Callback$CancelledException;

    const-string v1, "cancelled before request"

    invoke-direct {v0, v1}, Lorg/xutils/common/Callback$CancelledException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    move-object v0, v2

    .line 265
    :cond_6
    iget-object v3, p0, Lorg/xutils/http/HttpTask;->trustCache:Ljava/lang/Boolean;

    if-nez v3, :cond_7

    .line 266
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lorg/xutils/http/HttpTask;->trustCache:Ljava/lang/Boolean;

    .line 269
    :cond_7
    if-nez v0, :cond_8

    .line 270
    iget-object v0, p0, Lorg/xutils/http/HttpTask;->request:Lorg/xutils/http/request/UriRequest;

    invoke-virtual {v0}, Lorg/xutils/http/request/UriRequest;->clearCacheHeader()V

    .line 274
    :cond_8
    iget-object v0, p0, Lorg/xutils/http/HttpTask;->callback:Lorg/xutils/common/Callback$CommonCallback;

    instance-of v3, v0, Lorg/xutils/common/Callback$ProxyCacheCallback;

    if-eqz v3, :cond_9

    .line 275
    check-cast v0, Lorg/xutils/common/Callback$ProxyCacheCallback;

    invoke-interface {v0}, Lorg/xutils/common/Callback$ProxyCacheCallback;->onlyCache()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_9
    move-object v0, v2

    move-object v8, v2

    move v4, v6

    move v7, v5

    .line 282
    :goto_6
    if-eqz v4, :cond_12

    .line 286
    :try_start_7
    invoke-virtual {p0}, Lorg/xutils/http/HttpTask;->isCancelled()Z

    move-result v3

    if-nez v3, :cond_11

    .line 291
    iget-object v3, p0, Lorg/xutils/http/HttpTask;->request:Lorg/xutils/http/request/UriRequest;

    invoke-virtual {v3}, Lorg/xutils/http/request/UriRequest;->close()V
    :try_end_7
    .catch Lorg/xutils/ex/HttpRedirectException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    .line 294
    :try_start_8
    invoke-direct {p0}, Lorg/xutils/http/HttpTask;->clearRawResult()V

    .line 296
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "load: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lorg/xutils/http/HttpTask;->request:Lorg/xutils/http/request/UriRequest;

    invoke-virtual {v4}, Lorg/xutils/http/request/UriRequest;->getRequestUri()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/xutils/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 297
    new-instance v3, Lorg/xutils/http/HttpTask$RequestWorker;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lorg/xutils/http/HttpTask$RequestWorker;-><init>(Lorg/xutils/http/HttpTask;Lorg/xutils/http/HttpTask$1;)V

    .line 298
    invoke-virtual {v3}, Lorg/xutils/http/HttpTask$RequestWorker;->request()V

    .line 299
    iget-object v4, v3, Lorg/xutils/http/HttpTask$RequestWorker;->ex:Ljava/lang/Throwable;

    if-nez v4, :cond_f

    .line 302
    iget-object v3, v3, Lorg/xutils/http/HttpTask$RequestWorker;->result:Ljava/lang/Object;

    iput-object v3, p0, Lorg/xutils/http/HttpTask;->rawResult:Ljava/lang/Object;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_8

    .line 310
    :try_start_9
    iget-object v4, p0, Lorg/xutils/http/HttpTask;->prepareCallback:Lorg/xutils/common/Callback$PrepareCallback;

    if-eqz v4, :cond_a

    .line 314
    invoke-virtual {p0}, Lorg/xutils/http/HttpTask;->isCancelled()Z
    :try_end_9
    .catch Lorg/xutils/ex/HttpRedirectException; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    move-result v3

    if-nez v3, :cond_c

    .line 319
    :try_start_a
    iget-object v3, p0, Lorg/xutils/http/HttpTask;->prepareCallback:Lorg/xutils/common/Callback$PrepareCallback;

    iget-object v4, p0, Lorg/xutils/http/HttpTask;->rawResult:Ljava/lang/Object;

    invoke-interface {v3, v4}, Lorg/xutils/common/Callback$PrepareCallback;->prepare(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    move-result-object v3

    .line 321
    :try_start_b
    invoke-direct {p0}, Lorg/xutils/http/HttpTask;->clearRawResult()V

    .line 328
    :cond_a
    iget-object v4, p0, Lorg/xutils/http/HttpTask;->cacheCallback:Lorg/xutils/common/Callback$CacheCallback;

    if-eqz v4, :cond_b

    iget-object v4, p0, Lorg/xutils/http/HttpTask;->params:Lorg/xutils/http/RequestParams;

    invoke-virtual {v4}, Lorg/xutils/http/RequestParams;->getMethod()Lorg/xutils/http/HttpMethod;

    move-result-object v4

    invoke-static {v4}, Lorg/xutils/http/HttpMethod;->permitsCache(Lorg/xutils/http/HttpMethod;)Z
    :try_end_b
    .catch Lorg/xutils/ex/HttpRedirectException; {:try_start_b .. :try_end_b} :catch_2
    .catchall {:try_start_b .. :try_end_b} :catchall_7

    move-result v4

    if-eqz v4, :cond_b

    .line 330
    :try_start_c
    iget-object v4, p0, Lorg/xutils/http/HttpTask;->request:Lorg/xutils/http/request/UriRequest;

    invoke-virtual {v4}, Lorg/xutils/http/request/UriRequest;->save2Cache()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    .line 336
    :cond_b
    :goto_7
    :try_start_d
    invoke-virtual {p0}, Lorg/xutils/http/HttpTask;->isCancelled()Z
    :try_end_d
    .catch Lorg/xutils/ex/HttpRedirectException; {:try_start_d .. :try_end_d} :catch_2
    .catchall {:try_start_d .. :try_end_d} :catchall_7

    move-result v4

    if-nez v4, :cond_e

    move v4, v5

    :goto_8
    move-object v8, v3

    .line 356
    goto :goto_6

    .line 321
    :catchall_4
    move-exception v3

    :try_start_e
    invoke-direct {p0}, Lorg/xutils/http/HttpTask;->clearRawResult()V

    .line 322
    throw v3
    :try_end_e
    .catch Lorg/xutils/ex/HttpRedirectException; {:try_start_e .. :try_end_e} :catch_1
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    .line 339
    :catch_1
    move-exception v3

    move-object v3, v8

    .line 341
    :goto_9
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Http Redirect:"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lorg/xutils/http/HttpTask;->params:Lorg/xutils/http/RequestParams;

    invoke-virtual {v8}, Lorg/xutils/http/RequestParams;->getUri()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/xutils/common/util/LogUtil;->w(Ljava/lang/String;)V

    move v4, v6

    goto :goto_8

    .line 315
    :cond_c
    :try_start_f
    new-instance v3, Lorg/xutils/common/Callback$CancelledException;

    const-string v4, "cancelled before request"

    invoke-direct {v3, v4}, Lorg/xutils/common/Callback$CancelledException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_f
    .catch Lorg/xutils/ex/HttpRedirectException; {:try_start_f .. :try_end_f} :catch_1
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    .line 342
    :catchall_5
    move-exception v0

    move-object v3, v8

    .line 343
    :goto_a
    iget-object v4, p0, Lorg/xutils/http/HttpTask;->request:Lorg/xutils/http/request/UriRequest;

    invoke-virtual {v4}, Lorg/xutils/http/request/UriRequest;->getResponseCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    .line 349
    invoke-virtual {p0}, Lorg/xutils/http/HttpTask;->isCancelled()Z

    move-result v4

    if-eqz v4, :cond_d

    instance-of v4, v0, Lorg/xutils/common/Callback$CancelledException;

    if-nez v4, :cond_d

    .line 351
    new-instance v0, Lorg/xutils/common/Callback$CancelledException;

    const-string v4, "canceled by user"

    invoke-direct {v0, v4}, Lorg/xutils/common/Callback$CancelledException;-><init>(Ljava/lang/String;)V

    .line 353
    :cond_d
    iget-object v4, p0, Lorg/xutils/http/HttpTask;->request:Lorg/xutils/http/request/UriRequest;

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v1, v4, v0, v7}, Lorg/xutils/http/app/HttpRetryHandler;->canRetry(Lorg/xutils/http/request/UriRequest;Ljava/lang/Throwable;I)Z

    move-result v4

    goto :goto_8

    .line 331
    :catchall_6
    move-exception v4

    .line 332
    :try_start_10
    const-string v8, "Error while storing the http cache."

    invoke-static {v8, v4}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_7

    .line 339
    :catch_2
    move-exception v4

    goto :goto_9

    .line 337
    :cond_e
    new-instance v4, Lorg/xutils/common/Callback$CancelledException;

    const-string v8, "cancelled after request"

    invoke-direct {v4, v8}, Lorg/xutils/common/Callback$CancelledException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_10
    .catch Lorg/xutils/ex/HttpRedirectException; {:try_start_10 .. :try_end_10} :catch_2
    .catchall {:try_start_10 .. :try_end_10} :catchall_7

    .line 342
    :catchall_7
    move-exception v0

    goto :goto_a

    .line 300
    :cond_f
    :try_start_11
    iget-object v3, v3, Lorg/xutils/http/HttpTask$RequestWorker;->ex:Ljava/lang/Throwable;

    throw v3
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_8

    .line 303
    :catchall_8
    move-exception v3

    .line 304
    :try_start_12
    invoke-direct {p0}, Lorg/xutils/http/HttpTask;->clearRawResult()V

    .line 305
    invoke-virtual {p0}, Lorg/xutils/http/HttpTask;->isCancelled()Z

    move-result v4

    if-eqz v4, :cond_10

    .line 306
    new-instance v3, Lorg/xutils/common/Callback$CancelledException;

    const-string v4, "cancelled during request"

    invoke-direct {v3, v4}, Lorg/xutils/common/Callback$CancelledException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 308
    :cond_10
    throw v3

    .line 287
    :cond_11
    new-instance v3, Lorg/xutils/common/Callback$CancelledException;

    const-string v4, "cancelled before request"

    invoke-direct {v3, v4}, Lorg/xutils/common/Callback$CancelledException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_12
    .catch Lorg/xutils/ex/HttpRedirectException; {:try_start_12 .. :try_end_12} :catch_1
    .catchall {:try_start_12 .. :try_end_12} :catchall_5

    .line 360
    :cond_12
    if-eqz v0, :cond_13

    if-nez v8, :cond_13

    iget-object v1, p0, Lorg/xutils/http/HttpTask;->trustCache:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_14

    :cond_13
    move-object v2, v8

    .line 365
    goto/16 :goto_5

    .line 361
    :cond_14
    iput-boolean v6, p0, Lorg/xutils/http/HttpTask;->hasException:Z

    .line 362
    throw v0

    .line 205
    :cond_15
    new-instance v0, Lorg/xutils/common/Callback$CancelledException;

    const-string v1, "cancelled before request"

    invoke-direct {v0, v1}, Lorg/xutils/common/Callback$CancelledException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 186
    :cond_16
    new-instance v0, Lorg/xutils/common/Callback$CancelledException;

    const-string v1, "cancelled before request"

    invoke-direct {v0, v1}, Lorg/xutils/common/Callback$CancelledException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 252
    :catchall_9
    move-exception v4

    goto/16 :goto_4

    :cond_17
    move-object v1, v0

    goto/16 :goto_0

    .line 343
    :sswitch_data_0
    .sparse-switch
        0xcc -> :sswitch_0
        0xcd -> :sswitch_0
        0x130 -> :sswitch_0
    .end sparse-switch
.end method

.method public getExecutor()Ljava/util/concurrent/Executor;
    .registers 2

    .line 512
    iget-object v0, p0, Lorg/xutils/http/HttpTask;->executor:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public getPriority()Lorg/xutils/common/task/Priority;
    .registers 2

    .line 517
    iget-object v0, p0, Lorg/xutils/http/HttpTask;->params:Lorg/xutils/http/RequestParams;

    invoke-virtual {v0}, Lorg/xutils/http/RequestParams;->getPriority()Lorg/xutils/common/task/Priority;

    move-result-object v0

    return-object v0
.end method

.method protected isCancelFast()Z
    .registers 2

    .line 497
    iget-object v0, p0, Lorg/xutils/http/HttpTask;->params:Lorg/xutils/http/RequestParams;

    invoke-virtual {v0}, Lorg/xutils/http/RequestParams;->isCancelFast()Z

    move-result v0

    return v0
.end method

.method protected onCancelled(Lorg/xutils/common/Callback$CancelledException;)V
    .registers 4

    .line 458
    iget-object v0, p0, Lorg/xutils/http/HttpTask;->tracker:Lorg/xutils/http/app/RequestTracker;

    if-eqz v0, :cond_0

    .line 459
    iget-object v1, p0, Lorg/xutils/http/HttpTask;->request:Lorg/xutils/http/request/UriRequest;

    invoke-interface {v0, v1}, Lorg/xutils/http/app/RequestTracker;->onCancelled(Lorg/xutils/http/request/UriRequest;)V

    .line 461
    :cond_0
    iget-object v0, p0, Lorg/xutils/http/HttpTask;->callback:Lorg/xutils/common/Callback$CommonCallback;

    invoke-interface {v0, p1}, Lorg/xutils/common/Callback$CommonCallback;->onCancelled(Lorg/xutils/common/Callback$CancelledException;)V

    .line 462
    return-void
.end method

.method protected onError(Ljava/lang/Throwable;Z)V
    .registers 5

    .line 449
    iget-object v0, p0, Lorg/xutils/http/HttpTask;->tracker:Lorg/xutils/http/app/RequestTracker;

    if-eqz v0, :cond_0

    .line 450
    iget-object v1, p0, Lorg/xutils/http/HttpTask;->request:Lorg/xutils/http/request/UriRequest;

    invoke-interface {v0, v1, p1, p2}, Lorg/xutils/http/app/RequestTracker;->onError(Lorg/xutils/http/request/UriRequest;Ljava/lang/Throwable;Z)V

    .line 452
    :cond_0
    iget-object v0, p0, Lorg/xutils/http/HttpTask;->callback:Lorg/xutils/common/Callback$CommonCallback;

    invoke-interface {v0, p1, p2}, Lorg/xutils/common/Callback$CommonCallback;->onError(Ljava/lang/Throwable;Z)V

    .line 453
    return-void
.end method

.method protected onFinished()V
    .registers 3

    .line 466
    iget-object v0, p0, Lorg/xutils/http/HttpTask;->tracker:Lorg/xutils/http/app/RequestTracker;

    if-eqz v0, :cond_0

    .line 467
    iget-object v1, p0, Lorg/xutils/http/HttpTask;->request:Lorg/xutils/http/request/UriRequest;

    invoke-interface {v0, v1}, Lorg/xutils/http/app/RequestTracker;->onFinished(Lorg/xutils/http/request/UriRequest;)V

    .line 469
    :cond_0
    invoke-static {}, Lorg/xutils/x;->task()Lorg/xutils/common/TaskController;

    move-result-object v0

    new-instance v1, Lorg/xutils/http/HttpTask$1;

    invoke-direct {v1, p0}, Lorg/xutils/http/HttpTask$1;-><init>(Lorg/xutils/http/HttpTask;)V

    invoke-interface {v0, v1}, Lorg/xutils/common/TaskController;->run(Ljava/lang/Runnable;)V

    .line 475
    iget-object v0, p0, Lorg/xutils/http/HttpTask;->callback:Lorg/xutils/common/Callback$CommonCallback;

    invoke-interface {v0}, Lorg/xutils/common/Callback$CommonCallback;->onFinished()V

    .line 476
    return-void
.end method

.method protected onStarted()V
    .registers 3

    .line 430
    iget-object v0, p0, Lorg/xutils/http/HttpTask;->tracker:Lorg/xutils/http/app/RequestTracker;

    if-eqz v0, :cond_0

    .line 431
    iget-object v1, p0, Lorg/xutils/http/HttpTask;->params:Lorg/xutils/http/RequestParams;

    invoke-interface {v0, v1}, Lorg/xutils/http/app/RequestTracker;->onStart(Lorg/xutils/http/RequestParams;)V

    .line 433
    :cond_0
    iget-object v0, p0, Lorg/xutils/http/HttpTask;->progressCallback:Lorg/xutils/common/Callback$ProgressCallback;

    if-eqz v0, :cond_1

    .line 434
    invoke-interface {v0}, Lorg/xutils/common/Callback$ProgressCallback;->onStarted()V

    .line 436
    :cond_1
    return-void
.end method

.method protected onSuccess(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResultType;)V"
        }
    .end annotation

    .line 440
    iget-boolean v0, p0, Lorg/xutils/http/HttpTask;->hasException:Z

    if-eqz v0, :cond_0

    .line 445
    :goto_0
    return-void

    .line 441
    :cond_0
    iget-object v0, p0, Lorg/xutils/http/HttpTask;->tracker:Lorg/xutils/http/app/RequestTracker;

    if-eqz v0, :cond_1

    .line 442
    iget-object v1, p0, Lorg/xutils/http/HttpTask;->request:Lorg/xutils/http/request/UriRequest;

    invoke-interface {v0, v1, p1}, Lorg/xutils/http/app/RequestTracker;->onSuccess(Lorg/xutils/http/request/UriRequest;Ljava/lang/Object;)V

    .line 444
    :cond_1
    iget-object v0, p0, Lorg/xutils/http/HttpTask;->callback:Lorg/xutils/common/Callback$CommonCallback;

    invoke-interface {v0, p1}, Lorg/xutils/common/Callback$CommonCallback;->onSuccess(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected varargs onUpdate(I[Ljava/lang/Object;)V
    .registers 11

    const/4 v7, 0x1

    const/4 v0, 0x0

    .line 375
    packed-switch p1, :pswitch_data_0

    .line 416
    :cond_0
    :goto_0
    return-void

    .line 400
    :pswitch_0
    iget-object v1, p0, Lorg/xutils/http/HttpTask;->progressCallback:Lorg/xutils/common/Callback$ProgressCallback;

    if-eqz v1, :cond_0

    array-length v0, p2

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    .line 402
    const/4 v0, 0x0

    :try_start_0
    aget-object v0, p2, v0

    check-cast v0, Ljava/lang/Number;

    .line 403
    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    const/4 v0, 0x1

    aget-object v0, p2, v0

    check-cast v0, Ljava/lang/Number;

    .line 404
    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    const/4 v0, 0x2

    aget-object v0, p2, v0

    check-cast v0, Ljava/lang/Boolean;

    .line 405
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    .line 402
    invoke-interface/range {v1 .. v6}, Lorg/xutils/common/Callback$ProgressCallback;->onLoading(JJZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 406
    :catchall_0
    move-exception v0

    .line 407
    iget-object v1, p0, Lorg/xutils/http/HttpTask;->callback:Lorg/xutils/common/Callback$CommonCallback;

    invoke-interface {v1, v0, v7}, Lorg/xutils/common/Callback$CommonCallback;->onError(Ljava/lang/Throwable;Z)V

    goto :goto_0

    .line 383
    :pswitch_1
    iget-object v1, p0, Lorg/xutils/http/HttpTask;->cacheLock:Ljava/lang/Object;

    monitor-enter v1

    .line 385
    aget-object v0, p2, v0

    .line 386
    :try_start_1
    iget-object v2, p0, Lorg/xutils/http/HttpTask;->tracker:Lorg/xutils/http/app/RequestTracker;

    if-eqz v2, :cond_1

    .line 387
    iget-object v3, p0, Lorg/xutils/http/HttpTask;->request:Lorg/xutils/http/request/UriRequest;

    invoke-interface {v2, v3, v0}, Lorg/xutils/http/app/RequestTracker;->onCache(Lorg/xutils/http/request/UriRequest;Ljava/lang/Object;)V

    .line 389
    :cond_1
    iget-object v2, p0, Lorg/xutils/http/HttpTask;->cacheCallback:Lorg/xutils/common/Callback$CacheCallback;

    invoke-interface {v2, v0}, Lorg/xutils/common/Callback$CacheCallback;->onCache(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lorg/xutils/http/HttpTask;->trustCache:Ljava/lang/Boolean;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 394
    :try_start_2
    iget-object v0, p0, Lorg/xutils/http/HttpTask;->cacheLock:Ljava/lang/Object;

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 395
    monitor-exit v1

    goto :goto_0

    .line 396
    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    .line 390
    :catchall_2
    move-exception v0

    .line 391
    const/4 v2, 0x0

    :try_start_3
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lorg/xutils/http/HttpTask;->trustCache:Ljava/lang/Boolean;

    .line 392
    iget-object v2, p0, Lorg/xutils/http/HttpTask;->callback:Lorg/xutils/common/Callback$CommonCallback;

    const/4 v3, 0x1

    invoke-interface {v2, v0, v3}, Lorg/xutils/common/Callback$CommonCallback;->onError(Ljava/lang/Throwable;Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 394
    :try_start_4
    iget-object v0, p0, Lorg/xutils/http/HttpTask;->cacheLock:Ljava/lang/Object;

    goto :goto_1

    :catchall_3
    move-exception v0

    iget-object v2, p0, Lorg/xutils/http/HttpTask;->cacheLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 395
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 377
    :pswitch_2
    iget-object v1, p0, Lorg/xutils/http/HttpTask;->tracker:Lorg/xutils/http/app/RequestTracker;

    if-eqz v1, :cond_0

    .line 378
    aget-object v0, p2, v0

    check-cast v0, Lorg/xutils/http/request/UriRequest;

    invoke-interface {v1, v0}, Lorg/xutils/http/app/RequestTracker;->onRequestCreated(Lorg/xutils/http/request/UriRequest;)V

    goto :goto_0

    .line 375
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onWaiting()V
    .registers 3

    .line 420
    iget-object v0, p0, Lorg/xutils/http/HttpTask;->tracker:Lorg/xutils/http/app/RequestTracker;

    if-eqz v0, :cond_0

    .line 421
    iget-object v1, p0, Lorg/xutils/http/HttpTask;->params:Lorg/xutils/http/RequestParams;

    invoke-interface {v0, v1}, Lorg/xutils/http/app/RequestTracker;->onWaiting(Lorg/xutils/http/RequestParams;)V

    .line 423
    :cond_0
    iget-object v0, p0, Lorg/xutils/http/HttpTask;->progressCallback:Lorg/xutils/common/Callback$ProgressCallback;

    if-eqz v0, :cond_1

    .line 424
    invoke-interface {v0}, Lorg/xutils/common/Callback$ProgressCallback;->onWaiting()V

    .line 426
    :cond_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 559
    iget-object v0, p0, Lorg/xutils/http/HttpTask;->params:Lorg/xutils/http/RequestParams;

    invoke-virtual {v0}, Lorg/xutils/http/RequestParams;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateProgress(JJZ)Z
    .registers 17

    const-wide/16 v4, 0x0

    const/4 v9, 0x2

    const/4 v0, 0x1

    const/4 v8, 0x3

    const/4 v1, 0x0

    .line 530
    invoke-virtual {p0}, Lorg/xutils/http/HttpTask;->isCancelled()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lorg/xutils/http/HttpTask;->isFinished()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    move v0, v1

    .line 552
    :cond_1
    :goto_0
    return v0

    .line 534
    :cond_2
    iget-object v2, p0, Lorg/xutils/http/HttpTask;->progressCallback:Lorg/xutils/common/Callback$ProgressCallback;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lorg/xutils/http/HttpTask;->request:Lorg/xutils/http/request/UriRequest;

    if-eqz v2, :cond_4

    cmp-long v2, p3, v4

    if-lez v2, :cond_4

    .line 535
    cmp-long v2, p1, v4

    if-gez v2, :cond_6

    .line 536
    const-wide/16 p1, -0x1

    .line 537
    :cond_3
    :goto_1
    if-eqz p5, :cond_7

    .line 541
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/xutils/http/HttpTask;->lastUpdateTime:J

    .line 542
    new-array v2, v8, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v0

    iget-object v3, p0, Lorg/xutils/http/HttpTask;->request:Lorg/xutils/http/request/UriRequest;

    invoke-virtual {v3}, Lorg/xutils/http/request/UriRequest;->isLoading()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v9

    invoke-virtual {p0, v8, v2}, Lorg/xutils/http/HttpTask;->update(I[Ljava/lang/Object;)V

    .line 552
    :cond_4
    :goto_2
    invoke-virtual {p0}, Lorg/xutils/http/HttpTask;->isCancelled()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {p0}, Lorg/xutils/http/HttpTask;->isFinished()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_5
    move v0, v1

    goto :goto_0

    .line 537
    :cond_6
    cmp-long v2, p1, p3

    if-gez v2, :cond_3

    move-wide p1, p3

    .line 538
    goto :goto_1

    .line 544
    :cond_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 545
    iget-wide v4, p0, Lorg/xutils/http/HttpTask;->lastUpdateTime:J

    sub-long v4, v2, v4

    iget-wide v6, p0, Lorg/xutils/http/HttpTask;->loadingUpdateMaxTimeSpan:J

    cmp-long v4, v4, v6

    if-ltz v4, :cond_4

    .line 546
    iput-wide v2, p0, Lorg/xutils/http/HttpTask;->lastUpdateTime:J

    .line 547
    new-array v2, v8, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v0

    iget-object v3, p0, Lorg/xutils/http/HttpTask;->request:Lorg/xutils/http/request/UriRequest;

    invoke-virtual {v3}, Lorg/xutils/http/request/UriRequest;->isLoading()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v9

    invoke-virtual {p0, v8, v2}, Lorg/xutils/http/HttpTask;->update(I[Ljava/lang/Object;)V

    goto :goto_2
.end method
