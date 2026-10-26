.class Lcom/termux/view/TerminalView$1;
.super Ljava/lang/Object;
.source "TerminalView.java"

# interfaces
.implements Lcom/termux/view/GestureAndScaleRecognizer$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/termux/view/TerminalView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field scrolledWithFinger:Z

.field final this$0:Lcom/termux/view/TerminalView;


# direct methods
.method constructor <init>(Lcom/termux/view/TerminalView;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/termux/view/TerminalView$1;->this$0:Lcom/termux/view/TerminalView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onDown(FF)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;FF)Z
    .locals 11

    const/4 v10, 0x1

    const/high16 v3, 0x3e800000    # 0.25f

    const/4 v1, 0x0

    .line 145
    iget-object v0, p0, Lcom/termux/view/TerminalView$1;->this$0:Lcom/termux/view/TerminalView;

    iget-object v0, v0, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/termux/view/TerminalView$1;->this$0:Lcom/termux/view/TerminalView;

    iget-boolean v0, v0, Lcom/termux/view/TerminalView;->mIsSelectingText:Z

    if-eqz v0, :cond_1

    .line 157
    :cond_0
    :goto_0
    return v10

    .line 147
    :cond_1
    iget-object v0, p0, Lcom/termux/view/TerminalView$1;->this$0:Lcom/termux/view/TerminalView;

    iget-object v0, v0, Lcom/termux/view/TerminalView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/termux/view/TerminalView$1;->this$0:Lcom/termux/view/TerminalView;

    iget-object v0, v0, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    invoke-virtual {v0}, Lcom/termux/terminal/TerminalEmulator;->isMouseTrackingActive()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 152
    iget-object v0, p0, Lcom/termux/view/TerminalView$1;->this$0:Lcom/termux/view/TerminalView;

    iget-object v0, v0, Lcom/termux/view/TerminalView;->mScroller:Landroid/widget/Scroller;

    mul-float v2, p3, v3

    float-to-int v2, v2

    neg-int v4, v2

    iget-object v2, p0, Lcom/termux/view/TerminalView$1;->this$0:Lcom/termux/view/TerminalView;

    iget-object v2, v2, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    iget v2, v2, Lcom/termux/terminal/TerminalEmulator;->mRows:I

    neg-int v2, v2

    div-int/lit8 v7, v2, 0x2

    iget-object v2, p0, Lcom/termux/view/TerminalView$1;->this$0:Lcom/termux/view/TerminalView;

    iget-object v2, v2, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    iget v2, v2, Lcom/termux/terminal/TerminalEmulator;->mRows:I

    div-int/lit8 v8, v2, 0x2

    move v2, v1

    move v3, v1

    move v5, v1

    move v6, v1

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 157
    :goto_1
    iget-object v0, p0, Lcom/termux/view/TerminalView$1;->this$0:Lcom/termux/view/TerminalView;

    new-instance v1, Lcom/termux/view/TerminalView$1$1;

    invoke-direct {v1, p0, v9, p1}, Lcom/termux/view/TerminalView$1$1;-><init>(Lcom/termux/view/TerminalView$1;ZLandroid/view/MotionEvent;)V

    invoke-virtual {v0, v1}, Lcom/termux/view/TerminalView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 154
    :cond_2
    iget-object v0, p0, Lcom/termux/view/TerminalView$1;->this$0:Lcom/termux/view/TerminalView;

    iget-object v0, v0, Lcom/termux/view/TerminalView;->mScroller:Landroid/widget/Scroller;

    iget-object v2, p0, Lcom/termux/view/TerminalView$1;->this$0:Lcom/termux/view/TerminalView;

    iget v2, v2, Lcom/termux/view/TerminalView;->mTopRow:I

    mul-float/2addr v3, p3

    float-to-int v3, v3

    neg-int v4, v3

    iget-object v3, p0, Lcom/termux/view/TerminalView$1;->this$0:Lcom/termux/view/TerminalView;

    iget-object v3, v3, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    invoke-virtual {v3}, Lcom/termux/terminal/TerminalEmulator;->getScreen()Lcom/termux/terminal/TerminalBuffer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/termux/terminal/TerminalBuffer;->getActiveTranscriptRows()I

    move-result v3

    neg-int v7, v3

    move v3, v1

    move v5, v1

    move v6, v1

    move v8, v1

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    goto :goto_1
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 2

    .line 192
    iget-object v0, p0, Lcom/termux/view/TerminalView$1;->this$0:Lcom/termux/view/TerminalView;

    iget-object v0, v0, Lcom/termux/view/TerminalView;->mGestureRecognizer:Lcom/termux/view/GestureAndScaleRecognizer;

    invoke-virtual {v0}, Lcom/termux/view/GestureAndScaleRecognizer;->isInProgress()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 196
    :cond_0
    :goto_0
    return-void

    .line 193
    :cond_1
    iget-object v0, p0, Lcom/termux/view/TerminalView$1;->this$0:Lcom/termux/view/TerminalView;

    iget-object v0, v0, Lcom/termux/view/TerminalView;->mClient:Lcom/termux/view/TerminalViewClient;

    invoke-interface {v0, p1}, Lcom/termux/view/TerminalViewClient;->onLongPress(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/termux/view/TerminalView$1;->this$0:Lcom/termux/view/TerminalView;

    iget-boolean v0, v0, Lcom/termux/view/TerminalView;->mIsSelectingText:Z

    if-nez v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/termux/view/TerminalView$1;->this$0:Lcom/termux/view/TerminalView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/termux/view/TerminalView;->performHapticFeedback(I)Z

    .line 196
    iget-object v0, p0, Lcom/termux/view/TerminalView$1;->this$0:Lcom/termux/view/TerminalView;

    invoke-virtual {v0, p1}, Lcom/termux/view/TerminalView;->toggleSelectingText(Landroid/view/MotionEvent;)V

    goto :goto_0
.end method

.method public onScale(FFF)Z
    .locals 3

    .line 137
    iget-object v0, p0, Lcom/termux/view/TerminalView$1;->this$0:Lcom/termux/view/TerminalView;

    iget-object v0, v0, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/termux/view/TerminalView$1;->this$0:Lcom/termux/view/TerminalView;

    iget-boolean v0, v0, Lcom/termux/view/TerminalView;->mIsSelectingText:Z

    if-eqz v0, :cond_1

    .line 139
    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 138
    :cond_1
    iget-object v0, p0, Lcom/termux/view/TerminalView$1;->this$0:Lcom/termux/view/TerminalView;

    iget v1, v0, Lcom/termux/view/TerminalView;->mScaleFactor:F

    mul-float/2addr v1, p3

    iput v1, v0, Lcom/termux/view/TerminalView;->mScaleFactor:F

    .line 139
    iget-object v0, p0, Lcom/termux/view/TerminalView$1;->this$0:Lcom/termux/view/TerminalView;

    iget-object v1, v0, Lcom/termux/view/TerminalView;->mClient:Lcom/termux/view/TerminalViewClient;

    iget-object v2, p0, Lcom/termux/view/TerminalView$1;->this$0:Lcom/termux/view/TerminalView;

    iget v2, v2, Lcom/termux/view/TerminalView;->mScaleFactor:F

    invoke-interface {v1, v2}, Lcom/termux/view/TerminalViewClient;->onScale(F)F

    move-result v1

    iput v1, v0, Lcom/termux/view/TerminalView;->mScaleFactor:F

    goto :goto_0
.end method

.method public onScroll(Landroid/view/MotionEvent;FF)Z
    .locals 5

    const/4 v4, 0x1

    .line 118
    iget-object v0, p0, Lcom/termux/view/TerminalView$1;->this$0:Lcom/termux/view/TerminalView;

    iget-object v0, v0, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/termux/view/TerminalView$1;->this$0:Lcom/termux/view/TerminalView;

    iget-boolean v0, v0, Lcom/termux/view/TerminalView;->mIsSelectingText:Z

    if-eqz v0, :cond_1

    .line 130
    :cond_0
    :goto_0
    return v4

    .line 119
    :cond_1
    iget-object v0, p0, Lcom/termux/view/TerminalView$1;->this$0:Lcom/termux/view/TerminalView;

    iget-object v0, v0, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    invoke-virtual {v0}, Lcom/termux/terminal/TerminalEmulator;->isMouseTrackingActive()Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x2002

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 124
    iget-object v0, p0, Lcom/termux/view/TerminalView$1;->this$0:Lcom/termux/view/TerminalView;

    const/16 v1, 0x20

    invoke-virtual {v0, p1, v1, v4}, Lcom/termux/view/TerminalView;->sendMouseEventCode(Landroid/view/MotionEvent;IZ)V

    goto :goto_0

    .line 126
    :cond_2
    iput-boolean v4, p0, Lcom/termux/view/TerminalView$1;->scrolledWithFinger:Z

    .line 127
    iget-object v0, p0, Lcom/termux/view/TerminalView$1;->this$0:Lcom/termux/view/TerminalView;

    iget v0, v0, Lcom/termux/view/TerminalView;->mScrollRemainder:F

    add-float/2addr v0, p3

    .line 128
    iget-object v1, p0, Lcom/termux/view/TerminalView$1;->this$0:Lcom/termux/view/TerminalView;

    iget-object v1, v1, Lcom/termux/view/TerminalView;->mRenderer:Lcom/termux/view/TerminalRenderer;

    iget v1, v1, Lcom/termux/view/TerminalRenderer;->mFontLineSpacing:I

    int-to-float v1, v1

    div-float v1, v0, v1

    float-to-int v1, v1

    .line 129
    iget-object v2, p0, Lcom/termux/view/TerminalView$1;->this$0:Lcom/termux/view/TerminalView;

    iget-object v3, v2, Lcom/termux/view/TerminalView;->mRenderer:Lcom/termux/view/TerminalRenderer;

    iget v3, v3, Lcom/termux/view/TerminalRenderer;->mFontLineSpacing:I

    mul-int/2addr v3, v1

    int-to-float v3, v3

    sub-float/2addr v0, v3

    iput v0, v2, Lcom/termux/view/TerminalView;->mScrollRemainder:F

    .line 130
    iget-object v0, p0, Lcom/termux/view/TerminalView$1;->this$0:Lcom/termux/view/TerminalView;

    invoke-virtual {v0, p1, v1}, Lcom/termux/view/TerminalView;->doScroll(Landroid/view/MotionEvent;I)V

    goto :goto_0
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 3

    const/4 v0, 0x1

    .line 101
    iget-object v1, p0, Lcom/termux/view/TerminalView$1;->this$0:Lcom/termux/view/TerminalView;

    iget-object v1, v1, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    if-nez v1, :cond_0

    .line 109
    :goto_0
    return v0

    .line 102
    :cond_0
    iget-object v1, p0, Lcom/termux/view/TerminalView$1;->this$0:Lcom/termux/view/TerminalView;

    iget-boolean v1, v1, Lcom/termux/view/TerminalView;->mIsSelectingText:Z

    if-eqz v1, :cond_1

    .line 103
    iget-object v1, p0, Lcom/termux/view/TerminalView$1;->this$0:Lcom/termux/view/TerminalView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/termux/view/TerminalView;->toggleSelectingText(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 106
    :cond_1
    iget-object v1, p0, Lcom/termux/view/TerminalView$1;->this$0:Lcom/termux/view/TerminalView;

    invoke-virtual {v1}, Lcom/termux/view/TerminalView;->requestFocus()Z

    .line 107
    iget-object v1, p0, Lcom/termux/view/TerminalView$1;->this$0:Lcom/termux/view/TerminalView;

    iget-object v1, v1, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    invoke-virtual {v1}, Lcom/termux/terminal/TerminalEmulator;->isMouseTrackingActive()Z

    move-result v1

    if-nez v1, :cond_2

    .line 108
    const/16 v1, 0x2002

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 109
    iget-object v1, p0, Lcom/termux/view/TerminalView$1;->this$0:Lcom/termux/view/TerminalView;

    iget-object v1, v1, Lcom/termux/view/TerminalView;->mClient:Lcom/termux/view/TerminalViewClient;

    invoke-interface {v1, p1}, Lcom/termux/view/TerminalViewClient;->onSingleTapUp(Landroid/view/MotionEvent;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onUp(Landroid/view/MotionEvent;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 87
    iget-object v2, p0, Lcom/termux/view/TerminalView$1;->this$0:Lcom/termux/view/TerminalView;

    const/4 v3, 0x0

    iput v3, v2, Lcom/termux/view/TerminalView;->mScrollRemainder:F

    .line 88
    iget-object v2, p0, Lcom/termux/view/TerminalView$1;->this$0:Lcom/termux/view/TerminalView;

    iget-object v2, v2, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/termux/view/TerminalView$1;->this$0:Lcom/termux/view/TerminalView;

    iget-object v2, v2, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    invoke-virtual {v2}, Lcom/termux/terminal/TerminalEmulator;->isMouseTrackingActive()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/termux/view/TerminalView$1;->this$0:Lcom/termux/view/TerminalView;

    iget-boolean v2, v2, Lcom/termux/view/TerminalView;->mIsSelectingText:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/termux/view/TerminalView$1;->scrolledWithFinger:Z

    if-nez v2, :cond_0

    .line 91
    iget-object v2, p0, Lcom/termux/view/TerminalView$1;->this$0:Lcom/termux/view/TerminalView;

    invoke-virtual {v2, p1, v1, v0}, Lcom/termux/view/TerminalView;->sendMouseEventCode(Landroid/view/MotionEvent;IZ)V

    .line 92
    iget-object v2, p0, Lcom/termux/view/TerminalView$1;->this$0:Lcom/termux/view/TerminalView;

    invoke-virtual {v2, p1, v1, v1}, Lcom/termux/view/TerminalView;->sendMouseEventCode(Landroid/view/MotionEvent;IZ)V

    .line 95
    :goto_0
    return v0

    :cond_0
    iput-boolean v1, p0, Lcom/termux/view/TerminalView$1;->scrolledWithFinger:Z

    move v0, v1

    goto :goto_0
.end method
