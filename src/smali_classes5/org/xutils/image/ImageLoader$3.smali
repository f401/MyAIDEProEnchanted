.class final Lorg/xutils/image/ImageLoader$3;
.super Ljava/lang/Object;
.source "ImageLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/xutils/image/ImageLoader;->postArgsException(Landroid/widget/ImageView;Lorg/xutils/image/ImageOptions;Ljava/lang/String;Lorg/xutils/common/Callback$CommonCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final val$callback:Lorg/xutils/common/Callback$CommonCallback;

.field final val$exMsg:Ljava/lang/String;

.field final val$options:Lorg/xutils/image/ImageOptions;

.field final val$view:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lorg/xutils/common/Callback$CommonCallback;Landroid/widget/ImageView;Lorg/xutils/image/ImageOptions;Ljava/lang/String;)V
    .registers 5

    .line 569
    iput-object p1, p0, Lorg/xutils/image/ImageLoader$3;->val$callback:Lorg/xutils/common/Callback$CommonCallback;

    iput-object p2, p0, Lorg/xutils/image/ImageLoader$3;->val$view:Landroid/widget/ImageView;

    iput-object p3, p0, Lorg/xutils/image/ImageLoader$3;->val$options:Lorg/xutils/image/ImageOptions;

    iput-object p4, p0, Lorg/xutils/image/ImageLoader$3;->val$exMsg:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 573
    :try_start_0
    iget-object v0, p0, Lorg/xutils/image/ImageLoader$3;->val$callback:Lorg/xutils/common/Callback$CommonCallback;

    instance-of v1, v0, Lorg/xutils/common/Callback$ProgressCallback;

    if-eqz v1, :cond_b

    .line 574
    check-cast v0, Lorg/xutils/common/Callback$ProgressCallback;

    invoke-interface {v0}, Lorg/xutils/common/Callback$ProgressCallback;->onWaiting()V

    .line 576
    :cond_b
    iget-object v0, p0, Lorg/xutils/image/ImageLoader$3;->val$view:Landroid/widget/ImageView;

    if-eqz v0, :cond_25

    iget-object v1, p0, Lorg/xutils/image/ImageLoader$3;->val$options:Lorg/xutils/image/ImageOptions;

    if-eqz v1, :cond_25

    .line 577
    invoke-virtual {v1}, Lorg/xutils/image/ImageOptions;->getPlaceholderScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 578
    iget-object v0, p0, Lorg/xutils/image/ImageLoader$3;->val$view:Landroid/widget/ImageView;

    iget-object v1, p0, Lorg/xutils/image/ImageLoader$3;->val$options:Lorg/xutils/image/ImageOptions;

    invoke-virtual {v1, v0}, Lorg/xutils/image/ImageOptions;->getFailureDrawable(Landroid/widget/ImageView;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 580
    :cond_25
    iget-object v0, p0, Lorg/xutils/image/ImageLoader$3;->val$callback:Lorg/xutils/common/Callback$CommonCallback;

    if-eqz v0, :cond_34

    .line 581
    new-instance v1, Ljava/lang/IllegalArgumentException;

    iget-object v2, p0, Lorg/xutils/image/ImageLoader$3;->val$exMsg:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lorg/xutils/common/Callback$CommonCallback;->onError(Ljava/lang/Throwable;Z)V
    :try_end_34
    .catchall {:try_start_0 .. :try_end_34} :catchall_3c

    .line 592
    :cond_34
    iget-object v0, p0, Lorg/xutils/image/ImageLoader$3;->val$callback:Lorg/xutils/common/Callback$CommonCallback;

    if-eqz v0, :cond_3b

    .line 594
    :try_start_38
    invoke-interface {v0}, Lorg/xutils/common/Callback$CommonCallback;->onFinished()V
    :try_end_3b
    .catchall {:try_start_38 .. :try_end_3b} :catchall_4d

    .line 600
    :cond_3b
    :goto_3b
    return-void

    .line 583
    :catchall_3c
    move-exception v0

    .line 584
    :try_start_3d
    iget-object v1, p0, Lorg/xutils/image/ImageLoader$3;->val$callback:Lorg/xutils/common/Callback$CommonCallback;
    :try_end_3f
    .catchall {:try_start_3d .. :try_end_3f} :catchall_5f

    if-eqz v1, :cond_45

    .line 586
    const/4 v2, 0x1

    :try_start_42
    invoke-interface {v1, v0, v2}, Lorg/xutils/common/Callback$CommonCallback;->onError(Ljava/lang/Throwable;Z)V
    :try_end_45
    .catchall {:try_start_42 .. :try_end_45} :catchall_56

    .line 592
    :cond_45
    :goto_45
    iget-object v0, p0, Lorg/xutils/image/ImageLoader$3;->val$callback:Lorg/xutils/common/Callback$CommonCallback;

    if-eqz v0, :cond_3b

    .line 594
    :try_start_49
    invoke-interface {v0}, Lorg/xutils/common/Callback$CommonCallback;->onFinished()V
    :try_end_4c
    .catchall {:try_start_49 .. :try_end_4c} :catchall_4d

    goto :goto_3b

    .line 595
    :catchall_4d
    move-exception v0

    .line 596
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3b

    .line 587
    :catchall_56
    move-exception v0

    .line 588
    :try_start_57
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5e
    .catchall {:try_start_57 .. :try_end_5e} :catchall_5f

    goto :goto_45

    .line 592
    :catchall_5f
    move-exception v0

    iget-object v1, p0, Lorg/xutils/image/ImageLoader$3;->val$callback:Lorg/xutils/common/Callback$CommonCallback;

    if-eqz v1, :cond_67

    .line 594
    :try_start_64
    invoke-interface {v1}, Lorg/xutils/common/Callback$CommonCallback;->onFinished()V
    :try_end_67
    .catchall {:try_start_64 .. :try_end_67} :catchall_68

    .line 599
    :cond_67
    :goto_67
    throw v0

    .line 595
    :catchall_68
    move-exception v1

    .line 596
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_67
.end method
