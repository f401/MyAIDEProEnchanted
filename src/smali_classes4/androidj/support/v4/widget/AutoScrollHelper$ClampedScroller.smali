.class Landroidj/support/v4/widget/AutoScrollHelper$ClampedScroller;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidj/support/v4/widget/AutoScrollHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ClampedScroller"
.end annotation


# instance fields
.field private mDeltaTime:J

.field private mDeltaX:I

.field private mDeltaY:I

.field private mEffectiveRampDown:I

.field private mRampDownDuration:I

.field private mRampUpDuration:I

.field private mStartTime:J

.field private mStopTime:J

.field private mStopValue:F

.field private mTargetVelocityX:F

.field private mTargetVelocityY:F


# direct methods
.method constructor <init>()V
    .registers 4

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Landroidj/support/v4/widget/AutoScrollHelper$ClampedScroller;->mStartTime:J

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroidj/support/v4/widget/AutoScrollHelper$ClampedScroller;->mStopTime:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroidj/support/v4/widget/AutoScrollHelper$ClampedScroller;->mDeltaTime:J

    iput v2, p0, Landroidj/support/v4/widget/AutoScrollHelper$ClampedScroller;->mDeltaX:I

    iput v2, p0, Landroidj/support/v4/widget/AutoScrollHelper$ClampedScroller;->mDeltaY:I

    return-void
.end method

.method private getValueAt(J)F
    .registers 10

    const/high16 v6, 0x3f800000  # 1.0f

    const/4 v0, 0x0

    iget-wide v2, p0, Landroidj/support/v4/widget/AutoScrollHelper$ClampedScroller;->mStartTime:J

    cmp-long v1, p1, v2

    if-gez v1, :cond_a

    :goto_9
    return v0

    :cond_a
    iget-wide v2, p0, Landroidj/support/v4/widget/AutoScrollHelper$ClampedScroller;->mStopTime:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-ltz v1, :cond_18

    iget-wide v2, p0, Landroidj/support/v4/widget/AutoScrollHelper$ClampedScroller;->mStopTime:J

    cmp-long v1, p1, v2

    if-gez v1, :cond_29

    :cond_18
    iget-wide v2, p0, Landroidj/support/v4/widget/AutoScrollHelper$ClampedScroller;->mStartTime:J

    sub-long v2, p1, v2

    long-to-float v1, v2

    iget v2, p0, Landroidj/support/v4/widget/AutoScrollHelper$ClampedScroller;->mRampUpDuration:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-static {v1, v0, v6}, Landroidj/support/v4/widget/AutoScrollHelper;->constrain(FFF)F

    move-result v0

    const/high16 v1, 0x3f000000  # 0.5f

    mul-float/2addr v0, v1

    goto :goto_9

    :cond_29
    iget-wide v2, p0, Landroidj/support/v4/widget/AutoScrollHelper$ClampedScroller;->mStopTime:J

    iget v1, p0, Landroidj/support/v4/widget/AutoScrollHelper$ClampedScroller;->mStopValue:F

    iget v4, p0, Landroidj/support/v4/widget/AutoScrollHelper$ClampedScroller;->mStopValue:F

    sub-long v2, p1, v2

    long-to-float v2, v2

    iget v3, p0, Landroidj/support/v4/widget/AutoScrollHelper$ClampedScroller;->mEffectiveRampDown:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-static {v2, v0, v6}, Landroidj/support/v4/widget/AutoScrollHelper;->constrain(FFF)F

    move-result v0

    mul-float/2addr v0, v4

    sub-float v1, v6, v1

    add-float/2addr v0, v1

    goto :goto_9
.end method

.method private interpolateValue(F)F
    .registers 4

    const/high16 v0, -0x3f800000  # -4.0f

    mul-float/2addr v0, p1

    mul-float/2addr v0, p1

    const/high16 v1, 0x40800000  # 4.0f

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    return v0
.end method


# virtual methods
.method public computeScrollDelta()V
    .registers 7

    iget-wide v0, p0, Landroidj/support/v4/widget/AutoScrollHelper$ClampedScroller;->mDeltaTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_10

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Cannot compute scroll delta before calling start()"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Landroidj/support/v4/widget/AutoScrollHelper$ClampedScroller;->getValueAt(J)F

    move-result v2

    invoke-direct {p0, v2}, Landroidj/support/v4/widget/AutoScrollHelper$ClampedScroller;->interpolateValue(F)F

    move-result v2

    iget-wide v4, p0, Landroidj/support/v4/widget/AutoScrollHelper$ClampedScroller;->mDeltaTime:J

    sub-long v4, v0, v4

    iput-wide v0, p0, Landroidj/support/v4/widget/AutoScrollHelper$ClampedScroller;->mDeltaTime:J

    long-to-float v0, v4

    mul-float/2addr v0, v2

    iget v1, p0, Landroidj/support/v4/widget/AutoScrollHelper$ClampedScroller;->mTargetVelocityX:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Landroidj/support/v4/widget/AutoScrollHelper$ClampedScroller;->mDeltaX:I

    long-to-float v0, v4

    mul-float/2addr v0, v2

    iget v1, p0, Landroidj/support/v4/widget/AutoScrollHelper$ClampedScroller;->mTargetVelocityY:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Landroidj/support/v4/widget/AutoScrollHelper$ClampedScroller;->mDeltaY:I

    return-void
