.class final Lcom/baidu/mobstat/cd$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/mobstat/cd;->a(Landroid/app/Activity;Landroid/widget/TextView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field a:I

.field b:I

.field c:I

.field d:I

.field final e:Landroid/view/View;

.field final f:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/view/View;Landroid/app/Activity;)V
    .registers 3

    .line 158
    iput-object p1, p0, Lcom/baidu/mobstat/cd$2;->e:Landroid/view/View;

    iput-object p2, p0, Lcom/baidu/mobstat/cd$2;->f:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 160
    const/4 p1, 0x0

    iput p1, p0, Lcom/baidu/mobstat/cd$2;->a:I

    .line 161
    iput p1, p0, Lcom/baidu/mobstat/cd$2;->b:I

    .line 162
    iput p1, p0, Lcom/baidu/mobstat/cd$2;->c:I

    .line 163
    iput p1, p0, Lcom/baidu/mobstat/cd$2;->d:I

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 9

    .line 170
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-int v0, v0

    .line 171
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    float-to-int v1, v1

    .line 173
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_69

    if-eq v2, v3, :cond_4b

    const/4 p2, 0x2

    if-eq v2, p2, :cond_17

    goto :goto_7b

    .line 187
    :cond_17
    iget p2, p0, Lcom/baidu/mobstat/cd$2;->c:I

    sub-int/2addr v0, p2

    .line 188
    iget p2, p0, Lcom/baidu/mobstat/cd$2;->d:I

    sub-int/2addr v1, p2

    .line 190
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    .line 192
    iget-object v2, p0, Lcom/baidu/mobstat/cd$2;->e:Landroid/view/View;

    invoke-virtual {v2, p2}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    .line 194
    new-instance v2, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    add-int/2addr v4, v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v5

    add-int/2addr v5, v1

    invoke-direct {v2, v0, v1, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 195
    invoke-virtual {p2, v2}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result p2

    if-nez p2, :cond_3d

    goto :goto_7b

    .line 199
    :cond_3d
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 200
    iput v0, p2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 201
    iput v1, p2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 202
    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_7b

    .line 207
    :cond_4b
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    float-to-int p1, p1

    .line 208
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    float-to-int p2, p2

    .line 210
    iget v0, p0, Lcom/baidu/mobstat/cd$2;->a:I

    int-to-float v0, v0

    int-to-float p1, p1

    iget v1, p0, Lcom/baidu/mobstat/cd$2;->b:I

    int-to-float v1, v1

    int-to-float p2, p2

    invoke-static {v0, p1, v1, p2}, Lcom/baidu/mobstat/cd;->a(FFFF)Z

    move-result p1

    if-eqz p1, :cond_7b

    .line 211
    iget-object p1, p0, Lcom/baidu/mobstat/cd$2;->f:Landroid/app/Activity;

    invoke-static {p1}, Lcom/baidu/mobstat/cd;->a(Landroid/content/Context;)V

    goto :goto_7b

    .line 175
    :cond_69
    iput v0, p0, Lcom/baidu/mobstat/cd$2;->a:I

    .line 176
    iput v1, p0, Lcom/baidu/mobstat/cd$2;->b:I

    .line 179
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p2

    sub-int/2addr v0, p2

    iput v0, p0, Lcom/baidu/mobstat/cd$2;->c:I

    .line 180
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    sub-int/2addr v1, p1

    iput v1, p0, Lcom/baidu/mobstat/cd$2;->d:I

    :cond_7b
    :goto_7b
    return v3
.end method
