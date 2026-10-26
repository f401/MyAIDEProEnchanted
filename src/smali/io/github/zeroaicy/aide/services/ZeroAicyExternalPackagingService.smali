.class public Lio/github/zeroaicy/aide/services/ZeroAicyExternalPackagingService;
.super Lcom/aide/ui/build/packagingservice/ExternalPackagingService;
.source "ZeroAicyExternalPackagingService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/aide/ui/build/packagingservice/ExternalPackagingService;-><init>()V

    return-void
.end method


# virtual methods
.method public getExternalPackagingServiceWorker()Lcom/aide/ui/build/packagingservice/ExternalPackagingService$b;
    .locals 1

    .line 26
    new-instance v0, Lio/github/zeroaicy/aide/services/ZeroAicyPackagingWorker;

    invoke-direct {v0, p0}, Lio/github/zeroaicy/aide/services/ZeroAicyPackagingWorker;-><init>(Lcom/aide/ui/build/packagingservice/ExternalPackagingService;)V

    return-object v0
.end method

.method public onCreate()V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 8
    const-string v0, "ZeroAicyExternalPackagingService"

    const-string v1, "\u66ff\u6362\u6253\u5305\u670d\u52a1\u5b8c\u6210"

    invoke-static {v0, v1}, Lio/github/zeroaicy/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    :try_start_0
    invoke-virtual {p0}, Lio/github/zeroaicy/aide/services/ZeroAicyExternalPackagingService;->getExternalPackagingServiceWorker()Lcom/aide/ui/build/packagingservice/ExternalPackagingService$b;

    move-result-object v0

    .line 12
    if-eqz v0, :cond_0

    .line 14
    iget-object v1, p0, Lcom/aide/ui/build/packagingservice/ExternalPackagingService;->FH:Lcom/aide/ui/build/packagingservice/ExternalPackagingService$b;

    invoke-virtual {v1}, Lcom/aide/ui/build/packagingservice/ExternalPackagingService$b;->shutdown()V

    .line 16
    iput-object v0, p0, Lcom/aide/ui/build/packagingservice/ExternalPackagingService;->FH:Lcom/aide/ui/build/packagingservice/ExternalPackagingService$b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    :cond_0
    :goto_0
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    return-void

    .line 16
    :catchall_0
    move-exception v0

    .line 19
    const-string v1, "ExternalPackagingServiceWrapper"

    const-string v2, "\u66ff\u6362\u6253\u5305\u5b9e\u73b0\u5931\u8d25"

    invoke-static {v1, v2, v0}, Lio/github/zeroaicy/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
