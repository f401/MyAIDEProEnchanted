.class public Lnet/margaritov/preference/colorpicker/ColorPickerPreference;
.super Landroid/preference/Preference;

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;
.implements Lnet/margaritov/preference/colorpicker/ColorPickerDialog$OnColorChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/margaritov/preference/colorpicker/ColorPickerPreference$SavedState;
    }
.end annotation


# instance fields
.field private defaultColor:I

.field private mAlphaSliderEnabled:Z

.field private mDensity:F

.field mDialog:Lnet/margaritov/preference/colorpicker/ColorPickerDialog;

.field private mHexValueEnabled:Z

.field private mValue:I

.field mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    const/4 v1, 0x1

    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    const/high16 v0, -0x1000000

    iput v0, p0, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->mValue:I

    const/4 v0, 0x0

    int-to-float v0, v0

    iput v0, p0, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->mDensity:F

    iput-boolean v1, p0, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->mAlphaSliderEnabled:Z

    iput-boolean v1, p0, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->mHexValueEnabled:Z

    const/4 v0, 0x0

    check-cast v0, Landroid/util/AttributeSet;

    invoke-direct {p0, p1, v0}, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 v0, -0x1000000

    iput v0, p0, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->mValue:I

    const/4 v0, 0x0

    int-to-float v0, v0

    iput v0, p0, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->mDensity:F

    iput-boolean v1, p0, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->mAlphaSliderEnabled:Z

    iput-boolean v1, p0, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->mHexValueEnabled:Z

    invoke-direct {p0, p1, p2}, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, p3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 v0, -0x1000000

    iput v0, p0, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->mValue:I

    const/4 v0, 0x0

    int-to-float v0, v0

    iput v0, p0, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->mDensity:F

    iput-boolean v1, p0, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->mAlphaSliderEnabled:Z

    iput-boolean v1, p0, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->mHexValueEnabled:Z

    invoke-direct {p0, p1, p2}, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic access$L1000004(Lnet/margaritov/preference/colorpicker/ColorPickerPreference;)I
    .registers 2

    iget v0, p0, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->defaultColor:I

    return v0
.end method

.method static synthetic access$S1000004(Lnet/margaritov/preference/colorpicker/ColorPickerPreference;I)V
    .registers 2

    iput p1, p0, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->defaultColor:I

    return-void
.end method

