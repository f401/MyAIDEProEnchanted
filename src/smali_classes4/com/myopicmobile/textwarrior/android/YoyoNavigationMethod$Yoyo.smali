.class Lcom/myopicmobile/textwarrior/android/YoyoNavigationMethod$Yoyo;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/myopicmobile/textwarrior/android/YoyoNavigationMethod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Yoyo"
.end annotation


# static fields
.field private static final YOYO_HANDLE_ALPHA:I = 0xb4

.field private static final YOYO_HANDLE_COLOR:I = -0xffff01


# instance fields
.field public final HANDLE_BLOAT:Landroid/graphics/Rect;

.field private final HANDLE_RECT:Landroid/graphics/Rect;

.field private final YOYO_STRING_RESTING_HEIGHT:I

.field private _anchorX:I

.field private _anchorY:I

.field private final _brush:Landroid/graphics/Paint;

.field private _handleX:I

.field private _handleY:I

.field private _isShow:Z

.field private _xOffset:I

.field private _yOffset:I

.field private final this$0:Lcom/myopicmobile/textwarrior/android/YoyoNavigationMethod;


# direct methods
.method public constructor <init>(Lcom/myopicmobile/textwarrior/android/YoyoNavigationMethod;)V
    .registers 7

    const/4 v4, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/myopicmobile/textwarrior/android/YoyoNavigationMethod$Yoyo;->this$0:Lcom/myopicmobile/textwarrior/android/YoyoNavigationMethod;

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/YoyoNavigationMethod$Yoyo;->this$0:Lcom/myopicmobile/textwarrior/android/YoyoNavigationMethod;

    invoke-static {v0}, Lcom/myopicmobile/textwarrior/android/YoyoNavigationMethod;->access$L1000007(Lcom/myopicmobile/textwarrior/android/YoyoNavigationMethod;)I

    move-result v0

    div-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/myopicmobile/textwarrior/android/YoyoNavigationMethod$Yoyo;->YOYO_STRING_RESTING_HEIGHT:I

    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/myopicmobile/textwarrior/android/YoyoNavigationMethod$Yoyo;->this$0:Lcom/myopicmobile/textwarrior/android/YoyoNavigationMethod;

    invoke-static {v1}, Lcom/myopicmobile/textwarrior/android/YoyoNavigationMethod;->access$L1000007(Lcom/myopicmobile/textwarrior/android/YoyoNavigationMethod;)I

    move-result v1

    iget-object v2, p0, Lcom/myopicmobile/textwarrior/android/YoyoNavigationMethod$Yoyo;->this$0:Lcom/myopicmobile/textwarrior/android/YoyoNavigationMethod;

    invoke-static {v2}, Lcom/myopicmobile/textwarrior/android/YoyoNavigationMethod;->access$L1000007(Lcom/myopicmobile/textwarrior/android/YoyoNavigationMethod;)I

    move-result v2

    invoke-direct {v0, v4, v4, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/myopicmobile/textwarrior/android/YoyoNavigationMethod$Yoyo;->HANDLE_RECT:Landroid/graphics/Rect;

    iput v4, p0, Lcom/myopicmobile/textwarrior/android/YoyoNavigationMethod$Yoyo;->_anchorX:I

    iput v4, p0, Lcom/myopicmobile/textwarrior/android/YoyoNavigationMethod$Yoyo;->_anchorY:I

    iput v4, p0, Lcom/myopicmobile/textwarrior/android/YoyoNavigationMethod$Yoyo;->_handleX:I

    iput v4, p0, Lcom/myopicmobile/textwarrior/android/YoyoNavigationMethod$Yoyo;->_handleY:I

    iput v4, p0, Lcom/myopicmobile/textwarrior/android/YoyoNavigationMethod$Yoyo;->_xOffset:I

    iput v4, p0, Lcom/myopicmobile/textwarrior/android/YoyoNavigationMethod$Yoyo;->_yOffset:I

    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/myopicmobile/textwarrior/android/YoyoNavigationMethod$Yoyo;->getRadius()I

    move-result v1

    iget-object v2, p0, Lcom/myopicmobile/textwarrior/android/YoyoNavigationMethod$Yoyo;->HANDLE_RECT:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iget v3, p0, Lcom/myopicmobile/textwarrior/android/YoyoNavigationMethod$Yoyo;->YOYO_STRING_RESTING_HEIGHT:I

    add-int/2addr v2, v3

    invoke-direct {v0, v1, v4, v4, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/myopicmobile/textwarrior/android/YoyoNavigationMethod$Yoyo;->HANDLE_BLOAT:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/myopicmobile/textwarrior/android/YoyoNavigationMethod$Yoyo;->_brush:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/YoyoNavigationMethod$Yoyo;->_brush:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/myopicmobile/textwarrior/android/YoyoNavigationMethod$Yoyo;->this$0:Lcom/myopicmobile/textwarrior/android/YoyoNavigationMethod;

    iget-object v1, v1, Lcom/myopicmobile/textwarrior/android/TouchNavigationMethod;->_textField:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    invoke-virtual {v1}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->getColorScheme()Lcom/myopicmobile/textwarrior/common/ColorScheme;

    move-result-object v1

    sget-object v2, Lcom/myopicmobile/textwarrior/common/ColorScheme$Colorable;->CARET_BACKGROUND:Lcom/myopicmobile/textwarrior/common/ColorScheme$Colorable;

    invoke-virtual {v1, v2}, Lcom/myopicmobile/textwarrior/common/ColorScheme;->getColor(Lcom/myopicmobile/textwarrior/common/ColorScheme$Colorable;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/YoyoNavigationMethod$Yoyo;->_brush:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void
.end method

.method static access$0(Lcom/myopicmobile/textwarrior/android/YoyoNavigationMethod$Yoyo;)Lcom/myopicmobile/textwarrior/android/YoyoNavigationMethod;
    .registers 2

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/YoyoNavigationMethod$Yoyo;->this$0:Lcom/myopicmobile/textwarrior/android/YoyoNavigationMethod;

    return-object v0
.end method

.method private invalidateYoyo()V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iget v0, p0, Lcom/myopicmobile/textwarrior/android/YoyoNavigationMethod$Yoyo;->_handleX:I

    invoke-virtual {p0}, Lcom/myopicmobile/textwarrior/android/YoyoNavigationMethod$Yoyo;->getRadius()I

    move-result v1

    add-int/2addr v1, v0

    iget v0, p0, Lcom/myopicmobile/textwarrior/android/YoyoNavigationMethod$Yoyo;->_anchorX:I

    if-lt v1, v0, :cond_26

    iget v0, p0, Lcom/myopicmobile/textwarrior/android/YoyoNavigationMethod$Yoyo;->_anchorX:I

    add-int/lit8 v1, v1, 0x1

    move v2, v0

    move v3, v1

    :goto_11
    iget v0, p0, Lcom/myopicmobile/textwarrior/android/YoyoNavigationMethod$Yoyo;->_handleY:I

    iget v1, p0, Lcom/myopicmobile/textwarrior/android/YoyoNavigationMethod$Yoyo;->_anchorY:I

    if-lt v0, v1, :cond_2d

    iget v1, p0, Lcom/myopicmobile/textwarrior/android/YoyoNavigationMethod$Yoyo;->_anchorY:I

    iget v0, p0, Lcom/myopicmobile/textwarrior/android/YoyoNavigationMethod$Yoyo;->_handleY:I

    :goto_1b
    iget-object v4, p0, Lcom/myopicmobile/textwarrior/android/YoyoNavigationMethod$Yoyo;->this$0:Lcom/myopicmobile/textwarrior/android/YoyoNavigationMethod;

    iget-object v4, v4, Lcom/myopicmobile/textwarrior/android/TouchNavigationMethod;->_textField:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    invoke-virtual {v4, v2, v1, v3, v0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->invalidate(IIII)V

    invoke-virtual {p0}, Lcom/myopicmobile/textwarrior/android/YoyoNavigationMethod$Yoyo;->invalidateHandle()V

    return-void

    :cond_26
    iget v0, p0, Lcom/myopicmobile/textwarrior/android/YoyoNavigationMethod$Yoyo;->_anchorX:I

    add-int/lit8 v0, v0, 0x1

    move v2, v1

    move v3, v0

    goto :goto_11

    :cond_2d
    iget v1, p0, Lcom/myopicmobile/textwarrior/android/YoyoNavigationMethod$Yoyo;->_handleY:I

    iget v0, p0, Lcom/myopicmobile/textwarrior/android/YoyoNavigationMethod$Yoyo;->_anchorY:I

    goto :goto_1b
.end method


# virtual methods
.method public attachYoyo(II)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/myopicmobile/textwarrior/android/YoyoNavigationMethod$Yoyo;->invalidateYoyo()V

    invoke-virtual {p0, p1, p2}, Lcom/myopicmobile/textwarrior/android/YoyoNavigationMethod$Yoyo;->setRestingCoord(II)V

    invoke-direct {p0}, Lcom/myopicmobile/textwarrior/android/YoyoNavigationMethod$Yoyo;->invalidateYoyo()V

    return-void
.end method

.method public clearInitialTouch()V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    const/4 v0, 0x0

    iput v0, p0, Lcom/myopicmobile/textwarrior/android/YoyoNavigationMethod$Yoyo;->_xOffset:I

    iput v0, p0, Lcom/myopicmobile/textwarrior/android/YoyoNavigationMethod$Yoyo;->_yOffset:I

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;Z)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Z)V"
        }
    .end annotation

    const/16 v7, 0x3c

    invoke-virtual {p0}, Lcom/myopicmobile/textwarrior/android/YoyoNavigationMethod$Yoyo;->getRadius()I

    move-result v6

    iget v0, p0, Lcom/myopicmobile/textwarrior/android/YoyoNavigationMethod$Yoyo;->_anchorX:I

    int-to-float v1, v0

    iget v0, p0, Lcom/myopicmobile/textwarrior/android/YoyoNavigationMethod$Yoyo;->_anchorY:I

    int-to-float v2, v0

    iget v0, p0, Lcom/myopicmobile/textwarrior/android/YoyoNavigationMethod$Yoyo;->_handleX:I

    add-int/2addr v0, v6

    int-to-float v3, v0

    iget v0, p0, Lcom/myopicmobile/textwarrior/android/YoyoNavigationMethod$Yoyo;->_handleY:I

    add-int/2addr v0, v6

    int-to-float v4, v0

    iget-object v5, p0, Lcom/myopicmobile/textwarrior/android/YoyoNavigationMethod$Yoyo;->_brush:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    new-instance v1, Landroid/graphics/RectF;

    iget v0, p0, Lcom/myopicmobile/textwarrior/android/YoyoNavigationMethod$Yoyo;->_anchorX:I

    sub-int/2addr v0, v6

    int-to-float v0, v0

    iget v2, p0, Lcom/myopicmobile/textwarrior/android/YoyoNavigationMethod$Yoyo;->_anchorY:I

    div-int/lit8 v3, v6, 0x2

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/myopicmobile/textwarrior/android/YoyoNavigationMethod$Yoyo;->YOYO_STRING_RESTING_HEIGHT:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, p0, Lcom/myopicmobile/textwarrior/android/YoyoNavigationMethod$Yoyo;->_handleX:I

    mul-int/lit8 v4, v6, 0x2

    add-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, p0, Lcom/myopicmobile/textwarrior/android/YoyoNavigationMethod$Yoyo;->_handleY:I

    div-int/lit8 v5, v6, 0x2

    add-int/2addr v4, v5

    int-to-float v4, v4

    invoke-direct {v1, v0, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    int-to-float v2, v7

    int-to-float v3, v7

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/myopicmobile/textwarrior/android/YoyoNavigationMethod$Yoyo;->_brush:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/myopicmobile/textwarrior/android/YoyoNavigationMethod$Yoyo;->_handleX:I

    int-to-float v1, v1

    iget v2, p0, Lcom/myopicmobile/textwarrior/android/YoyoNavigationMethod$Yoyo;->_handleY:I

    int-to-float v2, v2

    iget v3, p0, Lcom/myopicmobile/textwarrior/android/YoyoNavigationMethod$Yoyo;->_handleX:I

    iget-object v4, p0, Lcom/myopicmobile/textwarrior/android/YoyoNavigationMethod$Yoyo;->HANDLE_RECT:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, p0, Lcom/myopicmobile/textwarrior/android/YoyoNavigationMethod$Yoyo;->_handleY:I

    iget-object v5, p0, Lcom/myopicmobile/textwarrior/android/YoyoNavigationMethod$Yoyo;->HANDLE_RECT:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v1, p0, Lcom/myopicmobile/textwarrior/android/YoyoNavigationMethod$Yoyo;->_brush:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void
.end method

.method public findNearestChar(II)Lcom/myopicmobile/textwarrior/common/Pair;
    .registers 8

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/YoyoNavigationMethod$Yoyo;->this$0:Lcom/myopicmobile/textwarrior/android/YoyoNavigationMethod;

    invoke-virtual {v0, p1}, Lcom/myopicmobile/textwarrior/android/YoyoNavigationMethod;->screenToViewX(I)I

    move-result v0

    iget v1, p0, Lcom/myopicmobile/textwarrior/android/YoyoNavigationMethod$Yoyo;->_xOffset:I

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/myopicmobile/textwarrior/android/YoyoNavigationMethod$Yoyo;->getRadius()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/myopicmobile/textwarrior/android/YoyoNavigationMethod$Yoyo;->this$0:Lcom/myopicmobile/textwarrior/android/YoyoNavigationMethod;

    invoke-virtual {v1, p2}, Lcom/myopicmobile/textwarrior/android/YoyoNavigationMethod;->screenToViewY(I)I

    move-result v1

    iget v2, p0, Lcom/myopicmobile/textwarrior/android/YoyoNavigationMethod$Yoyo;->_yOffset:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/myopicmobile/textwarrior/android/YoyoNavigationMethod$Yoyo;->YOYO_STRING_RESTING_HEIGHT:I

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x2

    new-instance v2, Lcom/myopicmobile/textwarrior/common/Pair;

    iget-object v3, p0, Lcom/myopicmobile/textwarrior/android/YoyoNavigationMethod$Yoyo;->this$0:Lcom/myopicmobile/textwarrior/android/YoyoNavigationMethod;

    iget-object v3, v3, Lcom/myopicmobile/textwarrior/android/TouchNavigationMethod;->_textField:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    invoke-virtual {v3, v0, v1}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->coordToCharIndex(II)I

    move-result v3

    iget-object v4, p0, Lcom/myopicmobile/textwarrior/android/YoyoNavigationMethod$Yoyo;->this$0:Lcom/myopicmobile/textwarrior/android/YoyoNavigationMethod;

    iget-object v4, v4, Lcom/myopicmobile/textwarrior/android/TouchNavigationMethod;->_textField:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    invoke-virtual {v4, v0, v1}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->coordToCharIndexStrict(II)I

    move-result v0

    invoke-direct {v2, v3, v0}, Lcom/myopicmobile/textwarrior/common/Pair;-><init>(II)V

    return-object v2
.end method

.method public final getRadius()I
    .registers 2

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/YoyoNavigationMethod$Yoyo;->HANDLE_RECT:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public hide()V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/myopicmobile/textwarrior/android/YoyoNavigationMethod$Yoyo;->_isShow:Z

    return-void
.end method

.method public invalidateHandle()V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Lcom/myopicmobile/textwarrior/android/YoyoNavigationMethod$Yoyo;->_handleX:I

    iget v2, p0, Lcom/myopicmobile/textwarrior/android/YoyoNavigationMethod$Yoyo;->_handleY:I

    iget v3, p0, Lcom/myopicmobile/textwarrior/android/YoyoNavigationMethod$Yoyo;->_handleX:I

    iget-object v4, p0, Lcom/myopicmobile/textwarrior/android/YoyoNavigationMethod$Yoyo;->HANDLE_RECT:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/myopicmobile/textwarrior/android/YoyoNavigationMethod$Yoyo;->_handleY:I

    iget-object v5, p0, Lcom/myopicmobile/textwarrior/android/YoyoNavigationMethod$Yoyo;->HANDLE_RECT:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v1, p0, Lcom/myopicmobile/textwarrior/android/YoyoNavigationMethod$Yoyo;->this$0:Lcom/myopicmobile/textwarrior/android/YoyoNavigationMethod;

    iget-object v1, v1, Lcom/myopicmobile/textwarrior/android/TouchNavigationMethod;->_textField:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    invoke-virtual {v1, v0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->invalidate(Landroid/graphics/Rect;)V

    return-void
.end method

.method public isInHandle(II)Z
    .registers 5

    iget-boolean v0, p0, Lcom/myopicmobile/textwarrior/android/YoyoNavigationMethod$Yoyo;->_isShow:Z

    if-eqz v0, :cond_1e

    iget v0, p0, Lcom/myopicmobile/textwarrior/android/YoyoNavigationMethod$Yoyo;->_handleX:I

    if-lt p1, v0, :cond_1e

    iget v0, p0, Lcom/myopicmobile/textwarrior/android/YoyoNavigationMethod$Yoyo;->_handleX:I

    iget-object v1, p0, Lcom/myopicmobile/textwarrior/android/YoyoNavigationMethod$Yoyo;->HANDLE_RECT:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v1

    if-ge p1, v0, :cond_1e

    iget v0, p0, Lcom/myopicmobile/textwarrior/android/YoyoNavigationMethod$Yoyo;->_handleY:I

    if-lt p2, v0, :cond_1e

    iget v0, p0, Lcom/myopicmobile/textwarrior/android/YoyoNavigationMethod$Yoyo;->_handleY:I

    iget-object v1, p0, Lcom/myopicmobile/textwarrior/android/YoyoNavigationMethod$Yoyo;->HANDLE_RECT:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v1

    if-lt p2, v0, :cond_20

    :cond_1e
    const/4 v0, 0x0

    :goto_1f
    return v0

    :cond_20
    const/4 v0, 0x1

    goto :goto_1f
.end method

.method public isShow()Z
    .registers 2

    iget-boolean v0, p0, Lcom/myopicmobile/textwarrior/android/YoyoNavigationMethod$Yoyo;->_isShow:Z

    return v0
.end method

.method public setHandleColor(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/YoyoNavigationMethod$Yoyo;->_brush:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public setInitialTouch(II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    iget v0, p0, Lcom/myopicmobile/textwarrior/android/YoyoNavigationMethod$Yoyo;->_handleX:I

    sub-int v0, p1, v0

    iput v0, p0, Lcom/myopicmobile/textwarrior/android/YoyoNavigationMethod$Yoyo;->_xOffset:I

    iget v0, p0, Lcom/myopicmobile/textwarrior/android/YoyoNavigationMethod$Yoyo;->_handleY:I

    sub-int v0, p2, v0

    iput v0, p0, Lcom/myopicmobile/textwarrior/android/YoyoNavigationMethod$Yoyo;->_yOffset:I

    return-void
.end method

.method public setRestingCoord(II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    iput p1, p0, Lcom/myopicmobile/textwarrior/android/YoyoNavigationMethod$Yoyo;->_anchorX:I

    iput p2, p0, Lcom/myopicmobile/textwarrior/android/YoyoNavigationMethod$Yoyo;->_anchorY:I

    invoke-virtual {p0}, Lcom/myopicmobile/textwarrior/android/YoyoNavigationMethod$Yoyo;->getRadius()I

    move-result v0

    sub-int v0, p1, v0

    iput v0, p0, Lcom/myopicmobile/textwarrior/android/YoyoNavigationMethod$Yoyo;->_handleX:I

    iget v0, p0, Lcom/myopicmobile/textwarrior/android/YoyoNavigationMethod$Yoyo;->YOYO_STRING_RESTING_HEIGHT:I

    add-int/2addr v0, p2

    iput v0, p0, Lcom/myopicmobile/textwarrior/android/YoyoNavigationMethod$Yoyo;->_handleY:I

    return-void
.end method

.method public show()V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/myopicmobile/textwarrior/android/YoyoNavigationMethod$Yoyo;->_isShow:Z

    return-void
.end method
