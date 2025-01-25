.class public Lio/github/zeroaicy/aide/services/ZeroAicyExternalPackagingService;
.super Lcom/aide/ui/build/packagingservice/ExternalPackagingService;
.source "ZeroAicyExternalPackagingService.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 27
    invoke-direct {p0}, Lcom/aide/ui/build/packagingservice/ExternalPackagingService;-><init>()V

    return-void
.end method


# virtual methods
.method public getExternalPackagingServiceWorker()Lcom/aide/ui/build/packagingservice/ExternalPackagingService$b;
    .registers 2

    .line 26
    new-instance v0, Lio/github/zeroaicy/aide/services/ZeroAicyPackagingWorker;

    invoke-direct {v0, p0}, Lio/github/zeroaicy/aide/services/ZeroAicyPackagingWorker;-><init>(Lcom/aide/ui/build/packagingservice/ExternalPackagingService;)V

    return-object v0
.end method

.method public onCreate()V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 8
    const-string v0, "ZeroAicyExternalPackagingService"

    const-string v1, "替换打包服务完成"

    invoke-static {v0, v1}, Lio/github/zeroaicy/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    :try_start_7
    invoke-virtual {p0}, Lio/github/zeroaicy/aide/services/ZeroAicyExternalPackagingService;->getExternalPackagingServiceWorker()Lcom/aide/ui/build/packagingservice/ExternalPackagingService$b;

    move-result-object v0

    .line 12
    if-eqz v0, :cond_14

    .line 14
    iget-object v1, p0, Lcom/aide/ui/build/packagingservice/ExternalPackagingService;->FH:Lcom/aide/ui/build/packagingservice/ExternalPackagingService$b;

    invoke-virtual {v1}, Lcom/aide/ui/build/packagingservice/ExternalPackagingService$b;->shutdown()V

    .line 16
    iput-object v0, p0, Lcom/aide/ui/build/packagingservice/ExternalPackagingService;->FH:Lcom/aide/ui/build/packagingservice/ExternalPackagingService$b;
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_15

    :cond_14
    goto :goto_1d

    :catchall_15
    move-exception v0

    .line 19
    const-string v1, "ExternalPackagingServiceWrapper"

    const-string v2, "替换打包实现失败"

    invoke-static {v1, v2, v0}, Lio/github/zeroaicy/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 22
    :goto_1d
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    return-void
.end method
