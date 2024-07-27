.class Lcom/blankj/utilcode/util/PermissionUtils$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/blankj/utilcode/util/PermissionUtils$OnRationaleListener$ShouldRequest;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/blankj/utilcode/util/PermissionUtils;->rationalInner(Lcom/blankj/utilcode/util/UtilsTransActivity;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Lcom/blankj/utilcode/util/PermissionUtils;

.field final val$activity:Lcom/blankj/utilcode/util/UtilsTransActivity;

.field final val$againRunnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/blankj/utilcode/util/PermissionUtils;Ljava/lang/Runnable;Lcom/blankj/utilcode/util/UtilsTransActivity;)V
    .registers 4

    iput-object p1, p0, Lcom/blankj/utilcode/util/PermissionUtils$1;->this$0:Lcom/blankj/utilcode/util/PermissionUtils;

    iput-object p2, p0, Lcom/blankj/utilcode/util/PermissionUtils$1;->val$againRunnable:Ljava/lang/Runnable;

    iput-object p3, p0, Lcom/blankj/utilcode/util/PermissionUtils$1;->val$activity:Lcom/blankj/utilcode/util/UtilsTransActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public again(Z)V
    .registers 4

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/blankj/utilcode/util/PermissionUtils$1;->this$0:Lcom/blankj/utilcode/util/PermissionUtils;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/PermissionUtils;->access$002(Lcom/blankj/utilcode/util/PermissionUtils;Ljava/util/List;)Ljava/util/List;

    iget-object v0, p0, Lcom/blankj/utilcode/util/PermissionUtils$1;->this$0:Lcom/blankj/utilcode/util/PermissionUtils;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/PermissionUtils;->access$102(Lcom/blankj/utilcode/util/PermissionUtils;Ljava/util/List;)Ljava/util/List;

    iget-object v0, p0, Lcom/blankj/utilcode/util/PermissionUtils$1;->val$againRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/blankj/utilcode/util/PermissionUtils$1;->val$activity:Lcom/blankj/utilcode/util/UtilsTransActivity;

    invoke-virtual {v0}, Lcom/blankj/utilcode/util/UtilsTransActivity;->finish()V

    iget-object v0, p0, Lcom/blankj/utilcode/util/PermissionUtils$1;->this$0:Lcom/blankj/utilcode/util/PermissionUtils;

    invoke-static {v0}, Lcom/blankj/utilcode/util/PermissionUtils;->access$200(Lcom/blankj/utilcode/util/PermissionUtils;)V

    goto :goto_0
.end method
