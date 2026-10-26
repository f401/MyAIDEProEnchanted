.class public Lorg/voiddog/dragbackactivity/DragBackDelegate;
.super Ljava/lang/Object;
.source "DragBackDelegate.java"


# instance fields
.field private code:Ljava/lang/String;

.field enableDragBack:Z

.field private mActivity:Landroid/app/Activity;

.field protected mDragLayer:Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer;

.field private mRootContainer:Landroid/view/View;


# direct methods
.method static bridge synthetic -$$Nest$fgetcode(Lorg/voiddog/dragbackactivity/DragBackDelegate;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/voiddog/dragbackactivity/DragBackDelegate;->code:Ljava/lang/String;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$fgetmActivity(Lorg/voiddog/dragbackactivity/DragBackDelegate;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lorg/voiddog/dragbackactivity/DragBackDelegate;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$memptyBitmap(Lorg/voiddog/dragbackactivity/DragBackDelegate;)Landroid/graphics/Bitmap;
    .locals 1

    invoke-direct {p0}, Lorg/voiddog/dragbackactivity/DragBackDelegate;->emptyBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static bridge synthetic -$$Nest$mverifyBitmap(Lorg/voiddog/dragbackactivity/DragBackDelegate;Landroid/graphics/Bitmap;)Z
    .locals 1

    invoke-direct {p0, p1}, Lorg/voiddog/dragbackactivity/DragBackDelegate;->verifyBitmap(Landroid/graphics/Bitmap;)Z

    move-result v0

    return v0
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lorg/voiddog/dragbackactivity/DragBackDelegate;->mActivity:Landroid/app/Activity;

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/voiddog/dragbackactivity/DragBackDelegate;->code:Ljava/lang/String;

    return-void
.end method

.method public static convertViewToBitmap(Landroid/view/View;)Landroid/graphics/Bitmap;
    .locals 2

    .line 196
    invoke-virtual {p0}, Landroid/view/View;->destroyDrawingCache()V

    .line 197
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 198
    invoke-virtual {p0}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 199
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    return-object v0
.end method

.method private emptyBitmap()Landroid/graphics/Bitmap;
    .locals 2

    const/4 v1, 0x1

    .line 180
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private getLastActivity()Landroid/app/Activity;
    .locals 4

    .line 249
    invoke-static {}, Lcom/blankj/utilcode/util/ActivityUtils;->getActivityList()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 250
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    const/4 v0, 0x0

    move v1, v0

    .line 251
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 252
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 254
    iget-object v3, p0, Lorg/voiddog/dragbackactivity/DragBackDelegate;->mActivity:Landroid/app/Activity;

    if-ne v0, v3, :cond_0

    add-int/lit8 v0, v1, 0x1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 255
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private verifyBitmap(Landroid/graphics/Bitmap;)Z
    .locals 2

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 99
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-eq v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method dragEvent(I)V
    .locals 2

    if-gez p1, :cond_0

    const/4 p1, 0x0

    .line 273
    :cond_0
    iget-object v0, p0, Lorg/voiddog/dragbackactivity/DragBackDelegate;->mRootContainer:Landroid/view/View;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->setX(F)V

    return-void
.end method

.method finishActivity()V
    .locals 2

    const/4 v1, 0x0

    .line 264
    iget-object v0, p0, Lorg/voiddog/dragbackactivity/DragBackDelegate;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 266
    iget-object v0, p0, Lorg/voiddog/dragbackactivity/DragBackDelegate;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void
.end method

.method public isEnableDragBack()Z
    .locals 1

    .line 55
    iget-boolean v0, p0, Lorg/voiddog/dragbackactivity/DragBackDelegate;->enableDragBack:Z

    return v0
.end method

.method public onDestroy()V
    .locals 1

    .line 43
    invoke-virtual {p0}, Lorg/voiddog/dragbackactivity/DragBackDelegate;->isEnableDragBack()Z

    move-result v0

    if-nez v0, :cond_0

    .line 46
    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lorg/voiddog/dragbackactivity/DragBackDelegate;->code:Ljava/lang/String;

    invoke-static {v0}, Lcom/blankj/utilcode/util/CacheDiskStaticUtils;->remove(Ljava/lang/String;)Z

    goto :goto_0
.end method

.method public onPostCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 60
    invoke-virtual {p0}, Lorg/voiddog/dragbackactivity/DragBackDelegate;->isEnableDragBack()Z

    move-result v0

    if-nez v0, :cond_1

    .line 93
    :cond_0
    :goto_0
    return-void

    .line 63
    :cond_1
    iget-object v0, p0, Lorg/voiddog/dragbackactivity/DragBackDelegate;->mActivity:Landroid/app/Activity;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iput-object v0, p0, Lorg/voiddog/dragbackactivity/DragBackDelegate;->mRootContainer:Landroid/view/View;

    .line 65
    invoke-virtual {p0}, Lorg/voiddog/dragbackactivity/DragBackDelegate;->setupDragView()V

    .line 66
    iget-object v0, p0, Lorg/voiddog/dragbackactivity/DragBackDelegate;->mDragLayer:Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer;->setDragEnable(Z)V

    .line 68
    invoke-direct {p0}, Lorg/voiddog/dragbackactivity/DragBackDelegate;->getLastActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 70
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 72
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lorg/voiddog/dragbackactivity/DragBackDelegate$1;

    invoke-direct {v3, p0, v0, v1}, Lorg/voiddog/dragbackactivity/DragBackDelegate$1;-><init>(Lorg/voiddog/dragbackactivity/DragBackDelegate;Landroid/app/Activity;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 93
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public setEnableDragBack(Z)V
    .locals 0

    .line 50
    iput-boolean p1, p0, Lorg/voiddog/dragbackactivity/DragBackDelegate;->enableDragBack:Z

    return-void
.end method

.method protected setupDragView()V
    .locals 7

    const/4 v2, 0x0

    const/4 v6, -0x1

    .line 204
    invoke-virtual {p0}, Lorg/voiddog/dragbackactivity/DragBackDelegate;->isEnableDragBack()Z

    move-result v0

    if-nez v0, :cond_1

    .line 231
    :cond_0
    :goto_0
    return-void

    .line 207
    :cond_1
    iget-object v0, p0, Lorg/voiddog/dragbackactivity/DragBackDelegate;->mDragLayer:Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer;

    if-nez v0, :cond_0

    .line 210
    new-instance v0, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer;

    iget-object v1, p0, Lorg/voiddog/dragbackactivity/DragBackDelegate;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/voiddog/dragbackactivity/DragBackDelegate;->mDragLayer:Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer;

    .line 212
    iget-object v0, p0, Lorg/voiddog/dragbackactivity/DragBackDelegate;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 214
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    new-array v4, v3, [Landroid/view/View;

    move v1, v2

    .line 215
    :goto_1
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    if-ge v1, v5, :cond_2

    .line 216
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    aput-object v5, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 219
    :cond_2
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    :goto_2
    if-ge v2, v3, :cond_3

    .line 221
    aget-object v1, v4, v2

    .line 222
    iget-object v5, p0, Lorg/voiddog/dragbackactivity/DragBackDelegate;->mDragLayer:Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer;

    invoke-virtual {v5, v1}, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer;->addView(Landroid/view/View;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 225
    :cond_3
    iget-object v1, p0, Lorg/voiddog/dragbackactivity/DragBackDelegate;->mDragLayer:Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v6, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 231
    iget-object v0, p0, Lorg/voiddog/dragbackactivity/DragBackDelegate;->mDragLayer:Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer;

    new-instance v1, Lorg/voiddog/dragbackactivity/DragBackDelegate$3;

    invoke-direct {v1, p0}, Lorg/voiddog/dragbackactivity/DragBackDelegate$3;-><init>(Lorg/voiddog/dragbackactivity/DragBackDelegate;)V

    invoke-virtual {v0, v1}, Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer;->setOnDragListener(Lorg/voiddog/dragbackactivity/ui/EdgeDragLayer$DragListener;)V

    goto :goto_0
.end method

.method public snapshot()V
    .locals 1

    .line 103
    iget-object v0, p0, Lorg/voiddog/dragbackactivity/DragBackDelegate;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/voiddog/dragbackactivity/DragBackDelegate;->snapshot(Landroid/view/Window;)V

    goto :goto_0
.end method

.method public snapshot(Landroid/view/Window;)V
    .locals 2

    .line 111
    invoke-static {}, Lcom/s1243808733/aide/AdvancedSetting;->isEnableDragBack()Z

    move-result v0

    if-nez v0, :cond_0

    .line 174
    :goto_0
    return-void

    .line 111
    :cond_0
    if-nez p1, :cond_1

    .line 114
    iget-object v0, p0, Lorg/voiddog/dragbackactivity/DragBackDelegate;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    .line 115
    :cond_1
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 117
    new-instance v1, Lorg/voiddog/dragbackactivity/DragBackDelegate$2;

    invoke-direct {v1, p0, v0, p1}, Lorg/voiddog/dragbackactivity/DragBackDelegate$2;-><init>(Lorg/voiddog/dragbackactivity/DragBackDelegate;Landroid/view/View;Landroid/view/Window;)V

    .line 174
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method toBm(Landroid/view/View;)Landroid/graphics/Bitmap;
    .locals 7

    const/high16 v4, 0x40000000    # 2.0f

    .line 185
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 187
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 188
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/view/View;->measure(II)V

    .line 189
    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/view/View;->layout(IIII)V

    .line 190
    invoke-virtual {p1, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    return-object v0
.end method