.end method

.method public getDeltaX()I
    .registers 2

    iget v0, p0, Landroidj/support/v4/widget/AutoScrollHelper$ClampedScroller;->mDeltaX:I

    return v0
.end method

.method public getDeltaY()I
    .registers 2

    iget v0, p0, Landroidj/support/v4/widget/AutoScrollHelper$ClampedScroller;->mDeltaY:I

    return v0
.end method

.method public getHorizontalDirection()I
    .registers 3

    iget v0, p0, Landroidj/support/v4/widget/AutoScrollHelper$ClampedScroller;->mTargetVelocityX:F

    iget v1, p0, Landroidj/support/v4/widget/AutoScrollHelper$ClampedScroller;->mTargetVelocityX:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    div-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public getVerticalDirection()I
    .registers 3

    iget v0, p0, Landroidj/support/v4/widget/AutoScrollHelper$ClampedScroller;->mTargetVelocityY:F

    iget v1, p0, Landroidj/support/v4/widget/AutoScrollHelper$ClampedScroller;->mTargetVelocityY:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    div-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public isFinished()Z
    .registers 7

    iget-wide v0, p0, Landroidj/support/v4/widget/AutoScrollHelper$ClampedScroller;->mStopTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_18

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Landroidj/support/v4/widget/AutoScrollHelper$ClampedScroller;->mStopTime:J

    iget v4, p0, Landroidj/support/v4/widget/AutoScrollHelper$ClampedScroller;->mEffectiveRampDown:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-lez v0, :cond_18

    const/4 v0, 0x1

    :goto_17
    return v0

    :cond_18
    const/4 v0, 0x0

    goto :goto_17
.end method

.method public requestStop()V
    .registers 6

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Landroidj/support/v4/widget/AutoScrollHelper$ClampedScroller;->mStartTime:J

    sub-long v2, v0, v2

    long-to-int v2, v2

    const/4 v3, 0x0

    iget v4, p0, Landroidj/support/v4/widget/AutoScrollHelper$ClampedScroller;->mRampDownDuration:I

    invoke-static {v2, v3, v4}, Landroidj/support/v4/widget/AutoScrollHelper;->constrain(III)I

    move-result v2

    iput v2, p0, Landroidj/support/v4/widget/AutoScrollHelper$ClampedScroller;->mEffectiveRampDown:I

    invoke-direct {p0, v0, v1}, Landroidj/support/v4/widget/AutoScrollHelper$ClampedScroller;->getValueAt(J)F

    move-result v2

    iput v2, p0, Landroidj/support/v4/widget/AutoScrollHelper$ClampedScroller;->mStopValue:F

    iput-wide v0, p0, Landroidj/support/v4/widget/AutoScrollHelper$ClampedScroller;->mStopTime:J

    return-void
.end method

.method public setRampDownDuration(I)V
    .registers 2

    iput p1, p0, Landroidj/support/v4/widget/AutoScrollHelper$ClampedScroller;->mRampDownDuration:I

    return-void
.end method

.method public setRampUpDuration(I)V
    .registers 2

    iput p1, p0, Landroidj/support/v4/widget/AutoScrollHelper$ClampedScroller;->mRampUpDuration:I

    return-void
.end method

.method public setTargetVelocity(FF)V
    .registers 3

    iput p1, p0, Landroidj/support/v4/widget/AutoScrollHelper$ClampedScroller;->mTargetVelocityX:F

    iput p2, p0, Landroidj/support/v4/widget/AutoScrollHelper$ClampedScroller;->mTargetVelocityY:F

    return-void
.end method

.method public start()V
    .registers 4

    const/4 v2, 0x0

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroidj/support/v4/widget/AutoScrollHelper$ClampedScroller;->mStartTime:J

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroidj/support/v4/widget/AutoScrollHelper$ClampedScroller;->mStopTime:J

    iget-wide v0, p0, Landroidj/support/v4/widget/AutoScrollHelper$ClampedScroller;->mStartTime:J

    iput-wide v0, p0, Landroidj/support/v4/widget/AutoScrollHelper$ClampedScroller;->mDeltaTime:J

    const/high16 v0, 0x3f000000  # 0.5f

    iput v0, p0, Landroidj/support/v4/widget/AutoScrollHelper$ClampedScroller;->mStopValue:F

    iput v2, p0, Landroidj/support/v4/widget/AutoScrollHelper$ClampedScroller;->mDeltaX:I

    iput v2, p0, Landroidj/support/v4/widget/AutoScrollHelper$ClampedScroller;->mDeltaY:I

    return-void
.end method
