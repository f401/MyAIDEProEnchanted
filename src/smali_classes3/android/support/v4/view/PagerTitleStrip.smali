.class public Landroid/support/v4/view/PagerTitleStrip;
.super Landroid/view/ViewGroup;


# annotations
.annotation runtime Landroid/support/v4/view/ViewPager$a;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/view/PagerTitleStrip$a;,
        Landroid/support/v4/view/PagerTitleStrip$b;
    }
.end annotation


# static fields
.field private static final DW:[I

.field private static final j6:[I


# instance fields
.field private EQ:Z

.field FH:Landroid/support/v4/view/ViewPager;

.field Hw:Landroid/widget/TextView;

.field private final J0:Landroid/support/v4/view/PagerTitleStrip$a;

.field private J8:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/support/v4/view/o;",
            ">;"
        }
    .end annotation
.end field

.field QX:I

.field private VH:I

.field private Ws:I

.field Zo:Landroid/widget/TextView;

.field gn:F

.field private tp:I

.field private u7:I

.field v5:Landroid/widget/TextView;

.field private we:Z


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const v0, 0x1010098

    const v1, 0x10100af

    const v2, 0x1010034

    const v3, 0x1010095

    filled-new-array {v2, v3, v0, v1}, [I

    move-result-object v0

    sput-object v0, Landroid/support/v4/view/PagerTitleStrip;->j6:[I

    const v0, 0x101038c

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Landroid/support/v4/view/PagerTitleStrip;->DW:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v4/view/PagerTitleStrip;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 7

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v4/view/PagerTitleStrip;->VH:I

    const/high16 v0, -0x40800000  # -1.0f

    iput v0, p0, Landroid/support/v4/view/PagerTitleStrip;->gn:F

    new-instance v0, Landroid/support/v4/view/PagerTitleStrip$a;

    invoke-direct {v0, p0}, Landroid/support/v4/view/PagerTitleStrip$a;-><init>(Landroid/support/v4/view/PagerTitleStrip;)V

    iput-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->J0:Landroid/support/v4/view/PagerTitleStrip$a;

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->Hw:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->v5:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->Zo:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    sget-object v0, Landroid/support/v4/view/PagerTitleStrip;->j6:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, v0, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    if-eqz v1, :cond_4b

    iget-object v2, p0, Landroid/support/v4/view/PagerTitleStrip;->Hw:Landroid/widget/TextView;

    invoke-static {v2, v1}, Landroid/support/v4/widget/t;->j6(Landroid/widget/TextView;I)V

    iget-object v2, p0, Landroid/support/v4/view/PagerTitleStrip;->v5:Landroid/widget/TextView;

    invoke-static {v2, v1}, Landroid/support/v4/widget/t;->j6(Landroid/widget/TextView;I)V

    iget-object v2, p0, Landroid/support/v4/view/PagerTitleStrip;->Zo:Landroid/widget/TextView;

    invoke-static {v2, v1}, Landroid/support/v4/widget/t;->j6(Landroid/widget/TextView;I)V

    :cond_4b
    const/4 v2, 0x1

    invoke-virtual {p2, v2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    if-eqz v2, :cond_56

    int-to-float v2, v2

    invoke-virtual {p0, v0, v2}, Landroid/support/v4/view/PagerTitleStrip;->j6(IF)V

    :cond_56
    const/4 v2, 0x2

    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_70

    invoke-virtual {p2, v2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iget-object v3, p0, Landroid/support/v4/view/PagerTitleStrip;->Hw:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v3, p0, Landroid/support/v4/view/PagerTitleStrip;->v5:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v3, p0, Landroid/support/v4/view/PagerTitleStrip;->Zo:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_70
    const/4 v2, 0x3

    const/16 v3, 0x50

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    iput v2, p0, Landroid/support/v4/view/PagerTitleStrip;->tp:I

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    iget-object p2, p0, Landroid/support/v4/view/PagerTitleStrip;->v5:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result p2

    iput p2, p0, Landroid/support/v4/view/PagerTitleStrip;->QX:I

    const p2, 0x3f19999a  # 0.6f

    invoke-virtual {p0, p2}, Landroid/support/v4/view/PagerTitleStrip;->setNonPrimaryAlpha(F)V

    iget-object p2, p0, Landroid/support/v4/view/PagerTitleStrip;->Hw:Landroid/widget/TextView;

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget-object p2, p0, Landroid/support/v4/view/PagerTitleStrip;->v5:Landroid/widget/TextView;

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget-object p2, p0, Landroid/support/v4/view/PagerTitleStrip;->Zo:Landroid/widget/TextView;

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    if-eqz v1, :cond_b2

    sget-object p2, Landroid/support/v4/view/PagerTitleStrip;->DW:[I

    invoke-virtual {p1, v1, p2}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p2

    invoke-virtual {p2, v0, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    :cond_b2
    iget-object p2, p0, Landroid/support/v4/view/PagerTitleStrip;->Hw:Landroid/widget/TextView;

    if-eqz v0, :cond_c4

    invoke-static {p2}, Landroid/support/v4/view/PagerTitleStrip;->setSingleLineAllCaps(Landroid/widget/TextView;)V

    iget-object p2, p0, Landroid/support/v4/view/PagerTitleStrip;->v5:Landroid/widget/TextView;

    invoke-static {p2}, Landroid/support/v4/view/PagerTitleStrip;->setSingleLineAllCaps(Landroid/widget/TextView;)V

    iget-object p2, p0, Landroid/support/v4/view/PagerTitleStrip;->Zo:Landroid/widget/TextView;

    invoke-static {p2}, Landroid/support/v4/view/PagerTitleStrip;->setSingleLineAllCaps(Landroid/widget/TextView;)V

    goto :goto_d1

    :cond_c4
    invoke-virtual {p2}, Landroid/widget/TextView;->setSingleLine()V

    iget-object p2, p0, Landroid/support/v4/view/PagerTitleStrip;->v5:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->setSingleLine()V

    iget-object p2, p0, Landroid/support/v4/view/PagerTitleStrip;->Zo:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->setSingleLine()V

    :goto_d1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    const/high16 p2, 0x41800000  # 16.0f

    mul-float p1, p1, p2

    float-to-int p1, p1

    iput p1, p0, Landroid/support/v4/view/PagerTitleStrip;->u7:I

    return-void
.end method

.method private static setSingleLineAllCaps(Landroid/widget/TextView;)V
    .registers 3

    new-instance v0, Landroid/support/v4/view/PagerTitleStrip$b;

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/view/PagerTitleStrip$b;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    return-void
.end method


# virtual methods
.method getMinHeight()I
    .registers 2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method public getTextSpacing()I
    .registers 2

    iget v0, p0, Landroid/support/v4/view/PagerTitleStrip;->u7:I

    return v0
.end method

.method public j6(IF)V
    .registers 4

    iget-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->Hw:Landroid/widget/TextView;

    invoke-virtual {v0, p1, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->v5:Landroid/widget/TextView;

    invoke-virtual {v0, p1, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->Zo:Landroid/widget/TextView;

    invoke-virtual {v0, p1, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    return-void
.end method

.method j6(IFZ)V
    .registers 20

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    iget v3, v0, Landroid/support/v4/view/PagerTitleStrip;->VH:I

    if-eq v1, v3, :cond_14

    iget-object v3, v0, Landroid/support/v4/view/PagerTitleStrip;->FH:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v3}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/o;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/support/v4/view/PagerTitleStrip;->j6(ILandroid/support/v4/view/o;)V

    goto :goto_1d

    :cond_14
    if-nez p3, :cond_1d

    iget v1, v0, Landroid/support/v4/view/PagerTitleStrip;->gn:F

    cmpl-float v1, v2, v1

    if-nez v1, :cond_1d

    return-void

    :cond_1d
    :goto_1d
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/v4/view/PagerTitleStrip;->we:Z

    iget-object v1, v0, Landroid/support/v4/view/PagerTitleStrip;->Hw:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v1

    iget-object v3, v0, Landroid/support/v4/view/PagerTitleStrip;->v5:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v3

    iget-object v4, v0, Landroid/support/v4/view/PagerTitleStrip;->Zo:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v4

    div-int/lit8 v5, v3, 0x2

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v8

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v9

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v10

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v11

    add-int v12, v9, v5

    const/high16 v13, 0x3f000000  # 0.5f

    add-float/2addr v13, v2

    const/high16 v14, 0x3f800000  # 1.0f

    cmpl-float v15, v13, v14

    if-lez v15, :cond_58

    sub-float/2addr v13, v14

    :cond_58
    sub-int v14, v6, v12

    add-int v15, v8, v5

    sub-int v15, v6, v15

    sub-int/2addr v15, v12

    int-to-float v12, v15

    mul-float v12, v12, v13

    float-to-int v12, v12

    sub-int/2addr v14, v12

    sub-int/2addr v14, v5

    add-int/2addr v3, v14

    iget-object v5, v0, Landroid/support/v4/view/PagerTitleStrip;->Hw:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getBaseline()I

    move-result v5

    iget-object v12, v0, Landroid/support/v4/view/PagerTitleStrip;->v5:Landroid/widget/TextView;

    invoke-virtual {v12}, Landroid/widget/TextView;->getBaseline()I

    move-result v12

    iget-object v13, v0, Landroid/support/v4/view/PagerTitleStrip;->Zo:Landroid/widget/TextView;

    invoke-virtual {v13}, Landroid/widget/TextView;->getBaseline()I

    move-result v13

    invoke-static {v5, v12}, Ljava/lang/Math;->max(II)I

    move-result v15

    invoke-static {v15, v13}, Ljava/lang/Math;->max(II)I

    move-result v15

    sub-int v5, v15, v5

    sub-int v12, v15, v12

    sub-int/2addr v15, v13

    iget-object v13, v0, Landroid/support/v4/view/PagerTitleStrip;->Hw:Landroid/widget/TextView;

    invoke-virtual {v13}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v13

    iget-object v2, v0, Landroid/support/v4/view/PagerTitleStrip;->v5:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v2

    move/from16 p1, v4

    iget-object v4, v0, Landroid/support/v4/view/PagerTitleStrip;->Zo:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v13, v5

    add-int/2addr v2, v12

    invoke-static {v13, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int/2addr v4, v15

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget v4, v0, Landroid/support/v4/view/PagerTitleStrip;->tp:I

    and-int/lit8 v4, v4, 0x70

    const/16 v13, 0x10

    if-eq v4, v13, :cond_b7

    const/16 v13, 0x50

    if-eq v4, v13, :cond_b4

    add-int/2addr v5, v10

    add-int/2addr v12, v10

    add-int/2addr v10, v15

    goto :goto_c0

    :cond_b4
    sub-int/2addr v7, v11

    sub-int/2addr v7, v2

    goto :goto_bc

    :cond_b7
    sub-int/2addr v7, v10

    sub-int/2addr v7, v11

    sub-int/2addr v7, v2

    div-int/lit8 v7, v7, 0x2

    :goto_bc
    add-int/2addr v5, v7

    add-int/2addr v12, v7

    add-int v10, v7, v15

    :goto_c0
    iget-object v2, v0, Landroid/support/v4/view/PagerTitleStrip;->v5:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v4, v12

    invoke-virtual {v2, v14, v12, v3, v4}, Landroid/widget/TextView;->layout(IIII)V

    iget v2, v0, Landroid/support/v4/view/PagerTitleStrip;->u7:I

    sub-int/2addr v14, v2

    sub-int/2addr v14, v1

    invoke-static {v8, v14}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget-object v4, v0, Landroid/support/v4/view/PagerTitleStrip;->Hw:Landroid/widget/TextView;

    add-int/2addr v1, v2

    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v7

    add-int/2addr v7, v5

    invoke-virtual {v4, v2, v5, v1, v7}, Landroid/widget/TextView;->layout(IIII)V

    sub-int/2addr v6, v9

    sub-int v6, v6, p1

    iget v1, v0, Landroid/support/v4/view/PagerTitleStrip;->u7:I

    add-int/2addr v3, v1

    invoke-static {v6, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget-object v2, v0, Landroid/support/v4/view/PagerTitleStrip;->Zo:Landroid/widget/TextView;

    add-int v4, v1, p1

    invoke-virtual {v2}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v3, v10

    invoke-virtual {v2, v1, v10, v4, v3}, Landroid/widget/TextView;->layout(IIII)V

    move/from16 v1, p2

    iput v1, v0, Landroid/support/v4/view/PagerTitleStrip;->gn:F

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/support/v4/view/PagerTitleStrip;->we:Z

    return-void
.end method

.method j6(ILandroid/support/v4/view/o;)V
    .registers 8

    const/4 v0, 0x0

    if-eqz p2, :cond_8

    invoke-virtual {p2}, Landroid/support/v4/view/o;->j6()I

    move-result v1

    goto :goto_9

    :cond_8
    const/4 v1, 0x0

    :goto_9
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/support/v4/view/PagerTitleStrip;->EQ:Z

    const/4 v3, 0x0

    if-lt p1, v2, :cond_18

    if-eqz p2, :cond_18

    add-int/lit8 v2, p1, -0x1

    invoke-virtual {p2, v2}, Landroid/support/v4/view/o;->j6(I)Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_19

    :cond_18
    move-object v2, v3

    :goto_19
    iget-object v4, p0, Landroid/support/v4/view/PagerTitleStrip;->Hw:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Landroid/support/v4/view/PagerTitleStrip;->v5:Landroid/widget/TextView;

    if-eqz p2, :cond_29

    if-ge p1, v1, :cond_29

    invoke-virtual {p2, p1}, Landroid/support/v4/view/o;->j6(I)Ljava/lang/CharSequence;

    move-result-object v4

    goto :goto_2a

    :cond_29
    move-object v4, v3

    :goto_2a
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    add-int/lit8 v2, p1, 0x1

    if-ge v2, v1, :cond_37

    if-eqz p2, :cond_37

    invoke-virtual {p2, v2}, Landroid/support/v4/view/o;->j6(I)Ljava/lang/CharSequence;

    move-result-object v3

    :cond_37
    iget-object p2, p0, Landroid/support/v4/view/PagerTitleStrip;->Zo:Landroid/widget/TextView;

    invoke-virtual {p2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result p2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v1

    sub-int/2addr p2, v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v1

    sub-int/2addr p2, v1

    int-to-float p2, p2

    const v1, 0x3f4ccccd  # 0.8f

    mul-float p2, p2, v1

    float-to-int p2, p2

    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    const/high16 v1, -0x80000000

    invoke-static {p2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    iget-object v2, p0, Landroid/support/v4/view/PagerTitleStrip;->Hw:Landroid/widget/TextView;

    invoke-virtual {v2, p2, v1}, Landroid/widget/TextView;->measure(II)V

    iget-object v2, p0, Landroid/support/v4/view/PagerTitleStrip;->v5:Landroid/widget/TextView;

    invoke-virtual {v2, p2, v1}, Landroid/widget/TextView;->measure(II)V

    iget-object v2, p0, Landroid/support/v4/view/PagerTitleStrip;->Zo:Landroid/widget/TextView;

    invoke-virtual {v2, p2, v1}, Landroid/widget/TextView;->measure(II)V

    iput p1, p0, Landroid/support/v4/view/PagerTitleStrip;->VH:I

    iget-boolean p2, p0, Landroid/support/v4/view/PagerTitleStrip;->we:Z

    if-nez p2, :cond_8b

    iget p2, p0, Landroid/support/v4/view/PagerTitleStrip;->gn:F

    invoke-virtual {p0, p1, p2, v0}, Landroid/support/v4/view/PagerTitleStrip;->j6(IFZ)V

    :cond_8b
    iput-boolean v0, p0, Landroid/support/v4/view/PagerTitleStrip;->EQ:Z

    return-void
.end method

.method j6(Landroid/support/v4/view/o;Landroid/support/v4/view/o;)V
    .registers 4

    if-eqz p1, :cond_a

    iget-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->J0:Landroid/support/v4/view/PagerTitleStrip$a;

    invoke-virtual {p1, v0}, Landroid/support/v4/view/o;->FH(Landroid/database/DataSetObserver;)V

    const/4 p1, 0x0

    iput-object p1, p0, Landroid/support/v4/view/PagerTitleStrip;->J8:Ljava/lang/ref/WeakReference;

    :cond_a
    if-eqz p2, :cond_18

    iget-object p1, p0, Landroid/support/v4/view/PagerTitleStrip;->J0:Landroid/support/v4/view/PagerTitleStrip$a;

    invoke-virtual {p2, p1}, Landroid/support/v4/view/o;->j6(Landroid/database/DataSetObserver;)V

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Landroid/support/v4/view/PagerTitleStrip;->J8:Ljava/lang/ref/WeakReference;

    :cond_18
    iget-object p1, p0, Landroid/support/v4/view/PagerTitleStrip;->FH:Landroid/support/v4/view/ViewPager;

    if-eqz p1, :cond_2d

    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v4/view/PagerTitleStrip;->VH:I

    const/high16 v0, -0x40800000  # -1.0f

    iput v0, p0, Landroid/support/v4/view/PagerTitleStrip;->gn:F

    invoke-virtual {p1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result p1

    invoke-virtual {p0, p1, p2}, Landroid/support/v4/view/PagerTitleStrip;->j6(ILandroid/support/v4/view/o;)V

    invoke-virtual {p0}, Landroid/support/v4/view/PagerTitleStrip;->requestLayout()V

    :cond_2d
    return-void
.end method

.method protected onAttachedToWindow()V
    .registers 4

    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v1, v0, Landroid/support/v4/view/ViewPager;

    if-eqz v1, :cond_2d

    check-cast v0, Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/o;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v4/view/PagerTitleStrip;->J0:Landroid/support/v4/view/PagerTitleStrip$a;

    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPager;->j6(Landroid/support/v4/view/ViewPager$e;)Landroid/support/v4/view/ViewPager$e;

    iget-object v2, p0, Landroid/support/v4/view/PagerTitleStrip;->J0:Landroid/support/v4/view/PagerTitleStrip$a;

    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPager;->j6(Landroid/support/v4/view/ViewPager$d;)V

    iput-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->FH:Landroid/support/v4/view/ViewPager;

    iget-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->J8:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_28

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/o;

    goto :goto_29

    :cond_28
    const/4 v0, 0x0

    :goto_29
    invoke-virtual {p0, v0, v1}, Landroid/support/v4/view/PagerTitleStrip;->j6(Landroid/support/v4/view/o;Landroid/support/v4/view/o;)V

    return-void

    :cond_2d
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "PagerTitleStrip must be a direct child of a ViewPager."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected onDetachedFromWindow()V
    .registers 4

    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    iget-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->FH:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_1d

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/o;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/view/PagerTitleStrip;->j6(Landroid/support/v4/view/o;Landroid/support/v4/view/o;)V

    iget-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->FH:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->j6(Landroid/support/v4/view/ViewPager$e;)Landroid/support/v4/view/ViewPager$e;

    iget-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->FH:Landroid/support/v4/view/ViewPager;

    iget-object v2, p0, Landroid/support/v4/view/PagerTitleStrip;->J0:Landroid/support/v4/view/PagerTitleStrip$a;

    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPager;->DW(Landroid/support/v4/view/ViewPager$d;)V

    iput-object v1, p0, Landroid/support/v4/view/PagerTitleStrip;->FH:Landroid/support/v4/view/ViewPager;

    :cond_1d
    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 6

    iget-object p1, p0, Landroid/support/v4/view/PagerTitleStrip;->FH:Landroid/support/v4/view/ViewPager;

    if-eqz p1, :cond_13

    iget p1, p0, Landroid/support/v4/view/PagerTitleStrip;->gn:F

    const/4 p2, 0x0

    cmpl-float p3, p1, p2

    if-ltz p3, :cond_c

    goto :goto_d

    :cond_c
    const/4 p1, 0x0

    :goto_d
    iget p2, p0, Landroid/support/v4/view/PagerTitleStrip;->VH:I

    const/4 p3, 0x1

    invoke-virtual {p0, p2, p1, p3}, Landroid/support/v4/view/PagerTitleStrip;->j6(IFZ)V

    :cond_13
    return-void
.end method

.method protected onMeasure(II)V
    .registers 10

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    const/high16 v1, 0x40000000  # 2.0f

    if-ne v0, v1, :cond_5e

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v2

    add-int/2addr v0, v2

    const/4 v2, -0x2

    invoke-static {p2, v0, v2}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v3

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    int-to-float v5, v4

    const v6, 0x3e4ccccd  # 0.2f

    mul-float v5, v5, v6

    float-to-int v5, v5

    invoke-static {p1, v5, v2}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result p1

    iget-object v2, p0, Landroid/support/v4/view/PagerTitleStrip;->Hw:Landroid/widget/TextView;

    invoke-virtual {v2, p1, v3}, Landroid/widget/TextView;->measure(II)V

    iget-object v2, p0, Landroid/support/v4/view/PagerTitleStrip;->v5:Landroid/widget/TextView;

    invoke-virtual {v2, p1, v3}, Landroid/widget/TextView;->measure(II)V

    iget-object v2, p0, Landroid/support/v4/view/PagerTitleStrip;->Zo:Landroid/widget/TextView;

    invoke-virtual {v2, p1, v3}, Landroid/widget/TextView;->measure(II)V

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p1

    if-ne p1, v1, :cond_3f

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    goto :goto_4e

    :cond_3f
    iget-object p1, p0, Landroid/support/v4/view/PagerTitleStrip;->v5:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result p1

    invoke-virtual {p0}, Landroid/support/v4/view/PagerTitleStrip;->getMinHeight()I

    move-result v1

    add-int/2addr p1, v0

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    :goto_4e
    iget-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->v5:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredState()I

    move-result v0

    shl-int/lit8 v0, v0, 0x10

    invoke-static {p1, p2, v0}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result p1

    invoke-virtual {p0, v4, p1}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    return-void

    :cond_5e
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Must measure with an exact width"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public requestLayout()V
    .registers 2

    iget-boolean v0, p0, Landroid/support/v4/view/PagerTitleStrip;->EQ:Z

    if-nez v0, :cond_7

    invoke-super {p0}, Landroid/view/ViewGroup;->requestLayout()V

    :cond_7
    return-void
.end method

.method public setGravity(I)V
    .registers 2

    iput p1, p0, Landroid/support/v4/view/PagerTitleStrip;->tp:I

    invoke-virtual {p0}, Landroid/support/v4/view/PagerTitleStrip;->requestLayout()V

    return-void
.end method

.method public setNonPrimaryAlpha(F)V
    .registers 4

    const/high16 v0, 0x437f0000  # 255.0f

    mul-float p1, p1, v0

    float-to-int p1, p1

    and-int/lit16 p1, p1, 0xff

    iput p1, p0, Landroid/support/v4/view/PagerTitleStrip;->Ws:I

    shl-int/lit8 p1, p1, 0x18

    iget v0, p0, Landroid/support/v4/view/PagerTitleStrip;->QX:I

    const v1, 0xffffff

    and-int/2addr v0, v1

    or-int/2addr p1, v0

    iget-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->Hw:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->Zo:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public setTextColor(I)V
    .registers 4

    iput p1, p0, Landroid/support/v4/view/PagerTitleStrip;->QX:I

    iget-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->v5:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    iget p1, p0, Landroid/support/v4/view/PagerTitleStrip;->Ws:I

    shl-int/lit8 p1, p1, 0x18

    iget v0, p0, Landroid/support/v4/view/PagerTitleStrip;->QX:I

    const v1, 0xffffff

    and-int/2addr v0, v1

    or-int/2addr p1, v0

    iget-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->Hw:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->Zo:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public setTextSpacing(I)V
    .registers 2

    iput p1, p0, Landroid/support/v4/view/PagerTitleStrip;->u7:I

    invoke-virtual {p0}, Landroid/support/v4/view/PagerTitleStrip;->requestLayout()V

    return-void
.end method
