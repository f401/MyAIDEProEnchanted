.class public Landroid/support/v4/view/ViewPager;
.super Landroid/view/ViewGroup;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/view/ViewPager$LayoutParams;,
        Landroid/support/v4/view/ViewPager$SavedState;,
        Landroid/support/v4/view/ViewPager$a;,
        Landroid/support/v4/view/ViewPager$b;,
        Landroid/support/v4/view/ViewPager$c;,
        Landroid/support/v4/view/ViewPager$d;,
        Landroid/support/v4/view/ViewPager$e;,
        Landroid/support/v4/view/ViewPager$f;,
        Landroid/support/v4/view/ViewPager$g;,
        Landroid/support/v4/view/ViewPager$h;,
        Landroid/support/v4/view/ViewPager$i;
    }
.end annotation


# static fields
.field private static final DW:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Landroid/support/v4/view/ViewPager$b;",
            ">;"
        }
    .end annotation
.end field

.field private static final FH:Landroid/view/animation/Interpolator;

.field private static final Hw:Landroid/support/v4/view/ViewPager$i;

.field static final j6:[I


# instance fields
.field private BT:I

.field private EQ:I

.field private I:Landroid/widget/EdgeEffect;

.field private J0:Ljava/lang/ClassLoader;

.field private J8:Landroid/widget/Scroller;

.field private KD:F

.field private Mr:I

.field private Mz:Landroid/widget/EdgeEffect;

.field private OW:Landroid/support/v4/view/ViewPager$e;

.field private P8:Z

.field private QX:Landroid/support/v4/view/ViewPager$g;

.field private Qq:Z

.field private SI:I

.field private Sf:I

.field private U2:F

.field private final VH:Landroid/support/v4/view/ViewPager$b;

.field private Ws:Z

.field private XG:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private XL:I

.field private XX:Landroid/support/v4/view/ViewPager$f;

.field private final Zo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/view/ViewPager$b;",
            ">;"
        }
    .end annotation
.end field

.field private a8:F

.field private aM:Landroid/graphics/drawable/Drawable;

.field private aj:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/view/ViewPager$e;",
            ">;"
        }
    .end annotation
.end field

.field private br:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/view/ViewPager$d;",
            ">;"
        }
    .end annotation
.end field

.field private ca:Z

.field private cb:I

.field private cn:F

.field private dx:Landroid/view/VelocityTracker;

.field private ef:I

.field private ei:I

.field private er:Z

.field private g3:Z

.field private gW:Z

.field private final gn:Landroid/graphics/Rect;

.field private j3:I

.field private final jJ:Ljava/lang/Runnable;

.field private kQ:I

.field private lg:I

.field private lp:Landroid/support/v4/view/ViewPager$e;

.field private nw:I

.field private rN:I

.field private ro:F

.field private sG:I

.field private sh:F

.field private sy:I

.field tp:I

.field u7:Landroid/support/v4/view/o;

.field private v5:I

.field private vJ:I

.field private vy:Z

.field private wc:I

.field private we:Landroid/os/Parcelable;

.field private x9:Z

.field private yO:I

.field private yS:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100b3

    aput v2, v0, v1

    sput-object v0, Landroid/support/v4/view/ViewPager;->j6:[I

    new-instance v0, Landroid/support/v4/view/v;

    invoke-direct {v0}, Landroid/support/v4/view/v;-><init>()V

    sput-object v0, Landroid/support/v4/view/ViewPager;->DW:Ljava/util/Comparator;

    new-instance v0, Landroid/support/v4/view/w;

    invoke-direct {v0}, Landroid/support/v4/view/w;-><init>()V

    sput-object v0, Landroid/support/v4/view/ViewPager;->FH:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/support/v4/view/ViewPager$i;

    invoke-direct {v0}, Landroid/support/v4/view/ViewPager$i;-><init>()V

    sput-object v0, Landroid/support/v4/view/ViewPager;->Hw:Landroid/support/v4/view/ViewPager$i;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 7

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, -0x1

    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->Zo:Ljava/util/ArrayList;

    new-instance v0, Landroid/support/v4/view/ViewPager$b;

    invoke-direct {v0}, Landroid/support/v4/view/ViewPager$b;-><init>()V

    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->VH:Landroid/support/v4/view/ViewPager$b;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->gn:Landroid/graphics/Rect;

    iput v1, p0, Landroid/support/v4/view/ViewPager;->EQ:I

    iput-object v4, p0, Landroid/support/v4/view/ViewPager;->we:Landroid/os/Parcelable;

    iput-object v4, p0, Landroid/support/v4/view/ViewPager;->J0:Ljava/lang/ClassLoader;

    const v0, -0x800001

    iput v0, p0, Landroid/support/v4/view/ViewPager;->U2:F

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    iput v0, p0, Landroid/support/v4/view/ViewPager;->a8:F

    iput v3, p0, Landroid/support/v4/view/ViewPager;->BT:I

    iput v1, p0, Landroid/support/v4/view/ViewPager;->cb:I

    iput-boolean v3, p0, Landroid/support/v4/view/ViewPager;->ca:Z

    iput-boolean v2, p0, Landroid/support/v4/view/ViewPager;->x9:Z

    new-instance v0, Landroid/support/v4/view/x;

    invoke-direct {v0, p0}, Landroid/support/v4/view/x;-><init>(Landroid/support/v4/view/ViewPager;)V

    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->jJ:Ljava/lang/Runnable;

    iput v2, p0, Landroid/support/v4/view/ViewPager;->wc:I

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->DW()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 8

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, -0x1

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->Zo:Ljava/util/ArrayList;

    new-instance v0, Landroid/support/v4/view/ViewPager$b;

    invoke-direct {v0}, Landroid/support/v4/view/ViewPager$b;-><init>()V

    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->VH:Landroid/support/v4/view/ViewPager$b;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->gn:Landroid/graphics/Rect;

    iput v1, p0, Landroid/support/v4/view/ViewPager;->EQ:I

    iput-object v4, p0, Landroid/support/v4/view/ViewPager;->we:Landroid/os/Parcelable;

    iput-object v4, p0, Landroid/support/v4/view/ViewPager;->J0:Ljava/lang/ClassLoader;

    const v0, -0x800001

    iput v0, p0, Landroid/support/v4/view/ViewPager;->U2:F

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    iput v0, p0, Landroid/support/v4/view/ViewPager;->a8:F

    iput v3, p0, Landroid/support/v4/view/ViewPager;->BT:I

    iput v1, p0, Landroid/support/v4/view/ViewPager;->cb:I

    iput-boolean v3, p0, Landroid/support/v4/view/ViewPager;->ca:Z

    iput-boolean v2, p0, Landroid/support/v4/view/ViewPager;->x9:Z

    new-instance v0, Landroid/support/v4/view/x;

    invoke-direct {v0, p0}, Landroid/support/v4/view/x;-><init>(Landroid/support/v4/view/ViewPager;)V

    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->jJ:Ljava/lang/Runnable;

    iput v2, p0, Landroid/support/v4/view/ViewPager;->wc:I

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->DW()V

    return-void
.end method

.method private DW(IFI)V
    .registers 7

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->lp:Landroid/support/v4/view/ViewPager$e;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3}, Landroid/support/v4/view/ViewPager$e;->j6(IFI)V

    :cond_0
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->aj:Ljava/util/List;

    if-eqz v1, :cond_2

    const/4 v0, 0x0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_2

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->aj:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager$e;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1, p2, p3}, Landroid/support/v4/view/ViewPager$e;->j6(IFI)V

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->OW:Landroid/support/v4/view/ViewPager$e;

    if-eqz v0, :cond_3

    invoke-interface {v0, p1, p2, p3}, Landroid/support/v4/view/ViewPager$e;->j6(IFI)V

    :cond_3
    return-void
.end method

.method private DW(Z)V
    .registers 8

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_1

    if-eqz p1, :cond_0

    iget v0, p0, Landroid/support/v4/view/ViewPager;->kQ:I

    :goto_1
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v0, v5}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    return-void
.end method

.method private DW(F)Z
    .registers 12

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget v0, p0, Landroid/support/v4/view/ViewPager;->KD:F

    iput p1, p0, Landroid/support/v4/view/ViewPager;->KD:F

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, p1

    add-float v5, v1, v0

    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->getClientWidth()I

    move-result v0

    int-to-float v8, v0

    iget v0, p0, Landroid/support/v4/view/ViewPager;->U2:F

    mul-float v4, v0, v8

    iget v0, p0, Landroid/support/v4/view/ViewPager;->a8:F

    mul-float v7, v0, v8

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->Zo:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager$b;

    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->Zo:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/view/ViewPager$b;

    iget v6, v0, Landroid/support/v4/view/ViewPager$b;->DW:I

    if-eqz v6, :cond_0

    iget v0, v0, Landroid/support/v4/view/ViewPager$b;->v5:F

    mul-float v4, v0, v8

    move v0, v2

    :goto_0
    iget v6, v1, Landroid/support/v4/view/ViewPager$b;->DW:I

    iget-object v9, p0, Landroid/support/v4/view/ViewPager;->u7:Landroid/support/v4/view/o;

    invoke-virtual {v9}, Landroid/support/v4/view/o;->j6()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    if-eq v6, v9, :cond_1

    iget v1, v1, Landroid/support/v4/view/ViewPager$b;->v5:F

    mul-float/2addr v1, v8

    move v6, v2

    :goto_1
    cmpg-float v7, v5, v4

    if-gez v7, :cond_2

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->Mz:Landroid/widget/EdgeEffect;

    sub-float v1, v4, v5

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    div-float/2addr v1, v8

    invoke-virtual {v0, v1}, Landroid/widget/EdgeEffect;->onPull(F)V

    :goto_2
    iget v0, p0, Landroid/support/v4/view/ViewPager;->KD:F

    float-to-int v1, v4

    int-to-float v2, v1

    sub-float v2, v4, v2

    add-float/2addr v0, v2

    iput v0, p0, Landroid/support/v4/view/ViewPager;->KD:F

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Landroid/view/ViewGroup;->scrollTo(II)V

    invoke-direct {p0, v1}, Landroid/support/v4/view/ViewPager;->Zo(I)Z

    return v3

    :cond_0
    move v0, v3

    goto :goto_0

    :cond_1
    move v6, v3

    move v1, v7

    goto :goto_1

    :cond_2
    cmpl-float v0, v5, v1

    if-lez v0, :cond_4

    if-eqz v6, :cond_3

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->I:Landroid/widget/EdgeEffect;

    sub-float v2, v5, v1

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    div-float/2addr v2, v8

    invoke-virtual {v0, v2}, Landroid/widget/EdgeEffect;->onPull(F)V

    :goto_3
    move v4, v1

    goto :goto_2

    :cond_3
    move v3, v2

    goto :goto_3

    :cond_4
    move v3, v2

    move v4, v5

    goto :goto_2

    :cond_5
    move v3, v2

    goto :goto_2
.end method

.method private FH(Z)V
    .registers 3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_0
    return-void
.end method

.method private static FH(Landroid/view/View;)Z
    .registers 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Landroid/support/v4/view/ViewPager$a;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private Hw(I)V
    .registers 5

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->lp:Landroid/support/v4/view/ViewPager$e;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$e;->DW(I)V

    :cond_0
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->aj:Ljava/util/List;

    if-eqz v1, :cond_2

    const/4 v0, 0x0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_2

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->aj:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager$e;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$e;->DW(I)V

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->OW:Landroid/support/v4/view/ViewPager$e;

    if-eqz v0, :cond_3

    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$e;->DW(I)V

    :cond_3
    return-void
.end method

.method private VH()Landroid/support/v4/view/ViewPager$b;
    .registers 12

    const/4 v6, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->getClientWidth()I

    move-result v1

    if-lez v1, :cond_4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v0

    int-to-float v0, v0

    int-to-float v3, v1

    div-float/2addr v0, v3

    move v10, v0

    :goto_0
    if-lez v1, :cond_5

    iget v0, p0, Landroid/support/v4/view/ViewPager;->XL:I

    int-to-float v0, v0

    int-to-float v1, v1

    div-float/2addr v0, v1

    move v1, v0

    :goto_1
    const/4 v0, 0x0

    const/4 v5, 0x1

    const/4 v4, -0x1

    move-object v3, v0

    move v7, v6

    move v8, v2

    move v9, v2

    :goto_2
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->Zo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v7, v0, :cond_3

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->Zo:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager$b;

    if-nez v5, :cond_0

    iget v2, v0, Landroid/support/v4/view/ViewPager$b;->DW:I

    add-int/lit8 v4, v4, 0x1

    if-eq v2, v4, :cond_0

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->VH:Landroid/support/v4/view/ViewPager$b;

    add-float v2, v9, v8

    add-float/2addr v2, v1

    iput v2, v0, Landroid/support/v4/view/ViewPager$b;->v5:F

    iput v4, v0, Landroid/support/v4/view/ViewPager$b;->DW:I

    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->u7:Landroid/support/v4/view/o;

    iget v4, v0, Landroid/support/v4/view/ViewPager$b;->DW:I

    invoke-virtual {v2, v4}, Landroid/support/v4/view/o;->DW(I)F

    move-result v2

    iput v2, v0, Landroid/support/v4/view/ViewPager$b;->Hw:F

    add-int/lit8 v7, v7, -0x1

    :cond_0
    iget v9, v0, Landroid/support/v4/view/ViewPager$b;->v5:F

    iget v2, v0, Landroid/support/v4/view/ViewPager$b;->Hw:F

    if-nez v5, :cond_1

    cmpl-float v4, v10, v9

    if-ltz v4, :cond_3

    :cond_1
    add-float/2addr v2, v9

    add-float/2addr v2, v1

    cmpg-float v2, v10, v2

    if-ltz v2, :cond_2

    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->Zo:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v7, v2, :cond_6

    :cond_2
    move-object v3, v0

    :cond_3
    return-object v3

    :cond_4
    move v10, v2

    goto :goto_0

    :cond_5
    move v1, v2

    goto :goto_1

    :cond_6
    iget v2, v0, Landroid/support/v4/view/ViewPager$b;->DW:I

    iget v8, v0, Landroid/support/v4/view/ViewPager$b;->Hw:F

    add-int/lit8 v7, v7, 0x1

    move-object v3, v0

    move v4, v2

    move v5, v6

    goto :goto_2
.end method

.method private Zo()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/view/ViewPager;->vy:Z

    iput-boolean v0, p0, Landroid/support/v4/view/ViewPager;->P8:Z

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->dx:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->dx:Landroid/view/VelocityTracker;

    :cond_0
    return-void
.end method

