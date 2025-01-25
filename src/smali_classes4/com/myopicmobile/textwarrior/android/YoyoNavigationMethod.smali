.class public Lcom/myopicmobile/textwarrior/android/YoyoNavigationMethod;
.super Lcom/myopicmobile/textwarrior/android/TouchNavigationMethod;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/myopicmobile/textwarrior/android/YoyoNavigationMethod$Yoyo;
    }
.end annotation


# instance fields
.field private _isCaretHandleTouched:Z

.field private _isEndHandleTouched:Z

.field private _isShowYoyoCaret:Z

.field private _isStartHandleTouched:Z

.field private final _yoyoCaret:Lcom/myopicmobile/textwarrior/android/YoyoNavigationMethod$Yoyo;

.field private final _yoyoEnd:Lcom/myopicmobile/textwarrior/android/YoyoNavigationMethod$Yoyo;

.field private _yoyoSize:I

.field private final _yoyoStart:Lcom/myopicmobile/textwarrior/android/YoyoNavigationMethod$Yoyo;


# direct methods
.method public constructor <init>(Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;)V
    .registers 8

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/myopicmobile/textwarrior/android/TouchNavigationMethod;-><init>(Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;)V

    iput-boolean v0, p0, Lcom/myopicmobile/textwarrior/android/YoyoNavigationMethod;->_isStartHandleTouched:Z

    iput-boolean v0, p0, Lcom/myopicmobile/textwarrior/android/YoyoNavigationMethod;->_isEndHandleTouched:Z

    iput-boolean v0, p0, Lcom/myopicmobile/textwarrior/android/YoyoNavigationMethod;->_isCaretHandleTouched:Z

    iput-boolean v0, p0, Lcom/myopicmobile/textwarrior/android/YoyoNavigationMethod;->_isShowYoyoCaret:Z

    invoke-virtual {p1}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x2

    sget v2, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->BASE_TEXT_SIZE_PIXELS:I

    int-to-double v2, v2

    const-wide/high16 v4, 0x3ff8000000000000L  # 1.5

    mul-double/2addr v2, v4

    double-to-float v2, v2

    invoke-static {v1, v2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/myopicmobile/textwarrior/android/YoyoNavigationMethod;->_yoyoSize:I

    new-instance v0, Lcom/myopicmobile/textwarrior/android/YoyoNavigationMethod$Yoyo;

    invoke-direct {v0, p0}, Lcom/myopicmobile/textwarrior/android/YoyoNavigationMethod$Yoyo;-><init>(Lcom/myopicmobile/textwarrior/android/YoyoNavigationMethod;)V

    iput-object v0, p0, Lcom/myopicmobile/textwarrior/android/YoyoNavigationMethod;->_yoyoCaret:Lcom/myopicmobile/textwarrior/android/YoyoNavigationMethod$Yoyo;

    new-instance v0, Lcom/myopicmobile/textwarrior/android/YoyoNavigationMethod$Yoyo;

    invoke-direct {v0, p0}, Lcom/myopicmobile/textwarrior/android/YoyoNavigationMethod$Yoyo;-><init>(Lcom/myopicmobile/textwarrior/android/YoyoNavigationMethod;)V

    iput-object v0, p0, Lcom/myopicmobile/textwarrior/android/YoyoNavigationMethod;->_yoyoStart:Lcom/myopicmobile/textwarrior/android/YoyoNavigationMethod$Yoyo;

    new-instance v0, Lcom/myopicmobile/textwarrior/android/YoyoNavigationMethod$Yoyo;

    invoke-direct {v0, p0}, Lcom/myopicmobile/textwarrior/android/YoyoNavigationMethod$Yoyo;-><init>(Lcom/myopicmobile/textwarrior/android/YoyoNavigationMethod;)V

    iput-object v0, p0, Lcom/myopicmobile/textwarrior/android/YoyoNavigationMethod;->_yoyoEnd:Lcom/myopicmobile/textwarrior/android/YoyoNavigationMethod$Yoyo;

    return-void
.end method

.method static synthetic access$L1000007(Lcom/myopicmobile/textwarrior/android/YoyoNavigationMethod;)I
    .registers 2

    iget v0, p0, Lcom/myopicmobile/textwarrior/android/YoyoNavigationMethod;->_yoyoSize:I

    return v0
.end method

.method static synthetic access$S1000007(Lcom/myopicmobile/textwarrior/android/YoyoNavigationMethod;I)V
    .registers 2

    iput p1, p0, Lcom/myopicmobile/textwarrior/android/YoyoNavigationMethod;->_yoyoSize:I

    return-void
.end method

.method private moveHandle(Lcom/myopicmobile/textwarrior/android/YoyoNavigationMethod$Yoyo;Landroid/view/MotionEvent;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/myopicmobile/textwarrior/android/YoyoNavigationMethod$Yoyo;",
            "Landroid/view/MotionEvent;",
            ")V"
        }
    .end annotation

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1, v0, v1}, Lcom/myopicmobile/textwarrior/android/YoyoNavigationMethod$Yoyo;->findNearestChar(II)Lcom/myopicmobile/textwarrior/common/Pair;

    move-result-object v0

    invoke-virtual {v0}, Lcom/myopicmobile/textwarrior/common/Pair;->getFirst()I

    move-result v0

    if-ltz v0, :cond_34

    iget-object v1, p0, Lcom/myopicmobile/textwarrior/android/TouchNavigationMethod;->_textField:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    invoke-virtual {v1, v0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->moveCaret(I)V

    iget-object v1, p0, Lcom/myopicmobile/textwarrior/android/TouchNavigationMethod;->_textField:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    invoke-virtual {v1, v0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->getBoundingBox(I)Landroid/graphics/Rect;

    move-result-object v0

    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/myopicmobile/textwarrior/android/TouchNavigationMethod;->_textField:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    invoke-virtual {v2}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->getPaddingLeft()I

    move-result v2

    add-int/2addr v1, v2

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v2, p0, Lcom/myopicmobile/textwarrior/android/TouchNavigationMethod;->_textField:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    invoke-virtual {v2}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->getPaddingTop()I

    move-result v2

    add-int/2addr v0, v2

    invoke-virtual {p1, v1, v0}, Lcom/myopicmobile/textwarrior/android/YoyoNavigationMethod$Yoyo;->attachYoyo(II)V

    :cond_34
    return-void
.end method


# virtual methods
.method public getCaretBloat()Landroid/graphics/Rect;
    .registers 2
    .annotation runtime Ljava/lang/Override;
    .end annotation

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/YoyoNavigationMethod;->_yoyoCaret:Lcom/myopicmobile/textwarrior/android/YoyoNavigationMethod$Yoyo;

    iget-object v0, v0, Lcom/myopicmobile/textwarrior/android/YoyoNavigationMethod$Yoyo;->HANDLE_BLOAT:Landroid/graphics/Rect;

    return-object v0
.end method

.method public onColorSchemeChanged(Lcom/myopicmobile/textwarrior/common/ColorScheme;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/myopicmobile/textwarrior/common/ColorScheme;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/YoyoNavigationMethod;->_yoyoCaret:Lcom/myopicmobile/textwarrior/android/YoyoNavigationMethod$Yoyo;

    sget-object v1, Lcom/myopicmobile/textwarrior/common/ColorScheme$Colorable;->CARET_BACKGROUND:Lcom/myopicmobile/textwarrior/common/ColorScheme$Colorable;

    invoke-virtual {p1, v1}, Lcom/myopicmobile/textwarrior/common/ColorScheme;->getColor(Lcom/myopicmobile/textwarrior/common/ColorScheme$Colorable;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/myopicmobile/textwarrior/android/YoyoNavigationMethod$Yoyo;->setHandleColor(I)V

    return-void
.end method

.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .registers 6
    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    iget-object v2, p0, Lcom/myopicmobile/textwarrior/android/TouchNavigationMethod;->_textField:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    invoke-virtual {v2}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->getScrollX()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    iget-object v3, p0, Lcom/myopicmobile/textwarrior/android/TouchNavigationMethod;->_textField:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    invoke-virtual {v3}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->getScrollY()I

    move-result v3

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/myopicmobile/textwarrior/android/YoyoNavigationMethod;->_yoyoCaret:Lcom/myopicmobile/textwarrior/android/YoyoNavigationMethod$Yoyo;

    invoke-virtual {v3, v1, v2}, Lcom/myopicmobile/textwarrior/android/YoyoNavigationMethod$Yoyo;->isInHandle(II)Z

    move-result v3

    if-eqz v3, :cond_27

    iget-object v1, p0, Lcom/myopicmobile/textwarrior/android/TouchNavigationMethod;->_textField:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    invoke-virtual {v1, v0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->selectText(Z)V

    :cond_26
    :goto_26
    return v0

    :cond_27
    iget-object v3, p0, Lcom/myopicmobile/textwarrior/android/YoyoNavigationMethod;->_yoyoStart:Lcom/myopicmobile/textwarrior/android/YoyoNavigationMethod$Yoyo;

    invoke-virtual {v3, v1, v2}, Lcom/myopicmobile/textwarrior/android/YoyoNavigationMethod$Yoyo;->isInHandle(II)Z

    move-result v1

    if-nez v1, :cond_26

    invoke-super {p0, p1}, Lcom/myopicmobile/textwarrior/android/TouchNavigationMethod;->onDoubleTap(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_26
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .registers 6
    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/4 v3, 0x1

    invoke-super {p0, p1}, Lcom/myopicmobile/textwarrior/android/TouchNavigationMethod;->onDown(Landroid/view/MotionEvent;)Z

    iget-boolean v0, p0, Lcom/myopicmobile/textwarrior/android/TouchNavigationMethod;->_isCaretTouched:Z

    if-nez v0, :cond_48

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iget-object v1, p0, Lcom/myopicmobile/textwarrior/android/TouchNavigationMethod;->_textField:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    invoke-virtual {v1}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->getScrollX()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    iget-object v2, p0, Lcom/myopicmobile/textwarrior/android/TouchNavigationMethod;->_textField:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    invoke-virtual {v2}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->getScrollY()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/myopicmobile/textwarrior/android/YoyoNavigationMethod;->_yoyoCaret:Lcom/myopicmobile/textwarrior/android/YoyoNavigationMethod$Yoyo;

    invoke-virtual {v2, v0, v1}, Lcom/myopicmobile/textwarrior/android/YoyoNavigationMethod$Yoyo;->isInHandle(II)Z

    move-result v2

    iput-boolean v2, p0, Lcom/myopicmobile/textwarrior/android/YoyoNavigationMethod;->_isCaretHandleTouched:Z

    iget-object v2, p0, Lcom/myopicmobile/textwarrior/android/YoyoNavigationMethod;->_yoyoStart:Lcom/myopicmobile/textwarrior/android/YoyoNavigationMethod$Yoyo;

    invoke-virtual {v2, v0, v1}, Lcom/myopicmobile/textwarrior/android/YoyoNavigationMethod$Yoyo;->isInHandle(II)Z

    move-result v2

    iput-boolean v2, p0, Lcom/myopicmobile/textwarrior/android/YoyoNavigationMethod;->_isStartHandleTouched:Z

    iget-object v2, p0, Lcom/myopicmobile/textwarrior/android/YoyoNavigationMethod;->_yoyoEnd:Lcom/myopicmobile/textwarrior/android/YoyoNavigationMethod$Yoyo;

    invoke-virtual {v2, v0, v1}, Lcom/myopicmobile/textwarrior/android/YoyoNavigationMethod$Yoyo;->isInHandle(II)Z

    move-result v2

    iput-boolean v2, p0, Lcom/myopicmobile/textwarrior/android/YoyoNavigationMethod;->_isEndHandleTouched:Z

    iget-boolean v2, p0, Lcom/myopicmobile/textwarrior/android/YoyoNavigationMethod;->_isCaretHandleTouched:Z

    if-eqz v2, :cond_49

    iput-boolean v3, p0, Lcom/myopicmobile/textwarrior/android/YoyoNavigationMethod;->_isShowYoyoCaret:Z

    iget-object v2, p0, Lcom/myopicmobile/textwarrior/android/YoyoNavigationMethod;->_yoyoCaret:Lcom/myopicmobile/textwarrior/android/YoyoNavigationMethod$Yoyo;

    invoke-virtual {v2, v0, v1}, Lcom/myopicmobile/textwarrior/android/YoyoNavigationMethod$Yoyo;->setInitialTouch(II)V

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/YoyoNavigationMethod;->_yoyoCaret:Lcom/myopicmobile/textwarrior/android/YoyoNavigationMethod$Yoyo;

    invoke-virtual {v0}, Lcom/myopicmobile/textwarrior/android/YoyoNavigationMethod$Yoyo;->invalidateHandle()V

    :cond_48
    :goto_48
    return v3

    :cond_49
    iget-boolean v2, p0, Lcom/myopicmobile/textwarrior/android/YoyoNavigationMethod;->_isStartHandleTouched:Z

    if-eqz v2, :cond_5d

    iget-object v2, p0, Lcom/myopicmobile/textwarrior/android/YoyoNavigationMethod;->_yoyoStart:Lcom/myopicmobile/textwarrior/android/YoyoNavigationMethod$Yoyo;

    invoke-virtual {v2, v0, v1}, Lcom/myopicmobile/textwarrior/android/YoyoNavigationMethod$Yoyo;->setInitialTouch(II)V

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/TouchNavigationMethod;->_textField:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    invoke-virtual {v0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->focusSelectionStart()V

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/YoyoNavigationMethod;->_yoyoStart:Lcom/myopicmobile/textwarrior/android/YoyoNavigationMethod$Yoyo;

    invoke-virtual {v0}, Lcom/myopicmobile/textwarrior/android/YoyoNavigationMethod$Yoyo;->invalidateHandle()V

    goto :goto_48

    :cond_5d
    iget-boolean v2, p0, Lcom/myopicmobile/textwarrior/android/YoyoNavigationMethod;->_isEndHandleTouched:Z

    if-eqz v2, :cond_48

    iget-object v2, p0, Lcom/myopicmobile/textwarrior/android/YoyoNavigationMethod;->_yoyoEnd:Lcom/myopicmobile/textwarrior/android/YoyoNavigationMethod$Yoyo;

    invoke-virtual {v2, v0, v1}, Lcom/myopicmobile/textwarrior/android/YoyoNavigationMethod$Yoyo;->setInitialTouch(II)V

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/TouchNavigationMethod;->_textField:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    invoke-virtual {v0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->focusSelectionEnd()V

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/YoyoNavigationMethod;->_yoyoEnd:Lcom/myopicmobile/textwarrior/android/YoyoNavigationMethod$Yoyo;

    invoke-virtual {v0}, Lcom/myopicmobile/textwarrior/android/YoyoNavigationMethod$Yoyo;->invalidateHandle()V

    goto :goto_48
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 6
    .annotation runtime Ljava/lang/Override;
    .end annotation

    iget-boolean v0, p0, Lcom/myopicmobile/textwarrior/android/YoyoNavigationMethod;->_isCaretHandleTouched:Z

    if-nez v0, :cond_c

    iget-boolean v0, p0, Lcom/myopicmobile/textwarrior/android/YoyoNavigationMethod;->_isStartHandleTouched:Z

    if-nez v0, :cond_c

    iget-boolean v0, p0, Lcom/myopicmobile/textwarrior/android/YoyoNavigationMethod;->_isEndHandleTouched:Z

    if-eqz v0, :cond_11

    :cond_c
    invoke-virtual {p0, p2}, Lcom/myopicmobile/textwarrior/android/YoyoNavigationMethod;->onUp(Landroid/view/MotionEvent;)Z

    const/4 v0, 0x1

    :goto_10
    return v0

    :cond_11
    invoke-super {p0, p1, p2, p3, p4}, Lcom/myopicmobile/textwarrior/android/TouchNavigationMethod;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v0

    goto :goto_10
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/MotionEvent;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/myopicmobile/textwarrior/android/YoyoNavigationMethod;->onDoubleTap(Landroid/view/MotionEvent;)Z

    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 7
    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/myopicmobile/textwarrior/android/YoyoNavigationMethod;->_isCaretHandleTouched:Z

    if-eqz v1, :cond_19

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    if-ne v1, v0, :cond_11

    invoke-virtual {p0, p2}, Lcom/myopicmobile/textwarrior/android/YoyoNavigationMethod;->onUp(Landroid/view/MotionEvent;)Z

    :goto_10
    return v0

    :cond_11
    iput-boolean v0, p0, Lcom/myopicmobile/textwarrior/android/YoyoNavigationMethod;->_isShowYoyoCaret:Z

    iget-object v1, p0, Lcom/myopicmobile/textwarrior/android/YoyoNavigationMethod;->_yoyoCaret:Lcom/myopicmobile/textwarrior/android/YoyoNavigationMethod$Yoyo;

    invoke-direct {p0, v1, p2}, Lcom/myopicmobile/textwarrior/android/YoyoNavigationMethod;->moveHandle(Lcom/myopicmobile/textwarrior/android/YoyoNavigationMethod$Yoyo;Landroid/view/MotionEvent;)V

    goto :goto_10

    :cond_19
    iget-boolean v1, p0, Lcom/myopicmobile/textwarrior/android/YoyoNavigationMethod;->_isStartHandleTouched:Z

    if-eqz v1, :cond_2f

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    if-ne v1, v0, :cond_29

    invoke-virtual {p0, p2}, Lcom/myopicmobile/textwarrior/android/YoyoNavigationMethod;->onUp(Landroid/view/MotionEvent;)Z

    goto :goto_10

    :cond_29
    iget-object v1, p0, Lcom/myopicmobile/textwarrior/android/YoyoNavigationMethod;->_yoyoStart:Lcom/myopicmobile/textwarrior/android/YoyoNavigationMethod$Yoyo;

    invoke-direct {p0, v1, p2}, Lcom/myopicmobile/textwarrior/android/YoyoNavigationMethod;->moveHandle(Lcom/myopicmobile/textwarrior/android/YoyoNavigationMethod$Yoyo;Landroid/view/MotionEvent;)V

    goto :goto_10

    :cond_2f
    iget-boolean v1, p0, Lcom/myopicmobile/textwarrior/android/YoyoNavigationMethod;->_isEndHandleTouched:Z

    if-eqz v1, :cond_45

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    if-ne v1, v0, :cond_3f

    invoke-virtual {p0, p2}, Lcom/myopicmobile/textwarrior/android/YoyoNavigationMethod;->onUp(Landroid/view/MotionEvent;)Z

    goto :goto_10

    :cond_3f
    iget-object v1, p0, Lcom/myopicmobile/textwarrior/android/YoyoNavigationMethod;->_yoyoEnd:Lcom/myopicmobile/textwarrior/android/YoyoNavigationMethod$Yoyo;

    invoke-direct {p0, v1, p2}, Lcom/myopicmobile/textwarrior/android/YoyoNavigationMethod;->moveHandle(Lcom/myopicmobile/textwarrior/android/YoyoNavigationMethod$Yoyo;Landroid/view/MotionEvent;)V

    goto :goto_10

    :cond_45
    invoke-super {p0, p1, p2, p3, p4}, Lcom/myopicmobile/textwarrior/android/TouchNavigationMethod;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v0

    goto :goto_10
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .registers 6
    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    iget-object v2, p0, Lcom/myopicmobile/textwarrior/android/TouchNavigationMethod;->_textField:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    invoke-virtual {v2}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->getScrollX()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    iget-object v3, p0, Lcom/myopicmobile/textwarrior/android/TouchNavigationMethod;->_textField:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    invoke-virtual {v3}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->getScrollY()I

    move-result v3

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/myopicmobile/textwarrior/android/YoyoNavigationMethod;->_yoyoCaret:Lcom/myopicmobile/textwarrior/android/YoyoNavigationMethod$Yoyo;

    invoke-virtual {v3, v1, v2}, Lcom/myopicmobile/textwarrior/android/YoyoNavigationMethod$Yoyo;->isInHandle(II)Z

    move-result v3

    if-nez v3, :cond_31

    iget-object v3, p0, Lcom/myopicmobile/textwarrior/android/YoyoNavigationMethod;->_yoyoStart:Lcom/myopicmobile/textwarrior/android/YoyoNavigationMethod$Yoyo;

    invoke-virtual {v3, v1, v2}, Lcom/myopicmobile/textwarrior/android/YoyoNavigationMethod$Yoyo;->isInHandle(II)Z

    move-result v3

    if-nez v3, :cond_31

    iget-object v3, p0, Lcom/myopicmobile/textwarrior/android/YoyoNavigationMethod;->_yoyoEnd:Lcom/myopicmobile/textwarrior/android/YoyoNavigationMethod$Yoyo;

    invoke-virtual {v3, v1, v2}, Lcom/myopicmobile/textwarrior/android/YoyoNavigationMethod$Yoyo;->isInHandle(II)Z

    move-result v1

    if-eqz v1, :cond_32

    :cond_31
    :goto_31
    return v0

    :cond_32
    iput-boolean v0, p0, Lcom/myopicmobile/textwarrior/android/YoyoNavigationMethod;->_isShowYoyoCaret:Z

    invoke-super {p0, p1}, Lcom/myopicmobile/textwarrior/android/TouchNavigationMethod;->onSingleTapUp(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_31
.end method

.method public onTextDrawComplete(Landroid/graphics/Canvas;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/TouchNavigationMethod;->_textField:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    invoke-virtual {v0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->isSelectText2()Z

    move-result v0

    if-nez v0, :cond_4d

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/YoyoNavigationMethod;->_yoyoCaret:Lcom/myopicmobile/textwarrior/android/YoyoNavigationMethod$Yoyo;

    invoke-virtual {v0}, Lcom/myopicmobile/textwarrior/android/YoyoNavigationMethod$Yoyo;->show()V

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/YoyoNavigationMethod;->_yoyoStart:Lcom/myopicmobile/textwarrior/android/YoyoNavigationMethod$Yoyo;

    invoke-virtual {v0}, Lcom/myopicmobile/textwarrior/android/YoyoNavigationMethod$Yoyo;->hide()V

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/YoyoNavigationMethod;->_yoyoEnd:Lcom/myopicmobile/textwarrior/android/YoyoNavigationMethod$Yoyo;

    invoke-virtual {v0}, Lcom/myopicmobile/textwarrior/android/YoyoNavigationMethod$Yoyo;->hide()V

    iget-boolean v0, p0, Lcom/myopicmobile/textwarrior/android/YoyoNavigationMethod;->_isCaretHandleTouched:Z

    if-nez v0, :cond_3e

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/TouchNavigationMethod;->_textField:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    iget-object v1, p0, Lcom/myopicmobile/textwarrior/android/TouchNavigationMethod;->_textField:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    invoke-virtual {v1}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->getCaretPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->getBoundingBox(I)Landroid/graphics/Rect;

    move-result-object v0

    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/myopicmobile/textwarrior/android/TouchNavigationMethod;->_textField:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    invoke-virtual {v2}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->getPaddingLeft()I

    move-result v2

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v3, p0, Lcom/myopicmobile/textwarrior/android/TouchNavigationMethod;->_textField:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    invoke-virtual {v3}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->getPaddingTop()I

    move-result v3

    iget-object v4, p0, Lcom/myopicmobile/textwarrior/android/YoyoNavigationMethod;->_yoyoCaret:Lcom/myopicmobile/textwarrior/android/YoyoNavigationMethod$Yoyo;

    add-int/2addr v1, v2

    add-int/2addr v0, v3

    invoke-virtual {v4, v1, v0}, Lcom/myopicmobile/textwarrior/android/YoyoNavigationMethod$Yoyo;->setRestingCoord(II)V

    :cond_3e
    iget-boolean v0, p0, Lcom/myopicmobile/textwarrior/android/YoyoNavigationMethod;->_isShowYoyoCaret:Z

    if-eqz v0, :cond_49

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/YoyoNavigationMethod;->_yoyoCaret:Lcom/myopicmobile/textwarrior/android/YoyoNavigationMethod$Yoyo;

    iget-boolean v1, p0, Lcom/myopicmobile/textwarrior/android/YoyoNavigationMethod;->_isCaretHandleTouched:Z

    invoke-virtual {v0, p1, v1}, Lcom/myopicmobile/textwarrior/android/YoyoNavigationMethod$Yoyo;->draw(Landroid/graphics/Canvas;Z)V

    :cond_49
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/myopicmobile/textwarrior/android/YoyoNavigationMethod;->_isShowYoyoCaret:Z

    :goto_4c
    return-void

    :cond_4d
    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/YoyoNavigationMethod;->_yoyoCaret:Lcom/myopicmobile/textwarrior/android/YoyoNavigationMethod$Yoyo;

    invoke-virtual {v0}, Lcom/myopicmobile/textwarrior/android/YoyoNavigationMethod$Yoyo;->hide()V

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/YoyoNavigationMethod;->_yoyoStart:Lcom/myopicmobile/textwarrior/android/YoyoNavigationMethod$Yoyo;

    invoke-virtual {v0}, Lcom/myopicmobile/textwarrior/android/YoyoNavigationMethod$Yoyo;->show()V

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/YoyoNavigationMethod;->_yoyoEnd:Lcom/myopicmobile/textwarrior/android/YoyoNavigationMethod$Yoyo;

    invoke-virtual {v0}, Lcom/myopicmobile/textwarrior/android/YoyoNavigationMethod$Yoyo;->show()V

    iget-boolean v0, p0, Lcom/myopicmobile/textwarrior/android/YoyoNavigationMethod;->_isStartHandleTouched:Z

    if-eqz v0, :cond_64

    iget-boolean v0, p0, Lcom/myopicmobile/textwarrior/android/YoyoNavigationMethod;->_isEndHandleTouched:Z

    if-nez v0, :cond_aa

    :cond_64
    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/TouchNavigationMethod;->_textField:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    iget-object v1, p0, Lcom/myopicmobile/textwarrior/android/TouchNavigationMethod;->_textField:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    invoke-virtual {v1}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->getSelectionStart()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->getBoundingBox(I)Landroid/graphics/Rect;

    move-result-object v0

    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/myopicmobile/textwarrior/android/TouchNavigationMethod;->_textField:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    invoke-virtual {v2}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->getPaddingLeft()I

    move-result v2

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v3, p0, Lcom/myopicmobile/textwarrior/android/TouchNavigationMethod;->_textField:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    invoke-virtual {v3}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->getPaddingTop()I

    move-result v3

    iget-object v4, p0, Lcom/myopicmobile/textwarrior/android/YoyoNavigationMethod;->_yoyoStart:Lcom/myopicmobile/textwarrior/android/YoyoNavigationMethod$Yoyo;

    add-int/2addr v1, v2

    add-int/2addr v0, v3

    invoke-virtual {v4, v1, v0}, Lcom/myopicmobile/textwarrior/android/YoyoNavigationMethod$Yoyo;->setRestingCoord(II)V

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/TouchNavigationMethod;->_textField:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    iget-object v1, p0, Lcom/myopicmobile/textwarrior/android/TouchNavigationMethod;->_textField:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    invoke-virtual {v1}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->getSelectionEnd()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->getBoundingBox(I)Landroid/graphics/Rect;

    move-result-object v0

    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/myopicmobile/textwarrior/android/TouchNavigationMethod;->_textField:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    invoke-virtual {v2}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->getPaddingLeft()I

    move-result v2

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v3, p0, Lcom/myopicmobile/textwarrior/android/TouchNavigationMethod;->_textField:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    invoke-virtual {v3}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->getPaddingTop()I

    move-result v3

    iget-object v4, p0, Lcom/myopicmobile/textwarrior/android/YoyoNavigationMethod;->_yoyoEnd:Lcom/myopicmobile/textwarrior/android/YoyoNavigationMethod$Yoyo;

    add-int/2addr v1, v2

    add-int/2addr v0, v3

    invoke-virtual {v4, v1, v0}, Lcom/myopicmobile/textwarrior/android/YoyoNavigationMethod$Yoyo;->setRestingCoord(II)V

    :cond_aa
    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/YoyoNavigationMethod;->_yoyoStart:Lcom/myopicmobile/textwarrior/android/YoyoNavigationMethod$Yoyo;

    iget-boolean v1, p0, Lcom/myopicmobile/textwarrior/android/YoyoNavigationMethod;->_isStartHandleTouched:Z

    invoke-virtual {v0, p1, v1}, Lcom/myopicmobile/textwarrior/android/YoyoNavigationMethod$Yoyo;->draw(Landroid/graphics/Canvas;Z)V

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/YoyoNavigationMethod;->_yoyoEnd:Lcom/myopicmobile/textwarrior/android/YoyoNavigationMethod$Yoyo;

    iget-boolean v1, p0, Lcom/myopicmobile/textwarrior/android/YoyoNavigationMethod;->_isStartHandleTouched:Z

    invoke-virtual {v0, p1, v1}, Lcom/myopicmobile/textwarrior/android/YoyoNavigationMethod$Yoyo;->draw(Landroid/graphics/Canvas;Z)V

    goto :goto_4c
.end method

.method public onUp(Landroid/view/MotionEvent;)Z
    .registers 3
    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/myopicmobile/textwarrior/android/YoyoNavigationMethod;->_isCaretHandleTouched:Z

    iput-boolean v0, p0, Lcom/myopicmobile/textwarrior/android/YoyoNavigationMethod;->_isStartHandleTouched:Z

    iput-boolean v0, p0, Lcom/myopicmobile/textwarrior/android/YoyoNavigationMethod;->_isEndHandleTouched:Z

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/YoyoNavigationMethod;->_yoyoCaret:Lcom/myopicmobile/textwarrior/android/YoyoNavigationMethod$Yoyo;

    invoke-virtual {v0}, Lcom/myopicmobile/textwarrior/android/YoyoNavigationMethod$Yoyo;->clearInitialTouch()V

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/YoyoNavigationMethod;->_yoyoStart:Lcom/myopicmobile/textwarrior/android/YoyoNavigationMethod$Yoyo;

    invoke-virtual {v0}, Lcom/myopicmobile/textwarrior/android/YoyoNavigationMethod$Yoyo;->clearInitialTouch()V

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/YoyoNavigationMethod;->_yoyoEnd:Lcom/myopicmobile/textwarrior/android/YoyoNavigationMethod$Yoyo;

    invoke-virtual {v0}, Lcom/myopicmobile/textwarrior/android/YoyoNavigationMethod$Yoyo;->clearInitialTouch()V

    invoke-super {p0, p1}, Lcom/myopicmobile/textwarrior/android/TouchNavigationMethod;->onUp(Landroid/view/MotionEvent;)Z

    const/4 v0, 0x1

    return v0
.end method
