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
    .registers 2

    .line 81
    iput-object p1, p0, Lcom/termux/view/TerminalView$1;->this$0:Lcom/termux/view/TerminalView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public onDown(FF)Z
    .registers 3

    const/4 p1, 0x0

    return p1
.end method

.method public onFling(Landroid/view/MotionEvent;FF)Z
    .registers 16

    .line 145
    iget-object p2, p0, Lcom/termux/view/TerminalView$1;->this$0:Lcom/termux/view/TerminalView;

    iget-object p2, p2, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    const/4 v0, 0x1

    if-eqz p2, :cond_72

    iget-object p2, p0, Lcom/termux/view/TerminalView$1;->this$0:Lcom/termux/view/TerminalView;

    iget-boolean p2, p2, Lcom/termux/view/TerminalView;->mIsSelectingText:Z

    if-eqz p2, :cond_e

    goto :goto_72

    .line 147
    :cond_e
    iget-object p2, p0, Lcom/termux/view/TerminalView$1;->this$0:Lcom/termux/view/TerminalView;

    iget-object p2, p2, Lcom/termux/view/TerminalView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {p2}, Landroid/widget/Scroller;->isFinished()Z

    move-result p2

    if-nez p2, :cond_19

    return v0

    .line 149
    :cond_19
    iget-object p2, p0, Lcom/termux/view/TerminalView$1;->this$0:Lcom/termux/view/TerminalView;

    iget-object p2, p2, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    invoke-virtual {p2}, Lcom/termux/terminal/TerminalEmulator;->isMouseTrackingActive()Z

    move-result p2

    const/high16 v1, 0x3e800000  # 0.25f

    if-eqz p2, :cond_47

    .line 152
    iget-object v2, p0, Lcom/termux/view/TerminalView$1;->this$0:Lcom/termux/view/TerminalView;

    iget-object v3, v2, Lcom/termux/view/TerminalView;->mScroller:Landroid/widget/Scroller;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    mul-float p3, p3, v1

    float-to-int p3, p3

    neg-int v7, p3

    const/4 v8, 0x0

    const/4 v9, 0x0

    iget-object p3, p0, Lcom/termux/view/TerminalView$1;->this$0:Lcom/termux/view/TerminalView;

    iget-object p3, p3, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    iget p3, p3, Lcom/termux/terminal/TerminalEmulator;->mRows:I

    neg-int p3, p3

    div-int/lit8 v10, p3, 0x2

    iget-object p3, p0, Lcom/termux/view/TerminalView$1;->this$0:Lcom/termux/view/TerminalView;

    iget-object p3, p3, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    iget p3, p3, Lcom/termux/terminal/TerminalEmulator;->mRows:I

    div-int/lit8 v11, p3, 0x2

    invoke-virtual/range {v3 .. v11}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    goto :goto_68

    .line 154
    :cond_47
    iget-object v2, p0, Lcom/termux/view/TerminalView$1;->this$0:Lcom/termux/view/TerminalView;

    iget-object v3, v2, Lcom/termux/view/TerminalView;->mScroller:Landroid/widget/Scroller;

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/termux/view/TerminalView$1;->this$0:Lcom/termux/view/TerminalView;

    iget v5, v2, Lcom/termux/view/TerminalView;->mTopRow:I

    const/4 v6, 0x0

    mul-float p3, p3, v1

    float-to-int p3, p3

    neg-int v7, p3

    const/4 v8, 0x0

    const/4 v9, 0x0

    iget-object p3, p0, Lcom/termux/view/TerminalView$1;->this$0:Lcom/termux/view/TerminalView;

    iget-object p3, p3, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    invoke-virtual {p3}, Lcom/termux/terminal/TerminalEmulator;->getScreen()Lcom/termux/terminal/TerminalBuffer;

    move-result-object p3

    invoke-virtual {p3}, Lcom/termux/terminal/TerminalBuffer;->getActiveTranscriptRows()I

    move-result p3

    neg-int v10, p3

    const/4 v11, 0x0

    invoke-virtual/range {v3 .. v11}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 157
    :goto_68
    iget-object p3, p0, Lcom/termux/view/TerminalView$1;->this$0:Lcom/termux/view/TerminalView;

    new-instance v1, Lcom/termux/view/TerminalView$1$1;

    invoke-direct {v1, p0, p2, p1}, Lcom/termux/view/TerminalView$1$1;-><init>(Lcom/termux/view/TerminalView$1;ZLandroid/view/MotionEvent;)V

    invoke-virtual {p3, v1}, Lcom/termux/view/TerminalView;->post(Ljava/lang/Runnable;)Z

    :cond_72
    :goto_72
    return v0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .registers 4

    .line 192
    iget-object v0, p0, Lcom/termux/view/TerminalView$1;->this$0:Lcom/termux/view/TerminalView;

    iget-object v0, v0, Lcom/termux/view/TerminalView;->mGestureRecognizer:Lcom/termux/view/GestureAndScaleRecognizer;

    invoke-virtual {v0}, Lcom/termux/view/GestureAndScaleRecognizer;->isInProgress()Z

    move-result v0

    if-eqz v0, :cond_b

    return-void

    .line 193
    :cond_b
    iget-object v0, p0, Lcom/termux/view/TerminalView$1;->this$0:Lcom/termux/view/TerminalView;

    iget-object v0, v0, Lcom/termux/view/TerminalView;->mClient:Lcom/termux/view/TerminalViewClient;

    invoke-interface {v0, p1}, Lcom/termux/view/TerminalViewClient;->onLongPress(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_16

    return-void

    .line 194
    :cond_16
    iget-object v0, p0, Lcom/termux/view/TerminalView$1;->this$0:Lcom/termux/view/TerminalView;

    iget-boolean v0, v0, Lcom/termux/view/TerminalView;->mIsSelectingText:Z

    if-nez v0, :cond_27

    .line 195
    iget-object v0, p0, Lcom/termux/view/TerminalView$1;->this$0:Lcom/termux/view/TerminalView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/termux/view/TerminalView;->performHapticFeedback(I)Z

    .line 196
    iget-object v0, p0, Lcom/termux/view/TerminalView$1;->this$0:Lcom/termux/view/TerminalView;

    invoke-virtual {v0, p1}, Lcom/termux/view/TerminalView;->toggleSelectingText(Landroid/view/MotionEvent;)V

    :cond_27
    return-void
.end method

.method public onScale(FFF)Z
    .registers 4

    .line 137
    iget-object p1, p0, Lcom/termux/view/TerminalView$1;->this$0:Lcom/termux/view/TerminalView;

    iget-object p1, p1, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    if-eqz p1, :cond_23

    iget-object p1, p0, Lcom/termux/view/TerminalView$1;->this$0:Lcom/termux/view/TerminalView;

    iget-boolean p1, p1, Lcom/termux/view/TerminalView;->mIsSelectingText:Z

    if-eqz p1, :cond_d

    goto :goto_23

    .line 138
    :cond_d
    iget-object p1, p0, Lcom/termux/view/TerminalView$1;->this$0:Lcom/termux/view/TerminalView;

    iget p2, p1, Lcom/termux/view/TerminalView;->mScaleFactor:F

    mul-float p2, p2, p3

    iput p2, p1, Lcom/termux/view/TerminalView;->mScaleFactor:F

    .line 139
    iget-object p1, p0, Lcom/termux/view/TerminalView$1;->this$0:Lcom/termux/view/TerminalView;

    iget-object p2, p1, Lcom/termux/view/TerminalView;->mClient:Lcom/termux/view/TerminalViewClient;

    iget-object p3, p0, Lcom/termux/view/TerminalView$1;->this$0:Lcom/termux/view/TerminalView;

    iget p3, p3, Lcom/termux/view/TerminalView;->mScaleFactor:F

    invoke-interface {p2, p3}, Lcom/termux/view/TerminalViewClient;->onScale(F)F

    move-result p2

    iput p2, p1, Lcom/termux/view/TerminalView;->mScaleFactor:F

    :cond_23
    :goto_23
    const/4 p1, 0x1

    return p1
.end method

.method public onScroll(Landroid/view/MotionEvent;FF)Z
    .registers 7

    .line 118
    iget-object p2, p0, Lcom/termux/view/TerminalView$1;->this$0:Lcom/termux/view/TerminalView;

    iget-object p2, p2, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    const/4 v0, 0x1

    if-eqz p2, :cond_4a

    iget-object p2, p0, Lcom/termux/view/TerminalView$1;->this$0:Lcom/termux/view/TerminalView;

    iget-boolean p2, p2, Lcom/termux/view/TerminalView;->mIsSelectingText:Z

    if-eqz p2, :cond_e

    goto :goto_4a

    .line 119
    :cond_e
    iget-object p2, p0, Lcom/termux/view/TerminalView$1;->this$0:Lcom/termux/view/TerminalView;

    iget-object p2, p2, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    invoke-virtual {p2}, Lcom/termux/terminal/TerminalEmulator;->isMouseTrackingActive()Z

    move-result p2

    if-eqz p2, :cond_28

    const/16 p2, 0x2002

    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result p2

    if-eqz p2, :cond_28

    .line 124
    iget-object p2, p0, Lcom/termux/view/TerminalView$1;->this$0:Lcom/termux/view/TerminalView;

    const/16 p3, 0x20

    invoke-virtual {p2, p1, p3, v0}, Lcom/termux/view/TerminalView;->sendMouseEventCode(Landroid/view/MotionEvent;IZ)V

    goto :goto_4a

    .line 126
    :cond_28
    iput-boolean v0, p0, Lcom/termux/view/TerminalView$1;->scrolledWithFinger:Z

    .line 127
    iget-object p2, p0, Lcom/termux/view/TerminalView$1;->this$0:Lcom/termux/view/TerminalView;

    iget p2, p2, Lcom/termux/view/TerminalView;->mScrollRemainder:F

    add-float/2addr p3, p2

    .line 128
    iget-object p2, p0, Lcom/termux/view/TerminalView$1;->this$0:Lcom/termux/view/TerminalView;

    iget-object p2, p2, Lcom/termux/view/TerminalView;->mRenderer:Lcom/termux/view/TerminalRenderer;

    iget p2, p2, Lcom/termux/view/TerminalRenderer;->mFontLineSpacing:I

    int-to-float p2, p2

    div-float p2, p3, p2

    float-to-int p2, p2

    .line 129
    iget-object v1, p0, Lcom/termux/view/TerminalView$1;->this$0:Lcom/termux/view/TerminalView;

    iget-object v2, v1, Lcom/termux/view/TerminalView;->mRenderer:Lcom/termux/view/TerminalRenderer;

    iget v2, v2, Lcom/termux/view/TerminalRenderer;->mFontLineSpacing:I

    mul-int v2, v2, p2

    int-to-float v2, v2

    sub-float/2addr p3, v2

    iput p3, v1, Lcom/termux/view/TerminalView;->mScrollRemainder:F

    .line 130
    iget-object p3, p0, Lcom/termux/view/TerminalView$1;->this$0:Lcom/termux/view/TerminalView;

    invoke-virtual {p3, p1, p2}, Lcom/termux/view/TerminalView;->doScroll(Landroid/view/MotionEvent;I)V

    :cond_4a
    :goto_4a
    return v0
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .registers 4

    .line 101
    iget-object v0, p0, Lcom/termux/view/TerminalView$1;->this$0:Lcom/termux/view/TerminalView;

    iget-object v0, v0, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    const/4 v1, 0x1

    if-nez v0, :cond_8

    return v1

    .line 102
    :cond_8
    iget-object v0, p0, Lcom/termux/view/TerminalView$1;->this$0:Lcom/termux/view/TerminalView;

    iget-boolean v0, v0, Lcom/termux/view/TerminalView;->mIsSelectingText:Z

    if-eqz v0, :cond_15

    .line 103
    iget-object p1, p0, Lcom/termux/view/TerminalView$1;->this$0:Lcom/termux/view/TerminalView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/termux/view/TerminalView;->toggleSelectingText(Landroid/view/MotionEvent;)V

    return v1

    .line 106
    :cond_15
    iget-object v0, p0, Lcom/termux/view/TerminalView$1;->this$0:Lcom/termux/view/TerminalView;

    invoke-virtual {v0}, Lcom/termux/view/TerminalView;->requestFocus()Z

    .line 107
    iget-object v0, p0, Lcom/termux/view/TerminalView$1;->this$0:Lcom/termux/view/TerminalView;

    iget-object v0, v0, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    invoke-virtual {v0}, Lcom/termux/terminal/TerminalEmulator;->isMouseTrackingActive()Z

    move-result v0

    if-nez v0, :cond_34

    .line 108
    const/16 v0, 0x2002

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v0

    if-nez v0, :cond_34

    .line 109
    iget-object v0, p0, Lcom/termux/view/TerminalView$1;->this$0:Lcom/termux/view/TerminalView;

    iget-object v0, v0, Lcom/termux/view/TerminalView;->mClient:Lcom/termux/view/TerminalViewClient;

    invoke-interface {v0, p1}, Lcom/termux/view/TerminalViewClient;->onSingleTapUp(Landroid/view/MotionEvent;)V

    return v1

    :cond_34
    const/4 p1, 0x0

    return p1
.end method

.method public onUp(Landroid/view/MotionEvent;)Z
    .registers 5

    .line 87
    iget-object v0, p0, Lcom/termux/view/TerminalView$1;->this$0:Lcom/termux/view/TerminalView;

    const/4 v1, 0x0

    iput v1, v0, Lcom/termux/view/TerminalView;->mScrollRemainder:F

    .line 88
    iget-object v0, p0, Lcom/termux/view/TerminalView$1;->this$0:Lcom/termux/view/TerminalView;

    iget-object v0, v0, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    const/4 v1, 0x0

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/termux/view/TerminalView$1;->this$0:Lcom/termux/view/TerminalView;

    iget-object v0, v0, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    invoke-virtual {v0}, Lcom/termux/terminal/TerminalEmulator;->isMouseTrackingActive()Z

    move-result v0

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/termux/view/TerminalView$1;->this$0:Lcom/termux/view/TerminalView;

    iget-boolean v0, v0, Lcom/termux/view/TerminalView;->mIsSelectingText:Z

    if-nez v0, :cond_2c

    iget-boolean v0, p0, Lcom/termux/view/TerminalView$1;->scrolledWithFinger:Z

    if-nez v0, :cond_2c

    .line 91
    iget-object v0, p0, Lcom/termux/view/TerminalView$1;->this$0:Lcom/termux/view/TerminalView;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, v2}, Lcom/termux/view/TerminalView;->sendMouseEventCode(Landroid/view/MotionEvent;IZ)V

    .line 92
    iget-object v0, p0, Lcom/termux/view/TerminalView$1;->this$0:Lcom/termux/view/TerminalView;

    invoke-virtual {v0, p1, v1, v1}, Lcom/termux/view/TerminalView;->sendMouseEventCode(Landroid/view/MotionEvent;IZ)V

    return v2

    .line 95
    :cond_2c
    iput-boolean v1, p0, Lcom/termux/view/TerminalView$1;->scrolledWithFinger:Z

    return v1
.end method
