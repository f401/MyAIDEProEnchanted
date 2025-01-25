.class public final Lorg/xutils/http/HttpManagerImpl;
.super Ljava/lang/Object;
.source "HttpManagerImpl.java"

# interfaces
.implements Lorg/xutils/HttpManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/xutils/http/HttpManagerImpl$DefaultSyncCallback;
    }
.end annotation


# static fields
.field private static volatile instance:Lorg/xutils/http/HttpManagerImpl;

.field private static final lock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 15
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/xutils/http/HttpManagerImpl;->lock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    return-void
.end method

.method public static registerInstance()V
    .registers 2

    .line 22
    sget-object v0, Lorg/xutils/http/HttpManagerImpl;->instance:Lorg/xutils/http/HttpManagerImpl;

    if-nez v0, :cond_13

    .line 23
    sget-object v1, Lorg/xutils/http/HttpManagerImpl;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 24
    :try_start_7
    sget-object v0, Lorg/xutils/http/HttpManagerImpl;->instance:Lorg/xutils/http/HttpManagerImpl;

    if-nez v0, :cond_12

    .line 25
    new-instance v0, Lorg/xutils/http/HttpManagerImpl;

    invoke-direct {v0}, Lorg/xutils/http/HttpManagerImpl;-><init>()V

    sput-object v0, Lorg/xutils/http/HttpManagerImpl;->instance:Lorg/xutils/http/HttpManagerImpl;

    .line 27
    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_19

    .line 29
    :cond_13
    sget-object v0, Lorg/xutils/http/HttpManagerImpl;->instance:Lorg/xutils/http/HttpManagerImpl;

    invoke-static {v0}, Lorg/xutils/x$Ext;->setHttpManager(Lorg/xutils/HttpManager;)V

    .line 30
    return-void

    .line 27
    :catchall_19
    move-exception v0

    :try_start_1a
    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    throw v0
.end method


# virtual methods
.method public get(Lorg/xutils/http/RequestParams;Lorg/xutils/common/Callback$CommonCallback;)Lorg/xutils/common/Callback$Cancelable;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/xutils/http/RequestParams;",
            "Lorg/xutils/common/Callback$CommonCallback",
            "<TT;>;)",
            "Lorg/xutils/common/Callback$Cancelable;"
        }
    .end annotation

    .line 34
    sget-object v0, Lorg/xutils/http/HttpMethod;->GET:Lorg/xutils/http/HttpMethod;

    invoke-virtual {p0, v0, p1, p2}, Lorg/xutils/http/HttpManagerImpl;->request(Lorg/xutils/http/HttpMethod;Lorg/xutils/http/RequestParams;Lorg/xutils/common/Callback$CommonCallback;)Lorg/xutils/common/Callback$Cancelable;

    move-result-object v0

    return-object v0
.end method

