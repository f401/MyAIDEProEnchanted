.class Lcom/s1243808733/aide/AideResourcesManger$100000000;
.super Ljava/lang/Object;
.source "AideResourcesManger.java"

# interfaces
.implements Lorg/xutils/common/Callback$CommonCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/xutils/common/Callback$CommonCallback",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final val$callback:Lcom/s1243808733/aide/AideResourcesManger$DataCallback;


# direct methods
.method constructor <init>(Lcom/s1243808733/aide/AideResourcesManger$DataCallback;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/s1243808733/aide/AideResourcesManger$100000000;->val$callback:Lcom/s1243808733/aide/AideResourcesManger$DataCallback;

    return-void
.end method


# virtual methods
.method public onCancelled(Lorg/xutils/common/Callback$CancelledException;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xutils/common/Callback$CancelledException;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    return-void
.end method

.method public onError(Ljava/lang/Throwable;Z)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            "Z)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 44
    iget-object v0, p0, Lcom/s1243808733/aide/AideResourcesManger$100000000;->val$callback:Lcom/s1243808733/aide/AideResourcesManger$DataCallback;

    invoke-interface {v0, p1}, Lcom/s1243808733/aide/AideResourcesManger$DataCallback;->onFail(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onFinished()V
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    return-void
.end method

.method public bridge onSuccess(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/s1243808733/aide/AideResourcesManger$100000000;->onSuccess(Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 30
    :try_start_0
    const-string v0, "com.s1243808733.data.AideResources"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    invoke-static {p1, v0}, Lcom/blankj/utilcode/util/GsonUtils;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/data/AideResources;

    .line 32
    const/16 v1, 0xc8

    invoke-virtual {v0}, Lcom/s1243808733/data/AideResources;->getCode()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 33
    sput-object v0, Lcom/s1243808733/aide/AideResourcesManger;->sAideResources:Lcom/s1243808733/data/AideResources;

    .line 35
    iget-object v1, p0, Lcom/s1243808733/aide/AideResourcesManger$100000000;->val$callback:Lcom/s1243808733/aide/AideResourcesManger$DataCallback;

    invoke-interface {v1, v0}, Lcom/s1243808733/aide/AideResourcesManger$DataCallback;->onResult(Lcom/s1243808733/data/AideResources;)V

    .line 38
    :goto_0
    return-void

    .line 30
    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1

    .line 38
    :cond_0
    iget-object v1, p0, Lcom/s1243808733/aide/AideResourcesManger$100000000;->val$callback:Lcom/s1243808733/aide/AideResourcesManger$DataCallback;

    new-instance v2, Ljava/lang/Exception;

    invoke-virtual {v0}, Lcom/s1243808733/data/AideResources;->getMsg()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lcom/s1243808733/aide/AideResourcesManger$DataCallback;->onFail(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
