.class public final Lcom/termux/view/TerminalView;
.super Landroid/view/View;
.source "TerminalView.java"


# static fields
.field private static final LOG_KEY_EVENTS:Z = false


# instance fields
.field private mActionMode:Landroid/view/ActionMode;

.field mClient:Lcom/termux/view/TerminalViewClient;

.field mCombiningAccent:I

.field mEmulator:Lcom/termux/terminal/TerminalEmulator;

.field final mGestureRecognizer:Lcom/termux/view/GestureAndScaleRecognizer;

.field mInitialTextSelection:Z

.field mIsDraggingLeftSelection:Z

.field mIsSelectingText:Z

.field private mLeftSelectionHandle:Landroid/graphics/drawable/BitmapDrawable;

.field private mMouseScrollStartX:I

.field private mMouseScrollStartY:I

.field private mMouseStartDownTime:J

.field mRenderer:Lcom/termux/view/TerminalRenderer;

.field private mRightSelectionHandle:Landroid/graphics/drawable/BitmapDrawable;

.field mScaleFactor:F

.field mScrollRemainder:F

.field final mScroller:Landroid/widget/Scroller;

.field mSelX1:I

.field mSelX2:I

.field mSelY1:I

.field mSelY2:I

.field mSelectionDownX:F

.field mSelectionDownY:F

.field mTermSession:Lcom/termux/terminal/TerminalSession;

