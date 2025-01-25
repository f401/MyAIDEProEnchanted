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
            "Ljava/util/Comparator<",
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
            "Ljava/util/ArrayList<",
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
            "Ljava/util/ArrayList<",
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
            "Ljava/util/List<",
            "Landroid/support/v4/view/ViewPager$e;",
            ">;"
        }
    .end annotation
.end field

.field private br:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
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
    .registers 1

    const v0, 0x10100b3

    filled-new-array {v0}, [I

    move-result-object v0

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
    .registers 3

    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroid/support/v4/view/ViewPager;->Zo:Ljava/util/ArrayList;

    new-instance p1, Landroid/support/v4/view/ViewPager$b;

    invoke-direct {p1}, Landroid/support/v4/view/ViewPager$b;-><init>()V

    iput-object p1, p0, Landroid/support/v4/view/ViewPager;->VH:Landroid/support/v4/view/ViewPager$b;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Landroid/support/v4/view/ViewPager;->gn:Landroid/graphics/Rect;

    const/4 p1, -0x1

    iput p1, p0, Landroid/support/v4/view/ViewPager;->EQ:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->we:Landroid/os/Parcelable;

    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->J0:Ljava/lang/ClassLoader;

    const v0, -0x800001

    iput v0, p0, Landroid/support/v4/view/ViewPager;->U2:F

    const v0, 0x7f7fffff  # Float.MAX_VALUE

    iput v0, p0, Landroid/support/v4/view/ViewPager;->a8:F

    const/4 v0, 0x1

    iput v0, p0, Landroid/support/v4/view/ViewPager;->BT:I

    iput p1, p0, Landroid/support/v4/view/ViewPager;->cb:I

    iput-boolean v0, p0, Landroid/support/v4/view/ViewPager;->ca:Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroid/support/v4/view/ViewPager;->x9:Z

    new-instance v0, Landroid/support/v4/view/x;

    invoke-direct {v0, p0}, Landroid/support/v4/view/x;-><init>(Landroid/support/v4/view/ViewPager;)V

    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->jJ:Ljava/lang/Runnable;

    iput p1, p0, Landroid/support/v4/view/ViewPager;->wc:I

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->DW()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroid/support/v4/view/ViewPager;->Zo:Ljava/util/ArrayList;

    new-instance p1, Landroid/support/v4/view/ViewPager$b;

    invoke-direct {p1}, Landroid/support/v4/view/ViewPager$b;-><init>()V

    iput-object p1, p0, Landroid/support/v4/view/ViewPager;->VH:Landroid/support/v4/view/ViewPager$b;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Landroid/support/v4/view/ViewPager;->gn:Landroid/graphics/Rect;

    const/4 p1, -0x1

    iput p1, p0, Landroid/support/v4/view/ViewPager;->EQ:I

    const/4 p2, 0x0

    iput-object p2, p0, Landroid/support/v4/view/ViewPager;->we:Landroid/os/Parcelable;

    iput-object p2, p0, Landroid/support/v4/view/ViewPager;->J0:Ljava/lang/ClassLoader;

    const p2, -0x800001

    iput p2, p0, Landroid/support/v4/view/ViewPager;->U2:F

    const p2, 0x7f7fffff  # Float.MAX_VALUE

    iput p2, p0, Landroid/support/v4/view/ViewPager;->a8:F

    const/4 p2, 0x1

    iput p2, p0, Landroid/support/v4/view/ViewPager;->BT:I

    iput p1, p0, Landroid/support/v4/view/ViewPager;->cb:I

    iput-boolean p2, p0, Landroid/support/v4/view/ViewPager;->ca:Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroid/support/v4/view/ViewPager;->x9:Z

    new-instance p2, Landroid/support/v4/view/x;

    invoke-direct {p2, p0}, Landroid/support/v4/view/x;-><init>(Landroid/support/v4/view/ViewPager;)V

    iput-object p2, p0, Landroid/support/v4/view/ViewPager;->jJ:Ljava/lang/Runnable;

    iput p1, p0, Landroid/support/v4/view/ViewPager;->wc:I

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->DW()V

    return-void
.end method

.method private DW(IFI)V
    .registers 7

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->lp:Landroid/support/v4/view/ViewPager$e;

    if-eqz v0, :cond_7

    invoke-interface {v0, p1, p2, p3}, Landroid/support/v4/view/ViewPager$e;->j6(IFI)V

    :cond_7
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->aj:Ljava/util/List;

    if-eqz v0, :cond_22

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_10
    if-ge v1, v0, :cond_22

    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->aj:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/view/ViewPager$e;

    if-eqz v2, :cond_1f

    invoke-interface {v2, p1, p2, p3}, Landroid/support/v4/view/ViewPager$e;->j6(IFI)V

    :cond_1f
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    :cond_22
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->OW:Landroid/support/v4/view/ViewPager$e;

    if-eqz v0, :cond_29

    invoke-interface {v0, p1, p2, p3}, Landroid/support/v4/view/ViewPager$e;->j6(IFI)V

    :cond_29
    return-void
.end method

.method private DW(Z)V
    .registers 8

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v0, :cond_19

    if-eqz p1, :cond_d

    iget v3, p0, Landroid/support/v4/view/ViewPager;->kQ:I

    goto :goto_e

    :cond_d
    const/4 v3, 0x0

    :goto_e
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_19
    return-void
.end method

.method private DW(F)Z
    .registers 11

    iget v0, p0, Landroid/support/v4/view/ViewPager;->KD:F

    iput p1, p0, Landroid/support/v4/view/ViewPager;->KD:F

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, p1

    add-float/2addr v1, v0

    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->getClientWidth()I

    move-result p1

    int-to-float p1, p1

    iget v0, p0, Landroid/support/v4/view/ViewPager;->U2:F

    mul-float v0, v0, p1

    iget v2, p0, Landroid/support/v4/view/ViewPager;->a8:F

    mul-float v2, v2, p1

    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->Zo:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v4/view/ViewPager$b;

    iget-object v5, p0, Landroid/support/v4/view/ViewPager;->Zo:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/v4/view/ViewPager$b;

    iget v6, v3, Landroid/support/v4/view/ViewPager$b;->DW:I

    if-eqz v6, :cond_39

    iget v0, v3, Landroid/support/v4/view/ViewPager$b;->v5:F

    mul-float v0, v0, p1

    const/4 v3, 0x0

    goto :goto_3a

    :cond_39
    const/4 v3, 0x1

    :goto_3a
    iget v6, v5, Landroid/support/v4/view/ViewPager$b;->DW:I

    iget-object v8, p0, Landroid/support/v4/view/ViewPager;->u7:Landroid/support/v4/view/o;

    invoke-virtual {v8}, Landroid/support/v4/view/o;->j6()I

    move-result v8

    sub-int/2addr v8, v7

    if-eq v6, v8, :cond_4b

    iget v2, v5, Landroid/support/v4/view/ViewPager$b;->v5:F

    mul-float v2, v2, p1

    const/4 v5, 0x0

    goto :goto_4c

    :cond_4b
    const/4 v5, 0x1

    :goto_4c
    cmpg-float v6, v1, v0

    if-gez v6, :cond_61

    if-eqz v3, :cond_5f

    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->Mz:Landroid/widget/EdgeEffect;

    sub-float v1, v0, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    div-float/2addr v1, p1

    invoke-virtual {v2, v1}, Landroid/widget/EdgeEffect;->onPull(F)V

    const/4 v4, 0x1

    :cond_5f
    move v1, v0

    goto :goto_74

    :cond_61
    cmpl-float v0, v1, v2

    if-lez v0, :cond_74

    if-eqz v5, :cond_73

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->I:Landroid/widget/EdgeEffect;

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    div-float/2addr v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/EdgeEffect;->onPull(F)V

    const/4 v4, 0x1

    :cond_73
    move v1, v2

    :cond_74
    :goto_74
    iget p1, p0, Landroid/support/v4/view/ViewPager;->KD:F

    float-to-int v0, v1

    int-to-float v2, v0

    sub-float/2addr v1, v2

    add-float/2addr p1, v1

    iput p1, p0, Landroid/support/v4/view/ViewPager;->KD:F

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollY()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Landroid/view/ViewGroup;->scrollTo(II)V

    invoke-direct {p0, v0}, Landroid/support/v4/view/ViewPager;->Zo(I)Z

    return v4
.end method

.method private FH(Z)V
    .registers 3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-interface {v0, p1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_9
    return-void
.end method

.method private static FH(Landroid/view/View;)Z
    .registers 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    const-class v0, Landroid/support/v4/view/ViewPager$a;

    invoke-virtual {p0, v0}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method private Hw(I)V
    .registers 5

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->lp:Landroid/support/v4/view/ViewPager$e;

    if-eqz v0, :cond_7

    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$e;->DW(I)V

    :cond_7
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->aj:Ljava/util/List;

    if-eqz v0, :cond_22

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_10
    if-ge v1, v0, :cond_22

    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->aj:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/view/ViewPager$e;

    if-eqz v2, :cond_1f

    invoke-interface {v2, p1}, Landroid/support/v4/view/ViewPager$e;->DW(I)V

    :cond_1f
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    :cond_22
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->OW:Landroid/support/v4/view/ViewPager$e;

    if-eqz v0, :cond_29

    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$e;->DW(I)V

    :cond_29
    return-void
.end method

.method private VH()Landroid/support/v4/view/ViewPager$b;
    .registers 14

    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->getClientWidth()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_f

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v2

    int-to-float v2, v2

    int-to-float v3, v0

    div-float/2addr v2, v3

    goto :goto_10

    :cond_f
    const/4 v2, 0x0

    :goto_10
    if-lez v0, :cond_18

    iget v3, p0, Landroid/support/v4/view/ViewPager;->XL:I

    int-to-float v3, v3

    int-to-float v0, v0

    div-float/2addr v3, v0

    goto :goto_19

    :cond_18
    const/4 v3, 0x0

    :goto_19
    const/4 v0, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, -0x1

    move-object v6, v5

    const/4 v5, 0x0

    const/4 v7, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x1

    :goto_22
    iget-object v10, p0, Landroid/support/v4/view/ViewPager;->Zo:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v8, v10, :cond_76

    iget-object v10, p0, Landroid/support/v4/view/ViewPager;->Zo:Ljava/util/ArrayList;

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/support/v4/view/ViewPager$b;

    if-nez v9, :cond_4d

    iget v11, v10, Landroid/support/v4/view/ViewPager$b;->DW:I

    add-int/2addr v7, v4

    if-eq v11, v7, :cond_4d

    iget-object v10, p0, Landroid/support/v4/view/ViewPager;->VH:Landroid/support/v4/view/ViewPager$b;

    add-float/2addr v1, v5

    add-float/2addr v1, v3

    iput v1, v10, Landroid/support/v4/view/ViewPager$b;->v5:F

    iput v7, v10, Landroid/support/v4/view/ViewPager$b;->DW:I

    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->u7:Landroid/support/v4/view/o;

    iget v5, v10, Landroid/support/v4/view/ViewPager$b;->DW:I

    invoke-virtual {v1, v5}, Landroid/support/v4/view/o;->DW(I)F

    move-result v1

    iput v1, v10, Landroid/support/v4/view/ViewPager$b;->Hw:F

    add-int/lit8 v8, v8, -0x1

    :cond_4d
    move-object v5, v10

    iget v1, v5, Landroid/support/v4/view/ViewPager$b;->v5:F

    iget v7, v5, Landroid/support/v4/view/ViewPager$b;->Hw:F

    if-nez v9, :cond_5a

    cmpl-float v9, v2, v1

    if-ltz v9, :cond_59

    goto :goto_5a

    :cond_59
    return-object v6

    :cond_5a
    :goto_5a
    add-float/2addr v7, v1

    add-float/2addr v7, v3

    cmpg-float v6, v2, v7

    if-ltz v6, :cond_75

    iget-object v6, p0, Landroid/support/v4/view/ViewPager;->Zo:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    sub-int/2addr v6, v4

    if-ne v8, v6, :cond_6a

    goto :goto_75

    :cond_6a
    iget v7, v5, Landroid/support/v4/view/ViewPager$b;->DW:I

    iget v6, v5, Landroid/support/v4/view/ViewPager$b;->Hw:F

    add-int/lit8 v8, v8, 0x1

    const/4 v9, 0x0

    move v12, v6

    move-object v6, v5

    move v5, v12

    goto :goto_22

    :cond_75
    :goto_75
    return-object v5

    :cond_76
    return-object v6
.end method

.method private Zo()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/view/ViewPager;->vy:Z

    iput-boolean v0, p0, Landroid/support/v4/view/ViewPager;->P8:Z

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->dx:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->dx:Landroid/view/VelocityTracker;

    :cond_f
    return-void
.end method

.method private Zo(I)Z
    .registers 10

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->Zo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const-string v1, "onPageScrolled did not call superclass implementation"

    const/4 v2, 0x0

    if-nez v0, :cond_21

    iget-boolean p1, p0, Landroid/support/v4/view/ViewPager;->ca:Z

    if-eqz p1, :cond_10

    return v2

    :cond_10
    iput-boolean v2, p0, Landroid/support/v4/view/ViewPager;->Qq:Z

    const/4 p1, 0x0

    invoke-virtual {p0, v2, p1, v2}, Landroid/support/v4/view/ViewPager;->j6(IFI)V

    iget-boolean p1, p0, Landroid/support/v4/view/ViewPager;->Qq:Z

    if-eqz p1, :cond_1b

    return v2

    :cond_1b
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_21
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->VH()Landroid/support/v4/view/ViewPager$b;

    move-result-object v0

    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->getClientWidth()I

    move-result v3

    iget v4, p0, Landroid/support/v4/view/ViewPager;->XL:I

    int-to-float v5, v4

    int-to-float v6, v3

    div-float/2addr v5, v6

    iget v7, v0, Landroid/support/v4/view/ViewPager$b;->DW:I

    int-to-float p1, p1

    div-float/2addr p1, v6

    iget v6, v0, Landroid/support/v4/view/ViewPager$b;->v5:F

    sub-float/2addr p1, v6

    iget v0, v0, Landroid/support/v4/view/ViewPager$b;->Hw:F

    add-float/2addr v0, v5

    div-float/2addr p1, v0

    add-int/2addr v3, v4

    int-to-float v0, v3

    mul-float v0, v0, p1

    float-to-int v0, v0

    iput-boolean v2, p0, Landroid/support/v4/view/ViewPager;->Qq:Z

    invoke-virtual {p0, v7, p1, v0}, Landroid/support/v4/view/ViewPager;->j6(IFI)V

    iget-boolean p1, p0, Landroid/support/v4/view/ViewPager;->Qq:Z

    if-eqz p1, :cond_49

    const/4 p1, 0x1

    return p1

    :cond_49
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
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

    :goto_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1d

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/v4/view/ViewPager$LayoutParams;

    iget-boolean v1, v1, Landroid/support/v4/view/ViewPager$LayoutParams;->j6:Z

    if-nez v1, :cond_1a

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeViewAt(I)V

    add-int/lit8 v0, v0, -0x1

    :cond_1a
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1d
    return-void
.end method

.method private j6(IFII)I
    .registers 6

    invoke-static {p4}, Ljava/lang/Math;->abs(I)I

    move-result p4

    iget v0, p0, Landroid/support/v4/view/ViewPager;->Sf:I

    if-le p4, v0, :cond_16

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result p4

    iget v0, p0, Landroid/support/v4/view/ViewPager;->sG:I

    if-le p4, v0, :cond_16

    if-lez p3, :cond_13

    goto :goto_24

    :cond_13
    add-int/lit8 p1, p1, 0x1

    goto :goto_24

    :cond_16
    iget p3, p0, Landroid/support/v4/view/ViewPager;->tp:I

    if-lt p1, p3, :cond_1e

    const p3, 0x3ecccccd  # 0.4f

    goto :goto_21

    :cond_1e
    const p3, 0x3f19999a  # 0.6f

    :goto_21
    add-float/2addr p2, p3

    float-to-int p2, p2

    add-int/2addr p1, p2

    :goto_24
    iget-object p2, p0, Landroid/support/v4/view/ViewPager;->Zo:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_4f

    iget-object p2, p0, Landroid/support/v4/view/ViewPager;->Zo:Ljava/util/ArrayList;

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/support/v4/view/ViewPager$b;

    iget-object p3, p0, Landroid/support/v4/view/ViewPager;->Zo:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p4

    add-int/lit8 p4, p4, -0x1

    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/support/v4/view/ViewPager$b;

    iget p2, p2, Landroid/support/v4/view/ViewPager$b;->DW:I

    iget p3, p3, Landroid/support/v4/view/ViewPager$b;->DW:I

    invoke-static {p1, p3}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    :cond_4f
    return p1
.end method

.method private j6(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;
    .registers 5

    if-nez p1, :cond_7

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    :cond_7
    if-nez p2, :cond_e

    const/4 p2, 0x0

    invoke-virtual {p1, p2, p2, p2, p2}, Landroid/graphics/Rect;->set(IIII)V

    return-object p1

    :cond_e
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    :goto_2a
    instance-of v0, p2, Landroid/view/ViewGroup;

    if-eqz v0, :cond_5b

    if-eq p2, p0, :cond_5b

    check-cast p2, Landroid/view/ViewGroup;

    iget v0, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getLeft()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->left:I

    iget v0, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getRight()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->right:I

    iget v0, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getTop()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->top:I

    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getBottom()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    goto :goto_2a

    :cond_5b
    return-object p1
.end method

.method private j6(IIII)V
    .registers 10

    if-lez p2, :cond_4b

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->Zo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4b

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->J8:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_22

    iget-object p1, p0, Landroid/support/v4/view/ViewPager;->J8:Landroid/widget/Scroller;

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result p2

    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->getClientWidth()I

    move-result p3

    mul-int p2, p2, p3

    invoke-virtual {p1, p2}, Landroid/widget/Scroller;->setFinalX(I)V

    goto :goto_76

    :cond_22
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

    sub-int/2addr p2, v2

    sub-int/2addr p2, v3

    add-int/2addr p2, p4

    int-to-float p2, p2

    div-float/2addr v4, p2

    sub-int/2addr p1, v0

    sub-int/2addr p1, v1

    add-int/2addr p1, p3

    int-to-float p1, p1

    mul-float v4, v4, p1

    float-to-int p1, v4

    :goto_43
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollY()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->scrollTo(II)V

    goto :goto_76

    :cond_4b
    iget p2, p0, Landroid/support/v4/view/ViewPager;->tp:I

    invoke-virtual {p0, p2}, Landroid/support/v4/view/ViewPager;->DW(I)Landroid/support/v4/view/ViewPager$b;

    move-result-object p2

    if-eqz p2, :cond_5c

    iget p2, p2, Landroid/support/v4/view/ViewPager$b;->v5:F

    iget p3, p0, Landroid/support/v4/view/ViewPager;->a8:F

    invoke-static {p2, p3}, Ljava/lang/Math;->min(FF)F

    move-result p2

    goto :goto_5d

    :cond_5c
    const/4 p2, 0x0

    :goto_5d
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result p3

    sub-int/2addr p1, p3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result p3

    sub-int/2addr p1, p3

    int-to-float p1, p1

    mul-float p2, p2, p1

    float-to-int p1, p2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result p2

    if-eq p1, p2, :cond_76

    const/4 p2, 0x0

    invoke-direct {p0, p2}, Landroid/support/v4/view/ViewPager;->j6(Z)V

    goto :goto_43

    :cond_76
    :goto_76
    return-void
.end method

.method private j6(IZIZ)V
    .registers 10

    invoke-virtual {p0, p1}, Landroid/support/v4/view/ViewPager;->DW(I)Landroid/support/v4/view/ViewPager$b;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1e

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

    mul-float v2, v2, v0

    float-to-int v0, v2

    goto :goto_1f

    :cond_1e
    const/4 v0, 0x0

    :goto_1f
    if-eqz p2, :cond_2a

    invoke-virtual {p0, v0, v1, p3}, Landroid/support/v4/view/ViewPager;->j6(III)V

    if-eqz p4, :cond_38

    invoke-direct {p0, p1}, Landroid/support/v4/view/ViewPager;->Hw(I)V

    goto :goto_38

    :cond_2a
    if-eqz p4, :cond_2f

    invoke-direct {p0, p1}, Landroid/support/v4/view/ViewPager;->Hw(I)V

    :cond_2f
    invoke-direct {p0, v1}, Landroid/support/v4/view/ViewPager;->j6(Z)V

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewGroup;->scrollTo(II)V

    invoke-direct {p0, v0}, Landroid/support/v4/view/ViewPager;->Zo(I)Z

    :cond_38
    :goto_38
    return-void
.end method

.method private j6(Landroid/support/v4/view/ViewPager$b;ILandroid/support/v4/view/ViewPager$b;)V
    .registers 14

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->u7:Landroid/support/v4/view/o;

    invoke-virtual {v0}, Landroid/support/v4/view/o;->j6()I

    move-result v0

    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->getClientWidth()I

    move-result v1

    if-lez v1, :cond_12

    iget v2, p0, Landroid/support/v4/view/ViewPager;->XL:I

    int-to-float v2, v2

    int-to-float v1, v1

    div-float/2addr v2, v1

    goto :goto_13

    :cond_12
    const/4 v2, 0x0

    :goto_13
    const/4 v1, 0x0

    if-eqz p3, :cond_9f

    iget v3, p3, Landroid/support/v4/view/ViewPager$b;->DW:I

    iget v4, p1, Landroid/support/v4/view/ViewPager$b;->DW:I

    if-ge v3, v4, :cond_62

    iget v4, p3, Landroid/support/v4/view/ViewPager$b;->v5:F

    iget p3, p3, Landroid/support/v4/view/ViewPager$b;->Hw:F

    add-float/2addr v4, p3

    add-float/2addr v4, v2

    add-int/lit8 v3, v3, 0x1

    const/4 p3, 0x0

    :goto_25
    iget v5, p1, Landroid/support/v4/view/ViewPager$b;->DW:I

    if-gt v3, v5, :cond_9f

    iget-object v5, p0, Landroid/support/v4/view/ViewPager;->Zo:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge p3, v5, :cond_9f

    :goto_31
    iget-object v5, p0, Landroid/support/v4/view/ViewPager;->Zo:Ljava/util/ArrayList;

    invoke-virtual {v5, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/v4/view/ViewPager$b;

    iget v6, v5, Landroid/support/v4/view/ViewPager$b;->DW:I

    if-le v3, v6, :cond_4a

    iget-object v6, p0, Landroid/support/v4/view/ViewPager;->Zo:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ge p3, v6, :cond_4a

    add-int/lit8 p3, p3, 0x1

    goto :goto_31

    :cond_4a
    :goto_4a
    iget v6, v5, Landroid/support/v4/view/ViewPager$b;->DW:I

    if-ge v3, v6, :cond_59

    iget-object v6, p0, Landroid/support/v4/view/ViewPager;->u7:Landroid/support/v4/view/o;

    invoke-virtual {v6, v3}, Landroid/support/v4/view/o;->DW(I)F

    move-result v6

    add-float/2addr v6, v2

    add-float/2addr v4, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_4a

    :cond_59
    iput v4, v5, Landroid/support/v4/view/ViewPager$b;->v5:F

    iget v5, v5, Landroid/support/v4/view/ViewPager$b;->Hw:F

    add-float/2addr v5, v2

    add-float/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_25

    :cond_62
    if-le v3, v4, :cond_9f

    iget-object v4, p0, Landroid/support/v4/view/ViewPager;->Zo:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    iget p3, p3, Landroid/support/v4/view/ViewPager$b;->v5:F

    add-int/lit8 v3, v3, -0x1

    :goto_70
    iget v5, p1, Landroid/support/v4/view/ViewPager$b;->DW:I

    if-lt v3, v5, :cond_9f

    if-ltz v4, :cond_9f

    :goto_76
    iget-object v5, p0, Landroid/support/v4/view/ViewPager;->Zo:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/v4/view/ViewPager$b;

    iget v6, v5, Landroid/support/v4/view/ViewPager$b;->DW:I

    if-ge v3, v6, :cond_87

    if-lez v4, :cond_87

    add-int/lit8 v4, v4, -0x1

    goto :goto_76

    :cond_87
    :goto_87
    iget v6, v5, Landroid/support/v4/view/ViewPager$b;->DW:I

    if-le v3, v6, :cond_96

    iget-object v6, p0, Landroid/support/v4/view/ViewPager;->u7:Landroid/support/v4/view/o;

    invoke-virtual {v6, v3}, Landroid/support/v4/view/o;->DW(I)F

    move-result v6

    add-float/2addr v6, v2

    sub-float/2addr p3, v6

    add-int/lit8 v3, v3, -0x1

    goto :goto_87

    :cond_96
    iget v6, v5, Landroid/support/v4/view/ViewPager$b;->Hw:F

    add-float/2addr v6, v2

    sub-float/2addr p3, v6

    iput p3, v5, Landroid/support/v4/view/ViewPager$b;->v5:F

    add-int/lit8 v3, v3, -0x1

    goto :goto_70

    :cond_9f
    iget-object p3, p0, Landroid/support/v4/view/ViewPager;->Zo:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    iget v3, p1, Landroid/support/v4/view/ViewPager$b;->v5:F

    iget v4, p1, Landroid/support/v4/view/ViewPager$b;->DW:I

    add-int/lit8 v5, v4, -0x1

    if-nez v4, :cond_af

    move v4, v3

    goto :goto_b2

    :cond_af
    const v4, -0x800001

    :goto_b2
    iput v4, p0, Landroid/support/v4/view/ViewPager;->U2:F

    iget v4, p1, Landroid/support/v4/view/ViewPager$b;->DW:I

    add-int/lit8 v0, v0, -0x1

    const/high16 v6, 0x3f800000  # 1.0f

    if-ne v4, v0, :cond_c3

    iget v4, p1, Landroid/support/v4/view/ViewPager$b;->v5:F

    iget v7, p1, Landroid/support/v4/view/ViewPager$b;->Hw:F

    add-float/2addr v4, v7

    sub-float/2addr v4, v6

    goto :goto_c6

    :cond_c3
    const v4, 0x7f7fffff  # Float.MAX_VALUE

    :goto_c6
    iput v4, p0, Landroid/support/v4/view/ViewPager;->a8:F

    add-int/lit8 v4, p2, -0x1

    :goto_ca
    if-ltz v4, :cond_f2

    iget-object v7, p0, Landroid/support/v4/view/ViewPager;->Zo:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/support/v4/view/ViewPager$b;

    :goto_d4
    iget v8, v7, Landroid/support/v4/view/ViewPager$b;->DW:I

    if-le v5, v8, :cond_e3

    iget-object v8, p0, Landroid/support/v4/view/ViewPager;->u7:Landroid/support/v4/view/o;

    invoke-virtual {v8, v5}, Landroid/support/v4/view/o;->DW(I)F

    move-result v8

    add-float/2addr v8, v2

    sub-float/2addr v3, v8

    add-int/lit8 v5, v5, -0x1

    goto :goto_d4

    :cond_e3
    iget v9, v7, Landroid/support/v4/view/ViewPager$b;->Hw:F

    add-float/2addr v9, v2

    sub-float/2addr v3, v9

    iput v3, v7, Landroid/support/v4/view/ViewPager$b;->v5:F

    if-nez v8, :cond_ed

    iput v3, p0, Landroid/support/v4/view/ViewPager;->U2:F

    :cond_ed
    add-int/lit8 v4, v4, -0x1

    add-int/lit8 v5, v5, -0x1

    goto :goto_ca

    :cond_f2
    iget v3, p1, Landroid/support/v4/view/ViewPager$b;->v5:F

    iget v4, p1, Landroid/support/v4/view/ViewPager$b;->Hw:F

    add-float/2addr v3, v4

    add-float/2addr v3, v2

    iget p1, p1, Landroid/support/v4/view/ViewPager$b;->DW:I

    add-int/lit8 p1, p1, 0x1

    add-int/lit8 p2, p2, 0x1

    :goto_fe
    if-ge p2, p3, :cond_12a

    iget-object v4, p0, Landroid/support/v4/view/ViewPager;->Zo:Ljava/util/ArrayList;

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v4/view/ViewPager$b;

    :goto_108
    iget v5, v4, Landroid/support/v4/view/ViewPager$b;->DW:I

    if-ge p1, v5, :cond_117

    iget-object v5, p0, Landroid/support/v4/view/ViewPager;->u7:Landroid/support/v4/view/o;

    invoke-virtual {v5, p1}, Landroid/support/v4/view/o;->DW(I)F

    move-result v5

    add-float/2addr v5, v2

    add-float/2addr v3, v5

    add-int/lit8 p1, p1, 0x1

    goto :goto_108

    :cond_117
    if-ne v5, v0, :cond_11f

    iget v5, v4, Landroid/support/v4/view/ViewPager$b;->Hw:F

    add-float/2addr v5, v3

    sub-float/2addr v5, v6

    iput v5, p0, Landroid/support/v4/view/ViewPager;->a8:F

    :cond_11f
    iput v3, v4, Landroid/support/v4/view/ViewPager$b;->v5:F

    iget v4, v4, Landroid/support/v4/view/ViewPager$b;->Hw:F

    add-float/2addr v4, v2

    add-float/2addr v3, v4

    add-int/lit8 p2, p2, 0x1

    add-int/lit8 p1, p1, 0x1

    goto :goto_fe

    :cond_12a
    iput-boolean v1, p0, Landroid/support/v4/view/ViewPager;->x9:Z

    return-void
.end method

.method private j6(Landroid/view/MotionEvent;)V
    .registers 5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iget v2, p0, Landroid/support/v4/view/ViewPager;->cb:I

    if-ne v1, v2, :cond_24

    if-nez v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    iput v1, p0, Landroid/support/v4/view/ViewPager;->KD:F

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Landroid/support/v4/view/ViewPager;->cb:I

    iget-object p1, p0, Landroid/support/v4/view/ViewPager;->dx:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_24

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->clear()V

    :cond_24
    return-void
.end method

.method private j6(Z)V
    .registers 9

    iget v0, p0, Landroid/support/v4/view/ViewPager;->wc:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    if-eqz v0, :cond_3d

    invoke-direct {p0, v3}, Landroid/support/v4/view/ViewPager;->setScrollingCacheEnabled(Z)V

    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->J8:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    xor-int/2addr v1, v2

    if-eqz v1, :cond_3d

    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->J8:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->abortAnimation()V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v4

    iget-object v5, p0, Landroid/support/v4/view/ViewPager;->J8:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->getCurrX()I

    move-result v5

    iget-object v6, p0, Landroid/support/v4/view/ViewPager;->J8:Landroid/widget/Scroller;

    invoke-virtual {v6}, Landroid/widget/Scroller;->getCurrY()I

    move-result v6

    if-ne v1, v5, :cond_35

    if-eq v4, v6, :cond_3d

    :cond_35
    invoke-virtual {p0, v5, v6}, Landroid/view/ViewGroup;->scrollTo(II)V

    if-eq v5, v1, :cond_3d

    invoke-direct {p0, v5}, Landroid/support/v4/view/ViewPager;->Zo(I)Z

    :cond_3d
    iput-boolean v3, p0, Landroid/support/v4/view/ViewPager;->gW:Z

    const/4 v1, 0x0

    :goto_40
    iget-object v4, p0, Landroid/support/v4/view/ViewPager;->Zo:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_5a

    iget-object v4, p0, Landroid/support/v4/view/ViewPager;->Zo:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v4/view/ViewPager$b;

    iget-boolean v5, v4, Landroid/support/v4/view/ViewPager$b;->FH:Z

    if-eqz v5, :cond_57

    iput-boolean v3, v4, Landroid/support/v4/view/ViewPager$b;->FH:Z

    const/4 v0, 0x1

    :cond_57
    add-int/lit8 v1, v1, 0x1

    goto :goto_40

    :cond_5a
    if-eqz v0, :cond_69

    if-eqz p1, :cond_64

    iget-object p1, p0, Landroid/support/v4/view/ViewPager;->jJ:Ljava/lang/Runnable;

    invoke-static {p0, p1}, Landroid/support/v4/view/s;->j6(Landroid/view/View;Ljava/lang/Runnable;)V

    goto :goto_69

    :cond_64
    iget-object p1, p0, Landroid/support/v4/view/ViewPager;->jJ:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_69
    :goto_69
    return-void
.end method

.method private j6(FF)Z
    .registers 6

    iget v0, p0, Landroid/support/v4/view/ViewPager;->nw:I

    int-to-float v0, v0

    const/4 v1, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_c

    cmpl-float v0, p2, v1

    if-gtz v0, :cond_1c

    :cond_c
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    iget v2, p0, Landroid/support/v4/view/ViewPager;->nw:I

    sub-int/2addr v0, v2

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_1e

    cmpg-float p1, p2, v1

    if-gez p1, :cond_1e

    :cond_1c
    const/4 p1, 0x1

    goto :goto_1f

    :cond_1e
    const/4 p1, 0x0

    :goto_1f
    return p1
.end method

.method private setScrollingCacheEnabled(Z)V
    .registers 3

    iget-boolean v0, p0, Landroid/support/v4/view/ViewPager;->yS:Z

    if-eq v0, p1, :cond_6

    iput-boolean p1, p0, Landroid/support/v4/view/ViewPager;->yS:Z

    :cond_6
    return-void
.end method

.method private tp()V
    .registers 5

    iget v0, p0, Landroid/support/v4/view/ViewPager;->yO:I

    if-eqz v0, :cond_2d

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->XG:Ljava/util/ArrayList;

    if-nez v0, :cond_10

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->XG:Ljava/util/ArrayList;

    goto :goto_13

    :cond_10
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :goto_13
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_18
    if-ge v1, v0, :cond_26

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->XG:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    :cond_26
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->XG:Ljava/util/ArrayList;

    sget-object v1, Landroid/support/v4/view/ViewPager;->Hw:Landroid/support/v4/view/ViewPager$i;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_2d
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

    if-nez v0, :cond_23

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->I:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_21

    goto :goto_23

    :cond_21
    const/4 v0, 0x0

    goto :goto_24

    :cond_23
    :goto_23
    const/4 v0, 0x1

    :goto_24
    return v0
.end method

.method private v5(I)V
    .registers 5

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->lp:Landroid/support/v4/view/ViewPager$e;

    if-eqz v0, :cond_7

    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$e;->j6(I)V

    :cond_7
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->aj:Ljava/util/List;

    if-eqz v0, :cond_22

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_10
    if-ge v1, v0, :cond_22

    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->aj:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/view/ViewPager$e;

    if-eqz v2, :cond_1f

    invoke-interface {v2, p1}, Landroid/support/v4/view/ViewPager$e;->j6(I)V

    :cond_1f
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    :cond_22
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->OW:Landroid/support/v4/view/ViewPager$e;

    if-eqz v0, :cond_29

    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$e;->j6(I)V

    :cond_29
    return-void
.end method


# virtual methods
.method DW(I)Landroid/support/v4/view/ViewPager$b;
    .registers 5

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->Zo:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_19

    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->Zo:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/view/ViewPager$b;

    iget v2, v1, Landroid/support/v4/view/ViewPager$b;->DW:I

    if-ne v2, p1, :cond_16

    return-object v1

    :cond_16
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_19
    const/4 p1, 0x0

    return-object p1
.end method

.method DW(Landroid/view/View;)Landroid/support/v4/view/ViewPager$b;
    .registers 6

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->Zo:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1f

    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->Zo:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/view/ViewPager$b;

    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->u7:Landroid/support/v4/view/o;

    iget-object v3, v1, Landroid/support/v4/view/ViewPager$b;->j6:Ljava/lang/Object;

    invoke-virtual {v2, p1, v3}, Landroid/support/v4/view/o;->j6(Landroid/view/View;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    return-object v1

    :cond_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1f
    const/4 p1, 0x0

    return-object p1
.end method

.method DW()V
    .registers 6

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setWillNotDraw(Z)V

    const/high16 v0, 0x40000

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setFocusable(Z)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/widget/Scroller;

    sget-object v3, Landroid/support/v4/view/ViewPager;->FH:Landroid/view/animation/Interpolator;

    invoke-direct {v2, v1, v3}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v2, p0, Landroid/support/v4/view/ViewPager;->J8:Landroid/widget/Scroller;

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result v4

    iput v4, p0, Landroid/support/v4/view/ViewPager;->SI:I

    const/high16 v4, 0x43c80000  # 400.0f

    mul-float v4, v4, v3

    float-to-int v4, v4

    iput v4, p0, Landroid/support/v4/view/ViewPager;->sG:I

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v2

    iput v2, p0, Landroid/support/v4/view/ViewPager;->ef:I

    new-instance v2, Landroid/widget/EdgeEffect;

    invoke-direct {v2, v1}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Landroid/support/v4/view/ViewPager;->Mz:Landroid/widget/EdgeEffect;

    new-instance v2, Landroid/widget/EdgeEffect;

    invoke-direct {v2, v1}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Landroid/support/v4/view/ViewPager;->I:Landroid/widget/EdgeEffect;

    const/high16 v1, 0x41c80000  # 25.0f

    mul-float v1, v1, v3

    float-to-int v1, v1

    iput v1, p0, Landroid/support/v4/view/ViewPager;->Sf:I

    const/high16 v1, 0x40000000  # 2.0f

    mul-float v1, v1, v3

    float-to-int v1, v1

    iput v1, p0, Landroid/support/v4/view/ViewPager;->vJ:I

    const/high16 v1, 0x41800000  # 16.0f

    mul-float v3, v3, v1

    float-to-int v1, v3

    iput v1, p0, Landroid/support/v4/view/ViewPager;->ei:I

    new-instance v1, Landroid/support/v4/view/ViewPager$c;

    invoke-direct {v1, p0}, Landroid/support/v4/view/ViewPager$c;-><init>(Landroid/support/v4/view/ViewPager;)V

    invoke-static {p0, v1}, Landroid/support/v4/view/s;->j6(Landroid/view/View;Landroid/support/v4/view/c;)V

    invoke-static {p0}, Landroid/support/v4/view/s;->FH(Landroid/view/View;)I

    move-result v1

    if-nez v1, :cond_6f

    invoke-static {p0, v0}, Landroid/support/v4/view/s;->FH(Landroid/view/View;I)V

    :cond_6f
    new-instance v0, Landroid/support/v4/view/y;

    invoke-direct {v0, p0}, Landroid/support/v4/view/y;-><init>(Landroid/support/v4/view/ViewPager;)V

    invoke-static {p0, v0}, Landroid/support/v4/view/s;->j6(Landroid/view/View;Landroid/support/v4/view/n;)V

    return-void
.end method

.method public DW(Landroid/support/v4/view/ViewPager$d;)V
    .registers 3

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->br:Ljava/util/List;

    if-eqz v0, :cond_7

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_7
    return-void
.end method

.method FH(I)V
    .registers 19

    move-object/from16 v1, p0

    move/from16 v0, p1

    iget v2, v1, Landroid/support/v4/view/ViewPager;->tp:I

    if-eq v2, v0, :cond_f

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->DW(I)Landroid/support/v4/view/ViewPager$b;

    move-result-object v2

    iput v0, v1, Landroid/support/v4/view/ViewPager;->tp:I

    goto :goto_10

    :cond_f
    const/4 v2, 0x0

    :goto_10
    iget-object v0, v1, Landroid/support/v4/view/ViewPager;->u7:Landroid/support/v4/view/o;

    if-nez v0, :cond_18

    invoke-direct/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->tp()V

    return-void

    :cond_18
    iget-boolean v0, v1, Landroid/support/v4/view/ViewPager;->gW:Z

    if-eqz v0, :cond_20

    invoke-direct/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->tp()V

    return-void

    :cond_20
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_27

    return-void

    :cond_27
    iget-object v0, v1, Landroid/support/v4/view/ViewPager;->u7:Landroid/support/v4/view/o;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/o;->DW(Landroid/view/ViewGroup;)V

    iget v0, v1, Landroid/support/v4/view/ViewPager;->BT:I

    iget v4, v1, Landroid/support/v4/view/ViewPager;->tp:I

    sub-int/2addr v4, v0

    const/4 v5, 0x0

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    iget-object v6, v1, Landroid/support/v4/view/ViewPager;->u7:Landroid/support/v4/view/o;

    invoke-virtual {v6}, Landroid/support/v4/view/o;->j6()I

    move-result v6

    add-int/lit8 v7, v6, -0x1

    iget v8, v1, Landroid/support/v4/view/ViewPager;->tp:I

    add-int/2addr v8, v0

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget v7, v1, Landroid/support/v4/view/ViewPager;->v5:I

    if-ne v6, v7, :cond_1f2

    const/4 v7, 0x0

    :goto_4a
    iget-object v8, v1, Landroid/support/v4/view/ViewPager;->Zo:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v7, v8, :cond_66

    iget-object v8, v1, Landroid/support/v4/view/ViewPager;->Zo:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/support/v4/view/ViewPager$b;

    iget v9, v8, Landroid/support/v4/view/ViewPager$b;->DW:I

    iget v10, v1, Landroid/support/v4/view/ViewPager;->tp:I

    if-lt v9, v10, :cond_63

    if-ne v9, v10, :cond_66

    goto :goto_67

    :cond_63
    add-int/lit8 v7, v7, 0x1

    goto :goto_4a

    :cond_66
    const/4 v8, 0x0

    :goto_67
    if-nez v8, :cond_71

    if-lez v6, :cond_71

    iget v8, v1, Landroid/support/v4/view/ViewPager;->tp:I

    invoke-virtual {v1, v8, v7}, Landroid/support/v4/view/ViewPager;->j6(II)Landroid/support/v4/view/ViewPager$b;

    move-result-object v8

    :cond_71
    const/4 v9, 0x0

    if-eqz v8, :cond_172

    add-int/lit8 v10, v7, -0x1

    if-ltz v10, :cond_81

    iget-object v11, v1, Landroid/support/v4/view/ViewPager;->Zo:Ljava/util/ArrayList;

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/support/v4/view/ViewPager$b;

    goto :goto_82

    :cond_81
    const/4 v11, 0x0

    :goto_82
    invoke-direct/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getClientWidth()I

    move-result v12

    const/high16 v13, 0x40000000  # 2.0f

    if-gtz v12, :cond_8c

    const/4 v14, 0x0

    goto :goto_98

    :cond_8c
    iget v14, v8, Landroid/support/v4/view/ViewPager$b;->Hw:F

    sub-float v14, v13, v14

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v15

    int-to-float v15, v15

    int-to-float v3, v12

    div-float/2addr v15, v3

    add-float/2addr v14, v15

    :goto_98
    iget v3, v1, Landroid/support/v4/view/ViewPager;->tp:I

    add-int/lit8 v3, v3, -0x1

    const/4 v15, 0x0

    :goto_9d
    if-ltz v3, :cond_ed

    cmpl-float v16, v15, v14

    if-ltz v16, :cond_c3

    if-ge v3, v4, :cond_c3

    if-nez v11, :cond_a8

    goto :goto_ed

    :cond_a8
    iget v5, v11, Landroid/support/v4/view/ViewPager$b;->DW:I

    if-ne v3, v5, :cond_e9

    iget-boolean v5, v11, Landroid/support/v4/view/ViewPager$b;->FH:Z

    if-nez v5, :cond_e9

    iget-object v5, v1, Landroid/support/v4/view/ViewPager;->Zo:Ljava/util/ArrayList;

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v5, v1, Landroid/support/v4/view/ViewPager;->u7:Landroid/support/v4/view/o;

    iget-object v11, v11, Landroid/support/v4/view/ViewPager$b;->j6:Ljava/lang/Object;

    invoke-virtual {v5, v1, v3, v11}, Landroid/support/v4/view/o;->j6(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    add-int/lit8 v10, v10, -0x1

    add-int/lit8 v7, v7, -0x1

    if-ltz v10, :cond_e7

    goto :goto_de

    :cond_c3
    if-eqz v11, :cond_d1

    iget v5, v11, Landroid/support/v4/view/ViewPager$b;->DW:I

    if-ne v3, v5, :cond_d1

    iget v5, v11, Landroid/support/v4/view/ViewPager$b;->Hw:F

    add-float/2addr v15, v5

    add-int/lit8 v10, v10, -0x1

    if-ltz v10, :cond_e7

    goto :goto_de

    :cond_d1
    add-int/lit8 v5, v10, 0x1

    invoke-virtual {v1, v3, v5}, Landroid/support/v4/view/ViewPager;->j6(II)Landroid/support/v4/view/ViewPager$b;

    move-result-object v5

    iget v5, v5, Landroid/support/v4/view/ViewPager$b;->Hw:F

    add-float/2addr v15, v5

    add-int/lit8 v7, v7, 0x1

    if-ltz v10, :cond_e7

    :goto_de
    iget-object v5, v1, Landroid/support/v4/view/ViewPager;->Zo:Ljava/util/ArrayList;

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/v4/view/ViewPager$b;

    goto :goto_e8

    :cond_e7
    const/4 v5, 0x0

    :goto_e8
    move-object v11, v5

    :cond_e9
    add-int/lit8 v3, v3, -0x1

    const/4 v5, 0x0

    goto :goto_9d

    :cond_ed
    :goto_ed
    iget v3, v8, Landroid/support/v4/view/ViewPager$b;->Hw:F

    add-int/lit8 v4, v7, 0x1

    cmpg-float v5, v3, v13

    if-gez v5, :cond_16f

    iget-object v5, v1, Landroid/support/v4/view/ViewPager;->Zo:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_106

    iget-object v5, v1, Landroid/support/v4/view/ViewPager;->Zo:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/v4/view/ViewPager$b;

    goto :goto_107

    :cond_106
    const/4 v5, 0x0

    :goto_107
    if-gtz v12, :cond_10b

    const/4 v10, 0x0

    goto :goto_113

    :cond_10b
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v10

    int-to-float v10, v10

    int-to-float v11, v12

    div-float/2addr v10, v11

    add-float/2addr v10, v13

    :goto_113
    iget v11, v1, Landroid/support/v4/view/ViewPager;->tp:I

    :cond_115
    :goto_115
    add-int/lit8 v11, v11, 0x1

    if-ge v11, v6, :cond_16f

    cmpl-float v12, v3, v10

    if-ltz v12, :cond_13f

    if-le v11, v0, :cond_13f

    if-nez v5, :cond_122

    goto :goto_16f

    :cond_122
    iget v12, v5, Landroid/support/v4/view/ViewPager$b;->DW:I

    if-ne v11, v12, :cond_115

    iget-boolean v12, v5, Landroid/support/v4/view/ViewPager$b;->FH:Z

    if-nez v12, :cond_115

    iget-object v12, v1, Landroid/support/v4/view/ViewPager;->Zo:Ljava/util/ArrayList;

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v12, v1, Landroid/support/v4/view/ViewPager;->u7:Landroid/support/v4/view/o;

    iget-object v5, v5, Landroid/support/v4/view/ViewPager$b;->j6:Ljava/lang/Object;

    invoke-virtual {v12, v1, v11, v5}, Landroid/support/v4/view/o;->j6(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    iget-object v5, v1, Landroid/support/v4/view/ViewPager;->Zo:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_16d

    goto :goto_164

    :cond_13f
    if-eqz v5, :cond_153

    iget v12, v5, Landroid/support/v4/view/ViewPager$b;->DW:I

    if-ne v11, v12, :cond_153

    iget v5, v5, Landroid/support/v4/view/ViewPager$b;->Hw:F

    add-float/2addr v3, v5

    add-int/lit8 v4, v4, 0x1

    iget-object v5, v1, Landroid/support/v4/view/ViewPager;->Zo:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_16d

    goto :goto_164

    :cond_153
    invoke-virtual {v1, v11, v4}, Landroid/support/v4/view/ViewPager;->j6(II)Landroid/support/v4/view/ViewPager$b;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    iget v5, v5, Landroid/support/v4/view/ViewPager$b;->Hw:F

    add-float/2addr v3, v5

    iget-object v5, v1, Landroid/support/v4/view/ViewPager;->Zo:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_16d

    :goto_164
    iget-object v5, v1, Landroid/support/v4/view/ViewPager;->Zo:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/v4/view/ViewPager$b;

    goto :goto_115

    :cond_16d
    const/4 v5, 0x0

    goto :goto_115

    :cond_16f
    :goto_16f
    invoke-direct {v1, v8, v7, v2}, Landroid/support/v4/view/ViewPager;->j6(Landroid/support/v4/view/ViewPager$b;ILandroid/support/v4/view/ViewPager$b;)V

    :cond_172
    iget-object v0, v1, Landroid/support/v4/view/ViewPager;->u7:Landroid/support/v4/view/o;

    iget v2, v1, Landroid/support/v4/view/ViewPager;->tp:I

    if-eqz v8, :cond_17b

    iget-object v3, v8, Landroid/support/v4/view/ViewPager$b;->j6:Ljava/lang/Object;

    goto :goto_17c

    :cond_17b
    const/4 v3, 0x0

    :goto_17c
    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/view/o;->DW(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    iget-object v0, v1, Landroid/support/v4/view/ViewPager;->u7:Landroid/support/v4/view/o;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/o;->j6(Landroid/view/ViewGroup;)V

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v2, 0x0

    :goto_189
    if-ge v2, v0, :cond_1b2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/support/v4/view/ViewPager$LayoutParams;

    iput v2, v4, Landroid/support/v4/view/ViewPager$LayoutParams;->Zo:I

    iget-boolean v5, v4, Landroid/support/v4/view/ViewPager$LayoutParams;->j6:Z

    if-nez v5, :cond_1af

    iget v5, v4, Landroid/support/v4/view/ViewPager$LayoutParams;->FH:F

    cmpl-float v5, v5, v9

    if-nez v5, :cond_1af

    invoke-virtual {v1, v3}, Landroid/support/v4/view/ViewPager;->DW(Landroid/view/View;)Landroid/support/v4/view/ViewPager$b;

    move-result-object v3

    if-eqz v3, :cond_1af

    iget v5, v3, Landroid/support/v4/view/ViewPager$b;->Hw:F

    iput v5, v4, Landroid/support/v4/view/ViewPager$LayoutParams;->FH:F

    iget v3, v3, Landroid/support/v4/view/ViewPager$b;->DW:I

    iput v3, v4, Landroid/support/v4/view/ViewPager$LayoutParams;->v5:I

    :cond_1af
    add-int/lit8 v2, v2, 0x1

    goto :goto_189

    :cond_1b2
    invoke-direct/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->tp()V

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_1f1

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->findFocus()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1c6

    invoke-virtual {v1, v0}, Landroid/support/v4/view/ViewPager;->j6(Landroid/view/View;)Landroid/support/v4/view/ViewPager$b;

    move-result-object v3

    goto :goto_1c7

    :cond_1c6
    const/4 v3, 0x0

    :goto_1c7
    if-eqz v3, :cond_1cf

    iget v0, v3, Landroid/support/v4/view/ViewPager$b;->DW:I

    iget v2, v1, Landroid/support/v4/view/ViewPager;->tp:I

    if-eq v0, v2, :cond_1f1

    :cond_1cf
    const/4 v5, 0x0

    :goto_1d0
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge v5, v0, :cond_1f1

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/support/v4/view/ViewPager;->DW(Landroid/view/View;)Landroid/support/v4/view/ViewPager$b;

    move-result-object v2

    if-eqz v2, :cond_1ee

    iget v2, v2, Landroid/support/v4/view/ViewPager$b;->DW:I

    iget v3, v1, Landroid/support/v4/view/ViewPager;->tp:I

    if-ne v2, v3, :cond_1ee

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/view/View;->requestFocus(I)Z

    move-result v0

    if-eqz v0, :cond_1ee

    goto :goto_1f1

    :cond_1ee
    add-int/lit8 v5, v5, 0x1

    goto :goto_1d0

    :cond_1f1
    :goto_1f1
    return-void

    :cond_1f2
    :try_start_1f2
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getId()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0
    :try_end_1fe
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1f2 .. :try_end_1fe} :catch_1ff

    goto :goto_208

    :catch_1ff
    move-exception v0

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    :goto_208
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The application\'s PagerAdapter changed the adapter\'s contents without calling PagerAdapter#notifyDataSetChanged! Expected adapter item count: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Landroid/support/v4/view/ViewPager;->v5:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", found: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " Pager id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " Pager class: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " Problematic adapter: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v1, Landroid/support/v4/view/ViewPager;->u7:Landroid/support/v4/view/o;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_24c

    :goto_24b
    throw v0

    :goto_24c
    goto :goto_24b
.end method

.method FH()Z
    .registers 3

    iget v0, p0, Landroid/support/v4/view/ViewPager;->tp:I

    if-lez v0, :cond_a

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/view/ViewPager;->j6(IZ)V

    return v1

    :cond_a
    const/4 v0, 0x0

    return v0
.end method

.method Hw()Z
    .registers 4

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->u7:Landroid/support/v4/view/o;

    if-eqz v0, :cond_15

    iget v1, p0, Landroid/support/v4/view/ViewPager;->tp:I

    invoke-virtual {v0}, Landroid/support/v4/view/o;->j6()I

    move-result v0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    if-ge v1, v0, :cond_15

    iget v0, p0, Landroid/support/v4/view/ViewPager;->tp:I

    add-int/2addr v0, v2

    invoke-virtual {p0, v0, v2}, Landroid/support/v4/view/ViewPager;->j6(IZ)V

    return v2

    :cond_15
    const/4 v0, 0x0

    return v0
.end method

.method public addFocusables(Ljava/util/ArrayList;II)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;II)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v1

    const/high16 v2, 0x60000

    if-eq v1, v2, :cond_2f

    const/4 v2, 0x0

    :goto_d
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_2f

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_2c

    invoke-virtual {p0, v3}, Landroid/support/v4/view/ViewPager;->DW(Landroid/view/View;)Landroid/support/v4/view/ViewPager$b;

    move-result-object v4

    if-eqz v4, :cond_2c

    iget v4, v4, Landroid/support/v4/view/ViewPager$b;->DW:I

    iget v5, p0, Landroid/support/v4/view/ViewPager;->tp:I

    if-ne v4, v5, :cond_2c

    invoke-virtual {v3, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    :cond_2c
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_2f
    const/high16 p2, 0x40000

    if-ne v1, p2, :cond_39

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ne v0, p2, :cond_56

    :cond_39
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isFocusable()Z

    move-result p2

    if-nez p2, :cond_40

    return-void

    :cond_40
    const/4 p2, 0x1

    and-int/2addr p3, p2

    if-ne p3, p2, :cond_51

    invoke-virtual {p0}, Landroid/view/ViewGroup;->isInTouchMode()Z

    move-result p2

    if-eqz p2, :cond_51

    invoke-virtual {p0}, Landroid/view/ViewGroup;->isFocusableInTouchMode()Z

    move-result p2

    if-nez p2, :cond_51

    return-void

    :cond_51
    if-eqz p1, :cond_56

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_56
    return-void
.end method

.method public addTouchables(Ljava/util/ArrayList;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_23

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_20

    invoke-virtual {p0, v1}, Landroid/support/v4/view/ViewPager;->DW(Landroid/view/View;)Landroid/support/v4/view/ViewPager$b;

    move-result-object v2

    if-eqz v2, :cond_20

    iget v2, v2, Landroid/support/v4/view/ViewPager$b;->DW:I

    iget v3, p0, Landroid/support/v4/view/ViewPager;->tp:I

    if-ne v2, v3, :cond_20

    invoke-virtual {v1, p1}, Landroid/view/View;->addTouchables(Ljava/util/ArrayList;)V

    :cond_20
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_23
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .registers 7

    invoke-virtual {p0, p3}, Landroid/support/v4/view/ViewPager;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    if-nez v0, :cond_a

    invoke-virtual {p0, p3}, Landroid/support/v4/view/ViewPager;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    :cond_a
    move-object v0, p3

    check-cast v0, Landroid/support/v4/view/ViewPager$LayoutParams;

    iget-boolean v1, v0, Landroid/support/v4/view/ViewPager$LayoutParams;->j6:Z

    invoke-static {p1}, Landroid/support/v4/view/ViewPager;->FH(Landroid/view/View;)Z

    move-result v2

    or-int/2addr v1, v2

    iput-boolean v1, v0, Landroid/support/v4/view/ViewPager$LayoutParams;->j6:Z

    iget-boolean v1, p0, Landroid/support/v4/view/ViewPager;->er:Z

    if-eqz v1, :cond_30

    if-eqz v0, :cond_29

    iget-boolean v1, v0, Landroid/support/v4/view/ViewPager$LayoutParams;->j6:Z

    if-nez v1, :cond_21

    goto :goto_29

    :cond_21
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot add pager decor view during layout"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_29
    :goto_29
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/v4/view/ViewPager$LayoutParams;->Hw:Z

    invoke-virtual {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    goto :goto_33

    :cond_30
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    :goto_33
    return-void
.end method

.method public canScrollHorizontally(I)Z
    .registers 6

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->u7:Landroid/support/v4/view/o;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->getClientWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v2

    const/4 v3, 0x1

    if-gez p1, :cond_1b

    int-to-float p1, v0

    iget v0, p0, Landroid/support/v4/view/ViewPager;->U2:F

    mul-float p1, p1, v0

    float-to-int p1, p1

    if-le v2, p1, :cond_1a

    const/4 v1, 0x1

    :cond_1a
    return v1

    :cond_1b
    if-lez p1, :cond_26

    int-to-float p1, v0

    iget v0, p0, Landroid/support/v4/view/ViewPager;->a8:F

    mul-float p1, p1, v0

    float-to-int p1, p1

    if-ge v2, p1, :cond_26

    const/4 v1, 0x1

    :cond_26
    return v1
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .registers 3

    instance-of v0, p1, Landroid/support/v4/view/ViewPager$LayoutParams;

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
    .registers 5

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/view/ViewPager;->Ws:Z

    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->J8:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-nez v1, :cond_41

    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->J8:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v1

    if-eqz v1, :cond_41

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

    if-ne v0, v2, :cond_2b

    if-eq v1, v3, :cond_3d

    :cond_2b
    invoke-virtual {p0, v2, v3}, Landroid/view/ViewGroup;->scrollTo(II)V

    invoke-direct {p0, v2}, Landroid/support/v4/view/ViewPager;->Zo(I)Z

    move-result v0

    if-nez v0, :cond_3d

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->J8:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v3}, Landroid/view/ViewGroup;->scrollTo(II)V

    :cond_3d
    invoke-static {p0}, Landroid/support/v4/view/s;->tp(Landroid/view/View;)V

    return-void

    :cond_41
    invoke-direct {p0, v0}, Landroid/support/v4/view/ViewPager;->j6(Z)V

    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 3

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_f

    invoke-virtual {p0, p1}, Landroid/support/v4/view/ViewPager;->j6(Landroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_d

    goto :goto_f

    :cond_d
    const/4 p1, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 p1, 0x1

    :goto_10
    return p1
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 8

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v1, 0x1000

    if-ne v0, v1, :cond_d

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p1

    return p1

    :cond_d
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_13
    if-ge v2, v0, :cond_36

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_33

    invoke-virtual {p0, v3}, Landroid/support/v4/view/ViewPager;->DW(Landroid/view/View;)Landroid/support/v4/view/ViewPager$b;

    move-result-object v4

    if-eqz v4, :cond_33

    iget v4, v4, Landroid/support/v4/view/ViewPager$b;->DW:I

    iget v5, p0, Landroid/support/v4/view/ViewPager;->tp:I

    if-ne v4, v5, :cond_33

    invoke-virtual {v3, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v3

    if-eqz v3, :cond_33

    const/4 p1, 0x1

    return p1

    :cond_33
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    :cond_36
    return v1
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 11

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getOverScrollMode()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_24

    const/4 v2, 0x1

    if-ne v0, v2, :cond_18

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->u7:Landroid/support/v4/view/o;

    if-eqz v0, :cond_18

    invoke-virtual {v0}, Landroid/support/v4/view/o;->j6()I

    move-result v0

    if-le v0, v2, :cond_18

    goto :goto_24

    :cond_18
    iget-object p1, p0, Landroid/support/v4/view/ViewPager;->Mz:Landroid/widget/EdgeEffect;

    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->finish()V

    iget-object p1, p0, Landroid/support/v4/view/ViewPager;->I:Landroid/widget/EdgeEffect;

    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->finish()V

    goto/16 :goto_a9

    :cond_24
    :goto_24
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->Mz:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-nez v0, :cond_65

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v3

    const/high16 v4, 0x43870000  # 270.0f

    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->rotate(F)V

    neg-int v4, v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v5

    add-int/2addr v4, v5

    int-to-float v4, v4

    iget v5, p0, Landroid/support/v4/view/ViewPager;->U2:F

    int-to-float v6, v3

    mul-float v5, v5, v6

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v4, p0, Landroid/support/v4/view/ViewPager;->Mz:Landroid/widget/EdgeEffect;

    invoke-virtual {v4, v2, v3}, Landroid/widget/EdgeEffect;->setSize(II)V

    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->Mz:Landroid/widget/EdgeEffect;

    invoke-virtual {v2, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v2

    or-int/2addr v1, v2

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_65
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->I:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-nez v0, :cond_a9

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v5

    const/high16 v6, 0x42b40000  # 90.0f

    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->rotate(F)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v6

    neg-int v6, v6

    int-to-float v6, v6

    iget v7, p0, Landroid/support/v4/view/ViewPager;->a8:F

    const/high16 v8, 0x3f800000  # 1.0f

    add-float/2addr v7, v8

    neg-float v7, v7

    int-to-float v8, v2

    mul-float v7, v7, v8

    invoke-virtual {p1, v6, v7}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v6, p0, Landroid/support/v4/view/ViewPager;->I:Landroid/widget/EdgeEffect;

    sub-int/2addr v3, v4

    sub-int/2addr v3, v5

    invoke-virtual {v6, v3, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->I:Landroid/widget/EdgeEffect;

    invoke-virtual {v2, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v2

    or-int/2addr v1, v2

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_a9
    :goto_a9
    if-eqz v1, :cond_ae

    invoke-static {p0}, Landroid/support/v4/view/s;->tp(Landroid/view/View;)V

    :cond_ae
    return-void
.end method

.method protected drawableStateChanged()V
    .registers 3

    invoke-super {p0}, Landroid/view/ViewGroup;->drawableStateChanged()V

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->aM:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_14

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_14
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
    .registers 2

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    return-object p1
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

    if-ne v0, v1, :cond_9

    add-int/lit8 p1, p1, -0x1

    sub-int p2, p1, p2

    :cond_9
    iget-object p1, p0, Landroid/support/v4/view/ViewPager;->XG:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/support/v4/view/ViewPager$LayoutParams;

    iget p1, p1, Landroid/support/v4/view/ViewPager$LayoutParams;->Zo:I

    return p1
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

    const/high16 v0, 0x3f000000  # 0.5f

    sub-float/2addr p1, v0

    const v0, 0x3ef1463b

    mul-float p1, p1, v0

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float p1, v0

    return p1
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

    move-result p1

    iput p1, v0, Landroid/support/v4/view/ViewPager$b;->Hw:F

    if-ltz p2, :cond_28

    iget-object p1, p0, Landroid/support/v4/view/ViewPager;->Zo:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lt p2, p1, :cond_22

    goto :goto_28

    :cond_22
    iget-object p1, p0, Landroid/support/v4/view/ViewPager;->Zo:Ljava/util/ArrayList;

    invoke-virtual {p1, p2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_2d

    :cond_28
    :goto_28
    iget-object p1, p0, Landroid/support/v4/view/ViewPager;->Zo:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2d
    return-object v0
.end method

.method j6(Landroid/view/View;)Landroid/support/v4/view/ViewPager$b;
    .registers 3

    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eq v0, p0, :cond_13

    if-eqz v0, :cond_11

    instance-of p1, v0, Landroid/view/View;

    if-nez p1, :cond_d

    goto :goto_11

    :cond_d
    move-object p1, v0

    check-cast p1, Landroid/view/View;

    goto :goto_0

    :cond_11
    :goto_11
    const/4 p1, 0x0

    return-object p1

    :cond_13
    invoke-virtual {p0, p1}, Landroid/support/v4/view/ViewPager;->DW(Landroid/view/View;)Landroid/support/v4/view/ViewPager$b;

    move-result-object p1

    return-object p1
.end method

.method j6(Landroid/support/v4/view/ViewPager$e;)Landroid/support/v4/view/ViewPager$e;
    .registers 3

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->OW:Landroid/support/v4/view/ViewPager$e;

    iput-object p1, p0, Landroid/support/v4/view/ViewPager;->OW:Landroid/support/v4/view/ViewPager$e;

    return-object v0
.end method

.method j6()V
    .registers 11

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->u7:Landroid/support/v4/view/o;

    invoke-virtual {v0}, Landroid/support/v4/view/o;->j6()I

    move-result v0

    iput v0, p0, Landroid/support/v4/view/ViewPager;->v5:I

    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->Zo:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget v2, p0, Landroid/support/v4/view/ViewPager;->BT:I

    mul-int/lit8 v2, v2, 0x2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    const/4 v4, 0x0

    if-ge v1, v2, :cond_21

    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->Zo:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v1, v0, :cond_21

    const/4 v1, 0x1

    goto :goto_22

    :cond_21
    const/4 v1, 0x0

    :goto_22
    iget v2, p0, Landroid/support/v4/view/ViewPager;->tp:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_26
    iget-object v7, p0, Landroid/support/v4/view/ViewPager;->Zo:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v5, v7, :cond_7c

    iget-object v7, p0, Landroid/support/v4/view/ViewPager;->Zo:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/support/v4/view/ViewPager$b;

    iget-object v8, p0, Landroid/support/v4/view/ViewPager;->u7:Landroid/support/v4/view/o;

    iget-object v9, v7, Landroid/support/v4/view/ViewPager$b;->j6:Ljava/lang/Object;

    invoke-virtual {v8, v9}, Landroid/support/v4/view/o;->j6(Ljava/lang/Object;)I

    move-result v8

    const/4 v9, -0x1

    if-ne v8, v9, :cond_42

    goto :goto_7a

    :cond_42
    const/4 v9, -0x2

    if-ne v8, v9, :cond_6e

    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->Zo:Ljava/util/ArrayList;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v5, v5, -0x1

    if-nez v6, :cond_54

    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->u7:Landroid/support/v4/view/o;

    invoke-virtual {v1, p0}, Landroid/support/v4/view/o;->DW(Landroid/view/ViewGroup;)V

    const/4 v6, 0x1

    :cond_54
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->u7:Landroid/support/v4/view/o;

    iget v8, v7, Landroid/support/v4/view/ViewPager$b;->DW:I

    iget-object v9, v7, Landroid/support/v4/view/ViewPager$b;->j6:Ljava/lang/Object;

    invoke-virtual {v1, p0, v8, v9}, Landroid/support/v4/view/o;->j6(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    iget v1, p0, Landroid/support/v4/view/ViewPager;->tp:I

    iget v7, v7, Landroid/support/v4/view/ViewPager$b;->DW:I

    if-ne v1, v7, :cond_79

    add-int/lit8 v2, v0, -0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    goto :goto_79

    :cond_6e
    iget v9, v7, Landroid/support/v4/view/ViewPager$b;->DW:I

    if-eq v9, v8, :cond_7a

    iget v1, p0, Landroid/support/v4/view/ViewPager;->tp:I

    if-ne v9, v1, :cond_77

    move v2, v8

    :cond_77
    iput v8, v7, Landroid/support/v4/view/ViewPager$b;->DW:I

    :cond_79
    :goto_79
    const/4 v1, 0x1

    :cond_7a
    :goto_7a
    add-int/2addr v5, v3

    goto :goto_26

    :cond_7c
    if-eqz v6, :cond_83

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->u7:Landroid/support/v4/view/o;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/o;->j6(Landroid/view/ViewGroup;)V

    :cond_83
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->Zo:Ljava/util/ArrayList;

    sget-object v5, Landroid/support/v4/view/ViewPager;->DW:Ljava/util/Comparator;

    invoke-static {v0, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    if-eqz v1, :cond_ad

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_91
    if-ge v1, v0, :cond_a7

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/support/v4/view/ViewPager$LayoutParams;

    iget-boolean v6, v5, Landroid/support/v4/view/ViewPager$LayoutParams;->j6:Z

    if-nez v6, :cond_a4

    const/4 v6, 0x0

    iput v6, v5, Landroid/support/v4/view/ViewPager$LayoutParams;->FH:F

    :cond_a4
    add-int/lit8 v1, v1, 0x1

    goto :goto_91

    :cond_a7
    invoke-virtual {p0, v2, v4, v3}, Landroid/support/v4/view/ViewPager;->j6(IZZ)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    :cond_ad
    return-void
.end method

.method protected j6(IFI)V
    .registers 16

    iget v0, p0, Landroid/support/v4/view/ViewPager;->sy:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_6b

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    const/4 v7, 0x0

    :goto_1b
    if-ge v7, v6, :cond_6b

    invoke-virtual {p0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/support/v4/view/ViewPager$LayoutParams;

    iget-boolean v10, v9, Landroid/support/v4/view/ViewPager$LayoutParams;->j6:Z

    if-nez v10, :cond_2c

    goto :goto_68

    :cond_2c
    iget v9, v9, Landroid/support/v4/view/ViewPager$LayoutParams;->DW:I

    and-int/lit8 v9, v9, 0x7

    if-eq v9, v1, :cond_4d

    const/4 v10, 0x3

    if-eq v9, v10, :cond_47

    const/4 v10, 0x5

    if-eq v9, v10, :cond_3a

    move v9, v3

    goto :goto_5c

    :cond_3a
    sub-int v9, v5, v4

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    sub-int/2addr v9, v10

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    add-int/2addr v4, v10

    goto :goto_59

    :cond_47
    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v9

    add-int/2addr v9, v3

    goto :goto_5c

    :cond_4d
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    sub-int v9, v5, v9

    div-int/lit8 v9, v9, 0x2

    invoke-static {v9, v3}, Ljava/lang/Math;->max(II)I

    move-result v9

    :goto_59
    move v11, v9

    move v9, v3

    move v3, v11

    :goto_5c
    add-int/2addr v3, v0

    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    move-result v10

    sub-int/2addr v3, v10

    if-eqz v3, :cond_67

    invoke-virtual {v8, v3}, Landroid/view/View;->offsetLeftAndRight(I)V

    :cond_67
    move v3, v9

    :goto_68
    add-int/lit8 v7, v7, 0x1

    goto :goto_1b

    :cond_6b
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v4/view/ViewPager;->DW(IFI)V

    iget-object p1, p0, Landroid/support/v4/view/ViewPager;->XX:Landroid/support/v4/view/ViewPager$f;

    if-eqz p1, :cond_9f

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    :goto_7a
    if-ge v2, p2, :cond_9f

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager$LayoutParams;

    iget-boolean v0, v0, Landroid/support/v4/view/ViewPager$LayoutParams;->j6:Z

    if-eqz v0, :cond_8b

    goto :goto_9c

    :cond_8b
    invoke-virtual {p3}, Landroid/view/View;->getLeft()I

    move-result v0

    sub-int/2addr v0, p1

    int-to-float v0, v0

    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->getClientWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v0, v3

    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->XX:Landroid/support/v4/view/ViewPager$f;

    invoke-interface {v3, p3, v0}, Landroid/support/v4/view/ViewPager$f;->j6(Landroid/view/View;F)V

    :goto_9c
    add-int/lit8 v2, v2, 0x1

    goto :goto_7a

    :cond_9f
    iput-boolean v1, p0, Landroid/support/v4/view/ViewPager;->Qq:Z

    return-void
.end method

.method j6(III)V
    .registers 13

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_b

    invoke-direct {p0, v1}, Landroid/support/v4/view/ViewPager;->setScrollingCacheEnabled(Z)V

    return-void

    :cond_b
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->J8:Landroid/widget/Scroller;

    const/4 v2, 0x1

    if-eqz v0, :cond_18

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_18

    const/4 v0, 0x1

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    :goto_19
    if-eqz v0, :cond_35

    iget-boolean v0, p0, Landroid/support/v4/view/ViewPager;->Ws:Z

    if-eqz v0, :cond_26

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->J8:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    goto :goto_2c

    :cond_26
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->J8:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getStartX()I

    move-result v0

    :goto_2c
    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->J8:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->abortAnimation()V

    invoke-direct {p0, v1}, Landroid/support/v4/view/ViewPager;->setScrollingCacheEnabled(Z)V

    goto :goto_39

    :cond_35
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v0

    :goto_39
    move v4, v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v5

    sub-int v6, p1, v4

    sub-int v7, p2, v5

    if-nez v6, :cond_50

    if-nez v7, :cond_50

    invoke-direct {p0, v1}, Landroid/support/v4/view/ViewPager;->j6(Z)V

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->v5()V

    invoke-virtual {p0, v1}, Landroid/support/v4/view/ViewPager;->setScrollState(I)V

    return-void

    :cond_50
    invoke-direct {p0, v2}, Landroid/support/v4/view/ViewPager;->setScrollingCacheEnabled(Z)V

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Landroid/support/v4/view/ViewPager;->setScrollState(I)V

    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->getClientWidth()I

    move-result p1

    div-int/lit8 p2, p1, 0x2

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    int-to-float p1, p1

    const/high16 v2, 0x3f800000  # 1.0f

    mul-float v0, v0, v2

    div-float/2addr v0, p1

    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    int-to-float p2, p2

    invoke-virtual {p0, v0}, Landroid/support/v4/view/ViewPager;->j6(F)F

    move-result v0

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result p3

    if-lez p3, :cond_8b

    mul-float v0, v0, p2

    add-float/2addr p2, v0

    int-to-float p1, p3

    div-float/2addr p2, p1

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/high16 p2, 0x447a0000  # 1000.0f

    mul-float p1, p1, p2

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    mul-int/lit8 p1, p1, 0x4

    goto :goto_a5

    :cond_8b
    iget-object p2, p0, Landroid/support/v4/view/ViewPager;->u7:Landroid/support/v4/view/o;

    iget p3, p0, Landroid/support/v4/view/ViewPager;->tp:I

    invoke-virtual {p2, p3}, Landroid/support/v4/view/o;->DW(I)F

    move-result p2

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result p3

    int-to-float p3, p3

    mul-float p1, p1, p2

    iget p2, p0, Landroid/support/v4/view/ViewPager;->XL:I

    int-to-float p2, p2

    add-float/2addr p1, p2

    div-float/2addr p3, p1

    add-float/2addr p3, v2

    const/high16 p1, 0x42c80000  # 100.0f

    mul-float p3, p3, p1

    float-to-int p1, p3

    :goto_a5
    const/16 p2, 0x258

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v8

    iput-boolean v1, p0, Landroid/support/v4/view/ViewPager;->Ws:Z

    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->J8:Landroid/widget/Scroller;

    invoke-virtual/range {v3 .. v8}, Landroid/widget/Scroller;->startScroll(IIIII)V

    invoke-static {p0}, Landroid/support/v4/view/s;->tp(Landroid/view/View;)V

    return-void
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
    .registers 9

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->u7:Landroid/support/v4/view/o;

    const/4 v1, 0x0

    if-eqz v0, :cond_6e

    invoke-virtual {v0}, Landroid/support/v4/view/o;->j6()I

    move-result v0

    if-gtz v0, :cond_c

    goto :goto_6e

    :cond_c
    if-nez p3, :cond_1e

    iget p3, p0, Landroid/support/v4/view/ViewPager;->tp:I

    if-ne p3, p1, :cond_1e

    iget-object p3, p0, Landroid/support/v4/view/ViewPager;->Zo:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-eqz p3, :cond_1e

    invoke-direct {p0, v1}, Landroid/support/v4/view/ViewPager;->setScrollingCacheEnabled(Z)V

    return-void

    :cond_1e
    const/4 p3, 0x1

    if-gez p1, :cond_23

    const/4 p1, 0x0

    goto :goto_32

    :cond_23
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->u7:Landroid/support/v4/view/o;

    invoke-virtual {v0}, Landroid/support/v4/view/o;->j6()I

    move-result v0

    if-lt p1, v0, :cond_32

    iget-object p1, p0, Landroid/support/v4/view/ViewPager;->u7:Landroid/support/v4/view/o;

    invoke-virtual {p1}, Landroid/support/v4/view/o;->j6()I

    move-result p1

    sub-int/2addr p1, p3

    :cond_32
    :goto_32
    iget v0, p0, Landroid/support/v4/view/ViewPager;->BT:I

    iget v2, p0, Landroid/support/v4/view/ViewPager;->tp:I

    add-int v3, v2, v0

    if-gt p1, v3, :cond_3d

    sub-int/2addr v2, v0

    if-ge p1, v2, :cond_53

    :cond_3d
    const/4 v0, 0x0

    :goto_3e
    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->Zo:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_53

    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->Zo:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/view/ViewPager$b;

    iput-boolean p3, v2, Landroid/support/v4/view/ViewPager$b;->FH:Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_3e

    :cond_53
    iget v0, p0, Landroid/support/v4/view/ViewPager;->tp:I

    if-eq v0, p1, :cond_58

    const/4 v1, 0x1

    :cond_58
    iget-boolean p3, p0, Landroid/support/v4/view/ViewPager;->ca:Z

    if-eqz p3, :cond_67

    iput p1, p0, Landroid/support/v4/view/ViewPager;->tp:I

    if-eqz v1, :cond_63

    invoke-direct {p0, p1}, Landroid/support/v4/view/ViewPager;->Hw(I)V

    :cond_63
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    goto :goto_6d

    :cond_67
    invoke-virtual {p0, p1}, Landroid/support/v4/view/ViewPager;->FH(I)V

    invoke-direct {p0, p1, p2, p4, v1}, Landroid/support/v4/view/ViewPager;->j6(IZIZ)V

    :goto_6d
    return-void

    :cond_6e
    :goto_6e
    invoke-direct {p0, v1}, Landroid/support/v4/view/ViewPager;->setScrollingCacheEnabled(Z)V

    return-void
.end method

.method public j6(Landroid/support/v4/view/ViewPager$d;)V
    .registers 3

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->br:Ljava/util/List;

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->br:Ljava/util/List;

    :cond_b
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->br:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public j6(I)Z
    .registers 8

    invoke-virtual {p0}, Landroid/view/ViewGroup;->findFocus()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, p0, :cond_9

    goto :goto_66

    :cond_9
    if-eqz v0, :cond_67

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    :goto_f
    instance-of v4, v3, Landroid/view/ViewGroup;

    if-eqz v4, :cond_1c

    if-ne v3, p0, :cond_17

    const/4 v3, 0x1

    goto :goto_1d

    :cond_17
    invoke-interface {v3}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    goto :goto_f

    :cond_1c
    const/4 v3, 0x0

    :goto_1d
    if-nez v3, :cond_67

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    :goto_33
    instance-of v4, v0, Landroid/view/ViewGroup;

    if-eqz v4, :cond_4c

    const-string v4, " => "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_33

    :cond_4c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "arrowScroll tried to find focus based on non-child current focused view "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "ViewPager"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_66
    const/4 v0, 0x0

    :cond_67
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v3

    invoke-virtual {v3, p0, v0, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x42

    const/16 v5, 0x11

    if-eqz v3, :cond_b3

    if-eq v3, v0, :cond_b3

    if-ne p1, v5, :cond_98

    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->gn:Landroid/graphics/Rect;

    invoke-direct {p0, v1, v3}, Landroid/support/v4/view/ViewPager;->j6(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->gn:Landroid/graphics/Rect;

    invoke-direct {p0, v2, v0}, Landroid/support/v4/view/ViewPager;->j6(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    if-eqz v0, :cond_92

    if-lt v1, v2, :cond_92

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->FH()Z

    move-result v0

    goto :goto_96

    :cond_92
    invoke-virtual {v3}, Landroid/view/View;->requestFocus()Z

    move-result v0

    :goto_96
    move v2, v0

    goto :goto_c6

    :cond_98
    if-ne p1, v4, :cond_c6

    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->gn:Landroid/graphics/Rect;

    invoke-direct {p0, v1, v3}, Landroid/support/v4/view/ViewPager;->j6(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->gn:Landroid/graphics/Rect;

    invoke-direct {p0, v2, v0}, Landroid/support/v4/view/ViewPager;->j6(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    if-eqz v0, :cond_92

    if-gt v1, v2, :cond_92

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->Hw()Z

    move-result v0

    goto :goto_96

    :cond_b3
    if-eq p1, v5, :cond_c2

    if-ne p1, v1, :cond_b8

    goto :goto_c2

    :cond_b8
    if-eq p1, v4, :cond_bd

    const/4 v0, 0x2

    if-ne p1, v0, :cond_c6

    :cond_bd
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->Hw()Z

    move-result v2

    goto :goto_c6

    :cond_c2
    :goto_c2
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->FH()Z

    move-result v2

    :cond_c6
    :goto_c6
    if-eqz v2, :cond_cf

    invoke-static {p1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->playSoundEffect(I)V

    :cond_cf
    return v2
.end method

.method public j6(Landroid/view/KeyEvent;)Z
    .registers 5

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_4f

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x15

    const/4 v2, 0x2

    if-eq v0, v1, :cond_3d

    const/16 v1, 0x16

    if-eq v0, v1, :cond_2f

    const/16 v1, 0x3d

    if-eq v0, v1, :cond_18

    goto :goto_4f

    :cond_18
    invoke-virtual {p1}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-virtual {p0, v2}, Landroid/support/v4/view/ViewPager;->j6(I)Z

    move-result p1

    goto :goto_50

    :cond_23
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result p1

    if-eqz p1, :cond_4f

    invoke-virtual {p0, v0}, Landroid/support/v4/view/ViewPager;->j6(I)Z

    move-result p1

    goto :goto_50

    :cond_2f
    invoke-virtual {p1, v2}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result p1

    if-eqz p1, :cond_3a

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->Hw()Z

    move-result p1

    goto :goto_50

    :cond_3a
    const/16 p1, 0x42

    goto :goto_4a

    :cond_3d
    invoke-virtual {p1, v2}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result p1

    if-eqz p1, :cond_48

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->FH()Z

    move-result p1

    goto :goto_50

    :cond_48
    const/16 p1, 0x11

    :goto_4a
    invoke-virtual {p0, p1}, Landroid/support/v4/view/ViewPager;->j6(I)Z

    move-result p1

    goto :goto_50

    :cond_4f
    :goto_4f
    const/4 p1, 0x0

    :goto_50
    return p1
.end method

.method protected j6(Landroid/view/View;ZIII)Z
    .registers 18

    move-object v0, p1

    instance-of v1, v0, Landroid/view/ViewGroup;

    const/4 v2, 0x1

    if-eqz v1, :cond_52

    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v4

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    sub-int/2addr v5, v2

    :goto_16
    if-ltz v5, :cond_52

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    add-int v6, p4, v3

    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v8

    if-lt v6, v8, :cond_4f

    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    move-result v8

    if-ge v6, v8, :cond_4f

    add-int v8, p5, v4

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v9

    if-lt v8, v9, :cond_4f

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v9

    if-ge v8, v9, :cond_4f

    const/4 v9, 0x1

    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v10

    sub-int v10, v6, v10

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v6

    sub-int v11, v8, v6

    move-object v6, p0

    move v8, v9

    move v9, p3

    invoke-virtual/range {v6 .. v11}, Landroid/support/v4/view/ViewPager;->j6(Landroid/view/View;ZIII)Z

    move-result v6

    if-eqz v6, :cond_4f

    return v2

    :cond_4f
    add-int/lit8 v5, v5, -0x1

    goto :goto_16

    :cond_52
    if-eqz p2, :cond_5d

    move v1, p3

    neg-int v1, v1

    invoke-virtual {p1, v1}, Landroid/view/View;->canScrollHorizontally(I)Z

    move-result v0

    if-eqz v0, :cond_5d

    goto :goto_5e

    :cond_5d
    const/4 v2, 0x0

    :goto_5e
    return v2
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

    if-eqz v0, :cond_14

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_14

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->J8:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    :cond_14
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 19

    move-object/from16 v0, p0

    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    iget v1, v0, Landroid/support/v4/view/ViewPager;->XL:I

    if-lez v1, :cond_ab

    iget-object v1, v0, Landroid/support/v4/view/ViewPager;->aM:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_ab

    iget-object v1, v0, Landroid/support/v4/view/ViewPager;->Zo:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_ab

    iget-object v1, v0, Landroid/support/v4/view/ViewPager;->u7:Landroid/support/v4/view/o;

    if-eqz v1, :cond_ab

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v2

    iget v3, v0, Landroid/support/v4/view/ViewPager;->XL:I

    int-to-float v3, v3

    int-to-float v4, v2

    div-float/2addr v3, v4

    iget-object v5, v0, Landroid/support/v4/view/ViewPager;->Zo:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/v4/view/ViewPager$b;

    iget v7, v5, Landroid/support/v4/view/ViewPager$b;->v5:F

    iget-object v8, v0, Landroid/support/v4/view/ViewPager;->Zo:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    iget v9, v5, Landroid/support/v4/view/ViewPager$b;->DW:I

    iget-object v10, v0, Landroid/support/v4/view/ViewPager;->Zo:Ljava/util/ArrayList;

    add-int/lit8 v11, v8, -0x1

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/support/v4/view/ViewPager$b;

    iget v10, v10, Landroid/support/v4/view/ViewPager$b;->DW:I

    :goto_45
    if-ge v9, v10, :cond_ab

    :goto_47
    iget v11, v5, Landroid/support/v4/view/ViewPager$b;->DW:I

    if-le v9, v11, :cond_58

    if-ge v6, v8, :cond_58

    iget-object v5, v0, Landroid/support/v4/view/ViewPager;->Zo:Ljava/util/ArrayList;

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/v4/view/ViewPager$b;

    goto :goto_47

    :cond_58
    iget v11, v5, Landroid/support/v4/view/ViewPager$b;->DW:I

    if-ne v9, v11, :cond_65

    iget v7, v5, Landroid/support/v4/view/ViewPager$b;->v5:F

    iget v11, v5, Landroid/support/v4/view/ViewPager$b;->Hw:F

    add-float/2addr v7, v11

    mul-float v11, v7, v4

    add-float/2addr v7, v3

    goto :goto_72

    :cond_65
    iget-object v11, v0, Landroid/support/v4/view/ViewPager;->u7:Landroid/support/v4/view/o;

    invoke-virtual {v11, v9}, Landroid/support/v4/view/o;->DW(I)F

    move-result v11

    add-float v12, v7, v11

    mul-float v12, v12, v4

    add-float/2addr v11, v3

    add-float/2addr v7, v11

    move v11, v12

    :goto_72
    iget v12, v0, Landroid/support/v4/view/ViewPager;->XL:I

    int-to-float v12, v12

    add-float/2addr v12, v11

    int-to-float v13, v1

    cmpl-float v12, v12, v13

    if-lez v12, :cond_9a

    iget-object v12, v0, Landroid/support/v4/view/ViewPager;->aM:Landroid/graphics/drawable/Drawable;

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v13

    iget v14, v0, Landroid/support/v4/view/ViewPager;->j3:I

    iget v15, v0, Landroid/support/v4/view/ViewPager;->XL:I

    int-to-float v15, v15

    add-float/2addr v15, v11

    invoke-static {v15}, Ljava/lang/Math;->round(F)I

    move-result v15

    move/from16 v16, v3

    iget v3, v0, Landroid/support/v4/view/ViewPager;->Mr:I

    invoke-virtual {v12, v13, v14, v15, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v3, v0, Landroid/support/v4/view/ViewPager;->aM:Landroid/graphics/drawable/Drawable;

    move-object/from16 v12, p1

    invoke-virtual {v3, v12}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_9e

    :cond_9a
    move-object/from16 v12, p1

    move/from16 v16, v3

    :goto_9e
    add-int v3, v1, v2

    int-to-float v3, v3

    cmpl-float v3, v11, v3

    if-lez v3, :cond_a6

    goto :goto_ab

    :cond_a6
    add-int/lit8 v9, v9, 0x1

    move/from16 v3, v16

    goto :goto_45

    :cond_ab
    :goto_ab
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 18

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x3

    const/4 v8, 0x0

    if-eq v0, v1, :cond_11a

    const/4 v9, 0x1

    if-ne v0, v9, :cond_13

    goto/16 :goto_11a

    :cond_13
    if-eqz v0, :cond_1f

    iget-boolean v1, v6, Landroid/support/v4/view/ViewPager;->vy:Z

    if-eqz v1, :cond_1a

    return v9

    :cond_1a
    iget-boolean v1, v6, Landroid/support/v4/view/ViewPager;->P8:Z

    if-eqz v1, :cond_1f

    return v8

    :cond_1f
    const/4 v1, 0x2

    if-eqz v0, :cond_b8

    if-eq v0, v1, :cond_2e

    const/4 v1, 0x6

    if-eq v0, v1, :cond_29

    goto/16 :goto_108

    :cond_29
    invoke-direct/range {p0 .. p1}, Landroid/support/v4/view/ViewPager;->j6(Landroid/view/MotionEvent;)V

    goto/16 :goto_108

    :cond_2e
    iget v0, v6, Landroid/support/v4/view/ViewPager;->cb:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_35

    goto/16 :goto_108

    :cond_35
    invoke-virtual {v7, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    invoke-virtual {v7, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v10

    iget v1, v6, Landroid/support/v4/view/ViewPager;->KD:F

    sub-float v11, v10, v1

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v12

    invoke-virtual {v7, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v13

    iget v0, v6, Landroid/support/v4/view/ViewPager;->sh:F

    sub-float v0, v13, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v14

    const/4 v15, 0x0

    cmpl-float v0, v11, v15

    if-eqz v0, :cond_73

    iget v0, v6, Landroid/support/v4/view/ViewPager;->KD:F

    invoke-direct {v6, v0, v11}, Landroid/support/v4/view/ViewPager;->j6(FF)Z

    move-result v0

    if-nez v0, :cond_73

    const/4 v2, 0x0

    float-to-int v3, v11

    float-to-int v4, v10

    float-to-int v5, v13

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/view/ViewPager;->j6(Landroid/view/View;ZIII)Z

    move-result v0

    if-eqz v0, :cond_73

    iput v10, v6, Landroid/support/v4/view/ViewPager;->KD:F

    iput v13, v6, Landroid/support/v4/view/ViewPager;->ro:F

    iput-boolean v9, v6, Landroid/support/v4/view/ViewPager;->P8:Z

    return v8

    :cond_73
    iget v0, v6, Landroid/support/v4/view/ViewPager;->SI:I

    int-to-float v1, v0

    cmpl-float v1, v12, v1

    if-lez v1, :cond_a3

    const/high16 v1, 0x3f000000  # 0.5f

    mul-float v12, v12, v1

    cmpl-float v1, v12, v14

    if-lez v1, :cond_a3

    iput-boolean v9, v6, Landroid/support/v4/view/ViewPager;->vy:Z

    invoke-direct {v6, v9}, Landroid/support/v4/view/ViewPager;->FH(Z)V

    invoke-virtual {v6, v9}, Landroid/support/v4/view/ViewPager;->setScrollState(I)V

    cmpl-float v0, v11, v15

    if-lez v0, :cond_95

    iget v0, v6, Landroid/support/v4/view/ViewPager;->cn:F

    iget v1, v6, Landroid/support/v4/view/ViewPager;->SI:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    goto :goto_9b

    :cond_95
    iget v0, v6, Landroid/support/v4/view/ViewPager;->cn:F

    iget v1, v6, Landroid/support/v4/view/ViewPager;->SI:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    :goto_9b
    iput v0, v6, Landroid/support/v4/view/ViewPager;->KD:F

    iput v13, v6, Landroid/support/v4/view/ViewPager;->ro:F

    invoke-direct {v6, v9}, Landroid/support/v4/view/ViewPager;->setScrollingCacheEnabled(Z)V

    goto :goto_aa

    :cond_a3
    int-to-float v0, v0

    cmpl-float v0, v14, v0

    if-lez v0, :cond_aa

    iput-boolean v9, v6, Landroid/support/v4/view/ViewPager;->P8:Z

    :cond_aa
    :goto_aa
    iget-boolean v0, v6, Landroid/support/v4/view/ViewPager;->vy:Z

    if-eqz v0, :cond_108

    invoke-direct {v6, v10}, Landroid/support/v4/view/ViewPager;->DW(F)Z

    move-result v0

    if-eqz v0, :cond_108

    invoke-static/range {p0 .. p0}, Landroid/support/v4/view/s;->tp(Landroid/view/View;)V

    goto :goto_108

    :cond_b8
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, v6, Landroid/support/v4/view/ViewPager;->cn:F

    iput v0, v6, Landroid/support/v4/view/ViewPager;->KD:F

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, v6, Landroid/support/v4/view/ViewPager;->sh:F

    iput v0, v6, Landroid/support/v4/view/ViewPager;->ro:F

    invoke-virtual {v7, v8}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, v6, Landroid/support/v4/view/ViewPager;->cb:I

    iput-boolean v8, v6, Landroid/support/v4/view/ViewPager;->P8:Z

    iput-boolean v9, v6, Landroid/support/v4/view/ViewPager;->Ws:Z

    iget-object v0, v6, Landroid/support/v4/view/ViewPager;->J8:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    iget v0, v6, Landroid/support/v4/view/ViewPager;->wc:I

    if-ne v0, v1, :cond_103

    iget-object v0, v6, Landroid/support/v4/view/ViewPager;->J8:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getFinalX()I

    move-result v0

    iget-object v1, v6, Landroid/support/v4/view/ViewPager;->J8:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrX()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, v6, Landroid/support/v4/view/ViewPager;->vJ:I

    if-le v0, v1, :cond_103

    iget-object v0, v6, Landroid/support/v4/view/ViewPager;->J8:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    iput-boolean v8, v6, Landroid/support/v4/view/ViewPager;->gW:Z

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->v5()V

    iput-boolean v9, v6, Landroid/support/v4/view/ViewPager;->vy:Z

    invoke-direct {v6, v9}, Landroid/support/v4/view/ViewPager;->FH(Z)V

    invoke-virtual {v6, v9}, Landroid/support/v4/view/ViewPager;->setScrollState(I)V

    goto :goto_108

    :cond_103
    invoke-direct {v6, v8}, Landroid/support/v4/view/ViewPager;->j6(Z)V

    iput-boolean v8, v6, Landroid/support/v4/view/ViewPager;->vy:Z

    :cond_108
    :goto_108
    iget-object v0, v6, Landroid/support/v4/view/ViewPager;->dx:Landroid/view/VelocityTracker;

    if-nez v0, :cond_112

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, v6, Landroid/support/v4/view/ViewPager;->dx:Landroid/view/VelocityTracker;

    :cond_112
    iget-object v0, v6, Landroid/support/v4/view/ViewPager;->dx:Landroid/view/VelocityTracker;

    invoke-virtual {v0, v7}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    iget-boolean v0, v6, Landroid/support/v4/view/ViewPager;->vy:Z

    return v0

    :cond_11a
    :goto_11a
    invoke-direct/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->u7()Z

    return v8
.end method

.method protected onLayout(ZIIII)V
    .registers 24

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    sub-int v2, p4, p2

    sub-int v3, p5, p3

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v8

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_20
    const/16 v12, 0x8

    if-ge v10, v1, :cond_b6

    invoke-virtual {v0, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    move-result v14

    if-eq v14, v12, :cond_b2

    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Landroid/support/v4/view/ViewPager$LayoutParams;

    iget-boolean v14, v12, Landroid/support/v4/view/ViewPager$LayoutParams;->j6:Z

    if-eqz v14, :cond_b2

    iget v12, v12, Landroid/support/v4/view/ViewPager$LayoutParams;->DW:I

    and-int/lit8 v14, v12, 0x7

    and-int/lit8 v12, v12, 0x70

    const/4 v15, 0x1

    if-eq v14, v15, :cond_5c

    const/4 v15, 0x3

    if-eq v14, v15, :cond_56

    const/4 v15, 0x5

    if-eq v14, v15, :cond_49

    move v14, v4

    goto :goto_6d

    :cond_49
    sub-int v14, v2, v6

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    sub-int/2addr v14, v15

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    add-int/2addr v6, v15

    goto :goto_68

    :cond_56
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v14

    add-int/2addr v14, v4

    goto :goto_6d

    :cond_5c
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v14

    sub-int v14, v2, v14

    div-int/lit8 v14, v14, 0x2

    invoke-static {v14, v4}, Ljava/lang/Math;->max(II)I

    move-result v14

    :goto_68
    move/from16 v17, v14

    move v14, v4

    move/from16 v4, v17

    :goto_6d
    const/16 v15, 0x10

    if-eq v12, v15, :cond_8e

    const/16 v15, 0x30

    if-eq v12, v15, :cond_88

    const/16 v15, 0x50

    if-eq v12, v15, :cond_7b

    move v12, v5

    goto :goto_9f

    :cond_7b
    sub-int v12, v3, v7

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    sub-int/2addr v12, v15

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    add-int/2addr v7, v15

    goto :goto_9a

    :cond_88
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    add-int/2addr v12, v5

    goto :goto_9f

    :cond_8e
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    sub-int v12, v3, v12

    div-int/lit8 v12, v12, 0x2

    invoke-static {v12, v5}, Ljava/lang/Math;->max(II)I

    move-result v12

    :goto_9a
    move/from16 v17, v12

    move v12, v5

    move/from16 v5, v17

    :goto_9f
    add-int/2addr v4, v8

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    add-int/2addr v15, v4

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v16

    add-int v9, v5, v16

    invoke-virtual {v13, v4, v5, v15, v9}, Landroid/view/View;->layout(IIII)V

    add-int/lit8 v11, v11, 0x1

    move v5, v12

    move v4, v14

    :cond_b2
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_20

    :cond_b6
    const/4 v8, 0x0

    :goto_b7
    if-ge v8, v1, :cond_109

    invoke-virtual {v0, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    move-result v10

    if-eq v10, v12, :cond_106

    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroid/support/v4/view/ViewPager$LayoutParams;

    iget-boolean v13, v10, Landroid/support/v4/view/ViewPager$LayoutParams;->j6:Z

    if-nez v13, :cond_106

    invoke-virtual {v0, v9}, Landroid/support/v4/view/ViewPager;->DW(Landroid/view/View;)Landroid/support/v4/view/ViewPager$b;

    move-result-object v13

    if-eqz v13, :cond_106

    sub-int v14, v2, v4

    sub-int/2addr v14, v6

    int-to-float v14, v14

    iget v13, v13, Landroid/support/v4/view/ViewPager$b;->v5:F

    mul-float v13, v13, v14

    float-to-int v13, v13

    add-int/2addr v13, v4

    iget-boolean v15, v10, Landroid/support/v4/view/ViewPager$LayoutParams;->Hw:Z

    if-eqz v15, :cond_f9

    const/4 v15, 0x0

    iput-boolean v15, v10, Landroid/support/v4/view/ViewPager$LayoutParams;->Hw:Z

    iget v10, v10, Landroid/support/v4/view/ViewPager$LayoutParams;->FH:F

    mul-float v14, v14, v10

    float-to-int v10, v14

    const/high16 v14, 0x40000000  # 2.0f

    invoke-static {v10, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    sub-int v15, v3, v5

    sub-int/2addr v15, v7

    invoke-static {v15, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v14

    invoke-virtual {v9, v10, v14}, Landroid/view/View;->measure(II)V

    :cond_f9
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    add-int/2addr v10, v13

    invoke-virtual {v9}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    add-int/2addr v14, v5

    invoke-virtual {v9, v13, v5, v10, v14}, Landroid/view/View;->layout(IIII)V

    :cond_106
    add-int/lit8 v8, v8, 0x1

    goto :goto_b7

    :cond_109
    iput v5, v0, Landroid/support/v4/view/ViewPager;->j3:I

    sub-int/2addr v3, v7

    iput v3, v0, Landroid/support/v4/view/ViewPager;->Mr:I

    iput v11, v0, Landroid/support/v4/view/ViewPager;->sy:I

    iget-boolean v1, v0, Landroid/support/v4/view/ViewPager;->ca:Z

    if-eqz v1, :cond_11b

    iget v1, v0, Landroid/support/v4/view/ViewPager;->tp:I

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2, v2}, Landroid/support/v4/view/ViewPager;->j6(IZIZ)V

    goto :goto_11c

    :cond_11b
    const/4 v2, 0x0

    :goto_11c
    iput-boolean v2, v0, Landroid/support/v4/view/ViewPager;->ca:Z

    return-void
.end method

.method protected onMeasure(II)V
    .registers 16

    const/4 v0, 0x0

    invoke-static {v0, p1}, Landroid/view/ViewGroup;->getDefaultSize(II)I

    move-result p1

    invoke-static {v0, p2}, Landroid/view/ViewGroup;->getDefaultSize(II)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result p1

    div-int/lit8 p2, p1, 0xa

    iget v1, p0, Landroid/support/v4/view/ViewPager;->ei:I

    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result p2

    iput p2, p0, Landroid/support/v4/view/ViewPager;->nw:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result p2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    sub-int/2addr v2, v3

    sub-int/2addr v2, v4

    sub-int/2addr p1, p2

    sub-int/2addr p1, v1

    const/4 p2, 0x0

    :goto_37
    const/16 v1, 0x8

    const/4 v3, 0x1

    const/high16 v4, 0x40000000  # 2.0f

    if-ge p2, v5, :cond_b5

    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-eq v7, v1, :cond_b2

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/v4/view/ViewPager$LayoutParams;

    if-eqz v1, :cond_b2

    iget-boolean v7, v1, Landroid/support/v4/view/ViewPager$LayoutParams;->j6:Z

    if-eqz v7, :cond_b2

    iget v7, v1, Landroid/support/v4/view/ViewPager$LayoutParams;->DW:I

    and-int/lit8 v8, v7, 0x7

    and-int/lit8 v7, v7, 0x70

    const/16 v9, 0x30

    if-eq v7, v9, :cond_65

    const/16 v9, 0x50

    if-ne v7, v9, :cond_63

    goto :goto_65

    :cond_63
    const/4 v7, 0x0

    goto :goto_66

    :cond_65
    :goto_65
    const/4 v7, 0x1

    :goto_66
    const/4 v9, 0x3

    if-eq v8, v9, :cond_6e

    const/4 v9, 0x5

    if-ne v8, v9, :cond_6d

    goto :goto_6e

    :cond_6d
    const/4 v3, 0x0

    :cond_6e
    :goto_6e
    const/high16 v8, -0x80000000

    if-eqz v7, :cond_75

    const/high16 v9, 0x40000000  # 2.0f

    goto :goto_7c

    :cond_75
    if-eqz v3, :cond_7a

    const/high16 v9, 0x40000000  # 2.0f

    goto :goto_7f

    :cond_7a
    const/high16 v9, -0x80000000

    :goto_7c
    move v8, v9

    const/high16 v9, -0x80000000

    :goto_7f
    iget v10, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v11, -0x1

    const/4 v12, -0x2

    if-eq v10, v12, :cond_8c

    if-eq v10, v11, :cond_88

    goto :goto_89

    :cond_88
    move v10, p1

    :goto_89
    const/high16 v8, 0x40000000  # 2.0f

    goto :goto_8d

    :cond_8c
    move v10, p1

    :goto_8d
    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v1, v12, :cond_96

    if-eq v1, v11, :cond_94

    goto :goto_98

    :cond_94
    move v1, v2

    goto :goto_98

    :cond_96
    move v1, v2

    move v4, v9

    :goto_98
    invoke-static {v10, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    invoke-static {v1, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {v6, v8, v1}, Landroid/view/View;->measure(II)V

    if-eqz v7, :cond_ab

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    sub-int/2addr v2, v1

    goto :goto_b2

    :cond_ab
    if-eqz v3, :cond_b2

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    sub-int/2addr p1, v1

    :cond_b2
    :goto_b2
    add-int/lit8 p2, p2, 0x1

    goto :goto_37

    :cond_b5
    invoke-static {p1, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    iput p2, p0, Landroid/support/v4/view/ViewPager;->lg:I

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    iput p2, p0, Landroid/support/v4/view/ViewPager;->rN:I

    iput-boolean v3, p0, Landroid/support/v4/view/ViewPager;->er:Z

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->v5()V

    iput-boolean v0, p0, Landroid/support/v4/view/ViewPager;->er:Z

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    :goto_cc
    if-ge v0, p2, :cond_f6

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eq v3, v1, :cond_f3

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/support/v4/view/ViewPager$LayoutParams;

    if-eqz v3, :cond_e4

    iget-boolean v5, v3, Landroid/support/v4/view/ViewPager$LayoutParams;->j6:Z

    if-nez v5, :cond_f3

    :cond_e4
    int-to-float v5, p1

    iget v3, v3, Landroid/support/v4/view/ViewPager$LayoutParams;->FH:F

    mul-float v5, v5, v3

    float-to-int v3, v5

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    iget v5, p0, Landroid/support/v4/view/ViewPager;->rN:I

    invoke-virtual {v2, v3, v5}, Landroid/view/View;->measure(II)V

    :cond_f3
    add-int/lit8 v0, v0, 0x1

    goto :goto_cc

    :cond_f6
    return-void
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .registers 11

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    and-int/lit8 v1, p1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_e

    move v1, v0

    const/4 v0, 0x0

    const/4 v4, 0x1

    goto :goto_12

    :cond_e
    add-int/lit8 v0, v0, -0x1

    const/4 v1, -0x1

    const/4 v4, -0x1

    :goto_12
    if-eq v0, v1, :cond_33

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_31

    invoke-virtual {p0, v5}, Landroid/support/v4/view/ViewPager;->DW(Landroid/view/View;)Landroid/support/v4/view/ViewPager$b;

    move-result-object v6

    if-eqz v6, :cond_31

    iget v6, v6, Landroid/support/v4/view/ViewPager$b;->DW:I

    iget v7, p0, Landroid/support/v4/view/ViewPager;->tp:I

    if-ne v6, v7, :cond_31

    invoke-virtual {v5, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v5

    if-eqz v5, :cond_31

    return v2

    :cond_31
    add-int/2addr v0, v4

    goto :goto_12

    :cond_33
    return v3
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 5

    instance-of v0, p1, Landroid/support/v4/view/ViewPager$SavedState;

    if-nez v0, :cond_8

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    :cond_8
    check-cast p1, Landroid/support/v4/view/ViewPager$SavedState;

    invoke-virtual {p1}, Landroid/support/v4/view/AbsSavedState;->j6()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->u7:Landroid/support/v4/view/o;

    if-eqz v0, :cond_24

    iget-object v1, p1, Landroid/support/v4/view/ViewPager$SavedState;->DW:Landroid/os/Parcelable;

    iget-object v2, p1, Landroid/support/v4/view/ViewPager$SavedState;->FH:Ljava/lang/ClassLoader;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/view/o;->j6(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V

    iget p1, p1, Landroid/support/v4/view/ViewPager$SavedState;->j6:I

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Landroid/support/v4/view/ViewPager;->j6(IZZ)V

    goto :goto_30

    :cond_24
    iget v0, p1, Landroid/support/v4/view/ViewPager$SavedState;->j6:I

    iput v0, p0, Landroid/support/v4/view/ViewPager;->EQ:I

    iget-object v0, p1, Landroid/support/v4/view/ViewPager$SavedState;->DW:Landroid/os/Parcelable;

    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->we:Landroid/os/Parcelable;

    iget-object p1, p1, Landroid/support/v4/view/ViewPager$SavedState;->FH:Ljava/lang/ClassLoader;

    iput-object p1, p0, Landroid/support/v4/view/ViewPager;->J0:Ljava/lang/ClassLoader;

    :goto_30
    return-void
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

    if-eqz v1, :cond_17

    invoke-virtual {v1}, Landroid/support/v4/view/o;->FH()Landroid/os/Parcelable;

    move-result-object v1

    iput-object v1, v0, Landroid/support/v4/view/ViewPager$SavedState;->DW:Landroid/os/Parcelable;

    :cond_17
    return-object v0
.end method

.method protected onSizeChanged(IIII)V
    .registers 5

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    if-eq p1, p3, :cond_a

    iget p2, p0, Landroid/support/v4/view/ViewPager;->XL:I

    invoke-direct {p0, p1, p3, p2, p2}, Landroid/support/v4/view/ViewPager;->j6(IIII)V

    :cond_a
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 9

    iget-boolean v0, p0, Landroid/support/v4/view/ViewPager;->g3:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    return v1

    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_14

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v0

    if-eqz v0, :cond_14

    return v2

    :cond_14
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->u7:Landroid/support/v4/view/o;

    if-eqz v0, :cond_155

    invoke-virtual {v0}, Landroid/support/v4/view/o;->j6()I

    move-result v0

    if-nez v0, :cond_20

    goto/16 :goto_155

    :cond_20
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->dx:Landroid/view/VelocityTracker;

    if-nez v0, :cond_2a

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->dx:Landroid/view/VelocityTracker;

    :cond_2a
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->dx:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    if-eqz v0, :cond_12f

    if-eq v0, v1, :cond_e2

    const/4 v3, 0x2

    if-eq v0, v3, :cond_73

    const/4 v3, 0x3

    if-eq v0, v3, :cond_68

    const/4 v3, 0x5

    if-eq v0, v3, :cond_58

    const/4 v3, 0x6

    if-eq v0, v3, :cond_47

    goto/16 :goto_14f

    :cond_47
    invoke-direct {p0, p1}, Landroid/support/v4/view/ViewPager;->j6(Landroid/view/MotionEvent;)V

    iget v0, p0, Landroid/support/v4/view/ViewPager;->cb:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result p1

    iput p1, p0, Landroid/support/v4/view/ViewPager;->KD:F

    goto/16 :goto_14f

    :cond_58
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    iput v3, p0, Landroid/support/v4/view/ViewPager;->KD:F

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    goto/16 :goto_14d

    :cond_68
    iget-boolean p1, p0, Landroid/support/v4/view/ViewPager;->vy:Z

    if-eqz p1, :cond_14f

    iget p1, p0, Landroid/support/v4/view/ViewPager;->tp:I

    invoke-direct {p0, p1, v1, v2, v2}, Landroid/support/v4/view/ViewPager;->j6(IZIZ)V

    goto/16 :goto_12a

    :cond_73
    iget-boolean v0, p0, Landroid/support/v4/view/ViewPager;->vy:Z

    if-nez v0, :cond_ce

    iget v0, p0, Landroid/support/v4/view/ViewPager;->cb:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_82

    goto/16 :goto_12a

    :cond_82
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    iget v4, p0, Landroid/support/v4/view/ViewPager;->KD:F

    sub-float v4, v3, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    iget v5, p0, Landroid/support/v4/view/ViewPager;->ro:F

    sub-float v5, v0, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    iget v6, p0, Landroid/support/v4/view/ViewPager;->SI:I

    int-to-float v6, v6

    cmpl-float v6, v4, v6

    if-lez v6, :cond_ce

    cmpl-float v4, v4, v5

    if-lez v4, :cond_ce

    iput-boolean v1, p0, Landroid/support/v4/view/ViewPager;->vy:Z

    invoke-direct {p0, v1}, Landroid/support/v4/view/ViewPager;->FH(Z)V

    iget v4, p0, Landroid/support/v4/view/ViewPager;->cn:F

    sub-float/2addr v3, v4

    const/4 v5, 0x0

    cmpl-float v3, v3, v5

    if-lez v3, :cond_b7

    iget v3, p0, Landroid/support/v4/view/ViewPager;->SI:I

    int-to-float v3, v3

    add-float/2addr v4, v3

    goto :goto_bb

    :cond_b7
    iget v3, p0, Landroid/support/v4/view/ViewPager;->SI:I

    int-to-float v3, v3

    sub-float/2addr v4, v3

    :goto_bb
    iput v4, p0, Landroid/support/v4/view/ViewPager;->KD:F

    iput v0, p0, Landroid/support/v4/view/ViewPager;->ro:F

    invoke-virtual {p0, v1}, Landroid/support/v4/view/ViewPager;->setScrollState(I)V

    invoke-direct {p0, v1}, Landroid/support/v4/view/ViewPager;->setScrollingCacheEnabled(Z)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_ce

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_ce
    iget-boolean v0, p0, Landroid/support/v4/view/ViewPager;->vy:Z

    if-eqz v0, :cond_14f

    iget v0, p0, Landroid/support/v4/view/ViewPager;->cb:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result p1

    invoke-direct {p0, p1}, Landroid/support/v4/view/ViewPager;->DW(F)Z

    move-result p1

    or-int/2addr v2, p1

    goto :goto_14f

    :cond_e2
    iget-boolean v0, p0, Landroid/support/v4/view/ViewPager;->vy:Z

    if-eqz v0, :cond_14f

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->dx:Landroid/view/VelocityTracker;

    iget v2, p0, Landroid/support/v4/view/ViewPager;->ef:I

    int-to-float v2, v2

    const/16 v3, 0x3e8

    invoke-virtual {v0, v3, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

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

    div-float/2addr v3, v2

    iget v2, v4, Landroid/support/v4/view/ViewPager$b;->v5:F

    sub-float/2addr v3, v2

    iget v2, v4, Landroid/support/v4/view/ViewPager$b;->Hw:F

    add-float/2addr v2, v5

    div-float/2addr v3, v2

    iget v2, p0, Landroid/support/v4/view/ViewPager;->cb:I

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result p1

    iget v2, p0, Landroid/support/v4/view/ViewPager;->cn:F

    sub-float/2addr p1, v2

    float-to-int p1, p1

    invoke-direct {p0, v6, v3, v0, p1}, Landroid/support/v4/view/ViewPager;->j6(IFII)I

    move-result p1

    invoke-virtual {p0, p1, v1, v1, v0}, Landroid/support/v4/view/ViewPager;->j6(IZZI)V

    :goto_12a
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->u7()Z

    move-result v2

    goto :goto_14f

    :cond_12f
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

    move-result p1

    :goto_14d
    iput p1, p0, Landroid/support/v4/view/ViewPager;->cb:I

    :cond_14f
    :goto_14f
    if-eqz v2, :cond_154

    invoke-static {p0}, Landroid/support/v4/view/s;->tp(Landroid/view/View;)V

    :cond_154
    return v1

    :cond_155
    :goto_155
    return v2
.end method

.method public removeView(Landroid/view/View;)V
    .registers 3

    iget-boolean v0, p0, Landroid/support/v4/view/ViewPager;->er:Z

    if-eqz v0, :cond_8

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->removeViewInLayout(Landroid/view/View;)V

    goto :goto_b

    :cond_8
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :goto_b
    return-void
.end method

.method public setAdapter(Landroid/support/v4/view/o;)V
    .registers 9

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->u7:Landroid/support/v4/view/o;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_3d

    invoke-virtual {v0, v1}, Landroid/support/v4/view/o;->DW(Landroid/database/DataSetObserver;)V

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->u7:Landroid/support/v4/view/o;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/o;->DW(Landroid/view/ViewGroup;)V

    const/4 v0, 0x0

    :goto_f
    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->Zo:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_2b

    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->Zo:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v4/view/ViewPager$b;

    iget-object v4, p0, Landroid/support/v4/view/ViewPager;->u7:Landroid/support/v4/view/o;

    iget v5, v3, Landroid/support/v4/view/ViewPager$b;->DW:I

    iget-object v3, v3, Landroid/support/v4/view/ViewPager$b;->j6:Ljava/lang/Object;

    invoke-virtual {v4, p0, v5, v3}, Landroid/support/v4/view/o;->j6(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    :cond_2b
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->u7:Landroid/support/v4/view/o;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/o;->j6(Landroid/view/ViewGroup;)V

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->Zo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->gn()V

    iput v2, p0, Landroid/support/v4/view/ViewPager;->tp:I

    invoke-virtual {p0, v2, v2}, Landroid/view/ViewGroup;->scrollTo(II)V

    :cond_3d
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->u7:Landroid/support/v4/view/o;

    iput-object p1, p0, Landroid/support/v4/view/ViewPager;->u7:Landroid/support/v4/view/o;

    iput v2, p0, Landroid/support/v4/view/ViewPager;->v5:I

    if-eqz p1, :cond_89

    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->QX:Landroid/support/v4/view/ViewPager$g;

    if-nez v3, :cond_50

    new-instance v3, Landroid/support/v4/view/ViewPager$g;

    invoke-direct {v3, p0}, Landroid/support/v4/view/ViewPager$g;-><init>(Landroid/support/v4/view/ViewPager;)V

    iput-object v3, p0, Landroid/support/v4/view/ViewPager;->QX:Landroid/support/v4/view/ViewPager$g;

    :cond_50
    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->u7:Landroid/support/v4/view/o;

    iget-object v4, p0, Landroid/support/v4/view/ViewPager;->QX:Landroid/support/v4/view/ViewPager$g;

    invoke-virtual {v3, v4}, Landroid/support/v4/view/o;->DW(Landroid/database/DataSetObserver;)V

    iput-boolean v2, p0, Landroid/support/v4/view/ViewPager;->gW:Z

    iget-boolean v3, p0, Landroid/support/v4/view/ViewPager;->ca:Z

    const/4 v4, 0x1

    iput-boolean v4, p0, Landroid/support/v4/view/ViewPager;->ca:Z

    iget-object v5, p0, Landroid/support/v4/view/ViewPager;->u7:Landroid/support/v4/view/o;

    invoke-virtual {v5}, Landroid/support/v4/view/o;->j6()I

    move-result v5

    iput v5, p0, Landroid/support/v4/view/ViewPager;->v5:I

    iget v5, p0, Landroid/support/v4/view/ViewPager;->EQ:I

    if-ltz v5, :cond_80

    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->u7:Landroid/support/v4/view/o;

    iget-object v5, p0, Landroid/support/v4/view/ViewPager;->we:Landroid/os/Parcelable;

    iget-object v6, p0, Landroid/support/v4/view/ViewPager;->J0:Ljava/lang/ClassLoader;

    invoke-virtual {v3, v5, v6}, Landroid/support/v4/view/o;->j6(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V

    iget v3, p0, Landroid/support/v4/view/ViewPager;->EQ:I

    invoke-virtual {p0, v3, v2, v4}, Landroid/support/v4/view/ViewPager;->j6(IZZ)V

    const/4 v3, -0x1

    iput v3, p0, Landroid/support/v4/view/ViewPager;->EQ:I

    iput-object v1, p0, Landroid/support/v4/view/ViewPager;->we:Landroid/os/Parcelable;

    iput-object v1, p0, Landroid/support/v4/view/ViewPager;->J0:Ljava/lang/ClassLoader;

    goto :goto_89

    :cond_80
    if-nez v3, :cond_86

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->v5()V

    goto :goto_89

    :cond_86
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    :cond_89
    :goto_89
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->br:Ljava/util/List;

    if-eqz v1, :cond_a9

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_a9

    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->br:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    :goto_99
    if-ge v2, v1, :cond_a9

    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->br:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v4/view/ViewPager$d;

    invoke-interface {v3, p0, v0, p1}, Landroid/support/v4/view/ViewPager$d;->j6(Landroid/support/v4/view/ViewPager;Landroid/support/v4/view/o;Landroid/support/v4/view/o;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_99

    :cond_a9
    return-void
.end method

.method public setCurrentItem(I)V
    .registers 4

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/view/ViewPager;->gW:Z

    iget-boolean v1, p0, Landroid/support/v4/view/ViewPager;->ca:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, p1, v1, v0}, Landroid/support/v4/view/ViewPager;->j6(IZZ)V

    return-void
.end method

.method public setOffscreenPageLimit(I)V
    .registers 5

    const/4 v0, 0x1

    if-ge p1, v0, :cond_22

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Requested offscreen page limit "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " too small; defaulting to "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "ViewPager"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    :cond_22
    iget v0, p0, Landroid/support/v4/view/ViewPager;->BT:I

    if-eq p1, v0, :cond_2b

    iput p1, p0, Landroid/support/v4/view/ViewPager;->BT:I

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->v5()V

    :cond_2b
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

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/support/v4/view/ViewPager;->setPageMarginDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setPageMarginDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    iput-object p1, p0, Landroid/support/v4/view/ViewPager;->aM:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_7

    invoke-virtual {p0}, Landroid/view/ViewGroup;->refreshDrawableState()V

    :cond_7
    if-nez p1, :cond_b

    const/4 p1, 0x1

    goto :goto_c

    :cond_b
    const/4 p1, 0x0

    :goto_c
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setWillNotDraw(Z)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method

.method setScrollState(I)V
    .registers 3

    iget v0, p0, Landroid/support/v4/view/ViewPager;->wc:I

    if-ne v0, p1, :cond_5

    return-void

    :cond_5
    iput p1, p0, Landroid/support/v4/view/ViewPager;->wc:I

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->XX:Landroid/support/v4/view/ViewPager$f;

    if-eqz v0, :cond_13

    if-eqz p1, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    invoke-direct {p0, v0}, Landroid/support/v4/view/ViewPager;->DW(Z)V

    :cond_13
    invoke-direct {p0, p1}, Landroid/support/v4/view/ViewPager;->v5(I)V

    return-void
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

    if-nez v0, :cond_d

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->aM:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_b

    goto :goto_d

    :cond_b
    const/4 p1, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 p1, 0x1

    :goto_e
    return p1
.end method
