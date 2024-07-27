.class public final Lcom/termux/view/TerminalView;
.super Landroid/view/View;
.source "TerminalView.java"


# static fields
.field private static final LOG_KEY_EVENTS:Z


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

    const/4 v1, -0x1

    .line 80
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/termux/view/TerminalView;->mIsSelectingText:Z

    iput v1, p0, Lcom/termux/view/TerminalView;->mSelX1:I

    iput v1, p0, Lcom/termux/view/TerminalView;->mSelX2:I

    iput v1, p0, Lcom/termux/view/TerminalView;->mSelY1:I

    iput v1, p0, Lcom/termux/view/TerminalView;->mSelY2:I

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/termux/view/TerminalView;->mScaleFactor:F

    iput v1, p0, Lcom/termux/view/TerminalView;->mMouseScrollStartX:I

    iput v1, p0, Lcom/termux/view/TerminalView;->mMouseScrollStartY:I

    int-to-long v0, v1

    iput-wide v0, p0, Lcom/termux/view/TerminalView;->mMouseStartDownTime:J

    .line 81
    new-instance v0, Lcom/termux/view/GestureAndScaleRecognizer;

    new-instance v1, Lcom/termux/view/TerminalView$100000001;

    invoke-direct {v1, p0}, Lcom/termux/view/TerminalView$100000001;-><init>(Lcom/termux/view/TerminalView;)V

    invoke-direct {v0, p1, v1}, Lcom/termux/view/GestureAndScaleRecognizer;-><init>(Landroid/content/Context;Lcom/termux/view/GestureAndScaleRecognizer$Listener;)V

    iput-object v0, p0, Lcom/termux/view/TerminalView;->mGestureRecognizer:Lcom/termux/view/GestureAndScaleRecognizer;

    .line 200
    new-instance v0, Landroid/widget/Scroller;

    invoke-direct {v0, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/termux/view/TerminalView;->mScroller:Landroid/widget/Scroller;

    return-void
.end method

.method static synthetic access$L1000000()Z
    .registers 1

    sget-boolean v0, Lcom/termux/view/TerminalView;->LOG_KEY_EVENTS:Z

    return v0
.end method

.method static synthetic access$S1000000(Z)V
    .registers 1

    sput-boolean p0, Lcom/termux/view/TerminalView;->LOG_KEY_EVENTS:Z

    return-void
.end method


# virtual methods
.method public attachSession(Lcom/termux/terminal/TerminalSession;)Z
    .registers 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 217
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mTermSession:Lcom/termux/terminal/TerminalSession;

    if-ne p1, v0, :cond_0

    move v0, v1

    .line 229
    :goto_0
    return v0

    .line 218
    :cond_0
    iput v1, p0, Lcom/termux/view/TerminalView;->mTopRow:I

    .line 220
    iput-object p1, p0, Lcom/termux/view/TerminalView;->mTermSession:Lcom/termux/terminal/TerminalSession;

    .line 221
    const/4 v0, 0x0

    check-cast v0, Lcom/termux/terminal/TerminalEmulator;

    iput-object v0, p0, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    .line 222
    iput v1, p0, Lcom/termux/view/TerminalView;->mCombiningAccent:I

    .line 224
    invoke-virtual {p0}, Lcom/termux/view/TerminalView;->updateSize()V

    .line 227
    invoke-virtual {p0, v2}, Lcom/termux/view/TerminalView;->setVerticalScrollBarEnabled(Z)V

    move v0, v2

    .line 229
    goto :goto_0
.end method

.method protected computeVerticalScrollExtent()I
    .registers 2
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 346
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    iget v0, v0, Lcom/termux/terminal/TerminalEmulator;->mRows:I

    goto :goto_0
.end method

.method protected computeVerticalScrollOffset()I
    .registers 3
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 351
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    invoke-virtual {v0}, Lcom/termux/terminal/TerminalEmulator;->getScreen()Lcom/termux/terminal/TerminalBuffer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/termux/terminal/TerminalBuffer;->getActiveRows()I

    move-result v0

    iget v1, p0, Lcom/termux/view/TerminalView;->mTopRow:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    iget v1, v1, Lcom/termux/terminal/TerminalEmulator;->mRows:I

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method protected computeVerticalScrollRange()I
    .registers 2
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 341
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    invoke-virtual {v0}, Lcom/termux/terminal/TerminalEmulator;->getScreen()Lcom/termux/terminal/TerminalBuffer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/termux/terminal/TerminalBuffer;->getActiveRows()I

    move-result v0

    goto :goto_0
.end method

.method doScroll(Landroid/view/MotionEvent;I)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/MotionEvent;",
            "I)V"
        }
    .end annotation

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 435
    if-ltz p2, :cond_0

    move v0, v1

    .line 436
    :goto_0
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v5

    move v4, v1

    .line 437
    :goto_1
    if-lt v4, v5, :cond_1

    return-void

    :cond_0
    move v0, v2

    .line 435
    goto :goto_0

    .line 438
    :cond_1
    iget-object v3, p0, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    invoke-virtual {v3}, Lcom/termux/terminal/TerminalEmulator;->isMouseTrackingActive()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 439
    if-eqz v0, :cond_3

    const/16 v3, 0x40

    :goto_2
    invoke-virtual {p0, p1, v3, v2}, Lcom/termux/view/TerminalView;->sendMouseEventCode(Landroid/view/MotionEvent;IZ)V

    .line 437
    :cond_2
    :goto_3
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto :goto_1

    .line 439
    :cond_3
    const/16 v3, 0x41

    goto :goto_2

    .line 440
    :cond_4
    iget-object v3, p0, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    invoke-virtual {v3}, Lcom/termux/terminal/TerminalEmulator;->isAlternateBufferActive()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 443
    if-eqz v0, :cond_5

    const/16 v3, 0x13

    :goto_4
    invoke-virtual {p0, v3, v1}, Lcom/termux/view/TerminalView;->handleKeyCode(II)Z

    goto :goto_3

    :cond_5
    const/16 v3, 0x14

    goto :goto_4

    .line 445
    :cond_6
    iget-object v3, p0, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    invoke-virtual {v3}, Lcom/termux/terminal/TerminalEmulator;->getScreen()Lcom/termux/terminal/TerminalBuffer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/termux/terminal/TerminalBuffer;->getActiveTranscriptRows()I

    move-result v3

    neg-int v6, v3

    iget v7, p0, Lcom/termux/view/TerminalView;->mTopRow:I

    if-eqz v0, :cond_7

    const/4 v3, -0x1

    :goto_5
    add-int/2addr v3, v7

    invoke-static {v6, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, p0, Lcom/termux/view/TerminalView;->mTopRow:I

    .line 446
    invoke-virtual {p0}, Lcom/termux/view/TerminalView;->awakenScrollBars()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {p0}, Lcom/termux/view/TerminalView;->invalidate()V

    goto :goto_3

    :cond_7
    move v3, v2

    .line 445
    goto :goto_5
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

    move-result-object v0

    .line 700
    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 702
    :goto_0
    return v0

    .line 701
    :cond_0
    iget-object v1, p0, Lcom/termux/view/TerminalView;->mTermSession:Lcom/termux/terminal/TerminalSession;

    invoke-virtual {v1, v0}, Lcom/termux/terminal/TerminalSession;->write(Ljava/lang/String;)V

    .line 702
    const/4 v0, 0x1

    goto :goto_0
.end method

.method inputCodePoint(IZZ)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZZ)V"
        }
    .end annotation

    const/16 v2, 0x5e

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 646
    if-nez p2, :cond_2

    iget-object v3, p0, Lcom/termux/view/TerminalView;->mClient:Lcom/termux/view/TerminalViewClient;

    invoke-interface {v3}, Lcom/termux/view/TerminalViewClient;->readControlKey()Z

    move-result v3

    if-nez v3, :cond_2

    move v3, v1

    .line 647
    :goto_0
    if-nez p3, :cond_0

    iget-object v4, p0, Lcom/termux/view/TerminalView;->mClient:Lcom/termux/view/TerminalViewClient;

    invoke-interface {v4}, Lcom/termux/view/TerminalViewClient;->readAltKey()Z

    move-result v4

    if-nez v4, :cond_0

    move v0, v1

    .line 649
    :cond_0
    iget-object v4, p0, Lcom/termux/view/TerminalView;->mClient:Lcom/termux/view/TerminalViewClient;

    iget-object v5, p0, Lcom/termux/view/TerminalView;->mTermSession:Lcom/termux/terminal/TerminalSession;

    invoke-interface {v4, p1, v3, v5}, Lcom/termux/view/TerminalViewClient;->onCodePoint(IZLcom/termux/terminal/TerminalSession;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 692
    :cond_1
    :goto_1
    return-void

    :cond_2
    move v3, v0

    .line 646
    goto :goto_0

    .line 651
    :cond_3
    if-eqz v3, :cond_11

    .line 652
    const/16 v3, 0x61

    if-lt p1, v3, :cond_5

    const/16 v3, 0x7a

    if-gt p1, v3, :cond_5

    .line 653
    add-int/lit8 v1, p1, -0x61

    add-int/lit8 v1, v1, 0x1

    .line 675
    :cond_4
    :goto_2
    const/4 v3, -0x1

    if-le v1, v3, :cond_1

    .line 679
    sparse-switch v1, :sswitch_data_0

    .line 692
    :goto_3
    iget-object v2, p0, Lcom/termux/view/TerminalView;->mTermSession:Lcom/termux/terminal/TerminalSession;

    invoke-virtual {v2, v0, v1}, Lcom/termux/terminal/TerminalSession;->writeCodePoint(ZI)V

    goto :goto_1

    .line 654
    :cond_5
    const/16 v3, 0x41

    if-lt p1, v3, :cond_6

    const/16 v3, 0x5a

    if-gt p1, v3, :cond_6

    .line 655
    add-int/lit8 v1, p1, -0x41

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 656
    :cond_6
    const/16 v3, 0x20

    if-eq p1, v3, :cond_4

    const/16 v3, 0x32

    if-eq p1, v3, :cond_4

    .line 658
    const/16 v1, 0x5b

    if-eq p1, v1, :cond_7

    const/16 v1, 0x33

    if-ne p1, v1, :cond_8

    .line 659
    :cond_7
    const/16 v1, 0x1b

    goto :goto_2

    .line 660
    :cond_8
    const/16 v1, 0x5c

    if-eq p1, v1, :cond_9

    const/16 v1, 0x34

    if-ne p1, v1, :cond_a

    .line 661
    :cond_9
    const/16 v1, 0x1c

    goto :goto_2

    .line 662
    :cond_a
    const/16 v1, 0x5d

    if-eq p1, v1, :cond_b

    const/16 v1, 0x35

    if-ne p1, v1, :cond_c

    .line 663
    :cond_b
    const/16 v1, 0x1d

    goto :goto_2

    .line 664
    :cond_c
    if-eq p1, v2, :cond_d

    const/16 v1, 0x36

    if-ne p1, v1, :cond_e

    .line 665
    :cond_d
    const/16 v1, 0x1e

    goto :goto_2

    .line 666
    :cond_e
    const/16 v1, 0x5f

    if-eq p1, v1, :cond_f

    const/16 v1, 0x37

    if-eq p1, v1, :cond_f

    const/16 v1, 0x2f

    if-ne p1, v1, :cond_10

    .line 669
    :cond_f
    const/16 v1, 0x1f

    goto :goto_2

    .line 670
    :cond_10
    const/16 v1, 0x38

    if-ne p1, v1, :cond_11

    .line 671
    const/16 v1, 0x7f

    goto :goto_2

    .line 681
    :sswitch_0
    const/16 v1, 0x7e

    .line 682
    goto :goto_3

    .line 684
    :sswitch_1
    const/16 v1, 0x60

    .line 685
    goto :goto_3

    :sswitch_2
    move v1, v2

    .line 688
    goto :goto_3

    :cond_11
    move v1, p1

    goto :goto_2

    .line 679
    :sswitch_data_0
    .sparse-switch
        0x2c6 -> :sswitch_2
        0x2cb -> :sswitch_1
        0x2dc -> :sswitch_0
    .end sparse-switch
.end method

.method public isOpaque()Z
    .registers 2
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 413
    const/4 v0, 0x1

    return v0
.end method

.method public onCheckIsTextEditor()Z
    .registers 2
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 408
    const/4 v0, 0x1

    return v0
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .registers 4
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 241
    const/4 v0, 0x0

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 245
    const/high16 v0, 0x2000000

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 247
    new-instance v0, Lcom/termux/view/TerminalView$100000002;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p0, v1}, Lcom/termux/view/TerminalView$100000002;-><init>(Lcom/termux/view/TerminalView;Landroid/view/View;Z)V

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 760
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    if-nez v0, :cond_1

    .line 761
    const/high16 v0, -0x1000000

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 777
    :cond_0
    :goto_0
    return-void

    .line 763
    :cond_1
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mRenderer:Lcom/termux/view/TerminalRenderer;

    iget-object v1, p0, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    iget v3, p0, Lcom/termux/view/TerminalView;->mTopRow:I

    iget v4, p0, Lcom/termux/view/TerminalView;->mSelY1:I

    iget v5, p0, Lcom/termux/view/TerminalView;->mSelY2:I

    iget v6, p0, Lcom/termux/view/TerminalView;->mSelX1:I

    iget v7, p0, Lcom/termux/view/TerminalView;->mSelX2:I

    move-object v2, p1

    invoke-virtual/range {v0 .. v7}, Lcom/termux/view/TerminalRenderer;->render(Lcom/termux/terminal/TerminalEmulator;Landroid/graphics/Canvas;IIIII)V

    .line 765
    iget-boolean v0, p0, Lcom/termux/view/TerminalView;->mIsSelectingText:Z

    if-eqz v0, :cond_0

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

    mul-float/2addr v2, v3

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

    mul-int/2addr v3, v4

    iget-object v4, p0, Lcom/termux/view/TerminalView;->mRenderer:Lcom/termux/view/TerminalRenderer;

    iget v4, v4, Lcom/termux/view/TerminalRenderer;->mFontLineSpacingAndAscent:I

    add-int/2addr v3, v4

    .line 771
    iget-object v4, p0, Lcom/termux/view/TerminalView;->mLeftSelectionHandle:Landroid/graphics/drawable/BitmapDrawable;

    sub-int v5, v2, v0

    iget-object v6, p0, Lcom/termux/view/TerminalView;->mLeftSelectionHandle:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicHeight()I

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

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    sub-int v1, v2, v1

    .line 775
    iget v2, p0, Lcom/termux/view/TerminalView;->mSelY2:I

    add-int/lit8 v2, v2, 0x1

    iget v3, p0, Lcom/termux/view/TerminalView;->mTopRow:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/termux/view/TerminalView;->mRenderer:Lcom/termux/view/TerminalRenderer;

    iget v3, v3, Lcom/termux/view/TerminalRenderer;->mFontLineSpacing:I

    mul-int/2addr v2, v3

    iget-object v3, p0, Lcom/termux/view/TerminalView;->mRenderer:Lcom/termux/view/TerminalRenderer;

    iget v3, v3, Lcom/termux/view/TerminalRenderer;->mFontLineSpacingAndAscent:I

    add-int/2addr v2, v3

    .line 776
    iget-object v3, p0, Lcom/termux/view/TerminalView;->mRightSelectionHandle:Landroid/graphics/drawable/BitmapDrawable;

    add-int/2addr v0, v1

    iget-object v4, p0, Lcom/termux/view/TerminalView;->mRightSelectionHandle:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicHeight()I

    move-result v4

    add-int/2addr v4, v2

    invoke-virtual {v3, v1, v2, v0, v4}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(IIII)V

    .line 777
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mRightSelectionHandle:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_0
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .registers 6
    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 454
    iget-object v2, p0, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    if-eqz v2, :cond_0

    const/16 v2, 0x2002

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_0

    .line 456
    const/16 v2, 0x9

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v2

    const/4 v3, 0x0

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_1

    .line 457
    :goto_0
    if-eqz v0, :cond_2

    const/4 v0, -0x3

    :goto_1
    invoke-virtual {p0, p1, v0}, Lcom/termux/view/TerminalView;->doScroll(Landroid/view/MotionEvent;I)V

    move v0, v1

    .line 460
    :cond_0
    return v0

    :cond_1
    move v0, v1

    .line 456
    goto :goto_0

    .line 457
    :cond_2
    const/4 v0, 0x3

    goto :goto_1
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 11
    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/high16 v7, -0x80000000

    const/4 v2, 0x0

    const/4 v0, 0x1

    .line 577
    iget-object v1, p0, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    if-nez v1, :cond_1

    .line 637
    :cond_0
    :goto_0
    return v0

    .line 579
    :cond_1
    iget-object v1, p0, Lcom/termux/view/TerminalView;->mClient:Lcom/termux/view/TerminalViewClient;

    iget-object v3, p0, Lcom/termux/view/TerminalView;->mTermSession:Lcom/termux/terminal/TerminalSession;

    invoke-interface {v1, p1, p2, v3}, Lcom/termux/view/TerminalViewClient;->onKeyDown(ILandroid/view/KeyEvent;Lcom/termux/terminal/TerminalSession;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 580
    invoke-virtual {p0}, Lcom/termux/view/TerminalView;->invalidate()V

    goto :goto_0

    .line 582
    :cond_2
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isSystem()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/termux/view/TerminalView;->mClient:Lcom/termux/view/TerminalViewClient;

    invoke-interface {v1}, Lcom/termux/view/TerminalViewClient;->shouldBackButtonBeMappedToEscape()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x4

    if-eq p1, v1, :cond_4

    .line 583
    :cond_3
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    .line 584
    :cond_4
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_5

    if-nez p1, :cond_5

    .line 585
    iget-object v1, p0, Lcom/termux/view/TerminalView;->mTermSession:Lcom/termux/terminal/TerminalSession;

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getCharacters()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/termux/terminal/TerminalSession;->write(Ljava/lang/String;)V

    goto :goto_0

    .line 589
    :cond_5
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v1

    .line 590
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result v5

    .line 591
    and-int/lit8 v3, v1, 0x10

    if-nez v3, :cond_9

    move v4, v2

    .line 592
    :goto_1
    and-int/lit8 v1, v1, 0x20

    if-nez v1, :cond_a

    move v3, v2

    .line 595
    :goto_2
    if-eqz v5, :cond_f

    const/high16 v1, 0x40000000    # 2.0f

    .line 596
    :goto_3
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v6

    if-eqz v6, :cond_6

    or-int/2addr v1, v7

    .line 597
    :cond_6
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v6

    if-eqz v6, :cond_7

    const/high16 v6, 0x20000000

    or-int/2addr v1, v6

    .line 598
    :cond_7
    invoke-virtual {p0, p1, v1}, Lcom/termux/view/TerminalView;->handleKeyCode(II)Z

    move-result v1

    if-nez v1, :cond_0

    .line 604
    const/16 v1, 0x7000

    .line 605
    if-eqz v3, :cond_b

    .line 611
    :goto_4
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v3

    .line 613
    xor-int/lit8 v1, v1, -0x1

    and-int/2addr v1, v3

    invoke-virtual {p2, v1}, Landroid/view/KeyEvent;->getUnicodeChar(I)I

    move-result v3

    .line 616
    if-eqz v3, :cond_0

    .line 620
    iget v6, p0, Lcom/termux/view/TerminalView;->mCombiningAccent:I

    .line 621
    and-int v1, v3, v7

    if-eqz v1, :cond_c

    .line 623
    iget v1, p0, Lcom/termux/view/TerminalView;->mCombiningAccent:I

    if-eqz v1, :cond_8

    .line 624
    iget v1, p0, Lcom/termux/view/TerminalView;->mCombiningAccent:I

    invoke-virtual {p0, v1, v5, v4}, Lcom/termux/view/TerminalView;->inputCodePoint(IZZ)V

    .line 625
    :cond_8
    const v1, 0x7fffffff

    and-int/2addr v1, v3

    iput v1, p0, Lcom/termux/view/TerminalView;->mCombiningAccent:I

    .line 635
    :goto_5
    iget v1, p0, Lcom/termux/view/TerminalView;->mCombiningAccent:I

    if-eq v1, v6, :cond_0

    invoke-virtual {p0}, Lcom/termux/view/TerminalView;->invalidate()V

    goto/16 :goto_0

    :cond_9
    move v4, v0

    .line 591
    goto :goto_1

    :cond_a
    move v3, v0

    .line 592
    goto :goto_2

    .line 609
    :cond_b
    const/16 v1, 0x7012

    goto :goto_4

    .line 627
    :cond_c
    iget v1, p0, Lcom/termux/view/TerminalView;->mCombiningAccent:I

    if-eqz v1, :cond_e

    .line 628
    iget v1, p0, Lcom/termux/view/TerminalView;->mCombiningAccent:I

    invoke-static {v1, v3}, Landroid/view/KeyCharacterMap;->getDeadChar(II)I

    move-result v1

    .line 629
    if-lez v1, :cond_d

    .line 630
    :goto_6
    iput v2, p0, Lcom/termux/view/TerminalView;->mCombiningAccent:I

    .line 632
    :goto_7
    invoke-virtual {p0, v1, v5, v4}, Lcom/termux/view/TerminalView;->inputCodePoint(IZZ)V

    goto :goto_5

    :cond_d
    move v1, v3

    goto :goto_6

    :cond_e
    move v1, v3

    goto :goto_7

    :cond_f
    move v1, v2

    goto :goto_3
.end method

.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .registers 4
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 556
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 557
    iget-boolean v0, p0, Lcom/termux/view/TerminalView;->mIsSelectingText:Z

    if-eqz v0, :cond_0

    .line 558
    const/4 v0, 0x0

    check-cast v0, Landroid/view/MotionEvent;

    invoke-virtual {p0, v0}, Lcom/termux/view/TerminalView;->toggleSelectingText(Landroid/view/MotionEvent;)V

    .line 559
    const/4 v0, 0x1

    .line 570
    :goto_0
    return v0

    .line 560
    :cond_0
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mClient:Lcom/termux/view/TerminalViewClient;

    invoke-interface {v0}, Lcom/termux/view/TerminalViewClient;->shouldBackButtonBeMappedToEscape()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 562
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 570
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyPreIme(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    .line 564
    :pswitch_0
    invoke-virtual {p0, p1, p2}, Lcom/termux/view/TerminalView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    .line 566
    :pswitch_1
    invoke-virtual {p0, p1, p2}, Lcom/termux/view/TerminalView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    .line 562
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 5
    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/4 v0, 0x1

    .line 716
    iget-object v1, p0, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    if-nez v1, :cond_1

    .line 726
    :cond_0
    :goto_0
    return v0

    .line 718
    :cond_1
    iget-object v1, p0, Lcom/termux/view/TerminalView;->mClient:Lcom/termux/view/TerminalViewClient;

    invoke-interface {v1, p1, p2}, Lcom/termux/view/TerminalViewClient;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 719
    invoke-virtual {p0}, Lcom/termux/view/TerminalView;->invalidate()V

    goto :goto_0

    .line 721
    :cond_2
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isSystem()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 723
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onScreenUpdated()V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    const/4 v1, 0x0

    .line 355
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    if-nez v0, :cond_0

    .line 387
    :goto_0
    return-void

    .line 358
    :cond_0
    iget-boolean v0, p0, Lcom/termux/view/TerminalView;->mIsSelectingText:Z

    if-eqz v0, :cond_4

    .line 360
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    invoke-virtual {v0}, Lcom/termux/terminal/TerminalEmulator;->getScreen()Lcom/termux/terminal/TerminalBuffer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/termux/terminal/TerminalBuffer;->getActiveTranscriptRows()I

    move-result v0

    .line 361
    iget-object v2, p0, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    invoke-virtual {v2}, Lcom/termux/terminal/TerminalEmulator;->getScrollCounter()I

    move-result v2

    .line 362
    iget v3, p0, Lcom/termux/view/TerminalView;->mTopRow:I

    neg-int v3, v3

    add-int/2addr v3, v2

    if-le v3, v0, :cond_3

    .line 365
    const/4 v0, 0x0

    check-cast v0, Landroid/view/MotionEvent;

    invoke-virtual {p0, v0}, Lcom/termux/view/TerminalView;->toggleSelectingText(Landroid/view/MotionEvent;)V

    move v0, v1

    .line 374
    :goto_1
    if-nez v0, :cond_2

    iget v0, p0, Lcom/termux/view/TerminalView;->mTopRow:I

    if-eqz v0, :cond_2

    .line 376
    iget v0, p0, Lcom/termux/view/TerminalView;->mTopRow:I

    const/4 v2, -0x3

    if-ge v0, v2, :cond_1

    .line 380
    invoke-virtual {p0}, Lcom/termux/view/TerminalView;->awakenScrollBars()Z

    .line 382
    :cond_1
    iput v1, p0, Lcom/termux/view/TerminalView;->mTopRow:I

    .line 385
    :cond_2
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    invoke-virtual {v0}, Lcom/termux/terminal/TerminalEmulator;->clearScrollCounter()V

    .line 387
    invoke-virtual {p0}, Lcom/termux/view/TerminalView;->invalidate()V

    goto :goto_0

    .line 367
    :cond_3
    const/4 v0, 0x1

    .line 368
    iget v3, p0, Lcom/termux/view/TerminalView;->mTopRow:I

    sub-int/2addr v3, v2

    iput v3, p0, Lcom/termux/view/TerminalView;->mTopRow:I

    .line 369
    iget v3, p0, Lcom/termux/view/TerminalView;->mSelY1:I

    sub-int/2addr v3, v2

    iput v3, p0, Lcom/termux/view/TerminalView;->mSelY1:I

    .line 370
    iget v3, p0, Lcom/termux/view/TerminalView;->mSelY2:I

    sub-int v2, v3, v2

    iput v2, p0, Lcom/termux/view/TerminalView;->mSelY2:I

    goto :goto_1

    :cond_4
    move v0, v1

    goto :goto_1
.end method

.method protected onSizeChanged(IIII)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 735
    invoke-virtual {p0}, Lcom/termux/view/TerminalView;->updateSize()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 10
    .annotation runtime Landroid/annotation/SuppressLint;
        value = "ClickableViewAccessibility"
    .end annotation

    .annotation runtime Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 467
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    if-nez v0, :cond_1

    .line 549
    :cond_0
    :goto_0
    return v2

    .line 468
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 470
    iget-boolean v3, p0, Lcom/termux/view/TerminalView;->mIsSelectingText:Z

    if-eqz v3, :cond_a

    .line 471
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iget-object v4, p0, Lcom/termux/view/TerminalView;->mRenderer:Lcom/termux/view/TerminalRenderer;

    iget v4, v4, Lcom/termux/view/TerminalRenderer;->mFontLineSpacing:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    float-to-int v3, v3

    iget v4, p0, Lcom/termux/view/TerminalView;->mTopRow:I

    add-int/2addr v3, v4

    .line 472
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    iget-object v5, p0, Lcom/termux/view/TerminalView;->mRenderer:Lcom/termux/view/TerminalRenderer;

    iget v5, v5, Lcom/termux/view/TerminalRenderer;->mFontWidth:F

    div-float/2addr v4, v5

    float-to-int v4, v4

    .line 474
    packed-switch v0, :pswitch_data_0

    .line 521
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mGestureRecognizer:Lcom/termux/view/GestureAndScaleRecognizer;

    invoke-virtual {v0, p1}, Lcom/termux/view/GestureAndScaleRecognizer;->onTouchEvent(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 476
    :pswitch_0
    iput-boolean v1, p0, Lcom/termux/view/TerminalView;->mInitialTextSelection:Z

    goto :goto_1

    .line 479
    :pswitch_1
    iget v0, p0, Lcom/termux/view/TerminalView;->mSelX1:I

    sub-int v0, v4, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v5, p0, Lcom/termux/view/TerminalView;->mSelY1:I

    sub-int v5, v3, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    .line 480
    iget v6, p0, Lcom/termux/view/TerminalView;->mSelX2:I

    sub-int/2addr v4, v6

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    iget v6, p0, Lcom/termux/view/TerminalView;->mSelY2:I

    sub-int/2addr v3, v6

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 481
    add-int/2addr v0, v5

    add-int/2addr v3, v4

    if-le v0, v3, :cond_3

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lcom/termux/view/TerminalView;->mIsDraggingLeftSelection:Z

    .line 482
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/termux/view/TerminalView;->mSelectionDownX:F

    .line 483
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/termux/view/TerminalView;->mSelectionDownY:F

    goto :goto_1

    :cond_3
    move v0, v2

    .line 481
    goto :goto_2

    .line 486
    :pswitch_2
    iget-boolean v0, p0, Lcom/termux/view/TerminalView;->mInitialTextSelection:Z

    if-nez v0, :cond_2

    .line 487
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v3, p0, Lcom/termux/view/TerminalView;->mSelectionDownX:F

    .line 488
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iget v5, p0, Lcom/termux/view/TerminalView;->mSelectionDownY:F

    .line 489
    sub-float/2addr v0, v3

    iget-object v3, p0, Lcom/termux/view/TerminalView;->mRenderer:Lcom/termux/view/TerminalRenderer;

    iget v3, v3, Lcom/termux/view/TerminalRenderer;->mFontWidth:F

    div-float/2addr v0, v3

    float-to-double v6, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v0, v6

    .line 490
    sub-float v3, v4, v5

    iget-object v4, p0, Lcom/termux/view/TerminalView;->mRenderer:Lcom/termux/view/TerminalRenderer;

    iget v4, v4, Lcom/termux/view/TerminalRenderer;->mFontLineSpacing:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    float-to-double v4, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v3, v4

    .line 491
    iget v4, p0, Lcom/termux/view/TerminalView;->mSelectionDownX:F

    int-to-float v5, v0

    iget-object v6, p0, Lcom/termux/view/TerminalView;->mRenderer:Lcom/termux/view/TerminalRenderer;

    iget v6, v6, Lcom/termux/view/TerminalRenderer;->mFontWidth:F

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    iput v4, p0, Lcom/termux/view/TerminalView;->mSelectionDownX:F

    .line 492
    iget v4, p0, Lcom/termux/view/TerminalView;->mSelectionDownY:F

    iget-object v5, p0, Lcom/termux/view/TerminalView;->mRenderer:Lcom/termux/view/TerminalRenderer;

    iget v5, v5, Lcom/termux/view/TerminalRenderer;->mFontLineSpacing:I

    mul-int/2addr v5, v3

    int-to-float v5, v5

    add-float/2addr v4, v5

    iput v4, p0, Lcom/termux/view/TerminalView;->mSelectionDownY:F

    .line 493
    iget-boolean v4, p0, Lcom/termux/view/TerminalView;->mIsDraggingLeftSelection:Z

    if-eqz v4, :cond_8

    .line 494
    iget v4, p0, Lcom/termux/view/TerminalView;->mSelX1:I

    add-int/2addr v0, v4

    iput v0, p0, Lcom/termux/view/TerminalView;->mSelX1:I

    .line 495
    iget v0, p0, Lcom/termux/view/TerminalView;->mSelY1:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/termux/view/TerminalView;->mSelY1:I

    .line 501
    :goto_3
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    iget v0, v0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    iget v3, p0, Lcom/termux/view/TerminalView;->mSelX1:I

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/termux/view/TerminalView;->mSelX1:I

    .line 502
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    iget v0, v0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    iget v3, p0, Lcom/termux/view/TerminalView;->mSelX2:I

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/termux/view/TerminalView;->mSelX2:I

    .line 504
    iget v0, p0, Lcom/termux/view/TerminalView;->mSelY1:I

    iget v3, p0, Lcom/termux/view/TerminalView;->mSelY2:I

    if-ne v0, v3, :cond_4

    iget v0, p0, Lcom/termux/view/TerminalView;->mSelX1:I

    iget v3, p0, Lcom/termux/view/TerminalView;->mSelX2:I

    if-gt v0, v3, :cond_5

    :cond_4
    iget v0, p0, Lcom/termux/view/TerminalView;->mSelY1:I

    iget v3, p0, Lcom/termux/view/TerminalView;->mSelY2:I

    if-le v0, v3, :cond_6

    .line 506
    :cond_5
    iget-boolean v0, p0, Lcom/termux/view/TerminalView;->mIsDraggingLeftSelection:Z

    if-eqz v0, :cond_9

    :goto_4
    iput-boolean v1, p0, Lcom/termux/view/TerminalView;->mIsDraggingLeftSelection:Z

    .line 507
    iget v0, p0, Lcom/termux/view/TerminalView;->mSelX1:I

    iget v1, p0, Lcom/termux/view/TerminalView;->mSelY1:I

    .line 508
    iget v3, p0, Lcom/termux/view/TerminalView;->mSelX2:I

    iput v3, p0, Lcom/termux/view/TerminalView;->mSelX1:I

    .line 509
    iget v3, p0, Lcom/termux/view/TerminalView;->mSelY2:I

    iput v3, p0, Lcom/termux/view/TerminalView;->mSelY1:I

    .line 510
    iput v0, p0, Lcom/termux/view/TerminalView;->mSelX2:I

    .line 511
    iput v1, p0, Lcom/termux/view/TerminalView;->mSelY2:I

    .line 514
    :cond_6
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_7

    .line 515
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->invalidateContentRect()V

    .line 516
    :cond_7
    invoke-virtual {p0}, Lcom/termux/view/TerminalView;->invalidate()V

    goto/16 :goto_1

    .line 497
    :cond_8
    iget v4, p0, Lcom/termux/view/TerminalView;->mSelX2:I

    add-int/2addr v0, v4

    iput v0, p0, Lcom/termux/view/TerminalView;->mSelX2:I

    .line 498
    iget v0, p0, Lcom/termux/view/TerminalView;->mSelY2:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/termux/view/TerminalView;->mSelY2:I

    goto :goto_3

    :cond_9
    move v1, v2

    .line 506
    goto :goto_4

    .line 523
    :cond_a
    const/16 v3, 0x2002

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 524
    const/4 v3, 0x2

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->isButtonPressed(I)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 525
    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/termux/view/TerminalView;->showContextMenu()Z

    goto/16 :goto_0

    .line 527
    :cond_b
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->isButtonPressed(I)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 528
    invoke-virtual {p0}, Lcom/termux/view/TerminalView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v3, "clipboard"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    .line 529
    invoke-virtual {v0}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v0

    .line 530
    if-eqz v0, :cond_c

    .line 531
    invoke-virtual {v0, v1}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v0

    invoke-virtual {p0}, Lcom/termux/view/TerminalView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ClipData$Item;->coerceToText(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 532
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_c

    iget-object v1, p0, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/termux/terminal/TerminalEmulator;->paste(Ljava/lang/String;)V

    .line 548
    :cond_c
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mGestureRecognizer:Lcom/termux/view/GestureAndScaleRecognizer;

    invoke-virtual {v0, p1}, Lcom/termux/view/GestureAndScaleRecognizer;->onTouchEvent(Landroid/view/MotionEvent;)V

    goto/16 :goto_0

    .line 534
    :cond_d
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    invoke-virtual {v0}, Lcom/termux/terminal/TerminalEmulator;->isMouseTrackingActive()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 535
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_1

    goto/16 :goto_0

    .line 538
    :pswitch_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_e

    move v0, v1

    :goto_5
    invoke-virtual {p0, p1, v1, v0}, Lcom/termux/view/TerminalView;->sendMouseEventCode(Landroid/view/MotionEvent;IZ)V

    goto/16 :goto_0

    :cond_e
    move v0, v2

    goto :goto_5

    .line 541
    :pswitch_4
    const/16 v0, 0x20

    invoke-virtual {p0, p1, v0, v2}, Lcom/termux/view/TerminalView;->sendMouseEventCode(Landroid/view/MotionEvent;IZ)V

    goto/16 :goto_0

    .line 474
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch

    .line 535
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method sendMouseEventCode(Landroid/view/MotionEvent;IZ)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/MotionEvent;",
            "IZ)V"
        }
    .end annotation

    .line 418
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v1, p0, Lcom/termux/view/TerminalView;->mRenderer:Lcom/termux/view/TerminalRenderer;

    iget v1, v1, Lcom/termux/view/TerminalRenderer;->mFontWidth:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    add-int/lit8 v1, v0, 0x1

    .line 419
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget-object v2, p0, Lcom/termux/view/TerminalView;->mRenderer:Lcom/termux/view/TerminalRenderer;

    iget v2, v2, Lcom/termux/view/TerminalRenderer;->mFontLineSpacingAndAscent:I

    int-to-float v2, v2

    sub-float/2addr v0, v2

    iget-object v2, p0, Lcom/termux/view/TerminalView;->mRenderer:Lcom/termux/view/TerminalRenderer;

    iget v2, v2, Lcom/termux/view/TerminalRenderer;->mFontLineSpacing:I

    int-to-float v2, v2

    div-float/2addr v0, v2

    float-to-int v0, v0

    add-int/lit8 v0, v0, 0x1

    .line 420
    if-eqz p3, :cond_1

    const/16 v2, 0x41

    if-eq p2, v2, :cond_0

    const/16 v2, 0x40

    if-ne p2, v2, :cond_1

    .line 421
    :cond_0
    iget-wide v2, p0, Lcom/termux/view/TerminalView;->mMouseStartDownTime:J

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    .line 422
    iget v1, p0, Lcom/termux/view/TerminalView;->mMouseScrollStartX:I

    .line 423
    iget v0, p0, Lcom/termux/view/TerminalView;->mMouseScrollStartY:I

    .line 430
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    invoke-virtual {v2, p2, v1, v0, p3}, Lcom/termux/terminal/TerminalEmulator;->sendMouseEvent(IIIZ)V

    return-void

    .line 425
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/termux/view/TerminalView;->mMouseStartDownTime:J

    .line 426
    iput v1, p0, Lcom/termux/view/TerminalView;->mMouseScrollStartX:I

    .line 427
    iput v0, p0, Lcom/termux/view/TerminalView;->mMouseScrollStartY:I

    goto :goto_0
.end method

.method public setOnKeyListener(Lcom/termux/view/TerminalViewClient;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/termux/view/TerminalViewClient;",
            ")V"
        }
    .end annotation

    .line 208
    iput-object p1, p0, Lcom/termux/view/TerminalView;->mClient:Lcom/termux/view/TerminalViewClient;

    return-void
.end method

.method public setTextSize(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 396
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mRenderer:Lcom/termux/view/TerminalRenderer;

    if-nez v0, :cond_0

    sget-object v0, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    :goto_0
    new-instance v1, Lcom/termux/view/TerminalRenderer;

    invoke-direct {v1, p1, v0}, Lcom/termux/view/TerminalRenderer;-><init>(ILandroid/graphics/Typeface;)V

    iput-object v1, p0, Lcom/termux/view/TerminalView;->mRenderer:Lcom/termux/view/TerminalRenderer;

    .line 397
    invoke-virtual {p0}, Lcom/termux/view/TerminalView;->updateSize()V

    return-void

    .line 396
    :cond_0
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mRenderer:Lcom/termux/view/TerminalRenderer;

    iget-object v0, v0, Lcom/termux/view/TerminalRenderer;->mTypeface:Landroid/graphics/Typeface;

    goto :goto_0
.end method

.method public setTypeface(Landroid/graphics/Typeface;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Typeface;",
            ")V"
        }
    .end annotation

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
    .registers 9
    .annotation runtime Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/MotionEvent;",
            ")V"
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v4, -0x1

    .line 785
    iget-boolean v0, p0, Lcom/termux/view/TerminalView;->mIsSelectingText:Z

    if-eqz v0, :cond_3

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/termux/view/TerminalView;->mIsSelectingText:Z

    .line 786
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mClient:Lcom/termux/view/TerminalViewClient;

    iget-boolean v3, p0, Lcom/termux/view/TerminalView;->mIsSelectingText:Z

    invoke-interface {v0, v3}, Lcom/termux/view/TerminalViewClient;->copyModeChanged(Z)V

    .line 788
    iget-boolean v0, p0, Lcom/termux/view/TerminalView;->mIsSelectingText:Z

    if-eqz v0, :cond_8

    .line 789
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mLeftSelectionHandle:Landroid/graphics/drawable/BitmapDrawable;

    if-nez v0, :cond_0

    .line 790
    invoke-virtual {p0}, Lcom/termux/view/TerminalView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v3, "text_select_handle_left_material"

    invoke-static {v3}, Lcom/blankj/utilcode/util/ResourceUtils;->getDrawableIdByName(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    iput-object v0, p0, Lcom/termux/view/TerminalView;->mLeftSelectionHandle:Landroid/graphics/drawable/BitmapDrawable;

    .line 791
    invoke-virtual {p0}, Lcom/termux/view/TerminalView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v3, "text_select_handle_right_material"

    invoke-static {v3}, Lcom/blankj/utilcode/util/ResourceUtils;->getDrawableIdByName(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    iput-object v0, p0, Lcom/termux/view/TerminalView;->mRightSelectionHandle:Landroid/graphics/drawable/BitmapDrawable;

    .line 794
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v3, p0, Lcom/termux/view/TerminalView;->mRenderer:Lcom/termux/view/TerminalRenderer;

    iget v3, v3, Lcom/termux/view/TerminalRenderer;->mFontWidth:F

    div-float/2addr v0, v3

    float-to-int v0, v0

    .line 795
    const/16 v3, 0x2002

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v3

    .line 797
    if-eqz v3, :cond_4

    .line 798
    :goto_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    int-to-float v1, v1

    add-float/2addr v1, v3

    iget-object v3, p0, Lcom/termux/view/TerminalView;->mRenderer:Lcom/termux/view/TerminalRenderer;

    iget v3, v3, Lcom/termux/view/TerminalRenderer;->mFontLineSpacing:I

    int-to-float v3, v3

    div-float/2addr v1, v3

    float-to-int v1, v1

    iget v3, p0, Lcom/termux/view/TerminalView;->mTopRow:I

    add-int/2addr v1, v3

    .line 800
    iput v0, p0, Lcom/termux/view/TerminalView;->mSelX2:I

    iput v0, p0, Lcom/termux/view/TerminalView;->mSelX1:I

    .line 801
    iput v1, p0, Lcom/termux/view/TerminalView;->mSelY2:I

    iput v1, p0, Lcom/termux/view/TerminalView;->mSelY1:I

    .line 803
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    invoke-virtual {v0}, Lcom/termux/terminal/TerminalEmulator;->getScreen()Lcom/termux/terminal/TerminalBuffer;

    move-result-object v0

    .line 804
    const-string v1, " "

    iget v3, p0, Lcom/termux/view/TerminalView;->mSelX1:I

    iget v4, p0, Lcom/termux/view/TerminalView;->mSelY1:I

    iget v5, p0, Lcom/termux/view/TerminalView;->mSelX1:I

    iget v6, p0, Lcom/termux/view/TerminalView;->mSelY1:I

    invoke-virtual {v0, v3, v4, v5, v6}, Lcom/termux/terminal/TerminalBuffer;->getSelectedText(IIII)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 806
    :goto_2
    iget v1, p0, Lcom/termux/view/TerminalView;->mSelX1:I

    if-lez v1, :cond_1

    const-string v1, ""

    iget v3, p0, Lcom/termux/view/TerminalView;->mSelX1:I

    add-int/lit8 v3, v3, -0x1

    iget v4, p0, Lcom/termux/view/TerminalView;->mSelY1:I

    iget v5, p0, Lcom/termux/view/TerminalView;->mSelX1:I

    add-int/lit8 v5, v5, -0x1

    iget v6, p0, Lcom/termux/view/TerminalView;->mSelY1:I

    invoke-virtual {v0, v3, v4, v5, v6}, Lcom/termux/terminal/TerminalBuffer;->getSelectedText(IIII)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 809
    :cond_1
    :goto_3
    iget v1, p0, Lcom/termux/view/TerminalView;->mSelX2:I

    iget-object v3, p0, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    iget v3, v3, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    add-int/lit8 v3, v3, -0x1

    if-ge v1, v3, :cond_2

    const-string v1, ""

    iget v3, p0, Lcom/termux/view/TerminalView;->mSelX2:I

    add-int/lit8 v3, v3, 0x1

    iget v4, p0, Lcom/termux/view/TerminalView;->mSelY1:I

    iget v5, p0, Lcom/termux/view/TerminalView;->mSelX2:I

    add-int/lit8 v5, v5, 0x1

    iget v6, p0, Lcom/termux/view/TerminalView;->mSelY1:I

    invoke-virtual {v0, v3, v4, v5, v6}, Lcom/termux/terminal/TerminalBuffer;->getSelectedText(IIII)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 814
    :cond_2
    iput-boolean v2, p0, Lcom/termux/view/TerminalView;->mInitialTextSelection:Z

    .line 815
    iput-boolean v2, p0, Lcom/termux/view/TerminalView;->mIsDraggingLeftSelection:Z

    .line 816
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/termux/view/TerminalView;->mSelectionDownX:F

    .line 817
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/termux/view/TerminalView;->mSelectionDownY:F

    .line 819
    new-instance v0, Lcom/termux/view/TerminalView$100000003;

    invoke-direct {v0, p0}, Lcom/termux/view/TerminalView$100000003;-><init>(Lcom/termux/view/TerminalView;)V

    .line 865
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v1, v3, :cond_7

    .line 866
    new-instance v1, Lcom/termux/view/TerminalView$100000004;

    invoke-direct {v1, p0, v0}, Lcom/termux/view/TerminalView$100000004;-><init>(Lcom/termux/view/TerminalView;Landroid/view/ActionMode$Callback;)V

    invoke-virtual {p0, v1, v2}, Lcom/termux/view/TerminalView;->startActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;

    move-result-object v0

    iput-object v0, p0, Lcom/termux/view/TerminalView;->mActionMode:Landroid/view/ActionMode;

    .line 901
    :goto_4
    invoke-virtual {p0}, Lcom/termux/view/TerminalView;->invalidate()V

    .line 905
    :goto_5
    return-void

    :cond_3
    move v0, v2

    .line 785
    goto/16 :goto_0

    .line 797
    :cond_4
    const/16 v1, -0x28

    goto/16 :goto_1

    .line 807
    :cond_5
    iget v1, p0, Lcom/termux/view/TerminalView;->mSelX1:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/termux/view/TerminalView;->mSelX1:I

    goto :goto_2

    .line 810
    :cond_6
    iget v1, p0, Lcom/termux/view/TerminalView;->mSelX2:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/termux/view/TerminalView;->mSelX2:I

    goto :goto_3

    .line 897
    :cond_7
    invoke-virtual {p0, v0}, Lcom/termux/view/TerminalView;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    iput-object v0, p0, Lcom/termux/view/TerminalView;->mActionMode:Landroid/view/ActionMode;

    goto :goto_4

    .line 903
    :cond_8
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 904
    iput v4, p0, Lcom/termux/view/TerminalView;->mSelY2:I

    iput v4, p0, Lcom/termux/view/TerminalView;->mSelX2:I

    iput v4, p0, Lcom/termux/view/TerminalView;->mSelY1:I

    iput v4, p0, Lcom/termux/view/TerminalView;->mSelX1:I

    .line 905
    invoke-virtual {p0}, Lcom/termux/view/TerminalView;->invalidate()V

    goto :goto_5
.end method

.method public updateSize()V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    const/4 v4, 0x4

    const/4 v3, 0x0

    .line 740
    invoke-virtual {p0}, Lcom/termux/view/TerminalView;->getWidth()I

    move-result v0

    .line 741
    invoke-virtual {p0}, Lcom/termux/view/TerminalView;->getHeight()I

    move-result v1

    .line 742
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/termux/view/TerminalView;->mTermSession:Lcom/termux/terminal/TerminalSession;

    if-nez v2, :cond_1

    .line 754
    :cond_0
    :goto_0
    return-void

    .line 745
    :cond_1
    int-to-float v0, v0

    iget-object v2, p0, Lcom/termux/view/TerminalView;->mRenderer:Lcom/termux/view/TerminalRenderer;

    iget v2, v2, Lcom/termux/view/TerminalRenderer;->mFontWidth:F

    div-float/2addr v0, v2

    float-to-int v0, v0

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 746
    iget-object v2, p0, Lcom/termux/view/TerminalView;->mRenderer:Lcom/termux/view/TerminalRenderer;

    iget v2, v2, Lcom/termux/view/TerminalRenderer;->mFontLineSpacingAndAscent:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/termux/view/TerminalView;->mRenderer:Lcom/termux/view/TerminalRenderer;

    iget v2, v2, Lcom/termux/view/TerminalRenderer;->mFontLineSpacing:I

    div-int/2addr v1, v2

    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 748
    iget-object v2, p0, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    iget v2, v2, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    if-ne v0, v2, :cond_2

    iget-object v2, p0, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    iget v2, v2, Lcom/termux/terminal/TerminalEmulator;->mRows:I

    if-eq v1, v2, :cond_0

    .line 749
    :cond_2
    iget-object v2, p0, Lcom/termux/view/TerminalView;->mTermSession:Lcom/termux/terminal/TerminalSession;

    invoke-virtual {v2, v0, v1}, Lcom/termux/terminal/TerminalSession;->updateSize(II)V

    .line 750
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mTermSession:Lcom/termux/terminal/TerminalSession;

    invoke-virtual {v0}, Lcom/termux/terminal/TerminalSession;->getEmulator()Lcom/termux/terminal/TerminalEmulator;

    move-result-object v0

    iput-object v0, p0, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    .line 752
    iput v3, p0, Lcom/termux/view/TerminalView;->mTopRow:I

    .line 753
    invoke-virtual {p0, v3, v3}, Lcom/termux/view/TerminalView;->scrollTo(II)V

    .line 754
    invoke-virtual {p0}, Lcom/termux/view/TerminalView;->invalidate()V

    goto :goto_0
.end method
