.class Lorg/xutils/common/task/TaskControllerImpl$3;
.super Ljava/lang/Object;
.source "TaskControllerImpl.java"

# interfaces
.implements Lorg/xutils/common/Callback$Cancelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/xutils/common/task/TaskControllerImpl;->startTasks(Lorg/xutils/common/Callback$GroupCallback;[Lorg/xutils/common/task/AbsTask;)Lorg/xutils/common/Callback$Cancelable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Lorg/xutils/common/task/TaskControllerImpl;

.field final val$tasks:[Lorg/xutils/common/task/AbsTask;


# direct methods
.method constructor <init>(Lorg/xutils/common/task/TaskControllerImpl;[Lorg/xutils/common/task/AbsTask;)V
    .registers 3

    .line 189
    iput-object p1, p0, Lorg/xutils/common/task/TaskControllerImpl$3;->this$0:Lorg/xutils/common/task/TaskControllerImpl;

    iput-object p2, p0, Lorg/xutils/common/task/TaskControllerImpl$3;->val$tasks:[Lorg/xutils/common/task/AbsTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .registers 5

    .line 193
    iget-object v1, p0, Lorg/xutils/common/task/TaskControllerImpl$3;->val$tasks:[Lorg/xutils/common/task/AbsTask;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_4
    if-ge v0, v2, :cond_e

    aget-object v3, v1, v0

    .line 194
    invoke-virtual {v3}, Lorg/xutils/common/task/AbsTask;->cancel()V

    .line 193
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 196
    :cond_e
    return-void
.end method

.method public isCancelled()Z
    .registers 7

    const/4 v1, 0x0

    .line 200
    const/4 v0, 0x1

    .line 201
    iget-object v3, p0, Lorg/xutils/common/task/TaskControllerImpl$3;->val$tasks:[Lorg/xutils/common/task/AbsTask;

    array-length v4, v3

    move v2, v1

    :goto_6
    if-ge v2, v4, :cond_14

    aget-object v5, v3, v2

    .line 202
    invoke-virtual {v5}, Lorg/xutils/common/task/AbsTask;->isCancelled()Z

    move-result v5

    if-nez v5, :cond_11

    move v0, v1

    .line 201
    :cond_11
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 206
    :cond_14
    return v0
.end method
