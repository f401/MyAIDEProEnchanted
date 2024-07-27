.class Lcom/termux/app/TermuxService$100000000;
.super Ljava/lang/Object;
.source "TermuxService.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final this$0:Lcom/termux/app/TermuxService;

.field private final val$task:Lcom/termux/app/BackgroundJob;


# direct methods
.method constructor <init>(Lcom/termux/app/TermuxService;Lcom/termux/app/BackgroundJob;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/termux/app/TermuxService$100000000;->this$0:Lcom/termux/app/TermuxService;

    iput-object p2, p0, Lcom/termux/app/TermuxService$100000000;->val$task:Lcom/termux/app/BackgroundJob;

    return-void
.end method

.method static access$0(Lcom/termux/app/TermuxService$100000000;)Lcom/termux/app/TermuxService;
    .registers 2

    iget-object v0, p0, Lcom/termux/app/TermuxService$100000000;->this$0:Lcom/termux/app/TermuxService;

    return-object v0
.end method


# virtual methods
.method public run()V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 355
    iget-object v0, p0, Lcom/termux/app/TermuxService$100000000;->this$0:Lcom/termux/app/TermuxService;

    iget-object v0, v0, Lcom/termux/app/TermuxService;->mBackgroundTasks:Ljava/util/List;

    iget-object v1, p0, Lcom/termux/app/TermuxService$100000000;->val$task:Lcom/termux/app/BackgroundJob;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 356
    iget-object v0, p0, Lcom/termux/app/TermuxService$100000000;->this$0:Lcom/termux/app/TermuxService;

    invoke-virtual {v0}, Lcom/termux/app/TermuxService;->updateNotification()V

    return-void
.end method
