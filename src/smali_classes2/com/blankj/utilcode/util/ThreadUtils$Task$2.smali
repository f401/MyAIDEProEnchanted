.class Lcom/blankj/utilcode/util/ThreadUtils$Task$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/blankj/utilcode/util/ThreadUtils$Task;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Lcom/blankj/utilcode/util/ThreadUtils$Task;

.field final val$result:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/blankj/utilcode/util/ThreadUtils$Task;Ljava/lang/Object;)V
    .registers 3

    iput-object p1, p0, Lcom/blankj/utilcode/util/ThreadUtils$Task$2;->this$0:Lcom/blankj/utilcode/util/ThreadUtils$Task;

    iput-object p2, p0, Lcom/blankj/utilcode/util/ThreadUtils$Task$2;->val$result:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/blankj/utilcode/util/ThreadUtils$Task$2;->this$0:Lcom/blankj/utilcode/util/ThreadUtils$Task;

    iget-object v1, p0, Lcom/blankj/utilcode/util/ThreadUtils$Task$2;->val$result:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/blankj/utilcode/util/ThreadUtils$Task;->onSuccess(Ljava/lang/Object;)V

    return-void
.end method
