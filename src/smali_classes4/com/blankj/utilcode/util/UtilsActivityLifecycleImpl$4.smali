.class Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl;->processHideSoftInputOnActivityDestroy(Landroid/app/Activity;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl;

.field final val$activity:Landroid/app/Activity;

.field final val$tag:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl;Landroid/app/Activity;Ljava/lang/Object;)V
    .registers 4

    iput-object p1, p0, Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl$4;->this$0:Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl;

    iput-object p2, p0, Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl$4;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl$4;->val$tag:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl$4;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-eqz v1, :cond_13

    iget-object v0, p0, Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl$4;->val$tag:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/Window;->setSoftInputMode(I)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_13} :catch_14

    :cond_13
    :goto_13
    return-void

    :catch_14
    move-exception v0

    goto :goto_13
.end method
