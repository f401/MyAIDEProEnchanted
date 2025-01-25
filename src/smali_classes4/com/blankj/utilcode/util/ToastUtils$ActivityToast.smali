.class final Lcom/blankj/utilcode/util/ToastUtils$ActivityToast;
.super Lcom/blankj/utilcode/util/ToastUtils$AbsToast;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/blankj/utilcode/util/ToastUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ActivityToast"
.end annotation


# static fields
.field private static sShowingIndex:I


# instance fields
.field private mActivityLifecycleCallbacks:Lcom/blankj/utilcode/util/Utils$ActivityLifecycleCallbacks;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method constructor <init>(Lcom/blankj/utilcode/util/ToastUtils;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/blankj/utilcode/util/ToastUtils$AbsToast;-><init>(Lcom/blankj/utilcode/util/ToastUtils;)V

    return-void
.end method

.method static synthetic access$200(Lcom/blankj/utilcode/util/ToastUtils$ActivityToast;)Z
    .registers 2

    invoke-direct {p0}, Lcom/blankj/utilcode/util/ToastUtils$ActivityToast;->isShowing()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/blankj/utilcode/util/ToastUtils$ActivityToast;Landroid/app/Activity;IZ)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/blankj/utilcode/util/ToastUtils$ActivityToast;->showWithActivity(Landroid/app/Activity;IZ)V

    return-void
.end method

.method private getToastViewSnapshot(I)Landroid/view/View;
    .registers 6

    iget-object v0, p0, Lcom/blankj/utilcode/util/ToastUtils$ActivityToast;->mToastView:Landroid/view/View;

    invoke-static {v0}, Lcom/blankj/utilcode/util/UtilsBridge;->view2Bitmap(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/widget/ImageView;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TAG_TOAST"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-object v1
.end method

.method private isShowing()Z
    .registers 2

    iget-object v0, p0, Lcom/blankj/utilcode/util/ToastUtils$ActivityToast;->mActivityLifecycleCallbacks:Lcom/blankj/utilcode/util/Utils$ActivityLifecycleCallbacks;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method private registerLifecycleCallback()V
    .registers 3

    new-instance v0, Lcom/blankj/utilcode/util/ToastUtils$ActivityToast$2;

    sget v1, Lcom/blankj/utilcode/util/ToastUtils$ActivityToast;->sShowingIndex:I

    invoke-direct {v0, p0, v1}, Lcom/blankj/utilcode/util/ToastUtils$ActivityToast$2;-><init>(Lcom/blankj/utilcode/util/ToastUtils$ActivityToast;I)V

    iput-object v0, p0, Lcom/blankj/utilcode/util/ToastUtils$ActivityToast;->mActivityLifecycleCallbacks:Lcom/blankj/utilcode/util/Utils$ActivityLifecycleCallbacks;

    invoke-static {v0}, Lcom/blankj/utilcode/util/UtilsBridge;->addActivityLifecycleCallbacks(Lcom/blankj/utilcode/util/Utils$ActivityLifecycleCallbacks;)V

    return-void
.end method

.method private showSystemToast(I)V
    .registers 4

    new-instance v0, Lcom/blankj/utilcode/util/ToastUtils$SystemToast;

    iget-object v1, p0, Lcom/blankj/utilcode/util/ToastUtils$ActivityToast;->mToastUtils:Lcom/blankj/utilcode/util/ToastUtils;

    invoke-direct {v0, v1}, Lcom/blankj/utilcode/util/ToastUtils$SystemToast;-><init>(Lcom/blankj/utilcode/util/ToastUtils;)V

    iget-object v1, p0, Lcom/blankj/utilcode/util/ToastUtils$ActivityToast;->mToast:Landroid/widget/Toast;

    iput-object v1, v0, Lcom/blankj/utilcode/util/ToastUtils$SystemToast;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0, p1}, Lcom/blankj/utilcode/util/ToastUtils$SystemToast;->show(I)V

    return-void
.end method