.method private Zo(I)Z
    .registers 10

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->Zo:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_2

    iget-boolean v1, p0, Landroid/support/v4/view/ViewPager;->ca:Z

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iput-boolean v0, p0, Landroid/support/v4/view/ViewPager;->Qq:Z

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v0}, Landroid/support/v4/view/ViewPager;->j6(IFI)V

    iget-boolean v1, p0, Landroid/support/v4/view/ViewPager;->Qq:Z

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "onPageScrolled did not call superclass implementation"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->VH()Landroid/support/v4/view/ViewPager$b;

    move-result-object v1

    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->getClientWidth()I

    move-result v2

    iget v3, p0, Landroid/support/v4/view/ViewPager;->XL:I

    int-to-float v4, v3

    int-to-float v5, v2

    div-float/2addr v4, v5

    iget v6, v1, Landroid/support/v4/view/ViewPager$b;->DW:I

    int-to-float v7, p1

    div-float v5, v7, v5

    iget v7, v1, Landroid/support/v4/view/ViewPager$b;->v5:F

    sub-float/2addr v5, v7

    iget v1, v1, Landroid/support/v4/view/ViewPager$b;->Hw:F

    add-float/2addr v1, v4

    div-float v1, v5, v1

    add-int/2addr v2, v3

    int-to-float v2, v2

    mul-float/2addr v2, v1

    float-to-int v2, v2

    iput-boolean v0, p0, Landroid/support/v4/view/ViewPager;->Qq:Z

    invoke-virtual {p0, v6, v1, v2}, Landroid/support/v4/view/ViewPager;->j6(IFI)V

    iget-boolean v0, p0, Landroid/support/v4/view/ViewPager;->Qq:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "onPageScrolled did not call superclass implementation"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getClientWidth()I
    .registers 3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method private gn()V
    .registers 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager$LayoutParams;

    iget-boolean v0, v0, Landroid/support/v4/view/ViewPager$LayoutParams;->j6:Z

    if-nez v0, :cond_0

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->removeViewAt(I)V

    add-int/lit8 v1, v1, -0x1

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    return-void
.end method

.method private j6(IFII)I
    .registers 8

    invoke-static {p4}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Landroid/support/v4/view/ViewPager;->Sf:I

    if-le v0, v1, :cond_2

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Landroid/support/v4/view/ViewPager;->sG:I

    if-le v0, v1, :cond_2

    if-lez p3, :cond_1

    :goto_0
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->Zo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->Zo:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager$b;

    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->Zo:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/view/ViewPager$b;

    iget v0, v0, Landroid/support/v4/view/ViewPager$b;->DW:I

    iget v1, v1, Landroid/support/v4/view/ViewPager$b;->DW:I

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    :cond_0
    return p1

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    iget v0, p0, Landroid/support/v4/view/ViewPager;->tp:I

    if-lt p1, v0, :cond_3

    const v0, 0x3ecccccd    # 0.4f

    :goto_1
    add-float/2addr v0, p2

    float-to-int v0, v0

    add-int/2addr p1, v0

    goto :goto_0

    :cond_3
    const v0, 0x3f19999a    # 0.6f

    goto :goto_1
.end method

