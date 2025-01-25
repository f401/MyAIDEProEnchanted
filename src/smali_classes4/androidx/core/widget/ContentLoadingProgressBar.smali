.class public Landroidx/core/widget/ContentLoadingProgressBar;
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

    invoke-direct {p0, p1, v0}, Landroidx/core/widget/ContentLoadingProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2, v2}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroidx/core/widget/ContentLoadingProgressBar;->mStartTime:J

    iput-boolean v2, p0, Landroidx/core/widget/ContentLoadingProgressBar;->mPostedHide:Z

    iput-boolean v2, p0, Landroidx/core/widget/ContentLoadingProgressBar;->mPostedShow:Z

    iput-boolean v2, p0, Landroidx/core/widget/ContentLoadingProgressBar;->mDismissed:Z

    new-instance v0, Landroidx/core/widget/ContentLoadingProgressBar$1;

    invoke-direct {v0, p0}, Landroidx/core/widget/ContentLoadingProgressBar$1;-><init>(Landroidx/core/widget/ContentLoadingProgressBar;)V

    iput-object v0, p0, Landroidx/core/widget/ContentLoadingProgressBar;->mDelayedHide:Ljava/lang/Runnable;

    new-instance v0, Landroidx/core/widget/ContentLoadingProgressBar$2;

    invoke-direct {v0, p0}, Landroidx/core/widget/ContentLoadingProgressBar$2;-><init>(Landroidx/core/widget/ContentLoadingProgressBar;)V

    iput-object v0, p0, Landroidx/core/widget/ContentLoadingProgressBar;->mDelayedShow:Ljava/lang/Runnable;

    return-void
.end method

.method private removeCallbacks()V
    .registers 2

    iget-object v0, p0, Landroidx/core/widget/ContentLoadingProgressBar;->mDelayedHide:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroidx/core/widget/ContentLoadingProgressBar;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Landroidx/core/widget/ContentLoadingProgressBar;->mDelayedShow:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroidx/core/widget/ContentLoadingProgressBar;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public hide()V
    .registers 9

    const-wide/16 v6, 0x1f4

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_4
    iput-boolean v0, p0, Landroidx/core/widget/ContentLoadingProgressBar;->mDismissed:Z

    iget-object v0, p0, Landroidx/core/widget/ContentLoadingProgressBar;->mDelayedShow:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroidx/core/widget/ContentLoadingProgressBar;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/core/widget/ContentLoadingProgressBar;->mPostedShow:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Landroidx/core/widget/ContentLoadingProgressBar;->mStartTime:J

    sub-long/2addr v0, v2

    cmp-long v2, v0, v6

    if-gez v2, :cond_21

    iget-wide v2, p0, Landroidx/core/widget/ContentLoadingProgressBar;->mStartTime:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_28

    :cond_21
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroidx/core/widget/ContentLoadingProgressBar;->setVisibility(I)V
    :try_end_26
    .catchall {:try_start_4 .. :try_end_26} :catchall_37

    :cond_26
    :goto_26
    monitor-exit p0

    return-void

    :cond_28
    :try_start_28
    iget-boolean v2, p0, Landroidx/core/widget/ContentLoadingProgressBar;->mPostedHide:Z

    if-nez v2, :cond_26

    iget-object v2, p0, Landroidx/core/widget/ContentLoadingProgressBar;->mDelayedHide:Ljava/lang/Runnable;

    sub-long v0, v6, v0

    invoke-virtual {p0, v2, v0, v1}, Landroidx/core/widget/ContentLoadingProgressBar;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/core/widget/ContentLoadingProgressBar;->mPostedHide:Z
    :try_end_36
    .catchall {:try_start_28 .. :try_end_36} :catchall_37

    goto :goto_26

    :catchall_37
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onAttachedToWindow()V
    .registers 1

    invoke-super {p0}, Landroid/widget/ProgressBar;->onAttachedToWindow()V

    invoke-direct {p0}, Landroidx/core/widget/ContentLoadingProgressBar;->removeCallbacks()V

    return-void
.end method

.method public onDetachedFromWindow()V
    .registers 1

    invoke-super {p0}, Landroid/widget/ProgressBar;->onDetachedFromWindow()V

    invoke-direct {p0}, Landroidx/core/widget/ContentLoadingProgressBar;->removeCallbacks()V

    return-void
.end method

.method public show()V
    .registers 5

    monitor-enter p0

    const-wide/16 v0, -0x1

    :try_start_3
    iput-wide v0, p0, Landroidx/core/widget/ContentLoadingProgressBar;->mStartTime:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/core/widget/ContentLoadingProgressBar;->mDismissed:Z

    iget-object v0, p0, Landroidx/core/widget/ContentLoadingProgressBar;->mDelayedHide:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroidx/core/widget/ContentLoadingProgressBar;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/core/widget/ContentLoadingProgressBar;->mPostedHide:Z

    iget-boolean v0, p0, Landroidx/core/widget/ContentLoadingProgressBar;->mPostedShow:Z

    if-nez v0, :cond_1e

    iget-object v0, p0, Landroidx/core/widget/ContentLoadingProgressBar;->mDelayedShow:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {p0, v0, v2, v3}, Landroidx/core/widget/ContentLoadingProgressBar;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/core/widget/ContentLoadingProgressBar;->mPostedShow:Z
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_20

    :cond_1e
    monitor-exit p0

    return-void

    :catchall_20
    move-exception v0

    monitor-exit p0

    throw v0
.end method
