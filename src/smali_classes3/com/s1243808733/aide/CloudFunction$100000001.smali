.class Lcom/s1243808733/aide/CloudFunction$100000001;
.super Ljava/lang/Object;
.source "CloudFunction.java"

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
.field private final this$0:Lcom/s1243808733/aide/CloudFunction;


# direct methods
.method constructor <init>(Lcom/s1243808733/aide/CloudFunction;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/s1243808733/aide/CloudFunction$100000001;->this$0:Lcom/s1243808733/aide/CloudFunction;

    return-void
.end method

.method static access$0(Lcom/s1243808733/aide/CloudFunction$100000001;)Lcom/s1243808733/aide/CloudFunction;
    .registers 2

    iget-object v0, p0, Lcom/s1243808733/aide/CloudFunction$100000001;->this$0:Lcom/s1243808733/aide/CloudFunction;

    return-object v0
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

    .line 100
    iget-object v0, p0, Lcom/s1243808733/aide/CloudFunction$100000001;->this$0:Lcom/s1243808733/aide/CloudFunction;

    invoke-static {v0}, Lcom/s1243808733/aide/CloudFunction;->access$1000008(Lcom/s1243808733/aide/CloudFunction;)V

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

    invoke-virtual {p0, p1}, Lcom/s1243808733/aide/CloudFunction$100000001;->onSuccess(Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 54
    invoke-static {}, Lorg/xutils/x;->task()Lorg/xutils/common/TaskController;

    move-result-object v0

    new-instance v1, Lcom/s1243808733/aide/CloudFunction$100000001$100000000;

    invoke-direct {v1, p0, p1}, Lcom/s1243808733/aide/CloudFunction$100000001$100000000;-><init>(Lcom/s1243808733/aide/CloudFunction$100000001;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lorg/xutils/common/TaskController;->run(Ljava/lang/Runnable;)V

    return-void
.end method
