.class final Landroid/support/v4/app/x;
.super Landroid/support/v4/app/r;

# interfaces
.implements Landroid/view/LayoutInflater$Factory2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/app/x$a;,
        Landroid/support/v4/app/x$b;,
        Landroid/support/v4/app/x$c;,
        Landroid/support/v4/app/x$d;,
        Landroid/support/v4/app/x$e;,
        Landroid/support/v4/app/x$f;,
        Landroid/support/v4/app/x$g;,
        Landroid/support/v4/app/x$h;
    }
.end annotation


# static fields
.field static DW:Ljava/lang/reflect/Field;

.field static final FH:Landroid/view/animation/Interpolator;

.field static final Hw:Landroid/view/animation/Interpolator;

.field static final Zo:Landroid/view/animation/Interpolator;

.field static j6:Z

.field static final v5:Landroid/view/animation/Interpolator;


# instance fields
.field BT:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/support/v4/app/e;",
            ">;"
        }
    .end annotation
.end field

.field EQ:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field J0:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field J8:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/support/v4/app/e;",
            ">;"
        }
    .end annotation
.end field

.field KD:Landroid/support/v4/app/y;

.field Mr:Landroid/support/v4/app/o;

.field P8:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field QX:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/support/v4/app/r$c;",
            ">;"
        }
    .end annotation
.end field

.field SI:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/support/v4/app/x$h;",
            ">;"
        }
    .end annotation
.end field

.field U2:Landroid/support/v4/app/Fragment;

.field VH:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/support/v4/app/x$f;",
            ">;"
        }
    .end annotation
.end field

.field Ws:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final XL:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Ls<",
            "Landroid/support/v4/app/r$b;",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end field

.field a8:Landroid/support/v4/app/Fragment;

.field aM:I

.field ei:Landroid/os/Bundle;

.field er:Z

.field gW:Z

.field gn:Z

.field j3:Landroid/support/v4/app/q;

.field lg:Z

.field nw:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;"
        }
    .end annotation
.end field

.field rN:Z

.field ro:Ljava/lang/Runnable;

.field final tp:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field u7:I

.field vy:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field we:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/support/v4/app/e;",
            ">;"
        }
    .end annotation
.end field

.field yS:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x40200000  # 2.5f

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    sput-object v0, Landroid/support/v4/app/x;->FH:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v2, 0x3fc00000  # 1.5f

    invoke-direct {v0, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    sput-object v0, Landroid/support/v4/app/x;->Hw:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0, v1}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    sput-object v0, Landroid/support/v4/app/x;->v5:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0, v2}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    sput-object v0, Landroid/support/v4/app/x;->Zo:Landroid/view/animation/Interpolator;

    return-void
.end method

.method constructor <init>()V
    .registers 3

    invoke-direct {p0}, Landroid/support/v4/app/r;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v4/app/x;->u7:I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/support/v4/app/x;->tp:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v1, p0, Landroid/support/v4/app/x;->XL:Ljava/util/concurrent/CopyOnWriteArrayList;

    iput v0, p0, Landroid/support/v4/app/x;->aM:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/app/x;->ei:Landroid/os/Bundle;

    iput-object v0, p0, Landroid/support/v4/app/x;->nw:Landroid/util/SparseArray;

    new-instance v0, Landroid/support/v4/app/s;

    invoke-direct {v0, p0}, Landroid/support/v4/app/s;-><init>(Landroid/support/v4/app/x;)V

    iput-object v0, p0, Landroid/support/v4/app/x;->ro:Ljava/lang/Runnable;

    return-void
.end method

.method private BT()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/x;->gn:Z

    iget-object v0, p0, Landroid/support/v4/app/x;->vy:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Landroid/support/v4/app/x;->BT:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public static DW(IZ)I
    .registers 3

    const/16 v0, 0x1001

    if-eq p0, v0, :cond_1a

    const/16 v0, 0x1003

    if-eq p0, v0, :cond_14

    const/16 v0, 0x2002

    if-eq p0, v0, :cond_e

    const/4 p0, -0x1

    goto :goto_1f

    :cond_e
    if-eqz p1, :cond_12

    const/4 p0, 0x3

    goto :goto_1f

    :cond_12
    const/4 p0, 0x4

    goto :goto_1f

    :cond_14
    if-eqz p1, :cond_18

    const/4 p0, 0x5

    goto :goto_1f

    :cond_18
    const/4 p0, 0x6

    goto :goto_1f

    :cond_1a
    if-eqz p1, :cond_1e

    const/4 p0, 0x1

    goto :goto_1f

    :cond_1e
    const/4 p0, 0x2

    :goto_1f
    return p0
.end method