.method private j6(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;
    .registers 7

    const/4 v0, 0x0

    if-nez p1, :cond_2

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    :goto_0
    if-nez p2, :cond_0

    invoke-virtual {v1, v0, v0, v0, v0}, Landroid/graphics/Rect;->set(IIII)V

    move-object v0, v1

    :goto_1
    return-object v0

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v0

    iput v0, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v0

    iput v0, v1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v0

    iput v0, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v0

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    :goto_2
    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    if-eq v0, p0, :cond_1

    check-cast v0, Landroid/view/ViewGroup;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLeft()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->left:I

    iget v2, v1, Landroid/graphics/Rect;->right:I

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getRight()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->right:I

    iget v2, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getTop()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->top:I

    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getBottom()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_2

    :cond_1
    move-object v0, v1

    goto :goto_1

    :cond_2
    move-object v1, p1

    goto :goto_0
.end method

.method private j6(IIII)V
    .registers 10

    if-lez p2, :cond_2

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->Zo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->J8:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->J8:Landroid/widget/Scroller;

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->getClientWidth()I

    move-result v2

    mul-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/Scroller;->setFinalX(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v4

    int-to-float v4, v4

    sub-int v2, p2, v2

    sub-int/2addr v2, v3

    add-int/2addr v2, p4

    int-to-float v2, v2

    div-float v2, v4, v2

    sub-int v0, p1, v0

    sub-int/2addr v0, v1

    add-int/2addr v0, p3

    int-to-float v0, v0

    mul-float/2addr v0, v2

    float-to-int v0, v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewGroup;->scrollTo(II)V

    goto :goto_0

    :cond_2
    iget v0, p0, Landroid/support/v4/view/ViewPager;->tp:I

    invoke-virtual {p0, v0}, Landroid/support/v4/view/ViewPager;->DW(I)Landroid/support/v4/view/ViewPager$b;

    move-result-object v0

    if-eqz v0, :cond_3

    iget v0, v0, Landroid/support/v4/view/ViewPager$b;->v5:F

    iget v1, p0, Landroid/support/v4/view/ViewPager;->a8:F

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    :goto_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v1

    sub-int v1, p1, v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Landroid/support/v4/view/ViewPager;->j6(Z)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewGroup;->scrollTo(II)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private j6(IZIZ)V
    .registers 10

    const/4 v1, 0x0

    invoke-virtual {p0, p1}, Landroid/support/v4/view/ViewPager;->DW(I)Landroid/support/v4/view/ViewPager$b;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->getClientWidth()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Landroid/support/v4/view/ViewPager;->U2:F

    iget v0, v0, Landroid/support/v4/view/ViewPager$b;->v5:F

    iget v4, p0, Landroid/support/v4/view/ViewPager;->a8:F

    invoke-static {v0, v4}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    mul-float/2addr v0, v2

    float-to-int v0, v0

    :goto_0
    if-eqz p2, :cond_2

    invoke-virtual {p0, v0, v1, p3}, Landroid/support/v4/view/ViewPager;->j6(III)V

    if-eqz p4, :cond_0

    invoke-direct {p0, p1}, Landroid/support/v4/view/ViewPager;->Hw(I)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    if-eqz p4, :cond_3

    invoke-direct {p0, p1}, Landroid/support/v4/view/ViewPager;->Hw(I)V

    :cond_3
    invoke-direct {p0, v1}, Landroid/support/v4/view/ViewPager;->j6(Z)V

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewGroup;->scrollTo(II)V

    invoke-direct {p0, v0}, Landroid/support/v4/view/ViewPager;->Zo(I)Z

    goto :goto_1
.end method

.method private j6(Landroid/support/v4/view/ViewPager$b;ILandroid/support/v4/view/ViewPager$b;)V
    .registers 15

    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->u7:Landroid/support/v4/view/o;

    invoke-virtual {v0}, Landroid/support/v4/view/o;->j6()I

    move-result v5

    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->getClientWidth()I

    move-result v0

    if-lez v0, :cond_0

    iget v1, p0, Landroid/support/v4/view/ViewPager;->XL:I

    int-to-float v1, v1

    int-to-float v0, v0

    div-float v0, v1, v0

    move v6, v0

    :goto_0
    if-eqz p3, :cond_6

    iget v1, p3, Landroid/support/v4/view/ViewPager$b;->DW:I

    iget v0, p1, Landroid/support/v4/view/ViewPager$b;->DW:I

    if-ge v1, v0, :cond_3

    iget v0, p3, Landroid/support/v4/view/ViewPager$b;->v5:F

    iget v3, p3, Landroid/support/v4/view/ViewPager$b;->Hw:F

    add-float/2addr v0, v3

    add-float v4, v0, v6

    add-int/lit8 v0, v1, 0x1

    move v1, v2

    move v3, v0

    :goto_1
    iget v0, p1, Landroid/support/v4/view/ViewPager$b;->DW:I

    if-gt v3, v0, :cond_6

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->Zo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_6

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->Zo:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager$b;

    :goto_2
    iget v7, v0, Landroid/support/v4/view/ViewPager$b;->DW:I

    if-le v3, v7, :cond_1

    iget-object v7, p0, Landroid/support/v4/view/ViewPager;->Zo:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-ge v1, v7, :cond_1

    add-int/lit8 v1, v1, 0x1

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->Zo:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager$b;

    goto :goto_2

    :cond_0
    const/4 v0, 0x0

    move v6, v0

    goto :goto_0

    :cond_1
    :goto_3
    iget v7, v0, Landroid/support/v4/view/ViewPager$b;->DW:I

    if-ge v3, v7, :cond_2

    iget-object v7, p0, Landroid/support/v4/view/ViewPager;->u7:Landroid/support/v4/view/o;

    invoke-virtual {v7, v3}, Landroid/support/v4/view/o;->DW(I)F

    move-result v7

    add-float/2addr v7, v6

    add-float/2addr v4, v7

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_2
    iput v4, v0, Landroid/support/v4/view/ViewPager$b;->v5:F

    iget v0, v0, Landroid/support/v4/view/ViewPager$b;->Hw:F

    add-float/2addr v0, v6

    add-float/2addr v4, v0

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    :cond_3
    if-le v1, v0, :cond_6

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->Zo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iget v4, p3, Landroid/support/v4/view/ViewPager$b;->v5:F

    add-int/lit8 v3, v1, -0x1

    move v1, v0

    :goto_4
    iget v0, p1, Landroid/support/v4/view/ViewPager$b;->DW:I

    if-lt v3, v0, :cond_6

    if-ltz v1, :cond_6

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->Zo:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager$b;

    :goto_5
    iget v7, v0, Landroid/support/v4/view/ViewPager$b;->DW:I

    if-ge v3, v7, :cond_4

    if-lez v1, :cond_4

    add-int/lit8 v1, v1, -0x1

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->Zo:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager$b;

    goto :goto_5

    :cond_4
    :goto_6
    iget v7, v0, Landroid/support/v4/view/ViewPager$b;->DW:I

    if-le v3, v7, :cond_5

    iget-object v7, p0, Landroid/support/v4/view/ViewPager;->u7:Landroid/support/v4/view/o;

    invoke-virtual {v7, v3}, Landroid/support/v4/view/o;->DW(I)F

    move-result v7

    add-float/2addr v7, v6

    sub-float/2addr v4, v7

    add-int/lit8 v3, v3, -0x1

    goto :goto_6

    :cond_5
    iget v7, v0, Landroid/support/v4/view/ViewPager$b;->Hw:F

    add-float/2addr v7, v6

    sub-float/2addr v4, v7

    iput v4, v0, Landroid/support/v4/view/ViewPager$b;->v5:F

    add-int/lit8 v0, v3, -0x1

    move v3, v0

    goto :goto_4

    :cond_6
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->Zo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    iget v1, p1, Landroid/support/v4/view/ViewPager$b;->v5:F

    iget v0, p1, Landroid/support/v4/view/ViewPager$b;->DW:I

    add-int/lit8 v3, v0, -0x1

    if-nez v0, :cond_7

    move v0, v1

    :goto_7
    iput v0, p0, Landroid/support/v4/view/ViewPager;->U2:F

    iget v0, p1, Landroid/support/v4/view/ViewPager$b;->DW:I

    add-int/lit8 v8, v5, -0x1

    if-ne v0, v8, :cond_8

    iget v0, p1, Landroid/support/v4/view/ViewPager$b;->v5:F

    iget v4, p1, Landroid/support/v4/view/ViewPager$b;->Hw:F

    add-float/2addr v0, v4

    sub-float/2addr v0, v10

    :goto_8
    iput v0, p0, Landroid/support/v4/view/ViewPager;->a8:F

    add-int/lit8 v0, p2, -0x1

    move v5, v0

    move v4, v1

    :goto_9
    if-ltz v5, :cond_b

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->Zo:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager$b;

    move v1, v3

    :goto_a
    iget v3, v0, Landroid/support/v4/view/ViewPager$b;->DW:I

    if-le v1, v3, :cond_9

    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->u7:Landroid/support/v4/view/o;

    invoke-virtual {v3, v1}, Landroid/support/v4/view/o;->DW(I)F

    move-result v3

    add-float/2addr v3, v6

    sub-float v3, v4, v3

    add-int/lit8 v1, v1, -0x1

    move v4, v3

    goto :goto_a

    :cond_7
    const v0, -0x800001

    goto :goto_7

    :cond_8
    const v0, 0x7f7fffff    # Float.MAX_VALUE

    goto :goto_8

    :cond_9
    iget v9, v0, Landroid/support/v4/view/ViewPager$b;->Hw:F

    add-float/2addr v9, v6

    sub-float/2addr v4, v9

    iput v4, v0, Landroid/support/v4/view/ViewPager$b;->v5:F

    if-nez v3, :cond_a

    iput v4, p0, Landroid/support/v4/view/ViewPager;->U2:F

    :cond_a
    add-int/lit8 v0, v5, -0x1

    add-int/lit8 v3, v1, -0x1

    move v5, v0

    goto :goto_9

    :cond_b
    iget v0, p1, Landroid/support/v4/view/ViewPager$b;->v5:F

    iget v1, p1, Landroid/support/v4/view/ViewPager$b;->Hw:F

    add-float/2addr v0, v1

    add-float v1, v0, v6

    iget v0, p1, Landroid/support/v4/view/ViewPager$b;->DW:I

    add-int/lit8 v3, v0, 0x1

    add-int/lit8 v0, p2, 0x1

    move v4, v0

    :goto_b
    if-ge v4, v7, :cond_e

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->Zo:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager$b;

    :goto_c
    iget v5, v0, Landroid/support/v4/view/ViewPager$b;->DW:I

    if-ge v3, v5, :cond_c

    iget-object v5, p0, Landroid/support/v4/view/ViewPager;->u7:Landroid/support/v4/view/o;

    invoke-virtual {v5, v3}, Landroid/support/v4/view/o;->DW(I)F

    move-result v5

    add-float/2addr v5, v6

    add-float/2addr v1, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    :cond_c
    if-ne v5, v8, :cond_d

    iget v5, v0, Landroid/support/v4/view/ViewPager$b;->Hw:F

    add-float/2addr v5, v1

    sub-float/2addr v5, v10

    iput v5, p0, Landroid/support/v4/view/ViewPager;->a8:F

    :cond_d
    iput v1, v0, Landroid/support/v4/view/ViewPager$b;->v5:F

    iget v0, v0, Landroid/support/v4/view/ViewPager$b;->Hw:F

    add-float/2addr v0, v6

    add-float/2addr v1, v0

    add-int/lit8 v0, v4, 0x1

    add-int/lit8 v3, v3, 0x1

    move v4, v0

    goto :goto_b

    :cond_e
    iput-boolean v2, p0, Landroid/support/v4/view/ViewPager;->x9:Z

    return-void
.end method

.method private j6(Landroid/view/MotionEvent;)V
    .registers 5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iget v2, p0, Landroid/support/v4/view/ViewPager;->cb:I

    if-ne v1, v2, :cond_0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    iput v1, p0, Landroid/support/v4/view/ViewPager;->KD:F

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Landroid/support/v4/view/ViewPager;->cb:I

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->dx:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private j6(Z)V
    .registers 9

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget v0, p0, Landroid/support/v4/view/ViewPager;->wc:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    move v0, v4

    :goto_0
    if-eqz v0, :cond_1

    invoke-direct {p0, v3}, Landroid/support/v4/view/ViewPager;->setScrollingCacheEnabled(Z)V

    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->J8:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->J8:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->abortAnimation()V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v2

    iget-object v5, p0, Landroid/support/v4/view/ViewPager;->J8:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->getCurrX()I

    move-result v5

    iget-object v6, p0, Landroid/support/v4/view/ViewPager;->J8:Landroid/widget/Scroller;

    invoke-virtual {v6}, Landroid/widget/Scroller;->getCurrY()I

    move-result v6

    if-ne v1, v5, :cond_0

    if-eq v2, v6, :cond_1

    :cond_0
    invoke-virtual {p0, v5, v6}, Landroid/view/ViewGroup;->scrollTo(II)V

    if-eq v5, v1, :cond_1

    invoke-direct {p0, v5}, Landroid/support/v4/view/ViewPager;->Zo(I)Z

    :cond_1
    iput-boolean v3, p0, Landroid/support/v4/view/ViewPager;->gW:Z

    move v1, v0

    move v2, v3

    :goto_1
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->Zo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_3

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->Zo:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager$b;

    iget-boolean v5, v0, Landroid/support/v4/view/ViewPager$b;->FH:Z

    if-eqz v5, :cond_6

    iput-boolean v3, v0, Landroid/support/v4/view/ViewPager$b;->FH:Z

    move v0, v4

    :goto_2
    add-int/lit8 v2, v2, 0x1

    move v1, v0

    goto :goto_1

    :cond_2
    move v0, v3

    goto :goto_0

    :cond_3
    if-eqz v1, :cond_4

    if-eqz p1, :cond_5

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->jJ:Ljava/lang/Runnable;

    invoke-static {p0, v0}, Landroid/support/v4/view/s;->j6(Landroid/view/View;Ljava/lang/Runnable;)V

    :cond_4
    :goto_3
    return-void

    :cond_5
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->jJ:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_3

    :cond_6
    move v0, v1

    goto :goto_2
.end method

.method private j6(FF)Z
    .registers 6

    const/4 v2, 0x0

    iget v0, p0, Landroid/support/v4/view/ViewPager;->nw:I

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    cmpl-float v0, p2, v2

    if-gtz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    iget v1, p0, Landroid/support/v4/view/ViewPager;->nw:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_2

    cmpg-float v0, p2, v2

    if-gez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setScrollingCacheEnabled(Z)V
    .registers 3

    iget-boolean v0, p0, Landroid/support/v4/view/ViewPager;->yS:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Landroid/support/v4/view/ViewPager;->yS:Z

    :cond_0
    return-void
.end method

.method private tp()V
    .registers 5

    iget v0, p0, Landroid/support/v4/view/ViewPager;->yO:I

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->XG:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->XG:Ljava/util/ArrayList;

    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->XG:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->XG:Ljava/util/ArrayList;

    sget-object v1, Landroid/support/v4/view/ViewPager;->Hw:Landroid/support/v4/view/ViewPager$i;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_2
    return-void
.end method

.method private u7()Z
    .registers 2

    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v4/view/ViewPager;->cb:I

    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->Zo()V

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->Mz:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->I:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->Mz:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->I:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private v5(I)V
    .registers 5

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->lp:Landroid/support/v4/view/ViewPager$e;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$e;->j6(I)V

    :cond_0
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->aj:Ljava/util/List;

    if-eqz v1, :cond_2

    const/4 v0, 0x0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_2

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->aj:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager$e;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$e;->j6(I)V

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->OW:Landroid/support/v4/view/ViewPager$e;

    if-eqz v0, :cond_3

    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$e;->j6(I)V

    :cond_3
    return-void
.end method


# virtual methods
.method DW(I)Landroid/support/v4/view/ViewPager$b;
    .registers 5

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->Zo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->Zo:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager$b;

    iget v2, v0, Landroid/support/v4/view/ViewPager$b;->DW:I

    if-ne v2, p1, :cond_0

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method DW(Landroid/view/View;)Landroid/support/v4/view/ViewPager$b;
    .registers 6

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->Zo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->Zo:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager$b;

    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->u7:Landroid/support/v4/view/o;

    iget-object v3, v0, Landroid/support/v4/view/ViewPager$b;->j6:Ljava/lang/Object;

    invoke-virtual {v2, p1, v3}, Landroid/support/v4/view/o;->j6(Landroid/view/View;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method DW()V
    .registers 6

    const/4 v4, 0x1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setWillNotDraw(Z)V

    const/high16 v0, 0x40000

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->setFocusable(Z)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/widget/Scroller;

    sget-object v2, Landroid/support/v4/view/ViewPager;->FH:Landroid/view/animation/Interpolator;

    invoke-direct {v1, v0, v2}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v1, p0, Landroid/support/v4/view/ViewPager;->J8:Landroid/widget/Scroller;

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result v3

    iput v3, p0, Landroid/support/v4/view/ViewPager;->SI:I

    const/high16 v3, 0x43c80000    # 400.0f

    mul-float/2addr v3, v2

    float-to-int v3, v3

    iput v3, p0, Landroid/support/v4/view/ViewPager;->sG:I

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    iput v1, p0, Landroid/support/v4/view/ViewPager;->ef:I

    new-instance v1, Landroid/widget/EdgeEffect;

    invoke-direct {v1, v0}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/support/v4/view/ViewPager;->Mz:Landroid/widget/EdgeEffect;

    new-instance v1, Landroid/widget/EdgeEffect;

    invoke-direct {v1, v0}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/support/v4/view/ViewPager;->I:Landroid/widget/EdgeEffect;

    const/high16 v0, 0x41c80000    # 25.0f

    mul-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Landroid/support/v4/view/ViewPager;->Sf:I

    const/high16 v0, 0x40000000    # 2.0f

    mul-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Landroid/support/v4/view/ViewPager;->vJ:I

    const/high16 v0, 0x41800000    # 16.0f

    mul-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Landroid/support/v4/view/ViewPager;->ei:I

    new-instance v0, Landroid/support/v4/view/ViewPager$c;

    invoke-direct {v0, p0}, Landroid/support/v4/view/ViewPager$c;-><init>(Landroid/support/v4/view/ViewPager;)V

    invoke-static {p0, v0}, Landroid/support/v4/view/s;->j6(Landroid/view/View;Landroid/support/v4/view/c;)V

    invoke-static {p0}, Landroid/support/v4/view/s;->FH(Landroid/view/View;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0, v4}, Landroid/support/v4/view/s;->FH(Landroid/view/View;I)V

    :cond_0
    new-instance v0, Landroid/support/v4/view/y;

    invoke-direct {v0, p0}, Landroid/support/v4/view/y;-><init>(Landroid/support/v4/view/ViewPager;)V

    invoke-static {p0, v0}, Landroid/support/v4/view/s;->j6(Landroid/view/View;Landroid/support/v4/view/n;)V

    return-void
.end method

.method public DW(Landroid/support/v4/view/ViewPager$d;)V
    .registers 3

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->br:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method FH(I)V
    .registers 19

    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/v4/view/ViewPager;->tp:I

    move/from16 v0, p1

    if-eq v2, v0, :cond_1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPager;->DW(I)Landroid/support/v4/view/ViewPager$b;

    move-result-object v2

    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/v4/view/ViewPager;->tp:I

    move-object v3, v2

    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/view/ViewPager;->u7:Landroid/support/v4/view/o;

    if-nez v2, :cond_2

    invoke-direct/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->tp()V

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v2, 0x0

    move-object v3, v2

    goto :goto_0

    :cond_2
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/support/v4/view/ViewPager;->gW:Z

    if-eqz v2, :cond_3

    invoke-direct/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->tp()V

    goto :goto_1

    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/view/ViewPager;->u7:Landroid/support/v4/view/o;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/support/v4/view/o;->DW(Landroid/view/ViewGroup;)V

    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/v4/view/ViewPager;->BT:I

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Landroid/support/v4/view/ViewPager;->tp:I

    sub-int/2addr v5, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v13

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v4/view/ViewPager;->u7:Landroid/support/v4/view/o;

    invoke-virtual {v4}, Landroid/support/v4/view/o;->j6()I

    move-result v14

    add-int/lit8 v4, v14, -0x1

    move-object/from16 v0, p0

    iget v5, v0, Landroid/support/v4/view/ViewPager;->tp:I

    add-int/2addr v2, v5

    invoke-static {v4, v2}, Ljava/lang/Math;->min(II)I

    move-result v15

    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/v4/view/ViewPager;->v5:I

    if-ne v14, v2, :cond_1c

    const/4 v2, 0x0

    move v4, v2

    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/view/ViewPager;->Zo:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v4, v2, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/view/ViewPager;->Zo:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/view/ViewPager$b;

    iget v5, v2, Landroid/support/v4/view/ViewPager$b;->DW:I

    move-object/from16 v0, p0

    iget v6, v0, Landroid/support/v4/view/ViewPager;->tp:I

    if-lt v5, v6, :cond_8

    if-ne v5, v6, :cond_9

    :goto_3
    if-nez v2, :cond_20

    if-lez v14, :cond_20

    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/v4/view/ViewPager;->tp:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v4}, Landroid/support/v4/view/ViewPager;->j6(II)Landroid/support/v4/view/ViewPager$b;

    move-result-object v2

    move-object v12, v2

    :goto_4
    if-eqz v12, :cond_6

    add-int/lit8 v6, v4, -0x1

    if-ltz v6, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/view/ViewPager;->Zo:Ljava/util/ArrayList;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/view/ViewPager$b;

    :goto_5
    invoke-direct/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getClientWidth()I

    move-result v16

    if-gtz v16, :cond_b

    const/4 v5, 0x0

    :goto_6
    move-object/from16 v0, p0

    iget v7, v0, Landroid/support/v4/view/ViewPager;->tp:I

    add-int/lit8 v10, v7, -0x1

    const/4 v8, 0x0

    move-object v9, v2

    move v11, v10

    move v7, v4

    :goto_7
    if-ltz v11, :cond_4

    cmpl-float v2, v8, v5

    if-ltz v2, :cond_e

    if-ge v11, v13, :cond_e

    if-nez v9, :cond_c

    :cond_4
    iget v6, v12, Landroid/support/v4/view/ViewPager$b;->Hw:F

    add-int/lit8 v5, v7, 0x1

    const/high16 v2, 0x40000000    # 2.0f

    cmpg-float v2, v6, v2

    if-gez v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/view/ViewPager;->Zo:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v5, v2, :cond_11

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/view/ViewPager;->Zo:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/view/ViewPager$b;

    move-object v8, v2

    :goto_8
    if-gtz v16, :cond_12

    const/4 v2, 0x0

    move v4, v2

    :goto_9
    move-object/from16 v0, p0

    iget v9, v0, Landroid/support/v4/view/ViewPager;->tp:I

    move-object v2, v8

    move v10, v9

    :goto_a
    add-int/lit8 v10, v10, 0x1

    if-ge v10, v14, :cond_5

    cmpl-float v8, v6, v4

    if-ltz v8, :cond_15

    if-le v10, v15, :cond_15

    if-nez v2, :cond_13

    :cond_5
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v7, v3}, Landroid/support/v4/view/ViewPager;->j6(Landroid/support/v4/view/ViewPager$b;ILandroid/support/v4/view/ViewPager$b;)V

    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v4/view/ViewPager;->u7:Landroid/support/v4/view/o;

    move-object/from16 v0, p0

    iget v4, v0, Landroid/support/v4/view/ViewPager;->tp:I

    if-eqz v12, :cond_17

    iget-object v2, v12, Landroid/support/v4/view/ViewPager$b;->j6:Ljava/lang/Object;

    :goto_b
    move-object/from16 v0, p0

    invoke-virtual {v3, v0, v4, v2}, Landroid/support/v4/view/o;->DW(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/view/ViewPager;->u7:Landroid/support/v4/view/o;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/support/v4/view/o;->j6(Landroid/view/ViewGroup;)V

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    const/4 v2, 0x0

    move v3, v2

    :goto_c
    if-ge v3, v4, :cond_18

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/support/v4/view/ViewPager$LayoutParams;

    iput v3, v2, Landroid/support/v4/view/ViewPager$LayoutParams;->Zo:I

    iget-boolean v6, v2, Landroid/support/v4/view/ViewPager$LayoutParams;->j6:Z

    if-nez v6, :cond_7

    iget v6, v2, Landroid/support/v4/view/ViewPager$LayoutParams;->FH:F

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-nez v6, :cond_7

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/support/v4/view/ViewPager;->DW(Landroid/view/View;)Landroid/support/v4/view/ViewPager$b;

    move-result-object v5

    if-eqz v5, :cond_7

    iget v6, v5, Landroid/support/v4/view/ViewPager$b;->Hw:F

    iput v6, v2, Landroid/support/v4/view/ViewPager$LayoutParams;->FH:F

    iget v5, v5, Landroid/support/v4/view/ViewPager$b;->DW:I

    iput v5, v2, Landroid/support/v4/view/ViewPager$LayoutParams;->v5:I

    :cond_7
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_c

    :cond_8
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto/16 :goto_2

    :cond_9
    const/4 v2, 0x0

    goto/16 :goto_3

    :cond_a
    const/4 v2, 0x0

    goto/16 :goto_5

    :cond_b
    const/high16 v5, 0x40000000    # 2.0f

    iget v7, v12, Landroid/support/v4/view/ViewPager$b;->Hw:F

    sub-float/2addr v5, v7

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v7

    int-to-float v7, v7

    move/from16 v0, v16

    int-to-float v8, v0

    div-float/2addr v7, v8

    add-float/2addr v5, v7

    goto/16 :goto_6

    :cond_c
    iget v2, v9, Landroid/support/v4/view/ViewPager$b;->DW:I

    if-ne v11, v2, :cond_d

    iget-boolean v2, v9, Landroid/support/v4/view/ViewPager$b;->FH:Z

    if-nez v2, :cond_d

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/view/ViewPager;->Zo:Ljava/util/ArrayList;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/view/ViewPager;->u7:Landroid/support/v4/view/o;

    iget-object v4, v9, Landroid/support/v4/view/ViewPager$b;->j6:Ljava/lang/Object;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0, v11, v4}, Landroid/support/v4/view/o;->j6(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    add-int/lit8 v4, v6, -0x1

    add-int/lit8 v6, v7, -0x1

    if-ltz v4, :cond_1f

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/view/ViewPager;->Zo:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/view/ViewPager$b;

    move-object v9, v2

    move v10, v4

    move v7, v6

    :goto_d
    move v6, v10

    :cond_d
    add-int/lit8 v2, v11, -0x1

    move v11, v2

    goto/16 :goto_7

    :cond_e
    if-eqz v9, :cond_f

    iget v2, v9, Landroid/support/v4/view/ViewPager$b;->DW:I

    if-ne v11, v2, :cond_f

    iget v2, v9, Landroid/support/v4/view/ViewPager$b;->Hw:F

    add-float/2addr v8, v2

    add-int/lit8 v4, v6, -0x1

    if-ltz v4, :cond_1e

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/view/ViewPager;->Zo:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/view/ViewPager$b;

    move-object v9, v2

    move v10, v4

    goto :goto_d

    :cond_f
    add-int/lit8 v2, v6, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v2}, Landroid/support/v4/view/ViewPager;->j6(II)Landroid/support/v4/view/ViewPager$b;

    move-result-object v2

    iget v2, v2, Landroid/support/v4/view/ViewPager$b;->Hw:F

    add-float/2addr v8, v2

    add-int/lit8 v4, v7, 0x1

    if-ltz v6, :cond_10

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/view/ViewPager;->Zo:Ljava/util/ArrayList;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/view/ViewPager$b;

    move-object v9, v2

    move v10, v6

    move v7, v4

    goto :goto_d

    :cond_10
    move v2, v6

    move v7, v4

    :goto_e
    const/4 v4, 0x0

    move-object v9, v4

    move v10, v2

    goto :goto_d

    :cond_11
    const/4 v8, 0x0

    goto/16 :goto_8

    :cond_12
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v2

    int-to-float v2, v2

    move/from16 v0, v16

    int-to-float v4, v0

    div-float/2addr v2, v4

    const/high16 v4, 0x40000000    # 2.0f

    add-float/2addr v2, v4

    move v4, v2

    goto/16 :goto_9

    :cond_13
    iget v8, v2, Landroid/support/v4/view/ViewPager$b;->DW:I

    if-ne v10, v8, :cond_1d

    iget-boolean v8, v2, Landroid/support/v4/view/ViewPager$b;->FH:Z

    if-nez v8, :cond_1d

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/support/v4/view/ViewPager;->Zo:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/support/v4/view/ViewPager;->u7:Landroid/support/v4/view/o;

    iget-object v2, v2, Landroid/support/v4/view/ViewPager$b;->j6:Ljava/lang/Object;

    move-object/from16 v0, p0

    invoke-virtual {v8, v0, v10, v2}, Landroid/support/v4/view/o;->j6(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/view/ViewPager;->Zo:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v5, v2, :cond_14

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/view/ViewPager;->Zo:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/view/ViewPager$b;

    move-object v8, v2

    move v9, v5

    :goto_f
    move-object v2, v8

    move v5, v9

    goto/16 :goto_a

    :cond_14
    move v2, v5

    const/4 v5, 0x0

    move-object v8, v5

    move v9, v2

    goto :goto_f

    :cond_15
    if-eqz v2, :cond_16

    iget v8, v2, Landroid/support/v4/view/ViewPager$b;->DW:I

    if-ne v10, v8, :cond_16

    iget v2, v2, Landroid/support/v4/view/ViewPager$b;->Hw:F

    add-float/2addr v6, v2

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/view/ViewPager;->Zo:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v5, v2, :cond_14

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/view/ViewPager;->Zo:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/view/ViewPager$b;

    move-object v8, v2

    move v9, v5

    goto :goto_f

    :cond_16
    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v5}, Landroid/support/v4/view/ViewPager;->j6(II)Landroid/support/v4/view/ViewPager$b;

    move-result-object v2

    add-int/lit8 v5, v5, 0x1

    iget v2, v2, Landroid/support/v4/view/ViewPager$b;->Hw:F

    add-float/2addr v6, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/view/ViewPager;->Zo:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v5, v2, :cond_14

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/view/ViewPager;->Zo:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/view/ViewPager$b;

    move-object v8, v2

    move v9, v5

    goto :goto_f

    :cond_17
    const/4 v2, 0x0

    goto/16 :goto_b

    :cond_18
    invoke-direct/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->tp()V

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->findFocus()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1b

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPager;->j6(Landroid/view/View;)Landroid/support/v4/view/ViewPager$b;

    move-result-object v2

    :goto_10
    if-eqz v2, :cond_19

    iget v2, v2, Landroid/support/v4/view/ViewPager$b;->DW:I

    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/v4/view/ViewPager;->tp:I

    if-eq v2, v3, :cond_0

    :cond_19
    const/4 v2, 0x0

    :goto_11
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/support/v4/view/ViewPager;->DW(Landroid/view/View;)Landroid/support/v4/view/ViewPager$b;

    move-result-object v4

    if-eqz v4, :cond_1a

    iget v4, v4, Landroid/support/v4/view/ViewPager$b;->DW:I

    move-object/from16 v0, p0

    iget v5, v0, Landroid/support/v4/view/ViewPager;->tp:I

    if-ne v4, v5, :cond_1a

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/view/View;->requestFocus(I)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_1a
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    :cond_1b
    const/4 v2, 0x0

    goto :goto_10

    :cond_1c
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :goto_12
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The application\'s PagerAdapter changed the adapter\'s contents without calling PagerAdapter#notifyDataSetChanged! Expected adapter item count: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget v4, v0, Landroid/support/v4/view/ViewPager;->v5:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", found: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " Pager id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " Pager class: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " Problematic adapter: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/view/ViewPager;->u7:Landroid/support/v4/view/o;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :catch_0
    move-exception v2

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_12

    :cond_1d
    move-object v8, v2

    move v9, v5

    goto/16 :goto_f

    :cond_1e
    move v2, v4

    goto/16 :goto_e

    :cond_1f
    move v2, v4

    move v7, v6

    goto/16 :goto_e

    :cond_20
    move-object v12, v2

    goto/16 :goto_4
.end method

.method FH()Z
    .registers 3

    const/4 v0, 0x1

    iget v1, p0, Landroid/support/v4/view/ViewPager;->tp:I

    if-lez v1, :cond_0

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1, v0}, Landroid/support/v4/view/ViewPager;->j6(IZ)V

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method Hw()Z
    .registers 4

    const/4 v0, 0x1

    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->u7:Landroid/support/v4/view/o;

    if-eqz v1, :cond_0

    iget v2, p0, Landroid/support/v4/view/ViewPager;->tp:I

    invoke-virtual {v1}, Landroid/support/v4/view/o;->j6()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v2, v1, :cond_0

    iget v1, p0, Landroid/support/v4/view/ViewPager;->tp:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1, v0}, Landroid/support/v4/view/ViewPager;->j6(IZ)V

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public addFocusables(Ljava/util/ArrayList;II)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;II)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v2

    const/high16 v0, 0x60000

    if-eq v2, v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {p0, v3}, Landroid/support/v4/view/ViewPager;->DW(Landroid/view/View;)Landroid/support/v4/view/ViewPager$b;

    move-result-object v4

    if-eqz v4, :cond_0

    iget v4, v4, Landroid/support/v4/view/ViewPager$b;->DW:I

    iget v5, p0, Landroid/support/v4/view/ViewPager;->tp:I

    if-ne v4, v5, :cond_0

    invoke-virtual {v3, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/high16 v0, 0x40000

    if-ne v2, v0, :cond_2

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v1, v0, :cond_3

    :cond_2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isFocusable()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    :goto_1
    return-void

    :cond_4
    and-int/lit8 v0, p3, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5

    invoke-virtual {p0}, Landroid/view/ViewGroup;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Landroid/view/ViewGroup;->isFocusableInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_5
    if-eqz p1, :cond_3

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public addTouchables(Ljava/util/ArrayList;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0, v1}, Landroid/support/v4/view/ViewPager;->DW(Landroid/view/View;)Landroid/support/v4/view/ViewPager$b;

    move-result-object v2

    if-eqz v2, :cond_0

    iget v2, v2, Landroid/support/v4/view/ViewPager$b;->DW:I

    iget v3, p0, Landroid/support/v4/view/ViewPager;->tp:I

    if-ne v2, v3, :cond_0

    invoke-virtual {v1, p1}, Landroid/view/View;->addTouchables(Ljava/util/ArrayList;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .registers 8

    invoke-virtual {p0, p3}, Landroid/support/v4/view/ViewPager;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0, p3}, Landroid/support/v4/view/ViewPager;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    :goto_0
    move-object v0, v1

    check-cast v0, Landroid/support/v4/view/ViewPager$LayoutParams;

    iget-boolean v2, v0, Landroid/support/v4/view/ViewPager$LayoutParams;->j6:Z

    invoke-static {p1}, Landroid/support/v4/view/ViewPager;->FH(Landroid/view/View;)Z

    move-result v3

    or-int/2addr v2, v3

    iput-boolean v2, v0, Landroid/support/v4/view/ViewPager$LayoutParams;->j6:Z

    iget-boolean v2, p0, Landroid/support/v4/view/ViewPager;->er:Z

    if-eqz v2, :cond_2

    if-eqz v0, :cond_0

    iget-boolean v2, v0, Landroid/support/v4/view/ViewPager$LayoutParams;->j6:Z

    if-nez v2, :cond_1

    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, v0, Landroid/support/v4/view/ViewPager$LayoutParams;->Hw:Z

    invoke-virtual {p0, p1, p2, v1}, Landroid/view/ViewGroup;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    :goto_1
    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot add pager decor view during layout"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-super {p0, p1, p2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    :cond_3
    move-object v1, p3

    goto :goto_0
.end method

.method public canScrollHorizontally(I)Z
    .registers 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->u7:Landroid/support/v4/view/o;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->getClientWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v3

    if-gez p1, :cond_2

    int-to-float v2, v2

    iget v4, p0, Landroid/support/v4/view/ViewPager;->U2:F

    mul-float/2addr v2, v4

    float-to-int v2, v2

    if-le v3, v2, :cond_3

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_2
    if-lez p1, :cond_0

    int-to-float v2, v2

    iget v4, p0, Landroid/support/v4/view/ViewPager;->a8:F

    mul-float/2addr v2, v4

    float-to-int v2, v2

    if-ge v3, v2, :cond_0

    move v1, v0

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .registers 3

    instance-of v0, p1, Landroid/support/v4/view/ViewPager$LayoutParams;

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public computeScroll()V
    .registers 5

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/support/v4/view/ViewPager;->Ws:Z

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->J8:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->J8:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v1

    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->J8:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrX()I

    move-result v2

    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->J8:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->getCurrY()I

    move-result v3

    if-ne v0, v2, :cond_0

    if-eq v1, v3, :cond_1

    :cond_0
    invoke-virtual {p0, v2, v3}, Landroid/view/ViewGroup;->scrollTo(II)V

    invoke-direct {p0, v2}, Landroid/support/v4/view/ViewPager;->Zo(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->J8:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v3}, Landroid/view/ViewGroup;->scrollTo(II)V

    :cond_1
    invoke-static {p0}, Landroid/support/v4/view/s;->tp(Landroid/view/View;)V

    :goto_0
    return-void

    :cond_2
    invoke-direct {p0, v1}, Landroid/support/v4/view/ViewPager;->j6(Z)V

    goto :goto_0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 3

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Landroid/support/v4/view/ViewPager;->j6(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 8

    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v1

    const/16 v2, 0x1000

    if-ne v1, v2, :cond_1

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    move v1, v0

    :goto_1
    if-ge v1, v2, :cond_0

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {p0, v3}, Landroid/support/v4/view/ViewPager;->DW(Landroid/view/View;)Landroid/support/v4/view/ViewPager$b;

    move-result-object v4

    if-eqz v4, :cond_2

    iget v4, v4, Landroid/support/v4/view/ViewPager$b;->DW:I

    iget v5, p0, Landroid/support/v4/view/ViewPager;->tp:I

    if-ne v4, v5, :cond_2

    invoke-virtual {v3, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 11

    const/4 v2, 0x1

    const/4 v0, 0x0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getOverScrollMode()I

    move-result v1

    if-eqz v1, :cond_0

    if-ne v1, v2, :cond_4

    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->u7:Landroid/support/v4/view/o;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/support/v4/view/o;->j6()I

    move-result v1

    if-le v1, v2, :cond_4

    :cond_0
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->Mz:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v2

    const/high16 v3, 0x43870000    # 270.0f

    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->rotate(F)V

    neg-int v3, v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, p0, Landroid/support/v4/view/ViewPager;->U2:F

    int-to-float v5, v2

    mul-float/2addr v4, v5

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->Mz:Landroid/widget/EdgeEffect;

    invoke-virtual {v3, v0, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->Mz:Landroid/widget/EdgeEffect;

    invoke-virtual {v0, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v0

    or-int/lit8 v0, v0, 0x0

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_1
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->I:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v5

    const/high16 v6, 0x42b40000    # 90.0f

    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->rotate(F)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v6

    neg-int v6, v6

    int-to-float v6, v6

    iget v7, p0, Landroid/support/v4/view/ViewPager;->a8:F

    const/high16 v8, 0x3f800000    # 1.0f

    add-float/2addr v7, v8

    neg-float v7, v7

    int-to-float v8, v2

    mul-float/2addr v7, v8

    invoke-virtual {p1, v6, v7}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v6, p0, Landroid/support/v4/view/ViewPager;->I:Landroid/widget/EdgeEffect;

    sub-int/2addr v3, v4

    sub-int/2addr v3, v5

    invoke-virtual {v6, v3, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->I:Landroid/widget/EdgeEffect;

    invoke-virtual {v2, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v2

    or-int/2addr v0, v2

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_2
    :goto_0
    if-eqz v0, :cond_3

    invoke-static {p0}, Landroid/support/v4/view/s;->tp(Landroid/view/View;)V

    :cond_3
    return-void

    :cond_4
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->Mz:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->finish()V

    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->I:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->finish()V

    goto :goto_0
.end method

.method protected drawableStateChanged()V
    .registers 3

    invoke-super {p0}, Landroid/view/ViewGroup;->drawableStateChanged()V

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->aM:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_0
    return-void
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    new-instance v0, Landroid/support/v4/view/ViewPager$LayoutParams;

    invoke-direct {v0}, Landroid/support/v4/view/ViewPager$LayoutParams;-><init>()V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .registers 4

    new-instance v0, Landroid/support/v4/view/ViewPager$LayoutParams;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/support/v4/view/ViewPager$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .registers 3

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Landroid/support/v4/view/o;
    .registers 2

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->u7:Landroid/support/v4/view/o;

    return-object v0
.end method

.method protected getChildDrawingOrder(II)I
    .registers 5

    iget v0, p0, Landroid/support/v4/view/ViewPager;->yO:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    add-int/lit8 v0, p1, -0x1

    sub-int p2, v0, p2

    :cond_0
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->XG:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager$LayoutParams;

    iget v0, v0, Landroid/support/v4/view/ViewPager$LayoutParams;->Zo:I

    return v0
.end method

.method public getCurrentItem()I
    .registers 2

    iget v0, p0, Landroid/support/v4/view/ViewPager;->tp:I

    return v0
.end method

.method public getOffscreenPageLimit()I
    .registers 2

    iget v0, p0, Landroid/support/v4/view/ViewPager;->BT:I

    return v0
.end method

.method public getPageMargin()I
    .registers 2

    iget v0, p0, Landroid/support/v4/view/ViewPager;->XL:I

    return v0
.end method

.method j6(F)F
    .registers 4

    const/high16 v0, 0x3f000000    # 0.5f

    sub-float v0, p1, v0

    const v1, 0x3ef1463b

    mul-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method j6(II)Landroid/support/v4/view/ViewPager$b;
    .registers 5

    new-instance v0, Landroid/support/v4/view/ViewPager$b;

    invoke-direct {v0}, Landroid/support/v4/view/ViewPager$b;-><init>()V

    iput p1, v0, Landroid/support/v4/view/ViewPager$b;->DW:I

    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->u7:Landroid/support/v4/view/o;

    invoke-virtual {v1, p0, p1}, Landroid/support/v4/view/o;->j6(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Landroid/support/v4/view/ViewPager$b;->j6:Ljava/lang/Object;

    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->u7:Landroid/support/v4/view/o;

    invoke-virtual {v1, p1}, Landroid/support/v4/view/o;->DW(I)F

    move-result v1

    iput v1, v0, Landroid/support/v4/view/ViewPager$b;->Hw:F

    if-ltz p2, :cond_0

    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->Zo:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt p2, v1, :cond_1

    :cond_0
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->Zo:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->Zo:Ljava/util/ArrayList;

    invoke-virtual {v1, p2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method j6(Landroid/view/View;)Landroid/support/v4/view/ViewPager$b;
    .registers 4

    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eq v0, p0, :cond_2

    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/view/View;

    if-nez v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_1
    return-object v0

    :cond_1
    check-cast v0, Landroid/view/View;

    move-object p1, v0

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1}, Landroid/support/v4/view/ViewPager;->DW(Landroid/view/View;)Landroid/support/v4/view/ViewPager$b;

    move-result-object v0

    goto :goto_1
.end method

.method j6(Landroid/support/v4/view/ViewPager$e;)Landroid/support/v4/view/ViewPager$e;
    .registers 3

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->OW:Landroid/support/v4/view/ViewPager$e;

    iput-object p1, p0, Landroid/support/v4/view/ViewPager;->OW:Landroid/support/v4/view/ViewPager$e;

    return-object v0
.end method

.method j6()V
    .registers 11

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->u7:Landroid/support/v4/view/o;

    invoke-virtual {v0}, Landroid/support/v4/view/o;->j6()I

    move-result v8

    iput v8, p0, Landroid/support/v4/view/ViewPager;->v5:I

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->Zo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v3, p0, Landroid/support/v4/view/ViewPager;->BT:I

    mul-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, 0x1

    if-ge v0, v3, :cond_0

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->Zo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v0, v8, :cond_0

    move v0, v1

    :goto_0
    iget v6, p0, Landroid/support/v4/view/ViewPager;->tp:I

    move v3, v0

    move v4, v2

    move v5, v2

    :goto_1
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->Zo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v4, v0, :cond_6

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->Zo:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager$b;

    iget-object v7, p0, Landroid/support/v4/view/ViewPager;->u7:Landroid/support/v4/view/o;

    iget-object v9, v0, Landroid/support/v4/view/ViewPager$b;->j6:Ljava/lang/Object;

    invoke-virtual {v7, v9}, Landroid/support/v4/view/o;->j6(Ljava/lang/Object;)I

    move-result v7

    const/4 v9, -0x1

    if-ne v7, v9, :cond_1

    move v0, v3

    :goto_2
    add-int/lit8 v4, v4, 0x1

    move v3, v0

    goto :goto_1

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    const/4 v9, -0x2

    if-ne v7, v9, :cond_4

    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->Zo:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v4, v4, -0x1

    if-nez v5, :cond_2

    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->u7:Landroid/support/v4/view/o;

    invoke-virtual {v3, p0}, Landroid/support/v4/view/o;->DW(Landroid/view/ViewGroup;)V

    move v5, v1

    :cond_2
    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->u7:Landroid/support/v4/view/o;

    iget v7, v0, Landroid/support/v4/view/ViewPager$b;->DW:I

    iget-object v9, v0, Landroid/support/v4/view/ViewPager$b;->j6:Ljava/lang/Object;

    invoke-virtual {v3, p0, v7, v9}, Landroid/support/v4/view/o;->j6(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    iget v3, p0, Landroid/support/v4/view/ViewPager;->tp:I

    iget v0, v0, Landroid/support/v4/view/ViewPager$b;->DW:I

    if-ne v3, v0, :cond_3

    add-int/lit8 v0, v8, -0x1

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v6

    :cond_3
    :goto_3
    move v0, v1

    goto :goto_2

    :cond_4
    iget v9, v0, Landroid/support/v4/view/ViewPager$b;->DW:I

    if-eq v9, v7, :cond_b

    iget v3, p0, Landroid/support/v4/view/ViewPager;->tp:I

    if-ne v9, v3, :cond_5

    move v6, v7

    :cond_5
    iput v7, v0, Landroid/support/v4/view/ViewPager$b;->DW:I

    goto :goto_3

    :cond_6
    if-eqz v5, :cond_7

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->u7:Landroid/support/v4/view/o;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/o;->j6(Landroid/view/ViewGroup;)V

    :cond_7
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->Zo:Ljava/util/ArrayList;

    sget-object v4, Landroid/support/v4/view/ViewPager;->DW:Ljava/util/Comparator;

    invoke-static {v0, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    if-eqz v3, :cond_a

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    move v3, v2

    :goto_4
    if-ge v3, v4, :cond_9

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager$LayoutParams;

    iget-boolean v5, v0, Landroid/support/v4/view/ViewPager$LayoutParams;->j6:Z

    if-nez v5, :cond_8

    const/4 v5, 0x0

    iput v5, v0, Landroid/support/v4/view/ViewPager$LayoutParams;->FH:F

    :cond_8
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_4

    :cond_9
    invoke-virtual {p0, v6, v2, v1}, Landroid/support/v4/view/ViewPager;->j6(IZZ)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    :cond_a
    return-void

    :cond_b
    move v0, v3

    goto :goto_2
.end method

.method protected j6(IFI)V
    .registers 15

    const/4 v10, 0x1

    const/4 v4, 0x0

    iget v0, p0, Landroid/support/v4/view/ViewPager;->sy:I

    if-lez v0, :cond_5

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v6

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v7

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v8

    move v5, v4

    :goto_0
    if-ge v5, v8, :cond_5

    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager$LayoutParams;

    iget-boolean v3, v0, Landroid/support/v4/view/ViewPager$LayoutParams;->j6:Z

    if-nez v3, :cond_1

    move v3, v1

    :cond_0
    :goto_1
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    move v1, v3

    goto :goto_0

    :cond_1
    iget v0, v0, Landroid/support/v4/view/ViewPager$LayoutParams;->DW:I

    and-int/lit8 v0, v0, 0x7

    if-eq v0, v10, :cond_4

    const/4 v3, 0x3

    if-eq v0, v3, :cond_3

    const/4 v3, 0x5

    if-eq v0, v3, :cond_2

    move v0, v1

    move v3, v1

    :goto_2
    add-int/2addr v0, v6

    invoke-virtual {v9}, Landroid/view/View;->getLeft()I

    move-result v1

    sub-int/2addr v0, v1

    if-eqz v0, :cond_0

    invoke-virtual {v9, v0}, Landroid/view/View;->offsetLeftAndRight(I)V

    goto :goto_1

    :cond_2
    sub-int v0, v7, v2

    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    sub-int/2addr v0, v3

    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v2, v3

    move v3, v1

    goto :goto_2

    :cond_3
    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v0

    add-int v3, v0, v1

    move v0, v1

    goto :goto_2

    :cond_4
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    sub-int v0, v7, v0

    div-int/lit8 v0, v0, 0x2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    move v3, v1

    goto :goto_2

    :cond_5
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v4/view/ViewPager;->DW(IFI)V

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->XX:Landroid/support/v4/view/ViewPager$f;

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    move v1, v4

    :goto_3
    if-ge v1, v3, :cond_7

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager$LayoutParams;

    iget-boolean v0, v0, Landroid/support/v4/view/ViewPager$LayoutParams;->j6:Z

    if-eqz v0, :cond_6

    :goto_4
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    :cond_6
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v0

    sub-int/2addr v0, v2

    int-to-float v0, v0

    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->getClientWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v0, v5

    iget-object v5, p0, Landroid/support/v4/view/ViewPager;->XX:Landroid/support/v4/view/ViewPager$f;

    invoke-interface {v5, v4, v0}, Landroid/support/v4/view/ViewPager$f;->j6(Landroid/view/View;F)V

    goto :goto_4

    :cond_7
    iput-boolean v10, p0, Landroid/support/v4/view/ViewPager;->Qq:Z

    return-void
.end method

.method j6(III)V
    .registers 14

    const/4 v5, 0x1

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, v6}, Landroid/support/v4/view/ViewPager;->setScrollingCacheEnabled(Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->J8:Landroid/widget/Scroller;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v5

    :goto_1
    if-eqz v0, :cond_3

    iget-boolean v0, p0, Landroid/support/v4/view/ViewPager;->Ws:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->J8:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    :goto_2
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->J8:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->abortAnimation()V

    invoke-direct {p0, v6}, Landroid/support/v4/view/ViewPager;->setScrollingCacheEnabled(Z)V

    move v1, v0

    :goto_3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v2

    sub-int v3, p1, v1

    sub-int v4, p2, v2

    if-nez v3, :cond_4

    if-nez v4, :cond_4

    invoke-direct {p0, v6}, Landroid/support/v4/view/ViewPager;->j6(Z)V

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->v5()V

    invoke-virtual {p0, v6}, Landroid/support/v4/view/ViewPager;->setScrollState(I)V

    goto :goto_0

    :cond_1
    move v0, v6

    goto :goto_1

    :cond_2
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->J8:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getStartX()I

    move-result v0

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v1

    goto :goto_3

    :cond_4
    invoke-direct {p0, v5}, Landroid/support/v4/view/ViewPager;->setScrollingCacheEnabled(Z)V

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/support/v4/view/ViewPager;->setScrollState(I)V

    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->getClientWidth()I

    move-result v0

    div-int/lit8 v5, v0, 0x2

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v7

    int-to-float v7, v7

    int-to-float v0, v0

    mul-float/2addr v7, v9

    div-float/2addr v7, v0

    invoke-static {v9, v7}, Ljava/lang/Math;->min(FF)F

    move-result v7

    int-to-float v5, v5

    invoke-virtual {p0, v7}, Landroid/support/v4/view/ViewPager;->j6(F)F

    move-result v7

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result v8

    if-lez v8, :cond_5

    mul-float v0, v7, v5

    add-float/2addr v0, v5

    int-to-float v5, v8

    div-float/2addr v0, v5

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v5, 0x447a0000    # 1000.0f

    mul-float/2addr v0, v5

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    :goto_4
    const/16 v5, 0x258

    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    iput-boolean v6, p0, Landroid/support/v4/view/ViewPager;->Ws:Z

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->J8:Landroid/widget/Scroller;

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    invoke-static {p0}, Landroid/support/v4/view/s;->tp(Landroid/view/View;)V

    goto/16 :goto_0

    :cond_5
    iget-object v5, p0, Landroid/support/v4/view/ViewPager;->u7:Landroid/support/v4/view/o;

    iget v7, p0, Landroid/support/v4/view/ViewPager;->tp:I

    invoke-virtual {v5, v7}, Landroid/support/v4/view/o;->DW(I)F

    move-result v5

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v0, v5

    iget v5, p0, Landroid/support/v4/view/ViewPager;->XL:I

    int-to-float v5, v5

    add-float/2addr v0, v5

    div-float v0, v7, v0

    add-float/2addr v0, v9

    const/high16 v5, 0x42c80000    # 100.0f

    mul-float/2addr v0, v5

    float-to-int v0, v0

    goto :goto_4
.end method

.method public j6(IZ)V
    .registers 4

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/view/ViewPager;->gW:Z

    invoke-virtual {p0, p1, p2, v0}, Landroid/support/v4/view/ViewPager;->j6(IZZ)V

    return-void
.end method

.method j6(IZZ)V
    .registers 5

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/support/v4/view/ViewPager;->j6(IZZI)V

    return-void
.end method

.method j6(IZZI)V
    .registers 10

    const/4 v3, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->u7:Landroid/support/v4/view/o;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v4/view/o;->j6()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    invoke-direct {p0, v1}, Landroid/support/v4/view/ViewPager;->setScrollingCacheEnabled(Z)V

    :goto_0
    return-void

    :cond_1
    if-nez p3, :cond_2

    iget v0, p0, Landroid/support/v4/view/ViewPager;->tp:I

    if-ne v0, p1, :cond_2

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->Zo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0, v1}, Landroid/support/v4/view/ViewPager;->setScrollingCacheEnabled(Z)V

    goto :goto_0

    :cond_2
    if-gez p1, :cond_5

    move p1, v1

    :cond_3
    :goto_1
    iget v0, p0, Landroid/support/v4/view/ViewPager;->BT:I

    iget v2, p0, Landroid/support/v4/view/ViewPager;->tp:I

    add-int v4, v2, v0

    if-gt p1, v4, :cond_4

    sub-int v0, v2, v0

    if-ge p1, v0, :cond_6

    :cond_4
    move v2, v1

    :goto_2
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->Zo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_6

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->Zo:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager$b;

    iput-boolean v3, v0, Landroid/support/v4/view/ViewPager$b;->FH:Z

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    :cond_5
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->u7:Landroid/support/v4/view/o;

    invoke-virtual {v0}, Landroid/support/v4/view/o;->j6()I

    move-result v0

    if-lt p1, v0, :cond_3

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->u7:Landroid/support/v4/view/o;

    invoke-virtual {v0}, Landroid/support/v4/view/o;->j6()I

    move-result v0

    add-int/lit8 p1, v0, -0x1

    goto :goto_1

    :cond_6
    iget v0, p0, Landroid/support/v4/view/ViewPager;->tp:I

    if-eq v0, p1, :cond_7

    move v1, v3

    :cond_7
    iget-boolean v0, p0, Landroid/support/v4/view/ViewPager;->ca:Z

    if-eqz v0, :cond_9

    iput p1, p0, Landroid/support/v4/view/ViewPager;->tp:I

    if-eqz v1, :cond_8

    invoke-direct {p0, p1}, Landroid/support/v4/view/ViewPager;->Hw(I)V

    :cond_8
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    goto :goto_0

    :cond_9
    invoke-virtual {p0, p1}, Landroid/support/v4/view/ViewPager;->FH(I)V

    invoke-direct {p0, p1, p2, p4, v1}, Landroid/support/v4/view/ViewPager;->j6(IZIZ)V

    goto :goto_0
.end method

.method public j6(Landroid/support/v4/view/ViewPager$d;)V
    .registers 3

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->br:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->br:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->br:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public j6(I)Z
    .registers 10

    const/16 v7, 0x42

    const/16 v6, 0x11

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->findFocus()Landroid/view/View;

    move-result-object v2

    const/4 v1, 0x0

    if-ne v2, p0, :cond_1

    move-object v0, v1

    :goto_0
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v1

    invoke-virtual {v1, p0, v0, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_9

    if-eq v1, v0, :cond_9

    if-ne p1, v6, :cond_7

    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->gn:Landroid/graphics/Rect;

    invoke-direct {p0, v2, v1}, Landroid/support/v4/view/ViewPager;->j6(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->gn:Landroid/graphics/Rect;

    invoke-direct {p0, v3, v0}, Landroid/support/v4/view/ViewPager;->j6(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->left:I

    if-eqz v0, :cond_6

    if-lt v2, v3, :cond_6

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->FH()Z

    move-result v0

    :goto_1
    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->playSoundEffect(I)V

    :cond_0
    return v0

    :cond_1
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    :goto_2
    instance-of v5, v0, Landroid/view/ViewGroup;

    if-eqz v5, :cond_3

    if-ne v0, p0, :cond_2

    move v0, v4

    :goto_3
    if-nez v0, :cond_5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    :goto_4
    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_4

    const-string v2, " => "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_4

    :cond_2
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_2

    :cond_3
    move v0, v3

    goto :goto_3

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "arrowScroll tried to find focus based on non-child current focused view "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "ViewPager"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    goto/16 :goto_0

    :cond_5
    move-object v0, v2

    goto/16 :goto_0

    :cond_6
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    move-result v0

    goto :goto_1

    :cond_7
    if-ne p1, v7, :cond_d

    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->gn:Landroid/graphics/Rect;

    invoke-direct {p0, v2, v1}, Landroid/support/v4/view/ViewPager;->j6(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->gn:Landroid/graphics/Rect;

    invoke-direct {p0, v3, v0}, Landroid/support/v4/view/ViewPager;->j6(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->left:I

    if-eqz v0, :cond_8

    if-gt v2, v3, :cond_8

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->Hw()Z

    move-result v0

    goto/16 :goto_1

    :cond_8
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    move-result v0

    goto/16 :goto_1

    :cond_9
    if-eq p1, v6, :cond_a

    if-ne p1, v4, :cond_b

    :cond_a
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->FH()Z

    move-result v0

    goto/16 :goto_1

    :cond_b
    if-eq p1, v7, :cond_c

    const/4 v0, 0x2

    if-ne p1, v0, :cond_d

    :cond_c
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->Hw()Z

    move-result v0

    goto/16 :goto_1

    :cond_d
    move v0, v3

    goto/16 :goto_1
.end method

.method public j6(Landroid/view/KeyEvent;)Z
    .registers 6

    const/4 v3, 0x1

    const/4 v2, 0x2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x15

    if-eq v0, v1, :cond_5

    const/16 v1, 0x16

    if-eq v0, v1, :cond_3

    const/16 v1, 0x3d

    if-eq v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, v2}, Landroid/support/v4/view/ViewPager;->j6(I)Z

    move-result v0

    goto :goto_0

    :cond_2
    invoke-virtual {p1, v3}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v3}, Landroid/support/v4/view/ViewPager;->j6(I)Z

    move-result v0

    goto :goto_0

    :cond_3
    invoke-virtual {p1, v2}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->Hw()Z

    move-result v0

    goto :goto_0

    :cond_4
    const/16 v0, 0x42

    invoke-virtual {p0, v0}, Landroid/support/v4/view/ViewPager;->j6(I)Z

    move-result v0

    goto :goto_0

    :cond_5
    invoke-virtual {p1, v2}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->FH()Z

    move-result v0

    goto :goto_0

    :cond_6
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Landroid/support/v4/view/ViewPager;->j6(I)Z

    move-result v0

    goto :goto_0
.end method

.method protected j6(Landroid/view/View;ZIII)Z
    .registers 16

    const/4 v2, 0x1

    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    move-object v6, p1

    check-cast v6, Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v8

    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v9

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v7, v0

    :goto_0
    if-ltz v7, :cond_2

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    add-int v0, p4, v8

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v3

    if-lt v0, v3, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v3

    if-ge v0, v3, :cond_1

    add-int v3, p5, v9

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v4

    if-lt v3, v4, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v4

    if-ge v3, v4, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v4

    sub-int v4, v0, v4

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v0

    sub-int v5, v3, v0

    move-object v0, p0

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/view/ViewPager;->j6(Landroid/view/View;ZIII)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_1
    return v2

    :cond_1
    add-int/lit8 v0, v7, -0x1

    move v7, v0

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_3

    neg-int v0, p3

    invoke-virtual {p1, v0}, Landroid/view/View;->canScrollHorizontally(I)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_3
    const/4 v2, 0x0

    goto :goto_1
.end method

.method protected onAttachedToWindow()V
    .registers 2

    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/view/ViewPager;->ca:Z

    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->jJ:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->J8:Landroid/widget/Scroller;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->J8:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    :cond_0
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 19

    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    move-object/from16 v0, p0

    iget v1, v0, Landroid/support/v4/view/ViewPager;->XL:I

    if-lez v1, :cond_2

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v4/view/ViewPager;->aM:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v4/view/ViewPager;->Zo:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v4/view/ViewPager;->u7:Landroid/support/v4/view/o;

    if-eqz v1, :cond_2

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v8

    move-object/from16 v0, p0

    iget v1, v0, Landroid/support/v4/view/ViewPager;->XL:I

    int-to-float v1, v1

    int-to-float v9, v8

    div-float v10, v1, v9

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v4/view/ViewPager;->Zo:Ljava/util/ArrayList;

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/view/ViewPager$b;

    iget v6, v1, Landroid/support/v4/view/ViewPager$b;->v5:F

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/view/ViewPager;->Zo:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v11

    iget v4, v1, Landroid/support/v4/view/ViewPager$b;->DW:I

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/view/ViewPager;->Zo:Ljava/util/ArrayList;

    add-int/lit8 v5, v11, -0x1

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/view/ViewPager$b;

    iget v12, v2, Landroid/support/v4/view/ViewPager$b;->DW:I

    move v2, v3

    move v5, v4

    :goto_0
    if-ge v5, v12, :cond_2

    :goto_1
    iget v3, v1, Landroid/support/v4/view/ViewPager$b;->DW:I

    if-le v5, v3, :cond_0

    if-ge v2, v11, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v4/view/ViewPager;->Zo:Ljava/util/ArrayList;

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/view/ViewPager$b;

    goto :goto_1

    :cond_0
    iget v3, v1, Landroid/support/v4/view/ViewPager$b;->DW:I

    if-ne v5, v3, :cond_3

    iget v4, v1, Landroid/support/v4/view/ViewPager$b;->v5:F

    iget v6, v1, Landroid/support/v4/view/ViewPager$b;->Hw:F

    add-float v3, v4, v6

    mul-float/2addr v3, v9

    add-float/2addr v4, v6

    add-float/2addr v4, v10

    :goto_2
    move-object/from16 v0, p0

    iget v6, v0, Landroid/support/v4/view/ViewPager;->XL:I

    int-to-float v6, v6

    add-float/2addr v6, v3

    int-to-float v13, v7

    cmpl-float v6, v6, v13

    if-lez v6, :cond_1

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/support/v4/view/ViewPager;->aM:Landroid/graphics/drawable/Drawable;

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v13

    move-object/from16 v0, p0

    iget v14, v0, Landroid/support/v4/view/ViewPager;->j3:I

    move-object/from16 v0, p0

    iget v15, v0, Landroid/support/v4/view/ViewPager;->XL:I

    int-to-float v15, v15

    add-float/2addr v15, v3

    invoke-static {v15}, Ljava/lang/Math;->round(F)I

    move-result v15

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/view/ViewPager;->Mr:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v6, v13, v14, v15, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/support/v4/view/ViewPager;->aM:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_1
    add-int v6, v7, v8

    int-to-float v6, v6

    cmpl-float v3, v3, v6

    if-lez v3, :cond_4

    :cond_2
    return-void

    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v4/view/ViewPager;->u7:Landroid/support/v4/view/o;

    invoke-virtual {v3, v5}, Landroid/support/v4/view/o;->DW(I)F

    move-result v4

    add-float v3, v6, v4

    mul-float/2addr v3, v9

    add-float/2addr v4, v10

    add-float/2addr v4, v6

    goto :goto_2

    :cond_4
    add-int/lit8 v3, v5, 0x1

    move v5, v3

    move v6, v4

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 15

    const/4 v12, 0x0

    const/4 v3, 0x2

    const/4 v2, 0x0

    const/4 v6, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    if-ne v0, v6, :cond_2

    :cond_0
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->u7()Z

    :cond_1
    :goto_0
    return v2

    :cond_2
    if-eqz v0, :cond_4

    iget-boolean v1, p0, Landroid/support/v4/view/ViewPager;->vy:Z

    if-eqz v1, :cond_3

    move v2, v6

    goto :goto_0

    :cond_3
    iget-boolean v1, p0, Landroid/support/v4/view/ViewPager;->P8:Z

    if-nez v1, :cond_1

    :cond_4
    if-eqz v0, :cond_d

    if-eq v0, v3, :cond_8

    const/4 v1, 0x6

    if-eq v0, v1, :cond_7

    :cond_5
    :goto_1
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->dx:Landroid/view/VelocityTracker;

    if-nez v0, :cond_6

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->dx:Landroid/view/VelocityTracker;

    :cond_6
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->dx:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    iget-boolean v2, p0, Landroid/support/v4/view/ViewPager;->vy:Z

    goto :goto_0

    :cond_7
    invoke-direct {p0, p1}, Landroid/support/v4/view/ViewPager;->j6(Landroid/view/MotionEvent;)V

    goto :goto_1

    :cond_8
    iget v0, p0, Landroid/support/v4/view/ViewPager;->cb:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_5

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v7

    iget v1, p0, Landroid/support/v4/view/ViewPager;->KD:F

    sub-float v8, v7, v1

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v9

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v10

    iget v0, p0, Landroid/support/v4/view/ViewPager;->sh:F

    sub-float v0, v10, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v11

    cmpl-float v0, v8, v12

    if-eqz v0, :cond_9

    iget v0, p0, Landroid/support/v4/view/ViewPager;->KD:F

    invoke-direct {p0, v0, v8}, Landroid/support/v4/view/ViewPager;->j6(FF)Z

    move-result v0

    if-nez v0, :cond_9

    float-to-int v3, v8

    float-to-int v4, v7

    float-to-int v5, v10

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/view/ViewPager;->j6(Landroid/view/View;ZIII)Z

    move-result v0

    if-eqz v0, :cond_9

    iput v7, p0, Landroid/support/v4/view/ViewPager;->KD:F

    iput v10, p0, Landroid/support/v4/view/ViewPager;->ro:F

    iput-boolean v6, p0, Landroid/support/v4/view/ViewPager;->P8:Z

    goto :goto_0

    :cond_9
    iget v0, p0, Landroid/support/v4/view/ViewPager;->SI:I

    int-to-float v0, v0

    cmpl-float v0, v9, v0

    if-lez v0, :cond_c

    const/high16 v0, 0x3f000000    # 0.5f

    mul-float/2addr v0, v9

    cmpl-float v0, v0, v11

    if-lez v0, :cond_c

    iput-boolean v6, p0, Landroid/support/v4/view/ViewPager;->vy:Z

    invoke-direct {p0, v6}, Landroid/support/v4/view/ViewPager;->FH(Z)V

    invoke-virtual {p0, v6}, Landroid/support/v4/view/ViewPager;->setScrollState(I)V

    cmpl-float v0, v8, v12

    if-lez v0, :cond_b

    iget v0, p0, Landroid/support/v4/view/ViewPager;->cn:F

    iget v1, p0, Landroid/support/v4/view/ViewPager;->SI:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    :goto_2
    iput v0, p0, Landroid/support/v4/view/ViewPager;->KD:F

    iput v10, p0, Landroid/support/v4/view/ViewPager;->ro:F

    invoke-direct {p0, v6}, Landroid/support/v4/view/ViewPager;->setScrollingCacheEnabled(Z)V

    :cond_a
    :goto_3
    iget-boolean v0, p0, Landroid/support/v4/view/ViewPager;->vy:Z

    if-eqz v0, :cond_5

    invoke-direct {p0, v7}, Landroid/support/v4/view/ViewPager;->DW(F)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {p0}, Landroid/support/v4/view/s;->tp(Landroid/view/View;)V

    goto/16 :goto_1

    :cond_b
    iget v0, p0, Landroid/support/v4/view/ViewPager;->cn:F

    iget v1, p0, Landroid/support/v4/view/ViewPager;->SI:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    goto :goto_2

    :cond_c
    iget v0, p0, Landroid/support/v4/view/ViewPager;->SI:I

    int-to-float v0, v0

    cmpl-float v0, v11, v0

    if-lez v0, :cond_a

    iput-boolean v6, p0, Landroid/support/v4/view/ViewPager;->P8:Z

    goto :goto_3

    :cond_d
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Landroid/support/v4/view/ViewPager;->cn:F

    iput v0, p0, Landroid/support/v4/view/ViewPager;->KD:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Landroid/support/v4/view/ViewPager;->sh:F

    iput v0, p0, Landroid/support/v4/view/ViewPager;->ro:F

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Landroid/support/v4/view/ViewPager;->cb:I

    iput-boolean v2, p0, Landroid/support/v4/view/ViewPager;->P8:Z

    iput-boolean v6, p0, Landroid/support/v4/view/ViewPager;->Ws:Z

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->J8:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    iget v0, p0, Landroid/support/v4/view/ViewPager;->wc:I

    if-ne v0, v3, :cond_e

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->J8:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getFinalX()I

    move-result v0

    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->J8:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrX()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Landroid/support/v4/view/ViewPager;->vJ:I

    if-le v0, v1, :cond_e

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->J8:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    iput-boolean v2, p0, Landroid/support/v4/view/ViewPager;->gW:Z

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->v5()V

    iput-boolean v6, p0, Landroid/support/v4/view/ViewPager;->vy:Z

    invoke-direct {p0, v6}, Landroid/support/v4/view/ViewPager;->FH(Z)V

    invoke-virtual {p0, v6}, Landroid/support/v4/view/ViewPager;->setScrollState(I)V

    goto/16 :goto_1

    :cond_e
    invoke-direct {p0, v2}, Landroid/support/v4/view/ViewPager;->j6(Z)V

    iput-boolean v2, p0, Landroid/support/v4/view/ViewPager;->vy:Z

    goto/16 :goto_1
.end method

.method protected onLayout(ZIIII)V
    .registers 23

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v11

    sub-int v12, p4, p2

    sub-int v13, p5, p3

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v14

    const/4 v8, 0x0

    const/4 v1, 0x0

    move v10, v1

    :goto_0
    if-ge v10, v11, :cond_6

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v15

    invoke-virtual {v15}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v6, 0x8

    if-eq v1, v6, :cond_b

    invoke-virtual {v15}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/v4/view/ViewPager$LayoutParams;

    iget-boolean v6, v1, Landroid/support/v4/view/ViewPager$LayoutParams;->j6:Z

    if-eqz v6, :cond_b

    iget v1, v1, Landroid/support/v4/view/ViewPager$LayoutParams;->DW:I

    and-int/lit8 v6, v1, 0x7

    and-int/lit8 v16, v1, 0x70

    const/4 v1, 0x1

    if-eq v6, v1, :cond_2

    const/4 v1, 0x3

    if-eq v6, v1, :cond_1

    const/4 v1, 0x5

    if-eq v6, v1, :cond_0

    move v6, v3

    move v7, v5

    move v9, v5

    :goto_1
    const/16 v1, 0x10

    move/from16 v0, v16

    if-eq v0, v1, :cond_5

    const/16 v1, 0x30

    move/from16 v0, v16

    if-eq v0, v1, :cond_4

    const/16 v1, 0x50

    move/from16 v0, v16

    if-eq v0, v1, :cond_3

    move v1, v2

    move v3, v4

    move v5, v4

    :goto_2
    add-int v2, v9, v14

    invoke-virtual {v15}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v4, v2

    invoke-virtual {v15}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    add-int/2addr v9, v3

    invoke-virtual {v15, v2, v3, v4, v9}, Landroid/view/View;->layout(IIII)V

    add-int/lit8 v8, v8, 0x1

    move v3, v6

    move v4, v5

    move v2, v1

    :goto_3
    add-int/lit8 v1, v10, 0x1

    move v10, v1

    move v5, v7

    goto :goto_0

    :cond_0
    sub-int v1, v12, v3

    invoke-virtual {v15}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    sub-int/2addr v1, v6

    invoke-virtual {v15}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    add-int/2addr v3, v6

    move v6, v3

    move v7, v5

    move v9, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v15}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    add-int v7, v1, v5

    move v6, v3

    move v9, v5

    goto :goto_1

    :cond_2
    invoke-virtual {v15}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    sub-int v1, v12, v1

    div-int/lit8 v1, v1, 0x2

    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    move v6, v3

    move v7, v5

    move v9, v1

    goto :goto_1

    :cond_3
    sub-int v1, v13, v2

    invoke-virtual {v15}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    sub-int v3, v1, v3

    invoke-virtual {v15}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v1, v2

    move v5, v4

    goto :goto_2

    :cond_4
    invoke-virtual {v15}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    add-int v5, v1, v4

    move v1, v2

    move v3, v4

    goto :goto_2

    :cond_5
    invoke-virtual {v15}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    sub-int v1, v13, v1

    div-int/lit8 v1, v1, 0x2

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    move v1, v2

    move v5, v4

    goto :goto_2

    :cond_6
    const/4 v1, 0x0

    move v6, v1

    :goto_4
    if-ge v6, v11, :cond_9

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v9, 0x8

    if-eq v1, v9, :cond_8

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/v4/view/ViewPager$LayoutParams;

    iget-boolean v9, v1, Landroid/support/v4/view/ViewPager$LayoutParams;->j6:Z

    if-nez v9, :cond_8

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/support/v4/view/ViewPager;->DW(Landroid/view/View;)Landroid/support/v4/view/ViewPager$b;

    move-result-object v9

    if-eqz v9, :cond_8

    sub-int v10, v12, v5

    sub-int/2addr v10, v3

    int-to-float v10, v10

    iget v9, v9, Landroid/support/v4/view/ViewPager$b;->v5:F

    mul-float/2addr v9, v10

    float-to-int v9, v9

    add-int/2addr v9, v5

    iget-boolean v14, v1, Landroid/support/v4/view/ViewPager$LayoutParams;->Hw:Z

    if-eqz v14, :cond_7

    const/4 v14, 0x0

    iput-boolean v14, v1, Landroid/support/v4/view/ViewPager$LayoutParams;->Hw:Z

    iget v1, v1, Landroid/support/v4/view/ViewPager$LayoutParams;->FH:F

    mul-float/2addr v1, v10

    float-to-int v1, v1

    const/high16 v10, 0x40000000    # 2.0f

    invoke-static {v1, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    sub-int v10, v13, v4

    sub-int/2addr v10, v2

    const/high16 v14, 0x40000000    # 2.0f

    invoke-static {v10, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    invoke-virtual {v7, v1, v10}, Landroid/view/View;->measure(II)V

    :cond_7
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    add-int/2addr v1, v9

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    add-int/2addr v10, v4

    invoke-virtual {v7, v9, v4, v1, v10}, Landroid/view/View;->layout(IIII)V

    :cond_8
    add-int/lit8 v1, v6, 0x1

    move v6, v1

    goto :goto_4

    :cond_9
    move-object/from16 v0, p0

    iput v4, v0, Landroid/support/v4/view/ViewPager;->j3:I

    sub-int v1, v13, v2

    move-object/from16 v0, p0

    iput v1, v0, Landroid/support/v4/view/ViewPager;->Mr:I

    move-object/from16 v0, p0

    iput v8, v0, Landroid/support/v4/view/ViewPager;->sy:I

    move-object/from16 v0, p0

    iget-boolean v1, v0, Landroid/support/v4/view/ViewPager;->ca:Z

    if-eqz v1, :cond_a

    move-object/from16 v0, p0

    iget v1, v0, Landroid/support/v4/view/ViewPager;->tp:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/support/v4/view/ViewPager;->j6(IZIZ)V

    :cond_a
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Landroid/support/v4/view/ViewPager;->ca:Z

    return-void

    :cond_b
    move v7, v5

    goto/16 :goto_3
.end method

.method protected onMeasure(II)V
    .registers 18

    const/4 v9, 0x0

    const/4 v1, 0x0

    move/from16 v0, p1

    invoke-static {v1, v0}, Landroid/view/ViewGroup;->getDefaultSize(II)I

    move-result v1

    const/4 v2, 0x0

    move/from16 v0, p2

    invoke-static {v2, v0}, Landroid/view/ViewGroup;->getDefaultSize(II)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v1

    div-int/lit8 v2, v1, 0xa

    iget v3, p0, Landroid/support/v4/view/ViewPager;->ei:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, p0, Landroid/support/v4/view/ViewPager;->nw:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v5

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v6

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v13

    sub-int/2addr v4, v5

    sub-int v8, v4, v6

    sub-int/2addr v1, v2

    sub-int v5, v1, v3

    const/4 v1, 0x0

    move v12, v1

    :goto_0
    const/4 v2, 0x1

    const/high16 v7, 0x40000000    # 2.0f

    if-ge v12, v13, :cond_b

    invoke-virtual {p0, v12}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    invoke-virtual {v14}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v3, 0x8

    if-eq v1, v3, :cond_2

    invoke-virtual {v14}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/v4/view/ViewPager$LayoutParams;

    if-eqz v1, :cond_2

    iget-boolean v3, v1, Landroid/support/v4/view/ViewPager$LayoutParams;->j6:Z

    if-eqz v3, :cond_2

    iget v3, v1, Landroid/support/v4/view/ViewPager$LayoutParams;->DW:I

    and-int/lit8 v4, v3, 0x7

    and-int/lit8 v3, v3, 0x70

    const/16 v6, 0x30

    if-eq v3, v6, :cond_0

    const/16 v6, 0x50

    if-ne v3, v6, :cond_3

    :cond_0
    const/4 v3, 0x1

    move v11, v3

    :goto_1
    const/4 v3, 0x3

    if-eq v4, v3, :cond_f

    const/4 v3, 0x5

    if-ne v4, v3, :cond_4

    move v10, v2

    :goto_2
    const/high16 v2, -0x80000000

    if-eqz v11, :cond_5

    const/high16 v2, 0x40000000    # 2.0f

    :cond_1
    const/high16 v3, -0x80000000

    :goto_3
    iget v4, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v6, -0x2

    if-eq v4, v6, :cond_7

    const/4 v2, -0x1

    if-eq v4, v2, :cond_6

    move v2, v4

    :goto_4
    const/high16 v4, 0x40000000    # 2.0f

    move v6, v2

    :goto_5
    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v2, -0x2

    if-eq v1, v2, :cond_9

    const/4 v2, -0x1

    if-eq v1, v2, :cond_8

    move v3, v7

    :goto_6
    invoke-static {v6, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {v14, v2, v1}, Landroid/view/View;->measure(II)V

    if-eqz v11, :cond_a

    invoke-virtual {v14}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    sub-int/2addr v8, v1

    :cond_2
    :goto_7
    add-int/lit8 v1, v12, 0x1

    move v12, v1

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    move v11, v3

    goto :goto_1

    :cond_4
    const/4 v2, 0x0

    move v10, v2

    goto :goto_2

    :cond_5
    if-eqz v10, :cond_1

    const/high16 v3, 0x40000000    # 2.0f

    goto :goto_3

    :cond_6
    move v2, v5

    goto :goto_4

    :cond_7
    move v4, v2

    move v6, v5

    goto :goto_5

    :cond_8
    move v3, v7

    move v1, v8

    goto :goto_6

    :cond_9
    move v1, v8

    goto :goto_6

    :cond_a
    if-eqz v10, :cond_2

    invoke-virtual {v14}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    sub-int/2addr v5, v1

    goto :goto_7

    :cond_b
    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v5, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    iput v1, p0, Landroid/support/v4/view/ViewPager;->lg:I

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v8, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    iput v1, p0, Landroid/support/v4/view/ViewPager;->rN:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/support/v4/view/ViewPager;->er:Z

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->v5()V

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/support/v4/view/ViewPager;->er:Z

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    move v2, v9

    :goto_8
    if-ge v2, v3, :cond_e

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v6, 0x8

    if-eq v1, v6, :cond_d

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/v4/view/ViewPager$LayoutParams;

    if-eqz v1, :cond_c

    iget-boolean v6, v1, Landroid/support/v4/view/ViewPager$LayoutParams;->j6:Z

    if-nez v6, :cond_d

    :cond_c
    int-to-float v6, v5

    iget v1, v1, Landroid/support/v4/view/ViewPager$LayoutParams;->FH:F

    mul-float/2addr v1, v6

    float-to-int v1, v1

    const/high16 v6, 0x40000000    # 2.0f

    invoke-static {v1, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    iget v6, p0, Landroid/support/v4/view/ViewPager;->rN:I

    invoke-virtual {v4, v1, v6}, Landroid/view/View;->measure(II)V

    :cond_d
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_8

    :cond_e
    return-void

    :cond_f
    move v10, v2

    goto/16 :goto_2
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .registers 11

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v3, -0x1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    and-int/lit8 v4, p1, 0x2

    if-eqz v4, :cond_0

    move v4, v0

    move v5, v1

    :goto_0
    if-eq v5, v2, :cond_2

    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {p0, v3}, Landroid/support/v4/view/ViewPager;->DW(Landroid/view/View;)Landroid/support/v4/view/ViewPager$b;

    move-result-object v6

    if-eqz v6, :cond_1

    iget v6, v6, Landroid/support/v4/view/ViewPager$b;->DW:I

    iget v7, p0, Landroid/support/v4/view/ViewPager;->tp:I

    if-ne v6, v7, :cond_1

    invoke-virtual {v3, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v3

    if-eqz v3, :cond_1

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v5, v2, -0x1

    move v2, v3

    move v4, v3

    goto :goto_0

    :cond_1
    add-int v3, v5, v4

    move v5, v3

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 5

    instance-of v0, p1, Landroid/support/v4/view/ViewPager$SavedState;

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    :goto_0
    return-void

    :cond_0
    check-cast p1, Landroid/support/v4/view/ViewPager$SavedState;

    invoke-virtual {p1}, Landroid/support/v4/view/AbsSavedState;->j6()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->u7:Landroid/support/v4/view/o;

    if-eqz v0, :cond_1

    iget-object v1, p1, Landroid/support/v4/view/ViewPager$SavedState;->DW:Landroid/os/Parcelable;

    iget-object v2, p1, Landroid/support/v4/view/ViewPager$SavedState;->FH:Ljava/lang/ClassLoader;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/view/o;->j6(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V

    iget v0, p1, Landroid/support/v4/view/ViewPager$SavedState;->j6:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Landroid/support/v4/view/ViewPager;->j6(IZZ)V

    goto :goto_0

    :cond_1
    iget v0, p1, Landroid/support/v4/view/ViewPager$SavedState;->j6:I

    iput v0, p0, Landroid/support/v4/view/ViewPager;->EQ:I

    iget-object v0, p1, Landroid/support/v4/view/ViewPager$SavedState;->DW:Landroid/os/Parcelable;

    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->we:Landroid/os/Parcelable;

    iget-object v0, p1, Landroid/support/v4/view/ViewPager$SavedState;->FH:Ljava/lang/ClassLoader;

    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->J0:Ljava/lang/ClassLoader;

    goto :goto_0
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .registers 3

    new-instance v0, Landroid/support/v4/view/ViewPager$SavedState;

    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/view/ViewPager$SavedState;-><init>(Landroid/os/Parcelable;)V

    iget v1, p0, Landroid/support/v4/view/ViewPager;->tp:I

    iput v1, v0, Landroid/support/v4/view/ViewPager$SavedState;->j6:I

    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->u7:Landroid/support/v4/view/o;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/support/v4/view/o;->FH()Landroid/os/Parcelable;

    move-result-object v1

    iput-object v1, v0, Landroid/support/v4/view/ViewPager$SavedState;->DW:Landroid/os/Parcelable;

    :cond_0
    return-object v0
.end method

.method protected onSizeChanged(IIII)V
    .registers 6

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    if-eq p1, p3, :cond_0

    iget v0, p0, Landroid/support/v4/view/ViewPager;->XL:I

    invoke-direct {p0, p1, p3, v0, v0}, Landroid/support/v4/view/ViewPager;->j6(IIII)V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 9

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-boolean v0, p0, Landroid/support/v4/view/ViewPager;->g3:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->u7:Landroid/support/v4/view/o;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/support/v4/view/o;->j6()I

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->dx:Landroid/view/VelocityTracker;

    if-nez v0, :cond_4

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->dx:Landroid/view/VelocityTracker;

    :cond_4
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->dx:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    if-eqz v0, :cond_f

    if-eq v0, v1, :cond_e

    const/4 v3, 0x2

    if-eq v0, v3, :cond_a

    const/4 v3, 0x3

    if-eq v0, v3, :cond_9

    const/4 v3, 0x5

    if-eq v0, v3, :cond_8

    const/4 v3, 0x6

    if-eq v0, v3, :cond_7

    :cond_5
    :goto_1
    if-eqz v2, :cond_6

    invoke-static {p0}, Landroid/support/v4/view/s;->tp(Landroid/view/View;)V

    :cond_6
    move v0, v1

    goto :goto_0

    :cond_7
    invoke-direct {p0, p1}, Landroid/support/v4/view/ViewPager;->j6(Landroid/view/MotionEvent;)V

    iget v0, p0, Landroid/support/v4/view/ViewPager;->cb:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    iput v0, p0, Landroid/support/v4/view/ViewPager;->KD:F

    goto :goto_1

    :cond_8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    iput v3, p0, Landroid/support/v4/view/ViewPager;->KD:F

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Landroid/support/v4/view/ViewPager;->cb:I

    goto :goto_1

    :cond_9
    iget-boolean v0, p0, Landroid/support/v4/view/ViewPager;->vy:Z

    if-eqz v0, :cond_5

    iget v0, p0, Landroid/support/v4/view/ViewPager;->tp:I

    invoke-direct {p0, v0, v1, v2, v2}, Landroid/support/v4/view/ViewPager;->j6(IZIZ)V

    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->u7()Z

    move-result v2

    goto :goto_1

    :cond_a
    iget-boolean v0, p0, Landroid/support/v4/view/ViewPager;->vy:Z

    if-nez v0, :cond_c

    iget v0, p0, Landroid/support/v4/view/ViewPager;->cb:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_b

    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->u7()Z

    move-result v2

    goto :goto_1

    :cond_b
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    iget v4, p0, Landroid/support/v4/view/ViewPager;->KD:F

    sub-float v4, v3, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    iget v0, p0, Landroid/support/v4/view/ViewPager;->ro:F

    sub-float v0, v5, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v6, p0, Landroid/support/v4/view/ViewPager;->SI:I

    int-to-float v6, v6

    cmpl-float v6, v4, v6

    if-lez v6, :cond_c

    cmpl-float v0, v4, v0

    if-lez v0, :cond_c

    iput-boolean v1, p0, Landroid/support/v4/view/ViewPager;->vy:Z

    invoke-direct {p0, v1}, Landroid/support/v4/view/ViewPager;->FH(Z)V

    iget v0, p0, Landroid/support/v4/view/ViewPager;->cn:F

    sub-float/2addr v3, v0

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-lez v3, :cond_d

    iget v3, p0, Landroid/support/v4/view/ViewPager;->SI:I

    int-to-float v3, v3

    add-float/2addr v0, v3

    :goto_2
    iput v0, p0, Landroid/support/v4/view/ViewPager;->KD:F

    iput v5, p0, Landroid/support/v4/view/ViewPager;->ro:F

    invoke-virtual {p0, v1}, Landroid/support/v4/view/ViewPager;->setScrollState(I)V

    invoke-direct {p0, v1}, Landroid/support/v4/view/ViewPager;->setScrollingCacheEnabled(Z)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_c
    iget-boolean v0, p0, Landroid/support/v4/view/ViewPager;->vy:Z

    if-eqz v0, :cond_5

    iget v0, p0, Landroid/support/v4/view/ViewPager;->cb:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    invoke-direct {p0, v0}, Landroid/support/v4/view/ViewPager;->DW(F)Z

    move-result v0

    or-int/lit8 v2, v0, 0x0

    goto/16 :goto_1

    :cond_d
    iget v3, p0, Landroid/support/v4/view/ViewPager;->SI:I

    int-to-float v3, v3

    sub-float/2addr v0, v3

    goto :goto_2

    :cond_e
    iget-boolean v0, p0, Landroid/support/v4/view/ViewPager;->vy:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->dx:Landroid/view/VelocityTracker;

    const/16 v2, 0x3e8

    iget v3, p0, Landroid/support/v4/view/ViewPager;->ef:I

    int-to-float v3, v3

    invoke-virtual {v0, v2, v3}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    iget v2, p0, Landroid/support/v4/view/ViewPager;->cb:I

    invoke-virtual {v0, v2}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v0

    float-to-int v0, v0

    iput-boolean v1, p0, Landroid/support/v4/view/ViewPager;->gW:Z

    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->getClientWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v3

    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->VH()Landroid/support/v4/view/ViewPager$b;

    move-result-object v4

    iget v5, p0, Landroid/support/v4/view/ViewPager;->XL:I

    int-to-float v5, v5

    int-to-float v2, v2

    div-float/2addr v5, v2

    iget v6, v4, Landroid/support/v4/view/ViewPager$b;->DW:I

    int-to-float v3, v3

    div-float v2, v3, v2

    iget v3, v4, Landroid/support/v4/view/ViewPager$b;->v5:F

    sub-float/2addr v2, v3

    iget v3, v4, Landroid/support/v4/view/ViewPager$b;->Hw:F

    add-float/2addr v3, v5

    div-float/2addr v2, v3

    iget v3, p0, Landroid/support/v4/view/ViewPager;->cb:I

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    iget v4, p0, Landroid/support/v4/view/ViewPager;->cn:F

    sub-float/2addr v3, v4

    float-to-int v3, v3

    invoke-direct {p0, v6, v2, v0, v3}, Landroid/support/v4/view/ViewPager;->j6(IFII)I

    move-result v2

    invoke-virtual {p0, v2, v1, v1, v0}, Landroid/support/v4/view/ViewPager;->j6(IZZI)V

    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->u7()Z

    move-result v2

    goto/16 :goto_1

    :cond_f
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->J8:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    iput-boolean v2, p0, Landroid/support/v4/view/ViewPager;->gW:Z

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->v5()V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Landroid/support/v4/view/ViewPager;->cn:F

    iput v0, p0, Landroid/support/v4/view/ViewPager;->KD:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Landroid/support/v4/view/ViewPager;->sh:F

    iput v0, p0, Landroid/support/v4/view/ViewPager;->ro:F

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Landroid/support/v4/view/ViewPager;->cb:I

    goto/16 :goto_1
.end method

.method public removeView(Landroid/view/View;)V
    .registers 3

    iget-boolean v0, p0, Landroid/support/v4/view/ViewPager;->er:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->removeViewInLayout(Landroid/view/View;)V

    :goto_0
    return-void

    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public setAdapter(Landroid/support/v4/view/o;)V
    .registers 9

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v2, 0x0

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->u7:Landroid/support/v4/view/o;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v5}, Landroid/support/v4/view/o;->DW(Landroid/database/DataSetObserver;)V

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->u7:Landroid/support/v4/view/o;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/o;->DW(Landroid/view/ViewGroup;)V

    move v1, v2

    :goto_0
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->Zo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->Zo:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager$b;

    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->u7:Landroid/support/v4/view/o;

    iget v4, v0, Landroid/support/v4/view/ViewPager$b;->DW:I

    iget-object v0, v0, Landroid/support/v4/view/ViewPager$b;->j6:Ljava/lang/Object;

    invoke-virtual {v3, p0, v4, v0}, Landroid/support/v4/view/o;->j6(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->u7:Landroid/support/v4/view/o;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/o;->j6(Landroid/view/ViewGroup;)V

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->Zo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->gn()V

    iput v2, p0, Landroid/support/v4/view/ViewPager;->tp:I

    invoke-virtual {p0, v2, v2}, Landroid/view/ViewGroup;->scrollTo(II)V

    :cond_1
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->u7:Landroid/support/v4/view/o;

    iput-object p1, p0, Landroid/support/v4/view/ViewPager;->u7:Landroid/support/v4/view/o;

    iput v2, p0, Landroid/support/v4/view/ViewPager;->v5:I

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->u7:Landroid/support/v4/view/o;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->QX:Landroid/support/v4/view/ViewPager$g;

    if-nez v0, :cond_2

    new-instance v0, Landroid/support/v4/view/ViewPager$g;

    invoke-direct {v0, p0}, Landroid/support/v4/view/ViewPager$g;-><init>(Landroid/support/v4/view/ViewPager;)V

    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->QX:Landroid/support/v4/view/ViewPager$g;

    :cond_2
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->u7:Landroid/support/v4/view/o;

    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->QX:Landroid/support/v4/view/ViewPager$g;

    invoke-virtual {v0, v3}, Landroid/support/v4/view/o;->DW(Landroid/database/DataSetObserver;)V

    iput-boolean v2, p0, Landroid/support/v4/view/ViewPager;->gW:Z

    iget-boolean v0, p0, Landroid/support/v4/view/ViewPager;->ca:Z

    iput-boolean v6, p0, Landroid/support/v4/view/ViewPager;->ca:Z

    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->u7:Landroid/support/v4/view/o;

    invoke-virtual {v3}, Landroid/support/v4/view/o;->j6()I

    move-result v3

    iput v3, p0, Landroid/support/v4/view/ViewPager;->v5:I

    iget v3, p0, Landroid/support/v4/view/ViewPager;->EQ:I

    if-ltz v3, :cond_4

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->u7:Landroid/support/v4/view/o;

    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->we:Landroid/os/Parcelable;

    iget-object v4, p0, Landroid/support/v4/view/ViewPager;->J0:Ljava/lang/ClassLoader;

    invoke-virtual {v0, v3, v4}, Landroid/support/v4/view/o;->j6(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V

    iget v0, p0, Landroid/support/v4/view/ViewPager;->EQ:I

    invoke-virtual {p0, v0, v2, v6}, Landroid/support/v4/view/ViewPager;->j6(IZZ)V

    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v4/view/ViewPager;->EQ:I

    iput-object v5, p0, Landroid/support/v4/view/ViewPager;->we:Landroid/os/Parcelable;

    iput-object v5, p0, Landroid/support/v4/view/ViewPager;->J0:Ljava/lang/ClassLoader;

    :cond_3
    :goto_1
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->br:Ljava/util/List;

    if-eqz v0, :cond_6

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->br:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    :goto_2
    if-ge v2, v3, :cond_6

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->br:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager$d;

    invoke-interface {v0, p0, v1, p1}, Landroid/support/v4/view/ViewPager$d;->j6(Landroid/support/v4/view/ViewPager;Landroid/support/v4/view/o;Landroid/support/v4/view/o;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    if-nez v0, :cond_5

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->v5()V

    goto :goto_1

    :cond_5
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    goto :goto_1

    :cond_6
    return-void
.end method

.method public setCurrentItem(I)V
    .registers 4

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/support/v4/view/ViewPager;->gW:Z

    iget-boolean v0, p0, Landroid/support/v4/view/ViewPager;->ca:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, p1, v0, v1}, Landroid/support/v4/view/ViewPager;->j6(IZZ)V

    return-void
.end method

.method public setOffscreenPageLimit(I)V
    .registers 5

    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Requested offscreen page limit "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " too small; defaulting to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "ViewPager"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move p1, v0

    :cond_0
    iget v0, p0, Landroid/support/v4/view/ViewPager;->BT:I

    if-eq p1, v0, :cond_1

    iput p1, p0, Landroid/support/v4/view/ViewPager;->BT:I

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->v5()V

    :cond_1
    return-void
.end method

.method public setOnPageChangeListener(Landroid/support/v4/view/ViewPager$e;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-object p1, p0, Landroid/support/v4/view/ViewPager;->lp:Landroid/support/v4/view/ViewPager$e;

    return-void
.end method

.method public setPageMargin(I)V
    .registers 4

    iget v0, p0, Landroid/support/v4/view/ViewPager;->XL:I

    iput p1, p0, Landroid/support/v4/view/ViewPager;->XL:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    invoke-direct {p0, v1, v1, p1, v0}, Landroid/support/v4/view/ViewPager;->j6(IIII)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    return-void
.end method

.method public setPageMarginDrawable(I)V
    .registers 3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/support/v4/content/b;->DW(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v4/view/ViewPager;->setPageMarginDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setPageMarginDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    iput-object p1, p0, Landroid/support/v4/view/ViewPager;->aM:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->refreshDrawableState()V

    :cond_0
    if-nez p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setWillNotDraw(Z)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method setScrollState(I)V
    .registers 3

    iget v0, p0, Landroid/support/v4/view/ViewPager;->wc:I

    if-ne v0, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput p1, p0, Landroid/support/v4/view/ViewPager;->wc:I

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->XX:Landroid/support/v4/view/ViewPager$f;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-direct {p0, v0}, Landroid/support/v4/view/ViewPager;->DW(Z)V

    :cond_1
    invoke-direct {p0, p1}, Landroid/support/v4/view/ViewPager;->v5(I)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method v5()V
    .registers 2

    iget v0, p0, Landroid/support/v4/view/ViewPager;->tp:I

    invoke-virtual {p0, v0}, Landroid/support/v4/view/ViewPager;->FH(I)V

    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .registers 3

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->aM:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
