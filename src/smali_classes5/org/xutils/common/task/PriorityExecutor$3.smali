.class final Lorg/xutils/common/task/PriorityExecutor$3;
.super Ljava/lang/Object;
.source "PriorityExecutor.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/xutils/common/task/PriorityExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Ljava/lang/Runnable;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    .line 47
    check-cast p1, Ljava/lang/Runnable;

    check-cast p2, Ljava/lang/Runnable;

    invoke-virtual {p0, p1, p2}, Lorg/xutils/common/task/PriorityExecutor$3;->compare(Ljava/lang/Runnable;Ljava/lang/Runnable;)I

    move-result v0

    return v0
.end method

.method public compare(Ljava/lang/Runnable;Ljava/lang/Runnable;)I
    .registers 7

    .line 50
    instance-of v0, p1, Lorg/xutils/common/task/PriorityRunnable;

    if-eqz v0, :cond_22

    instance-of v0, p2, Lorg/xutils/common/task/PriorityRunnable;

    if-eqz v0, :cond_22

    .line 51
    check-cast p1, Lorg/xutils/common/task/PriorityRunnable;

    .line 52
    check-cast p2, Lorg/xutils/common/task/PriorityRunnable;

    .line 53
    iget-object v0, p1, Lorg/xutils/common/task/PriorityRunnable;->priority:Lorg/xutils/common/task/Priority;

    invoke-virtual {v0}, Lorg/xutils/common/task/Priority;->ordinal()I

    move-result v0

    iget-object v1, p2, Lorg/xutils/common/task/PriorityRunnable;->priority:Lorg/xutils/common/task/Priority;

    invoke-virtual {v1}, Lorg/xutils/common/task/Priority;->ordinal()I

    move-result v1

    sub-int/2addr v0, v1

    .line 54
    if-nez v0, :cond_21

    iget-wide v0, p2, Lorg/xutils/common/task/PriorityRunnable;->SEQ:J

    iget-wide v2, p1, Lorg/xutils/common/task/PriorityRunnable;->SEQ:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    .line 56
    :cond_21
    :goto_21
    return v0

    :cond_22
    const/4 v0, 0x0

    goto :goto_21
.end method
