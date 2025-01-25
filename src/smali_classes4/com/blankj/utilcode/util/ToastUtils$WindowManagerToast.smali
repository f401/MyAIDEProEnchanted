.class final Lcom/blankj/utilcode/util/ToastUtils$WindowManagerToast;
.super Lcom/blankj/utilcode/util/ToastUtils$AbsToast;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/blankj/utilcode/util/ToastUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "WindowManagerToast"
.end annotation


# instance fields
.field private mActivityLifecycleCallbacks:Lcom/blankj/utilcode/util/Utils$ActivityLifecycleCallbacks;

.field private mParams:Landroid/view/WindowManager$LayoutParams;

.field private mWM:Landroid/view/WindowManager;


# direct methods
.method constructor <init>(Lcom/blankj/utilcode/util/ToastUtils;I)V
    .registers 4

    invoke-direct {p0, p1}, Lcom/blankj/utilcode/util/ToastUtils$AbsToast;-><init>(Lcom/blankj/utilcode/util/ToastUtils;)V

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lcom/blankj/utilcode/util/ToastUtils$WindowManagerToast;->mParams:Landroid/view/WindowManager$LayoutParams;

    iput p2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    return-void
.end method


# virtual methods
.method public cancel()V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/blankj/utilcode/util/ToastUtils$WindowManagerToast;->mWM:Landroid/view/WindowManager;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/blankj/utilcode/util/ToastUtils$WindowManagerToast;->mWM:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/blankj/utilcode/util/ToastUtils$WindowManagerToast;->mToastView:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/blankj/utilcode/util/ToastUtils$WindowManagerToast;->mWM:Landroid/view/WindowManager;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_e} :catch_12

    :cond_e
    :goto_e
    invoke-super {p0}, Lcom/blankj/utilcode/util/ToastUtils$AbsToast;->cancel()V

    return-void

    :catch_12
    move-exception v0

    goto :goto_e
.end method

.method public show(I)V
    .registers 5

    const/4 v1, -0x2

    const/high16 v2, 0x3f800000  # 1.0f

    iget-object v0, p0, Lcom/blankj/utilcode/util/ToastUtils$WindowManagerToast;->mToast:Landroid/widget/Toast;

    if-nez v0, :cond_8

    :goto_7
    return-void

    :cond_8
    iget-object v0, p0, Lcom/blankj/utilcode/util/ToastUtils$WindowManagerToast;->mParams:Landroid/view/WindowManager$LayoutParams;

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    iget-object v0, p0, Lcom/blankj/utilcode/util/ToastUtils$WindowManagerToast;->mParams:Landroid/view/WindowManager$LayoutParams;

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    iget-object v0, p0, Lcom/blankj/utilcode/util/ToastUtils$WindowManagerToast;->mParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    iget-object v0, p0, Lcom/blankj/utilcode/util/ToastUtils$WindowManagerToast;->mParams:Landroid/view/WindowManager$LayoutParams;

    const v1, 0x1030004

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    iget-object v0, p0, Lcom/blankj/utilcode/util/ToastUtils$WindowManagerToast;->mParams:Landroid/view/WindowManager$LayoutParams;

    const-string v1, "ToastWithoutNotification"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/blankj/utilcode/util/ToastUtils$WindowManagerToast;->mParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x98

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget-object v0, p0, Lcom/blankj/utilcode/util/ToastUtils$WindowManagerToast;->mParams:Landroid/view/WindowManager$LayoutParams;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    iget-object v0, p0, Lcom/blankj/utilcode/util/ToastUtils$WindowManagerToast;->mParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lcom/blankj/utilcode/util/ToastUtils$WindowManagerToast;->mToast:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->getGravity()I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget-object v0, p0, Lcom/blankj/utilcode/util/ToastUtils$WindowManagerToast;->mParams:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    and-int/lit8 v0, v0, 0x7

    const/4 v1, 0x7

    if-ne v0, v1, :cond_4c

    iget-object v0, p0, Lcom/blankj/utilcode/util/ToastUtils$WindowManagerToast;->mParams:Landroid/view/WindowManager$LayoutParams;

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->horizontalWeight:F

    :cond_4c
    iget-object v0, p0, Lcom/blankj/utilcode/util/ToastUtils$WindowManagerToast;->mParams:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    and-int/lit8 v0, v0, 0x70

    const/16 v1, 0x70

    if-ne v0, v1, :cond_5a

    iget-object v0, p0, Lcom/blankj/utilcode/util/ToastUtils$WindowManagerToast;->mParams:Landroid/view/WindowManager$LayoutParams;

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->verticalWeight:F

    :cond_5a
    iget-object v0, p0, Lcom/blankj/utilcode/util/ToastUtils$WindowManagerToast;->mParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lcom/blankj/utilcode/util/ToastUtils$WindowManagerToast;->mToast:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->getXOffset()I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v0, p0, Lcom/blankj/utilcode/util/ToastUtils$WindowManagerToast;->mParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lcom/blankj/utilcode/util/ToastUtils$WindowManagerToast;->mToast:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->getYOffset()I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v0, p0, Lcom/blankj/utilcode/util/ToastUtils$WindowManagerToast;->mParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lcom/blankj/utilcode/util/ToastUtils$WindowManagerToast;->mToast:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->getHorizontalMargin()F

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->horizontalMargin:F

    iget-object v0, p0, Lcom/blankj/utilcode/util/ToastUtils$WindowManagerToast;->mParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lcom/blankj/utilcode/util/ToastUtils$WindowManagerToast;->mToast:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->getVerticalMargin()F

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->verticalMargin:F

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/blankj/utilcode/util/ToastUtils$WindowManagerToast;->mWM:Landroid/view/WindowManager;

    if-eqz v0, :cond_99

    :try_start_92
    iget-object v1, p0, Lcom/blankj/utilcode/util/ToastUtils$WindowManagerToast;->mToastView:Landroid/view/View;

    iget-object v2, p0, Lcom/blankj/utilcode/util/ToastUtils$WindowManagerToast;->mParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_99
    .catch Ljava/lang/Exception; {:try_start_92 .. :try_end_99} :catch_aa

    :cond_99
    :goto_99
    new-instance v2, Lcom/blankj/utilcode/util/ToastUtils$WindowManagerToast$1;

    invoke-direct {v2, p0}, Lcom/blankj/utilcode/util/ToastUtils$WindowManagerToast$1;-><init>(Lcom/blankj/utilcode/util/ToastUtils$WindowManagerToast;)V

    if-nez p1, :cond_a7

    const-wide/16 v0, 0x7d0

    :goto_a2
    invoke-static {v2, v0, v1}, Lcom/blankj/utilcode/util/UtilsBridge;->runOnUiThreadDelayed(Ljava/lang/Runnable;J)V

    goto/16 :goto_7

    :cond_a7
    const-wide/16 v0, 0xdac

    goto :goto_a2

    :catch_aa
    move-exception v0

    goto :goto_99
.end method
