.class public abstract Lcom/blankj/utilcode/util/Utils$Task;
.super Lcom/blankj/utilcode/util/ThreadUtils$SimpleTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/blankj/utilcode/util/Utils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Task"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Result:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/blankj/utilcode/util/ThreadUtils$SimpleTask",
        "<TResult;>;"
    }
.end annotation


# instance fields
.field private mConsumer:Lcom/blankj/utilcode/util/Utils$Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/blankj/utilcode/util/Utils$Consumer",
            "<TResult;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/blankj/utilcode/util/Utils$Consumer;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/blankj/utilcode/util/Utils$Consumer",
            "<TResult;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/blankj/utilcode/util/ThreadUtils$SimpleTask;-><init>()V

    iput-object p1, p0, Lcom/blankj/utilcode/util/Utils$Task;->mConsumer:Lcom/blankj/utilcode/util/Utils$Consumer;

    return-void
.end method


# virtual methods
.method public onSuccess(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/blankj/utilcode/util/Utils$Task;->mConsumer:Lcom/blankj/utilcode/util/Utils$Consumer;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/blankj/utilcode/util/Utils$Consumer;->accept(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
