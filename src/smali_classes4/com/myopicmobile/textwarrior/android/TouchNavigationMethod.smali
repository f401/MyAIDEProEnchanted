.class public Lcom/myopicmobile/textwarrior/android/TouchNavigationMethod;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;


# static fields
.field protected static SCROLL_EDGE_SLOP:I

.field protected static TOUCH_SLOP:I

.field private static final _caretBloat:Landroid/graphics/Rect;


# instance fields
.field private _gestureDetector:Landroid/view/GestureDetector;

.field protected _isCaretTouched:Z

.field protected _textField:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

.field private fling:I

.field private lastDist:F

.field private lastSize:F

.field private lastX:F

.field private lastY:F


# direct methods
.method static final constructor <clinit>()V
    .registers 2

    const/4 v1, 0x0

    const/16 v0, 0xa

    sput v0, Lcom/myopicmobile/textwarrior/android/TouchNavigationMethod;->SCROLL_EDGE_SLOP:I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    sput-object v0, Lcom/myopicmobile/textwarrior/android/TouchNavigationMethod;->_caretBloat:Landroid/graphics/Rect;

    const/16 v0, 0xc

    sput v0, Lcom/myopicmobile/textwarrior/android/TouchNavigationMethod;->TOUCH_SLOP:I

    return-void
.end method

.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/myopicmobile/textwarrior/android/TouchNavigationMethod;->_isCaretTouched:Z

    return-void
.end method

.method public constructor <init>(Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;)V
    .registers 4

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/myopicmobile/textwarrior/android/TouchNavigationMethod;->_isCaretTouched:Z

    iput-object p1, p0, Lcom/myopicmobile/textwarrior/android/TouchNavigationMethod;->_textField:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p1}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/myopicmobile/textwarrior/android/TouchNavigationMethod;->_gestureDetector:Landroid/view/GestureDetector;

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/TouchNavigationMethod;->_gestureDetector:Landroid/view/GestureDetector;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    return-void
.end method