.method private DW(Labcd/m;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lm<",
            "Landroid/support/v4/app/Fragment;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Labcd/m;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_22

    invoke-virtual {p1, v1}, Labcd/m;->VH(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/app/Fragment;

    iget-boolean v3, v2, Landroid/support/v4/app/Fragment;->we:Z

    if-nez v3, :cond_1f

    invoke-virtual {v2}, Landroid/support/v4/app/Fragment;->lg()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getAlpha()F

    move-result v4

    iput v4, v2, Landroid/support/v4/app/Fragment;->Mz:F

    const/4 v2, 0x0

    invoke-virtual {v3, v2}, Landroid/view/View;->setAlpha(F)V

    :cond_1f
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_22
    return-void
.end method

.method private static DW(Landroid/view/View;Landroid/support/v4/app/x$c;)V
    .registers 5

    if-eqz p0, :cond_2d

    if-nez p1, :cond_5

    goto :goto_2d

    :cond_5
    invoke-static {p0, p1}, Landroid/support/v4/app/x;->j6(Landroid/view/View;Landroid/support/v4/app/x$c;)Z

    move-result v0

    if-eqz v0, :cond_2d

    iget-object v0, p1, Landroid/support/v4/app/x$c;->DW:Landroid/animation/Animator;

    if-eqz v0, :cond_18

    new-instance p1, Landroid/support/v4/app/x$d;

    invoke-direct {p1, p0}, Landroid/support/v4/app/x$d;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, p1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_2d

    :cond_18
    iget-object v0, p1, Landroid/support/v4/app/x$c;->j6:Landroid/view/animation/Animation;

    invoke-static {v0}, Landroid/support/v4/app/x;->j6(Landroid/view/animation/Animation;)Landroid/view/animation/Animation$AnimationListener;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    iget-object p1, p1, Landroid/support/v4/app/x$c;->j6:Landroid/view/animation/Animation;

    new-instance v1, Landroid/support/v4/app/x$a;

    invoke-direct {v1, p0, v0}, Landroid/support/v4/app/x$a;-><init>(Landroid/view/View;Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {p1, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    :cond_2d
    :goto_2d
    return-void
.end method

.method private DW(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/support/v4/app/e;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;II)V"
        }
    .end annotation

    move-object v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move/from16 v9, p3

    move/from16 v10, p4

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/e;

    iget-boolean v11, v0, Landroid/support/v4/app/e;->U2:Z

    iget-object v0, v6, Landroid/support/v4/app/x;->P8:Ljava/util/ArrayList;

    if-nez v0, :cond_1d

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v6, Landroid/support/v4/app/x;->P8:Ljava/util/ArrayList;

    goto :goto_20

    :cond_1d
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :goto_20
    iget-object v0, v6, Landroid/support/v4/app/x;->P8:Ljava/util/ArrayList;

    iget-object v1, v6, Landroid/support/v4/app/x;->tp:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p0}, Landroid/support/v4/app/x;->j3()Landroid/support/v4/app/Fragment;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v9

    const/4 v12, 0x0

    :goto_2e
    const/4 v13, 0x1

    if-ge v2, v10, :cond_5d

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v4/app/e;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_4a

    iget-object v4, v6, Landroid/support/v4/app/x;->P8:Ljava/util/ArrayList;

    invoke-virtual {v3, v4, v0}, Landroid/support/v4/app/e;->j6(Ljava/util/ArrayList;Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    goto :goto_50

    :cond_4a
    iget-object v4, v6, Landroid/support/v4/app/x;->P8:Ljava/util/ArrayList;

    invoke-virtual {v3, v4, v0}, Landroid/support/v4/app/e;->DW(Ljava/util/ArrayList;Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    :goto_50
    if-nez v12, :cond_59

    iget-boolean v3, v3, Landroid/support/v4/app/e;->tp:Z

    if-eqz v3, :cond_57

    goto :goto_59

    :cond_57
    const/4 v12, 0x0

    goto :goto_5a

    :cond_59
    :goto_59
    const/4 v12, 0x1

    :goto_5a
    add-int/lit8 v2, v2, 0x1

    goto :goto_2e

    :cond_5d
    iget-object v0, v6, Landroid/support/v4/app/x;->P8:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    if-nez v11, :cond_71

    const/4 v5, 0x0

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    invoke-static/range {v0 .. v5}, Landroid/support/v4/app/I;->j6(Landroid/support/v4/app/x;Ljava/util/ArrayList;Ljava/util/ArrayList;IIZ)V

    :cond_71
    invoke-static/range {p1 .. p4}, Landroid/support/v4/app/x;->j6(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    if-eqz v11, :cond_91

    new-instance v14, Labcd/m;

    invoke-direct {v14}, Labcd/m;-><init>()V

    invoke-direct {p0, v14}, Landroid/support/v4/app/x;->j6(Labcd/m;)V

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object v5, v14

    invoke-direct/range {v0 .. v5}, Landroid/support/v4/app/x;->j6(Ljava/util/ArrayList;Ljava/util/ArrayList;IILabcd/m;)I

    move-result v0

    invoke-direct {p0, v14}, Landroid/support/v4/app/x;->DW(Labcd/m;)V

    move v4, v0

    goto :goto_92

    :cond_91
    move v4, v10

    :goto_92
    if-eq v4, v9, :cond_a6

    if-eqz v11, :cond_a6

    const/4 v5, 0x1

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    invoke-static/range {v0 .. v5}, Landroid/support/v4/app/I;->j6(Landroid/support/v4/app/x;Ljava/util/ArrayList;Ljava/util/ArrayList;IIZ)V

    iget v0, v6, Landroid/support/v4/app/x;->aM:I

    invoke-virtual {p0, v0, v13}, Landroid/support/v4/app/x;->j6(IZ)V

    :cond_a6
    :goto_a6
    if-ge v9, v10, :cond_ca

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/e;

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_c4

    iget v1, v0, Landroid/support/v4/app/e;->J8:I

    if-ltz v1, :cond_c4

    invoke-virtual {p0, v1}, Landroid/support/v4/app/x;->DW(I)V

    const/4 v1, -0x1

    iput v1, v0, Landroid/support/v4/app/e;->J8:I

    :cond_c4
    invoke-virtual {v0}, Landroid/support/v4/app/e;->gn()V

    add-int/lit8 v9, v9, 0x1

    goto :goto_a6

    :cond_ca
    if-eqz v12, :cond_cf

    invoke-virtual {p0}, Landroid/support/v4/app/x;->U2()V

    :cond_cf
    return-void
.end method

.method private DW(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/support/v4/app/e;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/support/v4/app/x;->VH:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_38

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_d

    goto :goto_38

    :cond_d
    iget-object v0, p0, Landroid/support/v4/app/x;->VH:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_14
    if-ge v1, v0, :cond_26

    iget-object v3, p0, Landroid/support/v4/app/x;->VH:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v4/app/x$f;

    invoke-interface {v3, p1, p2}, Landroid/support/v4/app/x$f;->j6(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result v3

    or-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    :cond_26
    iget-object p1, p0, Landroid/support/v4/app/x;->VH:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    iget-object p1, p0, Landroid/support/v4/app/x;->j3:Landroid/support/v4/app/q;

    invoke-virtual {p1}, Landroid/support/v4/app/q;->VH()Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Landroid/support/v4/app/x;->ro:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    monitor-exit p0

    return v2

    :cond_38
    :goto_38
    monitor-exit p0

    return v1

    :catchall_3a
    move-exception p1

    monitor-exit p0
    :try_end_3c
    .catchall {:try_start_1 .. :try_end_3c} :catchall_3a

    goto :goto_3e

    :goto_3d
    throw p1

    :goto_3e
    goto :goto_3d
.end method

.method private FH(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/support/v4/app/e;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_6e

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_6e

    :cond_9
    if-eqz p2, :cond_66

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v0, v1, :cond_66

    invoke-direct {p0, p1, p2}, Landroid/support/v4/app/x;->j6(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_1e
    if-ge v1, v0, :cond_60

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v4/app/e;

    iget-boolean v3, v3, Landroid/support/v4/app/e;->U2:Z

    if-nez v3, :cond_5d

    if-eq v2, v1, :cond_2f

    invoke-direct {p0, p1, p2, v2, v1}, Landroid/support/v4/app/x;->DW(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    :cond_2f
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_58

    :goto_3d
    if-ge v2, v0, :cond_58

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_58

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v4/app/e;

    iget-boolean v3, v3, Landroid/support/v4/app/e;->U2:Z

    if-nez v3, :cond_58

    add-int/lit8 v2, v2, 0x1

    goto :goto_3d

    :cond_58
    invoke-direct {p0, p1, p2, v1, v2}, Landroid/support/v4/app/x;->DW(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    add-int/lit8 v1, v2, -0x1

    :cond_5d
    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    :cond_60
    if-eq v2, v0, :cond_65

    invoke-direct {p0, p1, p2, v2, v0}, Landroid/support/v4/app/x;->DW(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    :cond_65
    return-void

    :cond_66
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Internal error with the back stack records"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6e
    :goto_6e
    return-void
.end method

.method private FH(Z)V
    .registers 4

    iget-boolean v0, p0, Landroid/support/v4/app/x;->gn:Z

    if-nez v0, :cond_42

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/app/x;->j3:Landroid/support/v4/app/q;

    invoke-virtual {v1}, Landroid/support/v4/app/q;->VH()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_3a

    if-nez p1, :cond_19

    invoke-direct {p0}, Landroid/support/v4/app/x;->gW()V

    :cond_19
    iget-object p1, p0, Landroid/support/v4/app/x;->BT:Ljava/util/ArrayList;

    if-nez p1, :cond_2b

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroid/support/v4/app/x;->BT:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroid/support/v4/app/x;->vy:Ljava/util/ArrayList;

    :cond_2b
    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/support/v4/app/x;->gn:Z

    const/4 p1, 0x0

    const/4 v0, 0x0

    :try_start_30
    invoke-direct {p0, v0, v0}, Landroid/support/v4/app/x;->j6(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_33
    .catchall {:try_start_30 .. :try_end_33} :catchall_36

    iput-boolean p1, p0, Landroid/support/v4/app/x;->gn:Z

    return-void

    :catchall_36
    move-exception v0

    iput-boolean p1, p0, Landroid/support/v4/app/x;->gn:Z

    throw v0

    :cond_3a
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Must be called from main thread of fragment host"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_42
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "FragmentManager is already executing transactions"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static Hw(I)I
    .registers 4

    const/16 v0, 0x2002

    const/16 v1, 0x1001

    if-eq p0, v1, :cond_13

    const/16 v2, 0x1003

    if-eq p0, v2, :cond_11

    if-eq p0, v0, :cond_e

    const/4 v0, 0x0

    goto :goto_13

    :cond_e
    const/16 v0, 0x1001

    goto :goto_13

    :cond_11
    const/16 v0, 0x1003

    :cond_13
    :goto_13
    return v0
.end method

.method private P8()V
    .registers 3

    iget-object v0, p0, Landroid/support/v4/app/x;->SI:Ljava/util/ArrayList;

    if-eqz v0, :cond_19

    :goto_4
    iget-object v0, p0, Landroid/support/v4/app/x;->SI:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_19

    iget-object v0, p0, Landroid/support/v4/app/x;->SI:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/x$h;

    invoke-virtual {v0}, Landroid/support/v4/app/x$h;->Hw()V

    goto :goto_4

    :cond_19
    return-void
.end method

.method private XL(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/Fragment;
    .registers 5

    iget-object v0, p1, Landroid/support/v4/app/Fragment;->KD:Landroid/view/ViewGroup;

    iget-object v1, p1, Landroid/support/v4/app/Fragment;->ro:Landroid/view/View;

    if-eqz v0, :cond_27

    if-nez v1, :cond_9

    goto :goto_27

    :cond_9
    iget-object v1, p0, Landroid/support/v4/app/x;->tp:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_11
    if-ltz p1, :cond_27

    iget-object v1, p0, Landroid/support/v4/app/x;->tp:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/Fragment;

    iget-object v2, v1, Landroid/support/v4/app/Fragment;->KD:Landroid/view/ViewGroup;

    if-ne v2, v0, :cond_24

    iget-object v2, v1, Landroid/support/v4/app/Fragment;->ro:Landroid/view/View;

    if-eqz v2, :cond_24

    return-object v1

    :cond_24
    add-int/lit8 p1, p1, -0x1

    goto :goto_11

    :cond_27
    :goto_27
    const/4 p1, 0x0

    return-object p1
.end method

.method private ei()V
    .registers 5

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/support/v4/app/x;->SI:Ljava/util/ArrayList;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    iget-object v3, p0, Landroid/support/v4/app/x;->VH:Ljava/util/ArrayList;

    if-eqz v3, :cond_1b

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v3, v2, :cond_1b

    const/4 v1, 0x1

    :cond_1b
    if-nez v0, :cond_1f

    if-eqz v1, :cond_35

    :cond_1f
    iget-object v0, p0, Landroid/support/v4/app/x;->j3:Landroid/support/v4/app/q;

    invoke-virtual {v0}, Landroid/support/v4/app/q;->VH()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/app/x;->ro:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Landroid/support/v4/app/x;->j3:Landroid/support/v4/app/q;

    invoke-virtual {v0}, Landroid/support/v4/app/q;->VH()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/app/x;->ro:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_35
    monitor-exit p0

    return-void

    :catchall_37
    move-exception v0

    monitor-exit p0
    :try_end_39
    .catchall {:try_start_1 .. :try_end_39} :catchall_37

    throw v0
.end method

.method private gW()V
    .registers 3

    iget-boolean v0, p0, Landroid/support/v4/app/x;->rN:Z

    if-nez v0, :cond_22

    iget-object v0, p0, Landroid/support/v4/app/x;->yS:Ljava/lang/String;

    if-nez v0, :cond_9

    return-void

    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Can not perform this action inside of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/support/v4/app/x;->yS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_22
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can not perform this action after onSaveInstanceState"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private j6(Ljava/util/ArrayList;Ljava/util/ArrayList;IILabcd/m;)I
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/support/v4/app/e;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;II",
            "Lm<",
            "Landroid/support/v4/app/Fragment;",
            ">;)I"
        }
    .end annotation

    add-int/lit8 v0, p4, -0x1

    move v1, p4

    :goto_3
    if-lt v0, p3, :cond_5a

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/app/e;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v2}, Landroid/support/v4/app/e;->VH()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_26

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {v2, p1, v4, p4}, Landroid/support/v4/app/e;->j6(Ljava/util/ArrayList;II)Z

    move-result v4

    if-nez v4, :cond_26

    const/4 v4, 0x1

    goto :goto_27

    :cond_26
    const/4 v4, 0x0

    :goto_27
    if-eqz v4, :cond_57

    iget-object v4, p0, Landroid/support/v4/app/x;->SI:Ljava/util/ArrayList;

    if-nez v4, :cond_34

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Landroid/support/v4/app/x;->SI:Ljava/util/ArrayList;

    :cond_34
    new-instance v4, Landroid/support/v4/app/x$h;

    invoke-direct {v4, v2, v3}, Landroid/support/v4/app/x$h;-><init>(Landroid/support/v4/app/e;Z)V

    iget-object v6, p0, Landroid/support/v4/app/x;->SI:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2, v4}, Landroid/support/v4/app/e;->j6(Landroid/support/v4/app/Fragment$c;)V

    if-eqz v3, :cond_47

    invoke-virtual {v2}, Landroid/support/v4/app/e;->v5()V

    goto :goto_4a

    :cond_47
    invoke-virtual {v2, v5}, Landroid/support/v4/app/e;->DW(Z)V

    :goto_4a
    add-int/lit8 v1, v1, -0x1

    if-eq v0, v1, :cond_54

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    invoke-virtual {p1, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :cond_54
    invoke-direct {p0, p5}, Landroid/support/v4/app/x;->j6(Labcd/m;)V

    :cond_57
    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    :cond_5a
    return v1
.end method

.method static j6(Landroid/content/Context;FF)Landroid/support/v4/app/x$c;
    .registers 3

    new-instance p0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {p0, p1, p2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    sget-object p1, Landroid/support/v4/app/x;->Hw:Landroid/view/animation/Interpolator;

    invoke-virtual {p0, p1}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const-wide/16 p1, 0xdc

    invoke-virtual {p0, p1, p2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    new-instance p1, Landroid/support/v4/app/x$c;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Landroid/support/v4/app/x$c;-><init>(Landroid/view/animation/Animation;Landroid/support/v4/app/s;)V

    return-object p1
.end method

.method static j6(Landroid/content/Context;FFFF)Landroid/support/v4/app/x$c;
    .registers 15

    new-instance p0, Landroid/view/animation/AnimationSet;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const/4 v6, 0x1

    const/high16 v7, 0x3f000000  # 0.5f

    const/4 v8, 0x1

    const/high16 v9, 0x3f000000  # 0.5f

    move-object v1, v0

    move v2, p1

    move v3, p2

    move v4, p1

    move v5, p2

    invoke-direct/range {v1 .. v9}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    sget-object p1, Landroid/support/v4/app/x;->FH:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, p1}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const-wide/16 p1, 0xdc

    invoke-virtual {v0, p1, p2}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    invoke-virtual {p0, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, p3, p4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    sget-object p3, Landroid/support/v4/app/x;->Hw:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, p3}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {v0, p1, p2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    invoke-virtual {p0, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    new-instance p1, Landroid/support/v4/app/x$c;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Landroid/support/v4/app/x$c;-><init>(Landroid/view/animation/Animation;Landroid/support/v4/app/s;)V

    return-object p1
.end method

.method private static j6(Landroid/view/animation/Animation;)Landroid/view/animation/Animation$AnimationListener;
    .registers 4

    const-string v0, "FragmentManager"

    :try_start_2
    sget-object v1, Landroid/support/v4/app/x;->DW:Ljava/lang/reflect/Field;

    if-nez v1, :cond_14

    const-class v1, Landroid/view/animation/Animation;

    const-string v2, "mListener"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    sput-object v1, Landroid/support/v4/app/x;->DW:Ljava/lang/reflect/Field;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    :cond_14
    sget-object v1, Landroid/support/v4/app/x;->DW:Ljava/lang/reflect/Field;

    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/animation/Animation$AnimationListener;
    :try_end_1c
    .catch Ljava/lang/NoSuchFieldException; {:try_start_2 .. :try_end_1c} :catch_21
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_1c} :catch_1d

    goto :goto_28

    :catch_1d
    move-exception p0

    const-string v1, "Cannot access Animation\'s mListener field"

    goto :goto_24

    :catch_21
    move-exception p0

    const-string v1, "No field with the name mListener is found in Animation class"

    :goto_24
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    :goto_28
    return-object p0
.end method

.method private j6(Labcd/m;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lm<",
            "Landroid/support/v4/app/Fragment;",
            ">;)V"
        }
    .end annotation

    iget v0, p0, Landroid/support/v4/app/x;->aM:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_6

    return-void

    :cond_6
    const/4 v1, 0x4

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, p0, Landroid/support/v4/app/x;->tp:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v8, 0x0

    :goto_13
    if-ge v8, v1, :cond_43

    iget-object v2, p0, Landroid/support/v4/app/x;->tp:Ljava/util/ArrayList;

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroid/support/v4/app/Fragment;

    iget v2, v9, Landroid/support/v4/app/Fragment;->FH:I

    if-ge v2, v0, :cond_40

    invoke-virtual {v9}, Landroid/support/v4/app/Fragment;->J8()I

    move-result v5

    invoke-virtual {v9}, Landroid/support/v4/app/Fragment;->Ws()I

    move-result v6

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, v9

    move v4, v0

    invoke-virtual/range {v2 .. v7}, Landroid/support/v4/app/x;->j6(Landroid/support/v4/app/Fragment;IIIZ)V

    iget-object v2, v9, Landroid/support/v4/app/Fragment;->ro:Landroid/view/View;

    if-eqz v2, :cond_40

    iget-boolean v2, v9, Landroid/support/v4/app/Fragment;->gW:Z

    if-nez v2, :cond_40

    iget-boolean v2, v9, Landroid/support/v4/app/Fragment;->vJ:Z

    if-eqz v2, :cond_40

    invoke-virtual {p1, v9}, Labcd/m;->add(Ljava/lang/Object;)Z

    :cond_40
    add-int/lit8 v8, v8, 0x1

    goto :goto_13

    :cond_43
    return-void
.end method

.method private j6(Landroid/support/v4/app/Fragment;Landroid/support/v4/app/x$c;I)V
    .registers 7

    iget-object v0, p1, Landroid/support/v4/app/Fragment;->ro:Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/support/v4/app/Fragment;->DW(I)V

    iget-object p3, p2, Landroid/support/v4/app/x$c;->j6:Landroid/view/animation/Animation;

    if-eqz p3, :cond_23

    iget-object v1, p1, Landroid/support/v4/app/Fragment;->ro:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/support/v4/app/Fragment;->j6(Landroid/view/View;)V

    new-instance v1, Landroid/support/v4/app/t;

    invoke-static {p3}, Landroid/support/v4/app/x;->j6(Landroid/view/animation/Animation;)Landroid/view/animation/Animation$AnimationListener;

    move-result-object v2

    invoke-direct {v1, p0, v2, p1}, Landroid/support/v4/app/t;-><init>(Landroid/support/v4/app/x;Landroid/view/animation/Animation$AnimationListener;Landroid/support/v4/app/Fragment;)V

    invoke-virtual {p3, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    invoke-static {v0, p2}, Landroid/support/v4/app/x;->DW(Landroid/view/View;Landroid/support/v4/app/x$c;)V

    iget-object p1, p1, Landroid/support/v4/app/Fragment;->ro:Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_44

    :cond_23
    iget-object p3, p2, Landroid/support/v4/app/x$c;->DW:Landroid/animation/Animator;

    invoke-virtual {p1, p3}, Landroid/support/v4/app/Fragment;->j6(Landroid/animation/Animator;)V

    iget-object v1, p1, Landroid/support/v4/app/Fragment;->KD:Landroid/view/ViewGroup;

    if-eqz v1, :cond_2f

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->startViewTransition(Landroid/view/View;)V

    :cond_2f
    new-instance v2, Landroid/support/v4/app/u;

    invoke-direct {v2, p0, v1, v0, p1}, Landroid/support/v4/app/u;-><init>(Landroid/support/v4/app/x;Landroid/view/ViewGroup;Landroid/view/View;Landroid/support/v4/app/Fragment;)V

    invoke-virtual {p3, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p1, Landroid/support/v4/app/Fragment;->ro:Landroid/view/View;

    invoke-virtual {p3, v0}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    iget-object p1, p1, Landroid/support/v4/app/Fragment;->ro:Landroid/view/View;

    invoke-static {p1, p2}, Landroid/support/v4/app/x;->DW(Landroid/view/View;Landroid/support/v4/app/x$c;)V

    invoke-virtual {p3}, Landroid/animation/Animator;->start()V

    :goto_44
    return-void
.end method

.method private j6(Landroid/support/v4/app/e;ZZZ)V
    .registers 12

    if-eqz p2, :cond_6

    invoke-virtual {p1, p4}, Landroid/support/v4/app/e;->DW(Z)V

    goto :goto_9

    :cond_6
    invoke-virtual {p1}, Landroid/support/v4/app/e;->v5()V

    :goto_9
    new-instance v1, Ljava/util/ArrayList;

    const/4 v6, 0x1

    invoke-direct {v1, v6}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v6}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz p3, :cond_27

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Landroid/support/v4/app/I;->j6(Landroid/support/v4/app/x;Ljava/util/ArrayList;Ljava/util/ArrayList;IIZ)V

    :cond_27
    if-eqz p4, :cond_2e

    iget p2, p0, Landroid/support/v4/app/x;->aM:I

    invoke-virtual {p0, p2, v6}, Landroid/support/v4/app/x;->j6(IZ)V

    :cond_2e
    iget-object p2, p0, Landroid/support/v4/app/x;->EQ:Landroid/util/SparseArray;

    if-eqz p2, :cond_6e

    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result p2

    const/4 p3, 0x0

    const/4 v0, 0x0

    :goto_38
    if-ge v0, p2, :cond_6e

    iget-object v1, p0, Landroid/support/v4/app/x;->EQ:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/Fragment;

    if-eqz v1, :cond_6b

    iget-object v2, v1, Landroid/support/v4/app/Fragment;->ro:Landroid/view/View;

    if-eqz v2, :cond_6b

    iget-boolean v2, v1, Landroid/support/v4/app/Fragment;->vJ:Z

    if-eqz v2, :cond_6b

    iget v2, v1, Landroid/support/v4/app/Fragment;->er:I

    invoke-virtual {p1, v2}, Landroid/support/v4/app/e;->DW(I)Z

    move-result v2

    if-eqz v2, :cond_6b

    iget v2, v1, Landroid/support/v4/app/Fragment;->Mz:F

    const/4 v3, 0x0

    cmpl-float v4, v2, v3

    if-lez v4, :cond_60

    iget-object v4, v1, Landroid/support/v4/app/Fragment;->ro:Landroid/view/View;

    invoke-virtual {v4, v2}, Landroid/view/View;->setAlpha(F)V

    :cond_60
    if-eqz p4, :cond_65

    iput v3, v1, Landroid/support/v4/app/Fragment;->Mz:F

    goto :goto_6b

    :cond_65
    const/high16 v2, -0x40800000  # -1.0f

    iput v2, v1, Landroid/support/v4/app/Fragment;->Mz:F

    iput-boolean p3, v1, Landroid/support/v4/app/Fragment;->vJ:Z

    :cond_6b
    :goto_6b
    add-int/lit8 v0, v0, 0x1

    goto :goto_38

    :cond_6e
    return-void
.end method

.method static synthetic j6(Landroid/support/v4/app/x;)V
    .registers 1

    invoke-direct {p0}, Landroid/support/v4/app/x;->ei()V

    return-void
.end method

.method static synthetic j6(Landroid/support/v4/app/x;Landroid/support/v4/app/e;ZZZ)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/v4/app/x;->j6(Landroid/support/v4/app/e;ZZZ)V

    return-void
.end method

.method private static j6(Landroid/support/v4/app/y;)V
    .registers 4

    if-nez p0, :cond_3

    return-void

    :cond_3
    invoke-virtual {p0}, Landroid/support/v4/app/y;->DW()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1d

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/Fragment;

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/support/v4/app/Fragment;->P8:Z

    goto :goto_d

    :cond_1d
    invoke-virtual {p0}, Landroid/support/v4/app/y;->j6()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_37

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_27
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_37

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/y;

    invoke-static {v0}, Landroid/support/v4/app/x;->j6(Landroid/support/v4/app/y;)V

    goto :goto_27

    :cond_37
    return-void
.end method

.method private j6(Ljava/lang/RuntimeException;)V
    .registers 9

    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "Activity state:"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/io/PrintWriter;

    new-instance v2, Labcd/p;

    invoke-direct {v2, v1}, Labcd/p;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    iget-object v2, p0, Landroid/support/v4/app/x;->j3:Landroid/support/v4/app/q;

    const-string v3, "Failed dumping state"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, "  "

    if-eqz v2, :cond_28

    :try_start_22
    new-array v4, v4, [Ljava/lang/String;

    invoke-virtual {v2, v6, v5, v0, v4}, Landroid/support/v4/app/q;->DW(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto :goto_32

    :cond_28
    new-array v2, v4, [Ljava/lang/String;

    invoke-virtual {p0, v6, v5, v0, v2}, Landroid/support/v4/app/x;->j6(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_2d} :catch_2e

    goto :goto_32

    :catch_2e
    move-exception v0

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_32
    throw p1
.end method

.method private j6(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/support/v4/app/e;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Landroid/support/v4/app/x;->SI:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-nez v0, :cond_7

    const/4 v0, 0x0

    goto :goto_b

    :cond_7
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_b
    const/4 v2, 0x0

    :goto_c
    if-ge v2, v0, :cond_7d

    iget-object v3, p0, Landroid/support/v4/app/x;->SI:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v4/app/x$h;

    const/4 v4, -0x1

    if-eqz p1, :cond_39

    invoke-static {v3}, Landroid/support/v4/app/x$h;->j6(Landroid/support/v4/app/x$h;)Z

    move-result v5

    if-nez v5, :cond_39

    invoke-static {v3}, Landroid/support/v4/app/x$h;->DW(Landroid/support/v4/app/x$h;)Landroid/support/v4/app/e;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    if-eq v5, v4, :cond_39

    invoke-virtual {p2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_39

    :goto_35
    invoke-virtual {v3}, Landroid/support/v4/app/x$h;->FH()V

    goto :goto_7a

    :cond_39
    invoke-virtual {v3}, Landroid/support/v4/app/x$h;->v5()Z

    move-result v5

    if-nez v5, :cond_4f

    if-eqz p1, :cond_7a

    invoke-static {v3}, Landroid/support/v4/app/x$h;->DW(Landroid/support/v4/app/x$h;)Landroid/support/v4/app/e;

    move-result-object v5

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, p1, v1, v6}, Landroid/support/v4/app/e;->j6(Ljava/util/ArrayList;II)Z

    move-result v5

    if-eqz v5, :cond_7a

    :cond_4f
    iget-object v5, p0, Landroid/support/v4/app/x;->SI:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v2, v2, -0x1

    add-int/lit8 v0, v0, -0x1

    if-eqz p1, :cond_77

    invoke-static {v3}, Landroid/support/v4/app/x$h;->j6(Landroid/support/v4/app/x$h;)Z

    move-result v5

    if-nez v5, :cond_77

    invoke-static {v3}, Landroid/support/v4/app/x$h;->DW(Landroid/support/v4/app/x$h;)Landroid/support/v4/app/e;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    if-eq v5, v4, :cond_77

    invoke-virtual {p2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_77

    goto :goto_35

    :cond_77
    invoke-virtual {v3}, Landroid/support/v4/app/x$h;->Hw()V

    :cond_7a
    :goto_7a
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_7d
    return-void
.end method

.method private static j6(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/support/v4/app/e;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;II)V"
        }
    .end annotation

    :goto_0
    if-ge p2, p3, :cond_2c

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/e;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_23

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/e;->j6(I)V

    add-int/lit8 v1, p3, -0x1

    if-ne p2, v1, :cond_1e

    goto :goto_1f

    :cond_1e
    const/4 v2, 0x0

    :goto_1f
    invoke-virtual {v0, v2}, Landroid/support/v4/app/e;->DW(Z)V

    goto :goto_29

    :cond_23
    invoke-virtual {v0, v2}, Landroid/support/v4/app/e;->j6(I)V

    invoke-virtual {v0}, Landroid/support/v4/app/e;->v5()V

    :goto_29
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2c
    return-void
.end method

.method static j6(Landroid/animation/Animator;)Z
    .registers 6

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    :cond_4
    instance-of v1, p0, Landroid/animation/ValueAnimator;

    const/4 v2, 0x1

    if-eqz v1, :cond_25

    check-cast p0, Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->getValues()[Landroid/animation/PropertyValuesHolder;

    move-result-object p0

    const/4 v1, 0x0

    :goto_10
    array-length v3, p0

    if-ge v1, v3, :cond_46

    aget-object v3, p0, v1

    invoke-virtual {v3}, Landroid/animation/PropertyValuesHolder;->getPropertyName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "alpha"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_22

    return v2

    :cond_22
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    :cond_25
    instance-of v1, p0, Landroid/animation/AnimatorSet;

    if-eqz v1, :cond_46

    check-cast p0, Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->getChildAnimations()Ljava/util/ArrayList;

    move-result-object p0

    const/4 v1, 0x0

    :goto_30
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_46

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/Animator;

    invoke-static {v3}, Landroid/support/v4/app/x;->j6(Landroid/animation/Animator;)Z

    move-result v3

    if-eqz v3, :cond_43

    return v2

    :cond_43
    add-int/lit8 v1, v1, 0x1

    goto :goto_30

    :cond_46
    return v0
.end method

.method static j6(Landroid/support/v4/app/x$c;)Z
    .registers 5

    iget-object v0, p0, Landroid/support/v4/app/x$c;->j6:Landroid/view/animation/Animation;

    instance-of v1, v0, Landroid/view/animation/AlphaAnimation;

    const/4 v2, 0x1

    if-eqz v1, :cond_8

    return v2

    :cond_8
    instance-of v1, v0, Landroid/view/animation/AnimationSet;

    if-eqz v1, :cond_27

    check-cast v0, Landroid/view/animation/AnimationSet;

    invoke-virtual {v0}, Landroid/view/animation/AnimationSet;->getAnimations()Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_14
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_26

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Landroid/view/animation/AlphaAnimation;

    if-eqz v3, :cond_23

    return v2

    :cond_23
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    :cond_26
    return v0

    :cond_27
    iget-object p0, p0, Landroid/support/v4/app/x$c;->DW:Landroid/animation/Animator;

    invoke-static {p0}, Landroid/support/v4/app/x;->j6(Landroid/animation/Animator;)Z

    move-result p0

    return p0
.end method

.method static j6(Landroid/view/View;Landroid/support/v4/app/x$c;)Z
    .registers 4

    if-eqz p0, :cond_1f

    if-nez p1, :cond_5

    goto :goto_1f

    :cond_5
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_1f

    invoke-virtual {p0}, Landroid/view/View;->getLayerType()I

    move-result v0

    if-nez v0, :cond_1f

    invoke-static {p0}, Landroid/support/v4/view/s;->VH(Landroid/view/View;)Z

    move-result p0

    if-eqz p0, :cond_1f

    invoke-static {p1}, Landroid/support/v4/app/x;->j6(Landroid/support/v4/app/x$c;)Z

    move-result p0

    if-eqz p0, :cond_1f

    const/4 p0, 0x1

    goto :goto_20

    :cond_1f
    :goto_1f
    const/4 p0, 0x0

    :goto_20
    return p0
.end method

.method private j6(Ljava/lang/String;II)Z
    .registers 12

    invoke-virtual {p0}, Landroid/support/v4/app/x;->XL()Z

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/support/v4/app/x;->FH(Z)V

    iget-object v1, p0, Landroid/support/v4/app/x;->a8:Landroid/support/v4/app/Fragment;

    if-eqz v1, :cond_1c

    if-gez p2, :cond_1c

    if-nez p1, :cond_1c

    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->Sf()Landroid/support/v4/app/r;

    move-result-object v1

    if-eqz v1, :cond_1c

    invoke-virtual {v1}, Landroid/support/v4/app/r;->v5()Z

    move-result v1

    if-eqz v1, :cond_1c

    return v0

    :cond_1c
    iget-object v3, p0, Landroid/support/v4/app/x;->BT:Ljava/util/ArrayList;

    iget-object v4, p0, Landroid/support/v4/app/x;->vy:Ljava/util/ArrayList;

    move-object v2, p0

    move-object v5, p1

    move v6, p2

    move v7, p3

    invoke-virtual/range {v2 .. v7}, Landroid/support/v4/app/x;->j6(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;II)Z

    move-result p1

    if-eqz p1, :cond_3c

    iput-boolean v0, p0, Landroid/support/v4/app/x;->gn:Z

    :try_start_2c
    iget-object p2, p0, Landroid/support/v4/app/x;->BT:Ljava/util/ArrayList;

    iget-object p3, p0, Landroid/support/v4/app/x;->vy:Ljava/util/ArrayList;

    invoke-direct {p0, p2, p3}, Landroid/support/v4/app/x;->FH(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_33
    .catchall {:try_start_2c .. :try_end_33} :catchall_37

    invoke-direct {p0}, Landroid/support/v4/app/x;->BT()V

    goto :goto_3c

    :catchall_37
    move-exception p1

    invoke-direct {p0}, Landroid/support/v4/app/x;->BT()V

    throw p1

    :cond_3c
    :goto_3c
    invoke-virtual {p0}, Landroid/support/v4/app/x;->QX()V

    invoke-direct {p0}, Landroid/support/v4/app/x;->yS()V

    return p1
.end method

.method private v5(I)V
    .registers 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_2
    iput-boolean v0, p0, Landroid/support/v4/app/x;->gn:Z

    invoke-virtual {p0, p1, v1}, Landroid/support/v4/app/x;->j6(IZ)V
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_d

    iput-boolean v1, p0, Landroid/support/v4/app/x;->gn:Z

    invoke-virtual {p0}, Landroid/support/v4/app/x;->XL()Z

    return-void

    :catchall_d
    move-exception p1

    iput-boolean v1, p0, Landroid/support/v4/app/x;->gn:Z

    throw p1
.end method

.method private vy()V
    .registers 10

    iget-object v0, p0, Landroid/support/v4/app/x;->EQ:Landroid/util/SparseArray;

    const/4 v1, 0x0

    if-nez v0, :cond_7

    const/4 v0, 0x0

    goto :goto_b

    :cond_7
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    :goto_b
    if-ge v1, v0, :cond_4e

    iget-object v2, p0, Landroid/support/v4/app/x;->EQ:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Landroid/support/v4/app/Fragment;

    if-eqz v4, :cond_4b

    invoke-virtual {v4}, Landroid/support/v4/app/Fragment;->v5()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_3e

    invoke-virtual {v4}, Landroid/support/v4/app/Fragment;->a8()I

    move-result v5

    invoke-virtual {v4}, Landroid/support/v4/app/Fragment;->v5()Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v4, v3}, Landroid/support/v4/app/Fragment;->j6(Landroid/view/View;)V

    invoke-virtual {v2}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v3

    if-eqz v3, :cond_36

    invoke-virtual {v3}, Landroid/view/animation/Animation;->cancel()V

    invoke-virtual {v2}, Landroid/view/View;->clearAnimation()V

    :cond_36
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, p0

    invoke-virtual/range {v3 .. v8}, Landroid/support/v4/app/x;->j6(Landroid/support/v4/app/Fragment;IIIZ)V

    goto :goto_4b

    :cond_3e
    invoke-virtual {v4}, Landroid/support/v4/app/Fragment;->Zo()Landroid/animation/Animator;

    move-result-object v2

    if-eqz v2, :cond_4b

    invoke-virtual {v4}, Landroid/support/v4/app/Fragment;->Zo()Landroid/animation/Animator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/animation/Animator;->end()V

    :cond_4b
    :goto_4b
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_4e
    return-void
.end method

.method private yS()V
    .registers 4

    iget-object v0, p0, Landroid/support/v4/app/x;->EQ:Landroid/util/SparseArray;

    if-eqz v0, :cond_20

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_a
    if-ltz v0, :cond_20

    iget-object v1, p0, Landroid/support/v4/app/x;->EQ:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1d

    iget-object v1, p0, Landroid/support/v4/app/x;->EQ:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->delete(I)V

    :cond_1d
    add-int/lit8 v0, v0, -0x1

    goto :goto_a

    :cond_20
    return-void
.end method


# virtual methods
.method public DW(Landroid/support/v4/app/e;)I
    .registers 5

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/support/v4/app/x;->Ws:Ljava/util/ArrayList;

    if-eqz v0, :cond_47

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_c

    goto :goto_47

    :cond_c
    iget-object v0, p0, Landroid/support/v4/app/x;->Ws:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-boolean v1, Landroid/support/v4/app/x;->j6:Z

    if-eqz v1, :cond_40

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Adding back stack index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "FragmentManager"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_40
    iget-object v1, p0, Landroid/support/v4/app/x;->J8:Ljava/util/ArrayList;

    invoke-virtual {v1, v0, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    monitor-exit p0

    return v0

    :cond_47
    :goto_47
    iget-object v0, p0, Landroid/support/v4/app/x;->J8:Ljava/util/ArrayList;

    if-nez v0, :cond_52

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/x;->J8:Ljava/util/ArrayList;

    :cond_52
    iget-object v0, p0, Landroid/support/v4/app/x;->J8:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sget-boolean v1, Landroid/support/v4/app/x;->j6:Z

    if-eqz v1, :cond_7a

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting back stack index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "FragmentManager"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7a
    iget-object v1, p0, Landroid/support/v4/app/x;->J8:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit p0

    return v0

    :catchall_81
    move-exception p1

    monitor-exit p0
    :try_end_83
    .catchall {:try_start_1 .. :try_end_83} :catchall_81

    throw p1
.end method

.method public DW(Ljava/lang/String;)Landroid/support/v4/app/Fragment;
    .registers 4

    iget-object v0, p0, Landroid/support/v4/app/x;->EQ:Landroid/util/SparseArray;

    if-eqz v0, :cond_22

    if-eqz p1, :cond_22

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_c
    if-ltz v0, :cond_22

    iget-object v1, p0, Landroid/support/v4/app/x;->EQ:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/Fragment;

    if-eqz v1, :cond_1f

    invoke-virtual {v1, p1}, Landroid/support/v4/app/Fragment;->j6(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    if-eqz v1, :cond_1f

    return-object v1

    :cond_1f
    add-int/lit8 v0, v0, -0x1

    goto :goto_c

    :cond_22
    const/4 p1, 0x0

    return-object p1
.end method

.method public DW(I)V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/support/v4/app/x;->J8:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/support/v4/app/x;->Ws:Ljava/util/ArrayList;

    if-nez v0, :cond_12

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/x;->Ws:Ljava/util/ArrayList;

    :cond_12
    sget-boolean v0, Landroid/support/v4/app/x;->j6:Z

    if-eqz v0, :cond_2c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Freeing back stack index "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "FragmentManager"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2c
    iget-object v0, p0, Landroid/support/v4/app/x;->Ws:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit p0

    return-void

    :catchall_37
    move-exception p1

    monitor-exit p0
    :try_end_39
    .catchall {:try_start_1 .. :try_end_39} :catchall_37

    throw p1
.end method

.method public DW(Landroid/support/v4/app/Fragment;)V
    .registers 4

    sget-boolean v0, Landroid/support/v4/app/x;->j6:Z

    if-eqz v0, :cond_1a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "attach: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "FragmentManager"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1a
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->BT:Z

    if-eqz v0, :cond_78

    const/4 v0, 0x0

    iput-boolean v0, p1, Landroid/support/v4/app/Fragment;->BT:Z

    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->we:Z

    if-nez v0, :cond_78

    iget-object v0, p0, Landroid/support/v4/app/x;->tp:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_61

    sget-boolean v0, Landroid/support/v4/app/x;->j6:Z

    if-eqz v0, :cond_47

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "add from attach: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "FragmentManager"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_47
    iget-object v0, p0, Landroid/support/v4/app/x;->tp:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_4a
    iget-object v1, p0, Landroid/support/v4/app/x;->tp:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v0
    :try_end_50
    .catchall {:try_start_4a .. :try_end_50} :catchall_5e

    const/4 v0, 0x1

    iput-boolean v0, p1, Landroid/support/v4/app/Fragment;->we:Z

    iget-boolean v1, p1, Landroid/support/v4/app/Fragment;->ei:Z

    if-eqz v1, :cond_78

    iget-boolean p1, p1, Landroid/support/v4/app/Fragment;->nw:Z

    if-eqz p1, :cond_78

    iput-boolean v0, p0, Landroid/support/v4/app/x;->lg:Z

    goto :goto_78

    :catchall_5e
    move-exception p1

    :try_start_5f
    monitor-exit v0
    :try_end_60
    .catchall {:try_start_5f .. :try_end_60} :catchall_5e

    throw p1

    :cond_61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Fragment already added: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_78
    :goto_78
    return-void
.end method

.method DW(Landroid/support/v4/app/Fragment;Landroid/content/Context;Z)V
    .registers 7

    iget-object v0, p0, Landroid/support/v4/app/x;->U2:Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->J0()Landroid/support/v4/app/r;

    move-result-object v0

    instance-of v1, v0, Landroid/support/v4/app/x;

    if-eqz v1, :cond_12

    check-cast v0, Landroid/support/v4/app/x;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Landroid/support/v4/app/x;->DW(Landroid/support/v4/app/Fragment;Landroid/content/Context;Z)V

    :cond_12
    iget-object v0, p0, Landroid/support/v4/app/x;->XL:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_18
    :goto_18
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_38

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Labcd/s;

    if-eqz p3, :cond_30

    iget-object v2, v1, Labcd/s;->DW:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_18

    :cond_30
    iget-object v1, v1, Labcd/s;->j6:Ljava/lang/Object;

    check-cast v1, Landroid/support/v4/app/r$b;

    invoke-virtual {v1, p0, p1, p2}, Landroid/support/v4/app/r$b;->DW(Landroid/support/v4/app/r;Landroid/support/v4/app/Fragment;Landroid/content/Context;)V

    goto :goto_18

    :cond_38
    return-void
.end method

.method DW(Landroid/support/v4/app/Fragment;Landroid/os/Bundle;Z)V
    .registers 7

    iget-object v0, p0, Landroid/support/v4/app/x;->U2:Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->J0()Landroid/support/v4/app/r;

    move-result-object v0

    instance-of v1, v0, Landroid/support/v4/app/x;

    if-eqz v1, :cond_12

    check-cast v0, Landroid/support/v4/app/x;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Landroid/support/v4/app/x;->DW(Landroid/support/v4/app/Fragment;Landroid/os/Bundle;Z)V

    :cond_12
    iget-object v0, p0, Landroid/support/v4/app/x;->XL:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_18
    :goto_18
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_38

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Labcd/s;

    if-eqz p3, :cond_30

    iget-object v2, v1, Labcd/s;->DW:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_18

    :cond_30
    iget-object v1, v1, Labcd/s;->j6:Ljava/lang/Object;

    check-cast v1, Landroid/support/v4/app/r$b;

    invoke-virtual {v1, p0, p1, p2}, Landroid/support/v4/app/r$b;->DW(Landroid/support/v4/app/r;Landroid/support/v4/app/Fragment;Landroid/os/Bundle;)V

    goto :goto_18

    :cond_38
    return-void
.end method

.method DW(Landroid/support/v4/app/Fragment;Z)V
    .registers 6

    iget-object v0, p0, Landroid/support/v4/app/x;->U2:Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->J0()Landroid/support/v4/app/r;

    move-result-object v0

    instance-of v1, v0, Landroid/support/v4/app/x;

    if-eqz v1, :cond_12

    check-cast v0, Landroid/support/v4/app/x;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/support/v4/app/x;->DW(Landroid/support/v4/app/Fragment;Z)V

    :cond_12
    iget-object v0, p0, Landroid/support/v4/app/x;->XL:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_18
    :goto_18
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_38

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Labcd/s;

    if-eqz p2, :cond_30

    iget-object v2, v1, Labcd/s;->DW:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_18

    :cond_30
    iget-object v1, v1, Labcd/s;->j6:Ljava/lang/Object;

    check-cast v1, Landroid/support/v4/app/r$b;

    invoke-virtual {v1, p0, p1}, Landroid/support/v4/app/r$b;->j6(Landroid/support/v4/app/r;Landroid/support/v4/app/Fragment;)V

    goto :goto_18

    :cond_38
    return-void
.end method

.method public DW(Landroid/support/v4/app/x$f;Z)V
    .registers 4

    if-eqz p2, :cond_b

    iget-object v0, p0, Landroid/support/v4/app/x;->j3:Landroid/support/v4/app/q;

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Landroid/support/v4/app/x;->er:Z

    if-eqz v0, :cond_b

    :cond_a
    return-void

    :cond_b
    invoke-direct {p0, p2}, Landroid/support/v4/app/x;->FH(Z)V

    iget-object p2, p0, Landroid/support/v4/app/x;->BT:Ljava/util/ArrayList;

    iget-object v0, p0, Landroid/support/v4/app/x;->vy:Ljava/util/ArrayList;

    invoke-interface {p1, p2, v0}, Landroid/support/v4/app/x$f;->j6(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result p1

    if-eqz p1, :cond_2b

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/support/v4/app/x;->gn:Z

    :try_start_1b
    iget-object p1, p0, Landroid/support/v4/app/x;->BT:Ljava/util/ArrayList;

    iget-object p2, p0, Landroid/support/v4/app/x;->vy:Ljava/util/ArrayList;

    invoke-direct {p0, p1, p2}, Landroid/support/v4/app/x;->FH(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_22
    .catchall {:try_start_1b .. :try_end_22} :catchall_26

    invoke-direct {p0}, Landroid/support/v4/app/x;->BT()V

    goto :goto_2b

    :catchall_26
    move-exception p1

    invoke-direct {p0}, Landroid/support/v4/app/x;->BT()V

    throw p1

    :cond_2b
    :goto_2b
    invoke-virtual {p0}, Landroid/support/v4/app/x;->QX()V

    invoke-direct {p0}, Landroid/support/v4/app/x;->yS()V

    return-void
.end method

.method public DW(Z)V
    .registers 4

    iget-object v0, p0, Landroid/support/v4/app/x;->tp:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_1a

    iget-object v1, p0, Landroid/support/v4/app/x;->tp:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/Fragment;

    if-eqz v1, :cond_17

    invoke-virtual {v1, p1}, Landroid/support/v4/app/Fragment;->v5(Z)V

    :cond_17
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_1a
    return-void
.end method

.method public DW()Z
    .registers 2

    invoke-virtual {p0}, Landroid/support/v4/app/x;->XL()Z

    move-result v0

    invoke-direct {p0}, Landroid/support/v4/app/x;->P8()V

    return v0
.end method

.method public DW(Landroid/view/Menu;)Z
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_2
    iget-object v2, p0, Landroid/support/v4/app/x;->tp:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1e

    iget-object v2, p0, Landroid/support/v4/app/x;->tp:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/app/Fragment;

    if-eqz v2, :cond_1b

    invoke-virtual {v2, p1}, Landroid/support/v4/app/Fragment;->Hw(Landroid/view/Menu;)Z

    move-result v2

    if-eqz v2, :cond_1b

    const/4 v1, 0x1

    :cond_1b
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_1e
    return v1
.end method

.method public DW(Landroid/view/MenuItem;)Z
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_2
    iget-object v2, p0, Landroid/support/v4/app/x;->tp:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1f

    iget-object v2, p0, Landroid/support/v4/app/x;->tp:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/app/Fragment;

    if-eqz v2, :cond_1c

    invoke-virtual {v2, p1}, Landroid/support/v4/app/Fragment;->Hw(Landroid/view/MenuItem;)Z

    move-result v2

    if-eqz v2, :cond_1c

    const/4 p1, 0x1

    return p1

    :cond_1c
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_1f
    return v0
.end method

.method public EQ()V
    .registers 2

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroid/support/v4/app/x;->v5(I)V

    return-void
.end method

.method public EQ(Landroid/support/v4/app/Fragment;)V
    .registers 9

    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->sh:Z

    if-eqz v0, :cond_19

    iget-boolean v0, p0, Landroid/support/v4/app/x;->gn:Z

    if-eqz v0, :cond_c

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/support/v4/app/x;->gW:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    iput-boolean v0, p1, Landroid/support/v4/app/Fragment;->sh:Z

    iget v3, p0, Landroid/support/v4/app/x;->aM:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Landroid/support/v4/app/x;->j6(Landroid/support/v4/app/Fragment;IIIZ)V

    :cond_19
    return-void
.end method

.method public FH()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/support/v4/app/x;->tp:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object v0

    :cond_b
    iget-object v0, p0, Landroid/support/v4/app/x;->tp:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_e
    iget-object v1, p0, Landroid/support/v4/app/x;->tp:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    monitor-exit v0

    return-object v1

    :catchall_18
    move-exception v1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_e .. :try_end_1a} :catchall_18

    throw v1
.end method

.method FH(Landroid/support/v4/app/Fragment;)V
    .registers 9

    iget-object v0, p1, Landroid/support/v4/app/Fragment;->ro:Landroid/view/View;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_7f

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->Ws()I

    move-result v0

    iget-boolean v3, p1, Landroid/support/v4/app/Fragment;->gW:Z

    xor-int/2addr v3, v1

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->QX()I

    move-result v4

    invoke-virtual {p0, p1, v0, v3, v4}, Landroid/support/v4/app/x;->j6(Landroid/support/v4/app/Fragment;IZI)Landroid/support/v4/app/x$c;

    move-result-object v0

    if-eqz v0, :cond_50

    iget-object v3, v0, Landroid/support/v4/app/x$c;->DW:Landroid/animation/Animator;

    if-eqz v3, :cond_50

    iget-object v4, p1, Landroid/support/v4/app/Fragment;->ro:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    iget-boolean v3, p1, Landroid/support/v4/app/Fragment;->gW:Z

    if-eqz v3, :cond_40

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->vy()Z

    move-result v3

    if-eqz v3, :cond_2e

    invoke-virtual {p1, v2}, Landroid/support/v4/app/Fragment;->Zo(Z)V

    goto :goto_45

    :cond_2e
    iget-object v3, p1, Landroid/support/v4/app/Fragment;->KD:Landroid/view/ViewGroup;

    iget-object v4, p1, Landroid/support/v4/app/Fragment;->ro:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->startViewTransition(Landroid/view/View;)V

    iget-object v5, v0, Landroid/support/v4/app/x$c;->DW:Landroid/animation/Animator;

    new-instance v6, Landroid/support/v4/app/v;

    invoke-direct {v6, p0, v3, v4, p1}, Landroid/support/v4/app/v;-><init>(Landroid/support/v4/app/x;Landroid/view/ViewGroup;Landroid/view/View;Landroid/support/v4/app/Fragment;)V

    invoke-virtual {v5, v6}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_45

    :cond_40
    iget-object v3, p1, Landroid/support/v4/app/Fragment;->ro:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_45
    iget-object v3, p1, Landroid/support/v4/app/Fragment;->ro:Landroid/view/View;

    invoke-static {v3, v0}, Landroid/support/v4/app/x;->DW(Landroid/view/View;Landroid/support/v4/app/x$c;)V

    iget-object v0, v0, Landroid/support/v4/app/x$c;->DW:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    goto :goto_7f

    :cond_50
    if-eqz v0, :cond_63

    iget-object v3, p1, Landroid/support/v4/app/Fragment;->ro:Landroid/view/View;

    invoke-static {v3, v0}, Landroid/support/v4/app/x;->DW(Landroid/view/View;Landroid/support/v4/app/x$c;)V

    iget-object v3, p1, Landroid/support/v4/app/Fragment;->ro:Landroid/view/View;

    iget-object v4, v0, Landroid/support/v4/app/x$c;->j6:Landroid/view/animation/Animation;

    invoke-virtual {v3, v4}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, v0, Landroid/support/v4/app/x$c;->j6:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->start()V

    :cond_63
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->gW:Z

    if-eqz v0, :cond_70

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->vy()Z

    move-result v0

    if-nez v0, :cond_70

    const/16 v0, 0x8

    goto :goto_71

    :cond_70
    const/4 v0, 0x0

    :goto_71
    iget-object v3, p1, Landroid/support/v4/app/Fragment;->ro:Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->vy()Z

    move-result v0

    if-eqz v0, :cond_7f

    invoke-virtual {p1, v2}, Landroid/support/v4/app/Fragment;->Zo(Z)V

    :cond_7f
    :goto_7f
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->we:Z

    if-eqz v0, :cond_8d

    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->ei:Z

    if-eqz v0, :cond_8d

    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->nw:Z

    if-eqz v0, :cond_8d

    iput-boolean v1, p0, Landroid/support/v4/app/x;->lg:Z

    :cond_8d
    iput-boolean v2, p1, Landroid/support/v4/app/Fragment;->g3:Z

    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->gW:Z

    invoke-virtual {p1, v0}, Landroid/support/v4/app/Fragment;->j6(Z)V

    return-void
.end method

.method FH(Landroid/support/v4/app/Fragment;Landroid/os/Bundle;Z)V
    .registers 7

    iget-object v0, p0, Landroid/support/v4/app/x;->U2:Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->J0()Landroid/support/v4/app/r;

    move-result-object v0

    instance-of v1, v0, Landroid/support/v4/app/x;

    if-eqz v1, :cond_12

    check-cast v0, Landroid/support/v4/app/x;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Landroid/support/v4/app/x;->FH(Landroid/support/v4/app/Fragment;Landroid/os/Bundle;Z)V

    :cond_12
    iget-object v0, p0, Landroid/support/v4/app/x;->XL:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_18
    :goto_18
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_38

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Labcd/s;

    if-eqz p3, :cond_30

    iget-object v2, v1, Labcd/s;->DW:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_18

    :cond_30
    iget-object v1, v1, Labcd/s;->j6:Ljava/lang/Object;

    check-cast v1, Landroid/support/v4/app/r$b;

    invoke-virtual {v1, p0, p1, p2}, Landroid/support/v4/app/r$b;->FH(Landroid/support/v4/app/r;Landroid/support/v4/app/Fragment;Landroid/os/Bundle;)V

    goto :goto_18

    :cond_38
    return-void
.end method

.method FH(Landroid/support/v4/app/Fragment;Z)V
    .registers 6

    iget-object v0, p0, Landroid/support/v4/app/x;->U2:Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->J0()Landroid/support/v4/app/r;

    move-result-object v0

    instance-of v1, v0, Landroid/support/v4/app/x;

    if-eqz v1, :cond_12

    check-cast v0, Landroid/support/v4/app/x;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/support/v4/app/x;->FH(Landroid/support/v4/app/Fragment;Z)V

    :cond_12
    iget-object v0, p0, Landroid/support/v4/app/x;->XL:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_18
    :goto_18
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_38

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Labcd/s;

    if-eqz p2, :cond_30

    iget-object v2, v1, Labcd/s;->DW:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_18

    :cond_30
    iget-object v1, v1, Labcd/s;->j6:Ljava/lang/Object;

    check-cast v1, Landroid/support/v4/app/r$b;

    invoke-virtual {v1, p0, p1}, Landroid/support/v4/app/r$b;->DW(Landroid/support/v4/app/r;Landroid/support/v4/app/Fragment;)V

    goto :goto_18

    :cond_38
    return-void
.end method

.method FH(I)Z
    .registers 3

    iget v0, p0, Landroid/support/v4/app/x;->aM:I

    if-lt v0, p1, :cond_6

    const/4 p1, 0x1

    goto :goto_7

    :cond_6
    const/4 p1, 0x0

    :goto_7
    return p1
.end method

.method public Hw(Landroid/support/v4/app/Fragment;)V
    .registers 5

    sget-boolean v0, Landroid/support/v4/app/x;->j6:Z

    if-eqz v0, :cond_1a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "detach: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "FragmentManager"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1a
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->BT:Z

    if-nez v0, :cond_59

    const/4 v0, 0x1

    iput-boolean v0, p1, Landroid/support/v4/app/Fragment;->BT:Z

    iget-boolean v1, p1, Landroid/support/v4/app/Fragment;->we:Z

    if-eqz v1, :cond_59

    sget-boolean v1, Landroid/support/v4/app/x;->j6:Z

    if-eqz v1, :cond_3f

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "remove from detach: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "FragmentManager"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3f
    iget-object v1, p0, Landroid/support/v4/app/x;->tp:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_42
    iget-object v2, p0, Landroid/support/v4/app/x;->tp:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_48
    .catchall {:try_start_42 .. :try_end_48} :catchall_56

    iget-boolean v1, p1, Landroid/support/v4/app/Fragment;->ei:Z

    if-eqz v1, :cond_52

    iget-boolean v1, p1, Landroid/support/v4/app/Fragment;->nw:Z

    if-eqz v1, :cond_52

    iput-boolean v0, p0, Landroid/support/v4/app/x;->lg:Z

    :cond_52
    const/4 v0, 0x0

    iput-boolean v0, p1, Landroid/support/v4/app/Fragment;->we:Z

    goto :goto_59

    :catchall_56
    move-exception p1

    :try_start_57
    monitor-exit v1
    :try_end_58
    .catchall {:try_start_57 .. :try_end_58} :catchall_56

    throw p1

    :cond_59
    :goto_59
    return-void
.end method

.method Hw(Landroid/support/v4/app/Fragment;Landroid/os/Bundle;Z)V
    .registers 7

    iget-object v0, p0, Landroid/support/v4/app/x;->U2:Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->J0()Landroid/support/v4/app/r;

    move-result-object v0

    instance-of v1, v0, Landroid/support/v4/app/x;

    if-eqz v1, :cond_12

    check-cast v0, Landroid/support/v4/app/x;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Landroid/support/v4/app/x;->Hw(Landroid/support/v4/app/Fragment;Landroid/os/Bundle;Z)V

    :cond_12
    iget-object v0, p0, Landroid/support/v4/app/x;->XL:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_18
    :goto_18
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_38

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Labcd/s;

    if-eqz p3, :cond_30

    iget-object v2, v1, Labcd/s;->DW:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_18

    :cond_30
    iget-object v1, v1, Labcd/s;->j6:Ljava/lang/Object;

    check-cast v1, Landroid/support/v4/app/r$b;

    invoke-virtual {v1, p0, p1, p2}, Landroid/support/v4/app/r$b;->Hw(Landroid/support/v4/app/r;Landroid/support/v4/app/Fragment;Landroid/os/Bundle;)V

    goto :goto_18

    :cond_38
    return-void
.end method

.method Hw(Landroid/support/v4/app/Fragment;Z)V
    .registers 6

    iget-object v0, p0, Landroid/support/v4/app/x;->U2:Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->J0()Landroid/support/v4/app/r;

    move-result-object v0

    instance-of v1, v0, Landroid/support/v4/app/x;

    if-eqz v1, :cond_12

    check-cast v0, Landroid/support/v4/app/x;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/support/v4/app/x;->Hw(Landroid/support/v4/app/Fragment;Z)V

    :cond_12
    iget-object v0, p0, Landroid/support/v4/app/x;->XL:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_18
    :goto_18
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_38

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Labcd/s;

    if-eqz p2, :cond_30

    iget-object v2, v1, Labcd/s;->DW:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_18

    :cond_30
    iget-object v1, v1, Labcd/s;->j6:Ljava/lang/Object;

    check-cast v1, Landroid/support/v4/app/r$b;

    invoke-virtual {v1, p0, p1}, Landroid/support/v4/app/r$b;->FH(Landroid/support/v4/app/r;Landroid/support/v4/app/Fragment;)V

    goto :goto_18

    :cond_38
    return-void
.end method

.method public Hw()Z
    .registers 2

    iget-boolean v0, p0, Landroid/support/v4/app/x;->rN:Z

    return v0
.end method

.method J0(Landroid/support/v4/app/Fragment;)Landroid/os/Bundle;
    .registers 5

    iget-object v0, p0, Landroid/support/v4/app/x;->ei:Landroid/os/Bundle;

    if-nez v0, :cond_b

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/x;->ei:Landroid/os/Bundle;

    :cond_b
    iget-object v0, p0, Landroid/support/v4/app/x;->ei:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/support/v4/app/Fragment;->tp(Landroid/os/Bundle;)V

    iget-object v0, p0, Landroid/support/v4/app/x;->ei:Landroid/os/Bundle;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Landroid/support/v4/app/x;->Hw(Landroid/support/v4/app/Fragment;Landroid/os/Bundle;Z)V

    iget-object v0, p0, Landroid/support/v4/app/x;->ei:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_24

    iget-object v0, p0, Landroid/support/v4/app/x;->ei:Landroid/os/Bundle;

    iput-object v1, p0, Landroid/support/v4/app/x;->ei:Landroid/os/Bundle;

    move-object v1, v0

    :cond_24
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->ro:Landroid/view/View;

    if-eqz v0, :cond_2b

    invoke-virtual {p0, p1}, Landroid/support/v4/app/x;->J8(Landroid/support/v4/app/Fragment;)V

    :cond_2b
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->v5:Landroid/util/SparseArray;

    if-eqz v0, :cond_3e

    if-nez v1, :cond_37

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    move-object v1, v0

    :cond_37
    const-string v0, "android:view_state"

    iget-object v2, p1, Landroid/support/v4/app/Fragment;->v5:Landroid/util/SparseArray;

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    :cond_3e
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->cb:Z

    if-nez v0, :cond_51

    if-nez v1, :cond_4a

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    move-object v1, v0

    :cond_4a
    const-string v0, "android:user_visible_hint"

    iget-boolean p1, p1, Landroid/support/v4/app/Fragment;->cb:Z

    invoke-virtual {v1, v0, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_51
    return-object v1
.end method

.method public J0()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/x;->rN:Z

    const/4 v0, 0x5

    invoke-direct {p0, v0}, Landroid/support/v4/app/x;->v5(I)V

    return-void
.end method

.method public J8()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/x;->rN:Z

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroid/support/v4/app/x;->v5(I)V

    return-void
.end method

.method J8(Landroid/support/v4/app/Fragment;)V
    .registers 4

    iget-object v0, p1, Landroid/support/v4/app/Fragment;->cn:Landroid/view/View;

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Landroid/support/v4/app/x;->nw:Landroid/util/SparseArray;

    if-nez v0, :cond_11

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/x;->nw:Landroid/util/SparseArray;

    goto :goto_14

    :cond_11
    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    :goto_14
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->cn:Landroid/view/View;

    iget-object v1, p0, Landroid/support/v4/app/x;->nw:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/view/View;->saveHierarchyState(Landroid/util/SparseArray;)V

    iget-object v0, p0, Landroid/support/v4/app/x;->nw:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-lez v0, :cond_2a

    iget-object v0, p0, Landroid/support/v4/app/x;->nw:Landroid/util/SparseArray;

    iput-object v0, p1, Landroid/support/v4/app/Fragment;->v5:Landroid/util/SparseArray;

    const/4 p1, 0x0

    iput-object p1, p0, Landroid/support/v4/app/x;->nw:Landroid/util/SparseArray;

    :cond_2a
    return-void
.end method

.method public Mr()V
    .registers 4

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/app/x;->KD:Landroid/support/v4/app/y;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/x;->rN:Z

    iget-object v1, p0, Landroid/support/v4/app/x;->tp:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_c
    if-ge v0, v1, :cond_1e

    iget-object v2, p0, Landroid/support/v4/app/x;->tp:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/app/Fragment;

    if-eqz v2, :cond_1b

    invoke-virtual {v2}, Landroid/support/v4/app/Fragment;->SI()V

    :cond_1b
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_1e
    return-void
.end method

.method QX()V
    .registers 5

    iget-boolean v0, p0, Landroid/support/v4/app/x;->gW:Z

    if-eqz v0, :cond_2c

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_7
    iget-object v3, p0, Landroid/support/v4/app/x;->EQ:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v1, v3, :cond_25

    iget-object v3, p0, Landroid/support/v4/app/x;->EQ:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v4/app/Fragment;

    if-eqz v3, :cond_22

    iget-object v3, v3, Landroid/support/v4/app/Fragment;->dx:Landroid/support/v4/app/U;

    if-eqz v3, :cond_22

    invoke-virtual {v3}, Landroid/support/v4/app/U;->gn()Z

    move-result v3

    or-int/2addr v2, v3

    :cond_22
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_25
    if-nez v2, :cond_2c

    iput-boolean v0, p0, Landroid/support/v4/app/x;->gW:Z

    invoke-virtual {p0}, Landroid/support/v4/app/x;->er()V

    :cond_2c
    return-void
.end method

.method public QX(Landroid/support/v4/app/Fragment;)V
    .registers 4

    sget-boolean v0, Landroid/support/v4/app/x;->j6:Z

    if-eqz v0, :cond_1a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "show: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "FragmentManager"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1a
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->gW:Z

    if-eqz v0, :cond_27

    const/4 v0, 0x0

    iput-boolean v0, p1, Landroid/support/v4/app/Fragment;->gW:Z

    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->g3:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p1, Landroid/support/v4/app/Fragment;->g3:Z

    :cond_27
    return-void
.end method

.method U2()V
    .registers 3

    iget-object v0, p0, Landroid/support/v4/app/x;->QX:Ljava/util/ArrayList;

    if-eqz v0, :cond_1b

    const/4 v0, 0x0

    :goto_5
    iget-object v1, p0, Landroid/support/v4/app/x;->QX:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1b

    iget-object v1, p0, Landroid/support/v4/app/x;->QX:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/r$c;

    invoke-interface {v1}, Landroid/support/v4/app/r$c;->onBackStackChanged()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_1b
    return-void
.end method

.method public VH()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/x;->rN:Z

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/support/v4/app/x;->v5(I)V

    return-void
.end method

.method VH(Landroid/support/v4/app/Fragment;)V
    .registers 4

    iget v0, p1, Landroid/support/v4/app/Fragment;->Zo:I

    if-ltz v0, :cond_5

    return-void

    :cond_5
    iget v0, p0, Landroid/support/v4/app/x;->u7:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroid/support/v4/app/x;->u7:I

    iget-object v1, p0, Landroid/support/v4/app/x;->U2:Landroid/support/v4/app/Fragment;

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/app/Fragment;->j6(ILandroid/support/v4/app/Fragment;)V

    iget-object v0, p0, Landroid/support/v4/app/x;->EQ:Landroid/util/SparseArray;

    if-nez v0, :cond_1b

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/x;->EQ:Landroid/util/SparseArray;

    :cond_1b
    iget-object v0, p0, Landroid/support/v4/app/x;->EQ:Landroid/util/SparseArray;

    iget v1, p1, Landroid/support/v4/app/Fragment;->Zo:I

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-boolean v0, Landroid/support/v4/app/x;->j6:Z

    if-eqz v0, :cond_3c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Allocated fragment index "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "FragmentManager"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3c
    return-void
.end method

.method VH(Landroid/support/v4/app/Fragment;Z)V
    .registers 6

    iget-object v0, p0, Landroid/support/v4/app/x;->U2:Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->J0()Landroid/support/v4/app/r;

    move-result-object v0

    instance-of v1, v0, Landroid/support/v4/app/x;

    if-eqz v1, :cond_12

    check-cast v0, Landroid/support/v4/app/x;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/support/v4/app/x;->VH(Landroid/support/v4/app/Fragment;Z)V

    :cond_12
    iget-object v0, p0, Landroid/support/v4/app/x;->XL:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_18
    :goto_18
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_38

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Labcd/s;

    if-eqz p2, :cond_30

    iget-object v2, v1, Labcd/s;->DW:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_18

    :cond_30
    iget-object v1, v1, Labcd/s;->j6:Ljava/lang/Object;

    check-cast v1, Landroid/support/v4/app/r$b;

    invoke-virtual {v1, p0, p1}, Landroid/support/v4/app/r$b;->Zo(Landroid/support/v4/app/r;Landroid/support/v4/app/Fragment;)V

    goto :goto_18

    :cond_38
    return-void
.end method

.method public Ws()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/x;->rN:Z

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Landroid/support/v4/app/x;->v5(I)V

    return-void
.end method

.method public Ws(Landroid/support/v4/app/Fragment;)V
    .registers 4

    if-eqz p1, :cond_36

    iget-object v0, p0, Landroid/support/v4/app/x;->EQ:Landroid/util/SparseArray;

    iget v1, p1, Landroid/support/v4/app/Fragment;->Zo:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_17

    iget-object v0, p1, Landroid/support/v4/app/Fragment;->Mr:Landroid/support/v4/app/q;

    if-eqz v0, :cond_36

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->J0()Landroid/support/v4/app/r;

    move-result-object v0

    if-ne v0, p0, :cond_17

    goto :goto_36

    :cond_17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Fragment "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is not an active fragment of FragmentManager "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_36
    :goto_36
    iput-object p1, p0, Landroid/support/v4/app/x;->a8:Landroid/support/v4/app/Fragment;

    return-void
.end method

.method public XL()Z
    .registers 5

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/support/v4/app/x;->FH(Z)V

    const/4 v1, 0x0

    :goto_5
    iget-object v2, p0, Landroid/support/v4/app/x;->BT:Ljava/util/ArrayList;

    iget-object v3, p0, Landroid/support/v4/app/x;->vy:Ljava/util/ArrayList;

    invoke-direct {p0, v2, v3}, Landroid/support/v4/app/x;->DW(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result v2

    if-eqz v2, :cond_22

    iput-boolean v0, p0, Landroid/support/v4/app/x;->gn:Z

    :try_start_11
    iget-object v1, p0, Landroid/support/v4/app/x;->BT:Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/support/v4/app/x;->vy:Ljava/util/ArrayList;

    invoke-direct {p0, v1, v2}, Landroid/support/v4/app/x;->FH(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_18
    .catchall {:try_start_11 .. :try_end_18} :catchall_1d

    invoke-direct {p0}, Landroid/support/v4/app/x;->BT()V

    const/4 v1, 0x1

    goto :goto_5

    :catchall_1d
    move-exception v0

    invoke-direct {p0}, Landroid/support/v4/app/x;->BT()V

    throw v0

    :cond_22
    invoke-virtual {p0}, Landroid/support/v4/app/x;->QX()V

    invoke-direct {p0}, Landroid/support/v4/app/x;->yS()V

    return v1
.end method

.method public Zo()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/x;->rN:Z

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/support/v4/app/x;->v5(I)V

    return-void
.end method

.method public Zo(Landroid/support/v4/app/Fragment;)V
    .registers 4

    sget-boolean v0, Landroid/support/v4/app/x;->j6:Z

    if-eqz v0, :cond_1a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "hide: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "FragmentManager"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1a
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->gW:Z

    if-nez v0, :cond_26

    const/4 v0, 0x1

    iput-boolean v0, p1, Landroid/support/v4/app/Fragment;->gW:Z

    iget-boolean v1, p1, Landroid/support/v4/app/Fragment;->g3:Z

    xor-int/2addr v0, v1

    iput-boolean v0, p1, Landroid/support/v4/app/Fragment;->g3:Z

    :cond_26
    return-void
.end method

.method Zo(Landroid/support/v4/app/Fragment;Z)V
    .registers 6

    iget-object v0, p0, Landroid/support/v4/app/x;->U2:Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->J0()Landroid/support/v4/app/r;

    move-result-object v0

    instance-of v1, v0, Landroid/support/v4/app/x;

    if-eqz v1, :cond_12

    check-cast v0, Landroid/support/v4/app/x;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/support/v4/app/x;->Zo(Landroid/support/v4/app/Fragment;Z)V

    :cond_12
    iget-object v0, p0, Landroid/support/v4/app/x;->XL:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_18
    :goto_18
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_38

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Labcd/s;

    if-eqz p2, :cond_30

    iget-object v2, v1, Labcd/s;->DW:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_18

    :cond_30
    iget-object v1, v1, Labcd/s;->j6:Ljava/lang/Object;

    check-cast v1, Landroid/support/v4/app/r$b;

    invoke-virtual {v1, p0, p1}, Landroid/support/v4/app/r$b;->v5(Landroid/support/v4/app/r;Landroid/support/v4/app/Fragment;)V

    goto :goto_18

    :cond_38
    return-void
.end method

.method a8()Landroid/support/v4/app/y;
    .registers 2

    iget-object v0, p0, Landroid/support/v4/app/x;->KD:Landroid/support/v4/app/y;

    invoke-static {v0}, Landroid/support/v4/app/x;->j6(Landroid/support/v4/app/y;)V

    iget-object v0, p0, Landroid/support/v4/app/x;->KD:Landroid/support/v4/app/y;

    return-object v0
.end method

.method aM()Landroid/view/LayoutInflater$Factory2;
    .registers 1

    return-object p0
.end method

.method er()V
    .registers 3

    iget-object v0, p0, Landroid/support/v4/app/x;->EQ:Landroid/util/SparseArray;

    if-nez v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x0

    :goto_6
    iget-object v1, p0, Landroid/support/v4/app/x;->EQ:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1e

    iget-object v1, p0, Landroid/support/v4/app/x;->EQ:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/Fragment;

    if-eqz v1, :cond_1b

    invoke-virtual {p0, v1}, Landroid/support/v4/app/x;->EQ(Landroid/support/v4/app/Fragment;)V

    :cond_1b
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_1e
    return-void
.end method

.method public gn()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/x;->er:Z

    invoke-virtual {p0}, Landroid/support/v4/app/x;->XL()Z

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/v4/app/x;->v5(I)V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/app/x;->j3:Landroid/support/v4/app/q;

    iput-object v0, p0, Landroid/support/v4/app/x;->Mr:Landroid/support/v4/app/o;

    iput-object v0, p0, Landroid/support/v4/app/x;->U2:Landroid/support/v4/app/Fragment;

    return-void
.end method

.method gn(Landroid/support/v4/app/Fragment;)V
    .registers 5

    iget v0, p1, Landroid/support/v4/app/Fragment;->Zo:I

    if-gez v0, :cond_5

    return-void

    :cond_5
    sget-boolean v0, Landroid/support/v4/app/x;->j6:Z

    if-eqz v0, :cond_1f

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Freeing fragment index "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "FragmentManager"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1f
    iget-object v0, p0, Landroid/support/v4/app/x;->EQ:Landroid/util/SparseArray;

    iget v1, p1, Landroid/support/v4/app/Fragment;->Zo:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Landroid/support/v4/app/x;->j3:Landroid/support/v4/app/q;

    iget-object v1, p1, Landroid/support/v4/app/Fragment;->VH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/q;->j6(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->rN()V

    return-void
.end method

.method gn(Landroid/support/v4/app/Fragment;Z)V
    .registers 6

    iget-object v0, p0, Landroid/support/v4/app/x;->U2:Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->J0()Landroid/support/v4/app/r;

    move-result-object v0

    instance-of v1, v0, Landroid/support/v4/app/x;

    if-eqz v1, :cond_12

    check-cast v0, Landroid/support/v4/app/x;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/support/v4/app/x;->gn(Landroid/support/v4/app/Fragment;Z)V

    :cond_12
    iget-object v0, p0, Landroid/support/v4/app/x;->XL:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_18
    :goto_18
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_38

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Labcd/s;

    if-eqz p2, :cond_30

    iget-object v2, v1, Labcd/s;->DW:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_18

    :cond_30
    iget-object v1, v1, Labcd/s;->j6:Ljava/lang/Object;

    check-cast v1, Landroid/support/v4/app/r$b;

    invoke-virtual {v1, p0, p1}, Landroid/support/v4/app/r$b;->VH(Landroid/support/v4/app/r;Landroid/support/v4/app/Fragment;)V

    goto :goto_18

    :cond_38
    return-void
.end method

.method public j3()Landroid/support/v4/app/Fragment;
    .registers 2

    iget-object v0, p0, Landroid/support/v4/app/x;->a8:Landroid/support/v4/app/Fragment;

    return-object v0
.end method

.method public j6()Landroid/support/v4/app/D;
    .registers 2

    new-instance v0, Landroid/support/v4/app/e;

    invoke-direct {v0, p0}, Landroid/support/v4/app/e;-><init>(Landroid/support/v4/app/x;)V

    return-object v0
.end method

.method public j6(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/Fragment$SavedState;
    .registers 5

    iget v0, p1, Landroid/support/v4/app/Fragment;->Zo:I

    const/4 v1, 0x0

    if-ltz v0, :cond_15

    iget v0, p1, Landroid/support/v4/app/Fragment;->FH:I

    if-lez v0, :cond_14

    invoke-virtual {p0, p1}, Landroid/support/v4/app/x;->J0(Landroid/support/v4/app/Fragment;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_14

    new-instance v1, Landroid/support/v4/app/Fragment$SavedState;

    invoke-direct {v1, p1}, Landroid/support/v4/app/Fragment$SavedState;-><init>(Landroid/os/Bundle;)V

    :cond_14
    return-object v1

    :cond_15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is not currently in the FragmentManager"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Landroid/support/v4/app/x;->j6(Ljava/lang/RuntimeException;)V

    throw v1
.end method

.method public j6(I)Landroid/support/v4/app/Fragment;
    .registers 5

    iget-object v0, p0, Landroid/support/v4/app/x;->tp:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_1c

    iget-object v1, p0, Landroid/support/v4/app/x;->tp:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/Fragment;

    if-eqz v1, :cond_19

    iget v2, v1, Landroid/support/v4/app/Fragment;->rN:I

    if-ne v2, p1, :cond_19

    return-object v1

    :cond_19
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_1c
    iget-object v0, p0, Landroid/support/v4/app/x;->EQ:Landroid/util/SparseArray;

    if-eqz v0, :cond_3a

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_26
    if-ltz v0, :cond_3a

    iget-object v1, p0, Landroid/support/v4/app/x;->EQ:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/Fragment;

    if-eqz v1, :cond_37

    iget v2, v1, Landroid/support/v4/app/Fragment;->rN:I

    if-ne v2, p1, :cond_37

    return-object v1

    :cond_37
    add-int/lit8 v0, v0, -0x1

    goto :goto_26

    :cond_3a
    const/4 p1, 0x0

    return-object p1
.end method

.method public j6(Landroid/os/Bundle;Ljava/lang/String;)Landroid/support/v4/app/Fragment;
    .registers 6

    const/4 v0, -0x1

    invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    const/4 v1, 0x0

    if-ne p1, v0, :cond_9

    return-object v1

    :cond_9
    iget-object v0, p0, Landroid/support/v4/app/x;->EQ:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_14

    return-object v0

    :cond_14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment no longer exists for key "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ": index "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Landroid/support/v4/app/x;->j6(Ljava/lang/RuntimeException;)V

    throw v1
.end method

.method public j6(Ljava/lang/String;)Landroid/support/v4/app/Fragment;
    .registers 5

    if-eqz p1, :cond_22

    iget-object v0, p0, Landroid/support/v4/app/x;->tp:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_a
    if-ltz v0, :cond_22

    iget-object v1, p0, Landroid/support/v4/app/x;->tp:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/Fragment;

    if-eqz v1, :cond_1f

    iget-object v2, v1, Landroid/support/v4/app/Fragment;->yS:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    return-object v1

    :cond_1f
    add-int/lit8 v0, v0, -0x1

    goto :goto_a

    :cond_22
    iget-object v0, p0, Landroid/support/v4/app/x;->EQ:Landroid/util/SparseArray;

    if-eqz v0, :cond_46

    if-eqz p1, :cond_46

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_2e
    if-ltz v0, :cond_46

    iget-object v1, p0, Landroid/support/v4/app/x;->EQ:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/Fragment;

    if-eqz v1, :cond_43

    iget-object v2, v1, Landroid/support/v4/app/Fragment;->yS:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_43

    return-object v1

    :cond_43
    add-int/lit8 v0, v0, -0x1

    goto :goto_2e

    :cond_46
    const/4 p1, 0x0

    return-object p1
.end method

.method j6(Landroid/support/v4/app/Fragment;IZI)Landroid/support/v4/app/x$c;
    .registers 9

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->J8()I

    move-result v0

    invoke-virtual {p1, p2, p3, v0}, Landroid/support/v4/app/Fragment;->j6(IZI)Landroid/view/animation/Animation;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_11

    new-instance p1, Landroid/support/v4/app/x$c;

    invoke-direct {p1, v1, v2}, Landroid/support/v4/app/x$c;-><init>(Landroid/view/animation/Animation;Landroid/support/v4/app/s;)V

    return-object p1

    :cond_11
    invoke-virtual {p1, p2, p3, v0}, Landroid/support/v4/app/Fragment;->DW(IZI)Landroid/animation/Animator;

    move-result-object p1

    if-eqz p1, :cond_1d

    new-instance p2, Landroid/support/v4/app/x$c;

    invoke-direct {p2, p1, v2}, Landroid/support/v4/app/x$c;-><init>(Landroid/animation/Animator;Landroid/support/v4/app/s;)V

    return-object p2

    :cond_1d
    if-eqz v0, :cond_78

    iget-object p1, p0, Landroid/support/v4/app/x;->j3:Landroid/support/v4/app/q;

    invoke-virtual {p1}, Landroid/support/v4/app/q;->v5()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "anim"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4d

    :try_start_35
    iget-object v1, p0, Landroid/support/v4/app/x;->j3:Landroid/support/v4/app/q;

    invoke-virtual {v1}, Landroid/support/v4/app/q;->v5()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    if-eqz v1, :cond_47

    new-instance v3, Landroid/support/v4/app/x$c;

    invoke-direct {v3, v1, v2}, Landroid/support/v4/app/x$c;-><init>(Landroid/view/animation/Animation;Landroid/support/v4/app/s;)V
    :try_end_46
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_35 .. :try_end_46} :catch_4b
    .catch Ljava/lang/RuntimeException; {:try_start_35 .. :try_end_46} :catch_49

    return-object v3

    :cond_47
    const/4 v1, 0x1

    goto :goto_4e

    :catch_49
    move-exception v1

    goto :goto_4d

    :catch_4b
    move-exception p1

    throw p1

    :cond_4d
    :goto_4d
    const/4 v1, 0x0

    :goto_4e
    if-nez v1, :cond_78

    :try_start_50
    iget-object v1, p0, Landroid/support/v4/app/x;->j3:Landroid/support/v4/app/q;

    invoke-virtual {v1}, Landroid/support/v4/app/q;->v5()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v1

    if-eqz v1, :cond_78

    new-instance v3, Landroid/support/v4/app/x$c;

    invoke-direct {v3, v1, v2}, Landroid/support/v4/app/x$c;-><init>(Landroid/animation/Animator;Landroid/support/v4/app/s;)V
    :try_end_61
    .catch Ljava/lang/RuntimeException; {:try_start_50 .. :try_end_61} :catch_62

    return-object v3

    :catch_62
    move-exception v1

    if-nez p1, :cond_77

    iget-object p1, p0, Landroid/support/v4/app/x;->j3:Landroid/support/v4/app/q;

    invoke-virtual {p1}, Landroid/support/v4/app/q;->v5()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    if-eqz p1, :cond_78

    new-instance p2, Landroid/support/v4/app/x$c;

    invoke-direct {p2, p1, v2}, Landroid/support/v4/app/x$c;-><init>(Landroid/view/animation/Animation;Landroid/support/v4/app/s;)V

    return-object p2

    :cond_77
    throw v1

    :cond_78
    if-nez p2, :cond_7b

    return-object v2

    :cond_7b
    invoke-static {p2, p3}, Landroid/support/v4/app/x;->DW(IZ)I

    move-result p1

    if-gez p1, :cond_82

    return-object v2

    :cond_82
    const p2, 0x3f79999a  # 0.975f

    const/4 p3, 0x0

    const/high16 v0, 0x3f800000  # 1.0f

    packed-switch p1, :pswitch_data_e4

    if-nez p4, :cond_e2

    iget-object p1, p0, Landroid/support/v4/app/x;->j3:Landroid/support/v4/app/q;

    invoke-virtual {p1}, Landroid/support/v4/app/q;->EQ()Z

    move-result p1

    if-eqz p1, :cond_e2

    iget-object p1, p0, Landroid/support/v4/app/x;->j3:Landroid/support/v4/app/q;

    invoke-virtual {p1}, Landroid/support/v4/app/q;->tp()I

    goto :goto_e2

    :pswitch_9b  #0x6
    iget-object p1, p0, Landroid/support/v4/app/x;->j3:Landroid/support/v4/app/q;

    invoke-virtual {p1}, Landroid/support/v4/app/q;->v5()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v0, p3}, Landroid/support/v4/app/x;->j6(Landroid/content/Context;FF)Landroid/support/v4/app/x$c;

    move-result-object p1

    return-object p1

    :pswitch_a6  #0x5
    iget-object p1, p0, Landroid/support/v4/app/x;->j3:Landroid/support/v4/app/q;

    invoke-virtual {p1}, Landroid/support/v4/app/q;->v5()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p3, v0}, Landroid/support/v4/app/x;->j6(Landroid/content/Context;FF)Landroid/support/v4/app/x$c;

    move-result-object p1

    return-object p1

    :pswitch_b1  #0x4
    iget-object p1, p0, Landroid/support/v4/app/x;->j3:Landroid/support/v4/app/q;

    invoke-virtual {p1}, Landroid/support/v4/app/q;->v5()Landroid/content/Context;

    move-result-object p1

    const p2, 0x3f89999a  # 1.075f

    invoke-static {p1, v0, p2, v0, p3}, Landroid/support/v4/app/x;->j6(Landroid/content/Context;FFFF)Landroid/support/v4/app/x$c;

    move-result-object p1

    return-object p1

    :pswitch_bf  #0x3
    iget-object p1, p0, Landroid/support/v4/app/x;->j3:Landroid/support/v4/app/q;

    invoke-virtual {p1}, Landroid/support/v4/app/q;->v5()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p2, v0, p3, v0}, Landroid/support/v4/app/x;->j6(Landroid/content/Context;FFFF)Landroid/support/v4/app/x$c;

    move-result-object p1

    return-object p1

    :pswitch_ca  #0x2
    iget-object p1, p0, Landroid/support/v4/app/x;->j3:Landroid/support/v4/app/q;

    invoke-virtual {p1}, Landroid/support/v4/app/q;->v5()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v0, p2, v0, p3}, Landroid/support/v4/app/x;->j6(Landroid/content/Context;FFFF)Landroid/support/v4/app/x$c;

    move-result-object p1

    return-object p1

    :pswitch_d5  #0x1
    iget-object p1, p0, Landroid/support/v4/app/x;->j3:Landroid/support/v4/app/q;

    invoke-virtual {p1}, Landroid/support/v4/app/q;->v5()Landroid/content/Context;

    move-result-object p1

    const/high16 p2, 0x3f900000  # 1.125f

    invoke-static {p1, p2, v0, p3, v0}, Landroid/support/v4/app/x;->j6(Landroid/content/Context;FFFF)Landroid/support/v4/app/x$c;

    move-result-object p1

    return-object p1

    :cond_e2
    :goto_e2
    return-object v2

    nop

    :pswitch_data_e4
    .packed-switch 0x1
        :pswitch_d5  #00000001
        :pswitch_ca  #00000002
        :pswitch_bf  #00000003
        :pswitch_b1  #00000004
        :pswitch_a6  #00000005
        :pswitch_9b  #00000006
    .end packed-switch
.end method

.method public j6(II)V
    .registers 5

    if-ltz p1, :cond_d

    new-instance v0, Landroid/support/v4/app/x$g;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p1, p2}, Landroid/support/v4/app/x$g;-><init>(Landroid/support/v4/app/x;Ljava/lang/String;II)V

    const/4 p1, 0x0

    invoke-virtual {p0, v0, p1}, Landroid/support/v4/app/x;->j6(Landroid/support/v4/app/x$f;Z)V

    return-void

    :cond_d
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Bad id: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public j6(ILandroid/support/v4/app/e;)V
    .registers 6

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/support/v4/app/x;->J8:Ljava/util/ArrayList;

    if-nez v0, :cond_c

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/x;->J8:Ljava/util/ArrayList;

    :cond_c
    iget-object v0, p0, Landroid/support/v4/app/x;->J8:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_3c

    sget-boolean v0, Landroid/support/v4/app/x;->j6:Z

    if-eqz v0, :cond_36

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Setting back stack index "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "FragmentManager"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_36
    iget-object v0, p0, Landroid/support/v4/app/x;->J8:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_9c

    :cond_3c
    :goto_3c
    if-ge v0, p1, :cond_75

    iget-object v1, p0, Landroid/support/v4/app/x;->J8:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Landroid/support/v4/app/x;->Ws:Ljava/util/ArrayList;

    if-nez v1, :cond_4f

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/support/v4/app/x;->Ws:Ljava/util/ArrayList;

    :cond_4f
    sget-boolean v1, Landroid/support/v4/app/x;->j6:Z

    if-eqz v1, :cond_69

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Adding available back stack index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "FragmentManager"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_69
    iget-object v1, p0, Landroid/support/v4/app/x;->Ws:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_3c

    :cond_75
    sget-boolean v0, Landroid/support/v4/app/x;->j6:Z

    if-eqz v0, :cond_97

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Adding back stack index "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " with "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "FragmentManager"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_97
    iget-object p1, p0, Landroid/support/v4/app/x;->J8:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_9c
    monitor-exit p0

    return-void

    :catchall_9e
    move-exception p1

    monitor-exit p0
    :try_end_a0
    .catchall {:try_start_1 .. :try_end_a0} :catchall_9e

    goto :goto_a2

    :goto_a1
    throw p1

    :goto_a2
    goto :goto_a1
.end method

.method j6(IZ)V
    .registers 7

    iget-object v0, p0, Landroid/support/v4/app/x;->j3:Landroid/support/v4/app/q;

    if-nez v0, :cond_f

    if-nez p1, :cond_7

    goto :goto_f

    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "No activity"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_f
    :goto_f
    if-nez p2, :cond_16

    iget p2, p0, Landroid/support/v4/app/x;->aM:I

    if-ne p1, p2, :cond_16

    return-void

    :cond_16
    iput p1, p0, Landroid/support/v4/app/x;->aM:I

    iget-object p1, p0, Landroid/support/v4/app/x;->EQ:Landroid/util/SparseArray;

    if-eqz p1, :cond_83

    iget-object p1, p0, Landroid/support/v4/app/x;->tp:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 p2, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_25
    if-ge v0, p1, :cond_3e

    iget-object v2, p0, Landroid/support/v4/app/x;->tp:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/app/Fragment;

    invoke-virtual {p0, v2}, Landroid/support/v4/app/x;->u7(Landroid/support/v4/app/Fragment;)V

    iget-object v2, v2, Landroid/support/v4/app/Fragment;->dx:Landroid/support/v4/app/U;

    if-eqz v2, :cond_3b

    invoke-virtual {v2}, Landroid/support/v4/app/U;->gn()Z

    move-result v2

    or-int/2addr v1, v2

    :cond_3b
    add-int/lit8 v0, v0, 0x1

    goto :goto_25

    :cond_3e
    iget-object p1, p0, Landroid/support/v4/app/x;->EQ:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    const/4 v0, 0x0

    :goto_45
    if-ge v0, p1, :cond_6c

    iget-object v2, p0, Landroid/support/v4/app/x;->EQ:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/app/Fragment;

    if-eqz v2, :cond_69

    iget-boolean v3, v2, Landroid/support/v4/app/Fragment;->J0:Z

    if-nez v3, :cond_59

    iget-boolean v3, v2, Landroid/support/v4/app/Fragment;->BT:Z

    if-eqz v3, :cond_69

    :cond_59
    iget-boolean v3, v2, Landroid/support/v4/app/Fragment;->vJ:Z

    if-nez v3, :cond_69

    invoke-virtual {p0, v2}, Landroid/support/v4/app/x;->u7(Landroid/support/v4/app/Fragment;)V

    iget-object v2, v2, Landroid/support/v4/app/Fragment;->dx:Landroid/support/v4/app/U;

    if-eqz v2, :cond_69

    invoke-virtual {v2}, Landroid/support/v4/app/U;->gn()Z

    move-result v2

    or-int/2addr v1, v2

    :cond_69
    add-int/lit8 v0, v0, 0x1

    goto :goto_45

    :cond_6c
    if-nez v1, :cond_71

    invoke-virtual {p0}, Landroid/support/v4/app/x;->er()V

    :cond_71
    iget-boolean p1, p0, Landroid/support/v4/app/x;->lg:Z

    if-eqz p1, :cond_83

    iget-object p1, p0, Landroid/support/v4/app/x;->j3:Landroid/support/v4/app/q;

    if-eqz p1, :cond_83

    iget v0, p0, Landroid/support/v4/app/x;->aM:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_83

    invoke-virtual {p1}, Landroid/support/v4/app/q;->we()V

    iput-boolean p2, p0, Landroid/support/v4/app/x;->lg:Z

    :cond_83
    return-void
.end method

.method public j6(Landroid/content/res/Configuration;)V
    .registers 4

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Landroid/support/v4/app/x;->tp:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_19

    iget-object v1, p0, Landroid/support/v4/app/x;->tp:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/Fragment;

    if-eqz v1, :cond_16

    invoke-virtual {v1, p1}, Landroid/support/v4/app/Fragment;->j6(Landroid/content/res/Configuration;)V

    :cond_16
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_19
    return-void
.end method

.method public j6(Landroid/os/Bundle;Ljava/lang/String;Landroid/support/v4/app/Fragment;)V
    .registers 5

    iget v0, p3, Landroid/support/v4/app/Fragment;->Zo:I

    if-ltz v0, :cond_8

    invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void

    :cond_8
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Fragment "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " is not currently in the FragmentManager"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p2}, Landroid/support/v4/app/x;->j6(Ljava/lang/RuntimeException;)V

    const/4 p1, 0x0

    throw p1
.end method

.method j6(Landroid/os/Parcelable;Landroid/support/v4/app/y;)V
    .registers 13

    if-nez p1, :cond_3

    return-void

    :cond_3
    check-cast p1, Landroid/support/v4/app/FragmentManagerState;

    iget-object v0, p1, Landroid/support/v4/app/FragmentManagerState;->j6:[Landroid/support/v4/app/FragmentState;

    if-nez v0, :cond_a

    return-void

    :cond_a
    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p2, :cond_a3

    invoke-virtual {p2}, Landroid/support/v4/app/y;->DW()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p2}, Landroid/support/v4/app/y;->j6()Ljava/util/List;

    move-result-object v3

    if-eqz v2, :cond_1d

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    goto :goto_1e

    :cond_1d
    const/4 v4, 0x0

    :goto_1e
    const/4 v5, 0x0

    :goto_1f
    if-ge v5, v4, :cond_a4

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/support/v4/app/Fragment;

    sget-boolean v7, Landroid/support/v4/app/x;->j6:Z

    if-eqz v7, :cond_41

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "restoreAllState: re-attaching retained "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, "FragmentManager"

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_41
    const/4 v7, 0x0

    :goto_42
    iget-object v8, p1, Landroid/support/v4/app/FragmentManagerState;->j6:[Landroid/support/v4/app/FragmentState;

    array-length v9, v8

    if-ge v7, v9, :cond_52

    aget-object v8, v8, v7

    iget v8, v8, Landroid/support/v4/app/FragmentState;->DW:I

    iget v9, v6, Landroid/support/v4/app/Fragment;->Zo:I

    if-eq v8, v9, :cond_52

    add-int/lit8 v7, v7, 0x1

    goto :goto_42

    :cond_52
    iget-object v8, p1, Landroid/support/v4/app/FragmentManagerState;->j6:[Landroid/support/v4/app/FragmentState;

    array-length v9, v8

    if-eq v7, v9, :cond_87

    aget-object v7, v8, v7

    iput-object v6, v7, Landroid/support/v4/app/FragmentState;->we:Landroid/support/v4/app/Fragment;

    iput-object v0, v6, Landroid/support/v4/app/Fragment;->v5:Landroid/util/SparseArray;

    iput v1, v6, Landroid/support/v4/app/Fragment;->aM:I

    iput-boolean v1, v6, Landroid/support/v4/app/Fragment;->Ws:Z

    iput-boolean v1, v6, Landroid/support/v4/app/Fragment;->we:Z

    iput-object v0, v6, Landroid/support/v4/app/Fragment;->u7:Landroid/support/v4/app/Fragment;

    iget-object v8, v7, Landroid/support/v4/app/FragmentState;->EQ:Landroid/os/Bundle;

    if-eqz v8, :cond_84

    iget-object v9, p0, Landroid/support/v4/app/x;->j3:Landroid/support/v4/app/q;

    invoke-virtual {v9}, Landroid/support/v4/app/q;->v5()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    iget-object v8, v7, Landroid/support/v4/app/FragmentState;->EQ:Landroid/os/Bundle;

    const-string v9, "android:view_state"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v8

    iput-object v8, v6, Landroid/support/v4/app/Fragment;->v5:Landroid/util/SparseArray;

    iget-object v7, v7, Landroid/support/v4/app/FragmentState;->EQ:Landroid/os/Bundle;

    iput-object v7, v6, Landroid/support/v4/app/Fragment;->Hw:Landroid/os/Bundle;

    :cond_84
    add-int/lit8 v5, v5, 0x1

    goto :goto_1f

    :cond_87
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Could not find active fragment with index "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, v6, Landroid/support/v4/app/Fragment;->Zo:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p2}, Landroid/support/v4/app/x;->j6(Ljava/lang/RuntimeException;)V

    throw v0

    :cond_a3
    move-object v3, v0

    :cond_a4
    new-instance v2, Landroid/util/SparseArray;

    iget-object v4, p1, Landroid/support/v4/app/FragmentManagerState;->j6:[Landroid/support/v4/app/FragmentState;

    array-length v4, v4

    invoke-direct {v2, v4}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v2, p0, Landroid/support/v4/app/x;->EQ:Landroid/util/SparseArray;

    const/4 v2, 0x0

    :goto_af
    iget-object v4, p1, Landroid/support/v4/app/FragmentManagerState;->j6:[Landroid/support/v4/app/FragmentState;

    array-length v5, v4

    if-ge v2, v5, :cond_100

    aget-object v4, v4, v2

    if-eqz v4, :cond_fd

    if-eqz v3, :cond_c7

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_c7

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/v4/app/y;

    goto :goto_c8

    :cond_c7
    move-object v5, v0

    :goto_c8
    iget-object v6, p0, Landroid/support/v4/app/x;->j3:Landroid/support/v4/app/q;

    iget-object v7, p0, Landroid/support/v4/app/x;->Mr:Landroid/support/v4/app/o;

    iget-object v8, p0, Landroid/support/v4/app/x;->U2:Landroid/support/v4/app/Fragment;

    invoke-virtual {v4, v6, v7, v8, v5}, Landroid/support/v4/app/FragmentState;->j6(Landroid/support/v4/app/q;Landroid/support/v4/app/o;Landroid/support/v4/app/Fragment;Landroid/support/v4/app/y;)Landroid/support/v4/app/Fragment;

    move-result-object v5

    sget-boolean v6, Landroid/support/v4/app/x;->j6:Z

    if-eqz v6, :cond_f4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "restoreAllState: active #"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, "FragmentManager"

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f4
    iget-object v6, p0, Landroid/support/v4/app/x;->EQ:Landroid/util/SparseArray;

    iget v7, v5, Landroid/support/v4/app/Fragment;->Zo:I

    invoke-virtual {v6, v7, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iput-object v0, v4, Landroid/support/v4/app/FragmentState;->we:Landroid/support/v4/app/Fragment;

    :cond_fd
    add-int/lit8 v2, v2, 0x1

    goto :goto_af

    :cond_100
    if-eqz p2, :cond_14c

    invoke-virtual {p2}, Landroid/support/v4/app/y;->DW()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_10d

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    goto :goto_10e

    :cond_10d
    const/4 v2, 0x0

    :goto_10e
    const/4 v3, 0x0

    :goto_10f
    if-ge v3, v2, :cond_14c

    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v4/app/Fragment;

    iget v5, v4, Landroid/support/v4/app/Fragment;->tp:I

    if-ltz v5, :cond_149

    iget-object v6, p0, Landroid/support/v4/app/x;->EQ:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/v4/app/Fragment;

    iput-object v5, v4, Landroid/support/v4/app/Fragment;->u7:Landroid/support/v4/app/Fragment;

    iget-object v5, v4, Landroid/support/v4/app/Fragment;->u7:Landroid/support/v4/app/Fragment;

    if-nez v5, :cond_149

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Re-attaching retained fragment "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " target no longer exists: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v4, Landroid/support/v4/app/Fragment;->tp:I

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "FragmentManager"

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_149
    add-int/lit8 v3, v3, 0x1

    goto :goto_10f

    :cond_14c
    iget-object p2, p0, Landroid/support/v4/app/x;->tp:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    iget-object p2, p1, Landroid/support/v4/app/FragmentManagerState;->DW:[I

    if-eqz p2, :cond_1c9

    const/4 p2, 0x0

    :goto_156
    iget-object v2, p1, Landroid/support/v4/app/FragmentManagerState;->DW:[I

    array-length v3, v2

    if-ge p2, v3, :cond_1c9

    iget-object v3, p0, Landroid/support/v4/app/x;->EQ:Landroid/util/SparseArray;

    aget v2, v2, p2

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/app/Fragment;

    if-eqz v2, :cond_1ab

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/support/v4/app/Fragment;->we:Z

    sget-boolean v3, Landroid/support/v4/app/x;->j6:Z

    if-eqz v3, :cond_18c

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "restoreAllState: added #"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "FragmentManager"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_18c
    iget-object v3, p0, Landroid/support/v4/app/x;->tp:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1a3

    iget-object v3, p0, Landroid/support/v4/app/x;->tp:Ljava/util/ArrayList;

    monitor-enter v3

    :try_start_197
    iget-object v4, p0, Landroid/support/v4/app/x;->tp:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v3

    add-int/lit8 p2, p2, 0x1

    goto :goto_156

    :catchall_1a0
    move-exception p1

    monitor-exit v3
    :try_end_1a2
    .catchall {:try_start_197 .. :try_end_1a2} :catchall_1a0

    throw p1

    :cond_1a3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Already added!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1ab
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No instantiated fragment for index #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroid/support/v4/app/FragmentManagerState;->DW:[I

    aget p1, p1, p2

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Landroid/support/v4/app/x;->j6(Ljava/lang/RuntimeException;)V

    throw v0

    :cond_1c9
    iget-object p2, p1, Landroid/support/v4/app/FragmentManagerState;->FH:[Landroid/support/v4/app/BackStackState;

    if-eqz p2, :cond_230

    new-instance v0, Ljava/util/ArrayList;

    array-length p2, p2

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/support/v4/app/x;->we:Ljava/util/ArrayList;

    const/4 p2, 0x0

    :goto_1d6
    iget-object v0, p1, Landroid/support/v4/app/FragmentManagerState;->FH:[Landroid/support/v4/app/BackStackState;

    array-length v2, v0

    if-ge p2, v2, :cond_232

    aget-object v0, v0, p2

    invoke-virtual {v0, p0}, Landroid/support/v4/app/BackStackState;->j6(Landroid/support/v4/app/x;)Landroid/support/v4/app/e;

    move-result-object v0

    sget-boolean v2, Landroid/support/v4/app/x;->j6:Z

    if-eqz v2, :cond_221

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "restoreAllState: back stack #"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " (index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Landroid/support/v4/app/e;->J8:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "FragmentManager"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/io/PrintWriter;

    new-instance v3, Labcd/p;

    const-string v4, "FragmentManager"

    invoke-direct {v3, v4}, Labcd/p;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    const-string v3, "  "

    invoke-virtual {v0, v3, v2, v1}, Landroid/support/v4/app/e;->j6(Ljava/lang/String;Ljava/io/PrintWriter;Z)V

    invoke-virtual {v2}, Ljava/io/PrintWriter;->close()V

    :cond_221
    iget-object v2, p0, Landroid/support/v4/app/x;->we:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v2, v0, Landroid/support/v4/app/e;->J8:I

    if-ltz v2, :cond_22d

    invoke-virtual {p0, v2, v0}, Landroid/support/v4/app/x;->j6(ILandroid/support/v4/app/e;)V

    :cond_22d
    add-int/lit8 p2, p2, 0x1

    goto :goto_1d6

    :cond_230
    iput-object v0, p0, Landroid/support/v4/app/x;->we:Ljava/util/ArrayList;

    :cond_232
    iget p2, p1, Landroid/support/v4/app/FragmentManagerState;->Hw:I

    if-ltz p2, :cond_240

    iget-object v0, p0, Landroid/support/v4/app/x;->EQ:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/support/v4/app/Fragment;

    iput-object p2, p0, Landroid/support/v4/app/x;->a8:Landroid/support/v4/app/Fragment;

    :cond_240
    iget p1, p1, Landroid/support/v4/app/FragmentManagerState;->v5:I

    iput p1, p0, Landroid/support/v4/app/x;->u7:I

    return-void
.end method

.method j6(Landroid/support/v4/app/Fragment;IIIZ)V
    .registers 23

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    iget-boolean v0, v8, Landroid/support/v4/app/Fragment;->we:Z

    const/4 v9, 0x1

    if-eqz v0, :cond_11

    iget-boolean v0, v8, Landroid/support/v4/app/Fragment;->BT:Z

    if-eqz v0, :cond_e

    goto :goto_11

    :cond_e
    move/from16 v0, p2

    goto :goto_16

    :cond_11
    :goto_11
    move/from16 v0, p2

    if-le v0, v9, :cond_16

    const/4 v0, 0x1

    :cond_16
    :goto_16
    iget-boolean v1, v8, Landroid/support/v4/app/Fragment;->J0:Z

    if-eqz v1, :cond_2a

    iget v1, v8, Landroid/support/v4/app/Fragment;->FH:I

    if-le v0, v1, :cond_2a

    if-nez v1, :cond_28

    invoke-virtual/range {p1 .. p1}, Landroid/support/v4/app/Fragment;->P8()Z

    move-result v0

    if-eqz v0, :cond_28

    const/4 v0, 0x1

    goto :goto_2a

    :cond_28
    iget v0, v8, Landroid/support/v4/app/Fragment;->FH:I

    :cond_2a
    :goto_2a
    iget-boolean v1, v8, Landroid/support/v4/app/Fragment;->sh:Z

    const/4 v10, 0x4

    const/4 v11, 0x3

    if-eqz v1, :cond_37

    iget v1, v8, Landroid/support/v4/app/Fragment;->FH:I

    if-ge v1, v10, :cond_37

    if-le v0, v11, :cond_37

    const/4 v0, 0x3

    :cond_37
    iget v1, v8, Landroid/support/v4/app/Fragment;->FH:I

    const/4 v12, 0x2

    const-string v13, "FragmentManager"

    const/4 v14, 0x0

    const/4 v15, 0x0

    if-gt v1, v0, :cond_2db

    iget-boolean v1, v8, Landroid/support/v4/app/Fragment;->J8:Z

    if-eqz v1, :cond_49

    iget-boolean v1, v8, Landroid/support/v4/app/Fragment;->Ws:Z

    if-nez v1, :cond_49

    return-void

    :cond_49
    invoke-virtual/range {p1 .. p1}, Landroid/support/v4/app/Fragment;->v5()Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_55

    invoke-virtual/range {p1 .. p1}, Landroid/support/v4/app/Fragment;->Zo()Landroid/animation/Animator;

    move-result-object v1

    if-eqz v1, :cond_69

    :cond_55
    invoke-virtual {v8, v14}, Landroid/support/v4/app/Fragment;->j6(Landroid/view/View;)V

    invoke-virtual {v8, v14}, Landroid/support/v4/app/Fragment;->j6(Landroid/animation/Animator;)V

    invoke-virtual/range {p1 .. p1}, Landroid/support/v4/app/Fragment;->a8()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Landroid/support/v4/app/x;->j6(Landroid/support/v4/app/Fragment;IIIZ)V

    :cond_69
    iget v1, v8, Landroid/support/v4/app/Fragment;->FH:I

    if-eqz v1, :cond_77

    if-eq v1, v9, :cond_19a

    if-eq v1, v12, :cond_290

    if-eq v1, v11, :cond_294

    if-eq v1, v10, :cond_2b4

    goto/16 :goto_439

    :cond_77
    if-lez v0, :cond_19a

    sget-boolean v1, Landroid/support/v4/app/x;->j6:Z

    if-eqz v1, :cond_91

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "moveto CREATED: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v13, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_91
    iget-object v1, v8, Landroid/support/v4/app/Fragment;->Hw:Landroid/os/Bundle;

    if-eqz v1, :cond_d7

    iget-object v2, v7, Landroid/support/v4/app/x;->j3:Landroid/support/v4/app/q;

    invoke-virtual {v2}, Landroid/support/v4/app/q;->v5()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    iget-object v1, v8, Landroid/support/v4/app/Fragment;->Hw:Landroid/os/Bundle;

    const-string v2, "android:view_state"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v1

    iput-object v1, v8, Landroid/support/v4/app/Fragment;->v5:Landroid/util/SparseArray;

    iget-object v1, v8, Landroid/support/v4/app/Fragment;->Hw:Landroid/os/Bundle;

    const-string v2, "android:target_state"

    invoke-virtual {v7, v1, v2}, Landroid/support/v4/app/x;->j6(Landroid/os/Bundle;Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    iput-object v1, v8, Landroid/support/v4/app/Fragment;->u7:Landroid/support/v4/app/Fragment;

    iget-object v1, v8, Landroid/support/v4/app/Fragment;->u7:Landroid/support/v4/app/Fragment;

    if-eqz v1, :cond_c4

    iget-object v1, v8, Landroid/support/v4/app/Fragment;->Hw:Landroid/os/Bundle;

    const-string v2, "android:target_req_state"

    invoke-virtual {v1, v2, v15}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v8, Landroid/support/v4/app/Fragment;->EQ:I

    :cond_c4
    iget-object v1, v8, Landroid/support/v4/app/Fragment;->Hw:Landroid/os/Bundle;

    const-string v2, "android:user_visible_hint"

    invoke-virtual {v1, v2, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v8, Landroid/support/v4/app/Fragment;->cb:Z

    iget-boolean v1, v8, Landroid/support/v4/app/Fragment;->cb:Z

    if-nez v1, :cond_d7

    iput-boolean v9, v8, Landroid/support/v4/app/Fragment;->sh:Z

    if-le v0, v11, :cond_d7

    const/4 v0, 0x3

    :cond_d7
    iget-object v1, v7, Landroid/support/v4/app/x;->j3:Landroid/support/v4/app/q;

    iput-object v1, v8, Landroid/support/v4/app/Fragment;->Mr:Landroid/support/v4/app/q;

    iget-object v2, v7, Landroid/support/v4/app/x;->U2:Landroid/support/v4/app/Fragment;

    iput-object v2, v8, Landroid/support/v4/app/Fragment;->lg:Landroid/support/v4/app/Fragment;

    if-eqz v2, :cond_e4

    iget-object v1, v2, Landroid/support/v4/app/Fragment;->U2:Landroid/support/v4/app/x;

    goto :goto_e8

    :cond_e4
    invoke-virtual {v1}, Landroid/support/v4/app/q;->Zo()Landroid/support/v4/app/x;

    move-result-object v1

    :goto_e8
    iput-object v1, v8, Landroid/support/v4/app/Fragment;->j3:Landroid/support/v4/app/x;

    iget-object v1, v8, Landroid/support/v4/app/Fragment;->u7:Landroid/support/v4/app/Fragment;

    const-string v6, "Fragment "

    if-eqz v1, :cond_133

    iget-object v2, v7, Landroid/support/v4/app/x;->EQ:Landroid/util/SparseArray;

    iget v1, v1, Landroid/support/v4/app/Fragment;->Zo:I

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, v8, Landroid/support/v4/app/Fragment;->u7:Landroid/support/v4/app/Fragment;

    if-ne v1, v2, :cond_10e

    iget v1, v2, Landroid/support/v4/app/Fragment;->FH:I

    if-ge v1, v9, :cond_133

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v16, 0x1

    move-object/from16 v1, p0

    move-object v10, v6

    move/from16 v6, v16

    invoke-virtual/range {v1 .. v6}, Landroid/support/v4/app/x;->j6(Landroid/support/v4/app/Fragment;IIIZ)V

    goto :goto_134

    :cond_10e
    move-object v10, v6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " declared target fragment "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v8, Landroid/support/v4/app/Fragment;->u7:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " that does not belong to this FragmentManager!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_133
    move-object v10, v6

    :goto_134
    iget-object v1, v7, Landroid/support/v4/app/x;->j3:Landroid/support/v4/app/q;

    invoke-virtual {v1}, Landroid/support/v4/app/q;->v5()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v7, v8, v1, v15}, Landroid/support/v4/app/x;->DW(Landroid/support/v4/app/Fragment;Landroid/content/Context;Z)V

    iput-boolean v15, v8, Landroid/support/v4/app/Fragment;->SI:Z

    iget-object v1, v7, Landroid/support/v4/app/x;->j3:Landroid/support/v4/app/q;

    invoke-virtual {v1}, Landroid/support/v4/app/q;->v5()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v8, v1}, Landroid/support/v4/app/Fragment;->j6(Landroid/content/Context;)V

    iget-boolean v1, v8, Landroid/support/v4/app/Fragment;->SI:Z

    if-eqz v1, :cond_180

    iget-object v1, v8, Landroid/support/v4/app/Fragment;->lg:Landroid/support/v4/app/Fragment;

    if-nez v1, :cond_156

    iget-object v1, v7, Landroid/support/v4/app/x;->j3:Landroid/support/v4/app/q;

    invoke-virtual {v1, v8}, Landroid/support/v4/app/q;->j6(Landroid/support/v4/app/Fragment;)V

    goto :goto_159

    :cond_156
    invoke-virtual {v1, v8}, Landroid/support/v4/app/Fragment;->DW(Landroid/support/v4/app/Fragment;)V

    :goto_159
    iget-object v1, v7, Landroid/support/v4/app/x;->j3:Landroid/support/v4/app/q;

    invoke-virtual {v1}, Landroid/support/v4/app/q;->v5()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v7, v8, v1, v15}, Landroid/support/v4/app/x;->j6(Landroid/support/v4/app/Fragment;Landroid/content/Context;Z)V

    iget-boolean v1, v8, Landroid/support/v4/app/Fragment;->ca:Z

    if-nez v1, :cond_176

    iget-object v1, v8, Landroid/support/v4/app/Fragment;->Hw:Landroid/os/Bundle;

    invoke-virtual {v7, v8, v1, v15}, Landroid/support/v4/app/x;->FH(Landroid/support/v4/app/Fragment;Landroid/os/Bundle;Z)V

    iget-object v1, v8, Landroid/support/v4/app/Fragment;->Hw:Landroid/os/Bundle;

    invoke-virtual {v8, v1}, Landroid/support/v4/app/Fragment;->gn(Landroid/os/Bundle;)V

    iget-object v1, v8, Landroid/support/v4/app/Fragment;->Hw:Landroid/os/Bundle;

    invoke-virtual {v7, v8, v1, v15}, Landroid/support/v4/app/x;->DW(Landroid/support/v4/app/Fragment;Landroid/os/Bundle;Z)V

    goto :goto_17d

    :cond_176
    iget-object v1, v8, Landroid/support/v4/app/Fragment;->Hw:Landroid/os/Bundle;

    invoke-virtual {v8, v1}, Landroid/support/v4/app/Fragment;->EQ(Landroid/os/Bundle;)V

    iput v9, v8, Landroid/support/v4/app/Fragment;->FH:I

    :goto_17d
    iput-boolean v15, v8, Landroid/support/v4/app/Fragment;->P8:Z

    goto :goto_19a

    :cond_180
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " did not call through to super.onAttach()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Landroid/support/v4/app/ma;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/support/v4/app/ma;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_19a
    :goto_19a
    invoke-virtual/range {p0 .. p1}, Landroid/support/v4/app/x;->v5(Landroid/support/v4/app/Fragment;)V

    if-le v0, v9, :cond_290

    sget-boolean v1, Landroid/support/v4/app/x;->j6:Z

    if-eqz v1, :cond_1b7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "moveto ACTIVITY_CREATED: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v13, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1b7
    iget-boolean v1, v8, Landroid/support/v4/app/Fragment;->J8:Z

    if-nez v1, :cond_27b

    iget v1, v8, Landroid/support/v4/app/Fragment;->er:I

    if-eqz v1, :cond_22e

    const/4 v2, -0x1

    if-eq v1, v2, :cond_20f

    iget-object v2, v7, Landroid/support/v4/app/x;->Mr:Landroid/support/v4/app/o;

    invoke-virtual {v2, v1}, Landroid/support/v4/app/o;->j6(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    if-nez v1, :cond_22f

    iget-boolean v2, v8, Landroid/support/v4/app/Fragment;->QX:Z

    if-eqz v2, :cond_1d1

    goto :goto_22f

    :cond_1d1
    :try_start_1d1
    invoke-virtual/range {p1 .. p1}, Landroid/support/v4/app/Fragment;->aM()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, v8, Landroid/support/v4/app/Fragment;->er:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0
    :try_end_1db
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1d1 .. :try_end_1db} :catch_1dc

    goto :goto_1df

    :catch_1dc
    move-exception v0

    const-string v0, "unknown"

    :goto_1df
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No view found for id 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v8, Landroid/support/v4/app/Fragment;->er:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ") for fragment "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-direct {v7, v0}, Landroid/support/v4/app/x;->j6(Ljava/lang/RuntimeException;)V

    throw v14

    :cond_20f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot create fragment "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " for a container view with no id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-direct {v7, v1}, Landroid/support/v4/app/x;->j6(Ljava/lang/RuntimeException;)V

    throw v14

    :cond_22e
    move-object v1, v14

    :cond_22f
    :goto_22f
    iput-object v1, v8, Landroid/support/v4/app/Fragment;->KD:Landroid/view/ViewGroup;

    iget-object v2, v8, Landroid/support/v4/app/Fragment;->Hw:Landroid/os/Bundle;

    invoke-virtual {v8, v2}, Landroid/support/v4/app/Fragment;->u7(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object v2

    iget-object v3, v8, Landroid/support/v4/app/Fragment;->Hw:Landroid/os/Bundle;

    invoke-virtual {v8, v2, v1, v3}, Landroid/support/v4/app/Fragment;->DW(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v2

    iput-object v2, v8, Landroid/support/v4/app/Fragment;->ro:Landroid/view/View;

    iget-object v2, v8, Landroid/support/v4/app/Fragment;->ro:Landroid/view/View;

    if-eqz v2, :cond_279

    iput-object v2, v8, Landroid/support/v4/app/Fragment;->cn:Landroid/view/View;

    invoke-virtual {v2, v15}, Landroid/view/View;->setSaveFromParentEnabled(Z)V

    if-eqz v1, :cond_24f

    iget-object v2, v8, Landroid/support/v4/app/Fragment;->ro:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_24f
    iget-boolean v1, v8, Landroid/support/v4/app/Fragment;->gW:Z

    if-eqz v1, :cond_25a

    iget-object v1, v8, Landroid/support/v4/app/Fragment;->ro:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_25a
    iget-object v1, v8, Landroid/support/v4/app/Fragment;->ro:Landroid/view/View;

    iget-object v2, v8, Landroid/support/v4/app/Fragment;->Hw:Landroid/os/Bundle;

    invoke-virtual {v8, v1, v2}, Landroid/support/v4/app/Fragment;->j6(Landroid/view/View;Landroid/os/Bundle;)V

    iget-object v1, v8, Landroid/support/v4/app/Fragment;->ro:Landroid/view/View;

    iget-object v2, v8, Landroid/support/v4/app/Fragment;->Hw:Landroid/os/Bundle;

    invoke-virtual {v7, v8, v1, v2, v15}, Landroid/support/v4/app/x;->j6(Landroid/support/v4/app/Fragment;Landroid/view/View;Landroid/os/Bundle;Z)V

    iget-object v1, v8, Landroid/support/v4/app/Fragment;->ro:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_275

    iget-object v1, v8, Landroid/support/v4/app/Fragment;->KD:Landroid/view/ViewGroup;

    if-eqz v1, :cond_275

    goto :goto_276

    :cond_275
    const/4 v9, 0x0

    :goto_276
    iput-boolean v9, v8, Landroid/support/v4/app/Fragment;->vJ:Z

    goto :goto_27b

    :cond_279
    iput-object v14, v8, Landroid/support/v4/app/Fragment;->cn:Landroid/view/View;

    :cond_27b
    :goto_27b
    iget-object v1, v8, Landroid/support/v4/app/Fragment;->Hw:Landroid/os/Bundle;

    invoke-virtual {v8, v1}, Landroid/support/v4/app/Fragment;->VH(Landroid/os/Bundle;)V

    iget-object v1, v8, Landroid/support/v4/app/Fragment;->Hw:Landroid/os/Bundle;

    invoke-virtual {v7, v8, v1, v15}, Landroid/support/v4/app/x;->j6(Landroid/support/v4/app/Fragment;Landroid/os/Bundle;Z)V

    iget-object v1, v8, Landroid/support/v4/app/Fragment;->ro:Landroid/view/View;

    if-eqz v1, :cond_28e

    iget-object v1, v8, Landroid/support/v4/app/Fragment;->Hw:Landroid/os/Bundle;

    invoke-virtual {v8, v1}, Landroid/support/v4/app/Fragment;->we(Landroid/os/Bundle;)V

    :cond_28e
    iput-object v14, v8, Landroid/support/v4/app/Fragment;->Hw:Landroid/os/Bundle;

    :cond_290
    if-le v0, v12, :cond_294

    iput v11, v8, Landroid/support/v4/app/Fragment;->FH:I

    :cond_294
    if-le v0, v11, :cond_2b4

    sget-boolean v1, Landroid/support/v4/app/x;->j6:Z

    if-eqz v1, :cond_2ae

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "moveto STARTED: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v13, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2ae
    invoke-virtual/range {p1 .. p1}, Landroid/support/v4/app/Fragment;->sy()V

    invoke-virtual {v7, v8, v15}, Landroid/support/v4/app/x;->Zo(Landroid/support/v4/app/Fragment;Z)V

    :cond_2b4
    const/4 v1, 0x4

    if-le v0, v1, :cond_439

    sget-boolean v1, Landroid/support/v4/app/x;->j6:Z

    if-eqz v1, :cond_2cf

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "moveto RESUMED: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v13, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2cf
    invoke-virtual/range {p1 .. p1}, Landroid/support/v4/app/Fragment;->Qq()V

    invoke-virtual {v7, v8, v15}, Landroid/support/v4/app/x;->v5(Landroid/support/v4/app/Fragment;Z)V

    iput-object v14, v8, Landroid/support/v4/app/Fragment;->Hw:Landroid/os/Bundle;

    iput-object v14, v8, Landroid/support/v4/app/Fragment;->v5:Landroid/util/SparseArray;

    goto/16 :goto_439

    :cond_2db
    if-le v1, v0, :cond_439

    if-eq v1, v9, :cond_3c5

    if-eq v1, v12, :cond_349

    if-eq v1, v11, :cond_32c

    const/4 v2, 0x4

    if-eq v1, v2, :cond_30b

    const/4 v2, 0x5

    if-eq v1, v2, :cond_2eb

    goto/16 :goto_439

    :cond_2eb
    if-ge v0, v2, :cond_30b

    sget-boolean v1, Landroid/support/v4/app/x;->j6:Z

    if-eqz v1, :cond_305

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "movefrom RESUMED: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v13, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_305
    invoke-virtual/range {p1 .. p1}, Landroid/support/v4/app/Fragment;->ca()V

    invoke-virtual {v7, v8, v15}, Landroid/support/v4/app/x;->Hw(Landroid/support/v4/app/Fragment;Z)V

    :cond_30b
    const/4 v1, 0x4

    if-ge v0, v1, :cond_32c

    sget-boolean v1, Landroid/support/v4/app/x;->j6:Z

    if-eqz v1, :cond_326

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "movefrom STARTED: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v13, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_326
    invoke-virtual/range {p1 .. p1}, Landroid/support/v4/app/Fragment;->aj()V

    invoke-virtual {v7, v8, v15}, Landroid/support/v4/app/x;->VH(Landroid/support/v4/app/Fragment;Z)V

    :cond_32c
    if-ge v0, v11, :cond_349

    sget-boolean v1, Landroid/support/v4/app/x;->j6:Z

    if-eqz v1, :cond_346

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "movefrom STOPPED: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v13, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_346
    invoke-virtual/range {p1 .. p1}, Landroid/support/v4/app/Fragment;->x9()V

    :cond_349
    if-ge v0, v12, :cond_3c5

    sget-boolean v1, Landroid/support/v4/app/x;->j6:Z

    if-eqz v1, :cond_363

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "movefrom ACTIVITY_CREATED: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v13, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_363
    iget-object v1, v8, Landroid/support/v4/app/Fragment;->ro:Landroid/view/View;

    if-eqz v1, :cond_376

    iget-object v1, v7, Landroid/support/v4/app/x;->j3:Landroid/support/v4/app/q;

    invoke-virtual {v1, v8}, Landroid/support/v4/app/q;->DW(Landroid/support/v4/app/Fragment;)Z

    move-result v1

    if-eqz v1, :cond_376

    iget-object v1, v8, Landroid/support/v4/app/Fragment;->v5:Landroid/util/SparseArray;

    if-nez v1, :cond_376

    invoke-virtual/range {p0 .. p1}, Landroid/support/v4/app/x;->J8(Landroid/support/v4/app/Fragment;)V

    :cond_376
    invoke-virtual/range {p1 .. p1}, Landroid/support/v4/app/Fragment;->g3()V

    invoke-virtual {v7, v8, v15}, Landroid/support/v4/app/x;->gn(Landroid/support/v4/app/Fragment;Z)V

    iget-object v1, v8, Landroid/support/v4/app/Fragment;->ro:Landroid/view/View;

    if-eqz v1, :cond_3bd

    iget-object v2, v8, Landroid/support/v4/app/Fragment;->KD:Landroid/view/ViewGroup;

    if-eqz v2, :cond_3bd

    invoke-virtual {v1}, Landroid/view/View;->clearAnimation()V

    iget-object v1, v8, Landroid/support/v4/app/Fragment;->KD:Landroid/view/ViewGroup;

    iget-object v2, v8, Landroid/support/v4/app/Fragment;->ro:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->endViewTransition(Landroid/view/View;)V

    iget v1, v7, Landroid/support/v4/app/x;->aM:I

    const/4 v2, 0x0

    if-lez v1, :cond_3ae

    iget-boolean v1, v7, Landroid/support/v4/app/x;->er:Z

    if-nez v1, :cond_3ae

    iget-object v1, v8, Landroid/support/v4/app/Fragment;->ro:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_3ae

    iget v1, v8, Landroid/support/v4/app/Fragment;->Mz:F

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_3ae

    move/from16 v1, p3

    move/from16 v3, p4

    invoke-virtual {v7, v8, v1, v15, v3}, Landroid/support/v4/app/x;->j6(Landroid/support/v4/app/Fragment;IZI)Landroid/support/v4/app/x$c;

    move-result-object v1

    goto :goto_3af

    :cond_3ae
    move-object v1, v14

    :goto_3af
    iput v2, v8, Landroid/support/v4/app/Fragment;->Mz:F

    if-eqz v1, :cond_3b6

    invoke-direct {v7, v8, v1, v0}, Landroid/support/v4/app/x;->j6(Landroid/support/v4/app/Fragment;Landroid/support/v4/app/x$c;I)V

    :cond_3b6
    iget-object v1, v8, Landroid/support/v4/app/Fragment;->KD:Landroid/view/ViewGroup;

    iget-object v2, v8, Landroid/support/v4/app/Fragment;->ro:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_3bd
    iput-object v14, v8, Landroid/support/v4/app/Fragment;->KD:Landroid/view/ViewGroup;

    iput-object v14, v8, Landroid/support/v4/app/Fragment;->ro:Landroid/view/View;

    iput-object v14, v8, Landroid/support/v4/app/Fragment;->cn:Landroid/view/View;

    iput-boolean v15, v8, Landroid/support/v4/app/Fragment;->Ws:Z

    :cond_3c5
    if-ge v0, v9, :cond_439

    iget-boolean v1, v7, Landroid/support/v4/app/x;->er:Z

    if-eqz v1, :cond_3ec

    invoke-virtual/range {p1 .. p1}, Landroid/support/v4/app/Fragment;->v5()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_3dc

    invoke-virtual/range {p1 .. p1}, Landroid/support/v4/app/Fragment;->v5()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v8, v14}, Landroid/support/v4/app/Fragment;->j6(Landroid/view/View;)V

    invoke-virtual {v1}, Landroid/view/View;->clearAnimation()V

    goto :goto_3ec

    :cond_3dc
    invoke-virtual/range {p1 .. p1}, Landroid/support/v4/app/Fragment;->Zo()Landroid/animation/Animator;

    move-result-object v1

    if-eqz v1, :cond_3ec

    invoke-virtual/range {p1 .. p1}, Landroid/support/v4/app/Fragment;->Zo()Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v8, v14}, Landroid/support/v4/app/Fragment;->j6(Landroid/animation/Animator;)V

    invoke-virtual {v1}, Landroid/animation/Animator;->cancel()V

    :cond_3ec
    :goto_3ec
    invoke-virtual/range {p1 .. p1}, Landroid/support/v4/app/Fragment;->v5()Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_435

    invoke-virtual/range {p1 .. p1}, Landroid/support/v4/app/Fragment;->Zo()Landroid/animation/Animator;

    move-result-object v1

    if-eqz v1, :cond_3f9

    goto :goto_435

    :cond_3f9
    sget-boolean v1, Landroid/support/v4/app/x;->j6:Z

    if-eqz v1, :cond_411

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "movefrom CREATED: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v13, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_411
    iget-boolean v1, v8, Landroid/support/v4/app/Fragment;->P8:Z

    if-nez v1, :cond_41c

    invoke-virtual/range {p1 .. p1}, Landroid/support/v4/app/Fragment;->vJ()V

    invoke-virtual {v7, v8, v15}, Landroid/support/v4/app/x;->DW(Landroid/support/v4/app/Fragment;Z)V

    goto :goto_41e

    :cond_41c
    iput v15, v8, Landroid/support/v4/app/Fragment;->FH:I

    :goto_41e
    invoke-virtual/range {p1 .. p1}, Landroid/support/v4/app/Fragment;->Mz()V

    invoke-virtual {v7, v8, v15}, Landroid/support/v4/app/x;->FH(Landroid/support/v4/app/Fragment;Z)V

    if-nez p5, :cond_439

    iget-boolean v1, v8, Landroid/support/v4/app/Fragment;->P8:Z

    if-nez v1, :cond_42e

    invoke-virtual/range {p0 .. p1}, Landroid/support/v4/app/x;->gn(Landroid/support/v4/app/Fragment;)V

    goto :goto_439

    :cond_42e
    iput-object v14, v8, Landroid/support/v4/app/Fragment;->Mr:Landroid/support/v4/app/q;

    iput-object v14, v8, Landroid/support/v4/app/Fragment;->lg:Landroid/support/v4/app/Fragment;

    iput-object v14, v8, Landroid/support/v4/app/Fragment;->j3:Landroid/support/v4/app/x;

    goto :goto_439

    :cond_435
    :goto_435
    invoke-virtual {v8, v0}, Landroid/support/v4/app/Fragment;->DW(I)V

    goto :goto_43a

    :cond_439
    :goto_439
    move v9, v0

    :goto_43a
    iget v0, v8, Landroid/support/v4/app/Fragment;->FH:I

    if-eq v0, v9, :cond_46b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "moveToState: Fragment state for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " not updated inline; "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "expected state "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " found "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v8, Landroid/support/v4/app/Fragment;->FH:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iput v9, v8, Landroid/support/v4/app/Fragment;->FH:I

    :cond_46b
    return-void
.end method

.method j6(Landroid/support/v4/app/Fragment;Landroid/content/Context;Z)V
    .registers 7

    iget-object v0, p0, Landroid/support/v4/app/x;->U2:Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->J0()Landroid/support/v4/app/r;

    move-result-object v0

    instance-of v1, v0, Landroid/support/v4/app/x;

    if-eqz v1, :cond_12

    check-cast v0, Landroid/support/v4/app/x;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Landroid/support/v4/app/x;->j6(Landroid/support/v4/app/Fragment;Landroid/content/Context;Z)V

    :cond_12
    iget-object v0, p0, Landroid/support/v4/app/x;->XL:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_18
    :goto_18
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_38

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Labcd/s;

    if-eqz p3, :cond_30

    iget-object v2, v1, Labcd/s;->DW:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_18

    :cond_30
    iget-object v1, v1, Labcd/s;->j6:Ljava/lang/Object;

    check-cast v1, Landroid/support/v4/app/r$b;

    invoke-virtual {v1, p0, p1, p2}, Landroid/support/v4/app/r$b;->j6(Landroid/support/v4/app/r;Landroid/support/v4/app/Fragment;Landroid/content/Context;)V

    goto :goto_18

    :cond_38
    return-void
.end method

.method j6(Landroid/support/v4/app/Fragment;Landroid/os/Bundle;Z)V
    .registers 7

    iget-object v0, p0, Landroid/support/v4/app/x;->U2:Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->J0()Landroid/support/v4/app/r;

    move-result-object v0

    instance-of v1, v0, Landroid/support/v4/app/x;

    if-eqz v1, :cond_12

    check-cast v0, Landroid/support/v4/app/x;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Landroid/support/v4/app/x;->j6(Landroid/support/v4/app/Fragment;Landroid/os/Bundle;Z)V

    :cond_12
    iget-object v0, p0, Landroid/support/v4/app/x;->XL:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_18
    :goto_18
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_38

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Labcd/s;

    if-eqz p3, :cond_30

    iget-object v2, v1, Labcd/s;->DW:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_18

    :cond_30
    iget-object v1, v1, Labcd/s;->j6:Ljava/lang/Object;

    check-cast v1, Landroid/support/v4/app/r$b;

    invoke-virtual {v1, p0, p1, p2}, Landroid/support/v4/app/r$b;->j6(Landroid/support/v4/app/r;Landroid/support/v4/app/Fragment;Landroid/os/Bundle;)V

    goto :goto_18

    :cond_38
    return-void
.end method

.method j6(Landroid/support/v4/app/Fragment;Landroid/view/View;Landroid/os/Bundle;Z)V
    .registers 8

    iget-object v0, p0, Landroid/support/v4/app/x;->U2:Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->J0()Landroid/support/v4/app/r;

    move-result-object v0

    instance-of v1, v0, Landroid/support/v4/app/x;

    if-eqz v1, :cond_12

    check-cast v0, Landroid/support/v4/app/x;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, p3, v1}, Landroid/support/v4/app/x;->j6(Landroid/support/v4/app/Fragment;Landroid/view/View;Landroid/os/Bundle;Z)V

    :cond_12
    iget-object v0, p0, Landroid/support/v4/app/x;->XL:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_18
    :goto_18
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_38

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Labcd/s;

    if-eqz p4, :cond_30

    iget-object v2, v1, Labcd/s;->DW:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_18

    :cond_30
    iget-object v1, v1, Labcd/s;->j6:Ljava/lang/Object;

    check-cast v1, Landroid/support/v4/app/r$b;

    invoke-virtual {v1, p0, p1, p2, p3}, Landroid/support/v4/app/r$b;->j6(Landroid/support/v4/app/r;Landroid/support/v4/app/Fragment;Landroid/view/View;Landroid/os/Bundle;)V

    goto :goto_18

    :cond_38
    return-void
.end method

.method public j6(Landroid/support/v4/app/Fragment;Z)V
    .registers 6

    sget-boolean v0, Landroid/support/v4/app/x;->j6:Z

    if-eqz v0, :cond_1a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "add: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "FragmentManager"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1a
    invoke-virtual {p0, p1}, Landroid/support/v4/app/x;->VH(Landroid/support/v4/app/Fragment;)V

    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->BT:Z

    if-nez v0, :cond_68

    iget-object v0, p0, Landroid/support/v4/app/x;->tp:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_51

    iget-object v0, p0, Landroid/support/v4/app/x;->tp:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_2c
    iget-object v1, p0, Landroid/support/v4/app/x;->tp:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v0
    :try_end_32
    .catchall {:try_start_2c .. :try_end_32} :catchall_4e

    const/4 v0, 0x1

    iput-boolean v0, p1, Landroid/support/v4/app/Fragment;->we:Z

    const/4 v1, 0x0

    iput-boolean v1, p1, Landroid/support/v4/app/Fragment;->J0:Z

    iget-object v2, p1, Landroid/support/v4/app/Fragment;->ro:Landroid/view/View;

    if-nez v2, :cond_3e

    iput-boolean v1, p1, Landroid/support/v4/app/Fragment;->g3:Z

    :cond_3e
    iget-boolean v1, p1, Landroid/support/v4/app/Fragment;->ei:Z

    if-eqz v1, :cond_48

    iget-boolean v1, p1, Landroid/support/v4/app/Fragment;->nw:Z

    if-eqz v1, :cond_48

    iput-boolean v0, p0, Landroid/support/v4/app/x;->lg:Z

    :cond_48
    if-eqz p2, :cond_68

    invoke-virtual {p0, p1}, Landroid/support/v4/app/x;->tp(Landroid/support/v4/app/Fragment;)V

    goto :goto_68

    :catchall_4e
    move-exception p1

    :try_start_4f
    monitor-exit v0
    :try_end_50
    .catchall {:try_start_4f .. :try_end_50} :catchall_4e

    throw p1

    :cond_51
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Fragment already added: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_68
    :goto_68
    return-void
.end method

.method j6(Landroid/support/v4/app/e;)V
    .registers 3

    iget-object v0, p0, Landroid/support/v4/app/x;->we:Ljava/util/ArrayList;

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/x;->we:Ljava/util/ArrayList;

    :cond_b
    iget-object v0, p0, Landroid/support/v4/app/x;->we:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public j6(Landroid/support/v4/app/q;Landroid/support/v4/app/o;Landroid/support/v4/app/Fragment;)V
    .registers 5

    iget-object v0, p0, Landroid/support/v4/app/x;->j3:Landroid/support/v4/app/q;

    if-nez v0, :cond_b

    iput-object p1, p0, Landroid/support/v4/app/x;->j3:Landroid/support/v4/app/q;

    iput-object p2, p0, Landroid/support/v4/app/x;->Mr:Landroid/support/v4/app/o;

    iput-object p3, p0, Landroid/support/v4/app/x;->U2:Landroid/support/v4/app/Fragment;

    return-void

    :cond_b
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Already attached"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public j6(Landroid/support/v4/app/x$f;Z)V
    .registers 4

    if-nez p2, :cond_5

    invoke-direct {p0}, Landroid/support/v4/app/x;->gW()V

    :cond_5
    monitor-enter p0

    :try_start_6
    iget-boolean v0, p0, Landroid/support/v4/app/x;->er:Z

    if-nez v0, :cond_24

    iget-object v0, p0, Landroid/support/v4/app/x;->j3:Landroid/support/v4/app/q;

    if-nez v0, :cond_f

    goto :goto_24

    :cond_f
    iget-object p2, p0, Landroid/support/v4/app/x;->VH:Ljava/util/ArrayList;

    if-nez p2, :cond_1a

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Landroid/support/v4/app/x;->VH:Ljava/util/ArrayList;

    :cond_1a
    iget-object p2, p0, Landroid/support/v4/app/x;->VH:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Landroid/support/v4/app/x;->ei()V

    monitor-exit p0

    return-void

    :cond_24
    :goto_24
    if-eqz p2, :cond_28

    monitor-exit p0

    return-void

    :cond_28
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Activity has been destroyed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_30
    move-exception p1

    monitor-exit p0
    :try_end_32
    .catchall {:try_start_6 .. :try_end_32} :catchall_30

    throw p1
.end method

.method public j6(Landroid/view/Menu;)V
    .registers 4

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Landroid/support/v4/app/x;->tp:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_19

    iget-object v1, p0, Landroid/support/v4/app/x;->tp:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/Fragment;

    if-eqz v1, :cond_16

    invoke-virtual {v1, p1}, Landroid/support/v4/app/Fragment;->FH(Landroid/view/Menu;)V

    :cond_16
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_19
    return-void
.end method

.method public j6(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 11

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "    "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/app/x;->EQ:Landroid/util/SparseArray;

    const/4 v2, 0x0

    if-eqz v1, :cond_5a

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-lez v1, :cond_5a

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "Active Fragments in "

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, ":"

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v3, 0x0

    :goto_35
    if-ge v3, v1, :cond_5a

    iget-object v4, p0, Landroid/support/v4/app/x;->EQ:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v4/app/Fragment;

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "  #"

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(I)V

    const-string v5, ": "

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    if-eqz v4, :cond_57

    invoke-virtual {v4, v0, p2, p3, p4}, Landroid/support/v4/app/Fragment;->j6(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :cond_57
    add-int/lit8 v3, v3, 0x1

    goto :goto_35

    :cond_5a
    iget-object v1, p0, Landroid/support/v4/app/x;->tp:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_8f

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "Added Fragments:"

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v3, 0x0

    :goto_6b
    if-ge v3, v1, :cond_8f

    iget-object v4, p0, Landroid/support/v4/app/x;->tp:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v4/app/Fragment;

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "  #"

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(I)V

    const-string v5, ": "

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/support/v4/app/Fragment;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_6b

    :cond_8f
    iget-object v1, p0, Landroid/support/v4/app/x;->J0:Ljava/util/ArrayList;

    if-eqz v1, :cond_c6

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_c6

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "Fragments Created Menus:"

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v3, 0x0

    :goto_a2
    if-ge v3, v1, :cond_c6

    iget-object v4, p0, Landroid/support/v4/app/x;->J0:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v4/app/Fragment;

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "  #"

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(I)V

    const-string v5, ": "

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/support/v4/app/Fragment;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_a2

    :cond_c6
    iget-object v1, p0, Landroid/support/v4/app/x;->we:Ljava/util/ArrayList;

    if-eqz v1, :cond_100

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_100

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "Back Stack:"

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v3, 0x0

    :goto_d9
    if-ge v3, v1, :cond_100

    iget-object v4, p0, Landroid/support/v4/app/x;->we:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v4/app/e;

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "  #"

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(I)V

    const-string v5, ": "

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/support/v4/app/e;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v4, v0, p2, p3, p4}, Landroid/support/v4/app/e;->j6(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_d9

    :cond_100
    monitor-enter p0

    :try_start_101
    iget-object p2, p0, Landroid/support/v4/app/x;->J8:Ljava/util/ArrayList;

    if-eqz p2, :cond_134

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_134

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p4, "Back Stack Indices:"

    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p4, 0x0

    :goto_114
    if-ge p4, p2, :cond_134

    iget-object v0, p0, Landroid/support/v4/app/x;->J8:Ljava/util/ArrayList;

    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/e;

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "  #"

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->print(I)V

    const-string v1, ": "

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    add-int/lit8 p4, p4, 0x1

    goto :goto_114

    :cond_134
    iget-object p2, p0, Landroid/support/v4/app/x;->Ws:Ljava/util/ArrayList;

    if-eqz p2, :cond_153

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_153

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "mAvailBackStackIndices: "

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Landroid/support/v4/app/x;->Ws:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_153
    monitor-exit p0
    :try_end_154
    .catchall {:try_start_101 .. :try_end_154} :catchall_1fd

    iget-object p2, p0, Landroid/support/v4/app/x;->VH:Ljava/util/ArrayList;

    if-eqz p2, :cond_186

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_186

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p4, "Pending Actions:"

    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_166
    if-ge v2, p2, :cond_186

    iget-object p4, p0, Landroid/support/v4/app/x;->VH:Ljava/util/ArrayList;

    invoke-virtual {p4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/support/v4/app/x$f;

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  #"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, ": "

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_166

    :cond_186
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "FragmentManager misc state:"

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "  mHost="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Landroid/support/v4/app/x;->j3:Landroid/support/v4/app/q;

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "  mContainer="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Landroid/support/v4/app/x;->Mr:Landroid/support/v4/app/o;

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    iget-object p2, p0, Landroid/support/v4/app/x;->U2:Landroid/support/v4/app/Fragment;

    if-eqz p2, :cond_1b9

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "  mParent="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Landroid/support/v4/app/x;->U2:Landroid/support/v4/app/Fragment;

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_1b9
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "  mCurState="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget p2, p0, Landroid/support/v4/app/x;->aM:I

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(I)V

    const-string p2, " mStateSaved="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p2, p0, Landroid/support/v4/app/x;->rN:Z

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Z)V

    const-string p2, " mDestroyed="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p2, p0, Landroid/support/v4/app/x;->er:Z

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Z)V

    iget-boolean p2, p0, Landroid/support/v4/app/x;->lg:Z

    if-eqz p2, :cond_1eb

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "  mNeedMenuInvalidate="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p2, p0, Landroid/support/v4/app/x;->lg:Z

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Z)V

    :cond_1eb
    iget-object p2, p0, Landroid/support/v4/app/x;->yS:Ljava/lang/String;

    if-eqz p2, :cond_1fc

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p1, "  mNoTransactionsBecause="

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p1, p0, Landroid/support/v4/app/x;->yS:Ljava/lang/String;

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_1fc
    return-void

    :catchall_1fd
    move-exception p1

    :try_start_1fe
    monitor-exit p0
    :try_end_1ff
    .catchall {:try_start_1fe .. :try_end_1ff} :catchall_1fd

    goto :goto_201

    :goto_200
    throw p1

    :goto_201
    goto :goto_200
.end method

.method public j6(Z)V
    .registers 4

    iget-object v0, p0, Landroid/support/v4/app/x;->tp:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_1a

    iget-object v1, p0, Landroid/support/v4/app/x;->tp:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/Fragment;

    if-eqz v1, :cond_17

    invoke-virtual {v1, p1}, Landroid/support/v4/app/Fragment;->Hw(Z)V

    :cond_17
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_1a
    return-void
.end method

.method public j6(Landroid/view/Menu;Landroid/view/MenuInflater;)Z
    .registers 9

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_4
    iget-object v4, p0, Landroid/support/v4/app/x;->tp:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_2a

    iget-object v4, p0, Landroid/support/v4/app/x;->tp:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v4/app/Fragment;

    if-eqz v4, :cond_27

    invoke-virtual {v4, p1, p2}, Landroid/support/v4/app/Fragment;->DW(Landroid/view/Menu;Landroid/view/MenuInflater;)Z

    move-result v5

    if-eqz v5, :cond_27

    if-nez v1, :cond_23

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :cond_23
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x1

    :cond_27
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_2a
    iget-object p1, p0, Landroid/support/v4/app/x;->J0:Ljava/util/ArrayList;

    if-eqz p1, :cond_4c

    :goto_2e
    iget-object p1, p0, Landroid/support/v4/app/x;->J0:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v0, p1, :cond_4c

    iget-object p1, p0, Landroid/support/v4/app/x;->J0:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/support/v4/app/Fragment;

    if-eqz v1, :cond_46

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_49

    :cond_46
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->ro()V

    :cond_49
    add-int/lit8 v0, v0, 0x1

    goto :goto_2e

    :cond_4c
    iput-object v1, p0, Landroid/support/v4/app/x;->J0:Ljava/util/ArrayList;

    return v3
.end method

.method public j6(Landroid/view/MenuItem;)Z
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_2
    iget-object v2, p0, Landroid/support/v4/app/x;->tp:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1f

    iget-object v2, p0, Landroid/support/v4/app/x;->tp:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/app/Fragment;

    if-eqz v2, :cond_1c

    invoke-virtual {v2, p1}, Landroid/support/v4/app/Fragment;->FH(Landroid/view/MenuItem;)Z

    move-result v2

    if-eqz v2, :cond_1c

    const/4 p1, 0x1

    return p1

    :cond_1c
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_1f
    return v0
.end method

.method j6(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;II)Z
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/support/v4/app/e;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/lang/String;",
            "II)Z"
        }
    .end annotation

    iget-object v0, p0, Landroid/support/v4/app/x;->we:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    const/4 v2, 0x1

    if-nez p3, :cond_29

    if-gez p4, :cond_29

    and-int/lit8 v3, p5, 0x1

    if-nez v3, :cond_29

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p3

    sub-int/2addr p3, v2

    if-gez p3, :cond_17

    return v1

    :cond_17
    iget-object p4, p0, Landroid/support/v4/app/x;->we:Ljava/util/ArrayList;

    invoke-virtual {p4, p3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_a1

    :cond_29
    if-nez p3, :cond_30

    if-ltz p4, :cond_2e

    goto :goto_30

    :cond_2e
    const/4 p3, -0x1

    goto :goto_7b

    :cond_30
    :goto_30
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v2

    :goto_35
    if-ltz v0, :cond_56

    iget-object v3, p0, Landroid/support/v4/app/x;->we:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v4/app/e;

    if-eqz p3, :cond_4c

    invoke-virtual {v3}, Landroid/support/v4/app/e;->Zo()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4c

    goto :goto_56

    :cond_4c
    if-ltz p4, :cond_53

    iget v3, v3, Landroid/support/v4/app/e;->J8:I

    if-ne p4, v3, :cond_53

    goto :goto_56

    :cond_53
    add-int/lit8 v0, v0, -0x1

    goto :goto_35

    :cond_56
    :goto_56
    if-gez v0, :cond_59

    return v1

    :cond_59
    and-int/2addr p5, v2

    if-eqz p5, :cond_7a

    :cond_5c
    :goto_5c
    sub-int/2addr v0, v2

    if-ltz v0, :cond_7a

    iget-object p5, p0, Landroid/support/v4/app/x;->we:Ljava/util/ArrayList;

    invoke-virtual {p5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Landroid/support/v4/app/e;

    if-eqz p3, :cond_73

    invoke-virtual {p5}, Landroid/support/v4/app/e;->Zo()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5c

    :cond_73
    if-ltz p4, :cond_7a

    iget p5, p5, Landroid/support/v4/app/e;->J8:I

    if-ne p4, p5, :cond_7a

    goto :goto_5c

    :cond_7a
    move p3, v0

    :goto_7b
    iget-object p4, p0, Landroid/support/v4/app/x;->we:Ljava/util/ArrayList;

    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result p4

    sub-int/2addr p4, v2

    if-ne p3, p4, :cond_85

    return v1

    :cond_85
    iget-object p4, p0, Landroid/support/v4/app/x;->we:Ljava/util/ArrayList;

    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result p4

    sub-int/2addr p4, v2

    :goto_8c
    if-le p4, p3, :cond_a1

    iget-object p5, p0, Landroid/support/v4/app/x;->we:Ljava/util/ArrayList;

    invoke-virtual {p5, p4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p5

    invoke-virtual {p1, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p5

    invoke-virtual {p2, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p4, p4, -0x1

    goto :goto_8c

    :cond_a1
    :goto_a1
    return v2
.end method

.method lg()Landroid/os/Parcelable;
    .registers 14

    invoke-direct {p0}, Landroid/support/v4/app/x;->P8()V

    invoke-direct {p0}, Landroid/support/v4/app/x;->vy()V

    invoke-virtual {p0}, Landroid/support/v4/app/x;->XL()Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/x;->rN:Z

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/support/v4/app/x;->KD:Landroid/support/v4/app/y;

    iget-object v2, p0, Landroid/support/v4/app/x;->EQ:Landroid/util/SparseArray;

    if-eqz v2, :cond_1bd

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-gtz v2, :cond_1b

    goto/16 :goto_1bd

    :cond_1b
    iget-object v2, p0, Landroid/support/v4/app/x;->EQ:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    new-array v3, v2, [Landroid/support/v4/app/FragmentState;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_26
    const-string v7, " has cleared index: "

    const-string v8, "Failure saving state: active "

    const-string v9, ": "

    const-string v10, "FragmentManager"

    if-ge v5, v2, :cond_e9

    iget-object v11, p0, Landroid/support/v4/app/x;->EQ:Landroid/util/SparseArray;

    invoke-virtual {v11, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/support/v4/app/Fragment;

    if-eqz v11, :cond_e5

    iget v6, v11, Landroid/support/v4/app/Fragment;->Zo:I

    if-ltz v6, :cond_c5

    new-instance v6, Landroid/support/v4/app/FragmentState;

    invoke-direct {v6, v11}, Landroid/support/v4/app/FragmentState;-><init>(Landroid/support/v4/app/Fragment;)V

    aput-object v6, v3, v5

    iget v7, v11, Landroid/support/v4/app/Fragment;->FH:I

    if-lez v7, :cond_9f

    iget-object v7, v6, Landroid/support/v4/app/FragmentState;->EQ:Landroid/os/Bundle;

    if-nez v7, :cond_9f

    invoke-virtual {p0, v11}, Landroid/support/v4/app/x;->J0(Landroid/support/v4/app/Fragment;)Landroid/os/Bundle;

    move-result-object v7

    iput-object v7, v6, Landroid/support/v4/app/FragmentState;->EQ:Landroid/os/Bundle;

    iget-object v7, v11, Landroid/support/v4/app/Fragment;->u7:Landroid/support/v4/app/Fragment;

    if-eqz v7, :cond_a3

    iget v7, v7, Landroid/support/v4/app/Fragment;->Zo:I

    if-ltz v7, :cond_7b

    iget-object v7, v6, Landroid/support/v4/app/FragmentState;->EQ:Landroid/os/Bundle;

    if-nez v7, :cond_66

    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    iput-object v7, v6, Landroid/support/v4/app/FragmentState;->EQ:Landroid/os/Bundle;

    :cond_66
    iget-object v7, v6, Landroid/support/v4/app/FragmentState;->EQ:Landroid/os/Bundle;

    const-string v8, "android:target_state"

    iget-object v12, v11, Landroid/support/v4/app/Fragment;->u7:Landroid/support/v4/app/Fragment;

    invoke-virtual {p0, v7, v8, v12}, Landroid/support/v4/app/x;->j6(Landroid/os/Bundle;Ljava/lang/String;Landroid/support/v4/app/Fragment;)V

    iget v7, v11, Landroid/support/v4/app/Fragment;->EQ:I

    if-eqz v7, :cond_a3

    iget-object v8, v6, Landroid/support/v4/app/FragmentState;->EQ:Landroid/os/Bundle;

    const-string v12, "android:target_req_state"

    invoke-virtual {v8, v12, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_a3

    :cond_7b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failure saving state: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " has target not in fragment manager: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v11, Landroid/support/v4/app/Fragment;->u7:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v2}, Landroid/support/v4/app/x;->j6(Ljava/lang/RuntimeException;)V

    throw v1

    :cond_9f
    iget-object v7, v11, Landroid/support/v4/app/Fragment;->Hw:Landroid/os/Bundle;

    iput-object v7, v6, Landroid/support/v4/app/FragmentState;->EQ:Landroid/os/Bundle;

    :cond_a3
    :goto_a3
    sget-boolean v7, Landroid/support/v4/app/x;->j6:Z

    if-eqz v7, :cond_c3

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Saved state of "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v6, Landroid/support/v4/app/FragmentState;->EQ:Landroid/os/Bundle;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v10, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c3
    const/4 v6, 0x1

    goto :goto_e5

    :cond_c5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v11, Landroid/support/v4/app/Fragment;->Zo:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v2}, Landroid/support/v4/app/x;->j6(Ljava/lang/RuntimeException;)V

    throw v1

    :cond_e5
    :goto_e5
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_26

    :cond_e9
    if-nez v6, :cond_f5

    sget-boolean v0, Landroid/support/v4/app/x;->j6:Z

    if-eqz v0, :cond_f4

    const-string v0, "saveAllState: no fragments!"

    invoke-static {v10, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f4
    return-object v1

    :cond_f5
    iget-object v0, p0, Landroid/support/v4/app/x;->tp:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_15d

    new-array v2, v0, [I

    const/4 v5, 0x0

    :goto_100
    if-ge v5, v0, :cond_15e

    iget-object v6, p0, Landroid/support/v4/app/x;->tp:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/support/v4/app/Fragment;

    iget v6, v6, Landroid/support/v4/app/Fragment;->Zo:I

    aput v6, v2, v5

    if-ltz v6, :cond_137

    sget-boolean v6, Landroid/support/v4/app/x;->j6:Z

    if-eqz v6, :cond_134

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "saveAllState: adding fragment #"

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, p0, Landroid/support/v4/app/x;->tp:Ljava/util/ArrayList;

    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v10, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_134
    add-int/lit8 v5, v5, 0x1

    goto :goto_100

    :cond_137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/support/v4/app/x;->tp:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v2, v2, v5

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v2}, Landroid/support/v4/app/x;->j6(Ljava/lang/RuntimeException;)V

    throw v1

    :cond_15d
    move-object v2, v1

    :cond_15e
    iget-object v0, p0, Landroid/support/v4/app/x;->we:Ljava/util/ArrayList;

    if-eqz v0, :cond_1a2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1a2

    new-array v1, v0, [Landroid/support/v4/app/BackStackState;

    :goto_16a
    if-ge v4, v0, :cond_1a2

    new-instance v5, Landroid/support/v4/app/BackStackState;

    iget-object v6, p0, Landroid/support/v4/app/x;->we:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/support/v4/app/e;

    invoke-direct {v5, v6}, Landroid/support/v4/app/BackStackState;-><init>(Landroid/support/v4/app/e;)V

    aput-object v5, v1, v4

    sget-boolean v5, Landroid/support/v4/app/x;->j6:Z

    if-eqz v5, :cond_19f

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "saveAllState: adding back stack #"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Landroid/support/v4/app/x;->we:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v10, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_19f
    add-int/lit8 v4, v4, 0x1

    goto :goto_16a

    :cond_1a2
    new-instance v0, Landroid/support/v4/app/FragmentManagerState;

    invoke-direct {v0}, Landroid/support/v4/app/FragmentManagerState;-><init>()V

    iput-object v3, v0, Landroid/support/v4/app/FragmentManagerState;->j6:[Landroid/support/v4/app/FragmentState;

    iput-object v2, v0, Landroid/support/v4/app/FragmentManagerState;->DW:[I

    iput-object v1, v0, Landroid/support/v4/app/FragmentManagerState;->FH:[Landroid/support/v4/app/BackStackState;

    iget-object v1, p0, Landroid/support/v4/app/x;->a8:Landroid/support/v4/app/Fragment;

    if-eqz v1, :cond_1b5

    iget v1, v1, Landroid/support/v4/app/Fragment;->Zo:I

    iput v1, v0, Landroid/support/v4/app/FragmentManagerState;->Hw:I

    :cond_1b5
    iget v1, p0, Landroid/support/v4/app/x;->u7:I

    iput v1, v0, Landroid/support/v4/app/FragmentManagerState;->v5:I

    invoke-virtual {p0}, Landroid/support/v4/app/x;->rN()V

    return-object v0

    :cond_1bd
    :goto_1bd
    return-object v1
.end method

.method public onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .registers 17

    move-object v6, p0

    move-object v0, p3

    move-object/from16 v1, p4

    const-string v2, "fragment"

    move-object v3, p2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_f

    return-object v3

    :cond_f
    const-string v2, "class"

    invoke-interface {v1, v3, v2}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v4, Landroid/support/v4/app/x$e;->j6:[I

    invoke-virtual {p3, v1, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v4

    const/4 v5, 0x0

    if-nez v2, :cond_22

    invoke-virtual {v4, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    :cond_22
    move-object v7, v2

    const/4 v2, 0x1

    const/4 v8, -0x1

    invoke-virtual {v4, v2, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v9

    const/4 v10, 0x2

    invoke-virtual {v4, v10}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    iget-object v4, v6, Landroid/support/v4/app/x;->j3:Landroid/support/v4/app/q;

    invoke-virtual {v4}, Landroid/support/v4/app/q;->v5()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v7}, Landroid/support/v4/app/Fragment;->j6(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3e

    return-object v3

    :cond_3e
    if-eqz p1, :cond_44

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v5

    :cond_44
    if-ne v5, v8, :cond_69

    if-ne v9, v8, :cond_69

    if-eqz v10, :cond_4b

    goto :goto_69

    :cond_4b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface/range {p4 .. p4}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": Must specify unique android:id, android:tag, or have a parent with an id for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_69
    :goto_69
    if-eq v9, v8, :cond_70

    invoke-virtual {p0, v9}, Landroid/support/v4/app/x;->j6(I)Landroid/support/v4/app/Fragment;

    move-result-object v4

    goto :goto_71

    :cond_70
    move-object v4, v3

    :goto_71
    if-nez v4, :cond_79

    if-eqz v10, :cond_79

    invoke-virtual {p0, v10}, Landroid/support/v4/app/x;->j6(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v4

    :cond_79
    if-nez v4, :cond_81

    if-eq v5, v8, :cond_81

    invoke-virtual {p0, v5}, Landroid/support/v4/app/x;->j6(I)Landroid/support/v4/app/Fragment;

    move-result-object v4

    :cond_81
    sget-boolean v8, Landroid/support/v4/app/x;->j6:Z

    if-eqz v8, :cond_af

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "onCreateView: id=0x"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " fname="

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " existing="

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, "FragmentManager"

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v11, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_af
    if-nez v4, :cond_d9

    iget-object v4, v6, Landroid/support/v4/app/x;->Mr:Landroid/support/v4/app/o;

    invoke-virtual {v4, p3, v7, v3}, Landroid/support/v4/app/o;->j6(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/support/v4/app/Fragment;

    move-result-object v4

    iput-boolean v2, v4, Landroid/support/v4/app/Fragment;->J8:Z

    if-eqz v9, :cond_bd

    move v0, v9

    goto :goto_be

    :cond_bd
    move v0, v5

    :goto_be
    iput v0, v4, Landroid/support/v4/app/Fragment;->rN:I

    iput v5, v4, Landroid/support/v4/app/Fragment;->er:I

    iput-object v10, v4, Landroid/support/v4/app/Fragment;->yS:Ljava/lang/String;

    iput-boolean v2, v4, Landroid/support/v4/app/Fragment;->Ws:Z

    iput-object v6, v4, Landroid/support/v4/app/Fragment;->j3:Landroid/support/v4/app/x;

    iget-object v0, v6, Landroid/support/v4/app/x;->j3:Landroid/support/v4/app/q;

    iput-object v0, v4, Landroid/support/v4/app/Fragment;->Mr:Landroid/support/v4/app/q;

    invoke-virtual {v0}, Landroid/support/v4/app/q;->v5()Landroid/content/Context;

    move-result-object v0

    iget-object v3, v4, Landroid/support/v4/app/Fragment;->Hw:Landroid/os/Bundle;

    invoke-virtual {v4, v0, v1, v3}, Landroid/support/v4/app/Fragment;->j6(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    invoke-virtual {p0, v4, v2}, Landroid/support/v4/app/x;->j6(Landroid/support/v4/app/Fragment;Z)V

    goto :goto_f0

    :cond_d9
    iget-boolean v0, v4, Landroid/support/v4/app/Fragment;->Ws:Z

    if-nez v0, :cond_13b

    iput-boolean v2, v4, Landroid/support/v4/app/Fragment;->Ws:Z

    iget-object v0, v6, Landroid/support/v4/app/x;->j3:Landroid/support/v4/app/q;

    iput-object v0, v4, Landroid/support/v4/app/Fragment;->Mr:Landroid/support/v4/app/q;

    iget-boolean v3, v4, Landroid/support/v4/app/Fragment;->P8:Z

    if-nez v3, :cond_f0

    invoke-virtual {v0}, Landroid/support/v4/app/q;->v5()Landroid/content/Context;

    move-result-object v0

    iget-object v3, v4, Landroid/support/v4/app/Fragment;->Hw:Landroid/os/Bundle;

    invoke-virtual {v4, v0, v1, v3}, Landroid/support/v4/app/Fragment;->j6(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    :cond_f0
    :goto_f0
    move-object v8, v4

    iget v0, v6, Landroid/support/v4/app/x;->aM:I

    if-ge v0, v2, :cond_103

    iget-boolean v0, v8, Landroid/support/v4/app/Fragment;->J8:Z

    if-eqz v0, :cond_103

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, v8

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/app/x;->j6(Landroid/support/v4/app/Fragment;IIIZ)V

    goto :goto_106

    :cond_103
    invoke-virtual {p0, v8}, Landroid/support/v4/app/x;->tp(Landroid/support/v4/app/Fragment;)V

    :goto_106
    iget-object v0, v8, Landroid/support/v4/app/Fragment;->ro:Landroid/view/View;

    if-eqz v0, :cond_11f

    if-eqz v9, :cond_10f

    invoke-virtual {v0, v9}, Landroid/view/View;->setId(I)V

    :cond_10f
    iget-object v0, v8, Landroid/support/v4/app/Fragment;->ro:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_11c

    iget-object v0, v8, Landroid/support/v4/app/Fragment;->ro:Landroid/view/View;

    invoke-virtual {v0, v10}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_11c
    iget-object v0, v8, Landroid/support/v4/app/Fragment;->ro:Landroid/view/View;

    return-object v0

    :cond_11f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Fragment "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " did not create a view."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_13b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface/range {p4 .. p4}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": Duplicate id 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", tag "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", or parent id 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " with another fragment for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .registers 5

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2, p3}, Landroid/support/v4/app/x;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method rN()V
    .registers 9

    iget-object v0, p0, Landroid/support/v4/app/x;->EQ:Landroid/util/SparseArray;

    const/4 v1, 0x0

    if-eqz v0, :cond_7b

    const/4 v0, 0x0

    move-object v2, v1

    move-object v3, v2

    const/4 v4, 0x0

    :goto_9
    iget-object v5, p0, Landroid/support/v4/app/x;->EQ:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v4, v5, :cond_7d

    iget-object v5, p0, Landroid/support/v4/app/x;->EQ:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/v4/app/Fragment;

    if-eqz v5, :cond_78

    iget-boolean v6, v5, Landroid/support/v4/app/Fragment;->vy:Z

    if-eqz v6, :cond_4d

    if-nez v2, :cond_26

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :cond_26
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v6, v5, Landroid/support/v4/app/Fragment;->u7:Landroid/support/v4/app/Fragment;

    if-eqz v6, :cond_30

    iget v6, v6, Landroid/support/v4/app/Fragment;->Zo:I

    goto :goto_31

    :cond_30
    const/4 v6, -0x1

    :goto_31
    iput v6, v5, Landroid/support/v4/app/Fragment;->tp:I

    sget-boolean v6, Landroid/support/v4/app/x;->j6:Z

    if-eqz v6, :cond_4d

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "retainNonConfig: keeping retained "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, "FragmentManager"

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4d
    iget-object v6, v5, Landroid/support/v4/app/Fragment;->U2:Landroid/support/v4/app/x;

    if-eqz v6, :cond_59

    invoke-virtual {v6}, Landroid/support/v4/app/x;->rN()V

    iget-object v5, v5, Landroid/support/v4/app/Fragment;->U2:Landroid/support/v4/app/x;

    iget-object v5, v5, Landroid/support/v4/app/x;->KD:Landroid/support/v4/app/y;

    goto :goto_5b

    :cond_59
    iget-object v5, v5, Landroid/support/v4/app/Fragment;->a8:Landroid/support/v4/app/y;

    :goto_5b
    if-nez v3, :cond_73

    if-eqz v5, :cond_73

    new-instance v3, Ljava/util/ArrayList;

    iget-object v6, p0, Landroid/support/v4/app/x;->EQ:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    invoke-direct {v3, v6}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v6, 0x0

    :goto_6b
    if-ge v6, v4, :cond_73

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_6b

    :cond_73
    if-eqz v3, :cond_78

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_78
    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    :cond_7b
    move-object v2, v1

    move-object v3, v2

    :cond_7d
    if-nez v2, :cond_84

    if-nez v3, :cond_84

    iput-object v1, p0, Landroid/support/v4/app/x;->KD:Landroid/support/v4/app/y;

    goto :goto_8b

    :cond_84
    new-instance v0, Landroid/support/v4/app/y;

    invoke-direct {v0, v2, v3}, Landroid/support/v4/app/y;-><init>(Ljava/util/List;Ljava/util/List;)V

    iput-object v0, p0, Landroid/support/v4/app/x;->KD:Landroid/support/v4/app/y;

    :goto_8b
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "FragmentManager{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/support/v4/app/x;->U2:Landroid/support/v4/app/Fragment;

    if-eqz v1, :cond_21

    goto :goto_23

    :cond_21
    iget-object v1, p0, Landroid/support/v4/app/x;->j3:Landroid/support/v4/app/q;

    :goto_23
    invoke-static {v1, v0}, Labcd/o;->j6(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    const-string v1, "}}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public tp()V
    .registers 3

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Landroid/support/v4/app/x;->tp:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_19

    iget-object v1, p0, Landroid/support/v4/app/x;->tp:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/Fragment;

    if-eqz v1, :cond_16

    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->I()V

    :cond_16
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_19
    return-void
.end method

.method tp(Landroid/support/v4/app/Fragment;)V
    .registers 8

    iget v2, p0, Landroid/support/v4/app/x;->aM:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/app/x;->j6(Landroid/support/v4/app/Fragment;IIIZ)V

    return-void
.end method

.method public u7()V
    .registers 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/support/v4/app/x;->v5(I)V

    return-void
.end method

.method u7(Landroid/support/v4/app/Fragment;)V
    .registers 12

    if-nez p1, :cond_3

    return-void

    :cond_3
    iget v0, p0, Landroid/support/v4/app/x;->aM:I

    iget-boolean v1, p1, Landroid/support/v4/app/Fragment;->J0:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1a

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->P8()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_1a

    :cond_16
    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    :cond_1a
    :goto_1a
    move v6, v0

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->Ws()I

    move-result v7

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->QX()I

    move-result v8

    const/4 v9, 0x0

    move-object v4, p0

    move-object v5, p1

    invoke-virtual/range {v4 .. v9}, Landroid/support/v4/app/x;->j6(Landroid/support/v4/app/Fragment;IIIZ)V

    iget-object v0, p1, Landroid/support/v4/app/Fragment;->ro:Landroid/view/View;

    if-eqz v0, :cond_8c

    invoke-direct {p0, p1}, Landroid/support/v4/app/x;->XL(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_4b

    iget-object v0, v0, Landroid/support/v4/app/Fragment;->ro:Landroid/view/View;

    iget-object v1, p1, Landroid/support/v4/app/Fragment;->KD:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    iget-object v4, p1, Landroid/support/v4/app/Fragment;->ro:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v4

    if-ge v4, v0, :cond_4b

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->removeViewAt(I)V

    iget-object v4, p1, Landroid/support/v4/app/Fragment;->ro:Landroid/view/View;

    invoke-virtual {v1, v4, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    :cond_4b
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->vJ:Z

    if-eqz v0, :cond_8c

    iget-object v0, p1, Landroid/support/v4/app/Fragment;->KD:Landroid/view/ViewGroup;

    if-eqz v0, :cond_8c

    iget v0, p1, Landroid/support/v4/app/Fragment;->Mz:F

    const/4 v1, 0x0

    cmpl-float v4, v0, v1

    if-lez v4, :cond_5f

    iget-object v4, p1, Landroid/support/v4/app/Fragment;->ro:Landroid/view/View;

    invoke-virtual {v4, v0}, Landroid/view/View;->setAlpha(F)V

    :cond_5f
    iput v1, p1, Landroid/support/v4/app/Fragment;->Mz:F

    iput-boolean v3, p1, Landroid/support/v4/app/Fragment;->vJ:Z

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->Ws()I

    move-result v0

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->QX()I

    move-result v1

    invoke-virtual {p0, p1, v0, v2, v1}, Landroid/support/v4/app/x;->j6(Landroid/support/v4/app/Fragment;IZI)Landroid/support/v4/app/x$c;

    move-result-object v0

    if-eqz v0, :cond_8c

    iget-object v1, p1, Landroid/support/v4/app/Fragment;->ro:Landroid/view/View;

    invoke-static {v1, v0}, Landroid/support/v4/app/x;->DW(Landroid/view/View;Landroid/support/v4/app/x$c;)V

    iget-object v1, v0, Landroid/support/v4/app/x$c;->j6:Landroid/view/animation/Animation;

    if-eqz v1, :cond_80

    iget-object v0, p1, Landroid/support/v4/app/Fragment;->ro:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_8c

    :cond_80
    iget-object v1, v0, Landroid/support/v4/app/x$c;->DW:Landroid/animation/Animator;

    iget-object v2, p1, Landroid/support/v4/app/Fragment;->ro:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    iget-object v0, v0, Landroid/support/v4/app/x$c;->DW:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    :cond_8c
    :goto_8c
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->g3:Z

    if-eqz v0, :cond_93

    invoke-virtual {p0, p1}, Landroid/support/v4/app/x;->FH(Landroid/support/v4/app/Fragment;)V

    :cond_93
    return-void
.end method

.method v5(Landroid/support/v4/app/Fragment;)V
    .registers 5

    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->J8:Z

    if-eqz v0, :cond_3d

    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->XL:Z

    if-nez v0, :cond_3d

    iget-object v0, p1, Landroid/support/v4/app/Fragment;->Hw:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/support/v4/app/Fragment;->u7(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p1, Landroid/support/v4/app/Fragment;->Hw:Landroid/os/Bundle;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Landroid/support/v4/app/Fragment;->DW(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Landroid/support/v4/app/Fragment;->ro:Landroid/view/View;

    iget-object v0, p1, Landroid/support/v4/app/Fragment;->ro:Landroid/view/View;

    if-eqz v0, :cond_3b

    iput-object v0, p1, Landroid/support/v4/app/Fragment;->cn:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setSaveFromParentEnabled(Z)V

    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->gW:Z

    if-eqz v0, :cond_2c

    iget-object v0, p1, Landroid/support/v4/app/Fragment;->ro:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_2c
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->ro:Landroid/view/View;

    iget-object v2, p1, Landroid/support/v4/app/Fragment;->Hw:Landroid/os/Bundle;

    invoke-virtual {p1, v0, v2}, Landroid/support/v4/app/Fragment;->j6(Landroid/view/View;Landroid/os/Bundle;)V

    iget-object v0, p1, Landroid/support/v4/app/Fragment;->ro:Landroid/view/View;

    iget-object v2, p1, Landroid/support/v4/app/Fragment;->Hw:Landroid/os/Bundle;

    invoke-virtual {p0, p1, v0, v2, v1}, Landroid/support/v4/app/x;->j6(Landroid/support/v4/app/Fragment;Landroid/view/View;Landroid/os/Bundle;Z)V

    goto :goto_3d

    :cond_3b
    iput-object v2, p1, Landroid/support/v4/app/Fragment;->cn:Landroid/view/View;

    :cond_3d
    :goto_3d
    return-void
.end method

.method v5(Landroid/support/v4/app/Fragment;Z)V
    .registers 6

    iget-object v0, p0, Landroid/support/v4/app/x;->U2:Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->J0()Landroid/support/v4/app/r;

    move-result-object v0

    instance-of v1, v0, Landroid/support/v4/app/x;

    if-eqz v1, :cond_12

    check-cast v0, Landroid/support/v4/app/x;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/support/v4/app/x;->v5(Landroid/support/v4/app/Fragment;Z)V

    :cond_12
    iget-object v0, p0, Landroid/support/v4/app/x;->XL:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_18
    :goto_18
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_38

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Labcd/s;

    if-eqz p2, :cond_30

    iget-object v2, v1, Labcd/s;->DW:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_18

    :cond_30
    iget-object v1, v1, Labcd/s;->j6:Ljava/lang/Object;

    check-cast v1, Landroid/support/v4/app/r$b;

    invoke-virtual {v1, p0, p1}, Landroid/support/v4/app/r$b;->Hw(Landroid/support/v4/app/r;Landroid/support/v4/app/Fragment;)V

    goto :goto_18

    :cond_38
    return-void
.end method

.method public v5()Z
    .registers 4

    invoke-direct {p0}, Landroid/support/v4/app/x;->gW()V

    const/4 v0, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v1}, Landroid/support/v4/app/x;->j6(Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method public we()V
    .registers 2

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/support/v4/app/x;->v5(I)V

    return-void
.end method

.method public we(Landroid/support/v4/app/Fragment;)V
    .registers 5

    sget-boolean v0, Landroid/support/v4/app/x;->j6:Z

    if-eqz v0, :cond_24

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "remove: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " nesting="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/support/v4/app/Fragment;->aM:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "FragmentManager"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_24
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->P8()Z

    move-result v0

    iget-boolean v1, p1, Landroid/support/v4/app/Fragment;->BT:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_30

    xor-int/2addr v0, v2

    if-eqz v0, :cond_48

    :cond_30
    iget-object v0, p0, Landroid/support/v4/app/x;->tp:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_33
    iget-object v1, p0, Landroid/support/v4/app/x;->tp:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    monitor-exit v0
    :try_end_39
    .catchall {:try_start_33 .. :try_end_39} :catchall_49

    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->ei:Z

    if-eqz v0, :cond_43

    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->nw:Z

    if-eqz v0, :cond_43

    iput-boolean v2, p0, Landroid/support/v4/app/x;->lg:Z

    :cond_43
    const/4 v0, 0x0

    iput-boolean v0, p1, Landroid/support/v4/app/Fragment;->we:Z

    iput-boolean v2, p1, Landroid/support/v4/app/Fragment;->J0:Z

    :cond_48
    return-void

    :catchall_49
    move-exception p1

    :try_start_4a
    monitor-exit v0
    :try_end_4b
    .catchall {:try_start_4a .. :try_end_4b} :catchall_49

    throw p1
.end method
