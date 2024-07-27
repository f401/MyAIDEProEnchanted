.class Lcom/blankj/utilcode/util/MessengerUtils$ServerService$1;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/blankj/utilcode/util/MessengerUtils$ServerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Lcom/blankj/utilcode/util/MessengerUtils$ServerService;


# direct methods
.method constructor <init>(Lcom/blankj/utilcode/util/MessengerUtils$ServerService;)V
    .registers 2

    iput-object p1, p0, Lcom/blankj/utilcode/util/MessengerUtils$ServerService$1;->this$0:Lcom/blankj/utilcode/util/MessengerUtils$ServerService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/blankj/utilcode/util/MessengerUtils$ServerService$1;->this$0:Lcom/blankj/utilcode/util/MessengerUtils$ServerService;

    invoke-static {v0, p1}, Lcom/blankj/utilcode/util/MessengerUtils$ServerService;->access$300(Lcom/blankj/utilcode/util/MessengerUtils$ServerService;Landroid/os/Message;)V

    iget-object v0, p0, Lcom/blankj/utilcode/util/MessengerUtils$ServerService$1;->this$0:Lcom/blankj/utilcode/util/MessengerUtils$ServerService;

    invoke-static {v0, p1}, Lcom/blankj/utilcode/util/MessengerUtils$ServerService;->access$400(Lcom/blankj/utilcode/util/MessengerUtils$ServerService;Landroid/os/Message;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/blankj/utilcode/util/MessengerUtils$ServerService$1;->this$0:Lcom/blankj/utilcode/util/MessengerUtils$ServerService;

    invoke-static {v0}, Lcom/blankj/utilcode/util/MessengerUtils$ServerService;->access$200(Lcom/blankj/utilcode/util/MessengerUtils$ServerService;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/blankj/utilcode/util/MessengerUtils$ServerService$1;->this$0:Lcom/blankj/utilcode/util/MessengerUtils$ServerService;

    invoke-static {v0}, Lcom/blankj/utilcode/util/MessengerUtils$ServerService;->access$200(Lcom/blankj/utilcode/util/MessengerUtils$ServerService;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
