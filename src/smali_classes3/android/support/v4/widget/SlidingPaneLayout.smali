.class public Landroid/support/v4/widget/SlidingPaneLayout;
.super Landroid/view/ViewGroup;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;,
        Landroid/support/v4/widget/SlidingPaneLayout$SavedState;,
        Landroid/support/v4/widget/SlidingPaneLayout$a;,
        Landroid/support/v4/widget/SlidingPaneLayout$b;,
        Landroid/support/v4/widget/SlidingPaneLayout$c;,
        Landroid/support/v4/widget/SlidingPaneLayout$d;,
        Landroid/support/v4/widget/SlidingPaneLayout$e;,
        Landroid/support/v4/widget/SlidingPaneLayout$f;,
        Landroid/support/v4/widget/SlidingPaneLayout$g;,
        Landroid/support/v4/widget/SlidingPaneLayout$h;
    }
.end annotation


# static fields
.field static final j6:Landroid/support/v4/widget/SlidingPaneLayout$e;


# instance fields
.field private DW:I

.field EQ:I

.field private FH:I

.field private Hw:Landroid/graphics/drawable/Drawable;

.field private J0:I

.field private J8:F

.field private final Mr:Landroid/graphics/Rect;

.field private QX:Landroid/support/v4/widget/SlidingPaneLayout$d;

.field final U2:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/support/v4/widget/SlidingPaneLayout$b;",
            ">;"
        }
    .end annotation
.end field

.field private VH:Z

.field private Ws:F

.field final XL:Landroid/support/v4/widget/w;

.field private final Zo:I

.field aM:Z

.field gn:Landroid/view/View;

.field private j3:Z

.field private tp:F

.field u7:F

.field private v5:Landroid/graphics/drawable/Drawable;

.field we:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_e

    new-instance v0, Landroid/support/v4/widget/SlidingPaneLayout$h;

    invoke-direct {v0}, Landroid/support/v4/widget/SlidingPaneLayout$h;-><init>()V

    :goto_b
    sput-object v0, Landroid/support/v4/widget/SlidingPaneLayout;->j6:Landroid/support/v4/widget/SlidingPaneLayout$e;

    goto :goto_1e

    :cond_e
    const/16 v1, 0x10

    if-lt v0, v1, :cond_18

    new-instance v0, Landroid/support/v4/widget/SlidingPaneLayout$g;

    invoke-direct {v0}, Landroid/support/v4/widget/SlidingPaneLayout$g;-><init>()V

    goto :goto_b

    :cond_18
    new-instance v0, Landroid/support/v4/widget/SlidingPaneLayout$f;

    invoke-direct {v0}, Landroid/support/v4/widget/SlidingPaneLayout$f;-><init>()V

    goto :goto_b

    :goto_1e
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v4/widget/SlidingPaneLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v4/widget/SlidingPaneLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const p2, -0x33333334

    iput p2, p0, Landroid/support/v4/widget/SlidingPaneLayout;->DW:I

    const/4 p2, 0x1

    iput-boolean p2, p0, Landroid/support/v4/widget/SlidingPaneLayout;->j3:Z

    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    iput-object p3, p0, Landroid/support/v4/widget/SlidingPaneLayout;->Mr:Landroid/graphics/Rect;

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Landroid/support/v4/widget/SlidingPaneLayout;->U2:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    const/high16 p3, 0x42000000  # 32.0f

    mul-float p3, p3, p1

    const/high16 v0, 0x3f000000  # 0.5f

    add-float/2addr p3, v0

    float-to-int p3, p3

    iput p3, p0, Landroid/support/v4/widget/SlidingPaneLayout;->Zo:I

    const/4 p3, 0x0

    invoke-virtual {p0, p3}, Landroid/view/ViewGroup;->setWillNotDraw(Z)V

    new-instance p3, Landroid/support/v4/widget/SlidingPaneLayout$a;

    invoke-direct {p3, p0}, Landroid/support/v4/widget/SlidingPaneLayout$a;-><init>(Landroid/support/v4/widget/SlidingPaneLayout;)V

    invoke-static {p0, p3}, Landroid/support/v4/view/s;->j6(Landroid/view/View;Landroid/support/v4/view/c;)V

    invoke-static {p0, p2}, Landroid/support/v4/view/s;->FH(Landroid/view/View;I)V

    new-instance p2, Landroid/support/v4/widget/SlidingPaneLayout$c;

    invoke-direct {p2, p0}, Landroid/support/v4/widget/SlidingPaneLayout$c;-><init>(Landroid/support/v4/widget/SlidingPaneLayout;)V

    invoke-static {p0, v0, p2}, Landroid/support/v4/widget/w;->j6(Landroid/view/ViewGroup;FLandroid/support/v4/widget/w$a;)Landroid/support/v4/widget/w;

    move-result-object p2

    iput-object p2, p0, Landroid/support/v4/widget/SlidingPaneLayout;->XL:Landroid/support/v4/widget/w;

    const/high16 p3, 0x43c80000  # 400.0f

    mul-float p1, p1, p3

    invoke-virtual {p2, p1}, Landroid/support/v4/widget/w;->j6(F)V

    return-void
.end method

.method private DW(Landroid/view/View;I)Z
    .registers 3

    iget-boolean p1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->j3:Z

    if-nez p1, :cond_f

    const/high16 p1, 0x3f800000  # 1.0f

    invoke-virtual {p0, p1, p2}, Landroid/support/v4/widget/SlidingPaneLayout;->j6(FI)Z

    move-result p1

    if-eqz p1, :cond_d

    goto :goto_f

    :cond_d
    const/4 p1, 0x0

    return p1

    :cond_f
    :goto_f
    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->aM:Z

    return p1
.end method

.method private static VH(Landroid/view/View;)Z
    .registers 5

    invoke-virtual {p0}, Landroid/view/View;->isOpaque()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    return v1

    :cond_8
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    const/4 v3, 0x0

    if-lt v0, v2, :cond_10

    return v3

    :cond_10
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    if-eqz p0, :cond_20

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result p0

    const/4 v0, -0x1

    if-ne p0, v0, :cond_1e

    goto :goto_1f

    :cond_1e
    const/4 v1, 0x0

    :goto_1f
    return v1

    :cond_20
    return v3
.end method

