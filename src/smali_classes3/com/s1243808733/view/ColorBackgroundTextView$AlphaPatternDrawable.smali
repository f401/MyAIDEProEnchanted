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

.field private final this$0:Lcom/s1243808733/view/ColorBackgroundTextView;


# direct methods
.method public constructor <init>(Lcom/s1243808733/view/ColorBackgroundTextView;II)V
    .registers 5

    .line 115
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    iput-object p1, p0, Lcom/s1243808733/view/ColorBackgroundTextView$AlphaPatternDrawable;->this$0:Lcom/s1243808733/view/ColorBackgroundTextView;

    const/16 v0, 0xa

    iput v0, p0, Lcom/s1243808733/view/ColorBackgroundTextView$AlphaPatternDrawable;->mRectangleSize:I

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/s1243808733/view/ColorBackgroundTextView$AlphaPatternDrawable;->mPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/s1243808733/view/ColorBackgroundTextView$AlphaPatternDrawable;->mPaintWhite:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/s1243808733/view/ColorBackgroundTextView$AlphaPatternDrawable;->mPaintGray:Landroid/graphics/Paint;

    const/4 v0, 0x0

    iput v0, p0, Lcom/s1243808733/view/ColorBackgroundTextView$AlphaPatternDrawable;->backgroundColor:I

    invoke-direct {p0}, Lcom/s1243808733/view/ColorBackgroundTextView$AlphaPatternDrawable;->block$6877()V

    .line 116
    iput p2, p0, Lcom/s1243808733/view/ColorBackgroundTextView$AlphaPatternDrawable;->mRectangleSize:I

    .line 117
    iput p3, p0, Lcom/s1243808733/view/ColorBackgroundTextView$AlphaPatternDrawable;->backgroundColor:I

    return-void
.end method

.method static access$0(Lcom/s1243808733/view/ColorBackgroundTextView$AlphaPatternDrawable;)Lcom/s1243808733/view/ColorBackgroundTextView;
    .registers 2

    iget-object v0, p0, Lcom/s1243808733/view/ColorBackgroundTextView$AlphaPatternDrawable;->this$0:Lcom/s1243808733/view/ColorBackgroundTextView;

    return-object v0
.end method

.method private block$6877()V
    .registers 3

    .line 111
    iget-object v0, p0, Lcom/s1243808733/view/ColorBackgroundTextView$AlphaPatternDrawable;->mPaintWhite:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 112
    iget-object v0, p0, Lcom/s1243808733/view/ColorBackgroundTextView$AlphaPatternDrawable;->mPaintGray:Landroid/graphics/Paint;

    const v1, -0x343435

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method private generatePatternBitmap()V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    const/4 v3, 0x1

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

    .line 163
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

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v2, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/s1243808733/view/ColorBackgroundTextView$AlphaPatternDrawable;->mBitmap:Landroid/graphics/Bitmap;

    .line 159
    new-instance v7, Landroid/graphics/Canvas;

    iget-object v0, p0, Lcom/s1243808733/view/ColorBackgroundTextView$AlphaPatternDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v7, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 161
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    move v0, v1

    move v2, v3

    .line 163
    :goto_0
    iget v4, p0, Lcom/s1243808733/view/ColorBackgroundTextView$AlphaPatternDrawable;->numRectanglesVertical:I

    if-gt v0, v4, :cond_0

    move v4, v1

    move v5, v2

    .line 166
    :goto_1
    iget v6, p0, Lcom/s1243808733/view/ColorBackgroundTextView$AlphaPatternDrawable;->numRectanglesHorizontal:I

    if-le v4, v6, :cond_2

    .line 178
    if-eqz v2, :cond_5

    move v2, v1

    .line 163
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 168
    :cond_2
    iget v6, p0, Lcom/s1243808733/view/ColorBackgroundTextView$AlphaPatternDrawable;->mRectangleSize:I

    mul-int/2addr v6, v0

    iput v6, v8, Landroid/graphics/Rect;->top:I

    .line 169
    iget v6, p0, Lcom/s1243808733/view/ColorBackgroundTextView$AlphaPatternDrawable;->mRectangleSize:I

    mul-int/2addr v6, v4

    iput v6, v8, Landroid/graphics/Rect;->left:I

    .line 170
    iget v6, v8, Landroid/graphics/Rect;->top:I

    iget v9, p0, Lcom/s1243808733/view/ColorBackgroundTextView$AlphaPatternDrawable;->mRectangleSize:I

    add-int/2addr v6, v9

    iput v6, v8, Landroid/graphics/Rect;->bottom:I

    .line 171
    iget v6, v8, Landroid/graphics/Rect;->left:I

    iget v9, p0, Lcom/s1243808733/view/ColorBackgroundTextView$AlphaPatternDrawable;->mRectangleSize:I

    add-int/2addr v6, v9

    iput v6, v8, Landroid/graphics/Rect;->right:I

    .line 173
    if-eqz v5, :cond_3

    iget-object v6, p0, Lcom/s1243808733/view/ColorBackgroundTextView$AlphaPatternDrawable;->mPaintWhite:Landroid/graphics/Paint;

    :goto_3
    invoke-virtual {v7, v8, v6}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 175
    if-eqz v5, :cond_4

    move v5, v1

    .line 166
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 173
    :cond_3
    iget-object v6, p0, Lcom/s1243808733/view/ColorBackgroundTextView$AlphaPatternDrawable;->mPaintGray:Landroid/graphics/Paint;

    goto :goto_3

    :cond_4
    move v5, v3

    .line 175
    goto :goto_4

    :cond_5
    move v2, v3

    .line 178
    goto :goto_2
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 122
    iget-object v1, p0, Lcom/s1243808733/view/ColorBackgroundTextView$AlphaPatternDrawable;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v0, 0x0

    check-cast v0, Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/s1243808733/view/ColorBackgroundTextView$AlphaPatternDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    iget-object v3, p0, Lcom/s1243808733/view/ColorBackgroundTextView$AlphaPatternDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 123
    iget v0, p0, Lcom/s1243808733/view/ColorBackgroundTextView$AlphaPatternDrawable;->backgroundColor:I

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    return-void
.end method

.method public getOpacity()I
    .registers 2
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 128
    const/4 v0, 0x0

    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Rect;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

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
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/ColorFilter;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    return-void
.end method