.method private dragCaret(Landroid/view/MotionEvent;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/MotionEvent;",
            ")V"
        }
    .end annotation

    const/4 v5, 0x1

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/myopicmobile/textwarrior/android/TouchNavigationMethod;->_textField:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    invoke-virtual {v1}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->isSelectText()Z

    move-result v1

    if-nez v1, :cond_15

    invoke-direct {p0}, Lcom/myopicmobile/textwarrior/android/TouchNavigationMethod;->isDragSelect()Z

    move-result v1

    if-eqz v1, :cond_15

    iget-object v1, p0, Lcom/myopicmobile/textwarrior/android/TouchNavigationMethod;->_textField:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    invoke-virtual {v1, v5}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->selectText(Z)V

    :cond_15
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    iget-object v2, p0, Lcom/myopicmobile/textwarrior/android/TouchNavigationMethod;->_textField:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    invoke-virtual {v2}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    iget-object v3, p0, Lcom/myopicmobile/textwarrior/android/TouchNavigationMethod;->_textField:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    invoke-virtual {v3}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    sget v3, Lcom/myopicmobile/textwarrior/android/TouchNavigationMethod;->SCROLL_EDGE_SLOP:I

    if-ge v1, v3, :cond_5f

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/TouchNavigationMethod;->_textField:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->autoScrollCaret(I)Z

    move-result v0

    :cond_38
    :goto_38
    if-nez v0, :cond_5e

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/TouchNavigationMethod;->_textField:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    invoke-virtual {v0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->stopAutoScrollCaret()V

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/TouchNavigationMethod;->_textField:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0, v1}, Lcom/myopicmobile/textwarrior/android/TouchNavigationMethod;->screenToViewX(I)I

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p0, v2}, Lcom/myopicmobile/textwarrior/android/TouchNavigationMethod;->screenToViewY(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->coordToCharIndex(II)I

    move-result v0

    if-ltz v0, :cond_5e

    iget-object v1, p0, Lcom/myopicmobile/textwarrior/android/TouchNavigationMethod;->_textField:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    invoke-virtual {v1, v0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->moveCaret(I)V

    :cond_5e
    return-void

    :cond_5f
    iget-object v3, p0, Lcom/myopicmobile/textwarrior/android/TouchNavigationMethod;->_textField:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    invoke-virtual {v3}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->getContentWidth()I

    move-result v3

    sget v4, Lcom/myopicmobile/textwarrior/android/TouchNavigationMethod;->SCROLL_EDGE_SLOP:I

    sub-int/2addr v3, v4

    if-lt v1, v3, :cond_72

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/TouchNavigationMethod;->_textField:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->autoScrollCaret(I)Z

    move-result v0

    goto :goto_38

    :cond_72
    sget v1, Lcom/myopicmobile/textwarrior/android/TouchNavigationMethod;->SCROLL_EDGE_SLOP:I

    if-ge v2, v1, :cond_7d

    iget-object v1, p0, Lcom/myopicmobile/textwarrior/android/TouchNavigationMethod;->_textField:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    invoke-virtual {v1, v0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->autoScrollCaret(I)Z

    move-result v0

    goto :goto_38

    :cond_7d
    iget-object v1, p0, Lcom/myopicmobile/textwarrior/android/TouchNavigationMethod;->_textField:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    invoke-virtual {v1}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->getContentHeight()I

    move-result v1

    sget v3, Lcom/myopicmobile/textwarrior/android/TouchNavigationMethod;->SCROLL_EDGE_SLOP:I

    sub-int/2addr v1, v3

    if-lt v2, v1, :cond_38

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/TouchNavigationMethod;->_textField:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    invoke-virtual {v0, v5}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->autoScrollCaret(I)Z

    move-result v0

    goto :goto_38
.end method

.method private final isDragSelect()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method private onTouchZoon(Landroid/view/MotionEvent;)Z
    .registers 8

    const/4 v5, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v2, v5, :cond_6d

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    if-ne v2, v5, :cond_6d

    iget v2, p0, Lcom/myopicmobile/textwarrior/android/TouchNavigationMethod;->lastDist:F

    int-to-float v3, v1

    cmpg-float v2, v2, v3

    if-nez v2, :cond_55

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    sub-float/2addr v2, v3

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    sub-float/2addr v3, v4

    mul-float/2addr v2, v2

    mul-float/2addr v3, v3

    add-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v2, v2

    iput v2, p0, Lcom/myopicmobile/textwarrior/android/TouchNavigationMethod;->lastDist:F

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    add-float/2addr v2, v3

    int-to-float v3, v5

    div-float/2addr v2, v3

    iput v2, p0, Lcom/myopicmobile/textwarrior/android/TouchNavigationMethod;->lastX:F

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    add-float/2addr v2, v3

    int-to-float v3, v5

    div-float/2addr v2, v3

    iput v2, p0, Lcom/myopicmobile/textwarrior/android/TouchNavigationMethod;->lastY:F

    iget-object v2, p0, Lcom/myopicmobile/textwarrior/android/TouchNavigationMethod;->_textField:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    invoke-virtual {v2}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->getTextSize()F

    move-result v2

    iput v2, p0, Lcom/myopicmobile/textwarrior/android/TouchNavigationMethod;->lastSize:F

    :cond_55
    invoke-direct {p0, p1}, Lcom/myopicmobile/textwarrior/android/TouchNavigationMethod;->spacing(Landroid/view/MotionEvent;)F

    move-result v2

    iget v3, p0, Lcom/myopicmobile/textwarrior/android/TouchNavigationMethod;->lastDist:F

    int-to-float v1, v1

    cmpl-float v1, v3, v1

    if-eqz v1, :cond_6c

    iget-object v1, p0, Lcom/myopicmobile/textwarrior/android/TouchNavigationMethod;->_textField:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    iget v3, p0, Lcom/myopicmobile/textwarrior/android/TouchNavigationMethod;->lastSize:F

    iget v4, p0, Lcom/myopicmobile/textwarrior/android/TouchNavigationMethod;->lastDist:F

    div-float/2addr v2, v4

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->setTextSize(I)V

    :cond_6c
    :goto_6c
    return v0

    :cond_6d
    int-to-float v0, v1

    iput v0, p0, Lcom/myopicmobile/textwarrior/android/TouchNavigationMethod;->lastDist:F

    move v0, v1

    goto :goto_6c
.end method

.method private scrollView(FF)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FF)V"
        }
    .end annotation

    const/4 v1, 0x0

    float-to-int v0, p1

    iget-object v2, p0, Lcom/myopicmobile/textwarrior/android/TouchNavigationMethod;->_textField:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    invoke-virtual {v2}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->getScrollX()I

    move-result v2

    add-int/2addr v2, v0

    float-to-int v0, p2

    iget-object v3, p0, Lcom/myopicmobile/textwarrior/android/TouchNavigationMethod;->_textField:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    invoke-virtual {v3}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->getScrollY()I

    move-result v3

    add-int/2addr v3, v0

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/TouchNavigationMethod;->_textField:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    invoke-virtual {v0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->getMaxScrollX()I

    move-result v0

    iget-object v4, p0, Lcom/myopicmobile/textwarrior/android/TouchNavigationMethod;->_textField:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    invoke-virtual {v4}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->getScrollX()I

    move-result v4

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    if-le v2, v0, :cond_3c

    :goto_23
    iget-object v2, p0, Lcom/myopicmobile/textwarrior/android/TouchNavigationMethod;->_textField:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    invoke-virtual {v2}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->getMaxScrollY()I

    move-result v2

    iget-object v4, p0, Lcom/myopicmobile/textwarrior/android/TouchNavigationMethod;->_textField:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    invoke-virtual {v4}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->getScrollY()I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    if-le v3, v2, :cond_40

    move v1, v2

    :cond_36
    :goto_36
    iget-object v2, p0, Lcom/myopicmobile/textwarrior/android/TouchNavigationMethod;->_textField:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    invoke-virtual {v2, v0, v1}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->smoothScrollTo(II)V

    return-void

    :cond_3c
    if-gez v2, :cond_44

    move v0, v1

    goto :goto_23

    :cond_40
    if-ltz v3, :cond_36

    move v1, v3

    goto :goto_36

    :cond_44
    move v0, v2

    goto :goto_23
.end method

.method private spacing(Landroid/view/MotionEvent;)F
    .registers 6

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    sub-float/2addr v0, v1

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    sub-float/2addr v1, v2

    mul-float/2addr v0, v0

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method


# virtual methods
.method public getCaretBloat()Landroid/graphics/Rect;
    .registers 2

    sget-object v0, Lcom/myopicmobile/textwarrior/android/TouchNavigationMethod;->_caretBloat:Landroid/graphics/Rect;

    return-object v0
.end method

.method protected final getPointerId(Landroid/view/MotionEvent;)I
    .registers 4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const v1, 0xff00

    and-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public isNearChar(III)Z
    .registers 7

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/TouchNavigationMethod;->_textField:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    invoke-virtual {v0, p3}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->getBoundingBox(I)Landroid/graphics/Rect;

    move-result-object v0

    iget v1, v0, Landroid/graphics/Rect;->top:I

    sget v2, Lcom/myopicmobile/textwarrior/android/TouchNavigationMethod;->TOUCH_SLOP:I

    sub-int/2addr v1, v2

    if-lt p2, v1, :cond_22

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    sget v2, Lcom/myopicmobile/textwarrior/android/TouchNavigationMethod;->TOUCH_SLOP:I

    add-int/2addr v1, v2

    if-ge p2, v1, :cond_22

    iget v1, v0, Landroid/graphics/Rect;->left:I

    sget v2, Lcom/myopicmobile/textwarrior/android/TouchNavigationMethod;->TOUCH_SLOP:I

    sub-int/2addr v1, v2

    if-lt p1, v1, :cond_22

    iget v0, v0, Landroid/graphics/Rect;->right:I

    sget v1, Lcom/myopicmobile/textwarrior/android/TouchNavigationMethod;->TOUCH_SLOP:I

    add-int/2addr v0, v1

    if-lt p1, v0, :cond_24

    :cond_22
    const/4 v0, 0x0

    :goto_23
    return v0

    :cond_24
    const/4 v0, 0x1

    goto :goto_23
.end method

.method public final isRightHanded()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public onChiralityChanged(Z)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    return-void
.end method

.method public onColorSchemeChanged(Lcom/myopicmobile/textwarrior/common/ColorScheme;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/myopicmobile/textwarrior/common/ColorScheme;",
            ")V"
        }
    .end annotation

    return-void
.end method

.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .registers 7
    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/myopicmobile/textwarrior/android/TouchNavigationMethod;->_isCaretTouched:Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/myopicmobile/textwarrior/android/TouchNavigationMethod;->screenToViewX(I)I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0, v1}, Lcom/myopicmobile/textwarrior/android/TouchNavigationMethod;->screenToViewY(I)I

    move-result v1

    iget-object v2, p0, Lcom/myopicmobile/textwarrior/android/TouchNavigationMethod;->_textField:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    invoke-virtual {v2, v0, v1}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->coordToCharIndex(II)I

    move-result v0

    if-ltz v0, :cond_3c

    iget-object v1, p0, Lcom/myopicmobile/textwarrior/android/TouchNavigationMethod;->_textField:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    invoke-virtual {v1, v0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->moveCaret(I)V

    iget-object v1, p0, Lcom/myopicmobile/textwarrior/android/TouchNavigationMethod;->_textField:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    invoke-virtual {v1}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->createDocumentProvider()Lcom/myopicmobile/textwarrior/common/DocumentProvider;

    move-result-object v2

    move v1, v0

    :goto_29
    if-gez v1, :cond_3d

    :cond_2b
    if-eq v1, v0, :cond_2f

    add-int/lit8 v1, v1, 0x1

    :cond_2f
    :goto_2f
    if-gez v0, :cond_4a

    :cond_31
    iget-object v2, p0, Lcom/myopicmobile/textwarrior/android/TouchNavigationMethod;->_textField:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    invoke-virtual {v2, v4}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->selectText(Z)V

    iget-object v2, p0, Lcom/myopicmobile/textwarrior/android/TouchNavigationMethod;->_textField:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    sub-int/2addr v0, v1

    invoke-virtual {v2, v1, v0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->setSelectionRange(II)V

    :cond_3c
    return v4

    :cond_3d
    invoke-virtual {v2, v1}, Lcom/myopicmobile/textwarrior/common/DocumentProvider;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v3

    if-eqz v3, :cond_2b

    add-int/lit8 v1, v1, -0x1

    goto :goto_29

    :cond_4a
    invoke-virtual {v2, v0}, Lcom/myopicmobile/textwarrior/common/DocumentProvider;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v3

    if-eqz v3, :cond_31

    add-int/lit8 v0, v0, 0x1

    goto :goto_2f
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .registers 7
    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/myopicmobile/textwarrior/android/TouchNavigationMethod;->screenToViewX(I)I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0, v1}, Lcom/myopicmobile/textwarrior/android/TouchNavigationMethod;->screenToViewY(I)I

    move-result v1

    iget-object v2, p0, Lcom/myopicmobile/textwarrior/android/TouchNavigationMethod;->_textField:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    invoke-virtual {v2}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->getCaretPosition()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/myopicmobile/textwarrior/android/TouchNavigationMethod;->isNearChar(III)Z

    move-result v2

    iput-boolean v2, p0, Lcom/myopicmobile/textwarrior/android/TouchNavigationMethod;->_isCaretTouched:Z

    iget-object v2, p0, Lcom/myopicmobile/textwarrior/android/TouchNavigationMethod;->_textField:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    invoke-virtual {v2}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->isFlingScrolling()Z

    move-result v2

    if-eqz v2, :cond_37

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/TouchNavigationMethod;->_textField:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    invoke-virtual {v0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->stopFlingScrolling()V

    :cond_2d
    :goto_2d
    iget-boolean v0, p0, Lcom/myopicmobile/textwarrior/android/TouchNavigationMethod;->_isCaretTouched:Z

    if-eqz v0, :cond_36

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/TouchNavigationMethod;->_textField:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    invoke-virtual {v0, v3}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->performHapticFeedback(I)Z

    :cond_36
    return v4

    :cond_37
    iget-object v2, p0, Lcom/myopicmobile/textwarrior/android/TouchNavigationMethod;->_textField:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    invoke-virtual {v2}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->isSelectText()Z

    move-result v2

    if-eqz v2, :cond_2d

    iget-object v2, p0, Lcom/myopicmobile/textwarrior/android/TouchNavigationMethod;->_textField:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    invoke-virtual {v2}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->getSelectionStart()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/myopicmobile/textwarrior/android/TouchNavigationMethod;->isNearChar(III)Z

    move-result v2

    if-eqz v2, :cond_58

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/TouchNavigationMethod;->_textField:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    invoke-virtual {v0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->focusSelectionStart()V

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/TouchNavigationMethod;->_textField:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    invoke-virtual {v0, v3}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->performHapticFeedback(I)Z

    iput-boolean v4, p0, Lcom/myopicmobile/textwarrior/android/TouchNavigationMethod;->_isCaretTouched:Z

    goto :goto_2d

    :cond_58
    iget-object v2, p0, Lcom/myopicmobile/textwarrior/android/TouchNavigationMethod;->_textField:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    invoke-virtual {v2}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->getSelectionEnd()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/myopicmobile/textwarrior/android/TouchNavigationMethod;->isNearChar(III)Z

    move-result v0

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/TouchNavigationMethod;->_textField:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    invoke-virtual {v0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->focusSelectionEnd()V

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/TouchNavigationMethod;->_textField:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    invoke-virtual {v0, v3}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->performHapticFeedback(I)Z

    iput-boolean v4, p0, Lcom/myopicmobile/textwarrior/android/TouchNavigationMethod;->_isCaretTouched:Z

    goto :goto_2d
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 9
    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/myopicmobile/textwarrior/android/TouchNavigationMethod;->_isCaretTouched:Z

    if-nez v0, :cond_14

    iget v0, p0, Lcom/myopicmobile/textwarrior/android/TouchNavigationMethod;->fling:I

    if-ne v0, v3, :cond_18

    int-to-float p4, v2

    :cond_b
    :goto_b
    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/TouchNavigationMethod;->_textField:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    neg-float v1, p3

    float-to-int v1, v1

    neg-float v2, p4

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->flingScroll(II)V

    :cond_14
    invoke-virtual {p0, p2}, Lcom/myopicmobile/textwarrior/android/TouchNavigationMethod;->onUp(Landroid/view/MotionEvent;)Z

    return v3

    :cond_18
    iget v0, p0, Lcom/myopicmobile/textwarrior/android/TouchNavigationMethod;->fling:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_b

    int-to-float p3, v2

    goto :goto_b
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4

    const/4 v0, 0x0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 4

    const/4 v0, 0x0

    return v0
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

    invoke-virtual {p0, p1}, Lcom/myopicmobile/textwarrior/android/TouchNavigationMethod;->onDoubleTap(Landroid/view/MotionEvent;)Z

    return-void
.end method

.method onPause()V
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    return-void
.end method

.method onResume()V
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 10
    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/4 v4, 0x0

    const/4 v3, -0x1

    const/4 v2, 0x1

    iget-boolean v0, p0, Lcom/myopicmobile/textwarrior/android/TouchNavigationMethod;->_isCaretTouched:Z

    if-eqz v0, :cond_16

    invoke-direct {p0, p2}, Lcom/myopicmobile/textwarrior/android/TouchNavigationMethod;->dragCaret(Landroid/view/MotionEvent;)V

    :cond_a
    :goto_a
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    if-ne v0, v2, :cond_15

    invoke-virtual {p0, p2}, Lcom/myopicmobile/textwarrior/android/TouchNavigationMethod;->onUp(Landroid/view/MotionEvent;)Z

    :cond_15
    return v2

    :cond_16
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-ne v0, v2, :cond_a

    iget v0, p0, Lcom/myopicmobile/textwarrior/android/TouchNavigationMethod;->fling:I

    if-nez v0, :cond_2e

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_37

    iput v2, p0, Lcom/myopicmobile/textwarrior/android/TouchNavigationMethod;->fling:I

    :cond_2e
    :goto_2e
    iget v0, p0, Lcom/myopicmobile/textwarrior/android/TouchNavigationMethod;->fling:I

    if-ne v0, v2, :cond_3a

    int-to-float p4, v4

    :cond_33
    :goto_33
    invoke-direct {p0, p3, p4}, Lcom/myopicmobile/textwarrior/android/TouchNavigationMethod;->scrollView(FF)V

    goto :goto_a

    :cond_37
    iput v3, p0, Lcom/myopicmobile/textwarrior/android/TouchNavigationMethod;->fling:I

    goto :goto_2e

    :cond_3a
    iget v0, p0, Lcom/myopicmobile/textwarrior/android/TouchNavigationMethod;->fling:I

    if-ne v0, v3, :cond_33

    int-to-float p3, v4

    goto :goto_33
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
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

    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .registers 8
    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/4 v5, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/myopicmobile/textwarrior/android/TouchNavigationMethod;->screenToViewX(I)I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0, v1}, Lcom/myopicmobile/textwarrior/android/TouchNavigationMethod;->screenToViewY(I)I

    move-result v1

    iget-object v2, p0, Lcom/myopicmobile/textwarrior/android/TouchNavigationMethod;->_textField:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    invoke-virtual {v2, v0, v1}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->coordToCharIndex(II)I

    move-result v2

    iget-object v3, p0, Lcom/myopicmobile/textwarrior/android/TouchNavigationMethod;->_textField:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    invoke-virtual {v3}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->isSelectText()Z

    move-result v3

    if-eqz v3, :cond_5b

    iget-object v3, p0, Lcom/myopicmobile/textwarrior/android/TouchNavigationMethod;->_textField:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    invoke-virtual {v3, v0, v1}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->coordToCharIndexStrict(II)I

    move-result v3

    iget-object v4, p0, Lcom/myopicmobile/textwarrior/android/TouchNavigationMethod;->_textField:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    invoke-virtual {v4, v3}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->inSelectionRange(I)Z

    move-result v4

    if-nez v4, :cond_47

    iget-object v4, p0, Lcom/myopicmobile/textwarrior/android/TouchNavigationMethod;->_textField:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    invoke-virtual {v4}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->getSelectionStart()I

    move-result v4

    invoke-virtual {p0, v0, v1, v4}, Lcom/myopicmobile/textwarrior/android/TouchNavigationMethod;->isNearChar(III)Z

    move-result v4

    if-nez v4, :cond_47

    iget-object v4, p0, Lcom/myopicmobile/textwarrior/android/TouchNavigationMethod;->_textField:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    invoke-virtual {v4}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->getSelectionEnd()I

    move-result v4

    invoke-virtual {p0, v0, v1, v4}, Lcom/myopicmobile/textwarrior/android/TouchNavigationMethod;->isNearChar(III)Z

    move-result v0

    if-eqz v0, :cond_4d

    :cond_47
    :goto_47
    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/TouchNavigationMethod;->_textField:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    invoke-virtual {v0, v5}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->showIME(Z)V

    return v5

    :cond_4d
    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/TouchNavigationMethod;->_textField:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->selectText(Z)V

    if-ltz v3, :cond_47

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/TouchNavigationMethod;->_textField:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    invoke-virtual {v0, v2}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->moveCaret(I)V

    goto :goto_47

    :cond_5b
    if-ltz v2, :cond_47

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/TouchNavigationMethod;->_textField:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    invoke-virtual {v0, v2}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->moveCaret(I)V

    goto :goto_47
.end method

.method public onTextDrawComplete(Landroid/graphics/Canvas;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            ")V"
        }
    .end annotation

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 5

    invoke-direct {p0, p1}, Lcom/myopicmobile/textwarrior/android/TouchNavigationMethod;->onTouchZoon(Landroid/view/MotionEvent;)Z

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/TouchNavigationMethod;->_gestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_18

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    const/4 v2, 0x1

    if-ne v1, v2, :cond_18

    invoke-virtual {p0, p1}, Lcom/myopicmobile/textwarrior/android/TouchNavigationMethod;->onUp(Landroid/view/MotionEvent;)Z

    move-result v0

    :cond_18
    return v0
.end method

.method public onUp(Landroid/view/MotionEvent;)Z
    .registers 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/TouchNavigationMethod;->_textField:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    invoke-virtual {v0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->stopAutoScrollCaret()V

    iput-boolean v1, p0, Lcom/myopicmobile/textwarrior/android/TouchNavigationMethod;->_isCaretTouched:Z

    int-to-float v0, v1

    iput v0, p0, Lcom/myopicmobile/textwarrior/android/TouchNavigationMethod;->lastDist:F

    iput v1, p0, Lcom/myopicmobile/textwarrior/android/TouchNavigationMethod;->fling:I

    const/4 v0, 0x1

    return v0
.end method

.method protected final screenToViewX(I)I
    .registers 4

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/TouchNavigationMethod;->_textField:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    invoke-virtual {v0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->getPaddingLeft()I

    move-result v0

    sub-int v0, p1, v0

    iget-object v1, p0, Lcom/myopicmobile/textwarrior/android/TouchNavigationMethod;->_textField:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    invoke-virtual {v1}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->getScrollX()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method protected final screenToViewY(I)I
    .registers 4

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/TouchNavigationMethod;->_textField:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    invoke-virtual {v0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->getPaddingTop()I

    move-result v0

    sub-int v0, p1, v0

    iget-object v1, p0, Lcom/myopicmobile/textwarrior/android/TouchNavigationMethod;->_textField:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    invoke-virtual {v1}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->getScrollY()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
