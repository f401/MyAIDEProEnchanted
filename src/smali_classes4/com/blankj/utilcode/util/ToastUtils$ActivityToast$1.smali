.class Lcom/blankj/utilcode/util/ToastUtils$ActivityToast$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/blankj/utilcode/util/ToastUtils$ActivityToast;->show(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Lcom/blankj/utilcode/util/ToastUtils$ActivityToast;


# direct methods
.method constructor <init>(Lcom/blankj/utilcode/util/ToastUtils$ActivityToast;)V
    .registers 2

    iput-object p1, p0, Lcom/blankj/utilcode/util/ToastUtils$ActivityToast$1;->this$0:Lcom/blankj/utilcode/util/ToastUtils$ActivityToast;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/blankj/utilcode/util/ToastUtils$ActivityToast$1;->this$0:Lcom/blankj/utilcode/util/ToastUtils$ActivityToast;

    invoke-virtual {v0}, Lcom/blankj/utilcode/util/ToastUtils$ActivityToast;->cancel()V

    return-void
.end method