.method public static convertToARGB(I)Ljava/lang/String;
    .registers 10

    const/4 v6, 0x1

    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v4, v6, :cond_3a

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_3a
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v4, v6, :cond_53

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_53
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v4, v6, :cond_6c

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_6c
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v4, v6, :cond_85

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_85
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    const-string v8, "#"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static convertToColorInt(Ljava/lang/String;)I
    .registers 3

    const-string v0, "#"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1b

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_1b
    invoke-static {p0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static convertToRGB(I)Ljava/lang/String;
    .registers 8

    const/4 v5, 0x1

    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v3, v5, :cond_32

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_32
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v3, v5, :cond_4b

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_4b
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v3, v5, :cond_64

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_64
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "#"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getPreviewBitmap()Landroid/graphics/Bitmap;
    .registers 9

    const/4 v7, 0x1

    iget v0, p0, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->mDensity:F

    const/16 v1, 0x1f

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iget v1, p0, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->mValue:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v0, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    const/4 v3, 0x0

    :goto_19
    if-lt v3, v5, :cond_1c

    return-object v4

    :cond_1c
    move v2, v3

    :goto_1d
    if-lt v2, v6, :cond_22

    add-int/lit8 v3, v3, 0x1

    goto :goto_19

    :cond_22
    if-le v3, v7, :cond_2e

    if-le v2, v7, :cond_2e

    add-int/lit8 v0, v5, -0x2

    if-ge v3, v0, :cond_2e

    add-int/lit8 v0, v6, -0x2

    if-lt v2, v0, :cond_3d

    :cond_2e
    const v0, -0x777778

    :goto_31
    invoke-virtual {v4, v3, v2, v0}, Landroid/graphics/Bitmap;->setPixel(III)V

    if-eq v3, v2, :cond_39

    invoke-virtual {v4, v2, v3, v0}, Landroid/graphics/Bitmap;->setPixel(III)V

    :cond_39
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1d

    :cond_3d
    move v0, v1

    goto :goto_31
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/util/AttributeSet;",
            ")V"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-virtual {p0}, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->mDensity:F

    invoke-virtual {p0, p0}, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    if-eqz p2, :cond_2f

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    const-string v2, "alphaSlider"

    iget-boolean v3, p0, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->mAlphaSliderEnabled:Z

    invoke-interface {p2, v0, v2, v3}, Landroid/util/AttributeSet;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->mAlphaSliderEnabled:Z

    check-cast v1, Ljava/lang/String;

    const-string v0, "hexValue"

    iget-boolean v2, p0, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->mHexValueEnabled:Z

    invoke-interface {p2, v1, v0, v2}, Landroid/util/AttributeSet;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->mHexValueEnabled:Z

    :cond_2f
    return-void
.end method

.method private setPreviewColor()V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    const/4 v6, 0x0

    iget-object v0, p0, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->mView:Landroid/view/View;

    if-nez v0, :cond_6

    :cond_5
    :goto_5
    return-void

    :cond_6
    new-instance v1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->mView:Landroid/view/View;

    const v2, 0x1020018

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    if-eqz v0, :cond_5

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v2

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v3

    iget v4, p0, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->mDensity:F

    const/16 v5, 0x8

    int-to-float v5, v5

    mul-float/2addr v4, v5

    float-to-int v4, v4

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v5

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-lez v2, :cond_3e

    invoke-virtual {v0, v6, v2}, Landroid/widget/LinearLayout;->removeViews(II)V

    :cond_3e
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setMinimumWidth(I)V

    new-instance v0, Lnet/margaritov/preference/colorpicker/AlphaPatternDrawable;

    const/4 v2, 0x5

    int-to-float v2, v2

    iget v3, p0, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->mDensity:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-direct {v0, v2}, Lnet/margaritov/preference/colorpicker/AlphaPatternDrawable;-><init>(I)V

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-direct {p0}, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->getPreviewBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_5
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    iput-object p1, p0, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->mView:Landroid/view/View;

    invoke-direct {p0}, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->setPreviewColor()V

    return-void
.end method

.method public onColorChanged(I)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    invoke-virtual {p0}, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->isPersistent()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p0, p1}, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->persistInt(I)Z

    :cond_9
    iput p1, p0, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->mValue:I

    invoke-direct {p0}, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->setPreviewColor()V

    :try_start_e
    invoke-virtual {p0}, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->getOnPreferenceChangeListener()Landroid/preference/Preference$OnPreferenceChangeListener;

    move-result-object v0

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, p0, v1}, Landroid/preference/Preference$OnPreferenceChangeListener;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    :try_end_1a
    .catch Ljava/lang/NullPointerException; {:try_start_e .. :try_end_1a} :catch_36

    :goto_1a
    invoke-virtual {p0}, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-virtual {p0}, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->convertToARGB(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void

    :catch_36
    move-exception v0

    goto :goto_1a
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .registers 5
    .annotation runtime Ljava/lang/Override;
    .end annotation

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_18

    const-string v0, "#"

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    new-instance v0, Ljava/lang/Integer;

    invoke-static {v1}, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->convertToColorInt(Ljava/lang/String;)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    :goto_17
    return-object v0

    :cond_18
    new-instance v0, Ljava/lang/Integer;

    const/high16 v1, -0x1000000

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    goto :goto_17
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .registers 3

    const/4 v0, 0x0

    check-cast v0, Landroid/os/Bundle;

    invoke-virtual {p0, v0}, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->showDialog(Landroid/os/Bundle;)V

    const/4 v0, 0x0

    return v0
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcelable;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    if-eqz p1, :cond_6

    instance-of v0, p1, Lnet/margaritov/preference/colorpicker/ColorPickerPreference$SavedState;

    if-nez v0, :cond_a

    :cond_6
    invoke-super {p0, p1}, Landroid/preference/Preference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    :goto_9
    return-void

    :cond_a
    check-cast p1, Lnet/margaritov/preference/colorpicker/ColorPickerPreference$SavedState;

    invoke-virtual {p1}, Lnet/margaritov/preference/colorpicker/ColorPickerPreference$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/preference/Preference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget-object v0, p1, Lnet/margaritov/preference/colorpicker/ColorPickerPreference$SavedState;->dialogBundle:Landroid/os/Bundle;

    invoke-virtual {p0, v0}, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->showDialog(Landroid/os/Bundle;)V

    goto :goto_9
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .registers 3
    .annotation runtime Ljava/lang/Override;
    .end annotation

    invoke-super {p0}, Landroid/preference/Preference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    iget-object v0, p0, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->mDialog:Lnet/margaritov/preference/colorpicker/ColorPickerDialog;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->mDialog:Lnet/margaritov/preference/colorpicker/ColorPickerDialog;

    invoke-virtual {v0}, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_12

    :cond_10
    move-object v0, v1

    :goto_11
    return-object v0

    :cond_12
    new-instance v0, Lnet/margaritov/preference/colorpicker/ColorPickerPreference$SavedState;

    invoke-direct {v0, v1}, Lnet/margaritov/preference/colorpicker/ColorPickerPreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    iget-object v1, p0, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->mDialog:Lnet/margaritov/preference/colorpicker/ColorPickerDialog;

    invoke-virtual {v1}, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, v0, Lnet/margaritov/preference/colorpicker/ColorPickerPreference$SavedState;->dialogBundle:Landroid/os/Bundle;

    goto :goto_11
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    move-object v0, p2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->defaultColor:I

    if-eqz p1, :cond_20

    iget v0, p0, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->mValue:I

    invoke-virtual {p0, v0}, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->getPersistedInt(I)I

    move-result v0

    :goto_11
    invoke-virtual {p0}, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->isPersistent()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-virtual {p0, v0}, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->persistInt(I)Z

    :cond_1a
    iput v0, p0, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->mValue:I

    invoke-direct {p0}, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->setPreviewColor()V

    return-void

    :cond_20
    :try_start_20
    invoke-virtual {p0}, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-virtual {p0}, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_32} :catch_34

    move-result v0

    goto :goto_11

    :catch_34
    move-exception v0

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_11
.end method

