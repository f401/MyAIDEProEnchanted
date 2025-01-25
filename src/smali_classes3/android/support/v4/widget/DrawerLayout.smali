.class public Landroid/support/v4/widget/DrawerLayout;
.super Landroid/view/ViewGroup;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/widget/DrawerLayout$LayoutParams;,
        Landroid/support/v4/widget/DrawerLayout$SavedState;,
        Landroid/support/v4/widget/DrawerLayout$a;,
        Landroid/support/v4/widget/DrawerLayout$b;,
        Landroid/support/v4/widget/DrawerLayout$d;
    }
.end annotation


# static fields
.field static final DW:[I

.field static final FH:Z

.field private static final Hw:Z

.field private static final j6:[I


# instance fields
.field private BT:Landroid/graphics/drawable/Drawable;

.field private final EQ:Landroid/support/v4/widget/w;

.field private final J0:Landroid/support/v4/widget/DrawerLayout$d;

.field private final J8:Landroid/support/v4/widget/DrawerLayout$d;

.field private KD:Z

.field private Mr:I

.field private P8:Landroid/graphics/drawable/Drawable;

.field private QX:Z

.field private SI:Ljava/lang/Object;

.field private U2:I

.field private VH:I

.field private Ws:I

.field private XL:Z

.field private Zo:F

.field private a8:Z

.field private aM:I

.field private cb:Landroid/graphics/drawable/Drawable;

.field private cn:Landroid/graphics/drawable/Drawable;

.field private final dx:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private ei:Ljava/lang/CharSequence;

.field private er:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/support/v4/widget/DrawerLayout$c;",
            ">;"
        }
    .end annotation
.end field

.field private gW:F

.field private gn:I

.field private j3:I

.field private lg:Z

.field private nw:Ljava/lang/CharSequence;

.field private rN:Landroid/support/v4/widget/DrawerLayout$c;

.field private ro:Landroid/graphics/drawable/Drawable;

.field private sh:Landroid/graphics/drawable/Drawable;

.field private tp:Landroid/graphics/Paint;

.field private u7:F

.field private final v5:Landroid/support/v4/widget/DrawerLayout$b;

.field private vy:Landroid/graphics/drawable/Drawable;

.field private final we:Landroid/support/v4/widget/w;

.field private yS:F


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const v0, 0x1010434

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Landroid/support/v4/widget/DrawerLayout;->j6:[I

    const v0, 0x10100b3

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Landroid/support/v4/widget/DrawerLayout;->DW:[I

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lt v0, v1, :cond_1c

    const/4 v0, 0x1

    goto :goto_1d

    :cond_1c
    const/4 v0, 0x0

    :goto_1d
    sput-boolean v0, Landroid/support/v4/widget/DrawerLayout;->FH:Z

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_26

    const/4 v2, 0x1

    :cond_26
    sput-boolean v2, Landroid/support/v4/widget/DrawerLayout;->Hw:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v4/widget/DrawerLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v4/widget/DrawerLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 10

    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p2, Landroid/support/v4/widget/DrawerLayout$b;

    invoke-direct {p2}, Landroid/support/v4/widget/DrawerLayout$b;-><init>()V

    iput-object p2, p0, Landroid/support/v4/widget/DrawerLayout;->v5:Landroid/support/v4/widget/DrawerLayout$b;

    const/high16 p2, 0x40000000  # 2.0f

    iput p2, p0, Landroid/support/v4/widget/DrawerLayout;->gn:I

    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Landroid/support/v4/widget/DrawerLayout;->tp:Landroid/graphics/Paint;

    const/4 p2, 0x1

    iput-boolean p2, p0, Landroid/support/v4/widget/DrawerLayout;->XL:Z

    const/4 p3, 0x3

    iput p3, p0, Landroid/support/v4/widget/DrawerLayout;->aM:I

    iput p3, p0, Landroid/support/v4/widget/DrawerLayout;->j3:I

    iput p3, p0, Landroid/support/v4/widget/DrawerLayout;->Mr:I

    iput p3, p0, Landroid/support/v4/widget/DrawerLayout;->U2:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->ro:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->cn:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->sh:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->cb:Landroid/graphics/drawable/Drawable;

    const/high16 v1, 0x40000

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x42800000  # 64.0f

    mul-float v2, v2, v1

    const/high16 v3, 0x3f000000  # 0.5f

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Landroid/support/v4/widget/DrawerLayout;->VH:I

    const/high16 v2, 0x43c80000  # 400.0f

    mul-float v2, v2, v1

    new-instance v3, Landroid/support/v4/widget/DrawerLayout$d;

    invoke-direct {v3, p0, p3}, Landroid/support/v4/widget/DrawerLayout$d;-><init>(Landroid/support/v4/widget/DrawerLayout;I)V

    iput-object v3, p0, Landroid/support/v4/widget/DrawerLayout;->J0:Landroid/support/v4/widget/DrawerLayout$d;

    new-instance p3, Landroid/support/v4/widget/DrawerLayout$d;

    const/4 v4, 0x5

    invoke-direct {p3, p0, v4}, Landroid/support/v4/widget/DrawerLayout$d;-><init>(Landroid/support/v4/widget/DrawerLayout;I)V

    iput-object p3, p0, Landroid/support/v4/widget/DrawerLayout;->J8:Landroid/support/v4/widget/DrawerLayout$d;

    const/high16 v4, 0x3f800000  # 1.0f

    invoke-static {p0, v4, v3}, Landroid/support/v4/widget/w;->j6(Landroid/view/ViewGroup;FLandroid/support/v4/widget/w$a;)Landroid/support/v4/widget/w;

    move-result-object v5

    iput-object v5, p0, Landroid/support/v4/widget/DrawerLayout;->EQ:Landroid/support/v4/widget/w;

    invoke-virtual {v5, p2}, Landroid/support/v4/widget/w;->Hw(I)V

    invoke-virtual {v5, v2}, Landroid/support/v4/widget/w;->j6(F)V

    invoke-virtual {v3, v5}, Landroid/support/v4/widget/DrawerLayout$d;->j6(Landroid/support/v4/widget/w;)V

    invoke-static {p0, v4, p3}, Landroid/support/v4/widget/w;->j6(Landroid/view/ViewGroup;FLandroid/support/v4/widget/w$a;)Landroid/support/v4/widget/w;

    move-result-object v3

    iput-object v3, p0, Landroid/support/v4/widget/DrawerLayout;->we:Landroid/support/v4/widget/w;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/support/v4/widget/w;->Hw(I)V

    invoke-virtual {v3, v2}, Landroid/support/v4/widget/w;->j6(F)V

    invoke-virtual {p3, v3}, Landroid/support/v4/widget/DrawerLayout$d;->j6(Landroid/support/v4/widget/w;)V

    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->setFocusableInTouchMode(Z)V

    invoke-static {p0, p2}, Landroid/support/v4/view/s;->FH(Landroid/view/View;I)V

    new-instance p2, Landroid/support/v4/widget/DrawerLayout$a;

    invoke-direct {p2, p0}, Landroid/support/v4/widget/DrawerLayout$a;-><init>(Landroid/support/v4/widget/DrawerLayout;)V

    invoke-static {p0, p2}, Landroid/support/v4/view/s;->j6(Landroid/view/View;Landroid/support/v4/view/c;)V

    const/4 p2, 0x0

    invoke-static {p0, p2}, Landroid/support/v4/view/u;->j6(Landroid/view/ViewGroup;Z)V

    invoke-static {p0}, Landroid/support/v4/view/s;->DW(Landroid/view/View;)Z

    move-result p3

    if-eqz p3, :cond_b9

    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt p3, v2, :cond_b7

    new-instance p3, Landroid/support/v4/widget/f;

    invoke-direct {p3, p0}, Landroid/support/v4/widget/f;-><init>(Landroid/support/v4/widget/DrawerLayout;)V

    invoke-virtual {p0, p3}, Landroid/view/ViewGroup;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    const/16 p3, 0x500

    invoke-virtual {p0, p3}, Landroid/view/ViewGroup;->setSystemUiVisibility(I)V

    sget-object p3, Landroid/support/v4/widget/DrawerLayout;->j6:[I

    invoke-virtual {p1, p3}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p1

    :try_start_a8
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Landroid/support/v4/widget/DrawerLayout;->BT:Landroid/graphics/drawable/Drawable;
    :try_end_ae
    .catchall {:try_start_a8 .. :try_end_ae} :catchall_b2

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_b9

    :catchall_b2
    move-exception p2

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    throw p2

    :cond_b7
    iput-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->BT:Landroid/graphics/drawable/Drawable;

    :cond_b9
    :goto_b9
    const/high16 p1, 0x41200000  # 10.0f

    mul-float v1, v1, p1

    iput v1, p0, Landroid/support/v4/widget/DrawerLayout;->Zo:F

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroid/support/v4/widget/DrawerLayout;->dx:Ljava/util/ArrayList;

    return-void
.end method

.method private FH(Landroid/view/View;Z)V
    .registers 7

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_20

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-nez p2, :cond_13

    invoke-virtual {p0, v2}, Landroid/support/v4/widget/DrawerLayout;->tp(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_17

    :cond_13
    if-eqz p2, :cond_19

    if-ne v2, p1, :cond_19

    :cond_17
    const/4 v3, 0x1

    goto :goto_1a

    :cond_19
    const/4 v3, 0x4

    :goto_1a
    invoke-static {v2, v3}, Landroid/support/v4/view/s;->FH(Landroid/view/View;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_20
    return-void
.end method

.method private static J0(Landroid/view/View;)Z
    .registers 2

    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    if-eqz p0, :cond_f

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result p0

    const/4 v0, -0x1

    if-ne p0, v0, :cond_f

    const/4 p0, 0x1

    goto :goto_10

    :cond_f
    const/4 p0, 0x0

    :goto_10
    return p0
.end method

.method private VH()Landroid/graphics/drawable/Drawable;
    .registers 3

    invoke-static {p0}, Landroid/support/v4/view/s;->Hw(Landroid/view/View;)I

    move-result v0

    if-nez v0, :cond_10

    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->ro:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1a

    invoke-direct {p0, v1, v0}, Landroid/support/v4/widget/DrawerLayout;->j6(Landroid/graphics/drawable/Drawable;I)Z

    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->ro:Landroid/graphics/drawable/Drawable;

    return-object v0

    :cond_10
    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->cn:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1a

    invoke-direct {p0, v1, v0}, Landroid/support/v4/widget/DrawerLayout;->j6(Landroid/graphics/drawable/Drawable;I)Z

    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->cn:Landroid/graphics/drawable/Drawable;

    return-object v0

    :cond_1a
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->sh:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static VH(Landroid/view/View;)Z
    .registers 3

    invoke-static {p0}, Landroid/support/v4/view/s;->FH(Landroid/view/View;)I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_10

    invoke-static {p0}, Landroid/support/v4/view/s;->FH(Landroid/view/View;)I

    move-result p0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_10

    const/4 p0, 0x1

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    :goto_11
    return p0
.end method

.method private Zo()Z
    .registers 2

    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->Hw()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method private gn()Landroid/graphics/drawable/Drawable;
    .registers 3

    invoke-static {p0}, Landroid/support/v4/view/s;->Hw(Landroid/view/View;)I

    move-result v0

    if-nez v0, :cond_10

    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->cn:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1a

    invoke-direct {p0, v1, v0}, Landroid/support/v4/widget/DrawerLayout;->j6(Landroid/graphics/drawable/Drawable;I)Z

    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->cn:Landroid/graphics/drawable/Drawable;

    return-object v0

    :cond_10
    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->ro:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1a

    invoke-direct {p0, v1, v0}, Landroid/support/v4/widget/DrawerLayout;->j6(Landroid/graphics/drawable/Drawable;I)Z

    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->ro:Landroid/graphics/drawable/Drawable;

    return-object v0

    :cond_1a
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->cb:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private j6(Landroid/graphics/drawable/Drawable;I)Z
    .registers 4

    if-eqz p1, :cond_e

    invoke-static {p1}, Labcd/as/graphics/drawable/DrawableCompat;->isAutoMirrored(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_e

    :cond_9
    invoke-static {p1, p2}, Labcd/as/graphics/drawable/DrawableCompat;->setLayoutDirection(Landroid/graphics/drawable/Drawable;I)Z

    const/4 p1, 0x1

    return p1

    :cond_e
    :goto_e
    const/4 p1, 0x0

    return p1
.end method

.method private u7()V
    .registers 2

    sget-boolean v0, Landroid/support/v4/widget/DrawerLayout;->Hw:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    invoke-direct {p0}, Landroid/support/v4/widget/DrawerLayout;->VH()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->vy:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Landroid/support/v4/widget/DrawerLayout;->gn()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->P8:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method static v5(I)Ljava/lang/String;
    .registers 3

    and-int/lit8 v0, p0, 0x3

    const/4 v1, 0x3

    if-ne v0, v1, :cond_8

    const-string p0, "LEFT"

    return-object p0

    :cond_8
    and-int/lit8 v0, p0, 0x5

    const/4 v1, 0x5

    if-ne v0, v1, :cond_10

    const-string p0, "RIGHT"

    return-object p0

    :cond_10
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private v5()Z
    .registers 5

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v0, :cond_1b

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    iget-boolean v3, v3, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->FH:Z

    if-eqz v3, :cond_18

    const/4 v0, 0x1

    return v0

    :cond_18
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_1b
    return v1
.end method


# virtual methods
.method DW(I)Landroid/view/View;
    .registers 7

    invoke-static {p0}, Landroid/support/v4/view/s;->Hw(Landroid/view/View;)I

    move-result v0

    invoke-static {p1, v0}, Landroid/support/v4/view/f;->j6(II)I

    move-result p1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_d
    if-ge v1, v0, :cond_21

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/support/v4/widget/DrawerLayout;->v5(Landroid/view/View;)I

    move-result v3

    and-int/lit8 v3, v3, 0x7

    and-int/lit8 v4, p1, 0x7

    if-ne v3, v4, :cond_1e

    return-object v2

    :cond_1e
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    :cond_21
    const/4 p1, 0x0

    return-object p1
.end method

.method public DW()V
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/DrawerLayout;->j6(Z)V

    return-void
.end method

.method public DW(IZ)V
    .registers 4

    invoke-virtual {p0, p1}, Landroid/support/v4/widget/DrawerLayout;->DW(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-virtual {p0, v0, p2}, Landroid/support/v4/widget/DrawerLayout;->DW(Landroid/view/View;Z)V

    return-void

    :cond_a
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "No drawer view found with gravity "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/support/v4/widget/DrawerLayout;->v5(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public DW(Landroid/support/v4/widget/DrawerLayout$c;)V
    .registers 3

    if-nez p1, :cond_3

    return-void

    :cond_3
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->er:Ljava/util/List;

    if-nez v0, :cond_8

    return-void

    :cond_8
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method DW(Landroid/view/View;)V
    .registers 5

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    iget v1, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->Hw:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_3c

    const/4 v1, 0x0

    iput v1, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->Hw:I

    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->er:Ljava/util/List;

    if-eqz v0, :cond_28

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v2

    :goto_18
    if-ltz v0, :cond_28

    iget-object v2, p0, Landroid/support/v4/widget/DrawerLayout;->er:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/widget/DrawerLayout$c;

    invoke-interface {v2, p1}, Landroid/support/v4/widget/DrawerLayout$c;->DW(Landroid/view/View;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_18

    :cond_28
    invoke-direct {p0, p1, v1}, Landroid/support/v4/widget/DrawerLayout;->FH(Landroid/view/View;Z)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->hasWindowFocus()Z

    move-result p1

    if-eqz p1, :cond_3c

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getRootView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_3c

    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Landroid/view/View;->sendAccessibilityEvent(I)V

    :cond_3c
    return-void
.end method

.method DW(Landroid/view/View;F)V
    .registers 5

    invoke-virtual {p0, p1}, Landroid/support/v4/widget/DrawerLayout;->Zo(Landroid/view/View;)F

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float v0, v0, v1

    float-to-int v0, v0

    mul-float v1, v1, p2

    float-to-int v1, v1

    sub-int/2addr v1, v0

    const/4 v0, 0x3

    invoke-virtual {p0, p1, v0}, Landroid/support/v4/widget/DrawerLayout;->j6(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_18

    goto :goto_19

    :cond_18
    neg-int v1, v1

    :goto_19
    invoke-virtual {p1, v1}, Landroid/view/View;->offsetLeftAndRight(I)V

    invoke-virtual {p0, p1, p2}, Landroid/support/v4/widget/DrawerLayout;->FH(Landroid/view/View;F)V

    return-void
.end method

.method public DW(Landroid/view/View;Z)V
    .registers 6

    invoke-virtual {p0, p1}, Landroid/support/v4/widget/DrawerLayout;->tp(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_57

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    iget-boolean v1, p0, Landroid/support/v4/widget/DrawerLayout;->XL:Z

    const/high16 v2, 0x3f800000  # 1.0f

    if-eqz v1, :cond_1b

    iput v2, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->DW:F

    const/4 p2, 0x1

    iput p2, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->Hw:I

    invoke-direct {p0, p1, p2}, Landroid/support/v4/widget/DrawerLayout;->FH(Landroid/view/View;Z)V

    goto :goto_53

    :cond_1b
    const/4 v1, 0x0

    if-eqz p2, :cond_48

    iget p2, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->Hw:I

    or-int/lit8 p2, p2, 0x2

    iput p2, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->Hw:I

    const/4 p2, 0x3

    invoke-virtual {p0, p1, p2}, Landroid/support/v4/widget/DrawerLayout;->j6(Landroid/view/View;I)Z

    move-result p2

    if-eqz p2, :cond_35

    iget-object p2, p0, Landroid/support/v4/widget/DrawerLayout;->EQ:Landroid/support/v4/widget/w;

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    invoke-virtual {p2, p1, v1, v0}, Landroid/support/v4/widget/w;->DW(Landroid/view/View;II)Z

    goto :goto_53

    :cond_35
    iget-object p2, p0, Landroid/support/v4/widget/DrawerLayout;->we:Landroid/support/v4/widget/w;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {p2, p1, v0, v1}, Landroid/support/v4/widget/w;->DW(Landroid/view/View;II)Z

    goto :goto_53

    :cond_48
    invoke-virtual {p0, p1, v2}, Landroid/support/v4/widget/DrawerLayout;->DW(Landroid/view/View;F)V

    iget p2, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->j6:I

    invoke-virtual {p0, p2, v1, p1}, Landroid/support/v4/widget/DrawerLayout;->j6(IILandroid/view/View;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_53
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    return-void

    :cond_57
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "View "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is not a sliding drawer"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public EQ(Landroid/view/View;)Z
    .registers 4

    invoke-virtual {p0, p1}, Landroid/support/v4/widget/DrawerLayout;->tp(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    iget p1, p1, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->DW:F

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_15

    const/4 p1, 0x1

    goto :goto_16

    :cond_15
    const/4 p1, 0x0

    :goto_16
    return p1

    :cond_17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "View "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is not a drawer"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public FH(I)I
    .registers 5

    invoke-static {p0}, Landroid/support/v4/view/s;->Hw(Landroid/view/View;)I

    move-result v0

    const/4 v1, 0x3

    if-eq p1, v1, :cond_42

    const/4 v2, 0x5

    if-eq p1, v2, :cond_33

    const v2, 0x800003

    if-eq p1, v2, :cond_24

    const v2, 0x800005

    if-eq p1, v2, :cond_15

    goto :goto_51

    :cond_15
    iget p1, p0, Landroid/support/v4/widget/DrawerLayout;->U2:I

    if-eq p1, v1, :cond_1a

    return p1

    :cond_1a
    if-nez v0, :cond_1f

    iget p1, p0, Landroid/support/v4/widget/DrawerLayout;->j3:I

    goto :goto_21

    :cond_1f
    iget p1, p0, Landroid/support/v4/widget/DrawerLayout;->aM:I

    :goto_21
    if-eq p1, v1, :cond_51

    return p1

    :cond_24
    iget p1, p0, Landroid/support/v4/widget/DrawerLayout;->Mr:I

    if-eq p1, v1, :cond_29

    return p1

    :cond_29
    if-nez v0, :cond_2e

    iget p1, p0, Landroid/support/v4/widget/DrawerLayout;->aM:I

    goto :goto_30

    :cond_2e
    iget p1, p0, Landroid/support/v4/widget/DrawerLayout;->j3:I

    :goto_30
    if-eq p1, v1, :cond_51

    return p1

    :cond_33
    iget p1, p0, Landroid/support/v4/widget/DrawerLayout;->j3:I

    if-eq p1, v1, :cond_38

    return p1

    :cond_38
    if-nez v0, :cond_3d

    iget p1, p0, Landroid/support/v4/widget/DrawerLayout;->U2:I

    goto :goto_3f

    :cond_3d
    iget p1, p0, Landroid/support/v4/widget/DrawerLayout;->Mr:I

    :goto_3f
    if-eq p1, v1, :cond_51

    return p1

    :cond_42
    iget p1, p0, Landroid/support/v4/widget/DrawerLayout;->aM:I

    if-eq p1, v1, :cond_47

    return p1

    :cond_47
    if-nez v0, :cond_4c

    iget p1, p0, Landroid/support/v4/widget/DrawerLayout;->Mr:I

    goto :goto_4e

    :cond_4c
    iget p1, p0, Landroid/support/v4/widget/DrawerLayout;->U2:I

    :goto_4e
    if-eq p1, v1, :cond_51

    return p1

    :cond_51
    :goto_51
    const/4 p1, 0x0

    return p1
.end method

.method FH()Landroid/view/View;
    .registers 6

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_1b

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    iget v3, v3, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->Hw:I

    const/4 v4, 0x1

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_18

    return-object v2

    :cond_18
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_1b
    const/4 v0, 0x0

    return-object v0
.end method

.method FH(Landroid/view/View;)V
    .registers 5

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    iget v1, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->Hw:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-nez v1, :cond_35

    iput v2, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->Hw:I

    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->er:Ljava/util/List;

    if-eqz v0, :cond_27

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v2

    :goto_17
    if-ltz v0, :cond_27

    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->er:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/widget/DrawerLayout$c;

    invoke-interface {v1, p1}, Landroid/support/v4/widget/DrawerLayout$c;->j6(Landroid/view/View;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_17

    :cond_27
    invoke-direct {p0, p1, v2}, Landroid/support/v4/widget/DrawerLayout;->FH(Landroid/view/View;Z)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->hasWindowFocus()Z

    move-result p1

    if-eqz p1, :cond_35

    const/16 p1, 0x20

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->sendAccessibilityEvent(I)V

    :cond_35
    return-void
.end method

.method FH(Landroid/view/View;F)V
    .registers 5

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    iget v1, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->DW:F

    cmpl-float v1, p2, v1

    if-nez v1, :cond_d

    return-void

    :cond_d
    iput p2, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->DW:F

    invoke-virtual {p0, p1, p2}, Landroid/support/v4/widget/DrawerLayout;->j6(Landroid/view/View;F)V

    return-void
.end method

.method public Hw(Landroid/view/View;)I
    .registers 4

    invoke-virtual {p0, p1}, Landroid/support/v4/widget/DrawerLayout;->tp(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    iget p1, p1, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->j6:I

    invoke-virtual {p0, p1}, Landroid/support/v4/widget/DrawerLayout;->FH(I)I

    move-result p1

    return p1

    :cond_13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "View "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is not a drawer"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method Hw()Landroid/view/View;
    .registers 5

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_1b

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/support/v4/widget/DrawerLayout;->tp(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_18

    invoke-virtual {p0, v2}, Landroid/support/v4/widget/DrawerLayout;->EQ(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_18

    return-object v2

    :cond_18
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_1b
    const/4 v0, 0x0

    return-object v0
.end method

.method public Hw(I)Ljava/lang/CharSequence;
    .registers 3

    invoke-static {p0}, Landroid/support/v4/view/s;->Hw(Landroid/view/View;)I

    move-result v0

    invoke-static {p1, v0}, Landroid/support/v4/view/f;->j6(II)I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_e

    iget-object p1, p0, Landroid/support/v4/widget/DrawerLayout;->ei:Ljava/lang/CharSequence;

    return-object p1

    :cond_e
    const/4 v0, 0x5

    if-ne p1, v0, :cond_14

    iget-object p1, p0, Landroid/support/v4/widget/DrawerLayout;->nw:Ljava/lang/CharSequence;

    return-object p1

    :cond_14
    const/4 p1, 0x0

    return-object p1
.end method

.method public VH(I)Z
    .registers 2

    invoke-virtual {p0, p1}, Landroid/support/v4/widget/DrawerLayout;->DW(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_b

    invoke-virtual {p0, p1}, Landroid/support/v4/widget/DrawerLayout;->EQ(Landroid/view/View;)Z

    move-result p1

    return p1

    :cond_b
    const/4 p1, 0x0

    return p1
.end method

.method Zo(Landroid/view/View;)F
    .registers 2

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    iget p1, p1, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->DW:F

    return p1
.end method

.method public Zo(I)Z
    .registers 2

    invoke-virtual {p0, p1}, Landroid/support/v4/widget/DrawerLayout;->DW(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_b

    invoke-virtual {p0, p1}, Landroid/support/v4/widget/DrawerLayout;->u7(Landroid/view/View;)Z

    move-result p1

    return p1

    :cond_b
    const/4 p1, 0x0

    return p1
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

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v0

    const/high16 v1, 0x60000

    if-ne v0, v1, :cond_9

    return-void

    :cond_9
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_10
    if-ge v2, v0, :cond_2f

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {p0, v4}, Landroid/support/v4/widget/DrawerLayout;->tp(Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_27

    invoke-virtual {p0, v4}, Landroid/support/v4/widget/DrawerLayout;->u7(Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_2c

    invoke-virtual {v4, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    const/4 v3, 0x1

    goto :goto_2c

    :cond_27
    iget-object v5, p0, Landroid/support/v4/widget/DrawerLayout;->dx:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2c
    :goto_2c
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    :cond_2f
    if-nez v3, :cond_4d

    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->dx:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_37
    if-ge v1, v0, :cond_4d

    iget-object v2, p0, Landroid/support/v4/widget/DrawerLayout;->dx:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_4a

    invoke-virtual {v2, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    :cond_4a
    add-int/lit8 v1, v1, 0x1

    goto :goto_37

    :cond_4d
    iget-object p1, p0, Landroid/support/v4/widget/DrawerLayout;->dx:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .registers 4

    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->FH()Landroid/view/View;

    move-result-object p2

    if-nez p2, :cond_12

    invoke-virtual {p0, p1}, Landroid/support/v4/widget/DrawerLayout;->tp(Landroid/view/View;)Z

    move-result p2

    if-eqz p2, :cond_10

    goto :goto_12

    :cond_10
    const/4 p2, 0x1

    goto :goto_13

    :cond_12
    :goto_12
    const/4 p2, 0x4

    :goto_13
    invoke-static {p1, p2}, Landroid/support/v4/view/s;->FH(Landroid/view/View;I)V

    sget-boolean p2, Landroid/support/v4/widget/DrawerLayout;->FH:Z

    if-nez p2, :cond_1f

    iget-object p2, p0, Landroid/support/v4/widget/DrawerLayout;->v5:Landroid/support/v4/widget/DrawerLayout$b;

    invoke-static {p1, p2}, Landroid/support/v4/view/s;->j6(Landroid/view/View;Landroid/support/v4/view/c;)V

    :cond_1f
    return-void
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .registers 3

    instance-of v0, p1, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

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

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v0, :cond_1b

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    iget v3, v3, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->DW:F

    invoke-static {v1, v3}, Ljava/lang/Math;->max(FF)F

    move-result v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_1b
    iput v1, p0, Landroid/support/v4/widget/DrawerLayout;->u7:F

    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->EQ:Landroid/support/v4/widget/w;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/w;->j6(Z)Z

    move-result v0

    iget-object v2, p0, Landroid/support/v4/widget/DrawerLayout;->we:Landroid/support/v4/widget/w;

    invoke-virtual {v2, v1}, Landroid/support/v4/widget/w;->j6(Z)Z

    move-result v1

    if-nez v0, :cond_2e

    if-eqz v1, :cond_31

    :cond_2e
    invoke-static {p0}, Landroid/support/v4/view/s;->tp(Landroid/view/View;)V

    :cond_31
    return-void
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .registers 19

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v3

    invoke-virtual {p0, v2}, Landroid/support/v4/widget/DrawerLayout;->gn(Landroid/view/View;)Z

    move-result v4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v5

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v6

    const/4 v7, 0x3

    const/4 v8, 0x0

    if-eqz v4, :cond_5f

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_1e
    if-ge v10, v9, :cond_57

    invoke-virtual {p0, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    if-eq v12, v2, :cond_54

    invoke-virtual {v12}, Landroid/view/View;->getVisibility()I

    move-result v13

    if-nez v13, :cond_54

    invoke-static {v12}, Landroid/support/v4/widget/DrawerLayout;->J0(Landroid/view/View;)Z

    move-result v13

    if-eqz v13, :cond_54

    invoke-virtual {p0, v12}, Landroid/support/v4/widget/DrawerLayout;->tp(Landroid/view/View;)Z

    move-result v13

    if-eqz v13, :cond_54

    invoke-virtual {v12}, Landroid/view/View;->getHeight()I

    move-result v13

    if-ge v13, v3, :cond_3f

    goto :goto_54

    :cond_3f
    invoke-virtual {p0, v12, v7}, Landroid/support/v4/widget/DrawerLayout;->j6(Landroid/view/View;I)Z

    move-result v13

    if-eqz v13, :cond_4d

    invoke-virtual {v12}, Landroid/view/View;->getRight()I

    move-result v12

    if-le v12, v11, :cond_54

    move v11, v12

    goto :goto_54

    :cond_4d
    invoke-virtual {v12}, Landroid/view/View;->getLeft()I

    move-result v12

    if-ge v12, v5, :cond_54

    move v5, v12

    :cond_54
    :goto_54
    add-int/lit8 v10, v10, 0x1

    goto :goto_1e

    :cond_57
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v3

    invoke-virtual {p1, v11, v8, v5, v3}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    move v8, v11

    :cond_5f
    invoke-super/range {p0 .. p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v9

    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->restoreToCount(I)V

    iget v3, v0, Landroid/support/v4/widget/DrawerLayout;->u7:F

    const/4 v6, 0x0

    cmpl-float v10, v3, v6

    if-lez v10, :cond_96

    if-eqz v4, :cond_96

    iget v2, v0, Landroid/support/v4/widget/DrawerLayout;->gn:I

    const/high16 v4, -0x1000000

    and-int/2addr v4, v2

    ushr-int/lit8 v4, v4, 0x18

    int-to-float v4, v4

    mul-float v4, v4, v3

    float-to-int v3, v4

    iget-object v4, v0, Landroid/support/v4/widget/DrawerLayout;->tp:Landroid/graphics/Paint;

    const v6, 0xffffff

    and-int/2addr v2, v6

    shl-int/lit8 v3, v3, 0x18

    or-int/2addr v2, v3

    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v2, v8

    const/4 v3, 0x0

    int-to-float v4, v5

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v5

    int-to-float v5, v5

    iget-object v6, v0, Landroid/support/v4/widget/DrawerLayout;->tp:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_120

    :cond_96
    iget-object v3, v0, Landroid/support/v4/widget/DrawerLayout;->vy:Landroid/graphics/drawable/Drawable;

    const/high16 v4, 0x437f0000  # 255.0f

    const/high16 v5, 0x3f800000  # 1.0f

    if-eqz v3, :cond_db

    invoke-virtual {p0, v2, v7}, Landroid/support/v4/widget/DrawerLayout;->j6(Landroid/view/View;I)Z

    move-result v3

    if-eqz v3, :cond_db

    iget-object v3, v0, Landroid/support/v4/widget/DrawerLayout;->vy:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getRight()I

    move-result v7

    iget-object v8, v0, Landroid/support/v4/widget/DrawerLayout;->EQ:Landroid/support/v4/widget/w;

    invoke-virtual {v8}, Landroid/support/v4/widget/w;->Hw()I

    move-result v8

    int-to-float v10, v7

    int-to-float v8, v8

    div-float/2addr v10, v8

    invoke-static {v10, v5}, Ljava/lang/Math;->min(FF)F

    move-result v5

    invoke-static {v6, v5}, Ljava/lang/Math;->max(FF)F

    move-result v5

    iget-object v6, v0, Landroid/support/v4/widget/DrawerLayout;->vy:Landroid/graphics/drawable/Drawable;

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTop()I

    move-result v8

    add-int/2addr v3, v7

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getBottom()I

    move-result v2

    invoke-virtual {v6, v7, v8, v3, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v2, v0, Landroid/support/v4/widget/DrawerLayout;->vy:Landroid/graphics/drawable/Drawable;

    mul-float v5, v5, v4

    float-to-int v3, v5

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object v2, v0, Landroid/support/v4/widget/DrawerLayout;->vy:Landroid/graphics/drawable/Drawable;

    :goto_d7
    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_120

    :cond_db
    iget-object v3, v0, Landroid/support/v4/widget/DrawerLayout;->P8:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_120

    const/4 v3, 0x5

    invoke-virtual {p0, v2, v3}, Landroid/support/v4/widget/DrawerLayout;->j6(Landroid/view/View;I)Z

    move-result v3

    if-eqz v3, :cond_120

    iget-object v3, v0, Landroid/support/v4/widget/DrawerLayout;->P8:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLeft()I

    move-result v7

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v8

    iget-object v10, v0, Landroid/support/v4/widget/DrawerLayout;->we:Landroid/support/v4/widget/w;

    invoke-virtual {v10}, Landroid/support/v4/widget/w;->Hw()I

    move-result v10

    sub-int/2addr v8, v7

    int-to-float v8, v8

    int-to-float v10, v10

    div-float/2addr v8, v10

    invoke-static {v8, v5}, Ljava/lang/Math;->min(FF)F

    move-result v5

    invoke-static {v6, v5}, Ljava/lang/Math;->max(FF)F

    move-result v5

    iget-object v6, v0, Landroid/support/v4/widget/DrawerLayout;->P8:Landroid/graphics/drawable/Drawable;

    sub-int v3, v7, v3

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTop()I

    move-result v8

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getBottom()I

    move-result v2

    invoke-virtual {v6, v3, v8, v7, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v2, v0, Landroid/support/v4/widget/DrawerLayout;->P8:Landroid/graphics/drawable/Drawable;

    mul-float v5, v5, v4

    float-to-int v3, v5

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object v2, v0, Landroid/support/v4/widget/DrawerLayout;->P8:Landroid/graphics/drawable/Drawable;

    goto :goto_d7

    :cond_120
    :goto_120
    return v9
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .registers 3

    new-instance v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/support/v4/widget/DrawerLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .registers 4

    new-instance v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/support/v4/widget/DrawerLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .registers 3

    instance-of v0, p1, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    if-eqz v0, :cond_c

    new-instance v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    check-cast p1, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    invoke-direct {v0, p1}, Landroid/support/v4/widget/DrawerLayout$LayoutParams;-><init>(Landroid/support/v4/widget/DrawerLayout$LayoutParams;)V

    goto :goto_1d

    :cond_c
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_18

    new-instance v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, p1}, Landroid/support/v4/widget/DrawerLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    goto :goto_1d

    :cond_18
    new-instance v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    invoke-direct {v0, p1}, Landroid/support/v4/widget/DrawerLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_1d
    return-object v0
.end method

.method public getDrawerElevation()F
    .registers 2

    sget-boolean v0, Landroid/support/v4/widget/DrawerLayout;->Hw:Z

    if-eqz v0, :cond_7

    iget v0, p0, Landroid/support/v4/widget/DrawerLayout;->Zo:F

    return v0

    :cond_7
    const/4 v0, 0x0

    return v0
.end method

.method public getStatusBarBackgroundDrawable()Landroid/graphics/drawable/Drawable;
    .registers 2

    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->BT:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public gn(I)V
    .registers 3

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/support/v4/widget/DrawerLayout;->DW(IZ)V

    return-void
.end method

.method gn(Landroid/view/View;)Z
    .registers 2

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    iget p1, p1, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->j6:I

    if-nez p1, :cond_c

    const/4 p1, 0x1

    goto :goto_d

    :cond_c
    const/4 p1, 0x0

    :goto_d
    return p1
.end method

.method j6()V
    .registers 10

    iget-boolean v0, p0, Landroid/support/v4/widget/DrawerLayout;->lg:Z

    if-nez v0, :cond_28

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-wide v1, v3

    invoke-static/range {v1 .. v8}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_16
    if-ge v2, v1, :cond_22

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    :cond_22
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/widget/DrawerLayout;->lg:Z

    :cond_28
    return-void
.end method

.method public j6(I)V
    .registers 3

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/support/v4/widget/DrawerLayout;->j6(IZ)V

    return-void
.end method

.method public j6(II)V
    .registers 6

    invoke-static {p0}, Landroid/support/v4/view/s;->Hw(Landroid/view/View;)I

    move-result v0

    invoke-static {p2, v0}, Landroid/support/v4/view/f;->j6(II)I

    move-result v0

    const/4 v1, 0x3

    if-eq p2, v1, :cond_22

    const/4 v2, 0x5

    if-eq p2, v2, :cond_1f

    const v2, 0x800003

    if-eq p2, v2, :cond_1c

    const v2, 0x800005

    if-eq p2, v2, :cond_19

    goto :goto_24

    :cond_19
    iput p1, p0, Landroid/support/v4/widget/DrawerLayout;->U2:I

    goto :goto_24

    :cond_1c
    iput p1, p0, Landroid/support/v4/widget/DrawerLayout;->Mr:I

    goto :goto_24

    :cond_1f
    iput p1, p0, Landroid/support/v4/widget/DrawerLayout;->j3:I

    goto :goto_24

    :cond_22
    iput p1, p0, Landroid/support/v4/widget/DrawerLayout;->aM:I

    :goto_24
    if-eqz p1, :cond_30

    if-ne v0, v1, :cond_2b

    iget-object p2, p0, Landroid/support/v4/widget/DrawerLayout;->EQ:Landroid/support/v4/widget/w;

    goto :goto_2d

    :cond_2b
    iget-object p2, p0, Landroid/support/v4/widget/DrawerLayout;->we:Landroid/support/v4/widget/w;

    :goto_2d
    invoke-virtual {p2}, Landroid/support/v4/widget/w;->DW()V

    :cond_30
    const/4 p2, 0x1

    if-eq p1, p2, :cond_41

    const/4 p2, 0x2

    if-eq p1, p2, :cond_37

    goto :goto_4a

    :cond_37
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/DrawerLayout;->DW(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_4a

    invoke-virtual {p0, p1}, Landroid/support/v4/widget/DrawerLayout;->we(Landroid/view/View;)V

    goto :goto_4a

    :cond_41
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/DrawerLayout;->DW(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_4a

    invoke-virtual {p0, p1}, Landroid/support/v4/widget/DrawerLayout;->j6(Landroid/view/View;)V

    :cond_4a
    :goto_4a
    return-void
.end method

.method j6(IILandroid/view/View;)V
    .registers 7

    iget-object p1, p0, Landroid/support/v4/widget/DrawerLayout;->EQ:Landroid/support/v4/widget/w;

    invoke-virtual {p1}, Landroid/support/v4/widget/w;->Zo()I

    move-result p1

    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->we:Landroid/support/v4/widget/w;

    invoke-virtual {v0}, Landroid/support/v4/widget/w;->Zo()I

    move-result v0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1a

    if-ne v0, v1, :cond_12

    goto :goto_1a

    :cond_12
    const/4 v2, 0x2

    if-eq p1, v2, :cond_1b

    if-ne v0, v2, :cond_18

    goto :goto_1b

    :cond_18
    const/4 v2, 0x0

    goto :goto_1b

    :cond_1a
    :goto_1a
    const/4 v2, 0x1

    :cond_1b
    :goto_1b
    if-eqz p3, :cond_39

    if-nez p2, :cond_39

    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    iget p1, p1, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->DW:F

    const/4 p2, 0x0

    cmpl-float p2, p1, p2

    if-nez p2, :cond_30

    invoke-virtual {p0, p3}, Landroid/support/v4/widget/DrawerLayout;->DW(Landroid/view/View;)V

    goto :goto_39

    :cond_30
    const/high16 p2, 0x3f800000  # 1.0f

    cmpl-float p1, p1, p2

    if-nez p1, :cond_39

    invoke-virtual {p0, p3}, Landroid/support/v4/widget/DrawerLayout;->FH(Landroid/view/View;)V

    :cond_39
    :goto_39
    iget p1, p0, Landroid/support/v4/widget/DrawerLayout;->Ws:I

    if-eq v2, p1, :cond_58

    iput v2, p0, Landroid/support/v4/widget/DrawerLayout;->Ws:I

    iget-object p1, p0, Landroid/support/v4/widget/DrawerLayout;->er:Ljava/util/List;

    if-eqz p1, :cond_58

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    sub-int/2addr p1, v1

    :goto_48
    if-ltz p1, :cond_58

    iget-object p2, p0, Landroid/support/v4/widget/DrawerLayout;->er:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/support/v4/widget/DrawerLayout$c;

    invoke-interface {p2, v2}, Landroid/support/v4/widget/DrawerLayout$c;->j6(I)V

    add-int/lit8 p1, p1, -0x1

    goto :goto_48

    :cond_58
    return-void
.end method

.method public j6(IZ)V
    .registers 4

    invoke-virtual {p0, p1}, Landroid/support/v4/widget/DrawerLayout;->DW(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-virtual {p0, v0, p2}, Landroid/support/v4/widget/DrawerLayout;->j6(Landroid/view/View;Z)V

    return-void

    :cond_a
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "No drawer view found with gravity "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/support/v4/widget/DrawerLayout;->v5(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public j6(Landroid/support/v4/widget/DrawerLayout$c;)V
    .registers 3

    if-nez p1, :cond_3

    return-void

    :cond_3
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->er:Ljava/util/List;

    if-nez v0, :cond_e

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->er:Ljava/util/List;

    :cond_e
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->er:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public j6(Landroid/view/View;)V
    .registers 3

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/support/v4/widget/DrawerLayout;->j6(Landroid/view/View;Z)V

    return-void
.end method

.method j6(Landroid/view/View;F)V
    .registers 5

    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->er:Ljava/util/List;

    if-eqz v0, :cond_1a

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_a
    if-ltz v0, :cond_1a

    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->er:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/widget/DrawerLayout$c;

    invoke-interface {v1, p1, p2}, Landroid/support/v4/widget/DrawerLayout$c;->j6(Landroid/view/View;F)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_a

    :cond_1a
    return-void
.end method

.method public j6(Landroid/view/View;Z)V
    .registers 7

    invoke-virtual {p0, p1}, Landroid/support/v4/widget/DrawerLayout;->tp(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_4b

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    iget-boolean v1, p0, Landroid/support/v4/widget/DrawerLayout;->XL:Z

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_17

    iput v3, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->DW:F

    iput v2, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->Hw:I

    goto :goto_47

    :cond_17
    const/4 v1, 0x4

    if-eqz p2, :cond_3c

    iget p2, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->Hw:I

    or-int/2addr p2, v1

    iput p2, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->Hw:I

    const/4 p2, 0x3

    invoke-virtual {p0, p1, p2}, Landroid/support/v4/widget/DrawerLayout;->j6(Landroid/view/View;I)Z

    move-result p2

    if-eqz p2, :cond_2e

    iget-object p2, p0, Landroid/support/v4/widget/DrawerLayout;->EQ:Landroid/support/v4/widget/w;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    neg-int v0, v0

    goto :goto_34

    :cond_2e
    iget-object p2, p0, Landroid/support/v4/widget/DrawerLayout;->we:Landroid/support/v4/widget/w;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    :goto_34
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {p2, p1, v0, v1}, Landroid/support/v4/widget/w;->DW(Landroid/view/View;II)Z

    goto :goto_47

    :cond_3c
    invoke-virtual {p0, p1, v3}, Landroid/support/v4/widget/DrawerLayout;->DW(Landroid/view/View;F)V

    iget p2, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->j6:I

    invoke-virtual {p0, p2, v2, p1}, Landroid/support/v4/widget/DrawerLayout;->j6(IILandroid/view/View;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_47
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    return-void

    :cond_4b
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "View "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is not a sliding drawer"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public j6(Ljava/lang/Object;Z)V
    .registers 3

    iput-object p1, p0, Landroid/support/v4/widget/DrawerLayout;->SI:Ljava/lang/Object;

    iput-boolean p2, p0, Landroid/support/v4/widget/DrawerLayout;->KD:Z

    if-nez p2, :cond_e

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-nez p1, :cond_e

    const/4 p1, 0x1

    goto :goto_f

    :cond_e
    const/4 p1, 0x0

    :goto_f
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setWillNotDraw(Z)V

    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->requestLayout()V

    return-void
.end method

.method j6(Z)V
    .registers 11

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_7
    if-ge v2, v0, :cond_4b

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    invoke-virtual {p0, v4}, Landroid/support/v4/widget/DrawerLayout;->tp(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_48

    if-eqz p1, :cond_20

    iget-boolean v6, v5, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->FH:Z

    if-nez v6, :cond_20

    goto :goto_48

    :cond_20
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v6

    const/4 v7, 0x3

    invoke-virtual {p0, v4, v7}, Landroid/support/v4/widget/DrawerLayout;->j6(Landroid/view/View;I)Z

    move-result v7

    if-eqz v7, :cond_37

    iget-object v7, p0, Landroid/support/v4/widget/DrawerLayout;->EQ:Landroid/support/v4/widget/w;

    neg-int v6, v6

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v8

    invoke-virtual {v7, v4, v6, v8}, Landroid/support/v4/widget/w;->DW(Landroid/view/View;II)Z

    move-result v4

    goto :goto_45

    :cond_37
    iget-object v6, p0, Landroid/support/v4/widget/DrawerLayout;->we:Landroid/support/v4/widget/w;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v7

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v8

    invoke-virtual {v6, v4, v7, v8}, Landroid/support/v4/widget/w;->DW(Landroid/view/View;II)Z

    move-result v4

    :goto_45
    or-int/2addr v3, v4

    iput-boolean v1, v5, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->FH:Z

    :cond_48
    :goto_48
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_4b
    iget-object p1, p0, Landroid/support/v4/widget/DrawerLayout;->J0:Landroid/support/v4/widget/DrawerLayout$d;

    invoke-virtual {p1}, Landroid/support/v4/widget/DrawerLayout$d;->DW()V

    iget-object p1, p0, Landroid/support/v4/widget/DrawerLayout;->J8:Landroid/support/v4/widget/DrawerLayout$d;

    invoke-virtual {p1}, Landroid/support/v4/widget/DrawerLayout$d;->DW()V

    if-eqz v3, :cond_5a

    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    :cond_5a
    return-void
.end method

.method j6(Landroid/view/View;I)Z
    .registers 3

    invoke-virtual {p0, p1}, Landroid/support/v4/widget/DrawerLayout;->v5(Landroid/view/View;)I

    move-result p1

    and-int/2addr p1, p2

    if-ne p1, p2, :cond_9

    const/4 p1, 0x1

    goto :goto_a

    :cond_9
    const/4 p1, 0x0

    :goto_a
    return p1
.end method

.method protected onAttachedToWindow()V
    .registers 2

    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/widget/DrawerLayout;->XL:Z

    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/widget/DrawerLayout;->XL:Z

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .registers 6

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    iget-boolean v0, p0, Landroid/support/v4/widget/DrawerLayout;->KD:Z

    if-eqz v0, :cond_2e

    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->BT:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2e

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    const/4 v2, 0x0

    if-lt v0, v1, :cond_1d

    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->SI:Ljava/lang/Object;

    if-eqz v0, :cond_1d

    check-cast v0, Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v0

    goto :goto_1e

    :cond_1d
    const/4 v0, 0x0

    :goto_1e
    if-lez v0, :cond_2e

    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->BT:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v3

    invoke-virtual {v1, v2, v2, v3, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->BT:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_2e
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->EQ:Landroid/support/v4/widget/w;

    invoke-virtual {v1, p1}, Landroid/support/v4/widget/w;->DW(Landroid/view/MotionEvent;)Z

    move-result v1

    iget-object v2, p0, Landroid/support/v4/widget/DrawerLayout;->we:Landroid/support/v4/widget/w;

    invoke-virtual {v2, p1}, Landroid/support/v4/widget/w;->DW(Landroid/view/MotionEvent;)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_39

    if-eq v0, v4, :cond_30

    const/4 p1, 0x2

    const/4 v5, 0x3

    if-eq v0, p1, :cond_1d

    if-eq v0, v5, :cond_30

    goto :goto_37

    :cond_1d
    iget-object p1, p0, Landroid/support/v4/widget/DrawerLayout;->EQ:Landroid/support/v4/widget/w;

    invoke-virtual {p1, v5}, Landroid/support/v4/widget/w;->j6(I)Z

    move-result p1

    if-eqz p1, :cond_37

    iget-object p1, p0, Landroid/support/v4/widget/DrawerLayout;->J0:Landroid/support/v4/widget/DrawerLayout$d;

    invoke-virtual {p1}, Landroid/support/v4/widget/DrawerLayout$d;->DW()V

    iget-object p1, p0, Landroid/support/v4/widget/DrawerLayout;->J8:Landroid/support/v4/widget/DrawerLayout$d;

    invoke-virtual {p1}, Landroid/support/v4/widget/DrawerLayout$d;->DW()V

    goto :goto_37

    :cond_30
    invoke-virtual {p0, v4}, Landroid/support/v4/widget/DrawerLayout;->j6(Z)V

    iput-boolean v3, p0, Landroid/support/v4/widget/DrawerLayout;->a8:Z

    iput-boolean v3, p0, Landroid/support/v4/widget/DrawerLayout;->lg:Z

    :cond_37
    :goto_37
    const/4 p1, 0x0

    goto :goto_63

    :cond_39
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput v0, p0, Landroid/support/v4/widget/DrawerLayout;->yS:F

    iput p1, p0, Landroid/support/v4/widget/DrawerLayout;->gW:F

    iget v5, p0, Landroid/support/v4/widget/DrawerLayout;->u7:F

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-lez v5, :cond_5e

    iget-object v5, p0, Landroid/support/v4/widget/DrawerLayout;->EQ:Landroid/support/v4/widget/w;

    float-to-int v0, v0

    float-to-int p1, p1

    invoke-virtual {v5, v0, p1}, Landroid/support/v4/widget/w;->DW(II)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_5e

    invoke-virtual {p0, p1}, Landroid/support/v4/widget/DrawerLayout;->gn(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_5e

    const/4 p1, 0x1

    goto :goto_5f

    :cond_5e
    const/4 p1, 0x0

    :goto_5f
    iput-boolean v3, p0, Landroid/support/v4/widget/DrawerLayout;->a8:Z

    iput-boolean v3, p0, Landroid/support/v4/widget/DrawerLayout;->lg:Z

    :goto_63
    or-int v0, v1, v2

    if-nez v0, :cond_73

    if-nez p1, :cond_73

    invoke-direct {p0}, Landroid/support/v4/widget/DrawerLayout;->v5()Z

    move-result p1

    if-nez p1, :cond_73

    iget-boolean p1, p0, Landroid/support/v4/widget/DrawerLayout;->lg:Z

    if-eqz p1, :cond_74

    :cond_73
    const/4 v3, 0x1

    :cond_74
    return v3
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4

    const/4 v0, 0x4

    if-ne p1, v0, :cond_e

    invoke-direct {p0}, Landroid/support/v4/widget/DrawerLayout;->Zo()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p2}, Landroid/view/KeyEvent;->startTracking()V

    const/4 p1, 0x1

    return p1

    :cond_e
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 4

    const/4 v0, 0x4

    if-ne p1, v0, :cond_18

    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->Hw()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_12

    invoke-virtual {p0, p1}, Landroid/support/v4/widget/DrawerLayout;->Hw(Landroid/view/View;)I

    move-result p2

    if-nez p2, :cond_12

    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->DW()V

    :cond_12
    if-eqz p1, :cond_16

    const/4 p1, 0x1

    goto :goto_17

    :cond_16
    const/4 p1, 0x0

    :goto_17
    return p1

    :cond_18
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method protected onLayout(ZIIII)V
    .registers 22

    move-object/from16 v0, p0

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/v4/widget/DrawerLayout;->QX:Z

    sub-int v2, p4, p2

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_d
    if-ge v5, v3, :cond_cb

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v7

    const/16 v8, 0x8

    if-ne v7, v8, :cond_1d

    goto/16 :goto_c6

    :cond_1d
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    invoke-virtual {v0, v6}, Landroid/support/v4/widget/DrawerLayout;->gn(Landroid/view/View;)Z

    move-result v8

    if-eqz v8, :cond_3e

    iget v8, v7, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v9, v7, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    add-int/2addr v10, v8

    iget v7, v7, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    add-int/2addr v7, v11

    invoke-virtual {v6, v8, v9, v10, v7}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_c6

    :cond_3e
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    const/4 v10, 0x3

    invoke-virtual {v0, v6, v10}, Landroid/support/v4/widget/DrawerLayout;->j6(Landroid/view/View;I)Z

    move-result v10

    if-eqz v10, :cond_5a

    neg-int v10, v8

    int-to-float v11, v8

    iget v12, v7, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->DW:F

    mul-float v12, v12, v11

    float-to-int v12, v12

    add-int/2addr v10, v12

    add-int v12, v8, v10

    int-to-float v12, v12

    div-float/2addr v12, v11

    goto :goto_67

    :cond_5a
    int-to-float v10, v8

    iget v11, v7, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->DW:F

    mul-float v11, v11, v10

    float-to-int v11, v11

    sub-int v11, v2, v11

    sub-int v12, v2, v11

    int-to-float v12, v12

    div-float/2addr v12, v10

    move v10, v11

    :goto_67
    iget v11, v7, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->DW:F

    cmpl-float v11, v12, v11

    if-eqz v11, :cond_6f

    const/4 v11, 0x1

    goto :goto_70

    :cond_6f
    const/4 v11, 0x0

    :goto_70
    iget v13, v7, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->j6:I

    and-int/lit8 v13, v13, 0x70

    const/16 v14, 0x10

    if-eq v13, v14, :cond_94

    const/16 v14, 0x50

    if-eq v13, v14, :cond_81

    iget v13, v7, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v8, v10

    add-int/2addr v9, v13

    goto :goto_90

    :cond_81
    sub-int v9, p5, p3

    iget v13, v7, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int v13, v9, v13

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    sub-int/2addr v13, v14

    add-int/2addr v8, v10

    iget v14, v7, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int/2addr v9, v14

    :goto_90
    invoke-virtual {v6, v10, v13, v8, v9}, Landroid/view/View;->layout(IIII)V

    goto :goto_ae

    :cond_94
    sub-int v13, p5, p3

    sub-int v14, v13, v9

    div-int/lit8 v14, v14, 0x2

    iget v15, v7, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-ge v14, v15, :cond_a0

    move v14, v15

    goto :goto_a9

    :cond_a0
    iget v15, v7, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int v1, v14, v9

    sub-int/2addr v13, v15

    if-le v1, v13, :cond_a9

    sub-int v14, v13, v9

    :cond_a9
    :goto_a9
    add-int/2addr v8, v10

    add-int/2addr v9, v14

    invoke-virtual {v6, v10, v14, v8, v9}, Landroid/view/View;->layout(IIII)V

    :goto_ae
    if-eqz v11, :cond_b3

    invoke-virtual {v0, v6, v12}, Landroid/support/v4/widget/DrawerLayout;->FH(Landroid/view/View;F)V

    :cond_b3
    iget v1, v7, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->DW:F

    const/4 v7, 0x0

    cmpl-float v1, v1, v7

    if-lez v1, :cond_bc

    const/4 v1, 0x0

    goto :goto_bd

    :cond_bc
    const/4 v1, 0x4

    :goto_bd
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-eq v7, v1, :cond_c6

    invoke-virtual {v6, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_c6
    :goto_c6
    add-int/lit8 v5, v5, 0x1

    const/4 v1, 0x1

    goto/16 :goto_d

    :cond_cb
    iput-boolean v4, v0, Landroid/support/v4/widget/DrawerLayout;->QX:Z

    iput-boolean v4, v0, Landroid/support/v4/widget/DrawerLayout;->XL:Z

    return-void
.end method

.method protected onMeasure(II)V
    .registers 20

    move-object/from16 v0, p0

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    const/high16 v5, 0x40000000  # 2.0f

    if-ne v1, v5, :cond_18

    if-eq v2, v5, :cond_30

    :cond_18
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->isInEditMode()Z

    move-result v6

    if-eqz v6, :cond_1c3

    const/16 v6, 0x12c

    const/high16 v7, -0x80000000

    if-ne v1, v7, :cond_25

    goto :goto_29

    :cond_25
    if-nez v1, :cond_29

    const/16 v3, 0x12c

    :cond_29
    :goto_29
    if-ne v2, v7, :cond_2c

    goto :goto_30

    :cond_2c
    if-nez v2, :cond_30

    const/16 v4, 0x12c

    :cond_30
    :goto_30
    invoke-virtual {v0, v3, v4}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    iget-object v1, v0, Landroid/support/v4/widget/DrawerLayout;->SI:Ljava/lang/Object;

    const/4 v6, 0x0

    if-eqz v1, :cond_40

    invoke-static/range {p0 .. p0}, Landroid/support/v4/view/s;->DW(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_40

    const/4 v1, 0x1

    goto :goto_41

    :cond_40
    const/4 v1, 0x0

    :goto_41
    invoke-static/range {p0 .. p0}, Landroid/support/v4/view/s;->Hw(Landroid/view/View;)I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_4c
    if-ge v9, v8, :cond_1c2

    invoke-virtual {v0, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    invoke-virtual {v12}, Landroid/view/View;->getVisibility()I

    move-result v13

    const/16 v14, 0x8

    if-ne v13, v14, :cond_5c

    goto/16 :goto_10b

    :cond_5c
    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    const/4 v14, 0x3

    if-eqz v1, :cond_ea

    iget v15, v13, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->j6:I

    invoke-static {v15, v7}, Landroid/support/v4/view/f;->j6(II)I

    move-result v15

    invoke-static {v12}, Landroid/support/v4/view/s;->DW(Landroid/view/View;)Z

    move-result v16

    const/16 v5, 0x15

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-eqz v16, :cond_a5

    if-lt v2, v5, :cond_ea

    iget-object v2, v0, Landroid/support/v4/widget/DrawerLayout;->SI:Ljava/lang/Object;

    check-cast v2, Landroid/view/WindowInsets;

    if-ne v15, v14, :cond_8e

    invoke-virtual {v2}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v5

    invoke-virtual {v2}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v15

    invoke-virtual {v2}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v14

    invoke-virtual {v2, v5, v15, v6, v14}, Landroid/view/WindowInsets;->replaceSystemWindowInsets(IIII)Landroid/view/WindowInsets;

    move-result-object v2

    goto :goto_a1

    :cond_8e
    const/4 v5, 0x5

    if-ne v15, v5, :cond_a1

    invoke-virtual {v2}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v5

    invoke-virtual {v2}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    move-result v14

    invoke-virtual {v2}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v15

    invoke-virtual {v2, v6, v5, v14, v15}, Landroid/view/WindowInsets;->replaceSystemWindowInsets(IIII)Landroid/view/WindowInsets;

    move-result-object v2

    :cond_a1
    :goto_a1
    invoke-virtual {v12, v2}, Landroid/view/View;->dispatchApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    goto :goto_ea

    :cond_a5
    if-lt v2, v5, :cond_ea

    iget-object v2, v0, Landroid/support/v4/widget/DrawerLayout;->SI:Ljava/lang/Object;

    check-cast v2, Landroid/view/WindowInsets;

    const/4 v5, 0x3

    if-ne v15, v5, :cond_bf

    invoke-virtual {v2}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v5

    invoke-virtual {v2}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v14

    invoke-virtual {v2}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v15

    invoke-virtual {v2, v5, v14, v6, v15}, Landroid/view/WindowInsets;->replaceSystemWindowInsets(IIII)Landroid/view/WindowInsets;

    move-result-object v2

    goto :goto_d2

    :cond_bf
    const/4 v5, 0x5

    if-ne v15, v5, :cond_d2

    invoke-virtual {v2}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v5

    invoke-virtual {v2}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    move-result v14

    invoke-virtual {v2}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v15

    invoke-virtual {v2, v6, v5, v14, v15}, Landroid/view/WindowInsets;->replaceSystemWindowInsets(IIII)Landroid/view/WindowInsets;

    move-result-object v2

    :cond_d2
    :goto_d2
    invoke-virtual {v2}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v5

    iput v5, v13, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    invoke-virtual {v2}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v5

    iput v5, v13, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-virtual {v2}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    move-result v5

    iput v5, v13, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    invoke-virtual {v2}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v2

    iput v2, v13, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    :cond_ea
    :goto_ea
    invoke-virtual {v0, v12}, Landroid/support/v4/widget/DrawerLayout;->gn(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_111

    iget v2, v13, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    sub-int v2, v3, v2

    iget v5, v13, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    sub-int/2addr v2, v5

    const/high16 v5, 0x40000000  # 2.0f

    invoke-static {v2, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    iget v14, v13, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int v14, v4, v14

    iget v13, v13, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int/2addr v14, v13

    invoke-static {v14, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v13

    invoke-virtual {v12, v2, v13}, Landroid/view/View;->measure(II)V

    :goto_10b
    move/from16 v15, p1

    move/from16 v13, p2

    goto/16 :goto_193

    :cond_111
    const/high16 v5, 0x40000000  # 2.0f

    invoke-virtual {v0, v12}, Landroid/support/v4/widget/DrawerLayout;->tp(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_199

    sget-boolean v2, Landroid/support/v4/widget/DrawerLayout;->Hw:Z

    if-eqz v2, :cond_12a

    invoke-static {v12}, Landroid/support/v4/view/s;->j6(Landroid/view/View;)F

    move-result v2

    iget v14, v0, Landroid/support/v4/widget/DrawerLayout;->Zo:F

    cmpl-float v2, v2, v14

    if-eqz v2, :cond_12a

    invoke-static {v12, v14}, Landroid/support/v4/view/s;->j6(Landroid/view/View;F)V

    :cond_12a
    invoke-virtual {v0, v12}, Landroid/support/v4/widget/DrawerLayout;->v5(Landroid/view/View;)I

    move-result v2

    and-int/lit8 v2, v2, 0x7

    const/4 v14, 0x3

    if-ne v2, v14, :cond_135

    const/4 v14, 0x1

    goto :goto_136

    :cond_135
    const/4 v14, 0x0

    :goto_136
    if-eqz v14, :cond_13a

    if-nez v10, :cond_13f

    :cond_13a
    if-nez v14, :cond_16e

    if-nez v11, :cond_13f

    goto :goto_16e

    :cond_13f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Child drawer has absolute gravity "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Landroid/support/v4/widget/DrawerLayout;->v5(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " but this "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "DrawerLayout"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " already has a "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "drawer view along that edge"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_16e
    :goto_16e
    if-eqz v14, :cond_172

    const/4 v10, 0x1

    goto :goto_173

    :cond_172
    const/4 v11, 0x1

    :goto_173
    iget v2, v0, Landroid/support/v4/widget/DrawerLayout;->VH:I

    iget v14, v13, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v2, v14

    iget v14, v13, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v2, v14

    iget v14, v13, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    move/from16 v15, p1

    invoke-static {v15, v2, v14}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v2

    iget v14, v13, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v5, v13, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v14, v5

    iget v5, v13, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    move/from16 v13, p2

    invoke-static {v13, v14, v5}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v5

    invoke-virtual {v12, v2, v5}, Landroid/view/View;->measure(II)V

    :goto_193
    add-int/lit8 v9, v9, 0x1

    const/high16 v5, 0x40000000  # 2.0f

    goto/16 :goto_4c

    :cond_199
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Child "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " at index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " does not have a valid layout_gravity - must be Gravity.LEFT, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Gravity.RIGHT or Gravity.NO_GRAVITY"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1c2
    return-void

    :cond_1c3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "DrawerLayout must be measured with MeasureSpec.EXACTLY."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_1cc

    :goto_1cb
    throw v1

    :goto_1cc
    goto :goto_1cb
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 5

    instance-of v0, p1, Landroid/support/v4/widget/DrawerLayout$SavedState;

    if-nez v0, :cond_8

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    :cond_8
    check-cast p1, Landroid/support/v4/widget/DrawerLayout$SavedState;

    invoke-virtual {p1}, Landroid/support/v4/view/AbsSavedState;->j6()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget v0, p1, Landroid/support/v4/widget/DrawerLayout$SavedState;->j6:I

    if-eqz v0, :cond_1e

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/DrawerLayout;->DW(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1e

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/DrawerLayout;->we(Landroid/view/View;)V

    :cond_1e
    iget v0, p1, Landroid/support/v4/widget/DrawerLayout$SavedState;->DW:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_26

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/widget/DrawerLayout;->j6(II)V

    :cond_26
    iget v0, p1, Landroid/support/v4/widget/DrawerLayout$SavedState;->FH:I

    if-eq v0, v1, :cond_2e

    const/4 v2, 0x5

    invoke-virtual {p0, v0, v2}, Landroid/support/v4/widget/DrawerLayout;->j6(II)V

    :cond_2e
    iget v0, p1, Landroid/support/v4/widget/DrawerLayout$SavedState;->Hw:I

    if-eq v0, v1, :cond_38

    const v2, 0x800003

    invoke-virtual {p0, v0, v2}, Landroid/support/v4/widget/DrawerLayout;->j6(II)V

    :cond_38
    iget p1, p1, Landroid/support/v4/widget/DrawerLayout$SavedState;->v5:I

    if-eq p1, v1, :cond_42

    const v0, 0x800005

    invoke-virtual {p0, p1, v0}, Landroid/support/v4/widget/DrawerLayout;->j6(II)V

    :cond_42
    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .registers 2

    invoke-direct {p0}, Landroid/support/v4/widget/DrawerLayout;->u7()V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .registers 10

    new-instance v0, Landroid/support/v4/widget/DrawerLayout$SavedState;

    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/widget/DrawerLayout$SavedState;-><init>(Landroid/os/Parcelable;)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_f
    if-ge v3, v1, :cond_36

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    iget v5, v4, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->Hw:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_22

    const/4 v5, 0x1

    goto :goto_23

    :cond_22
    const/4 v5, 0x0

    :goto_23
    iget v7, v4, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->Hw:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_29

    goto :goto_2a

    :cond_29
    const/4 v6, 0x0

    :goto_2a
    if-nez v5, :cond_32

    if-eqz v6, :cond_2f

    goto :goto_32

    :cond_2f
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    :cond_32
    :goto_32
    iget v1, v4, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->j6:I

    iput v1, v0, Landroid/support/v4/widget/DrawerLayout$SavedState;->j6:I

    :cond_36
    iget v1, p0, Landroid/support/v4/widget/DrawerLayout;->aM:I

    iput v1, v0, Landroid/support/v4/widget/DrawerLayout$SavedState;->DW:I

    iget v1, p0, Landroid/support/v4/widget/DrawerLayout;->j3:I

    iput v1, v0, Landroid/support/v4/widget/DrawerLayout$SavedState;->FH:I

    iget v1, p0, Landroid/support/v4/widget/DrawerLayout;->Mr:I

    iput v1, v0, Landroid/support/v4/widget/DrawerLayout$SavedState;->Hw:I

    iget v1, p0, Landroid/support/v4/widget/DrawerLayout;->U2:I

    iput v1, v0, Landroid/support/v4/widget/DrawerLayout$SavedState;->v5:I

    return-object v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 8

    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->EQ:Landroid/support/v4/widget/w;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/w;->j6(Landroid/view/MotionEvent;)V

    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->we:Landroid/support/v4/widget/w;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/w;->j6(Landroid/view/MotionEvent;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_65

    if-eq v0, v1, :cond_1e

    const/4 p1, 0x3

    if-eq v0, p1, :cond_1a

    goto :goto_75

    :cond_1a
    invoke-virtual {p0, v1}, Landroid/support/v4/widget/DrawerLayout;->j6(Z)V

    goto :goto_71

    :cond_1e
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget-object v3, p0, Landroid/support/v4/widget/DrawerLayout;->EQ:Landroid/support/v4/widget/w;

    float-to-int v4, v0

    float-to-int v5, p1

    invoke-virtual {v3, v4, v5}, Landroid/support/v4/widget/w;->DW(II)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_5e

    invoke-virtual {p0, v3}, Landroid/support/v4/widget/DrawerLayout;->gn(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_5e

    iget v3, p0, Landroid/support/v4/widget/DrawerLayout;->yS:F

    sub-float/2addr v0, v3

    iget v3, p0, Landroid/support/v4/widget/DrawerLayout;->gW:F

    sub-float/2addr p1, v3

    iget-object v3, p0, Landroid/support/v4/widget/DrawerLayout;->EQ:Landroid/support/v4/widget/w;

    invoke-virtual {v3}, Landroid/support/v4/widget/w;->v5()I

    move-result v3

    mul-float v0, v0, v0

    mul-float p1, p1, p1

    add-float/2addr v0, p1

    mul-int v3, v3, v3

    int-to-float p1, v3

    cmpg-float p1, v0, p1

    if-gez p1, :cond_5e

    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->FH()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_5e

    invoke-virtual {p0, p1}, Landroid/support/v4/widget/DrawerLayout;->Hw(Landroid/view/View;)I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_5c

    goto :goto_5e

    :cond_5c
    const/4 p1, 0x0

    goto :goto_5f

    :cond_5e
    :goto_5e
    const/4 p1, 0x1

    :goto_5f
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/DrawerLayout;->j6(Z)V

    iput-boolean v2, p0, Landroid/support/v4/widget/DrawerLayout;->a8:Z

    goto :goto_75

    :cond_65
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput v0, p0, Landroid/support/v4/widget/DrawerLayout;->yS:F

    iput p1, p0, Landroid/support/v4/widget/DrawerLayout;->gW:F

    :goto_71
    iput-boolean v2, p0, Landroid/support/v4/widget/DrawerLayout;->a8:Z

    iput-boolean v2, p0, Landroid/support/v4/widget/DrawerLayout;->lg:Z

    :goto_75
    return v1
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .registers 2

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    iput-boolean p1, p0, Landroid/support/v4/widget/DrawerLayout;->a8:Z

    if-eqz p1, :cond_b

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/support/v4/widget/DrawerLayout;->j6(Z)V

    :cond_b
    return-void
.end method

.method public requestLayout()V
    .registers 2

    iget-boolean v0, p0, Landroid/support/v4/widget/DrawerLayout;->QX:Z

    if-nez v0, :cond_7

    invoke-super {p0}, Landroid/view/ViewGroup;->requestLayout()V

    :cond_7
    return-void
.end method

.method public setDrawerElevation(F)V
    .registers 4

    iput p1, p0, Landroid/support/v4/widget/DrawerLayout;->Zo:F

    const/4 p1, 0x0

    :goto_3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge p1, v0, :cond_1b

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/DrawerLayout;->tp(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_18

    iget v1, p0, Landroid/support/v4/widget/DrawerLayout;->Zo:F

    invoke-static {v0, v1}, Landroid/support/v4/view/s;->j6(Landroid/view/View;F)V

    :cond_18
    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    :cond_1b
    return-void
.end method

.method public setDrawerListener(Landroid/support/v4/widget/DrawerLayout$c;)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->rN:Landroid/support/v4/widget/DrawerLayout$c;

    if-eqz v0, :cond_7

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/DrawerLayout;->DW(Landroid/support/v4/widget/DrawerLayout$c;)V

    :cond_7
    if-eqz p1, :cond_c

    invoke-virtual {p0, p1}, Landroid/support/v4/widget/DrawerLayout;->j6(Landroid/support/v4/widget/DrawerLayout$c;)V

    :cond_c
    iput-object p1, p0, Landroid/support/v4/widget/DrawerLayout;->rN:Landroid/support/v4/widget/DrawerLayout$c;

    return-void
.end method

.method public setDrawerLockMode(I)V
    .registers 3

    const/4 v0, 0x3

    invoke-virtual {p0, p1, v0}, Landroid/support/v4/widget/DrawerLayout;->j6(II)V

    const/4 v0, 0x5

    invoke-virtual {p0, p1, v0}, Landroid/support/v4/widget/DrawerLayout;->j6(II)V

    return-void
.end method

.method public setScrimColor(I)V
    .registers 2

    iput p1, p0, Landroid/support/v4/widget/DrawerLayout;->gn:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method

.method public setStatusBarBackground(I)V
    .registers 3

    if-eqz p1, :cond_b

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/support/v4/content/b;->DW(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_c

    :cond_b
    const/4 p1, 0x0

    :goto_c
    iput-object p1, p0, Landroid/support/v4/widget/DrawerLayout;->BT:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method

.method public setStatusBarBackground(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    iput-object p1, p0, Landroid/support/v4/widget/DrawerLayout;->BT:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method

.method public setStatusBarBackgroundColor(I)V
    .registers 3

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->BT:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method

.method tp(Landroid/view/View;)Z
    .registers 4

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    iget v0, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->j6:I

    invoke-static {p1}, Landroid/support/v4/view/s;->Hw(Landroid/view/View;)I

    move-result p1

    invoke-static {v0, p1}, Landroid/support/v4/view/f;->j6(II)I

    move-result p1

    and-int/lit8 v0, p1, 0x3

    const/4 v1, 0x1

    if-eqz v0, :cond_16

    return v1

    :cond_16
    and-int/lit8 p1, p1, 0x5

    if-eqz p1, :cond_1b

    return v1

    :cond_1b
    const/4 p1, 0x0

    return p1
.end method

.method public u7(Landroid/view/View;)Z
    .registers 4

    invoke-virtual {p0, p1}, Landroid/support/v4/widget/DrawerLayout;->tp(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    iget p1, p1, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->Hw:I

    const/4 v0, 0x1

    and-int/2addr p1, v0

    if-ne p1, v0, :cond_13

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    :goto_14
    return v0

    :cond_15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "View "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is not a drawer"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method v5(Landroid/view/View;)I
    .registers 3

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    iget p1, p1, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->j6:I

    invoke-static {p0}, Landroid/support/v4/view/s;->Hw(Landroid/view/View;)I

    move-result v0

    invoke-static {p1, v0}, Landroid/support/v4/view/f;->j6(II)I

    move-result p1

    return p1
.end method

.method public we(Landroid/view/View;)V
    .registers 3

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/support/v4/widget/DrawerLayout;->DW(Landroid/view/View;Z)V

    return-void
.end method
