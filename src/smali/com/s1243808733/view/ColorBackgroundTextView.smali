.class public Lcom/s1243808733/view/ColorBackgroundTextView;
.super Landroid/widget/TextView;
.source "ColorBackgroundTextView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/s1243808733/view/ColorBackgroundTextView$AlphaPatternDrawable;
    }
.end annotation


# instance fields
.field private rectangleSize:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 21
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 18
    const/16 p1, 0xa

    iput p1, p0, Lcom/s1243808733/view/ColorBackgroundTextView;->rectangleSize:I

    .line 22
    invoke-direct {p0}, Lcom/s1243808733/view/ColorBackgroundTextView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .registers 3

    .line 26
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 18
    const/16 p1, 0xa

    iput p1, p0, Lcom/s1243808733/view/ColorBackgroundTextView;->rectangleSize:I

    .line 27
    invoke-direct {p0}, Lcom/s1243808733/view/ColorBackgroundTextView;->init()V

    .line 28
    invoke-virtual {p0, p2}, Lcom/s1243808733/view/ColorBackgroundTextView;->setColor(I)V

    return-void
.end method

.method public static convertToARGB(I)Ljava/lang/String;
    .registers 7

    .line 55
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 56
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    .line 57
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    .line 58
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    .line 60
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const-string v4, "0"

    const/4 v5, 0x1

    if-ne v3, v5, :cond_35

    .line 61
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 64
    :cond_35
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v3, v5, :cond_47

    .line 65
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 68
    :cond_47
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v3, v5, :cond_59

    .line 69
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 72
    :cond_59
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v3, v5, :cond_6b

    .line 73
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 76
    :cond_6b
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "#"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static dp2px(F)I
    .registers 2

    .line 80
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float p0, p0, v0

    const/high16 v0, 0x3f000000  # 0.5f

    add-float/2addr p0, v0

    float-to-int p0, p0

    return p0
.end method

.method private init()V
    .registers 4

    .line 33
    const/high16 v0, 0x40a00000  # 5.0f

    invoke-static {v0}, Lcom/s1243808733/view/ColorBackgroundTextView;->dp2px(F)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v0}, Lcom/s1243808733/view/ColorBackgroundTextView;->dp2px(F)I

    move-result v0

    invoke-virtual {p0, v1, v2, v0, v2}, Lcom/s1243808733/view/ColorBackgroundTextView;->setPadding(IIII)V

    return-void
.end method


# virtual methods
.method public setColor(I)V
    .registers 4

    .line 48
    invoke-static {p1}, Lcom/s1243808733/view/ColorBackgroundTextView;->convertToARGB(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/s1243808733/view/ColorBackgroundTextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    new-instance v0, Lcom/s1243808733/view/ColorBackgroundTextView$AlphaPatternDrawable;

    iget v1, p0, Lcom/s1243808733/view/ColorBackgroundTextView;->rectangleSize:I

    invoke-direct {v0, p0, v1, p1}, Lcom/s1243808733/view/ColorBackgroundTextView$AlphaPatternDrawable;-><init>(Lcom/s1243808733/view/ColorBackgroundTextView;II)V

    .line 50
    invoke-virtual {p0, v0}, Lcom/s1243808733/view/ColorBackgroundTextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 51
    invoke-static {p1}, Lcom/s1243808733/util/Utils;->isLightColor(I)Z

    move-result p1

    if-nez p1, :cond_19

    const/4 p1, -0x1

    goto :goto_1b

    :cond_19
    const/high16 p1, -0x1000000

    :goto_1b
    invoke-virtual {p0, p1}, Lcom/s1243808733/view/ColorBackgroundTextView;->setTextColor(I)V

    return-void
.end method

.method public setPadding(IIII)V
    .registers 5

    .line 38
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->setPadding(IIII)V

    return-void
.end method

.method public setRectangleSize(I)V
    .registers 2

    .line 44
    iput p1, p0, Lcom/s1243808733/view/ColorBackgroundTextView;->rectangleSize:I

    return-void
.end method
