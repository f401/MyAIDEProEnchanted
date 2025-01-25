.class public Lcom/s1243808733/view/ColorBackgroundTextView$AlphaPatternDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "ColorBackgroundTextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/s1243808733/view/ColorBackgroundTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AlphaPatternDrawable"
.end annotation


# instance fields
.field private backgroundColor:I

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mPaint:Landroid/graphics/Paint;

.field private mPaintGray:Landroid/graphics/Paint;

.field private mPaintWhite:Landroid/graphics/Paint;

.field private mRectangleSize:I

.field private numRectanglesHorizontal:I

.field private numRectanglesVertical:I

.field final this$0:Lcom/s1243808733/view/ColorBackgroundTextView;


# direct methods
.method public constructor <init>(Lcom/s1243808733/view/ColorBackgroundTextView;II)V
    .registers 5

    .line 115
    iput-object p1, p0, Lcom/s1243808733/view/ColorBackgroundTextView$AlphaPatternDrawable;->this$0:Lcom/s1243808733/view/ColorBackgroundTextView;

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 94
    const/16 p1, 0xa

    iput p1, p0, Lcom/s1243808733/view/ColorBackgroundTextView$AlphaPatternDrawable;->mRectangleSize:I

    .line 96
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/s1243808733/view/ColorBackgroundTextView$AlphaPatternDrawable;->mPaint:Landroid/graphics/Paint;

    .line 97
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/s1243808733/view/ColorBackgroundTextView$AlphaPatternDrawable;->mPaintWhite:Landroid/graphics/Paint;

    .line 98
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/s1243808733/view/ColorBackgroundTextView$AlphaPatternDrawable;->mPaintGray:Landroid/graphics/Paint;

    .line 108
    const/4 p1, 0x0

    iput p1, p0, Lcom/s1243808733/view/ColorBackgroundTextView$AlphaPatternDrawable;->backgroundColor:I

    .line 111
    iget-object p1, p0, Lcom/s1243808733/view/ColorBackgroundTextView$AlphaPatternDrawable;->mPaintWhite:Landroid/graphics/Paint;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 112
    iget-object p1, p0, Lcom/s1243808733/view/ColorBackgroundTextView$AlphaPatternDrawable;->mPaintGray:Landroid/graphics/Paint;

    const v0, -0x343435

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 116
    iput p2, p0, Lcom/s1243808733/view/ColorBackgroundTextView$AlphaPatternDrawable;->mRectangleSize:I

    .line 117
    iput p3, p0, Lcom/s1243808733/view/ColorBackgroundTextView$AlphaPatternDrawable;->backgroundColor:I

    return-void
.end method

.method private generatePatternBitmap()V
    .registers 10

    .line 154
    invoke-virtual {p0}, Lcom/s1243808733/view/ColorBackgroundTextView$AlphaPatternDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-lez v0, :cond_74

    invoke-virtual {p0}, Lcom/s1243808733/view/ColorBackgroundTextView$AlphaPatternDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-gtz v0, :cond_15

    goto :goto_74

    .line 158
    :cond_15
    invoke-virtual {p0}, Lcom/s1243808733/view/ColorBackgroundTextView$AlphaPatternDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p0}, Lcom/s1243808733/view/ColorBackgroundTextView$AlphaPatternDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/s1243808733/view/ColorBackgroundTextView$AlphaPatternDrawable;->mBitmap:Landroid/graphics/Bitmap;

    .line 159
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/s1243808733/view/ColorBackgroundTextView$AlphaPatternDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 161
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 163
    :goto_3c
    iget v5, p0, Lcom/s1243808733/view/ColorBackgroundTextView$AlphaPatternDrawable;->numRectanglesVertical:I

    if-gt v4, v5, :cond_74

    move v6, v3

    const/4 v5, 0x0

    .line 166
    :goto_42
    iget v7, p0, Lcom/s1243808733/view/ColorBackgroundTextView$AlphaPatternDrawable;->numRectanglesHorizontal:I

    if-gt v5, v7, :cond_6f

    .line 168
    iget v7, p0, Lcom/s1243808733/view/ColorBackgroundTextView$AlphaPatternDrawable;->mRectangleSize:I

    mul-int v7, v7, v4

    iput v7, v1, Landroid/graphics/Rect;->top:I

    .line 169
    iget v7, p0, Lcom/s1243808733/view/ColorBackgroundTextView$AlphaPatternDrawable;->mRectangleSize:I

    mul-int v7, v7, v5

    iput v7, v1, Landroid/graphics/Rect;->left:I

    .line 170
    iget v7, v1, Landroid/graphics/Rect;->top:I

    iget v8, p0, Lcom/s1243808733/view/ColorBackgroundTextView$AlphaPatternDrawable;->mRectangleSize:I

    add-int/2addr v7, v8

    iput v7, v1, Landroid/graphics/Rect;->bottom:I

    .line 171
    iget v7, v1, Landroid/graphics/Rect;->left:I

    iget v8, p0, Lcom/s1243808733/view/ColorBackgroundTextView$AlphaPatternDrawable;->mRectangleSize:I

    add-int/2addr v7, v8

    iput v7, v1, Landroid/graphics/Rect;->right:I

    if-eqz v6, :cond_65

    .line 173
    iget-object v7, p0, Lcom/s1243808733/view/ColorBackgroundTextView$AlphaPatternDrawable;->mPaintWhite:Landroid/graphics/Paint;

    goto :goto_67

    :cond_65
    iget-object v7, p0, Lcom/s1243808733/view/ColorBackgroundTextView$AlphaPatternDrawable;->mPaintGray:Landroid/graphics/Paint;

    :goto_67
    invoke-virtual {v0, v1, v7}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    xor-int/lit8 v6, v6, 0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_42

    :cond_6f
    xor-int/lit8 v3, v3, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_3c

    :cond_74
    :goto_74
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 6

    .line 122
    iget-object v0, p0, Lcom/s1243808733/view/ColorBackgroundTextView$AlphaPatternDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Lcom/s1243808733/view/ColorBackgroundTextView$AlphaPatternDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget-object v2, p0, Lcom/s1243808733/view/ColorBackgroundTextView$AlphaPatternDrawable;->mPaint:Landroid/graphics/Paint;

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 123
    iget v0, p0, Lcom/s1243808733/view/ColorBackgroundTextView$AlphaPatternDrawable;->backgroundColor:I

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    return-void
.end method

.method public getOpacity()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .registers 5

    .line 133
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 135
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v0

    .line 136
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    .line 138
    iget v1, p0, Lcom/s1243808733/view/ColorBackgroundTextView$AlphaPatternDrawable;->mRectangleSize:I

    div-int/2addr p1, v1

    int-to-double v1, p1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int p1, v1

    iput p1, p0, Lcom/s1243808733/view/ColorBackgroundTextView$AlphaPatternDrawable;->numRectanglesHorizontal:I

    .line 139
    iget p1, p0, Lcom/s1243808733/view/ColorBackgroundTextView$AlphaPatternDrawable;->mRectangleSize:I

    div-int/2addr v0, p1

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p1, v0

    iput p1, p0, Lcom/s1243808733/view/ColorBackgroundTextView$AlphaPatternDrawable;->numRectanglesVertical:I

    .line 141
    invoke-direct {p0}, Lcom/s1243808733/view/ColorBackgroundTextView$AlphaPatternDrawable;->generatePatternBitmap()V

    return-void
.end method

.method public setAlpha(I)V
    .registers 2

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 2

    return-void
.end method
