.class Lorg/xutils/common/task/PriorityRunnable;
.super Ljava/lang/Object;
.source "PriorityRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field SEQ:J

.field public final priority:Lorg/xutils/common/task/Priority;

.field private final runnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lorg/xutils/common/task/Priority;Ljava/lang/Runnable;)V
    .registers 3

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    if-nez p1, :cond_7

    sget-object p1, Lorg/xutils/common/task/Priority;->DEFAULT:Lorg/xutils/common/task/Priority;

    :cond_7
    iput-object p1, p0, Lorg/xutils/common/task/PriorityRunnable;->priority:Lorg/xutils/common/task/Priority;

    .line 16
    iput-object p2, p0, Lorg/xutils/common/task/PriorityRunnable;->runnable:Ljava/lang/Runnable;

    .line 17
    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 21
    iget-object v0, p0, Lorg/xutils/common/task/PriorityRunnable;->runnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 22
    return-void
.end method
