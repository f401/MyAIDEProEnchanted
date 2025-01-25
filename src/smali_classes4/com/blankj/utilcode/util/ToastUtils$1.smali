.class Lcom/blankj/utilcode/util/ToastUtils$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/blankj/utilcode/util/ToastUtils;->show(Landroid/view/View;Ljava/lang/CharSequence;ILcom/blankj/utilcode/util/ToastUtils;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final val$duration:I

.field final val$text:Ljava/lang/CharSequence;

.field final val$utils:Lcom/blankj/utilcode/util/ToastUtils;

.field final val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/blankj/utilcode/util/ToastUtils;Landroid/view/View;Ljava/lang/CharSequence;I)V
    .registers 5

    iput-object p1, p0, Lcom/blankj/utilcode/util/ToastUtils$1;->val$utils:Lcom/blankj/utilcode/util/ToastUtils;

    iput-object p2, p0, Lcom/blankj/utilcode/util/ToastUtils$1;->val$view:Landroid/view/View;

    iput-object p3, p0, Lcom/blankj/utilcode/util/ToastUtils$1;->val$text:Ljava/lang/CharSequence;

    iput p4, p0, Lcom/blankj/utilcode/util/ToastUtils$1;->val$duration:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    invoke-static {}, Lcom/blankj/utilcode/util/ToastUtils;->cancel()V

    iget-object v0, p0, Lcom/blankj/utilcode/util/ToastUtils$1;->val$utils:Lcom/blankj/utilcode/util/ToastUtils;

    invoke-static {v0}, Lcom/blankj/utilcode/util/ToastUtils;->access$100(Lcom/blankj/utilcode/util/ToastUtils;)Lcom/blankj/utilcode/util/ToastUtils$IToast;

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/ToastUtils;->access$002(Lcom/blankj/utilcode/util/ToastUtils$IToast;)Lcom/blankj/utilcode/util/ToastUtils$IToast;

    iget-object v0, p0, Lcom/blankj/utilcode/util/ToastUtils$1;->val$view:Landroid/view/View;

    if-eqz v0, :cond_23

    invoke-static {}, Lcom/blankj/utilcode/util/ToastUtils;->access$000()Lcom/blankj/utilcode/util/ToastUtils$IToast;

    move-result-object v0

    iget-object v1, p0, Lcom/blankj/utilcode/util/ToastUtils$1;->val$view:Landroid/view/View;

    invoke-interface {v0, v1}, Lcom/blankj/utilcode/util/ToastUtils$IToast;->setToastView(Landroid/view/View;)V

    :goto_19
    invoke-static {}, Lcom/blankj/utilcode/util/ToastUtils;->access$000()Lcom/blankj/utilcode/util/ToastUtils$IToast;

    move-result-object v0

    iget v1, p0, Lcom/blankj/utilcode/util/ToastUtils$1;->val$duration:I

    invoke-interface {v0, v1}, Lcom/blankj/utilcode/util/ToastUtils$IToast;->show(I)V

    return-void

    :cond_23
    invoke-static {}, Lcom/blankj/utilcode/util/ToastUtils;->access$000()Lcom/blankj/utilcode/util/ToastUtils$IToast;

    move-result-object v0

    iget-object v1, p0, Lcom/blankj/utilcode/util/ToastUtils$1;->val$text:Ljava/lang/CharSequence;

    invoke-interface {v0, v1}, Lcom/blankj/utilcode/util/ToastUtils$IToast;->setToastView(Ljava/lang/CharSequence;)V

    goto :goto_19
.end method
