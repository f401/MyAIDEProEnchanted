.class public Landroidj/support/v4/widget/ContentLoadingProgressBar;
.super Landroid/widget/ProgressBar;


# static fields
.field private static final MIN_DELAY:I = 0x1f4

.field private static final MIN_SHOW_TIME:I = 0x1f4


# instance fields
.field private final mDelayedHide:Ljava/lang/Runnable;

.field private final mDelayedShow:Ljava/lang/Runnable;

.field mDismissed:Z

.field mPostedHide:Z

.field mPostedShow:Z

.field mStartTime:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidj/support/v4/widget/ContentLoadingProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2, v2}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroidj/support/v4/widget/ContentLoadingProgressBar;->mStartTime:J

    iput-boolean v2, p0, Landroidj/support/v4/widget/ContentLoadingProgressBar;->mPostedHide:Z

    iput-boolean v2, p0, Landroidj/support/v4/widget/ContentLoadingProgressBar;->mPostedShow:Z

    iput-boolean v2, p0, Landroidj/support/v4/widget/ContentLoadingProgressBar;->mDismissed:Z

    new-instance v0, Landroidj/support/v4/widget/ContentLoadingProgressBar$1;

    invoke-direct {v0, p0}, Landroidj/support/v4/widget/ContentLoadingProgressBar$1;-><init>(Landroidj/support/v4/widget/ContentLoadingProgressBar;)V

    iput-object v0, p0, Landroidj/support/v4/widget/ContentLoadingProgressBar;->mDelayedHide:Ljava/lang/Runnable;

    new-instance v0, Landroidj/support/v4/widget/ContentLoadingProgressBar$2;

    invoke-direct {v0, p0}, Landroidj/support/v4/widget/ContentLoadingProgressBar$2;-><init>(Landroidj/support/v4/widget/ContentLoadingProgressBar;)V

    iput-object v0, p0, Landroidj/support/v4/widget/ContentLoadingProgressBar;->mDelayedShow:Ljava/lang/Runnable;

    return-void
.end method

.method private removeCallbacks()V
    .registers 2

    iget-object v0, p0, Landroidj/support/v4/widget/ContentLoadingProgressBar;->mDelayedHide:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroidj/support/v4/widget/ContentLoadingProgressBar;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Landroidj/support/v4/widget/ContentLoadingProgressBar;->mDelayedShow:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroidj/support/v4/widget/ContentLoadingProgressBar;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public hide()V
    .registers 11

    const-wide/16 v8, 0x1f4

    const/4 v6, 0x1

    iput-boolean v6, p0, Landroidj/support/v4/widget/ContentLoadingProgressBar;->mDismissed:Z

    iget-object v0, p0, Landroidj/support/v4/widget/ContentLoadingProgressBar;->mDelayedShow:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroidj/support/v4/widget/ContentLoadingProgressBar;->removeCallbacks(Ljava/lang/Runnable;)Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Landroidj/support/v4/widget/ContentLoadingProgressBar;->mStartTime:J

    sub-long/2addr v0, v2

    cmp-long v2, v0, v8

    if-gez v2, :cond_1d

    iget-wide v2, p0, Landroidj/support/v4/widget/ContentLoadingProgressBar;->mStartTime:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_23

    :cond_1d
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroidj/support/v4/widget/ContentLoadingProgressBar;->setVisibility(I)V

    :cond_22
    :goto_22
    return-void

    :cond_23
    iget-boolean v2, p0, Landroidj/support/v4/widget/ContentLoadingProgressBar;->mPostedHide:Z

    if-nez v2, :cond_22

    iget-object v2, p0, Landroidj/support/v4/widget/ContentLoadingProgressBar;->mDelayedHide:Ljava/lang/Runnable;

    sub-long v0, v8, v0

    invoke-virtual {p0, v2, v0, v1}, Landroidj/support/v4/widget/ContentLoadingProgressBar;->postDelayed(Ljava/lang/Runnable;J)Z

    iput-boolean v6, p0, Landroidj/support/v4/widget/ContentLoadingProgressBar;->mPostedHide:Z

    goto :goto_22
.end method

.method public onAttachedToWindow()V
    .registers 1

    invoke-super {p0}, Landroid/widget/ProgressBar;->onAttachedToWindow()V

    invoke-direct {p0}, Landroidj/support/v4/widget/ContentLoadingProgressBar;->removeCallbacks()V

    return-void
.end method

.method public onDetachedFromWindow()V
    .registers 1

    invoke-super {p0}, Landroid/widget/ProgressBar;->onDetachedFromWindow()V

    invoke-direct {p0}, Landroidj/support/v4/widget/ContentLoadingProgressBar;->removeCallbacks()V

    return-void
.end method

.method public show()V
    .registers 5

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroidj/support/v4/widget/ContentLoadingProgressBar;->mStartTime:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidj/support/v4/widget/ContentLoadingProgressBar;->mDismissed:Z

    iget-object v0, p0, Landroidj/support/v4/widget/ContentLoadingProgressBar;->mDelayedHide:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroidj/support/v4/widget/ContentLoadingProgressBar;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-boolean v0, p0, Landroidj/support/v4/widget/ContentLoadingProgressBar;->mPostedShow:Z

    if-nez v0, :cond_1a

    iget-object v0, p0, Landroidj/support/v4/widget/ContentLoadingProgressBar;->mDelayedShow:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {p0, v0, v2, v3}, Landroidj/support/v4/widget/ContentLoadingProgressBar;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidj/support/v4/widget/ContentLoadingProgressBar;->mPostedShow:Z

    :cond_1a
    return-void
.end method
