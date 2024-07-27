.class public abstract Lcom/blankj/utilcode/util/TouchUtils$OnTouchUtilsListener;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/blankj/utilcode/util/TouchUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "OnTouchUtilsListener"
.end annotation


# static fields
.field private static final MIN_TAP_TIME:I = 0x3e8

.field private static final STATE_DOWN:I = 0x0

.field private static final STATE_MOVE:I = 0x1

.field private static final STATE_STOP:I = 0x2


# instance fields
.field private direction:I

.field private downX:I

.field private downY:I

.field private lastX:I

.field private lastY:I

.field private maximumFlingVelocity:I

.field private minimumFlingVelocity:I

.field private state:I

.field private touchSlop:I

.field private velocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, v0, v0}, Lcom/blankj/utilcode/util/TouchUtils$OnTouchUtilsListener;->resetTouch(II)V

    return-void
.end method

.method private resetTouch(II)V
    .registers 4

    const/4 v0, 0x0

    iput p1, p0, Lcom/blankj/utilcode/util/TouchUtils$OnTouchUtilsListener;->downX:I

    iput p2, p0, Lcom/blankj/utilcode/util/TouchUtils$OnTouchUtilsListener;->downY:I

    iput p1, p0, Lcom/blankj/utilcode/util/TouchUtils$OnTouchUtilsListener;->lastX:I

    iput p2, p0, Lcom/blankj/utilcode/util/TouchUtils$OnTouchUtilsListener;->lastY:I

    iput v0, p0, Lcom/blankj/utilcode/util/TouchUtils$OnTouchUtilsListener;->state:I

    iput v0, p0, Lcom/blankj/utilcode/util/TouchUtils$OnTouchUtilsListener;->direction:I

    iget-object v0, p0, Lcom/blankj/utilcode/util/TouchUtils$OnTouchUtilsListener;->velocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    :cond_0
    return-void
.end method


# virtual methods
.method public abstract onDown(Landroid/view/View;IILandroid/view/MotionEvent;)Z
.end method

.method public abstract onMove(Landroid/view/View;IIIIIIILandroid/view/MotionEvent;)Z
.end method

