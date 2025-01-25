.class public Landroid/support/v4/widget/SwipeRefreshLayout;
.super Landroid/view/ViewGroup;

# interfaces
.implements Landroid/support/v4/view/l;
.implements Landroid/support/v4/view/i;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/widget/SwipeRefreshLayout$a;,
        Landroid/support/v4/widget/SwipeRefreshLayout$b;
    }
.end annotation


# static fields
.field private static final DW:[I

.field private static final j6:Ljava/lang/String; = "SwipeRefreshLayout"


# instance fields
.field BT:I

.field private final EQ:[I

.field private FH:Landroid/view/View;

.field Hw:Landroid/support/v4/widget/SwipeRefreshLayout$b;

.field private J0:Z

.field private J8:I

.field private KD:Landroid/view/animation/Animation;

.field Mr:Z

.field private P8:Landroid/view/animation/Animation;

.field private QX:F

.field private SI:Landroid/view/animation/Animation;

.field private U2:Z

.field private VH:F

.field Ws:I

.field private XL:F

.field private Zo:I

.field private final a8:Landroid/view/animation/DecelerateInterpolator;

.field private aM:Z

.field private cb:Landroid/support/v4/widget/SwipeRefreshLayout$a;

.field private cn:I

.field private dx:Landroid/view/animation/Animation$AnimationListener;

.field private final ef:Landroid/view/animation/Animation;

.field private ei:Landroid/view/animation/Animation;

.field protected er:I

.field protected gW:I

.field private gn:F

.field private j3:I

.field lg:Landroid/support/v4/widget/a;

.field private nw:Landroid/view/animation/Animation;

.field private rN:I

.field ro:Z

.field private final sG:Landroid/view/animation/Animation;

.field sh:Z

.field private final tp:Landroid/support/v4/view/j;

.field private final u7:Landroid/support/v4/view/m;

.field v5:Z

.field vy:Landroid/support/v4/widget/CircularProgressDrawable;

.field private final we:[I

.field yS:F


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const v0, 0x101000e

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Landroid/support/v4/widget/SwipeRefreshLayout;->DW:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v4/widget/SwipeRefreshLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 7

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->v5:Z

    const/high16 v1, -0x40800000  # -1.0f

    iput v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->VH:F

    const/4 v1, 0x2

    new-array v2, v1, [I

    iput-object v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->EQ:[I

    new-array v1, v1, [I

    iput-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->we:[I

    const/4 v1, -0x1

    iput v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->j3:I

    iput v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->rN:I

    new-instance v1, Landroid/support/v4/widget/l;

    invoke-direct {v1, p0}, Landroid/support/v4/widget/l;-><init>(Landroid/support/v4/widget/SwipeRefreshLayout;)V

    iput-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->dx:Landroid/view/animation/Animation$AnimationListener;

    new-instance v1, Landroid/support/v4/widget/q;

    invoke-direct {v1, p0}, Landroid/support/v4/widget/q;-><init>(Landroid/support/v4/widget/SwipeRefreshLayout;)V

    iput-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->sG:Landroid/view/animation/Animation;

    new-instance v1, Landroid/support/v4/widget/r;

    invoke-direct {v1, p0}, Landroid/support/v4/widget/r;-><init>(Landroid/support/v4/widget/SwipeRefreshLayout;)V

    iput-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->ef:Landroid/view/animation/Animation;

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->Zo:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->J8:I

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setWillNotDraw(Z)V

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v2, 0x40000000  # 2.0f

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->a8:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v2, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v3, 0x42200000  # 40.0f

    mul-float v2, v2, v3

    float-to-int v2, v2

    iput v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->cn:I

    invoke-direct {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->FH()V

    const/4 v2, 0x1

    invoke-static {p0, v2}, Landroid/support/v4/view/s;->j6(Landroid/view/ViewGroup;Z)V

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v3, 0x42800000  # 64.0f

    mul-float v1, v1, v3

    float-to-int v1, v1

    iput v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->BT:I

    int-to-float v1, v1

    iput v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->VH:F

    new-instance v1, Landroid/support/v4/view/m;

    invoke-direct {v1, p0}, Landroid/support/v4/view/m;-><init>(Landroid/view/ViewGroup;)V

    iput-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->u7:Landroid/support/v4/view/m;

    new-instance v1, Landroid/support/v4/view/j;

    invoke-direct {v1, p0}, Landroid/support/v4/view/j;-><init>(Landroid/view/View;)V

    iput-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->tp:Landroid/support/v4/view/j;

    invoke-virtual {p0, v2}, Landroid/support/v4/widget/SwipeRefreshLayout;->setNestedScrollingEnabled(Z)V

    iget v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->cn:I

    neg-int v1, v1

    iput v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->Ws:I

    iput v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->gW:I

    const/high16 v1, 0x3f800000  # 1.0f

    invoke-virtual {p0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->j6(F)V

    sget-object v1, Landroid/support/v4/widget/SwipeRefreshLayout;->DW:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    invoke-virtual {p0, p2}, Landroid/support/v4/widget/SwipeRefreshLayout;->setEnabled(Z)V

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private DW(F)V
    .registers 4

    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->VH:F

    cmpl-float p1, p1, v0

    if-lez p1, :cond_b

    const/4 p1, 0x1

    invoke-direct {p0, p1, p1}, Landroid/support/v4/widget/SwipeRefreshLayout;->j6(ZZ)V

    goto :goto_29

    :cond_b
    const/4 p1, 0x0

    iput-boolean p1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->v5:Z

    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->vy:Landroid/support/v4/widget/CircularProgressDrawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/support/v4/widget/CircularProgressDrawable;->j6(FF)V

    iget-boolean v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->Mr:Z

    if-nez v0, :cond_1e

    new-instance v0, Landroid/support/v4/widget/p;

    invoke-direct {v0, p0}, Landroid/support/v4/widget/p;-><init>(Landroid/support/v4/widget/SwipeRefreshLayout;)V

    goto :goto_1f

    :cond_1e
    const/4 v0, 0x0

    :goto_1f
    iget v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->Ws:I

    invoke-direct {p0, v1, v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->DW(ILandroid/view/animation/Animation$AnimationListener;)V

    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->vy:Landroid/support/v4/widget/CircularProgressDrawable;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/CircularProgressDrawable;->j6(Z)V

    :goto_29
    return-void
.end method

.method private DW(ILandroid/view/animation/Animation$AnimationListener;)V
    .registers 5

    iget-boolean v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->Mr:Z

    if-eqz v0, :cond_8

    invoke-direct {p0, p1, p2}, Landroid/support/v4/widget/SwipeRefreshLayout;->FH(ILandroid/view/animation/Animation$AnimationListener;)V

    goto :goto_30

    :cond_8
    iput p1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->er:I

    iget-object p1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->ef:Landroid/view/animation/Animation;

    invoke-virtual {p1}, Landroid/view/animation/Animation;->reset()V

    iget-object p1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->ef:Landroid/view/animation/Animation;

    const-wide/16 v0, 0xc8

    invoke-virtual {p1, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object p1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->ef:Landroid/view/animation/Animation;

    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->a8:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {p1, v0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    if-eqz p2, :cond_24

    iget-object p1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->lg:Landroid/support/v4/widget/a;

    invoke-virtual {p1, p2}, Landroid/support/v4/widget/a;->j6(Landroid/view/animation/Animation$AnimationListener;)V

    :cond_24
    iget-object p1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->lg:Landroid/support/v4/widget/a;

    invoke-virtual {p1}, Landroid/widget/ImageView;->clearAnimation()V

    iget-object p1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->lg:Landroid/support/v4/widget/a;

    iget-object p2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->ef:Landroid/view/animation/Animation;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    :goto_30
    return-void
.end method

.method private DW(Landroid/view/animation/Animation$AnimationListener;)V
    .registers 5

    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->lg:Landroid/support/v4/widget/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_13

    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->vy:Landroid/support/v4/widget/CircularProgressDrawable;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/CircularProgressDrawable;->setAlpha(I)V

    :cond_13
    new-instance v0, Landroid/support/v4/widget/m;

    invoke-direct {v0, p0}, Landroid/support/v4/widget/m;-><init>(Landroid/support/v4/widget/SwipeRefreshLayout;)V

    iput-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->P8:Landroid/view/animation/Animation;

    iget v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->J8:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    if-eqz p1, :cond_27

    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->lg:Landroid/support/v4/widget/a;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/a;->j6(Landroid/view/animation/Animation$AnimationListener;)V

    :cond_27
    iget-object p1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->lg:Landroid/support/v4/widget/a;

    invoke-virtual {p1}, Landroid/widget/ImageView;->clearAnimation()V

    iget-object p1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->lg:Landroid/support/v4/widget/a;

    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->P8:Landroid/view/animation/Animation;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private FH()V
    .registers 4

    new-instance v0, Landroid/support/v4/widget/a;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, -0x50506

    invoke-direct {v0, v1, v2}, Landroid/support/v4/widget/a;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->lg:Landroid/support/v4/widget/a;

    new-instance v0, Landroid/support/v4/widget/CircularProgressDrawable;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/widget/CircularProgressDrawable;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->vy:Landroid/support/v4/widget/CircularProgressDrawable;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/CircularProgressDrawable;->j6(I)V

    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->lg:Landroid/support/v4/widget/a;

    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->vy:Landroid/support/v4/widget/CircularProgressDrawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->lg:Landroid/support/v4/widget/a;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->lg:Landroid/support/v4/widget/a;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method private FH(F)V
    .registers 13

    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->vy:Landroid/support/v4/widget/CircularProgressDrawable;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/CircularProgressDrawable;->j6(Z)V

    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->VH:F

    div-float v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x3f800000  # 1.0f

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    const-wide v4, 0x3fd999999999999aL  # 0.4

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v2, v4

    const-wide/16 v4, 0x0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    double-to-float v2, v2

    const/high16 v3, 0x40a00000  # 5.0f

    mul-float v2, v2, v3

    const/high16 v3, 0x40400000  # 3.0f

    div-float/2addr v2, v3

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v4, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->VH:F

    iget-boolean v5, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->sh:Z

    if-eqz v5, :cond_3f

    iget v5, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->BT:I

    iget v6, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->gW:I

    sub-int/2addr v5, v6

    goto :goto_41

    :cond_3f
    iget v5, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->BT:I

    :goto_41
    int-to-float v5, v5

    sub-float/2addr v3, v4

    const/high16 v4, 0x40000000  # 2.0f

    mul-float v6, v5, v4

    invoke-static {v3, v6}, Ljava/lang/Math;->min(FF)F

    move-result v3

    div-float/2addr v3, v5

    const/4 v6, 0x0

    invoke-static {v6, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    const/high16 v7, 0x40800000  # 4.0f

    div-float/2addr v3, v7

    float-to-double v7, v3

    const-wide/high16 v9, 0x4000000000000000L  # 2.0

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v9

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v7, v9

    double-to-float v3, v7

    mul-float v3, v3, v4

    iget v7, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->gW:I

    mul-float v0, v0, v5

    mul-float v5, v5, v3

    mul-float v5, v5, v4

    add-float/2addr v0, v5

    float-to-int v0, v0

    iget-object v5, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->lg:Landroid/support/v4/widget/a;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getVisibility()I

    move-result v5

    if-eqz v5, :cond_7d

    iget-object v5, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->lg:Landroid/support/v4/widget/a;

    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_7d
    iget-boolean v5, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->Mr:Z

    if-nez v5, :cond_8b

    iget-object v5, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->lg:Landroid/support/v4/widget/a;

    invoke-virtual {v5, v1}, Landroid/widget/ImageView;->setScaleX(F)V

    iget-object v5, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->lg:Landroid/support/v4/widget/a;

    invoke-virtual {v5, v1}, Landroid/widget/ImageView;->setScaleY(F)V

    :cond_8b
    iget-boolean v5, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->Mr:Z

    if-eqz v5, :cond_9a

    iget v5, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->VH:F

    div-float v5, p1, v5

    invoke-static {v1, v5}, Ljava/lang/Math;->min(FF)F

    move-result v5

    invoke-virtual {p0, v5}, Landroid/support/v4/widget/SwipeRefreshLayout;->setAnimationProgress(F)V

    :cond_9a
    iget v5, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->VH:F

    cmpg-float p1, p1, v5

    if-gez p1, :cond_b6

    iget-object p1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->vy:Landroid/support/v4/widget/CircularProgressDrawable;

    invoke-virtual {p1}, Landroid/support/v4/widget/CircularProgressDrawable;->getAlpha()I

    move-result p1

    const/16 v5, 0x4c

    if-le p1, v5, :cond_cb

    iget-object p1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->nw:Landroid/view/animation/Animation;

    invoke-direct {p0, p1}, Landroid/support/v4/widget/SwipeRefreshLayout;->j6(Landroid/view/animation/Animation;)Z

    move-result p1

    if-nez p1, :cond_cb

    invoke-direct {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->Zo()V

    goto :goto_cb

    :cond_b6
    iget-object p1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->vy:Landroid/support/v4/widget/CircularProgressDrawable;

    invoke-virtual {p1}, Landroid/support/v4/widget/CircularProgressDrawable;->getAlpha()I

    move-result p1

    const/16 v5, 0xff

    if-ge p1, v5, :cond_cb

    iget-object p1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->SI:Landroid/view/animation/Animation;

    invoke-direct {p0, p1}, Landroid/support/v4/widget/SwipeRefreshLayout;->j6(Landroid/view/animation/Animation;)Z

    move-result p1

    if-nez p1, :cond_cb

    invoke-direct {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->v5()V

    :cond_cb
    :goto_cb
    iget-object p1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->vy:Landroid/support/v4/widget/CircularProgressDrawable;

    const v5, 0x3f4ccccd  # 0.8f

    mul-float v8, v2, v5

    invoke-static {v5, v8}, Ljava/lang/Math;->min(FF)F

    move-result v5

    invoke-virtual {p1, v6, v5}, Landroid/support/v4/widget/CircularProgressDrawable;->j6(FF)V

    iget-object p1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->vy:Landroid/support/v4/widget/CircularProgressDrawable;

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-virtual {p1, v1}, Landroid/support/v4/widget/CircularProgressDrawable;->j6(F)V

    iget-object p1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->vy:Landroid/support/v4/widget/CircularProgressDrawable;

    const v1, 0x3ecccccd  # 0.4f

    mul-float v2, v2, v1

    const/high16 v1, 0x3e800000  # 0.25f

    sub-float/2addr v2, v1

    mul-float v3, v3, v4

    add-float/2addr v2, v3

    const/high16 v1, 0x3f000000  # 0.5f

    mul-float v2, v2, v1

    invoke-virtual {p1, v2}, Landroid/support/v4/widget/CircularProgressDrawable;->DW(F)V

    add-int/2addr v7, v0

    iget p1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->Ws:I

    sub-int/2addr v7, p1

    invoke-virtual {p0, v7}, Landroid/support/v4/widget/SwipeRefreshLayout;->setTargetOffsetTopAndBottom(I)V

    return-void
.end method

.method private FH(ILandroid/view/animation/Animation$AnimationListener;)V
    .registers 5

    iput p1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->er:I

    iget-object p1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->lg:Landroid/support/v4/widget/a;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getScaleX()F

    move-result p1

    iput p1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->yS:F

    new-instance p1, Landroid/support/v4/widget/s;

    invoke-direct {p1, p0}, Landroid/support/v4/widget/s;-><init>(Landroid/support/v4/widget/SwipeRefreshLayout;)V

    iput-object p1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->KD:Landroid/view/animation/Animation;

    const-wide/16 v0, 0x96

    invoke-virtual {p1, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    if-eqz p2, :cond_1d

    iget-object p1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->lg:Landroid/support/v4/widget/a;

    invoke-virtual {p1, p2}, Landroid/support/v4/widget/a;->j6(Landroid/view/animation/Animation$AnimationListener;)V

    :cond_1d
    iget-object p1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->lg:Landroid/support/v4/widget/a;

    invoke-virtual {p1}, Landroid/widget/ImageView;->clearAnimation()V

    iget-object p1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->lg:Landroid/support/v4/widget/a;

    iget-object p2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->KD:Landroid/view/animation/Animation;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private Hw()V
    .registers 4

    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->FH:Landroid/view/View;

    if-nez v0, :cond_1d

    const/4 v0, 0x0

    :goto_5
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1d

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->lg:Landroid/support/v4/widget/a;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1a

    iput-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->FH:Landroid/view/View;

    goto :goto_1d

    :cond_1a
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_1d
    :goto_1d
    return-void
.end method

.method private Hw(F)V
    .registers 4

    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->XL:F

    iget v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->Zo:I

    sub-float/2addr p1, v0

    int-to-float v1, v1

    cmpl-float p1, p1, v1

    if-lez p1, :cond_1b

    iget-boolean p1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->aM:Z

    if-nez p1, :cond_1b

    add-float/2addr v0, v1

    iput v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->QX:F

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->aM:Z

    iget-object p1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->vy:Landroid/support/v4/widget/CircularProgressDrawable;

    const/16 v0, 0x4c

    invoke-virtual {p1, v0}, Landroid/support/v4/widget/CircularProgressDrawable;->setAlpha(I)V

    :cond_1b
    return-void
.end method

.method private Zo()V
    .registers 3

    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->vy:Landroid/support/v4/widget/CircularProgressDrawable;

    invoke-virtual {v0}, Landroid/support/v4/widget/CircularProgressDrawable;->getAlpha()I

    move-result v0

    const/16 v1, 0x4c

    invoke-direct {p0, v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->j6(II)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->nw:Landroid/view/animation/Animation;

    return-void
.end method

.method private j6(II)Landroid/view/animation/Animation;
    .registers 4

    new-instance v0, Landroid/support/v4/widget/o;

    invoke-direct {v0, p0, p1, p2}, Landroid/support/v4/widget/o;-><init>(Landroid/support/v4/widget/SwipeRefreshLayout;II)V

    const-wide/16 p1, 0x12c

    invoke-virtual {v0, p1, p2}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object p1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->lg:Landroid/support/v4/widget/a;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/support/v4/widget/a;->j6(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object p1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->lg:Landroid/support/v4/widget/a;

    invoke-virtual {p1}, Landroid/widget/ImageView;->clearAnimation()V

    iget-object p1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->lg:Landroid/support/v4/widget/a;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    return-object v0
.end method

.method private j6(ILandroid/view/animation/Animation$AnimationListener;)V
    .registers 5

    iput p1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->er:I

    iget-object p1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->sG:Landroid/view/animation/Animation;

    invoke-virtual {p1}, Landroid/view/animation/Animation;->reset()V

    iget-object p1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->sG:Landroid/view/animation/Animation;

    const-wide/16 v0, 0xc8

    invoke-virtual {p1, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object p1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->sG:Landroid/view/animation/Animation;

    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->a8:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {p1, v0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    if-eqz p2, :cond_1c

    iget-object p1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->lg:Landroid/support/v4/widget/a;

    invoke-virtual {p1, p2}, Landroid/support/v4/widget/a;->j6(Landroid/view/animation/Animation$AnimationListener;)V

    :cond_1c
    iget-object p1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->lg:Landroid/support/v4/widget/a;

    invoke-virtual {p1}, Landroid/widget/ImageView;->clearAnimation()V

    iget-object p1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->lg:Landroid/support/v4/widget/a;

    iget-object p2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->sG:Landroid/view/animation/Animation;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private j6(Landroid/view/MotionEvent;)V
    .registers 5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iget v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->j3:I

    if-ne v1, v2, :cond_17

    if-nez v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->j3:I

    :cond_17
    return-void
.end method

.method private j6(ZZ)V
    .registers 4

    iget-boolean v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->v5:Z

    if-eq v0, p1, :cond_1a

    iput-boolean p2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->ro:Z

    invoke-direct {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->Hw()V

    iput-boolean p1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->v5:Z

    if-eqz p1, :cond_15

    iget p1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->Ws:I

    iget-object p2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->dx:Landroid/view/animation/Animation$AnimationListener;

    invoke-direct {p0, p1, p2}, Landroid/support/v4/widget/SwipeRefreshLayout;->j6(ILandroid/view/animation/Animation$AnimationListener;)V

    goto :goto_1a

    :cond_15
    iget-object p1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->dx:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {p0, p1}, Landroid/support/v4/widget/SwipeRefreshLayout;->j6(Landroid/view/animation/Animation$AnimationListener;)V

    :cond_1a
    :goto_1a
    return-void
.end method

.method private j6(Landroid/view/animation/Animation;)Z
    .registers 3

    if-eqz p1, :cond_10

    invoke-virtual {p1}, Landroid/view/animation/Animation;->hasStarted()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-virtual {p1}, Landroid/view/animation/Animation;->hasEnded()Z

    move-result p1

    if-nez p1, :cond_10

    const/4 p1, 0x1

    goto :goto_11

    :cond_10
    const/4 p1, 0x0

    :goto_11
    return p1
.end method

.method private setColorViewAlpha(I)V
    .registers 3

    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->lg:Landroid/support/v4/widget/a;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->vy:Landroid/support/v4/widget/CircularProgressDrawable;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/CircularProgressDrawable;->setAlpha(I)V

    return-void
.end method

.method private v5()V
    .registers 3

    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->vy:Landroid/support/v4/widget/CircularProgressDrawable;

    invoke-virtual {v0}, Landroid/support/v4/widget/CircularProgressDrawable;->getAlpha()I

    move-result v0

    const/16 v1, 0xff

    invoke-direct {p0, v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->j6(II)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->SI:Landroid/view/animation/Animation;

    return-void
.end method


# virtual methods
.method DW()V
    .registers 3

    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->lg:Landroid/support/v4/widget/a;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->vy:Landroid/support/v4/widget/CircularProgressDrawable;

    invoke-virtual {v0}, Landroid/support/v4/widget/CircularProgressDrawable;->stop()V

    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->lg:Landroid/support/v4/widget/a;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    const/16 v0, 0xff

    invoke-direct {p0, v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->setColorViewAlpha(I)V

    iget-boolean v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->Mr:Z

    if-eqz v0, :cond_1f

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->setAnimationProgress(F)V

    goto :goto_27

    :cond_1f
    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->gW:I

    iget v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->Ws:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->setTargetOffsetTopAndBottom(I)V

    :goto_27
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->lg:Landroid/support/v4/widget/a;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getTop()I

    move-result v0

    iput v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->Ws:I

    return-void
.end method

.method public dispatchNestedFling(FFZ)Z
    .registers 5

    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->tp:Landroid/support/v4/view/j;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/view/j;->j6(FFZ)Z

    move-result p1

    return p1
.end method

.method public dispatchNestedPreFling(FF)Z
    .registers 4

    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->tp:Landroid/support/v4/view/j;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/view/j;->j6(FF)Z

    move-result p1

    return p1
.end method

.method public dispatchNestedPreScroll(II[I[I)Z
    .registers 6

    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->tp:Landroid/support/v4/view/j;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/support/v4/view/j;->j6(II[I[I)Z

    move-result p1

    return p1
.end method

.method public dispatchNestedScroll(IIII[I)Z
    .registers 12

    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->tp:Landroid/support/v4/view/j;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/view/j;->j6(IIII[I)Z

    move-result p1

    return p1
.end method

.method protected getChildDrawingOrder(II)I
    .registers 4

    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->rN:I

    if-gez v0, :cond_5

    return p2

    :cond_5
    add-int/lit8 p1, p1, -0x1

    if-ne p2, p1, :cond_a

    return v0

    :cond_a
    if-lt p2, v0, :cond_e

    add-int/lit8 p2, p2, 0x1

    :cond_e
    return p2
.end method

.method public getNestedScrollAxes()I
    .registers 2

    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->u7:Landroid/support/v4/view/m;

    invoke-virtual {v0}, Landroid/support/v4/view/m;->j6()I

    move-result v0

    return v0
.end method

.method public getProgressCircleDiameter()I
    .registers 2

    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->cn:I

    return v0
.end method

.method public getProgressViewEndOffset()I
    .registers 2

    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->BT:I

    return v0
.end method

.method public getProgressViewStartOffset()I
    .registers 2

    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->gW:I

    return v0
.end method

.method public hasNestedScrollingParent()Z
    .registers 2

    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->tp:Landroid/support/v4/view/j;

    invoke-virtual {v0}, Landroid/support/v4/view/j;->j6()Z

    move-result v0

    return v0
.end method

.method public isNestedScrollingEnabled()Z
    .registers 2

    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->tp:Landroid/support/v4/view/j;

    invoke-virtual {v0}, Landroid/support/v4/view/j;->DW()Z

    move-result v0

    return v0
.end method

.method j6(F)V
    .registers 4

    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->er:I

    iget v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->gW:I

    sub-int/2addr v1, v0

    int-to-float v1, v1

    mul-float v1, v1, p1

    float-to-int p1, v1

    add-int/2addr v0, p1

    iget-object p1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->lg:Landroid/support/v4/widget/a;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getTop()I

    move-result p1

    sub-int/2addr v0, p1

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->setTargetOffsetTopAndBottom(I)V

    return-void
.end method

.method j6(Landroid/view/animation/Animation$AnimationListener;)V
    .registers 5

    new-instance v0, Landroid/support/v4/widget/n;

    invoke-direct {v0, p0}, Landroid/support/v4/widget/n;-><init>(Landroid/support/v4/widget/SwipeRefreshLayout;)V

    iput-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->ei:Landroid/view/animation/Animation;

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->lg:Landroid/support/v4/widget/a;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/a;->j6(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object p1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->lg:Landroid/support/v4/widget/a;

    invoke-virtual {p1}, Landroid/widget/ImageView;->clearAnimation()V

    iget-object p1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->lg:Landroid/support/v4/widget/a;

    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->ei:Landroid/view/animation/Animation;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public j6()Z
    .registers 4

    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->cb:Landroid/support/v4/widget/SwipeRefreshLayout$a;

    if-eqz v0, :cond_b

    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->FH:Landroid/view/View;

    invoke-interface {v0, p0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout$a;->j6(Landroid/support/v4/widget/SwipeRefreshLayout;Landroid/view/View;)Z

    move-result v0

    return v0

    :cond_b
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->FH:Landroid/view/View;

    instance-of v1, v0, Landroid/widget/ListView;

    const/4 v2, -0x1

    if-eqz v1, :cond_19

    check-cast v0, Landroid/widget/ListView;

    invoke-static {v0, v2}, Landroid/support/v4/widget/i;->j6(Landroid/widget/ListView;I)Z

    move-result v0

    return v0

    :cond_19
    invoke-virtual {v0, v2}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v0

    return v0
.end method

.method protected onDetachedFromWindow()V
    .registers 1

    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->DW()V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 6

    invoke-direct {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->Hw()V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    iget-boolean v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->U2:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_10

    if-nez v0, :cond_10

    iput-boolean v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->U2:Z

    :cond_10
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_81

    iget-boolean v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->U2:Z

    if-nez v1, :cond_81

    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->j6()Z

    move-result v1

    if-nez v1, :cond_81

    iget-boolean v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->v5:Z

    if-nez v1, :cond_81

    iget-boolean v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->J0:Z

    if-eqz v1, :cond_29

    goto :goto_81

    :cond_29
    if-eqz v0, :cond_5d

    const/4 v1, 0x1

    const/4 v3, -0x1

    if-eq v0, v1, :cond_58

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3d

    const/4 v1, 0x3

    if-eq v0, v1, :cond_58

    const/4 v1, 0x6

    if-eq v0, v1, :cond_39

    goto :goto_7e

    :cond_39
    invoke-direct {p0, p1}, Landroid/support/v4/widget/SwipeRefreshLayout;->j6(Landroid/view/MotionEvent;)V

    goto :goto_7e

    :cond_3d
    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->j3:I

    if-ne v0, v3, :cond_49

    sget-object p1, Landroid/support/v4/widget/SwipeRefreshLayout;->j6:Ljava/lang/String;

    const-string v0, "Got ACTION_MOVE event but don\'t have an active pointer id."

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_49
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    if-gez v0, :cond_50

    return v2

    :cond_50
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    invoke-direct {p0, p1}, Landroid/support/v4/widget/SwipeRefreshLayout;->Hw(F)V

    goto :goto_7e

    :cond_58
    iput-boolean v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->aM:Z

    iput v3, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->j3:I

    goto :goto_7e

    :cond_5d
    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->gW:I

    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->lg:Landroid/support/v4/widget/a;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getTop()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->setTargetOffsetTopAndBottom(I)V

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->j3:I

    iput-boolean v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->aM:Z

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    if-gez v0, :cond_78

    return v2

    :cond_78
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    iput p1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->XL:F

    :goto_7e
    iget-boolean p1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->aM:Z

    return p1

    :cond_81
    :goto_81
    return v2
.end method

.method protected onLayout(ZIIII)V
    .registers 8

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result p2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p3

    if-nez p3, :cond_f

    return-void

    :cond_f
    iget-object p3, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->FH:Landroid/view/View;

    if-nez p3, :cond_16

    invoke-direct {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->Hw()V

    :cond_16
    iget-object p3, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->FH:Landroid/view/View;

    if-nez p3, :cond_1b

    return-void

    :cond_1b
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result p4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result p5

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v0

    sub-int v0, p1, v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    add-int/2addr v0, p4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v1

    sub-int/2addr p2, v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v1

    sub-int/2addr p2, v1

    add-int/2addr p2, p5

    invoke-virtual {p3, p4, p5, v0, p2}, Landroid/view/View;->layout(IIII)V

    iget-object p2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->lg:Landroid/support/v4/widget/a;

    invoke-virtual {p2}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result p2

    iget-object p3, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->lg:Landroid/support/v4/widget/a;

    invoke-virtual {p3}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result p3

    iget-object p4, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->lg:Landroid/support/v4/widget/a;

    div-int/lit8 p1, p1, 0x2

    div-int/lit8 p2, p2, 0x2

    iget p5, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->Ws:I

    sub-int v0, p1, p2

    add-int/2addr p1, p2

    add-int/2addr p3, p5

    invoke-virtual {p4, v0, p5, p1, p3}, Landroid/widget/ImageView;->layout(IIII)V

    return-void
.end method

.method public onMeasure(II)V
    .registers 6

    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    iget-object p1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->FH:Landroid/view/View;

    if-nez p1, :cond_a

    invoke-direct {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->Hw()V

    :cond_a
    iget-object p1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->FH:Landroid/view/View;

    if-nez p1, :cond_f

    return-void

    :cond_f
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result p2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v0

    sub-int/2addr p2, v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v0

    sub-int/2addr p2, v0

    const/high16 v0, 0x40000000  # 2.0f

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {p1, p2, v1}, Landroid/view/View;->measure(II)V

    iget-object p1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->lg:Landroid/support/v4/widget/a;

    iget p2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->cn:I

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    iget v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->cn:I

    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {p1, p2, v0}, Landroid/widget/ImageView;->measure(II)V

    const/4 p1, -0x1

    iput p1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->rN:I

    const/4 p1, 0x0

    :goto_4d
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    if-ge p1, p2, :cond_61

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->lg:Landroid/support/v4/widget/a;

    if-ne p2, v0, :cond_5e

    iput p1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->rN:I

    goto :goto_61

    :cond_5e
    add-int/lit8 p1, p1, 0x1

    goto :goto_4d

    :cond_61
    :goto_61
    return-void
.end method

.method public onNestedFling(Landroid/view/View;FFZ)Z
    .registers 5

    invoke-virtual {p0, p2, p3, p4}, Landroid/support/v4/widget/SwipeRefreshLayout;->dispatchNestedFling(FFZ)Z

    move-result p1

    return p1
.end method

.method public onNestedPreFling(Landroid/view/View;FF)Z
    .registers 4

    invoke-virtual {p0, p2, p3}, Landroid/support/v4/widget/SwipeRefreshLayout;->dispatchNestedPreFling(FF)Z

    move-result p1

    return p1
.end method

.method public onNestedPreScroll(Landroid/view/View;II[I)V
    .registers 9

    const/4 p1, 0x0

    const/4 v0, 0x1

    if-lez p3, :cond_21

    iget v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->gn:F

    cmpl-float v2, v1, p1

    if-lez v2, :cond_21

    int-to-float v2, p3

    cmpl-float v3, v2, v1

    if-lez v3, :cond_17

    float-to-int v1, v1

    sub-int v1, p3, v1

    aput v1, p4, v0

    iput p1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->gn:F

    goto :goto_1c

    :cond_17
    sub-float/2addr v1, v2

    iput v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->gn:F

    aput p3, p4, v0

    :goto_1c
    iget v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->gn:F

    invoke-direct {p0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->FH(F)V

    :cond_21
    iget-boolean v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->sh:Z

    if-eqz v1, :cond_3e

    if-lez p3, :cond_3e

    iget v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->gn:F

    cmpl-float p1, v1, p1

    if-nez p1, :cond_3e

    aget p1, p4, v0

    sub-int p1, p3, p1

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    if-lez p1, :cond_3e

    iget-object p1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->lg:Landroid/support/v4/widget/a;

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_3e
    iget-object p1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->EQ:[I

    const/4 v1, 0x0

    aget v2, p4, v1

    sub-int/2addr p2, v2

    aget v2, p4, v0

    sub-int/2addr p3, v2

    const/4 v2, 0x0

    invoke-virtual {p0, p2, p3, p1, v2}, Landroid/support/v4/widget/SwipeRefreshLayout;->dispatchNestedPreScroll(II[I[I)Z

    move-result p2

    if-eqz p2, :cond_5c

    aget p2, p4, v1

    aget p3, p1, v1

    add-int/2addr p2, p3

    aput p2, p4, v1

    aget p2, p4, v0

    aget p1, p1, v0

    add-int/2addr p2, p1

    aput p2, p4, v0

    :cond_5c
    return-void
.end method

.method public onNestedScroll(Landroid/view/View;IIII)V
    .registers 12

    iget-object v5, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->we:[I

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/widget/SwipeRefreshLayout;->dispatchNestedScroll(IIII[I)Z

    iget-object p1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->we:[I

    const/4 p2, 0x1

    aget p1, p1, p2

    add-int/2addr p5, p1

    if-gez p5, :cond_25

    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->j6()Z

    move-result p1

    if-nez p1, :cond_25

    iget p1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->gn:F

    invoke-static {p5}, Ljava/lang/Math;->abs(I)I

    move-result p2

    int-to-float p2, p2

    add-float/2addr p1, p2

    iput p1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->gn:F

    invoke-direct {p0, p1}, Landroid/support/v4/widget/SwipeRefreshLayout;->FH(F)V

    :cond_25
    return-void
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V
    .registers 5

    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->u7:Landroid/support/v4/view/m;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/view/m;->j6(Landroid/view/View;Landroid/view/View;I)V

    and-int/lit8 p1, p3, 0x2

    invoke-virtual {p0, p1}, Landroid/support/v4/widget/SwipeRefreshLayout;->startNestedScroll(I)Z

    const/4 p1, 0x0

    iput p1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->gn:F

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->J0:Z

    return-void
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z
    .registers 4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_14

    iget-boolean p1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->U2:Z

    if-nez p1, :cond_14

    iget-boolean p1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->v5:Z

    if-nez p1, :cond_14

    and-int/lit8 p1, p3, 0x2

    if-eqz p1, :cond_14

    const/4 p1, 0x1

    goto :goto_15

    :cond_14
    const/4 p1, 0x0

    :goto_15
    return p1
.end method

.method public onStopNestedScroll(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->u7:Landroid/support/v4/view/m;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/m;->j6(Landroid/view/View;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->J0:Z

    iget p1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->gn:F

    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    if-lez v1, :cond_14

    invoke-direct {p0, p1}, Landroid/support/v4/widget/SwipeRefreshLayout;->DW(F)V

    iput v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->gn:F

    :cond_14
    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->stopNestedScroll()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    iget-boolean v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->U2:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_d

    if-nez v0, :cond_d

    iput-boolean v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->U2:Z

    :cond_d
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_af

    iget-boolean v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->U2:Z

    if-nez v1, :cond_af

    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->j6()Z

    move-result v1

    if-nez v1, :cond_af

    iget-boolean v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->v5:Z

    if-nez v1, :cond_af

    iget-boolean v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->J0:Z

    if-eqz v1, :cond_27

    goto/16 :goto_af

    :cond_27
    const/4 v1, 0x1

    if-eqz v0, :cond_a6

    const/high16 v3, 0x3f000000  # 0.5f

    if-eq v0, v1, :cond_80

    const/4 v4, 0x2

    if-eq v0, v4, :cond_56

    const/4 v3, 0x3

    if-eq v0, v3, :cond_55

    const/4 v3, 0x5

    if-eq v0, v3, :cond_40

    const/4 v2, 0x6

    if-eq v0, v2, :cond_3c

    goto/16 :goto_ae

    :cond_3c
    invoke-direct {p0, p1}, Landroid/support/v4/widget/SwipeRefreshLayout;->j6(Landroid/view/MotionEvent;)V

    goto :goto_ae

    :cond_40
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    if-gez v0, :cond_4e

    sget-object p1, Landroid/support/v4/widget/SwipeRefreshLayout;->j6:Ljava/lang/String;

    const-string v0, "Got ACTION_POINTER_DOWN event but have an invalid action index."

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_4e
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->j3:I

    goto :goto_ae

    :cond_55
    return v2

    :cond_56
    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->j3:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    if-gez v0, :cond_66

    sget-object p1, Landroid/support/v4/widget/SwipeRefreshLayout;->j6:Ljava/lang/String;

    const-string v0, "Got ACTION_MOVE event but have an invalid active pointer id."

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_66
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    invoke-direct {p0, p1}, Landroid/support/v4/widget/SwipeRefreshLayout;->Hw(F)V

    iget-boolean v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->aM:Z

    if-eqz v0, :cond_ae

    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->QX:F

    sub-float/2addr p1, v0

    mul-float p1, p1, v3

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_7f

    invoke-direct {p0, p1}, Landroid/support/v4/widget/SwipeRefreshLayout;->FH(F)V

    goto :goto_ae

    :cond_7f
    return v2

    :cond_80
    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->j3:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    if-gez v0, :cond_90

    sget-object p1, Landroid/support/v4/widget/SwipeRefreshLayout;->j6:Ljava/lang/String;

    const-string v0, "Got ACTION_UP event but don\'t have an active pointer id."

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_90
    iget-boolean v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->aM:Z

    if-eqz v1, :cond_a2

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->QX:F

    iput-boolean v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->aM:Z

    sub-float/2addr p1, v0

    mul-float p1, p1, v3

    invoke-direct {p0, p1}, Landroid/support/v4/widget/SwipeRefreshLayout;->DW(F)V

    :cond_a2
    const/4 p1, -0x1

    iput p1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->j3:I

    return v2

    :cond_a6
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->j3:I

    iput-boolean v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->aM:Z

    :cond_ae
    :goto_ae
    return v1

    :cond_af
    :goto_af
    return v2
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .registers 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_c

    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->FH:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/AbsListView;

    if-nez v0, :cond_1a

    :cond_c
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->FH:Landroid/view/View;

    if-eqz v0, :cond_17

    invoke-static {v0}, Landroid/support/v4/view/s;->u7(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_17

    goto :goto_1a

    :cond_17
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    :cond_1a
    :goto_1a
    return-void
.end method

.method setAnimationProgress(F)V
    .registers 3

    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->lg:Landroid/support/v4/widget/a;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setScaleX(F)V

    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->lg:Landroid/support/v4/widget/a;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setScaleY(F)V

    return-void
.end method

.method public varargs setColorScheme([I)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setColorSchemeResources([I)V

    return-void
.end method

.method public varargs setColorSchemeColors([I)V
    .registers 3

    invoke-direct {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->Hw()V

    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->vy:Landroid/support/v4/widget/CircularProgressDrawable;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/CircularProgressDrawable;->j6([I)V

    return-void
.end method

.method public varargs setColorSchemeResources([I)V
    .registers 6

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    array-length v1, p1

    new-array v1, v1, [I

    const/4 v2, 0x0

    :goto_8
    array-length v3, p1

    if-ge v2, v3, :cond_16

    aget v3, p1, v2

    invoke-static {v0, v3}, Landroid/support/v4/content/b;->j6(Landroid/content/Context;I)I

    move-result v3

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_16
    invoke-virtual {p0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setColorSchemeColors([I)V

    return-void
.end method

.method public setDistanceToTriggerSync(I)V
    .registers 2

    int-to-float p1, p1

    iput p1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->VH:F

    return-void
.end method

.method public setEnabled(Z)V
    .registers 2

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setEnabled(Z)V

    if-nez p1, :cond_8

    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->DW()V

    :cond_8
    return-void
.end method

.method public setNestedScrollingEnabled(Z)V
    .registers 3

    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->tp:Landroid/support/v4/view/j;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/j;->j6(Z)V

    return-void
.end method

.method public setOnChildScrollUpCallback(Landroid/support/v4/widget/SwipeRefreshLayout$a;)V
    .registers 2

    iput-object p1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->cb:Landroid/support/v4/widget/SwipeRefreshLayout$a;

    return-void
.end method

.method public setOnRefreshListener(Landroid/support/v4/widget/SwipeRefreshLayout$b;)V
    .registers 2

    iput-object p1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->Hw:Landroid/support/v4/widget/SwipeRefreshLayout$b;

    return-void
.end method

.method public setProgressBackgroundColor(I)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setProgressBackgroundColorSchemeResource(I)V

    return-void
.end method

.method public setProgressBackgroundColorSchemeColor(I)V
    .registers 3

    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->lg:Landroid/support/v4/widget/a;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/a;->setBackgroundColor(I)V

    return-void
.end method

.method public setProgressBackgroundColorSchemeResource(I)V
    .registers 3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/support/v4/content/b;->j6(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setProgressBackgroundColorSchemeColor(I)V

    return-void
.end method

.method public setRefreshing(Z)V
    .registers 4

    const/4 v0, 0x0

    if-eqz p1, :cond_23

    iget-boolean v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->v5:Z

    if-eq v1, p1, :cond_23

    iput-boolean p1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->v5:Z

    iget-boolean p1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->sh:Z

    if-nez p1, :cond_13

    iget p1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->BT:I

    iget v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->gW:I

    add-int/2addr p1, v1

    goto :goto_15

    :cond_13
    iget p1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->BT:I

    :goto_15
    iget v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->Ws:I

    sub-int/2addr p1, v1

    invoke-virtual {p0, p1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setTargetOffsetTopAndBottom(I)V

    iput-boolean v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->ro:Z

    iget-object p1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->dx:Landroid/view/animation/Animation$AnimationListener;

    invoke-direct {p0, p1}, Landroid/support/v4/widget/SwipeRefreshLayout;->DW(Landroid/view/animation/Animation$AnimationListener;)V

    goto :goto_26

    :cond_23
    invoke-direct {p0, p1, v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->j6(ZZ)V

    :goto_26
    return-void
.end method

.method public setSize(I)V
    .registers 4

    if-eqz p1, :cond_6

    const/4 v0, 0x1

    if-eq p1, v0, :cond_6

    return-void

    :cond_6
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    if-nez p1, :cond_15

    const/high16 v1, 0x42600000  # 56.0f

    goto :goto_17

    :cond_15
    const/high16 v1, 0x42200000  # 40.0f

    :goto_17
    mul-float v0, v0, v1

    float-to-int v0, v0

    iput v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->cn:I

    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->lg:Landroid/support/v4/widget/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->vy:Landroid/support/v4/widget/CircularProgressDrawable;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/CircularProgressDrawable;->j6(I)V

    iget-object p1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->lg:Landroid/support/v4/widget/a;

    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->vy:Landroid/support/v4/widget/CircularProgressDrawable;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method setTargetOffsetTopAndBottom(I)V
    .registers 3

    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->lg:Landroid/support/v4/widget/a;

    invoke-virtual {v0}, Landroid/widget/ImageView;->bringToFront()V

    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->lg:Landroid/support/v4/widget/a;

    invoke-static {v0, p1}, Landroid/support/v4/view/s;->DW(Landroid/view/View;I)V

    iget-object p1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->lg:Landroid/support/v4/widget/a;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getTop()I

    move-result p1

    iput p1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->Ws:I

    return-void
.end method

.method public startNestedScroll(I)Z
    .registers 3

    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->tp:Landroid/support/v4/view/j;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/j;->DW(I)Z

    move-result p1

    return p1
.end method

.method public stopNestedScroll()V
    .registers 2

    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->tp:Landroid/support/v4/view/j;

    invoke-virtual {v0}, Landroid/support/v4/view/j;->FH()V

    return-void
.end method
