.class final Lorg/xutils/http/RequestTrackerWrapper;
.super Ljava/lang/Object;
.source "RequestTrackerWrapper.java"

# interfaces
.implements Lorg/xutils/http/app/RequestTracker;


# instance fields
.field private final base:Lorg/xutils/http/app/RequestTracker;


# direct methods
.method public constructor <init>(Lorg/xutils/http/app/RequestTracker;)V
    .registers 2

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lorg/xutils/http/RequestTrackerWrapper;->base:Lorg/xutils/http/app/RequestTracker;

    .line 17
    return-void
.end method


# virtual methods
.method public onCache(Lorg/xutils/http/request/UriRequest;Ljava/lang/Object;)V
    .registers 5

    .line 49
    :try_start_0
    iget-object v0, p0, Lorg/xutils/http/RequestTrackerWrapper;->base:Lorg/xutils/http/app/RequestTracker;

    invoke-interface {v0, p1, p2}, Lorg/xutils/http/app/RequestTracker;->onCache(Lorg/xutils/http/request/UriRequest;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    :goto_0
    return-void

    .line 50
    :catchall_0
    move-exception v0

    .line 51
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onCancelled(Lorg/xutils/http/request/UriRequest;)V
    .registers 4

    .line 67
    :try_start_0
    iget-object v0, p0, Lorg/xutils/http/RequestTrackerWrapper;->base:Lorg/xutils/http/app/RequestTracker;

    invoke-interface {v0, p1}, Lorg/xutils/http/app/RequestTracker;->onCancelled(Lorg/xutils/http/request/UriRequest;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    :goto_0
    return-void

    .line 68
    :catchall_0
    move-exception v0

    .line 69
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onError(Lorg/xutils/http/request/UriRequest;Ljava/lang/Throwable;Z)V
    .registers 6

    .line 76
    :try_start_0
    iget-object v0, p0, Lorg/xutils/http/RequestTrackerWrapper;->base:Lorg/xutils/http/app/RequestTracker;

    invoke-interface {v0, p1, p2, p3}, Lorg/xutils/http/app/RequestTracker;->onError(Lorg/xutils/http/request/UriRequest;Ljava/lang/Throwable;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    :goto_0
    return-void

    .line 77
    :catchall_0
    move-exception v0

    .line 78
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onFinished(Lorg/xutils/http/request/UriRequest;)V
    .registers 4

    .line 85
    :try_start_0
    iget-object v0, p0, Lorg/xutils/http/RequestTrackerWrapper;->base:Lorg/xutils/http/app/RequestTracker;

    invoke-interface {v0, p1}, Lorg/xutils/http/app/RequestTracker;->onFinished(Lorg/xutils/http/request/UriRequest;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    :goto_0
    return-void

    .line 86
    :catchall_0
    move-exception v0

    .line 87
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onRequestCreated(Lorg/xutils/http/request/UriRequest;)V
    .registers 4

    .line 40
    :try_start_0
    iget-object v0, p0, Lorg/xutils/http/RequestTrackerWrapper;->base:Lorg/xutils/http/app/RequestTracker;

    invoke-interface {v0, p1}, Lorg/xutils/http/app/RequestTracker;->onRequestCreated(Lorg/xutils/http/request/UriRequest;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    :goto_0
    return-void

    .line 41
    :catchall_0
    move-exception v0

    .line 42
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onStart(Lorg/xutils/http/RequestParams;)V
    .registers 4

    .line 31
    :try_start_0
    iget-object v0, p0, Lorg/xutils/http/RequestTrackerWrapper;->base:Lorg/xutils/http/app/RequestTracker;

    invoke-interface {v0, p1}, Lorg/xutils/http/app/RequestTracker;->onStart(Lorg/xutils/http/RequestParams;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    :goto_0
    return-void

    .line 32
    :catchall_0
    move-exception v0

    .line 33
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onSuccess(Lorg/xutils/http/request/UriRequest;Ljava/lang/Object;)V
    .registers 5

    .line 58
    :try_start_0
    iget-object v0, p0, Lorg/xutils/http/RequestTrackerWrapper;->base:Lorg/xutils/http/app/RequestTracker;

    invoke-interface {v0, p1, p2}, Lorg/xutils/http/app/RequestTracker;->onSuccess(Lorg/xutils/http/request/UriRequest;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    :goto_0
    return-void

    .line 59
    :catchall_0
    move-exception v0

    .line 60
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onWaiting(Lorg/xutils/http/RequestParams;)V
    .registers 4

    .line 22
    :try_start_0
    iget-object v0, p0, Lorg/xutils/http/RequestTrackerWrapper;->base:Lorg/xutils/http/app/RequestTracker;

    invoke-interface {v0, p1}, Lorg/xutils/http/app/RequestTracker;->onWaiting(Lorg/xutils/http/RequestParams;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    :goto_0
    return-void

    .line 23
    :catchall_0
    move-exception v0

    .line 24
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