.method private j6(F)V
    .registers 11

    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->DW()Z

    move-result v0

    iget-object v1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->gn:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;

    iget-boolean v2, v1, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->Hw:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_1c

    if-eqz v0, :cond_16

    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto :goto_18

    :cond_16
    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    :goto_18
    if-gtz v1, :cond_1c

    const/4 v1, 0x1

    goto :goto_1d

    :cond_1c
    const/4 v1, 0x0

    :goto_1d
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    :goto_21
    if-ge v3, v2, :cond_58

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    iget-object v5, p0, Landroid/support/v4/widget/SlidingPaneLayout;->gn:Landroid/view/View;

    if-ne v4, v5, :cond_2c

    goto :goto_55

    :cond_2c
    iget v5, p0, Landroid/support/v4/widget/SlidingPaneLayout;->tp:F

    iget v6, p0, Landroid/support/v4/widget/SlidingPaneLayout;->J0:I

    const/high16 v7, 0x3f800000  # 1.0f

    sub-float v5, v7, v5

    int-to-float v6, v6

    mul-float v5, v5, v6

    float-to-int v5, v5

    iput p1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->tp:F

    sub-float v8, v7, p1

    mul-float v8, v8, v6

    float-to-int v6, v8

    sub-int/2addr v5, v6

    if-eqz v0, :cond_43

    neg-int v5, v5

    :cond_43
    invoke-virtual {v4, v5}, Landroid/view/View;->offsetLeftAndRight(I)V

    if-eqz v1, :cond_55

    iget v5, p0, Landroid/support/v4/widget/SlidingPaneLayout;->tp:F

    if-eqz v0, :cond_4e

    sub-float/2addr v5, v7

    goto :goto_50

    :cond_4e
    sub-float v5, v7, v5

    :goto_50
    iget v6, p0, Landroid/support/v4/widget/SlidingPaneLayout;->FH:I

    invoke-direct {p0, v4, v5, v6}, Landroid/support/v4/widget/SlidingPaneLayout;->j6(Landroid/view/View;FI)V

    :cond_55
    :goto_55
    add-int/lit8 v3, v3, 0x1

    goto :goto_21

    :cond_58
    return-void
.end method