.method public setAlphaSliderEnabled(Z)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    iput-boolean p1, p0, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->mAlphaSliderEnabled:Z

    return-void
.end method

.method public setHexValueEnabled(Z)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    iput-boolean p1, p0, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->mHexValueEnabled:Z

    return-void
.end method

.method protected showDialog(Landroid/os/Bundle;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    const/4 v3, 0x1

    new-instance v0, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;

    invoke-virtual {p0}, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->mValue:I

    invoke-direct {v0, v1, v2}, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->mDialog:Lnet/margaritov/preference/colorpicker/ColorPickerDialog;

    iget-object v0, p0, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->mDialog:Lnet/margaritov/preference/colorpicker/ColorPickerDialog;

    invoke-virtual {v0, p0}, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->setOnColorChangedListener(Lnet/margaritov/preference/colorpicker/ColorPickerDialog$OnColorChangedListener;)V

    iget-boolean v0, p0, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->mAlphaSliderEnabled:Z

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->mDialog:Lnet/margaritov/preference/colorpicker/ColorPickerDialog;

    invoke-virtual {v0, v3}, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->setAlphaSliderVisible(Z)V

    :cond_1c
    iget-boolean v0, p0, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->mHexValueEnabled:Z

    if-eqz v0, :cond_25

    iget-object v0, p0, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->mDialog:Lnet/margaritov/preference/colorpicker/ColorPickerDialog;

    invoke-virtual {v0, v3}, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->setHexValueEnabled(Z)V

    :cond_25
    if-eqz p1, :cond_2c

    iget-object v0, p0, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->mDialog:Lnet/margaritov/preference/colorpicker/ColorPickerDialog;

    invoke-virtual {v0, p1}, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    :cond_2c
    iget-object v0, p0, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->mDialog:Lnet/margaritov/preference/colorpicker/ColorPickerDialog;

    invoke-virtual {p0}, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->mDialog:Lnet/margaritov/preference/colorpicker/ColorPickerDialog;

    const/4 v1, -0x3

    const-string v2, "默认"

    new-instance v3, Lnet/margaritov/preference/colorpicker/ColorPickerPreference$100000000;

    invoke-direct {v3, p0}, Lnet/margaritov/preference/colorpicker/ColorPickerPreference$100000000;-><init>(Lnet/margaritov/preference/colorpicker/ColorPickerPreference;)V

    invoke-virtual {v0, v1, v2, v3}, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    iget-object v0, p0, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->mDialog:Lnet/margaritov/preference/colorpicker/ColorPickerDialog;

    invoke-virtual {v0}, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->show()V

    return-void
.end method
