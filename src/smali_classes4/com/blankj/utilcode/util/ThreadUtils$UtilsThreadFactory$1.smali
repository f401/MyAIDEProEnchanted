.class Lcom/blankj/utilcode/util/ThreadUtils$UtilsThreadFactory$1;
.super Ljava/lang/Thread;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/blankj/utilcode/util/ThreadUtils$UtilsThreadFactory;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Lcom/blankj/utilcode/util/ThreadUtils$UtilsThreadFactory;


# direct methods
.method constructor <init>(Lcom/blankj/utilcode/util/ThreadUtils$UtilsThreadFactory;Ljava/lang/Runnable;Ljava/lang/String;)V
    .registers 4

    iput-object p1, p0, Lcom/blankj/utilcode/util/ThreadUtils$UtilsThreadFactory$1;->this$0:Lcom/blankj/utilcode/util/ThreadUtils$UtilsThreadFactory;

    invoke-direct {p0, p2, p3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    :try_start_0
    invoke-super {p0}, Ljava/lang/Thread;->run()V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_4

    :goto_3
    return-void

    :catchall_4
    move-exception v0

    const-string v1, "ThreadUtils"

    const-string v2, "Request threw uncaught throwable"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3
.end method
