.class public final Lcom/google/android/gms/ads/internal/Y;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Landroid/view/ViewTreeObserver$OnScrollChangedListener;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zh;
.end annotation


# instance fields
.field BT:Lcom/google/android/gms/internal/ads/rb;

.field public DW:Ljava/lang/String;

.field public EQ:Lcom/google/android/gms/internal/ads/lk;

.field public final FH:Landroid/content/Context;

.field final Hw:Lcom/google/android/gms/internal/ads/ix;

.field private I:Z

.field J0:Lcom/google/android/gms/internal/ads/tH;

.field J8:Lcom/google/android/gms/internal/ads/xH;

.field public KD:Ljava/lang/String;

.field Mr:Lcom/google/android/gms/internal/ads/ub;

.field private Mz:Z

.field P8:Lcom/google/android/gms/internal/ads/J;

.field QX:Lcom/google/android/gms/internal/ads/NH;

.field public SI:Ljava/lang/String;

.field private Sf:I

.field U2:Lcom/google/android/gms/internal/ads/cc;

.field public VH:Lcom/google/android/gms/internal/ads/Ak;

.field Ws:Lcom/google/android/gms/internal/ads/QH;

.field XL:Lcom/google/android/gms/internal/ads/WH;

.field Zo:Lcom/google/android/gms/ads/internal/Z;

.field a8:Labcd/x;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/lb;",
            ">;"
        }
    .end annotation
.end field

.field aM:Lcom/google/android/gms/internal/ads/fb;

.field public cb:I

.field public cn:Lcom/google/android/gms/internal/ads/xk;

.field dx:Z

.field private ef:I

.field ei:Lcom/google/android/gms/internal/ads/jj;

.field er:Lcom/google/android/gms/internal/ads/zzzw;

.field private g3:Z

.field gW:Lcom/google/android/gms/internal/ads/zzyv;

.field public gn:Lcom/google/android/gms/internal/ads/hl;

.field j3:Lcom/google/android/gms/internal/ads/ib;

.field final j6:Ljava/lang/String;

.field lg:Labcd/x;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/ob;",
            ">;"
        }
    .end annotation
.end field

.field nw:Lcom/google/android/gms/internal/ads/cj;

.field rN:Lcom/google/android/gms/internal/ads/zzacp;

.field ro:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private sG:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/google/android/gms/internal/ads/mk;",
            ">;"
        }
    .end annotation
.end field

.field sh:Landroid/view/View;

.field public tp:Lcom/google/android/gms/internal/ads/kk;

.field public u7:Lcom/google/android/gms/internal/ads/zzwf;

.field public final v5:Lcom/google/android/gms/internal/ads/zzbbi;

.field private vJ:Lcom/google/android/gms/internal/ads/Ol;

.field vy:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public we:Lcom/google/android/gms/internal/ads/mk;