.field mTopRow:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    .line 80
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 57
    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/termux/view/TerminalView;->mIsSelectingText:Z

    .line 58
    const/4 p2, -0x1

    iput p2, p0, Lcom/termux/view/TerminalView;->mSelX1:I

    iput p2, p0, Lcom/termux/view/TerminalView;->mSelX2:I

    iput p2, p0, Lcom/termux/view/TerminalView;->mSelY1:I

    iput p2, p0, Lcom/termux/view/TerminalView;->mSelY2:I

    .line 63
    const/high16 v0, 0x3f800000  # 1.0f

    iput v0, p0, Lcom/termux/view/TerminalView;->mScaleFactor:F

    .line 67
    iput p2, p0, Lcom/termux/view/TerminalView;->mMouseScrollStartX:I

    iput p2, p0, Lcom/termux/view/TerminalView;->mMouseScrollStartY:I

    .line 69
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/termux/view/TerminalView;->mMouseStartDownTime:J

    .line 81
    new-instance p2, Lcom/termux/view/GestureAndScaleRecognizer;

    new-instance v0, Lcom/termux/view/TerminalView$1;

    invoke-direct {v0, p0}, Lcom/termux/view/TerminalView$1;-><init>(Lcom/termux/view/TerminalView;)V

    invoke-direct {p2, p1, v0}, Lcom/termux/view/GestureAndScaleRecognizer;-><init>(Landroid/content/Context;Lcom/termux/view/GestureAndScaleRecognizer$Listener;)V

    iput-object p2, p0, Lcom/termux/view/TerminalView;->mGestureRecognizer:Lcom/termux/view/GestureAndScaleRecognizer;

    .line 200
    new-instance p2, Landroid/widget/Scroller;

    invoke-direct {p2, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/termux/view/TerminalView;->mScroller:Landroid/widget/Scroller;

    return-void
.end method


# virtual methods
.method public attachSession(Lcom/termux/terminal/TerminalSession;)Z
    .registers 4

    .line 217
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mTermSession:Lcom/termux/terminal/TerminalSession;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_6

    return v1

    .line 218
    :cond_6
    iput v1, p0, Lcom/termux/view/TerminalView;->mTopRow:I

    .line 220
    iput-object p1, p0, Lcom/termux/view/TerminalView;->mTermSession:Lcom/termux/terminal/TerminalSession;

    .line 221
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    .line 222
    iput v1, p0, Lcom/termux/view/TerminalView;->mCombiningAccent:I

    .line 224
    invoke-virtual {p0}, Lcom/termux/view/TerminalView;->updateSize()V

    .line 227
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/termux/view/TerminalView;->setVerticalScrollBarEnabled(Z)V

    return p1
.end method

.method protected computeVerticalScrollExtent()I
    .registers 2

    .line 346
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_8

    :cond_6
    iget v0, v0, Lcom/termux/terminal/TerminalEmulator;->mRows:I

    :goto_8
    return v0
.end method

.method protected computeVerticalScrollOffset()I
    .registers 3

    .line 351
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_16

    :cond_6
    invoke-virtual {v0}, Lcom/termux/terminal/TerminalEmulator;->getScreen()Lcom/termux/terminal/TerminalBuffer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/termux/terminal/TerminalBuffer;->getActiveRows()I

    move-result v0

    iget v1, p0, Lcom/termux/view/TerminalView;->mTopRow:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    iget v1, v1, Lcom/termux/terminal/TerminalEmulator;->mRows:I

    sub-int/2addr v0, v1

    :goto_16
    return v0
.end method

.method protected computeVerticalScrollRange()I
    .registers 2

    .line 341
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_e

    :cond_6
    invoke-virtual {v0}, Lcom/termux/terminal/TerminalEmulator;->getScreen()Lcom/termux/terminal/TerminalBuffer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/termux/terminal/TerminalBuffer;->getActiveRows()I

    move-result v0

    :goto_e
    return v0
.end method

.method doScroll(Landroid/view/MotionEvent;I)V
    .registers 10

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-gez p2, :cond_6

    const/4 v2, 0x1

    goto :goto_7

    :cond_6
    const/4 v2, 0x0

    .line 436
    :goto_7
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    const/4 v3, 0x0

    :goto_c
    if-ge v3, p2, :cond_5d

    .line 438
    iget-object v4, p0, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    invoke-virtual {v4}, Lcom/termux/terminal/TerminalEmulator;->isMouseTrackingActive()Z

    move-result v4

    if-eqz v4, :cond_21

    if-eqz v2, :cond_1b

    const/16 v4, 0x40

    goto :goto_1d

    :cond_1b
    const/16 v4, 0x41

    .line 439
    :goto_1d
    invoke-virtual {p0, p1, v4, v0}, Lcom/termux/view/TerminalView;->sendMouseEventCode(Landroid/view/MotionEvent;IZ)V

    goto :goto_5a

    .line 440
    :cond_21
    iget-object v4, p0, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    invoke-virtual {v4}, Lcom/termux/terminal/TerminalEmulator;->isAlternateBufferActive()Z

    move-result v4

    if-eqz v4, :cond_34

    if-eqz v2, :cond_2e

    const/16 v4, 0x13

    goto :goto_30

    :cond_2e
    const/16 v4, 0x14

    .line 443
    :goto_30
    invoke-virtual {p0, v4, v1}, Lcom/termux/view/TerminalView;->handleKeyCode(II)Z

    goto :goto_5a

    .line 445
    :cond_34
    iget-object v4, p0, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    invoke-virtual {v4}, Lcom/termux/terminal/TerminalEmulator;->getScreen()Lcom/termux/terminal/TerminalBuffer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/termux/terminal/TerminalBuffer;->getActiveTranscriptRows()I

    move-result v4

    neg-int v4, v4

    iget v5, p0, Lcom/termux/view/TerminalView;->mTopRow:I

    if-eqz v2, :cond_45

    const/4 v6, -0x1

    goto :goto_46

    :cond_45
    const/4 v6, 0x1

    :goto_46
    add-int/2addr v5, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    iput v4, p0, Lcom/termux/view/TerminalView;->mTopRow:I

    .line 446
    invoke-virtual {p0}, Lcom/termux/view/TerminalView;->awakenScrollBars()Z

    move-result v4

    if-nez v4, :cond_5a

    invoke-virtual {p0}, Lcom/termux/view/TerminalView;->invalidate()V

    :cond_5a
    :goto_5a
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    :cond_5d
    return-void
.end method

.method public getCurrentSession()Lcom/termux/terminal/TerminalSession;
    .registers 2

    .line 910
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mTermSession:Lcom/termux/terminal/TerminalSession;

    return-object v0
.end method

.method public handleKeyCode(II)Z
    .registers 5

    .line 698
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mTermSession:Lcom/termux/terminal/TerminalSession;

    invoke-virtual {v0}, Lcom/termux/terminal/TerminalSession;->getEmulator()Lcom/termux/terminal/TerminalEmulator;

    move-result-object v0

    .line 699
    invoke-virtual {v0}, Lcom/termux/terminal/TerminalEmulator;->isCursorKeysApplicationMode()Z

    move-result v1

    invoke-virtual {v0}, Lcom/termux/terminal/TerminalEmulator;->isKeypadApplicationMode()Z

    move-result v0

    invoke-static {p1, p2, v1, v0}, Lcom/termux/terminal/KeyHandler;->getCode(IIZZ)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_16

    const/4 p1, 0x0

    return p1

    .line 701
    :cond_16
    iget-object p2, p0, Lcom/termux/view/TerminalView;->mTermSession:Lcom/termux/terminal/TerminalSession;

    invoke-virtual {p2, p1}, Lcom/termux/terminal/TerminalSession;->write(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method inputCodePoint(IZZ)V
    .registers 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p2, :cond_f

    .line 646
    iget-object p2, p0, Lcom/termux/view/TerminalView;->mClient:Lcom/termux/view/TerminalViewClient;

    invoke-interface {p2}, Lcom/termux/view/TerminalViewClient;->readControlKey()Z

    move-result p2

    if-eqz p2, :cond_d

    goto :goto_f

    :cond_d
    const/4 p2, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 p2, 0x1

    :goto_10
    if-nez p3, :cond_1c

    .line 647
    iget-object p3, p0, Lcom/termux/view/TerminalView;->mClient:Lcom/termux/view/TerminalViewClient;

    invoke-interface {p3}, Lcom/termux/view/TerminalViewClient;->readAltKey()Z

    move-result p3

    if-eqz p3, :cond_1b

    goto :goto_1c

    :cond_1b
    const/4 v1, 0x0

    .line 649
    :cond_1c
    :goto_1c
    iget-object p3, p0, Lcom/termux/view/TerminalView;->mClient:Lcom/termux/view/TerminalViewClient;

    iget-object v2, p0, Lcom/termux/view/TerminalView;->mTermSession:Lcom/termux/terminal/TerminalSession;

    invoke-interface {p3, p1, p2, v2}, Lcom/termux/view/TerminalViewClient;->onCodePoint(IZLcom/termux/terminal/TerminalSession;)Z

    move-result p3

    if-eqz p3, :cond_27

    return-void

    :cond_27
    const/16 p3, 0x5e

    if-eqz p2, :cond_91

    const/16 p2, 0x61

    if-lt p1, p2, :cond_37

    const/16 p2, 0x7a

    if-gt p1, p2, :cond_37

    add-int/lit8 p1, p1, -0x60

    goto/16 :goto_91

    :cond_37
    const/16 p2, 0x41

    if-lt p1, p2, :cond_42

    const/16 p2, 0x5a

    if-gt p1, p2, :cond_42

    add-int/lit8 p1, p1, -0x40

    goto :goto_91

    :cond_42
    const/16 p2, 0x20

    if-eq p1, p2, :cond_90

    const/16 p2, 0x32

    if-ne p1, p2, :cond_4b

    goto :goto_90

    :cond_4b
    const/16 p2, 0x5b

    if-eq p1, p2, :cond_8d

    const/16 p2, 0x33

    if-ne p1, p2, :cond_54

    goto :goto_8d

    :cond_54
    const/16 p2, 0x5c

    if-eq p1, p2, :cond_8a

    const/16 p2, 0x34

    if-ne p1, p2, :cond_5d

    goto :goto_8a

    :cond_5d
    const/16 p2, 0x5d

    if-eq p1, p2, :cond_87

    const/16 p2, 0x35

    if-ne p1, p2, :cond_66

    goto :goto_87

    :cond_66
    if-eq p1, p3, :cond_84

    const/16 p2, 0x36

    if-ne p1, p2, :cond_6d

    goto :goto_84

    :cond_6d
    const/16 p2, 0x5f

    if-eq p1, p2, :cond_81

    const/16 p2, 0x37

    if-eq p1, p2, :cond_81

    const/16 p2, 0x2f

    if-ne p1, p2, :cond_7a

    goto :goto_81

    :cond_7a
    const/16 p2, 0x38

    if-ne p1, p2, :cond_91

    const/16 p1, 0x7f

    goto :goto_91

    :cond_81
    :goto_81
    const/16 p1, 0x1f

    goto :goto_91

    :cond_84
    :goto_84
    const/16 p1, 0x1e

    goto :goto_91

    :cond_87
    :goto_87
    const/16 p1, 0x1d

    goto :goto_91

    :cond_8a
    :goto_8a
    const/16 p1, 0x1c

    goto :goto_91

    :cond_8d
    :goto_8d
    const/16 p1, 0x1b

    goto :goto_91

    :cond_90
    :goto_90
    const/4 p1, 0x0

    :cond_91
    :goto_91
    const/4 p2, -0x1

    if-le p1, p2, :cond_ac

    const/16 p2, 0x2c6

    if-eq p1, p2, :cond_a7

    const/16 p2, 0x2cb

    if-eq p1, p2, :cond_a5

    const/16 p2, 0x2dc

    if-eq p1, p2, :cond_a2

    move p3, p1

    goto :goto_a7

    :cond_a2
    const/16 p3, 0x7e

    goto :goto_a7

    :cond_a5
    const/16 p3, 0x60

    .line 692
    :cond_a7
    :goto_a7
    iget-object p1, p0, Lcom/termux/view/TerminalView;->mTermSession:Lcom/termux/terminal/TerminalSession;

    invoke-virtual {p1, v1, p3}, Lcom/termux/terminal/TerminalSession;->writeCodePoint(ZI)V

    :cond_ac
    return-void
.end method

.method public isOpaque()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public onCheckIsTextEditor()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .registers 3

    .line 241
    const/4 v0, 0x0

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 245
    const/high16 v0, 0x2000000

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 247
    new-instance p1, Lcom/termux/view/TerminalView$2;

    const/4 v0, 0x1

    invoke-direct {p1, p0, p0, v0}, Lcom/termux/view/TerminalView$2;-><init>(Lcom/termux/view/TerminalView;Landroid/view/View;Z)V

    return-object p1
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 10

    .line 760
    iget-object v1, p0, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    if-nez v1, :cond_b

    .line 761
    const/high16 v0, -0x1000000

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    goto/16 :goto_8a

    .line 763
    :cond_b
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mRenderer:Lcom/termux/view/TerminalRenderer;

    iget v3, p0, Lcom/termux/view/TerminalView;->mTopRow:I

    iget v4, p0, Lcom/termux/view/TerminalView;->mSelY1:I

    iget v5, p0, Lcom/termux/view/TerminalView;->mSelY2:I

    iget v6, p0, Lcom/termux/view/TerminalView;->mSelX1:I

    iget v7, p0, Lcom/termux/view/TerminalView;->mSelX2:I

    move-object v2, p1

    invoke-virtual/range {v0 .. v7}, Lcom/termux/view/TerminalRenderer;->render(Lcom/termux/terminal/TerminalEmulator;Landroid/graphics/Canvas;IIIII)V

    .line 765
    iget-boolean v0, p0, Lcom/termux/view/TerminalView;->mIsSelectingText:Z

    if-eqz v0, :cond_8a

    .line 766
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mLeftSelectionHandle:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicWidth()I

    move-result v0

    .line 767
    div-int/lit8 v1, v0, 0x4

    .line 769
    iget v2, p0, Lcom/termux/view/TerminalView;->mSelX1:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/termux/view/TerminalView;->mRenderer:Lcom/termux/view/TerminalRenderer;

    iget v3, v3, Lcom/termux/view/TerminalRenderer;->mFontWidth:F

    mul-float v2, v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    add-int/2addr v2, v1

    .line 770
    iget v3, p0, Lcom/termux/view/TerminalView;->mSelY1:I

    add-int/lit8 v3, v3, 0x1

    iget v4, p0, Lcom/termux/view/TerminalView;->mTopRow:I

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/termux/view/TerminalView;->mRenderer:Lcom/termux/view/TerminalRenderer;

    iget v4, v4, Lcom/termux/view/TerminalRenderer;->mFontLineSpacing:I

    mul-int v3, v3, v4

    iget-object v4, p0, Lcom/termux/view/TerminalView;->mRenderer:Lcom/termux/view/TerminalRenderer;

    iget v4, v4, Lcom/termux/view/TerminalRenderer;->mFontLineSpacingAndAscent:I

    add-int/2addr v3, v4

    .line 771
    iget-object v4, p0, Lcom/termux/view/TerminalView;->mLeftSelectionHandle:Landroid/graphics/drawable/BitmapDrawable;

    sub-int v5, v2, v0

    invoke-virtual {v4}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicHeight()I

    move-result v6

    add-int/2addr v6, v3

    invoke-virtual {v4, v5, v3, v2, v6}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(IIII)V

    .line 772
    iget-object v2, p0, Lcom/termux/view/TerminalView;->mLeftSelectionHandle:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 774
    iget v2, p0, Lcom/termux/view/TerminalView;->mSelX2:I

    add-int/lit8 v2, v2, 0x1

    int-to-float v2, v2

    iget-object v3, p0, Lcom/termux/view/TerminalView;->mRenderer:Lcom/termux/view/TerminalRenderer;

    iget v3, v3, Lcom/termux/view/TerminalRenderer;->mFontWidth:F

    mul-float v2, v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    sub-int/2addr v2, v1

    .line 775
    iget v1, p0, Lcom/termux/view/TerminalView;->mSelY2:I

    add-int/lit8 v1, v1, 0x1

    iget v3, p0, Lcom/termux/view/TerminalView;->mTopRow:I

    sub-int/2addr v1, v3

    iget-object v3, p0, Lcom/termux/view/TerminalView;->mRenderer:Lcom/termux/view/TerminalRenderer;

    iget v3, v3, Lcom/termux/view/TerminalRenderer;->mFontLineSpacing:I

    mul-int v1, v1, v3

    iget-object v3, p0, Lcom/termux/view/TerminalView;->mRenderer:Lcom/termux/view/TerminalRenderer;

    iget v3, v3, Lcom/termux/view/TerminalRenderer;->mFontLineSpacingAndAscent:I

    add-int/2addr v1, v3

    .line 776
    iget-object v3, p0, Lcom/termux/view/TerminalView;->mRightSelectionHandle:Landroid/graphics/drawable/BitmapDrawable;

    add-int/2addr v0, v2

    invoke-virtual {v3}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicHeight()I

    move-result v4

    add-int/2addr v4, v1

    invoke-virtual {v3, v2, v1, v0, v4}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(IIII)V

    .line 777
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mRightSelectionHandle:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    :cond_8a
    :goto_8a
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .registers 4

    .line 454
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    if-eqz v0, :cond_27

    const/16 v0, 0x2002

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_27

    .line 456
    const/16 v0, 0x9

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_21

    const/4 v0, -0x3

    goto :goto_22

    :cond_21
    const/4 v0, 0x3

    .line 457
    :goto_22
    invoke-virtual {p0, p1, v0}, Lcom/termux/view/TerminalView;->doScroll(Landroid/view/MotionEvent;I)V

    const/4 p1, 0x1

    return p1

    :cond_27
    const/4 p1, 0x0

    return p1
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 11

    .line 577
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    const/4 v1, 0x1

    if-nez v0, :cond_6

    return v1

    .line 579
    :cond_6
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mClient:Lcom/termux/view/TerminalViewClient;

    iget-object v2, p0, Lcom/termux/view/TerminalView;->mTermSession:Lcom/termux/terminal/TerminalSession;

    invoke-interface {v0, p1, p2, v2}, Lcom/termux/view/TerminalViewClient;->onKeyDown(ILandroid/view/KeyEvent;Lcom/termux/terminal/TerminalSession;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 580
    invoke-virtual {p0}, Lcom/termux/view/TerminalView;->invalidate()V

    return v1

    .line 582
    :cond_14
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isSystem()Z

    move-result v0

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/termux/view/TerminalView;->mClient:Lcom/termux/view/TerminalViewClient;

    invoke-interface {v0}, Lcom/termux/view/TerminalViewClient;->shouldBackButtonBeMappedToEscape()Z

    move-result v0

    if-eqz v0, :cond_25

    const/4 v0, 0x4

    if-eq p1, v0, :cond_2a

    .line 583
    :cond_25
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    .line 584
    :cond_2a
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_3d

    if-nez p1, :cond_3d

    .line 585
    iget-object p1, p0, Lcom/termux/view/TerminalView;->mTermSession:Lcom/termux/terminal/TerminalSession;

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getCharacters()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/termux/terminal/TerminalSession;->write(Ljava/lang/String;)V

    return v1

    .line 589
    :cond_3d
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v0

    .line 590
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result v2

    and-int/lit8 v3, v0, 0x10

    const/4 v4, 0x0

    if-eqz v3, :cond_4c

    const/4 v3, 0x1

    goto :goto_4d

    :cond_4c
    const/4 v3, 0x0

    :goto_4d
    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_53

    const/4 v0, 0x1

    goto :goto_54

    :cond_53
    const/4 v0, 0x0

    :goto_54
    if-eqz v2, :cond_59

    const/high16 v5, 0x40000000  # 2.0f

    goto :goto_5a

    :cond_59
    const/4 v5, 0x0

    .line 596
    :goto_5a
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v6

    const/high16 v7, -0x80000000

    if-eqz v6, :cond_63

    or-int/2addr v5, v7

    .line 597
    :cond_63
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v6

    if-eqz v6, :cond_6c

    const/high16 v6, 0x20000000

    or-int/2addr v5, v6

    .line 598
    :cond_6c
    invoke-virtual {p0, p1, v5}, Lcom/termux/view/TerminalView;->handleKeyCode(II)Z

    move-result p1

    if-eqz p1, :cond_73

    return v1

    :cond_73
    if-eqz v0, :cond_78

    const/16 p1, 0x7000

    goto :goto_7a

    :cond_78
    const/16 p1, 0x7012

    .line 611
    :goto_7a
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v0

    .line 613
    xor-int/lit8 p1, p1, -0x1

    and-int/2addr p1, v0

    invoke-virtual {p2, p1}, Landroid/view/KeyEvent;->getUnicodeChar(I)I

    move-result p1

    if-nez p1, :cond_88

    return v1

    .line 620
    :cond_88
    iget p2, p0, Lcom/termux/view/TerminalView;->mCombiningAccent:I

    and-int v0, p1, v7

    if-eqz v0, :cond_9a

    if-eqz p2, :cond_93

    .line 624
    invoke-virtual {p0, p2, v2, v3}, Lcom/termux/view/TerminalView;->inputCodePoint(IZZ)V

    .line 625
    :cond_93
    const v0, 0x7fffffff

    and-int/2addr p1, v0

    iput p1, p0, Lcom/termux/view/TerminalView;->mCombiningAccent:I

    goto :goto_a8

    :cond_9a
    if-eqz p2, :cond_a5

    .line 628
    invoke-static {p2, p1}, Landroid/view/KeyCharacterMap;->getDeadChar(II)I

    move-result v0

    if-lez v0, :cond_a3

    move p1, v0

    .line 630
    :cond_a3
    iput v4, p0, Lcom/termux/view/TerminalView;->mCombiningAccent:I

    .line 632
    :cond_a5
    invoke-virtual {p0, p1, v2, v3}, Lcom/termux/view/TerminalView;->inputCodePoint(IZZ)V

    .line 635
    :goto_a8
    iget p1, p0, Lcom/termux/view/TerminalView;->mCombiningAccent:I

    if-eq p1, p2, :cond_af

    invoke-virtual {p0}, Lcom/termux/view/TerminalView;->invalidate()V

    :cond_af
    return v1
.end method

.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .registers 5

    const/4 v0, 0x4

    if-ne p1, v0, :cond_28

    .line 557
    iget-boolean v0, p0, Lcom/termux/view/TerminalView;->mIsSelectingText:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_d

    .line 558
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/termux/view/TerminalView;->toggleSelectingText(Landroid/view/MotionEvent;)V

    return v1

    .line 560
    :cond_d
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mClient:Lcom/termux/view/TerminalViewClient;

    invoke-interface {v0}, Lcom/termux/view/TerminalViewClient;->shouldBackButtonBeMappedToEscape()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 562
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_23

    if-eq v0, v1, :cond_1e

    goto :goto_28

    .line 566
    :cond_1e
    invoke-virtual {p0, p1, p2}, Lcom/termux/view/TerminalView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    .line 564
    :cond_23
    invoke-virtual {p0, p1, p2}, Lcom/termux/view/TerminalView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    .line 570
    :cond_28
    :goto_28
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyPreIme(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 5

    .line 716
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    const/4 v1, 0x1

    if-nez v0, :cond_6

    return v1

    .line 718
    :cond_6
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mClient:Lcom/termux/view/TerminalViewClient;

    invoke-interface {v0, p1, p2}, Lcom/termux/view/TerminalViewClient;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 719
    invoke-virtual {p0}, Lcom/termux/view/TerminalView;->invalidate()V

    return v1

    .line 721
    :cond_12
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isSystem()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 723
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    :cond_1d
    return v1
.end method

.method public onScreenUpdated()V
    .registers 5

    .line 355
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    if-nez v0, :cond_5

    return-void

    .line 358
    :cond_5
    iget-boolean v1, p0, Lcom/termux/view/TerminalView;->mIsSelectingText:Z

    if-eqz v1, :cond_30

    .line 360
    invoke-virtual {v0}, Lcom/termux/terminal/TerminalEmulator;->getScreen()Lcom/termux/terminal/TerminalBuffer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/termux/terminal/TerminalBuffer;->getActiveTranscriptRows()I

    move-result v0

    .line 361
    iget-object v1, p0, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    invoke-virtual {v1}, Lcom/termux/terminal/TerminalEmulator;->getScrollCounter()I

    move-result v1

    .line 362
    iget v2, p0, Lcom/termux/view/TerminalView;->mTopRow:I

    neg-int v3, v2

    add-int/2addr v3, v1

    if-le v3, v0, :cond_22

    .line 365
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/termux/view/TerminalView;->toggleSelectingText(Landroid/view/MotionEvent;)V

    goto :goto_30

    .line 368
    :cond_22
    sub-int/2addr v2, v1

    iput v2, p0, Lcom/termux/view/TerminalView;->mTopRow:I

    .line 369
    iget v0, p0, Lcom/termux/view/TerminalView;->mSelY1:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/termux/view/TerminalView;->mSelY1:I

    .line 370
    iget v0, p0, Lcom/termux/view/TerminalView;->mSelY2:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/termux/view/TerminalView;->mSelY2:I

    goto :goto_3d

    .line 374
    :cond_30
    :goto_30
    iget v0, p0, Lcom/termux/view/TerminalView;->mTopRow:I

    if-eqz v0, :cond_3d

    const/4 v1, -0x3

    if-ge v0, v1, :cond_3a

    .line 380
    invoke-virtual {p0}, Lcom/termux/view/TerminalView;->awakenScrollBars()Z

    .line 382
    :cond_3a
    const/4 v0, 0x0

    iput v0, p0, Lcom/termux/view/TerminalView;->mTopRow:I

    .line 385
    :cond_3d
    :goto_3d
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    invoke-virtual {v0}, Lcom/termux/terminal/TerminalEmulator;->clearScrollCounter()V

    .line 387
    invoke-virtual {p0}, Lcom/termux/view/TerminalView;->invalidate()V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .registers 5

    .line 735
    invoke-virtual {p0}, Lcom/termux/view/TerminalView;->updateSize()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 10

    .line 467
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    const/4 v1, 0x1

    if-nez v0, :cond_6

    return v1

    .line 468
    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 470
    iget-boolean v2, p0, Lcom/termux/view/TerminalView;->mIsSelectingText:Z

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eqz v2, :cond_110

    .line 471
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget-object v5, p0, Lcom/termux/view/TerminalView;->mRenderer:Lcom/termux/view/TerminalRenderer;

    iget v5, v5, Lcom/termux/view/TerminalRenderer;->mFontLineSpacing:I

    int-to-float v5, v5

    div-float/2addr v2, v5

    float-to-int v2, v2

    iget v5, p0, Lcom/termux/view/TerminalView;->mTopRow:I

    add-int/2addr v2, v5

    .line 472
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    iget-object v6, p0, Lcom/termux/view/TerminalView;->mRenderer:Lcom/termux/view/TerminalRenderer;

    iget v6, v6, Lcom/termux/view/TerminalRenderer;->mFontWidth:F

    div-float/2addr v5, v6

    float-to-int v5, v5

    if-eqz v0, :cond_d9

    if-eq v0, v1, :cond_d6

    if-eq v0, v3, :cond_30

    goto/16 :goto_10a

    .line 486
    :cond_30
    iget-boolean v0, p0, Lcom/termux/view/TerminalView;->mInitialTextSelection:Z

    if-eqz v0, :cond_36

    goto/16 :goto_10a

    .line 487
    :cond_36
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v2, p0, Lcom/termux/view/TerminalView;->mSelectionDownX:F

    .line 488
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iget v5, p0, Lcom/termux/view/TerminalView;->mSelectionDownY:F

    .line 489
    sub-float/2addr v0, v2

    iget-object v2, p0, Lcom/termux/view/TerminalView;->mRenderer:Lcom/termux/view/TerminalRenderer;

    iget v2, v2, Lcom/termux/view/TerminalRenderer;->mFontWidth:F

    div-float/2addr v0, v2

    float-to-double v6, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v0, v6

    .line 490
    sub-float/2addr v3, v5

    iget-object v2, p0, Lcom/termux/view/TerminalView;->mRenderer:Lcom/termux/view/TerminalRenderer;

    iget v2, v2, Lcom/termux/view/TerminalRenderer;->mFontLineSpacing:I

    int-to-float v2, v2

    div-float/2addr v3, v2

    float-to-double v2, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    .line 491
    iget v3, p0, Lcom/termux/view/TerminalView;->mSelectionDownX:F

    int-to-float v5, v0

    iget-object v6, p0, Lcom/termux/view/TerminalView;->mRenderer:Lcom/termux/view/TerminalRenderer;

    iget v6, v6, Lcom/termux/view/TerminalRenderer;->mFontWidth:F

    mul-float v5, v5, v6

    add-float/2addr v3, v5

    iput v3, p0, Lcom/termux/view/TerminalView;->mSelectionDownX:F

    .line 492
    iget v3, p0, Lcom/termux/view/TerminalView;->mSelectionDownY:F

    iget-object v5, p0, Lcom/termux/view/TerminalView;->mRenderer:Lcom/termux/view/TerminalRenderer;

    iget v5, v5, Lcom/termux/view/TerminalRenderer;->mFontLineSpacing:I

    mul-int v5, v5, v2

    int-to-float v5, v5

    add-float/2addr v3, v5

    iput v3, p0, Lcom/termux/view/TerminalView;->mSelectionDownY:F

    .line 493
    iget-boolean v3, p0, Lcom/termux/view/TerminalView;->mIsDraggingLeftSelection:Z

    if-eqz v3, :cond_82

    .line 494
    iget v3, p0, Lcom/termux/view/TerminalView;->mSelX1:I

    add-int/2addr v3, v0

    iput v3, p0, Lcom/termux/view/TerminalView;->mSelX1:I

    .line 495
    iget v0, p0, Lcom/termux/view/TerminalView;->mSelY1:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/termux/view/TerminalView;->mSelY1:I

    goto :goto_8c

    .line 497
    :cond_82
    iget v3, p0, Lcom/termux/view/TerminalView;->mSelX2:I

    add-int/2addr v3, v0

    iput v3, p0, Lcom/termux/view/TerminalView;->mSelX2:I

    .line 498
    iget v0, p0, Lcom/termux/view/TerminalView;->mSelY2:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/termux/view/TerminalView;->mSelY2:I

    .line 501
    :goto_8c
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    iget v0, v0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    iget v2, p0, Lcom/termux/view/TerminalView;->mSelX1:I

    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/termux/view/TerminalView;->mSelX1:I

    .line 502
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    iget v0, v0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    iget v2, p0, Lcom/termux/view/TerminalView;->mSelX2:I

    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/termux/view/TerminalView;->mSelX2:I

    .line 504
    iget v2, p0, Lcom/termux/view/TerminalView;->mSelY1:I

    iget v3, p0, Lcom/termux/view/TerminalView;->mSelY2:I

    if-ne v2, v3, :cond_b6

    iget v4, p0, Lcom/termux/view/TerminalView;->mSelX1:I

    if-gt v4, v0, :cond_b8

    :cond_b6
    if-le v2, v3, :cond_c7

    .line 506
    :cond_b8
    iget-boolean v4, p0, Lcom/termux/view/TerminalView;->mIsDraggingLeftSelection:Z

    xor-int/2addr v4, v1

    iput-boolean v4, p0, Lcom/termux/view/TerminalView;->mIsDraggingLeftSelection:Z

    .line 507
    iget v4, p0, Lcom/termux/view/TerminalView;->mSelX1:I

    .line 508
    iput v0, p0, Lcom/termux/view/TerminalView;->mSelX1:I

    .line 509
    iput v3, p0, Lcom/termux/view/TerminalView;->mSelY1:I

    .line 510
    iput v4, p0, Lcom/termux/view/TerminalView;->mSelX2:I

    .line 511
    iput v2, p0, Lcom/termux/view/TerminalView;->mSelY2:I

    .line 514
    :cond_c7
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v0, v2, :cond_d2

    .line 515
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mActionMode:Landroid/view/ActionMode;

    invoke-static {v0}, Lcom/s1243808733/util/Utils$$ExternalSyntheticApiModelOutline0;->m(Landroid/view/ActionMode;)V

    .line 516
    :cond_d2
    invoke-virtual {p0}, Lcom/termux/view/TerminalView;->invalidate()V

    goto :goto_10a

    .line 476
    :cond_d6
    iput-boolean v4, p0, Lcom/termux/view/TerminalView;->mInitialTextSelection:Z

    goto :goto_10a

    .line 479
    :cond_d9
    iget v0, p0, Lcom/termux/view/TerminalView;->mSelX1:I

    sub-int v0, v5, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v3, p0, Lcom/termux/view/TerminalView;->mSelY1:I

    sub-int v3, v2, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 480
    add-int/2addr v0, v3

    iget v3, p0, Lcom/termux/view/TerminalView;->mSelX2:I

    sub-int/2addr v5, v3

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget v5, p0, Lcom/termux/view/TerminalView;->mSelY2:I

    sub-int/2addr v2, v5

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    add-int/2addr v3, v2

    if-gt v0, v3, :cond_fc

    const/4 v4, 0x1

    .line 481
    :cond_fc
    iput-boolean v4, p0, Lcom/termux/view/TerminalView;->mIsDraggingLeftSelection:Z

    .line 482
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/termux/view/TerminalView;->mSelectionDownX:F

    .line 483
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/termux/view/TerminalView;->mSelectionDownY:F

    .line 521
    :goto_10a
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mGestureRecognizer:Lcom/termux/view/GestureAndScaleRecognizer;

    invoke-virtual {v0, p1}, Lcom/termux/view/GestureAndScaleRecognizer;->onTouchEvent(Landroid/view/MotionEvent;)V

    return v1

    .line 523
    :cond_110
    const/16 v2, 0x2002

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v2

    if-eqz v2, :cond_17f

    .line 524
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->isButtonPressed(I)Z

    move-result v2

    if-eqz v2, :cond_124

    if-nez v0, :cond_123

    .line 525
    invoke-virtual {p0}, Lcom/termux/view/TerminalView;->showContextMenu()Z

    :cond_123
    return v1

    .line 527
    :cond_124
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->isButtonPressed(I)Z

    move-result v0

    if-eqz v0, :cond_159

    .line 528
    invoke-virtual {p0}, Lcom/termux/view/TerminalView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "clipboard"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    .line 529
    invoke-virtual {v0}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v0

    if-eqz v0, :cond_17f

    .line 531
    invoke-virtual {v0, v4}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v0

    invoke-virtual {p0}, Lcom/termux/view/TerminalView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/ClipData$Item;->coerceToText(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 532
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_17f

    iget-object v2, p0, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/termux/terminal/TerminalEmulator;->paste(Ljava/lang/String;)V

    goto :goto_17f

    .line 534
    :cond_159
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    invoke-virtual {v0}, Lcom/termux/terminal/TerminalEmulator;->isMouseTrackingActive()Z

    move-result v0

    if-eqz v0, :cond_17f

    .line 535
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_172

    if-eq v0, v1, :cond_172

    if-eq v0, v3, :cond_16c

    goto :goto_17e

    .line 541
    :cond_16c
    const/16 v0, 0x20

    invoke-virtual {p0, p1, v0, v1}, Lcom/termux/view/TerminalView;->sendMouseEventCode(Landroid/view/MotionEvent;IZ)V

    goto :goto_17e

    .line 538
    :cond_172
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_17a

    const/4 v0, 0x1

    goto :goto_17b

    :cond_17a
    const/4 v0, 0x0

    :goto_17b
    invoke-virtual {p0, p1, v4, v0}, Lcom/termux/view/TerminalView;->sendMouseEventCode(Landroid/view/MotionEvent;IZ)V

    :goto_17e
    return v1

    .line 548
    :cond_17f
    :goto_17f
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mGestureRecognizer:Lcom/termux/view/GestureAndScaleRecognizer;

    invoke-virtual {v0, p1}, Lcom/termux/view/GestureAndScaleRecognizer;->onTouchEvent(Landroid/view/MotionEvent;)V

    return v1
.end method

.method sendMouseEventCode(Landroid/view/MotionEvent;IZ)V
    .registers 11

    .line 418
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v1, p0, Lcom/termux/view/TerminalView;->mRenderer:Lcom/termux/view/TerminalRenderer;

    iget v1, v1, Lcom/termux/view/TerminalRenderer;->mFontWidth:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    add-int/lit8 v0, v0, 0x1

    .line 419
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget-object v2, p0, Lcom/termux/view/TerminalView;->mRenderer:Lcom/termux/view/TerminalRenderer;

    iget v2, v2, Lcom/termux/view/TerminalRenderer;->mFontLineSpacingAndAscent:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/termux/view/TerminalView;->mRenderer:Lcom/termux/view/TerminalRenderer;

    iget v2, v2, Lcom/termux/view/TerminalRenderer;->mFontLineSpacing:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    float-to-int v1, v1

    add-int/lit8 v1, v1, 0x1

    if-eqz p3, :cond_42

    const/16 v2, 0x41

    if-eq p2, v2, :cond_29

    const/16 v2, 0x40

    if-ne p2, v2, :cond_42

    .line 421
    :cond_29
    iget-wide v2, p0, Lcom/termux/view/TerminalView;->mMouseStartDownTime:J

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v4

    cmp-long v6, v2, v4

    if-nez v6, :cond_38

    .line 422
    iget v0, p0, Lcom/termux/view/TerminalView;->mMouseScrollStartX:I

    .line 423
    iget v1, p0, Lcom/termux/view/TerminalView;->mMouseScrollStartY:I

    goto :goto_42

    .line 425
    :cond_38
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/termux/view/TerminalView;->mMouseStartDownTime:J

    .line 426
    iput v0, p0, Lcom/termux/view/TerminalView;->mMouseScrollStartX:I

    .line 427
    iput v1, p0, Lcom/termux/view/TerminalView;->mMouseScrollStartY:I

    .line 430
    :cond_42
    :goto_42
    iget-object p1, p0, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    invoke-virtual {p1, p2, v0, v1, p3}, Lcom/termux/terminal/TerminalEmulator;->sendMouseEvent(IIIZ)V

    return-void
.end method

.method public setOnKeyListener(Lcom/termux/view/TerminalViewClient;)V
    .registers 2

    .line 208
    iput-object p1, p0, Lcom/termux/view/TerminalView;->mClient:Lcom/termux/view/TerminalViewClient;

    return-void
.end method

.method public setTextSize(I)V
    .registers 4

    .line 396
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mRenderer:Lcom/termux/view/TerminalRenderer;

    if-nez v0, :cond_7

    sget-object v0, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    goto :goto_9

    :cond_7
    iget-object v0, v0, Lcom/termux/view/TerminalRenderer;->mTypeface:Landroid/graphics/Typeface;

    :goto_9
    new-instance v1, Lcom/termux/view/TerminalRenderer;

    invoke-direct {v1, p1, v0}, Lcom/termux/view/TerminalRenderer;-><init>(ILandroid/graphics/Typeface;)V

    iput-object v1, p0, Lcom/termux/view/TerminalView;->mRenderer:Lcom/termux/view/TerminalRenderer;

    .line 397
    invoke-virtual {p0}, Lcom/termux/view/TerminalView;->updateSize()V

    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;)V
    .registers 4

    .line 401
    new-instance v0, Lcom/termux/view/TerminalRenderer;

    iget-object v1, p0, Lcom/termux/view/TerminalView;->mRenderer:Lcom/termux/view/TerminalRenderer;

    iget v1, v1, Lcom/termux/view/TerminalRenderer;->mTextSize:I

    invoke-direct {v0, v1, p1}, Lcom/termux/view/TerminalRenderer;-><init>(ILandroid/graphics/Typeface;)V

    iput-object v0, p0, Lcom/termux/view/TerminalView;->mRenderer:Lcom/termux/view/TerminalRenderer;

    .line 402
    invoke-virtual {p0}, Lcom/termux/view/TerminalView;->updateSize()V

    .line 403
    invoke-virtual {p0}, Lcom/termux/view/TerminalView;->invalidate()V

    return-void
.end method

.method public toggleSelectingText(Landroid/view/MotionEvent;)V
    .registers 7

    .line 785
    iget-boolean v0, p0, Lcom/termux/view/TerminalView;->mIsSelectingText:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/termux/view/TerminalView;->mIsSelectingText:Z

    .line 786
    iget-object v2, p0, Lcom/termux/view/TerminalView;->mClient:Lcom/termux/view/TerminalViewClient;

    invoke-interface {v2, v0}, Lcom/termux/view/TerminalViewClient;->copyModeChanged(Z)V

    .line 788
    iget-boolean v0, p0, Lcom/termux/view/TerminalView;->mIsSelectingText:Z

    if-eqz v0, :cond_e4

    .line 789
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mLeftSelectionHandle:Landroid/graphics/drawable/BitmapDrawable;

    if-nez v0, :cond_37

    .line 790
    invoke-virtual {p0}, Lcom/termux/view/TerminalView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "text_select_handle_left_material"

    invoke-static {v2}, Lcom/blankj/utilcode/util/ResourceUtils;->getDrawableIdByName(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    iput-object v0, p0, Lcom/termux/view/TerminalView;->mLeftSelectionHandle:Landroid/graphics/drawable/BitmapDrawable;

    .line 791
    invoke-virtual {p0}, Lcom/termux/view/TerminalView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "text_select_handle_right_material"

    invoke-static {v2}, Lcom/blankj/utilcode/util/ResourceUtils;->getDrawableIdByName(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    iput-object v0, p0, Lcom/termux/view/TerminalView;->mRightSelectionHandle:Landroid/graphics/drawable/BitmapDrawable;

    .line 794
    :cond_37
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v2, p0, Lcom/termux/view/TerminalView;->mRenderer:Lcom/termux/view/TerminalRenderer;

    iget v2, v2, Lcom/termux/view/TerminalRenderer;->mFontWidth:F

    div-float/2addr v0, v2

    float-to-int v0, v0

    .line 795
    const/16 v2, 0x2002

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v2

    if-eqz v2, :cond_4b

    const/4 v2, 0x0

    goto :goto_4d

    :cond_4b
    const/16 v2, -0x28

    .line 798
    :goto_4d
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    int-to-float v2, v2

    add-float/2addr v3, v2

    iget-object v2, p0, Lcom/termux/view/TerminalView;->mRenderer:Lcom/termux/view/TerminalRenderer;

    iget v2, v2, Lcom/termux/view/TerminalRenderer;->mFontLineSpacing:I

    int-to-float v2, v2

    div-float/2addr v3, v2

    float-to-int v2, v3

    iget v3, p0, Lcom/termux/view/TerminalView;->mTopRow:I

    add-int/2addr v2, v3

    .line 800
    iput v0, p0, Lcom/termux/view/TerminalView;->mSelX2:I

    iput v0, p0, Lcom/termux/view/TerminalView;->mSelX1:I

    .line 801
    iput v2, p0, Lcom/termux/view/TerminalView;->mSelY2:I

    iput v2, p0, Lcom/termux/view/TerminalView;->mSelY1:I

    .line 803
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    invoke-virtual {v0}, Lcom/termux/terminal/TerminalEmulator;->getScreen()Lcom/termux/terminal/TerminalBuffer;

    move-result-object v0

    .line 804
    iget v2, p0, Lcom/termux/view/TerminalView;->mSelX1:I

    iget v3, p0, Lcom/termux/view/TerminalView;->mSelY1:I

    const-string v4, " "

    invoke-virtual {v0, v2, v3, v2, v3}, Lcom/termux/terminal/TerminalBuffer;->getSelectedText(IIII)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b3

    .line 806
    :goto_7b
    iget v2, p0, Lcom/termux/view/TerminalView;->mSelX1:I

    const-string v3, ""

    if-lez v2, :cond_95

    iget v4, p0, Lcom/termux/view/TerminalView;->mSelY1:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2, v4, v2, v4}, Lcom/termux/terminal/TerminalBuffer;->getSelectedText(IIII)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_95

    .line 807
    iget v2, p0, Lcom/termux/view/TerminalView;->mSelX1:I

    sub-int/2addr v2, v1

    iput v2, p0, Lcom/termux/view/TerminalView;->mSelX1:I

    goto :goto_7b

    .line 809
    :cond_95
    :goto_95
    iget v2, p0, Lcom/termux/view/TerminalView;->mSelX2:I

    iget-object v4, p0, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    iget v4, v4, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    sub-int/2addr v4, v1

    if-ge v2, v4, :cond_b3

    iget v2, p0, Lcom/termux/view/TerminalView;->mSelX2:I

    iget v4, p0, Lcom/termux/view/TerminalView;->mSelY1:I

    add-int/2addr v2, v1

    invoke-virtual {v0, v2, v4, v2, v4}, Lcom/termux/terminal/TerminalBuffer;->getSelectedText(IIII)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b3

    .line 810
    iget v2, p0, Lcom/termux/view/TerminalView;->mSelX2:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/termux/view/TerminalView;->mSelX2:I

    goto :goto_95

    .line 814
    :cond_b3
    iput-boolean v1, p0, Lcom/termux/view/TerminalView;->mInitialTextSelection:Z

    .line 815
    iput-boolean v1, p0, Lcom/termux/view/TerminalView;->mIsDraggingLeftSelection:Z

    .line 816
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/termux/view/TerminalView;->mSelectionDownX:F

    .line 817
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/termux/view/TerminalView;->mSelectionDownY:F

    .line 819
    new-instance p1, Lcom/termux/view/TerminalView$3;

    invoke-direct {p1, p0}, Lcom/termux/view/TerminalView$3;-><init>(Lcom/termux/view/TerminalView;)V

    .line 865
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v0, v2, :cond_da

    .line 866
    new-instance v0, Lcom/termux/view/TerminalView$4;

    invoke-direct {v0, p0, p1}, Lcom/termux/view/TerminalView$4;-><init>(Lcom/termux/view/TerminalView;Landroid/view/ActionMode$Callback;)V

    invoke-virtual {p0, v0, v1}, Lcom/termux/view/TerminalView;->startActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;

    move-result-object p1

    iput-object p1, p0, Lcom/termux/view/TerminalView;->mActionMode:Landroid/view/ActionMode;

    goto :goto_e0

    .line 897
    :cond_da
    invoke-virtual {p0, p1}, Lcom/termux/view/TerminalView;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object p1

    iput-object p1, p0, Lcom/termux/view/TerminalView;->mActionMode:Landroid/view/ActionMode;

    .line 901
    :goto_e0
    invoke-virtual {p0}, Lcom/termux/view/TerminalView;->invalidate()V

    goto :goto_f5

    .line 903
    :cond_e4
    iget-object p1, p0, Lcom/termux/view/TerminalView;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    .line 904
    const/4 p1, -0x1

    iput p1, p0, Lcom/termux/view/TerminalView;->mSelY2:I

    iput p1, p0, Lcom/termux/view/TerminalView;->mSelX2:I

    iput p1, p0, Lcom/termux/view/TerminalView;->mSelY1:I

    iput p1, p0, Lcom/termux/view/TerminalView;->mSelX1:I

    .line 905
    invoke-virtual {p0}, Lcom/termux/view/TerminalView;->invalidate()V

    :goto_f5
    return-void
.end method

.method public updateSize()V
    .registers 5

    .line 740
    invoke-virtual {p0}, Lcom/termux/view/TerminalView;->getWidth()I

    move-result v0

    .line 741
    invoke-virtual {p0}, Lcom/termux/view/TerminalView;->getHeight()I

    move-result v1

    if-eqz v0, :cond_4f

    if-eqz v1, :cond_4f

    .line 742
    iget-object v2, p0, Lcom/termux/view/TerminalView;->mTermSession:Lcom/termux/terminal/TerminalSession;

    if-nez v2, :cond_11

    goto :goto_4f

    :cond_11
    int-to-float v0, v0

    .line 745
    iget-object v2, p0, Lcom/termux/view/TerminalView;->mRenderer:Lcom/termux/view/TerminalRenderer;

    iget v2, v2, Lcom/termux/view/TerminalRenderer;->mFontWidth:F

    div-float/2addr v0, v2

    float-to-int v0, v0

    const/4 v2, 0x4

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 746
    iget-object v3, p0, Lcom/termux/view/TerminalView;->mRenderer:Lcom/termux/view/TerminalRenderer;

    iget v3, v3, Lcom/termux/view/TerminalRenderer;->mFontLineSpacingAndAscent:I

    sub-int/2addr v1, v3

    iget-object v3, p0, Lcom/termux/view/TerminalView;->mRenderer:Lcom/termux/view/TerminalRenderer;

    iget v3, v3, Lcom/termux/view/TerminalRenderer;->mFontLineSpacing:I

    div-int/2addr v1, v3

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 748
    iget-object v2, p0, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    if-eqz v2, :cond_39

    iget v2, v2, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    if-ne v0, v2, :cond_39

    iget-object v2, p0, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    iget v2, v2, Lcom/termux/terminal/TerminalEmulator;->mRows:I

    if-eq v1, v2, :cond_4f

    .line 749
    :cond_39
    iget-object v2, p0, Lcom/termux/view/TerminalView;->mTermSession:Lcom/termux/terminal/TerminalSession;

    invoke-virtual {v2, v0, v1}, Lcom/termux/terminal/TerminalSession;->updateSize(II)V

    .line 750
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mTermSession:Lcom/termux/terminal/TerminalSession;

    invoke-virtual {v0}, Lcom/termux/terminal/TerminalSession;->getEmulator()Lcom/termux/terminal/TerminalEmulator;

    move-result-object v0

    iput-object v0, p0, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    .line 752
    const/4 v0, 0x0

    iput v0, p0, Lcom/termux/view/TerminalView;->mTopRow:I

    .line 753
    invoke-virtual {p0, v0, v0}, Lcom/termux/view/TerminalView;->scrollTo(II)V

    .line 754
    invoke-virtual {p0}, Lcom/termux/view/TerminalView;->invalidate()V

    :cond_4f
    :goto_4f
    return-void
.end method
