.class Lcom/termux/app/TermuxService$1;
.super Ljava/lang/Object;
.source "TermuxService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/termux/app/TermuxService;->onBackgroundJobExited(Lcom/termux/app/BackgroundJob;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Lcom/termux/app/TermuxService;

.field final val$task:Lcom/termux/app/BackgroundJob;


# direct methods
.method constructor <init>(Lcom/termux/app/TermuxService;Lcom/termux/app/BackgroundJob;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 352
    iput-object p1, p0, Lcom/termux/app/TermuxService$1;->this$0:Lcom/termux/app/TermuxService;

    iput-object p2, p0, Lcom/termux/app/TermuxService$1;->val$task:Lcom/termux/app/BackgroundJob;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 355
    iget-object v0, p0, Lcom/termux/app/TermuxService$1;->this$0:Lcom/termux/app/TermuxService;

    iget-object v0, v0, Lcom/termux/app/TermuxService;->mBackgroundTasks:Ljava/util/List;

    iget-object v1, p0, Lcom/termux/app/TermuxService$1;->val$task:Lcom/termux/app/BackgroundJob;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 356
    iget-object v0, p0, Lcom/termux/app/TermuxService$1;->this$0:Lcom/termux/app/TermuxService;

    invoke-virtual {v0}, Lcom/termux/app/TermuxService;->updateNotification()V

    return-void
.end method
