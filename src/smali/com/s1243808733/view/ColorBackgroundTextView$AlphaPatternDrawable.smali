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
    .locals 2

    .line 115
    iput-object p1, p0, Lcom/s1243808733/view/ColorBackgroundTextView$AlphaPatternDrawable;->this$0:Lcom/s1243808733/view/ColorBackgroundTextView;

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 94
    const/16 v0, 0xa

    iput v0, p0, Lcom/s1243808733/view/ColorBackgroundTextView$AlphaPatternDrawable;->mRectangleSize:I

    .line 96
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/s1243808733/view/ColorBackgroundTextView$AlphaPatternDrawable;->mPaint:Landroid/graphics/Paint;

    .line 97
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/s1243808733/view/ColorBackgroundTextView$AlphaPatternDrawable;->mPaintWhite:Landroid/graphics/Paint;

    .line 98
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/s1243808733/view/ColorBackgroundTextView$AlphaPatternDrawable;->mPaintGray:Landroid/graphics/Paint;

    .line 108
    const/4 v0, 0x0

    iput v0, p0, Lcom/s1243808733/view/ColorBackgroundTextView$AlphaPatternDrawable;->backgroundColor:I

    .line 111
    iget-object v0, p0, Lcom/s1243808733/view/ColorBackgroundTextView$AlphaPatternDrawable;->mPaintWhite:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 112
    iget-object v0, p0, Lcom/s1243808733/view/ColorBackgroundTextView$AlphaPatternDrawable;->mPaintGray:Landroid/graphics/Paint;

    const v1, -0x343435

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 116
    iput p2, p0, Lcom/s1243808733/view/ColorBackgroundTextView$AlphaPatternDrawable;->mRectangleSize:I

    .line 117
    iput p3, p0, Lcom/s1243808733/view/ColorBackgroundTextView$AlphaPatternDrawable;->backgroundColor:I

    return-void
.end method

.method private generatePatternBitmap()V
    .locals 9

    const/4 v1, 0x0

    .line 154
    invoke-virtual {p0}, Lcom/s1243808733/view/ColorBackgroundTextView$AlphaPatternDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/s1243808733/view/ColorBackgroundTextView$AlphaPatternDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-gtz v0, :cond_1

    .line 173
    :cond_0
    return-void

    .line 158
    :cond_1
    invoke-virtual {p0}, Lcom/s1243808733/view/ColorBackgroundTextView$AlphaPatternDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p0}, Lcom/s1243808733/view/ColorBackgroundTextView$AlphaPatternDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/s1243808733/view/ColorBackgroundTextView$AlphaPatternDrawable;->mBitmap:Landroid/graphics/Bitmap;

    .line 159
    new-instance v6, Landroid/graphics/Canvas;

    iget-object v0, p0, Lcom/s1243808733/view/ColorBackgroundTextView$AlphaPatternDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v6, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 161
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    const/4 v2, 0x1

    move v0, v1

    .line 163
    :goto_0
    iget v3, p0, Lcom/s1243808733/view/ColorBackgroundTextView$AlphaPatternDrawable;->numRectanglesVertical:I

    if-gt v0, v3, :cond_0

    move v3, v2

    move v4, v1

    .line 166
    :goto_1
    iget v5, p0, Lcom/s1243808733/view/ColorBackgroundTextView$AlphaPatternDrawable;->numRectanglesHorizontal:I

    if-gt v4, v5, :cond_3

    .line 168
    iget v5, p0, Lcom/s1243808733/view/ColorBackgroundTextView$AlphaPatternDrawable;->mRectangleSize:I

    mul-int/2addr v5, v0

    iput v5, v7, Landroid/graphics/Rect;->top:I

    .line 169
    iget v5, p0, Lcom/s1243808733/view/ColorBackgroundTextView$AlphaPatternDrawable;->mRectangleSize:I

    mul-int/2addr v5, v4

    iput v5, v7, Landroid/graphics/Rect;->left:I

    .line 170
    iget v5, v7, Landroid/graphics/Rect;->top:I

    iget v8, p0, Lcom/s1243808733/view/ColorBackgroundTextView$AlphaPatternDrawable;->mRectangleSize:I

    add-int/2addr v5, v8

    iput v5, v7, Landroid/graphics/Rect;->bottom:I

    .line 171
    iget v5, v7, Landroid/graphics/Rect;->left:I

    iget v8, p0, Lcom/s1243808733/view/ColorBackgroundTextView$AlphaPatternDrawable;->mRectangleSize:I

    add-int/2addr v5, v8

    iput v5, v7, Landroid/graphics/Rect;->right:I

    if-eqz v3, :cond_2

    .line 173
    iget-object v5, p0, Lcom/s1243808733/view/ColorBackgroundTextView$AlphaPatternDrawable;->mPaintWhite:Landroid/graphics/Paint;

    :goto_2
    invoke-virtual {v6, v7, v5}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    xor-int/lit8 v3, v3, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    iget-object v5, p0, Lcom/s1243808733/view/ColorBackgroundTextView$AlphaPatternDrawable;->mPaintGray:Landroid/graphics/Paint;

    goto :goto_2

    :cond_3
    xor-int/lit8 v2, v2, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 122
    iget-object v0, p0, Lcom/s1243808733/view/ColorBackgroundTextView$AlphaPatternDrawable;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/s1243808733/view/ColorBackgroundTextView$AlphaPatternDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    iget-object v3, p0, Lcom/s1243808733/view/ColorBackgroundTextView$AlphaPatternDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 123
    iget v0, p0, Lcom/s1243808733/view/ColorBackgroundTextView$AlphaPatternDrawable;->backgroundColor:I

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    return-void
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 4

    .line 133
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 135
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v0

    .line 136
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    .line 138
    iget v2, p0, Lcom/s1243808733/view/ColorBackgroundTextView$AlphaPatternDrawable;->mRectangleSize:I

    div-int/2addr v1, v2

    int-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v1, v2

    iput v1, p0, Lcom/s1243808733/view/ColorBackgroundTextView$AlphaPatternDrawable;->numRectanglesHorizontal:I

    .line 139
    iget v1, p0, Lcom/s1243808733/view/ColorBackgroundTextView$AlphaPatternDrawable;->mRectangleSize:I

    div-int/2addr v0, v1

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lcom/s1243808733/view/ColorBackgroundTextView$AlphaPatternDrawable;->numRectanglesVertical:I

    .line 141
    invoke-direct {p0}, Lcom/s1243808733/view/ColorBackgroundTextView$AlphaPatternDrawable;->generatePatternBitmap()V

    return-void
.end method

.method public setAlpha(I)V
    .locals 0

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method