.field yS:Lcom/google/android/gms/internal/ads/zzafz;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzwf;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbbi;)V
    .registers 11

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/ads/internal/Y;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzwf;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbbi;Lcom/google/android/gms/internal/ads/ix;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzwf;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbbi;Lcom/google/android/gms/internal/ads/ix;)V
    .registers 13

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p5, 0x0

    iput-object p5, p0, Lcom/google/android/gms/ads/internal/Y;->cn:Lcom/google/android/gms/internal/ads/xk;

    iput-object p5, p0, Lcom/google/android/gms/ads/internal/Y;->sh:Landroid/view/View;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/ads/internal/Y;->cb:I

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/Y;->dx:Z

    iput-object p5, p0, Lcom/google/android/gms/ads/internal/Y;->sG:Ljava/util/HashSet;

    const/4 v1, -0x1

    iput v1, p0, Lcom/google/android/gms/ads/internal/Y;->ef:I

    iput v1, p0, Lcom/google/android/gms/ads/internal/Y;->Sf:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/gms/ads/internal/Y;->g3:Z

    iput-boolean v1, p0, Lcom/google/android/gms/ads/internal/Y;->Mz:Z

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/Y;->I:Z

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/p;->j6(Landroid/content/Context;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->u7()Lcom/google/android/gms/internal/ads/pk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/pk;->FH()Lcom/google/android/gms/internal/ads/s;

    move-result-object v0

    if-eqz v0, :cond_42

    invoke-static {}, Lcom/google/android/gms/internal/ads/p;->DW()Ljava/util/List;

    move-result-object v0

    iget v1, p4, Lcom/google/android/gms/internal/ads/zzbbi;->DW:I

    if-eqz v1, :cond_37

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_37
    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->u7()Lcom/google/android/gms/internal/ads/pk;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/pk;->FH()Lcom/google/android/gms/internal/ads/s;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/s;->j6(Ljava/util/List;)V

    :cond_42
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/Y;->j6:Ljava/lang/String;

    iget-boolean v0, p2, Lcom/google/android/gms/internal/ads/zzwf;->Hw:Z

    if-nez v0, :cond_76

    iget-boolean v0, p2, Lcom/google/android/gms/internal/ads/zzwf;->gn:Z

    if-eqz v0, :cond_55

    goto :goto_76

    :cond_55
    new-instance p5, Lcom/google/android/gms/ads/internal/Z;

    iget-object v4, p4, Lcom/google/android/gms/internal/ads/zzbbi;->j6:Ljava/lang/String;

    move-object v1, p5

    move-object v2, p1

    move-object v3, p3

    move-object v5, p0

    move-object v6, p0

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/ads/internal/Z;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    iput-object p5, p0, Lcom/google/android/gms/ads/internal/Y;->Zo:Lcom/google/android/gms/ads/internal/Z;

    iget v0, p2, Lcom/google/android/gms/internal/ads/zzwf;->Zo:I

    invoke-virtual {p5, v0}, Landroid/widget/ViewSwitcher;->setMinimumWidth(I)V

    iget-object p5, p0, Lcom/google/android/gms/ads/internal/Y;->Zo:Lcom/google/android/gms/ads/internal/Z;

    iget v0, p2, Lcom/google/android/gms/internal/ads/zzwf;->FH:I

    invoke-virtual {p5, v0}, Landroid/widget/ViewSwitcher;->setMinimumHeight(I)V

    iget-object p5, p0, Lcom/google/android/gms/ads/internal/Y;->Zo:Lcom/google/android/gms/ads/internal/Z;

    const/4 v0, 0x4

    invoke-virtual {p5, v0}, Landroid/widget/ViewSwitcher;->setVisibility(I)V

    goto :goto_78

    :cond_76
    :goto_76
    iput-object p5, p0, Lcom/google/android/gms/ads/internal/Y;->Zo:Lcom/google/android/gms/ads/internal/Z;

    :goto_78
    iput-object p2, p0, Lcom/google/android/gms/ads/internal/Y;->u7:Lcom/google/android/gms/internal/ads/zzwf;

    iput-object p3, p0, Lcom/google/android/gms/ads/internal/Y;->DW:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/Y;->FH:Landroid/content/Context;

    iput-object p4, p0, Lcom/google/android/gms/ads/internal/Y;->v5:Lcom/google/android/gms/internal/ads/zzbbi;

    new-instance p1, Lcom/google/android/gms/internal/ads/ix;

    new-instance p2, Lcom/google/android/gms/ads/internal/h;

    invoke-direct {p2, p0}, Lcom/google/android/gms/ads/internal/h;-><init>(Lcom/google/android/gms/ads/internal/Y;)V

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/ix;-><init>(Lcom/google/android/gms/internal/ads/ex;)V

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/Y;->Hw:Lcom/google/android/gms/internal/ads/ix;

    new-instance p1, Lcom/google/android/gms/internal/ads/Ol;

    const-wide/16 p2, 0xc8

    invoke-direct {p1, p2, p3}, Lcom/google/android/gms/internal/ads/Ol;-><init>(J)V

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/Y;->vJ:Lcom/google/android/gms/internal/ads/Ol;

    new-instance p1, Labcd/x;

    invoke-direct {p1}, Labcd/x;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/Y;->lg:Labcd/x;

    return-void
.end method

.method private final DW(Z)V
    .registers 7

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/Y;->Zo:Lcom/google/android/gms/ads/internal/Z;

    if-eqz v0, :cond_9c

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/Y;->tp:Lcom/google/android/gms/internal/ads/kk;

    if-eqz v0, :cond_9c

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/kk;->DW:Lcom/google/android/gms/internal/ads/Mo;

    if-eqz v0, :cond_9c

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/Mo;->ei()Lcom/google/android/gms/internal/ads/tp;

    move-result-object v0

    if-nez v0, :cond_14

    goto/16 :goto_9c

    :cond_14
    if-eqz p1, :cond_1f

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/Y;->vJ:Lcom/google/android/gms/internal/ads/Ol;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Ol;->j6()Z

    move-result v0

    if-nez v0, :cond_1f

    return-void

    :cond_1f
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/Y;->tp:Lcom/google/android/gms/internal/ads/kk;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/kk;->DW:Lcom/google/android/gms/internal/ads/Mo;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/Mo;->ei()Lcom/google/android/gms/internal/ads/tp;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/tp;->u7()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_69

    const/4 v0, 0x2

    new-array v0, v0, [I

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/Y;->Zo:Lcom/google/android/gms/ads/internal/Z;

    invoke-virtual {v2, v0}, Landroid/widget/ViewSwitcher;->getLocationOnScreen([I)V

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->j6()Lcom/google/android/gms/internal/ads/Zl;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/Y;->FH:Landroid/content/Context;

    aget v3, v0, v1

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/Zl;->DW(Landroid/content/Context;I)I

    move-result v2

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->j6()Lcom/google/android/gms/internal/ads/Zl;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/Y;->FH:Landroid/content/Context;

    const/4 v4, 0x1

    aget v0, v0, v4

    invoke-static {v3, v0}, Lcom/google/android/gms/internal/ads/Zl;->DW(Landroid/content/Context;I)I

    move-result v0

    iget v3, p0, Lcom/google/android/gms/ads/internal/Y;->ef:I

    if-ne v2, v3, :cond_55

    iget v3, p0, Lcom/google/android/gms/ads/internal/Y;->Sf:I

    if-eq v0, v3, :cond_69

    :cond_55
    iput v2, p0, Lcom/google/android/gms/ads/internal/Y;->ef:I

    iput v0, p0, Lcom/google/android/gms/ads/internal/Y;->Sf:I

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/Y;->tp:Lcom/google/android/gms/internal/ads/kk;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/kk;->DW:Lcom/google/android/gms/internal/ads/Mo;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/Mo;->ei()Lcom/google/android/gms/internal/ads/tp;

    move-result-object v0

    iget v2, p0, Lcom/google/android/gms/ads/internal/Y;->ef:I

    iget v3, p0, Lcom/google/android/gms/ads/internal/Y;->Sf:I

    xor-int/2addr p1, v4

    invoke-interface {v0, v2, v3, p1}, Lcom/google/android/gms/internal/ads/tp;->j6(IIZ)V

    :cond_69
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/Y;->Zo:Lcom/google/android/gms/ads/internal/Z;

    if-eqz p1, :cond_9c

    invoke-virtual {p1}, Landroid/widget/ViewSwitcher;->getRootView()Landroid/view/View;

    move-result-object p1

    const v0, 0x1020002

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_9c

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/Y;->Zo:Lcom/google/android/gms/ads/internal/Z;

    invoke-virtual {v3, v0}, Landroid/widget/ViewSwitcher;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    invoke-virtual {p1, v2}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    iget p1, v0, Landroid/graphics/Rect;->top:I

    iget v3, v2, Landroid/graphics/Rect;->top:I

    if-eq p1, v3, :cond_94

    iput-boolean v1, p0, Lcom/google/android/gms/ads/internal/Y;->g3:Z

    :cond_94
    iget p1, v0, Landroid/graphics/Rect;->bottom:I

    iget v0, v2, Landroid/graphics/Rect;->bottom:I

    if-eq p1, v0, :cond_9c

    iput-boolean v1, p0, Lcom/google/android/gms/ads/internal/Y;->Mz:Z

    :cond_9c
    :goto_9c
    return-void
.end method


# virtual methods
.method public final DW()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/Y;->tp:Lcom/google/android/gms/internal/ads/kk;

    if-eqz v0, :cond_b

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/kk;->DW:Lcom/google/android/gms/internal/ads/Mo;

    if-eqz v0, :cond_b

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/Mo;->destroy()V

    :cond_b
    return-void
.end method

.method public final FH()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/Y;->tp:Lcom/google/android/gms/internal/ads/kk;

    if-eqz v0, :cond_12

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/kk;->XL:Lcom/google/android/gms/internal/ads/Je;

    if-eqz v0, :cond_12

    :try_start_8
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/Je;->destroy()V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_b} :catch_c

    return-void

    :catch_c
    move-exception v0

    const-string v0, "Could not destroy mediation adapter."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;)V

    :cond_12
    return-void
.end method

.method public final Hw()Z
    .registers 2

    iget v0, p0, Lcom/google/android/gms/ads/internal/Y;->cb:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public final Zo()Ljava/lang/String;
    .registers 4

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/Y;->g3:Z

    const-string v1, ""

    if-eqz v0, :cond_b

    iget-boolean v2, p0, Lcom/google/android/gms/ads/internal/Y;->Mz:Z

    if-eqz v2, :cond_b

    return-object v1

    :cond_b
    if-eqz v0, :cond_17

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/Y;->I:Z

    if-eqz v0, :cond_14

    const-string v0, "top-scrollable"

    return-object v0

    :cond_14
    const-string v0, "top-locked"

    return-object v0

    :cond_17
    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/Y;->Mz:Z

    if-eqz v0, :cond_25

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/Y;->I:Z

    if-eqz v0, :cond_22

    const-string v0, "bottom-scrollable"

    return-object v0

    :cond_22
    const-string v0, "bottom-locked"

    return-object v0

    :cond_25
    return-object v1
.end method

.method public final j6()Ljava/util/HashSet;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet<",
            "Lcom/google/android/gms/internal/ads/mk;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/Y;->sG:Ljava/util/HashSet;

    return-object v0
.end method

.method final j6(Landroid/view/View;)V
    .registers 4

    sget-object v0, Lcom/google/android/gms/internal/ads/p;->wE:Lcom/google/android/gms/internal/ads/e;

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->v5()Lcom/google/android/gms/internal/ads/m;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/m;->j6(Lcom/google/android/gms/internal/ads/e;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_13

    return-void

    :cond_13
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/Y;->Hw:Lcom/google/android/gms/internal/ads/ix;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ix;->j6()Lcom/google/android/gms/internal/ads/ex;

    move-result-object v0

    if-eqz v0, :cond_1e

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/ex;->j6(Landroid/view/View;)V

    :cond_1e
    return-void
.end method

.method public final j6(Ljava/util/HashSet;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Lcom/google/android/gms/internal/ads/mk;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/Y;->sG:Ljava/util/HashSet;

    return-void
.end method

.method public final j6(Z)V
    .registers 3

    iget v0, p0, Lcom/google/android/gms/ads/internal/Y;->cb:I

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/Y;->tp:Lcom/google/android/gms/internal/ads/kk;

    if-eqz v0, :cond_f

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/kk;->DW:Lcom/google/android/gms/internal/ads/Mo;

    if-eqz v0, :cond_f

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/Mo;->stopLoading()V

    :cond_f
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/Y;->VH:Lcom/google/android/gms/internal/ads/Ak;

    if-eqz v0, :cond_16

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Ak;->cancel()V

    :cond_16
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/Y;->gn:Lcom/google/android/gms/internal/ads/hl;

    if-eqz v0, :cond_1d

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/hl;->cancel()V

    :cond_1d
    if-eqz p1, :cond_22

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/Y;->tp:Lcom/google/android/gms/internal/ads/kk;

    :cond_22
    return-void
.end method

.method public final onGlobalLayout()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/ads/internal/Y;->DW(Z)V

    return-void
.end method

.method public final onScrollChanged()V
    .registers 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/gms/ads/internal/Y;->DW(Z)V

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/Y;->I:Z

    return-void
.end method

.method public final v5()Z
    .registers 3

    iget v0, p0, Lcom/google/android/gms/ads/internal/Y;->cb:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    return v1

    :cond_6
    const/4 v0, 0x0

    return v0
.end method