.method public getSync(Lorg/xutils/http/RequestParams;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/xutils/http/RequestParams;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 55
    sget-object v0, Lorg/xutils/http/HttpMethod;->GET:Lorg/xutils/http/HttpMethod;

    invoke-virtual {p0, v0, p1, p2}, Lorg/xutils/http/HttpManagerImpl;->requestSync(Lorg/xutils/http/HttpMethod;Lorg/xutils/http/RequestParams;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public post(Lorg/xutils/http/RequestParams;Lorg/xutils/common/Callback$CommonCallback;)Lorg/xutils/common/Callback$Cancelable;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/xutils/http/RequestParams;",
            "Lorg/xutils/common/Callback$CommonCallback",
            "<TT;>;)",
            "Lorg/xutils/common/Callback$Cancelable;"
        }
    .end annotation

    .line 39
    sget-object v0, Lorg/xutils/http/HttpMethod;->POST:Lorg/xutils/http/HttpMethod;

    invoke-virtual {p0, v0, p1, p2}, Lorg/xutils/http/HttpManagerImpl;->request(Lorg/xutils/http/HttpMethod;Lorg/xutils/http/RequestParams;Lorg/xutils/common/Callback$CommonCallback;)Lorg/xutils/common/Callback$Cancelable;

    move-result-object v0

    return-object v0
.end method

.method public postSync(Lorg/xutils/http/RequestParams;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/xutils/http/RequestParams;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 60
    sget-object v0, Lorg/xutils/http/HttpMethod;->POST:Lorg/xutils/http/HttpMethod;

    invoke-virtual {p0, v0, p1, p2}, Lorg/xutils/http/HttpManagerImpl;->requestSync(Lorg/xutils/http/HttpMethod;Lorg/xutils/http/RequestParams;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public request(Lorg/xutils/http/HttpMethod;Lorg/xutils/http/RequestParams;Lorg/xutils/common/Callback$CommonCallback;)Lorg/xutils/common/Callback$Cancelable;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/xutils/http/HttpMethod;",
            "Lorg/xutils/http/RequestParams;",
            "Lorg/xutils/common/Callback$CommonCallback",
            "<TT;>;)",
            "Lorg/xutils/common/Callback$Cancelable;"
        }
    .end annotation

    .line 44
    invoke-virtual {p2, p1}, Lorg/xutils/http/RequestParams;->setMethod(Lorg/xutils/http/HttpMethod;)V

    .line 45
    const/4 v0, 0x0

    .line 46
    instance-of v1, p3, Lorg/xutils/common/Callback$Cancelable;

    if-eqz v1, :cond_b

    move-object v0, p3

    .line 47
    check-cast v0, Lorg/xutils/common/Callback$Cancelable;

    .line 49
    :cond_b
    new-instance v1, Lorg/xutils/http/HttpTask;

    invoke-direct {v1, p2, v0, p3}, Lorg/xutils/http/HttpTask;-><init>(Lorg/xutils/http/RequestParams;Lorg/xutils/common/Callback$Cancelable;Lorg/xutils/common/Callback$CommonCallback;)V

    .line 50
    invoke-static {}, Lorg/xutils/x;->task()Lorg/xutils/common/TaskController;

    move-result-object v0

    invoke-interface {v0, v1}, Lorg/xutils/common/TaskController;->start(Lorg/xutils/common/task/AbsTask;)Lorg/xutils/common/task/AbsTask;

    move-result-object v0

    return-object v0
.end method

.method public requestSync(Lorg/xutils/http/HttpMethod;Lorg/xutils/http/RequestParams;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/xutils/http/HttpMethod;",
            "Lorg/xutils/http/RequestParams;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 65
    new-instance v0, Lorg/xutils/http/HttpManagerImpl$DefaultSyncCallback;

    invoke-direct {v0, p0, p3}, Lorg/xutils/http/HttpManagerImpl$DefaultSyncCallback;-><init>(Lorg/xutils/http/HttpManagerImpl;Ljava/lang/Class;)V

    .line 66
    invoke-virtual {p0, p1, p2, v0}, Lorg/xutils/http/HttpManagerImpl;->requestSync(Lorg/xutils/http/HttpMethod;Lorg/xutils/http/RequestParams;Lorg/xutils/common/Callback$TypedCallback;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public requestSync(Lorg/xutils/http/HttpMethod;Lorg/xutils/http/RequestParams;Lorg/xutils/common/Callback$TypedCallback;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/xutils/http/HttpMethod;",
            "Lorg/xutils/http/RequestParams;",
            "Lorg/xutils/common/Callback$TypedCallback",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 71
    invoke-virtual {p2, p1}, Lorg/xutils/http/RequestParams;->setMethod(Lorg/xutils/http/HttpMethod;)V

    .line 72
    new-instance v0, Lorg/xutils/http/HttpTask;

    const/4 v1, 0x0

    invoke-direct {v0, p2, v1, p3}, Lorg/xutils/http/HttpTask;-><init>(Lorg/xutils/http/RequestParams;Lorg/xutils/common/Callback$Cancelable;Lorg/xutils/common/Callback$CommonCallback;)V

    .line 73
    invoke-static {}, Lorg/xutils/x;->task()Lorg/xutils/common/TaskController;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/xutils/common/TaskController;->startSync(Lorg/xutils/common/task/AbsTask;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