.method private j6(Landroid/view/View;FI)V
    .registers 8

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;

    const/4 v1, 0x0

    cmpl-float v1, p2, v1

    if-lez v1, :cond_44

    if-eqz p3, :cond_44

    const/high16 v1, -0x1000000

    and-int/2addr v1, p3

    ushr-int/lit8 v1, v1, 0x18

    int-to-float v1, v1

    mul-float v1, v1, p2

    float-to-int p2, v1

    iget-object v1, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->v5:Landroid/graphics/Paint;

    if-nez v1, :cond_21

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->v5:Landroid/graphics/Paint;

    :cond_21
    iget-object v1, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->v5:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    shl-int/lit8 p2, p2, 0x18

    const v3, 0xffffff

    and-int/2addr p3, v3

    or-int/2addr p2, p3

    sget-object p3, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, p2, p3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    invoke-virtual {p1}, Landroid/view/View;->getLayerType()I

    move-result p2

    const/4 p3, 0x2

    if-eq p2, p3, :cond_40

    iget-object p2, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->v5:Landroid/graphics/Paint;

    invoke-virtual {p1, p3, p2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_40
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/SlidingPaneLayout;->Hw(Landroid/view/View;)V

    goto :goto_5f

    :cond_44
    invoke-virtual {p1}, Landroid/view/View;->getLayerType()I

    move-result p2

    if-eqz p2, :cond_5f

    iget-object p2, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->v5:Landroid/graphics/Paint;

    if-eqz p2, :cond_52

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    :cond_52
    new-instance p2, Landroid/support/v4/widget/SlidingPaneLayout$b;

    invoke-direct {p2, p0, p1}, Landroid/support/v4/widget/SlidingPaneLayout$b;-><init>(Landroid/support/v4/widget/SlidingPaneLayout;Landroid/view/View;)V

    iget-object p1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->U2:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {p0, p2}, Landroid/support/v4/view/s;->j6(Landroid/view/View;Ljava/lang/Runnable;)V

    :cond_5f
    :goto_5f
    return-void
.end method

.method private j6(Landroid/view/View;I)Z
    .registers 4

    iget-boolean p1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->j3:Z

    const/4 v0, 0x0

    if-nez p1, :cond_e

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p2}, Landroid/support/v4/widget/SlidingPaneLayout;->j6(FI)Z

    move-result p1

    if-eqz p1, :cond_d

    goto :goto_e

    :cond_d
    return v0

    :cond_e
    :goto_e
    iput-boolean v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->aM:Z

    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method DW(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->QX:Landroid/support/v4/widget/SlidingPaneLayout$d;

    if-eqz v0, :cond_7

    invoke-interface {v0, p1}, Landroid/support/v4/widget/SlidingPaneLayout$d;->j6(Landroid/view/View;)V

    :cond_7
    const/16 p1, 0x20

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->sendAccessibilityEvent(I)V

    return-void
.end method

.method DW()Z
    .registers 3

    invoke-static {p0}, Landroid/support/v4/view/s;->Hw(Landroid/view/View;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    goto :goto_9

    :cond_8
    const/4 v1, 0x0

    :goto_9
    return v1
.end method

.method FH(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->QX:Landroid/support/v4/widget/SlidingPaneLayout$d;

    if-eqz v0, :cond_9

    iget v1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->u7:F

    invoke-interface {v0, p1, v1}, Landroid/support/v4/widget/SlidingPaneLayout$d;->j6(Landroid/view/View;F)V

    :cond_9
    return-void
.end method

.method public FH()Z
    .registers 3

    iget-boolean v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->VH:Z

    if-eqz v0, :cond_f

    iget v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->u7:F

    const/high16 v1, 0x3f800000  # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method

.method Hw(Landroid/view/View;)V
    .registers 3

    sget-object v0, Landroid/support/v4/widget/SlidingPaneLayout;->j6:Landroid/support/v4/widget/SlidingPaneLayout$e;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/widget/SlidingPaneLayout$e;->j6(Landroid/support/v4/widget/SlidingPaneLayout;Landroid/view/View;)V

    return-void
.end method

.method public Hw()Z
    .registers 2

    iget-boolean v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->VH:Z

    return v0
.end method

.method Zo()V
    .registers 7

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v0, :cond_19

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_16

    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_16
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_19
    return-void
.end method

.method Zo(Landroid/view/View;)V
    .registers 21

    move-object/from16 v0, p1

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->DW()Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    goto :goto_16

    :cond_12
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v2

    :goto_16
    if-eqz v1, :cond_1d

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v3

    goto :goto_26

    :cond_1d
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    :goto_26
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v6

    if-eqz v0, :cond_4b

    invoke-static/range {p1 .. p1}, Landroid/support/v4/widget/SlidingPaneLayout;->VH(Landroid/view/View;)Z

    move-result v8

    if-eqz v8, :cond_4b

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    move-result v8

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getRight()I

    move-result v9

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v10

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getBottom()I

    move-result v11

    goto :goto_4f

    :cond_4b
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_4f
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v12

    const/4 v13, 0x0

    :goto_54
    move-object/from16 v14, p0

    if-ge v13, v12, :cond_bc

    invoke-virtual {v14, v13}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v15

    if-ne v15, v0, :cond_60

    goto/16 :goto_bc

    :cond_60
    invoke-virtual {v15}, Landroid/view/View;->getVisibility()I

    move-result v7

    const/16 v0, 0x8

    if-ne v7, v0, :cond_6f

    move/from16 v16, v1

    move/from16 v17, v2

    move/from16 v18, v3

    goto :goto_b1

    :cond_6f
    if-eqz v1, :cond_73

    move v0, v3

    goto :goto_74

    :cond_73
    move v0, v2

    :goto_74
    invoke-virtual {v15}, Landroid/view/View;->getLeft()I

    move-result v7

    invoke-static {v0, v7}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {v15}, Landroid/view/View;->getTop()I

    move-result v7

    invoke-static {v4, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    move/from16 v16, v1

    if-eqz v1, :cond_8c

    move v1, v2

    move/from16 v17, v1

    goto :goto_8f

    :cond_8c
    move/from16 v17, v2

    move v1, v3

    :goto_8f
    invoke-virtual {v15}, Landroid/view/View;->getRight()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    sub-int v2, v5, v6

    move/from16 v18, v3

    invoke-virtual {v15}, Landroid/view/View;->getBottom()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    if-lt v0, v8, :cond_ad

    if-lt v7, v10, :cond_ad

    if-gt v1, v9, :cond_ad

    if-gt v2, v11, :cond_ad

    const/4 v0, 0x4

    goto :goto_ae

    :cond_ad
    const/4 v0, 0x0

    :goto_ae
    invoke-virtual {v15, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_b1
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v16

    move/from16 v2, v17

    move/from16 v3, v18

    goto :goto_54

    :cond_bc
    :goto_bc
    return-void
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .registers 3

    instance-of v0, p1, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;

    if-eqz v0, :cond_c

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result p1

    if-eqz p1, :cond_c

    const/4 p1, 0x1

    goto :goto_d

    :cond_c
    const/4 p1, 0x0

    :goto_d
    return p1
.end method

.method public computeScroll()V
    .registers 3

    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->XL:Landroid/support/v4/widget/w;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/w;->j6(Z)Z

    move-result v0

    if-eqz v0, :cond_16

    iget-boolean v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->VH:Z

    if-nez v0, :cond_13

    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->XL:Landroid/support/v4/widget/w;

    invoke-virtual {v0}, Landroid/support/v4/widget/w;->j6()V

    return-void

    :cond_13
    invoke-static {p0}, Landroid/support/v4/view/s;->tp(Landroid/view/View;)V

    :cond_16
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 9

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->DW()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->v5:Landroid/graphics/drawable/Drawable;

    goto :goto_e

    :cond_c
    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->Hw:Landroid/graphics/drawable/Drawable;

    :goto_e
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_1a

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    goto :goto_1b

    :cond_1a
    const/4 v1, 0x0

    :goto_1b
    if-eqz v1, :cond_47

    if-nez v0, :cond_20

    goto :goto_47

    :cond_20
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->DW()Z

    move-result v5

    if-eqz v5, :cond_38

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v1

    add-int/2addr v4, v1

    goto :goto_41

    :cond_38
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    sub-int v4, v1, v4

    move v6, v4

    move v4, v1

    move v1, v6

    :goto_41
    invoke-virtual {v0, v1, v2, v4, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_47
    :goto_47
    return-void
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .registers 9

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->save(I)I

    move-result v1

    iget-boolean v2, p0, Landroid/support/v4/widget/SlidingPaneLayout;->VH:Z

    if-eqz v2, :cond_48

    iget-boolean v0, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->FH:Z

    if-nez v0, :cond_48

    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->gn:Landroid/view/View;

    if-eqz v0, :cond_48

    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->Mr:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->DW()Z

    move-result v0

    if-eqz v0, :cond_33

    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->Mr:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Landroid/support/v4/widget/SlidingPaneLayout;->gn:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, v0, Landroid/graphics/Rect;->left:I

    goto :goto_43

    :cond_33
    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->Mr:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Landroid/support/v4/widget/SlidingPaneLayout;->gn:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, v0, Landroid/graphics/Rect;->right:I

    :goto_43
    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->Mr:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    :cond_48
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p2

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return p2
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    new-instance v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;

    invoke-direct {v0}, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;-><init>()V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .registers 4

    new-instance v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .registers 3

    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_c

    new-instance v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, p1}, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    goto :goto_11

    :cond_c
    new-instance v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;

    invoke-direct {v0, p1}, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_11
    return-object v0
.end method

.method public getCoveredFadeColor()I
    .registers 2

    iget v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->FH:I

    return v0
.end method

.method public getParallaxDistance()I
    .registers 2

    iget v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->J0:I

    return v0
.end method

.method public getSliderFadeColor()I
    .registers 2

    iget v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->DW:I

    return v0
.end method

.method j6(I)V
    .registers 6

    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->gn:Landroid/view/View;

    if-nez v0, :cond_8

    const/4 p1, 0x0

    iput p1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->u7:F

    return-void

    :cond_8
    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->DW()Z

    move-result v0

    iget-object v1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->gn:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;

    iget-object v2, p0, Landroid/support/v4/widget/SlidingPaneLayout;->gn:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    if-eqz v0, :cond_23

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v3

    sub-int/2addr v3, p1

    sub-int p1, v3, v2

    :cond_23
    if-eqz v0, :cond_2a

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v2

    goto :goto_2e

    :cond_2a
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v2

    :goto_2e
    if-eqz v0, :cond_33

    iget v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto :goto_35

    :cond_33
    iget v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    :goto_35
    add-int/2addr v2, v0

    sub-int/2addr p1, v2

    int-to-float p1, p1

    iget v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->EQ:I

    int-to-float v0, v0

    div-float/2addr p1, v0

    iput p1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->u7:F

    iget v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->J0:I

    if-eqz v0, :cond_45

    invoke-direct {p0, p1}, Landroid/support/v4/widget/SlidingPaneLayout;->j6(F)V

    :cond_45
    iget-boolean p1, v1, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->Hw:Z

    if-eqz p1, :cond_52

    iget-object p1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->gn:Landroid/view/View;

    iget v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->u7:F

    iget v1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->DW:I

    invoke-direct {p0, p1, v0, v1}, Landroid/support/v4/widget/SlidingPaneLayout;->j6(Landroid/view/View;FI)V

    :cond_52
    iget-object p1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->gn:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/support/v4/widget/SlidingPaneLayout;->FH(Landroid/view/View;)V

    return-void
.end method

.method j6(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->QX:Landroid/support/v4/widget/SlidingPaneLayout$d;

    if-eqz v0, :cond_7

    invoke-interface {v0, p1}, Landroid/support/v4/widget/SlidingPaneLayout$d;->DW(Landroid/view/View;)V

    :cond_7
    const/16 p1, 0x20

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->sendAccessibilityEvent(I)V

    return-void
.end method

.method public j6()Z
    .registers 3

    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->gn:Landroid/view/View;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/support/v4/widget/SlidingPaneLayout;->j6(Landroid/view/View;I)Z

    move-result v0

    return v0
.end method

.method j6(FI)Z
    .registers 7

    iget-boolean p2, p0, Landroid/support/v4/widget/SlidingPaneLayout;->VH:Z

    const/4 v0, 0x0

    if-nez p2, :cond_6

    return v0

    :cond_6
    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->DW()Z

    move-result p2

    iget-object v1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->gn:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;

    if-eqz p2, :cond_32

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result p2

    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget-object v2, p0, Landroid/support/v4/widget/SlidingPaneLayout;->gn:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v3

    int-to-float v3, v3

    add-int/2addr p2, v1

    int-to-float p2, p2

    iget v1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->EQ:I

    int-to-float v1, v1

    mul-float p1, p1, v1

    add-float/2addr p2, p1

    int-to-float p1, v2

    add-float/2addr p2, p1

    sub-float/2addr v3, p2

    float-to-int p1, v3

    goto :goto_41

    :cond_32
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result p2

    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr p2, v1

    int-to-float p2, p2

    iget v1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->EQ:I

    int-to-float v1, v1

    mul-float p1, p1, v1

    add-float/2addr p2, p1

    float-to-int p1, p2

    :goto_41
    iget-object p2, p0, Landroid/support/v4/widget/SlidingPaneLayout;->XL:Landroid/support/v4/widget/w;

    iget-object v1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->gn:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {p2, v1, p1, v2}, Landroid/support/v4/widget/w;->DW(Landroid/view/View;II)Z

    move-result p1

    if-eqz p1, :cond_57

    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->Zo()V

    invoke-static {p0}, Landroid/support/v4/view/s;->tp(Landroid/view/View;)V

    const/4 p1, 0x1

    return p1

    :cond_57
    return v0
.end method

.method protected onAttachedToWindow()V
    .registers 2

    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->j3:Z

    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 4

    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->j3:Z

    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->U2:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_d
    if-ge v1, v0, :cond_1d

    iget-object v2, p0, Landroid/support/v4/widget/SlidingPaneLayout;->U2:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/widget/SlidingPaneLayout$b;

    invoke-virtual {v2}, Landroid/support/v4/widget/SlidingPaneLayout$b;->run()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    :cond_1d
    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->U2:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    iget-boolean v1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->VH:Z

    const/4 v2, 0x1

    if-nez v1, :cond_2a

    if-nez v0, :cond_2a

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-le v1, v2, :cond_2a

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_2a

    iget-object v3, p0, Landroid/support/v4/widget/SlidingPaneLayout;->XL:Landroid/support/v4/widget/w;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v3, v1, v4, v5}, Landroid/support/v4/widget/w;->j6(Landroid/view/View;II)Z

    move-result v1

    xor-int/2addr v1, v2

    iput-boolean v1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->aM:Z

    :cond_2a
    iget-boolean v1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->VH:Z

    if-eqz v1, :cond_a8

    iget-boolean v1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->we:Z

    if-eqz v1, :cond_36

    if-eqz v0, :cond_36

    goto/16 :goto_a8

    :cond_36
    const/4 v1, 0x3

    const/4 v3, 0x0

    if-eq v0, v1, :cond_a2

    if-ne v0, v2, :cond_3d

    goto :goto_a2

    :cond_3d
    if-eqz v0, :cond_70

    const/4 v1, 0x2

    if-eq v0, v1, :cond_43

    goto :goto_94

    :cond_43
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget v4, p0, Landroid/support/v4/widget/SlidingPaneLayout;->J8:F

    sub-float/2addr v0, v4

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v4, p0, Landroid/support/v4/widget/SlidingPaneLayout;->Ws:F

    sub-float/2addr v1, v4

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget-object v4, p0, Landroid/support/v4/widget/SlidingPaneLayout;->XL:Landroid/support/v4/widget/w;

    invoke-virtual {v4}, Landroid/support/v4/widget/w;->v5()I

    move-result v4

    int-to-float v4, v4

    cmpl-float v4, v0, v4

    if-lez v4, :cond_94

    cmpl-float v0, v1, v0

    if-lez v0, :cond_94

    iget-object p1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->XL:Landroid/support/v4/widget/w;

    invoke-virtual {p1}, Landroid/support/v4/widget/w;->DW()V

    iput-boolean v2, p0, Landroid/support/v4/widget/SlidingPaneLayout;->we:Z

    return v3

    :cond_70
    iput-boolean v3, p0, Landroid/support/v4/widget/SlidingPaneLayout;->we:Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->J8:F

    iput v1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->Ws:F

    iget-object v4, p0, Landroid/support/v4/widget/SlidingPaneLayout;->XL:Landroid/support/v4/widget/w;

    iget-object v5, p0, Landroid/support/v4/widget/SlidingPaneLayout;->gn:Landroid/view/View;

    float-to-int v0, v0

    float-to-int v1, v1

    invoke-virtual {v4, v5, v0, v1}, Landroid/support/v4/widget/w;->j6(Landroid/view/View;II)Z

    move-result v0

    if-eqz v0, :cond_94

    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->gn:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/SlidingPaneLayout;->v5(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_94

    const/4 v0, 0x1

    goto :goto_95

    :cond_94
    :goto_94
    const/4 v0, 0x0

    :goto_95
    iget-object v1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->XL:Landroid/support/v4/widget/w;

    invoke-virtual {v1, p1}, Landroid/support/v4/widget/w;->DW(Landroid/view/MotionEvent;)Z

    move-result p1

    if-nez p1, :cond_a1

    if-eqz v0, :cond_a0

    goto :goto_a1

    :cond_a0
    const/4 v2, 0x0

    :cond_a1
    :goto_a1
    return v2

    :cond_a2
    :goto_a2
    iget-object p1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->XL:Landroid/support/v4/widget/w;

    invoke-virtual {p1}, Landroid/support/v4/widget/w;->DW()V

    return v3

    :cond_a8
    :goto_a8
    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->XL:Landroid/support/v4/widget/w;

    invoke-virtual {v0}, Landroid/support/v4/widget/w;->DW()V

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected onLayout(ZIIII)V
    .registers 23

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->DW()Z

    move-result v1

    const/4 v2, 0x1

    iget-object v3, v0, Landroid/support/v4/widget/SlidingPaneLayout;->XL:Landroid/support/v4/widget/w;

    if-eqz v1, :cond_10

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/support/v4/widget/w;->Hw(I)V

    goto :goto_13

    :cond_10
    invoke-virtual {v3, v2}, Landroid/support/v4/widget/w;->Hw(I)V

    :goto_13
    sub-int v3, p4, p2

    if-eqz v1, :cond_1c

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v4

    goto :goto_20

    :cond_1c
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v4

    :goto_20
    if-eqz v1, :cond_27

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v5

    goto :goto_2b

    :cond_27
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v5

    :goto_2b
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    iget-boolean v8, v0, Landroid/support/v4/widget/SlidingPaneLayout;->j3:Z

    if-eqz v8, :cond_45

    iget-boolean v8, v0, Landroid/support/v4/widget/SlidingPaneLayout;->VH:Z

    if-eqz v8, :cond_42

    iget-boolean v8, v0, Landroid/support/v4/widget/SlidingPaneLayout;->aM:Z

    if-eqz v8, :cond_42

    const/high16 v8, 0x3f800000  # 1.0f

    goto :goto_43

    :cond_42
    const/4 v8, 0x0

    :goto_43
    iput v8, v0, Landroid/support/v4/widget/SlidingPaneLayout;->u7:F

    :cond_45
    move v11, v4

    const/4 v12, 0x0

    :goto_47
    if-ge v12, v7, :cond_da

    invoke-virtual {v0, v12}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    move-result v14

    const/16 v15, 0x8

    if-ne v14, v15, :cond_59

    const/high16 v9, 0x3f800000  # 1.0f

    goto/16 :goto_d5

    :cond_59
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    iget-boolean v2, v14, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->FH:Z

    if-eqz v2, :cond_a2

    iget v2, v14, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v8, v14, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    sub-int v10, v3, v5

    iget v9, v0, Landroid/support/v4/widget/SlidingPaneLayout;->Zo:I

    sub-int v9, v10, v9

    invoke-static {v4, v9}, Ljava/lang/Math;->min(II)I

    move-result v9

    sub-int/2addr v9, v11

    add-int/2addr v2, v8

    sub-int/2addr v9, v2

    iput v9, v0, Landroid/support/v4/widget/SlidingPaneLayout;->EQ:I

    if-eqz v1, :cond_7f

    iget v2, v14, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto :goto_81

    :cond_7f
    iget v2, v14, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    :goto_81
    add-int v8, v11, v2

    add-int/2addr v8, v9

    div-int/lit8 v16, v15, 0x2

    add-int v8, v8, v16

    if-le v8, v10, :cond_8c

    const/4 v8, 0x1

    goto :goto_8d

    :cond_8c
    const/4 v8, 0x0

    :goto_8d
    iput-boolean v8, v14, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->Hw:Z

    int-to-float v8, v9

    iget v9, v0, Landroid/support/v4/widget/SlidingPaneLayout;->u7:F

    mul-float v8, v8, v9

    float-to-int v8, v8

    add-int/2addr v2, v8

    add-int/2addr v2, v11

    int-to-float v8, v8

    iget v9, v0, Landroid/support/v4/widget/SlidingPaneLayout;->EQ:I

    int-to-float v9, v9

    div-float/2addr v8, v9

    iput v8, v0, Landroid/support/v4/widget/SlidingPaneLayout;->u7:F

    const/4 v8, 0x0

    const/high16 v9, 0x3f800000  # 1.0f

    goto :goto_bb

    :cond_a2
    iget-boolean v2, v0, Landroid/support/v4/widget/SlidingPaneLayout;->VH:Z

    if-eqz v2, :cond_b7

    iget v2, v0, Landroid/support/v4/widget/SlidingPaneLayout;->J0:I

    if-eqz v2, :cond_b7

    iget v8, v0, Landroid/support/v4/widget/SlidingPaneLayout;->u7:F

    const/high16 v9, 0x3f800000  # 1.0f

    sub-float v8, v9, v8

    int-to-float v2, v2

    mul-float v8, v8, v2

    float-to-int v2, v8

    move v8, v2

    move v2, v4

    goto :goto_bb

    :cond_b7
    const/high16 v9, 0x3f800000  # 1.0f

    move v2, v4

    const/4 v8, 0x0

    :goto_bb
    if-eqz v1, :cond_c3

    sub-int v10, v3, v2

    add-int/2addr v10, v8

    sub-int v8, v10, v15

    goto :goto_c7

    :cond_c3
    sub-int v8, v2, v8

    add-int v10, v8, v15

    :goto_c7
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    add-int/2addr v11, v6

    invoke-virtual {v13, v8, v6, v10, v11}, Landroid/view/View;->layout(IIII)V

    invoke-virtual {v13}, Landroid/view/View;->getWidth()I

    move-result v8

    add-int/2addr v4, v8

    move v11, v2

    :goto_d5
    add-int/lit8 v12, v12, 0x1

    const/4 v2, 0x1

    goto/16 :goto_47

    :cond_da
    iget-boolean v1, v0, Landroid/support/v4/widget/SlidingPaneLayout;->j3:Z

    if-eqz v1, :cond_116

    iget-boolean v1, v0, Landroid/support/v4/widget/SlidingPaneLayout;->VH:Z

    if-eqz v1, :cond_101

    iget v1, v0, Landroid/support/v4/widget/SlidingPaneLayout;->J0:I

    if-eqz v1, :cond_eb

    iget v1, v0, Landroid/support/v4/widget/SlidingPaneLayout;->u7:F

    invoke-direct {v0, v1}, Landroid/support/v4/widget/SlidingPaneLayout;->j6(F)V

    :cond_eb
    iget-object v1, v0, Landroid/support/v4/widget/SlidingPaneLayout;->gn:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;

    iget-boolean v1, v1, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->Hw:Z

    if-eqz v1, :cond_111

    iget-object v1, v0, Landroid/support/v4/widget/SlidingPaneLayout;->gn:Landroid/view/View;

    iget v2, v0, Landroid/support/v4/widget/SlidingPaneLayout;->u7:F

    iget v3, v0, Landroid/support/v4/widget/SlidingPaneLayout;->DW:I

    invoke-direct {v0, v1, v2, v3}, Landroid/support/v4/widget/SlidingPaneLayout;->j6(Landroid/view/View;FI)V

    goto :goto_111

    :cond_101
    const/4 v1, 0x0

    :goto_102
    if-ge v1, v7, :cond_111

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iget v3, v0, Landroid/support/v4/widget/SlidingPaneLayout;->DW:I

    const/4 v4, 0x0

    invoke-direct {v0, v2, v4, v3}, Landroid/support/v4/widget/SlidingPaneLayout;->j6(Landroid/view/View;FI)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_102

    :cond_111
    :goto_111
    iget-object v1, v0, Landroid/support/v4/widget/SlidingPaneLayout;->gn:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SlidingPaneLayout;->Zo(Landroid/view/View;)V

    :cond_116
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/support/v4/widget/SlidingPaneLayout;->j3:Z

    return-void
.end method

.method protected onMeasure(II)V
    .registers 24

    move-object/from16 v0, p0

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    const/16 v5, 0x12c

    const/high16 v6, -0x80000000

    const/high16 v7, 0x40000000  # 2.0f

    if-eq v1, v7, :cond_30

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->isInEditMode()Z

    move-result v8

    if-eqz v8, :cond_28

    if-ne v1, v6, :cond_23

    goto :goto_47

    :cond_23
    if-nez v1, :cond_47

    const/16 v2, 0x12c

    goto :goto_47

    :cond_28
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Width must have an exact value or MATCH_PARENT"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_30
    if-nez v3, :cond_47

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->isInEditMode()Z

    move-result v1

    if-eqz v1, :cond_3f

    if-nez v3, :cond_47

    const/high16 v3, -0x80000000

    const/16 v4, 0x12c

    goto :goto_47

    :cond_3f
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Height must not be UNSPECIFIED"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_47
    :goto_47
    const/4 v1, 0x0

    if-eq v3, v6, :cond_5b

    if-eq v3, v7, :cond_4f

    const/4 v4, 0x0

    const/4 v5, 0x0

    goto :goto_67

    :cond_4f
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    move v5, v4

    goto :goto_67

    :cond_5b
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    move v5, v4

    const/4 v4, 0x0

    :goto_67
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v8

    sub-int v8, v2, v8

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v9

    sub-int/2addr v8, v9

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v9

    const/4 v10, 0x2

    if-le v9, v10, :cond_80

    const-string v10, "SlidingPaneLayout"

    const-string v11, "onMeasure: More than two child views are not supported."

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_80
    const/4 v10, 0x0

    iput-object v10, v0, Landroid/support/v4/widget/SlidingPaneLayout;->gn:Landroid/view/View;

    move v14, v8

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_87
    const/16 v15, 0x8

    const/16 v16, 0x1

    if-ge v11, v9, :cond_120

    invoke-virtual {v0, v11}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v18

    move-object/from16 v7, v18

    check-cast v7, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v10

    if-ne v10, v15, :cond_a3

    iput-boolean v1, v7, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->Hw:Z

    goto/16 :goto_117

    :cond_a3
    iget v10, v7, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->DW:F

    const/4 v15, 0x0

    cmpl-float v19, v10, v15

    if-lez v19, :cond_b0

    add-float/2addr v13, v10

    iget v10, v7, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    if-nez v10, :cond_b0

    goto :goto_117

    :cond_b0
    iget v10, v7, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v15, v7, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v10, v15

    iget v15, v7, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    const/4 v1, -0x2

    if-ne v15, v1, :cond_c5

    sub-int v1, v8, v10

    const/high16 v10, -0x80000000

    invoke-static {v1, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    const/high16 v10, 0x40000000  # 2.0f

    goto :goto_d7

    :cond_c5
    iget v1, v7, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    const/4 v15, -0x1

    if-ne v1, v15, :cond_cf

    sub-int v1, v8, v10

    const/high16 v10, 0x40000000  # 2.0f

    goto :goto_d3

    :cond_cf
    const/high16 v10, 0x40000000  # 2.0f

    iget v1, v7, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    :goto_d3
    invoke-static {v1, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    :goto_d7
    iget v15, v7, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    const/4 v10, -0x2

    if-ne v15, v10, :cond_e3

    const/high16 v10, -0x80000000

    :goto_de
    invoke-static {v5, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v15

    goto :goto_f3

    :cond_e3
    iget v10, v7, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    const/4 v15, -0x1

    if-ne v10, v15, :cond_eb

    const/high16 v10, 0x40000000  # 2.0f

    goto :goto_de

    :cond_eb
    const/high16 v10, 0x40000000  # 2.0f

    iget v15, v7, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-static {v15, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v15

    :goto_f3
    invoke-virtual {v6, v1, v15}, Landroid/view/View;->measure(II)V

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    const/high16 v15, -0x80000000

    if-ne v3, v15, :cond_108

    if-le v10, v4, :cond_108

    invoke-static {v10, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    :cond_108
    sub-int/2addr v14, v1

    if-gez v14, :cond_10d

    const/4 v1, 0x1

    goto :goto_10e

    :cond_10d
    const/4 v1, 0x0

    :goto_10e
    iput-boolean v1, v7, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->FH:Z

    iget-boolean v7, v7, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->FH:Z

    if-eqz v7, :cond_116

    iput-object v6, v0, Landroid/support/v4/widget/SlidingPaneLayout;->gn:Landroid/view/View;

    :cond_116
    or-int/2addr v12, v1

    :goto_117
    add-int/lit8 v11, v11, 0x1

    const/4 v1, 0x0

    const/high16 v6, -0x80000000

    const/high16 v7, 0x40000000  # 2.0f

    goto/16 :goto_87

    :cond_120
    if-nez v12, :cond_127

    const/4 v1, 0x0

    cmpl-float v3, v13, v1

    if-lez v3, :cond_218

    :cond_127
    iget v1, v0, Landroid/support/v4/widget/SlidingPaneLayout;->Zo:I

    sub-int v1, v8, v1

    const/4 v3, 0x0

    :goto_12c
    if-ge v3, v9, :cond_218

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-ne v7, v15, :cond_13f

    :cond_138
    :goto_138
    move/from16 v20, v1

    :cond_13a
    :goto_13a
    const/4 v1, 0x0

    const/high16 v7, 0x40000000  # 2.0f

    goto/16 :goto_210

    :cond_13f
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v10

    if-ne v10, v15, :cond_14c

    goto :goto_138

    :cond_14c
    iget v10, v7, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    if-nez v10, :cond_159

    iget v10, v7, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->DW:F

    const/4 v11, 0x0

    cmpl-float v10, v10, v11

    if-lez v10, :cond_159

    const/4 v10, 0x1

    goto :goto_15a

    :cond_159
    const/4 v10, 0x0

    :goto_15a
    if-eqz v10, :cond_15e

    const/4 v11, 0x0

    goto :goto_162

    :cond_15e
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v11

    :goto_162
    if-eqz v12, :cond_1a8

    iget-object v15, v0, Landroid/support/v4/widget/SlidingPaneLayout;->gn:Landroid/view/View;

    if-eq v6, v15, :cond_1a8

    iget v15, v7, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    if-gez v15, :cond_138

    if-gt v11, v1, :cond_175

    iget v11, v7, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->DW:F

    const/4 v15, 0x0

    cmpl-float v11, v11, v15

    if-lez v11, :cond_138

    :cond_175
    if-eqz v10, :cond_196

    iget v10, v7, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    const/4 v11, -0x2

    if-ne v10, v11, :cond_185

    const/high16 v10, -0x80000000

    invoke-static {v5, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    const/high16 v10, 0x40000000  # 2.0f

    goto :goto_1a0

    :cond_185
    iget v10, v7, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    const/4 v11, -0x1

    if-ne v10, v11, :cond_191

    const/high16 v10, 0x40000000  # 2.0f

    invoke-static {v5, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    goto :goto_1a0

    :cond_191
    const/high16 v10, 0x40000000  # 2.0f

    iget v7, v7, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    goto :goto_19c

    :cond_196
    const/high16 v10, 0x40000000  # 2.0f

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    :goto_19c
    invoke-static {v7, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    :goto_1a0
    invoke-static {v1, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    invoke-virtual {v6, v11, v7}, Landroid/view/View;->measure(II)V

    goto :goto_138

    :cond_1a8
    iget v10, v7, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->DW:F

    const/4 v15, 0x0

    cmpl-float v10, v10, v15

    if-lez v10, :cond_138

    iget v10, v7, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    if-nez v10, :cond_1d6

    iget v10, v7, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    const/4 v15, -0x2

    if-ne v10, v15, :cond_1c3

    const/high16 v10, -0x80000000

    invoke-static {v5, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v17

    move/from16 v15, v17

    const/high16 v10, 0x40000000  # 2.0f

    goto :goto_1e0

    :cond_1c3
    iget v10, v7, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    const/4 v15, -0x1

    if-ne v10, v15, :cond_1d1

    const/high16 v10, 0x40000000  # 2.0f

    invoke-static {v5, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v20

    move/from16 v15, v20

    goto :goto_1e0

    :cond_1d1
    const/high16 v10, 0x40000000  # 2.0f

    iget v15, v7, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    goto :goto_1dc

    :cond_1d6
    const/high16 v10, 0x40000000  # 2.0f

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    :goto_1dc
    invoke-static {v15, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v15

    :goto_1e0
    if-eqz v12, :cond_1f8

    iget v10, v7, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v7, v7, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v10, v7

    sub-int v7, v8, v10

    move/from16 v20, v1

    const/high16 v10, 0x40000000  # 2.0f

    invoke-static {v7, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    if-eq v11, v7, :cond_13a

    invoke-virtual {v6, v1, v15}, Landroid/view/View;->measure(II)V

    goto/16 :goto_13a

    :cond_1f8
    move/from16 v20, v1

    const/4 v1, 0x0

    invoke-static {v1, v14}, Ljava/lang/Math;->max(II)I

    move-result v10

    iget v7, v7, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->DW:F

    int-to-float v10, v10

    mul-float v7, v7, v10

    div-float/2addr v7, v13

    float-to-int v7, v7

    add-int/2addr v11, v7

    const/high16 v7, 0x40000000  # 2.0f

    invoke-static {v11, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    invoke-virtual {v6, v10, v15}, Landroid/view/View;->measure(II)V

    :goto_210
    add-int/lit8 v3, v3, 0x1

    move/from16 v1, v20

    const/16 v15, 0x8

    goto/16 :goto_12c

    :cond_218
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v1

    add-int/2addr v4, v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v1

    add-int/2addr v4, v1

    invoke-virtual {v0, v2, v4}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    iput-boolean v12, v0, Landroid/support/v4/widget/SlidingPaneLayout;->VH:Z

    iget-object v1, v0, Landroid/support/v4/widget/SlidingPaneLayout;->XL:Landroid/support/v4/widget/w;

    invoke-virtual {v1}, Landroid/support/v4/widget/w;->Zo()I

    move-result v1

    if-eqz v1, :cond_236

    if-nez v12, :cond_236

    iget-object v1, v0, Landroid/support/v4/widget/SlidingPaneLayout;->XL:Landroid/support/v4/widget/w;

    invoke-virtual {v1}, Landroid/support/v4/widget/w;->j6()V

    :cond_236
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 3

    instance-of v0, p1, Landroid/support/v4/widget/SlidingPaneLayout$SavedState;

    if-nez v0, :cond_8

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    :cond_8
    check-cast p1, Landroid/support/v4/widget/SlidingPaneLayout$SavedState;

    invoke-virtual {p1}, Landroid/support/v4/view/AbsSavedState;->j6()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget-boolean v0, p1, Landroid/support/v4/widget/SlidingPaneLayout$SavedState;->j6:Z

    if-eqz v0, :cond_19

    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->v5()Z

    goto :goto_1c

    :cond_19
    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->j6()Z

    :goto_1c
    iget-boolean p1, p1, Landroid/support/v4/widget/SlidingPaneLayout$SavedState;->j6:Z

    iput-boolean p1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->aM:Z

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .registers 3

    new-instance v0, Landroid/support/v4/widget/SlidingPaneLayout$SavedState;

    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/widget/SlidingPaneLayout$SavedState;-><init>(Landroid/os/Parcelable;)V

    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->Hw()Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->FH()Z

    move-result v1

    goto :goto_16

    :cond_14
    iget-boolean v1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->aM:Z

    :goto_16
    iput-boolean v1, v0, Landroid/support/v4/widget/SlidingPaneLayout$SavedState;->j6:Z

    return-object v0
.end method

.method protected onSizeChanged(IIII)V
    .registers 5

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    if-eq p1, p3, :cond_8

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->j3:Z

    :cond_8
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 7

    iget-boolean v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->VH:Z

    if-nez v0, :cond_9

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_9
    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->XL:Landroid/support/v4/widget/w;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/w;->j6(Landroid/view/MotionEvent;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_55

    if-eq v0, v1, :cond_18

    goto :goto_61

    :cond_18
    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->gn:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/SlidingPaneLayout;->v5(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_61

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget v2, p0, Landroid/support/v4/widget/SlidingPaneLayout;->J8:F

    sub-float v2, v0, v2

    iget v3, p0, Landroid/support/v4/widget/SlidingPaneLayout;->Ws:F

    sub-float v3, p1, v3

    iget-object v4, p0, Landroid/support/v4/widget/SlidingPaneLayout;->XL:Landroid/support/v4/widget/w;

    invoke-virtual {v4}, Landroid/support/v4/widget/w;->v5()I

    move-result v4

    mul-float v2, v2, v2

    mul-float v3, v3, v3

    add-float/2addr v2, v3

    mul-int v4, v4, v4

    int-to-float v3, v4

    cmpg-float v2, v2, v3

    if-gez v2, :cond_61

    iget-object v2, p0, Landroid/support/v4/widget/SlidingPaneLayout;->XL:Landroid/support/v4/widget/w;

    iget-object v3, p0, Landroid/support/v4/widget/SlidingPaneLayout;->gn:Landroid/view/View;

    float-to-int v0, v0

    float-to-int p1, p1

    invoke-virtual {v2, v3, v0, p1}, Landroid/support/v4/widget/w;->j6(Landroid/view/View;II)Z

    move-result p1

    if-eqz p1, :cond_61

    iget-object p1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->gn:Landroid/view/View;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v4/widget/SlidingPaneLayout;->j6(Landroid/view/View;I)Z

    goto :goto_61

    :cond_55
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->J8:F

    iput p1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->Ws:F

    :cond_61
    :goto_61
    return v1
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .registers 3

    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->isInTouchMode()Z

    move-result p2

    if-nez p2, :cond_16

    iget-boolean p2, p0, Landroid/support/v4/widget/SlidingPaneLayout;->VH:Z

    if-nez p2, :cond_16

    iget-object p2, p0, Landroid/support/v4/widget/SlidingPaneLayout;->gn:Landroid/view/View;

    if-ne p1, p2, :cond_13

    const/4 p1, 0x1

    goto :goto_14

    :cond_13
    const/4 p1, 0x0

    :goto_14
    iput-boolean p1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->aM:Z

    :cond_16
    return-void
.end method

.method public setCoveredFadeColor(I)V
    .registers 2

    iput p1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->FH:I

    return-void
.end method

.method public setPanelSlideListener(Landroid/support/v4/widget/SlidingPaneLayout$d;)V
    .registers 2

    iput-object p1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->QX:Landroid/support/v4/widget/SlidingPaneLayout$d;

    return-void
.end method

.method public setParallaxDistance(I)V
    .registers 2

    iput p1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->J0:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    return-void
.end method

.method public setShadowDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Landroid/support/v4/widget/SlidingPaneLayout;->setShadowDrawableLeft(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setShadowDrawableLeft(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    iput-object p1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->Hw:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setShadowDrawableRight(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    iput-object p1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->v5:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setShadowResource(I)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/support/v4/widget/SlidingPaneLayout;->setShadowDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setShadowResourceLeft(I)V
    .registers 3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/support/v4/content/b;->DW(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/support/v4/widget/SlidingPaneLayout;->setShadowDrawableLeft(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setShadowResourceRight(I)V
    .registers 3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/support/v4/content/b;->DW(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/support/v4/widget/SlidingPaneLayout;->setShadowDrawableRight(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setSliderFadeColor(I)V
    .registers 2

    iput p1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->DW:I

    return-void
.end method

.method public v5()Z
    .registers 3

    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->gn:Landroid/view/View;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/support/v4/widget/SlidingPaneLayout;->DW(Landroid/view/View;I)Z

    move-result v0

    return v0
.end method

.method v5(Landroid/view/View;)Z
    .registers 4

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;

    iget-boolean v1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->VH:Z

    if-eqz v1, :cond_1a

    iget-boolean p1, p1, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->Hw:Z

    if-eqz p1, :cond_1a

    iget p1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->u7:F

    const/4 v1, 0x0

    cmpl-float p1, p1, v1

    if-lez p1, :cond_1a

    const/4 v0, 0x1

    :cond_1a
    return v0
.end method
