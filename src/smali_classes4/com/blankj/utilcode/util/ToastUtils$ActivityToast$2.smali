.class Lcom/blankj/utilcode/util/ToastUtils$ActivityToast$2;
.super Lcom/blankj/utilcode/util/Utils$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/blankj/utilcode/util/ToastUtils$ActivityToast;->registerLifecycleCallback()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Lcom/blankj/utilcode/util/ToastUtils$ActivityToast;

.field final val$index:I


# direct methods
.method constructor <init>(Lcom/blankj/utilcode/util/ToastUtils$ActivityToast;I)V
    .registers 3

    iput-object p1, p0, Lcom/blankj/utilcode/util/ToastUtils$ActivityToast$2;->this$0:Lcom/blankj/utilcode/util/ToastUtils$ActivityToast;

    iput p2, p0, Lcom/blankj/utilcode/util/ToastUtils$ActivityToast$2;->val$index:I

    invoke-direct {p0}, Lcom/blankj/utilcode/util/Utils$ActivityLifecycleCallbacks;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;)V
    .registers 5

    iget-object v0, p0, Lcom/blankj/utilcode/util/ToastUtils$ActivityToast$2;->this$0:Lcom/blankj/utilcode/util/ToastUtils$ActivityToast;

    invoke-static {v0}, Lcom/blankj/utilcode/util/ToastUtils$ActivityToast;->access$200(Lcom/blankj/utilcode/util/ToastUtils$ActivityToast;)Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/blankj/utilcode/util/ToastUtils$ActivityToast$2;->this$0:Lcom/blankj/utilcode/util/ToastUtils$ActivityToast;

    iget v1, p0, Lcom/blankj/utilcode/util/ToastUtils$ActivityToast$2;->val$index:I

    const/4 v2, 0x0

    invoke-static {v0, p1, v1, v2}, Lcom/blankj/utilcode/util/ToastUtils$ActivityToast;->access$300(Lcom/blankj/utilcode/util/ToastUtils$ActivityToast;Landroid/app/Activity;IZ)V

    :cond_10
    return-void
.end method