.method private showWithActivity(Landroid/app/Activity;IZ)V
    .registers 10

    const/4 v2, -0x2

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_4f

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget-object v2, p0, Lcom/blankj/utilcode/util/ToastUtils$ActivityToast;->mToast:Landroid/widget/Toast;

    invoke-virtual {v2}, Landroid/widget/Toast;->getGravity()I

    move-result v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v2, p0, Lcom/blankj/utilcode/util/ToastUtils$ActivityToast;->mToast:Landroid/widget/Toast;

    invoke-virtual {v2}, Landroid/widget/Toast;->getYOffset()I

    move-result v2

    invoke-static {}, Lcom/blankj/utilcode/util/UtilsBridge;->getNavBarHeight()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    iget-object v2, p0, Lcom/blankj/utilcode/util/ToastUtils$ActivityToast;->mToast:Landroid/widget/Toast;

    invoke-virtual {v2}, Landroid/widget/Toast;->getXOffset()I

    move-result v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    invoke-direct {p0, p2}, Lcom/blankj/utilcode/util/ToastUtils$ActivityToast;->getToastViewSnapshot(I)Landroid/view/View;

    move-result-object v2

    if-eqz p3, :cond_4c

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    const/high16 v4, 0x3f800000  # 1.0f

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    const-wide/16 v4, 0xc8

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_4c
    invoke-virtual {v0, v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_4f
    return-void
.end method

.method private unregisterLifecycleCallback()V
    .registers 2

    iget-object v0, p0, Lcom/blankj/utilcode/util/ToastUtils$ActivityToast;->mActivityLifecycleCallbacks:Lcom/blankj/utilcode/util/Utils$ActivityLifecycleCallbacks;

    invoke-static {v0}, Lcom/blankj/utilcode/util/UtilsBridge;->removeActivityLifecycleCallbacks(Lcom/blankj/utilcode/util/Utils$ActivityLifecycleCallbacks;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/blankj/utilcode/util/ToastUtils$ActivityToast;->mActivityLifecycleCallbacks:Lcom/blankj/utilcode/util/Utils$ActivityLifecycleCallbacks;

    return-void
.end method


# virtual methods
.method public cancel()V
    .registers 5

    invoke-direct {p0}, Lcom/blankj/utilcode/util/ToastUtils$ActivityToast;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_50

    invoke-direct {p0}, Lcom/blankj/utilcode/util/ToastUtils$ActivityToast;->unregisterLifecycleCallback()V

    invoke-static {}, Lcom/blankj/utilcode/util/UtilsBridge;->getActivityList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_11
    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_50

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/blankj/utilcode/util/UtilsBridge;->isActivityAlive(Landroid/app/Activity;)Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TAG_TOAST"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lcom/blankj/utilcode/util/ToastUtils$ActivityToast;->sShowingIndex:I

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_11

    :try_start_4a
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_4d} :catch_4e

    goto :goto_11

    :catch_4e
    move-exception v0

    goto :goto_11

    :cond_50
    invoke-super {p0}, Lcom/blankj/utilcode/util/ToastUtils$AbsToast;->cancel()V

    return-void
.end method

.method public show(I)V
    .registers 7

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/blankj/utilcode/util/ToastUtils$ActivityToast;->mToast:Landroid/widget/Toast;

    if-nez v0, :cond_6

    :goto_5
    return-void

    :cond_6
    invoke-static {}, Lcom/blankj/utilcode/util/UtilsBridge;->isAppForeground()Z

    move-result v0

    if-nez v0, :cond_10

    invoke-direct {p0, p1}, Lcom/blankj/utilcode/util/ToastUtils$ActivityToast;->showSystemToast(I)V

    goto :goto_5

    :cond_10
    const/4 v0, 0x0

    invoke-static {}, Lcom/blankj/utilcode/util/UtilsBridge;->getActivityList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :cond_1a
    :goto_1a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_33

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/blankj/utilcode/util/UtilsBridge;->isActivityAlive(Landroid/app/Activity;)Z

    move-result v4

    if-eqz v4, :cond_1a

    sget v1, Lcom/blankj/utilcode/util/ToastUtils$ActivityToast;->sShowingIndex:I

    invoke-direct {p0, v0, v1, v2}, Lcom/blankj/utilcode/util/ToastUtils$ActivityToast;->showWithActivity(Landroid/app/Activity;IZ)V

    move v1, v2

    goto :goto_1a

    :cond_33
    if-eqz v1, :cond_4e

    invoke-direct {p0}, Lcom/blankj/utilcode/util/ToastUtils$ActivityToast;->registerLifecycleCallback()V

    new-instance v2, Lcom/blankj/utilcode/util/ToastUtils$ActivityToast$1;

    invoke-direct {v2, p0}, Lcom/blankj/utilcode/util/ToastUtils$ActivityToast$1;-><init>(Lcom/blankj/utilcode/util/ToastUtils$ActivityToast;)V

    if-nez p1, :cond_4b

    const-wide/16 v0, 0x7d0

    :goto_41
    invoke-static {v2, v0, v1}, Lcom/blankj/utilcode/util/UtilsBridge;->runOnUiThreadDelayed(Ljava/lang/Runnable;J)V

    sget v0, Lcom/blankj/utilcode/util/ToastUtils$ActivityToast;->sShowingIndex:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/blankj/utilcode/util/ToastUtils$ActivityToast;->sShowingIndex:I

    goto :goto_5

    :cond_4b
    const-wide/16 v0, 0xdac

    goto :goto_41

    :cond_4e
    invoke-direct {p0, p1}, Lcom/blankj/utilcode/util/ToastUtils$ActivityToast;->showSystemToast(I)V

    goto :goto_5
.end method