.method public abstract onStop(Landroid/view/View;IIIIIIILandroid/view/MotionEvent;)Z
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 5

    iget v0, p0, Lcom/blankj/utilcode/util/TouchUtils$OnTouchUtilsListener;->touchSlop:I

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/blankj/utilcode/util/TouchUtils$OnTouchUtilsListener;->touchSlop:I

    :cond_0
    iget v0, p0, Lcom/blankj/utilcode/util/TouchUtils$OnTouchUtilsListener;->maximumFlingVelocity:I

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v0

    iput v0, p0, Lcom/blankj/utilcode/util/TouchUtils$OnTouchUtilsListener;->maximumFlingVelocity:I

    :cond_1
    iget v0, p0, Lcom/blankj/utilcode/util/TouchUtils$OnTouchUtilsListener;->minimumFlingVelocity:I

    if-nez v0, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v0

    iput v0, p0, Lcom/blankj/utilcode/util/TouchUtils$OnTouchUtilsListener;->minimumFlingVelocity:I

    :cond_2
    iget-object v0, p0, Lcom/blankj/utilcode/util/TouchUtils$OnTouchUtilsListener;->velocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_3

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/blankj/utilcode/util/TouchUtils$OnTouchUtilsListener;->velocityTracker:Landroid/view/VelocityTracker;

    :cond_3
    iget-object v0, p0, Lcom/blankj/utilcode/util/TouchUtils$OnTouchUtilsListener;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p2}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_6

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    const/4 v1, 0x3

    if-eq v0, v1, :cond_5

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_4
    invoke-virtual {p0, p1, p2}, Lcom/blankj/utilcode/util/TouchUtils$OnTouchUtilsListener;->onUtilsMove(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    :cond_5
    invoke-virtual {p0, p1, p2}, Lcom/blankj/utilcode/util/TouchUtils$OnTouchUtilsListener;->onUtilsStop(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    :cond_6
    invoke-virtual {p0, p1, p2}, Lcom/blankj/utilcode/util/TouchUtils$OnTouchUtilsListener;->onUtilsDown(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onUtilsDown(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 6

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    float-to-int v1, v1

    invoke-direct {p0, v0, v1}, Lcom/blankj/utilcode/util/TouchUtils$OnTouchUtilsListener;->resetTouch(II)V

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Landroid/view/View;->setPressed(Z)V

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/blankj/utilcode/util/TouchUtils$OnTouchUtilsListener;->onDown(Landroid/view/View;IILandroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onUtilsMove(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 13

    const/4 v0, 0x1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v3, v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    float-to-int v4, v1

    iget v1, p0, Lcom/blankj/utilcode/util/TouchUtils$OnTouchUtilsListener;->downX:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    invoke-direct {p0, v3, v4}, Lcom/blankj/utilcode/util/TouchUtils$OnTouchUtilsListener;->resetTouch(II)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setPressed(Z)V

    :cond_0
    iget v1, p0, Lcom/blankj/utilcode/util/TouchUtils$OnTouchUtilsListener;->state:I

    if-eq v1, v0, :cond_2

    iget v1, p0, Lcom/blankj/utilcode/util/TouchUtils$OnTouchUtilsListener;->lastX:I

    sub-int v1, v3, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v2, p0, Lcom/blankj/utilcode/util/TouchUtils$OnTouchUtilsListener;->touchSlop:I

    if-ge v1, v2, :cond_1

    iget v1, p0, Lcom/blankj/utilcode/util/TouchUtils$OnTouchUtilsListener;->lastY:I

    sub-int v1, v4, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v2, p0, Lcom/blankj/utilcode/util/TouchUtils$OnTouchUtilsListener;->touchSlop:I

    if-ge v1, v2, :cond_1

    :goto_0
    return v0

    :cond_1
    iput v0, p0, Lcom/blankj/utilcode/util/TouchUtils$OnTouchUtilsListener;->state:I

    iget v1, p0, Lcom/blankj/utilcode/util/TouchUtils$OnTouchUtilsListener;->lastX:I

    sub-int v1, v3, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v2, p0, Lcom/blankj/utilcode/util/TouchUtils$OnTouchUtilsListener;->lastY:I

    sub-int v2, v4, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-lt v1, v2, :cond_4

    iget v1, p0, Lcom/blankj/utilcode/util/TouchUtils$OnTouchUtilsListener;->lastX:I

    sub-int v1, v3, v1

    if-gez v1, :cond_3

    iput v0, p0, Lcom/blankj/utilcode/util/TouchUtils$OnTouchUtilsListener;->direction:I

    :cond_2
    :goto_1
    iget v2, p0, Lcom/blankj/utilcode/util/TouchUtils$OnTouchUtilsListener;->direction:I

    iget v0, p0, Lcom/blankj/utilcode/util/TouchUtils$OnTouchUtilsListener;->lastX:I

    sub-int v5, v3, v0

    iget v0, p0, Lcom/blankj/utilcode/util/TouchUtils$OnTouchUtilsListener;->lastY:I

    sub-int v6, v4, v0

    iget v0, p0, Lcom/blankj/utilcode/util/TouchUtils$OnTouchUtilsListener;->downX:I

    sub-int v7, v3, v0

    iget v0, p0, Lcom/blankj/utilcode/util/TouchUtils$OnTouchUtilsListener;->downY:I

    sub-int v8, v4, v0

    move-object v0, p0

    move-object v1, p1

    move-object v9, p2

    invoke-virtual/range {v0 .. v9}, Lcom/blankj/utilcode/util/TouchUtils$OnTouchUtilsListener;->onMove(Landroid/view/View;IIIIIIILandroid/view/MotionEvent;)Z

    move-result v0

    iput v3, p0, Lcom/blankj/utilcode/util/TouchUtils$OnTouchUtilsListener;->lastX:I

    iput v4, p0, Lcom/blankj/utilcode/util/TouchUtils$OnTouchUtilsListener;->lastY:I

    goto :goto_0

    :cond_3
    const/4 v0, 0x4

    iput v0, p0, Lcom/blankj/utilcode/util/TouchUtils$OnTouchUtilsListener;->direction:I

    goto :goto_1

    :cond_4
    iget v0, p0, Lcom/blankj/utilcode/util/TouchUtils$OnTouchUtilsListener;->lastY:I

    sub-int v0, v4, v0

    if-gez v0, :cond_5

    const/4 v0, 0x2

    iput v0, p0, Lcom/blankj/utilcode/util/TouchUtils$OnTouchUtilsListener;->direction:I

    goto :goto_1

    :cond_5
    const/16 v0, 0x8

    iput v0, p0, Lcom/blankj/utilcode/util/TouchUtils$OnTouchUtilsListener;->direction:I

    goto :goto_1
.end method

.method public onUtilsStop(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 14

    const/4 v10, -0x1

    const/4 v1, 0x0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-int v3, v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    float-to-int v4, v0

    iget-object v0, p0, Lcom/blankj/utilcode/util/TouchUtils$OnTouchUtilsListener;->velocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_3

    const/16 v2, 0x3e8

    iget v5, p0, Lcom/blankj/utilcode/util/TouchUtils$OnTouchUtilsListener;->maximumFlingVelocity:I

    int-to-float v5, v5

    invoke-virtual {v0, v2, v5}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    iget-object v0, p0, Lcom/blankj/utilcode/util/TouchUtils$OnTouchUtilsListener;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v0

    float-to-int v0, v0

    iget-object v2, p0, Lcom/blankj/utilcode/util/TouchUtils$OnTouchUtilsListener;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v2

    float-to-int v2, v2

    iget-object v5, p0, Lcom/blankj/utilcode/util/TouchUtils$OnTouchUtilsListener;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v5}, Landroid/view/VelocityTracker;->recycle()V

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v5

    iget v6, p0, Lcom/blankj/utilcode/util/TouchUtils$OnTouchUtilsListener;->minimumFlingVelocity:I

    if-ge v5, v6, :cond_0

    move v0, v1

    :cond_0
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v5

    iget v6, p0, Lcom/blankj/utilcode/util/TouchUtils$OnTouchUtilsListener;->minimumFlingVelocity:I

    if-ge v5, v6, :cond_1

    move v2, v1

    :cond_1
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/blankj/utilcode/util/TouchUtils$OnTouchUtilsListener;->velocityTracker:Landroid/view/VelocityTracker;

    move v8, v2

    move v7, v0

    :goto_0
    invoke-virtual {p1, v1}, Landroid/view/View;->setPressed(Z)V

    iget v2, p0, Lcom/blankj/utilcode/util/TouchUtils$OnTouchUtilsListener;->direction:I

    iget v0, p0, Lcom/blankj/utilcode/util/TouchUtils$OnTouchUtilsListener;->downX:I

    sub-int v5, v3, v0

    iget v0, p0, Lcom/blankj/utilcode/util/TouchUtils$OnTouchUtilsListener;->downY:I

    sub-int v6, v4, v0

    move-object v0, p0

    move-object v1, p1

    move-object v9, p2

    invoke-virtual/range {v0 .. v9}, Lcom/blankj/utilcode/util/TouchUtils$OnTouchUtilsListener;->onStop(Landroid/view/View;IIIIIIILandroid/view/MotionEvent;)Z

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    iget v1, p0, Lcom/blankj/utilcode/util/TouchUtils$OnTouchUtilsListener;->state:I

    if-nez v1, :cond_2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x3e8

    cmp-long v1, v2, v4

    if-gtz v1, :cond_4

    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    :cond_2
    :goto_1
    invoke-direct {p0, v10, v10}, Lcom/blankj/utilcode/util/TouchUtils$OnTouchUtilsListener;->resetTouch(II)V

    return v0

    :cond_3
    move v8, v1

    move v7, v1

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->performLongClick()Z

    goto :goto_1
.end method
