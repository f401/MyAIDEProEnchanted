.class public final Lcom/google/android/gms/ads/internal/va;
.super Lcom/google/android/gms/ads/internal/fa;

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Landroid/view/ViewTreeObserver$OnScrollChangedListener;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zh;
.end annotation


# instance fields
.field private QX:Z

.field private XL:Z

.field private aM:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzwf;Ljava/lang/String;Lcom/google/android/gms/internal/ads/Ge;Lcom/google/android/gms/internal/ads/zzbbi;Lcom/google/android/gms/ads/internal/ta;)V
    .registers 7

    invoke-direct/range {p0 .. p6}, Lcom/google/android/gms/ads/internal/fa;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzwf;Ljava/lang/String;Lcom/google/android/gms/internal/ads/Ge;Lcom/google/android/gms/internal/ads/zzbbi;Lcom/google/android/gms/ads/internal/ta;)V

    new-instance p1, Ljava/lang/ref/WeakReference;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/va;->aM:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private final DW(Lcom/google/android/gms/internal/ads/kk;Lcom/google/android/gms/internal/ads/kk;)Z
    .registers 9

    iget-boolean v0, p2, Lcom/google/android/gms/internal/ads/kk;->Ws:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_87

    invoke-static {p2}, Lcom/google/android/gms/ads/internal/s;->j6(Lcom/google/android/gms/internal/ads/kk;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_11

    const-string p1, "Could not get mediation view"

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;)V

    return v1

    :cond_11
    iget-object v2, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/Y;->Zo:Lcom/google/android/gms/ads/internal/Z;

    invoke-virtual {v2}, Landroid/widget/ViewSwitcher;->getNextView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_2c

    instance-of v3, v2, Lcom/google/android/gms/internal/ads/Mo;

    if-eqz v3, :cond_25

    move-object v3, v2

    check-cast v3, Lcom/google/android/gms/internal/ads/Mo;

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/Mo;->destroy()V

    :cond_25
    iget-object v3, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/Y;->Zo:Lcom/google/android/gms/ads/internal/Z;

    invoke-virtual {v3, v2}, Landroid/widget/ViewSwitcher;->removeView(Landroid/view/View;)V

    :cond_2c
    invoke-static {p2}, Lcom/google/android/gms/ads/internal/s;->DW(Lcom/google/android/gms/internal/ads/kk;)Z

    move-result v2

    if-nez v2, :cond_bc

    :try_start_32
    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->ei()Lcom/google/android/gms/internal/ads/ak;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/Y;->FH:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/ak;->FH(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_59

    new-instance v2, Lcom/google/android/gms/internal/ads/PE;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/Y;->FH:Landroid/content/Context;

    invoke-direct {v2, v3, v0}, Lcom/google/android/gms/internal/ads/PE;-><init>(Landroid/content/Context;Landroid/view/View;)V

    new-instance v3, Lcom/google/android/gms/internal/ads/_j;

    iget-object v4, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v4, v4, Lcom/google/android/gms/ads/internal/Y;->FH:Landroid/content/Context;

    iget-object v5, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v5, v5, Lcom/google/android/gms/ads/internal/Y;->DW:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Lcom/google/android/gms/internal/ads/_j;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/PE;->j6(Lcom/google/android/gms/internal/ads/TE;)V

    :cond_59
    iget-object v2, p2, Lcom/google/android/gms/internal/ads/kk;->lg:Lcom/google/android/gms/internal/ads/zzwf;

    if-eqz v2, :cond_73

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/Y;->Zo:Lcom/google/android/gms/ads/internal/Z;

    iget-object v3, p2, Lcom/google/android/gms/internal/ads/kk;->lg:Lcom/google/android/gms/internal/ads/zzwf;

    iget v3, v3, Lcom/google/android/gms/internal/ads/zzwf;->Zo:I

    invoke-virtual {v2, v3}, Landroid/widget/ViewSwitcher;->setMinimumWidth(I)V

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/Y;->Zo:Lcom/google/android/gms/ads/internal/Z;

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/kk;->lg:Lcom/google/android/gms/internal/ads/zzwf;

    iget p2, p2, Lcom/google/android/gms/internal/ads/zzwf;->FH:I

    invoke-virtual {v2, p2}, Landroid/widget/ViewSwitcher;->setMinimumHeight(I)V

    :cond_73
    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/internal/a;->FH(Landroid/view/View;)V
    :try_end_76
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_76} :catch_77

    goto :goto_bc

    :catch_77
    move-exception p1

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->u7()Lcom/google/android/gms/internal/ads/pk;

    move-result-object p2

    const-string v0, "BannerAdManager.swapViews"

    invoke-virtual {p2, p1, v0}, Lcom/google/android/gms/internal/ads/pk;->j6(Ljava/lang/Throwable;Ljava/lang/String;)V

    const-string p2, "Could not add mediation view to view hierarchy."

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/jm;->FH(Ljava/lang/String;Ljava/lang/Throwable;)V

    return v1

    :cond_87
    iget-object v0, p2, Lcom/google/android/gms/internal/ads/kk;->lg:Lcom/google/android/gms/internal/ads/zzwf;

    if-eqz v0, :cond_bc

    iget-object v2, p2, Lcom/google/android/gms/internal/ads/kk;->DW:Lcom/google/android/gms/internal/ads/Mo;

    if-eqz v2, :cond_bc

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/yp;->j6(Lcom/google/android/gms/internal/ads/zzwf;)Lcom/google/android/gms/internal/ads/yp;

    move-result-object v0

    invoke-interface {v2, v0}, Lcom/google/android/gms/internal/ads/Mo;->j6(Lcom/google/android/gms/internal/ads/yp;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/Y;->Zo:Lcom/google/android/gms/ads/internal/Z;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/Z;->removeAllViews()V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/Y;->Zo:Lcom/google/android/gms/ads/internal/Z;

    iget-object v2, p2, Lcom/google/android/gms/internal/ads/kk;->lg:Lcom/google/android/gms/internal/ads/zzwf;

    iget v2, v2, Lcom/google/android/gms/internal/ads/zzwf;->Zo:I

    invoke-virtual {v0, v2}, Landroid/widget/ViewSwitcher;->setMinimumWidth(I)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/Y;->Zo:Lcom/google/android/gms/ads/internal/Z;

    iget-object v2, p2, Lcom/google/android/gms/internal/ads/kk;->lg:Lcom/google/android/gms/internal/ads/zzwf;

    iget v2, v2, Lcom/google/android/gms/internal/ads/zzwf;->FH:I

    invoke-virtual {v0, v2}, Landroid/widget/ViewSwitcher;->setMinimumHeight(I)V

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/kk;->DW:Lcom/google/android/gms/internal/ads/Mo;

    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/Mo;->getView()Landroid/view/View;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/google/android/gms/ads/internal/a;->FH(Landroid/view/View;)V

    :cond_bc
    :goto_bc
    iget-object p2, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object p2, p2, Lcom/google/android/gms/ads/internal/Y;->Zo:Lcom/google/android/gms/ads/internal/Z;

    invoke-virtual {p2}, Landroid/widget/ViewSwitcher;->getChildCount()I

    move-result p2

    const/4 v0, 0x1

    if-le p2, v0, :cond_ce

    iget-object p2, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object p2, p2, Lcom/google/android/gms/ads/internal/Y;->Zo:Lcom/google/android/gms/ads/internal/Z;

    invoke-virtual {p2}, Landroid/widget/ViewSwitcher;->showNext()V

    :cond_ce
    if-eqz p1, :cond_f0

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object p1, p1, Lcom/google/android/gms/ads/internal/Y;->Zo:Lcom/google/android/gms/ads/internal/Z;

    invoke-virtual {p1}, Landroid/widget/ViewSwitcher;->getNextView()Landroid/view/View;

    move-result-object p1

    instance-of p2, p1, Lcom/google/android/gms/internal/ads/Mo;

    if-eqz p2, :cond_e2

    check-cast p1, Lcom/google/android/gms/internal/ads/Mo;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/Mo;->destroy()V

    goto :goto_eb

    :cond_e2
    if-eqz p1, :cond_eb

    iget-object p2, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object p2, p2, Lcom/google/android/gms/ads/internal/Y;->Zo:Lcom/google/android/gms/ads/internal/Z;

    invoke-virtual {p2, p1}, Landroid/widget/ViewSwitcher;->removeView(Landroid/view/View;)V

    :cond_eb
    :goto_eb
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/internal/Y;->FH()V

    :cond_f0
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object p1, p1, Lcom/google/android/gms/ads/internal/Y;->Zo:Lcom/google/android/gms/ads/internal/Z;

    invoke-virtual {p1, v1}, Landroid/widget/ViewSwitcher;->setVisibility(I)V

    return v0
.end method

.method private final FH(Lcom/google/android/gms/internal/ads/Mo;)V
    .registers 9

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/fa;->s0()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/Mo;->getWebView()Landroid/webkit/WebView;

    move-result-object v3

    if-nez v3, :cond_e

    return-void

    :cond_e
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/Mo;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_15

    return-void

    :cond_15
    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->a8()Lcom/google/android/gms/internal/ads/bg;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/Y;->FH:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/bg;->DW(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_24

    return-void

    :cond_24
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/Y;->v5:Lcom/google/android/gms/internal/ads/zzbbi;

    iget v2, v1, Lcom/google/android/gms/internal/ads/zzbbi;->DW:I

    iget v1, v1, Lcom/google/android/gms/internal/ads/zzbbi;->FH:I

    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v5, 0x17

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->a8()Lcom/google/android/gms/internal/ads/bg;

    move-result-object v1

    const-string v4, ""

    const-string v5, "javascript"

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/a;->wC()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/bg;->j6(Ljava/lang/String;Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Labcd/ox;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/ads/internal/a;->EQ:Labcd/ox;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/a;->EQ:Labcd/ox;

    if-eqz v1, :cond_72

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->a8()Lcom/google/android/gms/internal/ads/bg;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/a;->EQ:Labcd/ox;

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/ads/bg;->j6(Labcd/ox;Landroid/view/View;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->EQ:Labcd/ox;

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/Mo;->j6(Labcd/ox;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->a8()Lcom/google/android/gms/internal/ads/bg;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->EQ:Labcd/ox;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/bg;->j6(Labcd/ox;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/ads/internal/va;->XL:Z

    :cond_72
    return-void
.end method


# virtual methods
.method final Hw(Lcom/google/android/gms/internal/ads/kk;)V
    .registers 5

    if-nez p1, :cond_3

    return-void

    :cond_3
    iget-boolean v0, p1, Lcom/google/android/gms/internal/ads/kk;->J8:Z

    if-eqz v0, :cond_8

    return-void

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/Y;->Zo:Lcom/google/android/gms/ads/internal/Z;

    if-eqz v0, :cond_4b

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->v5()Lcom/google/android/gms/internal/ads/Nk;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v2, v1, Lcom/google/android/gms/ads/internal/Y;->Zo:Lcom/google/android/gms/ads/internal/Z;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/Y;->FH:Landroid/content/Context;

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/ads/Nk;->j6(Landroid/view/View;Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4b

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/Y;->Zo:Lcom/google/android/gms/ads/internal/Z;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/ViewSwitcher;->getGlobalVisibleRect(Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    move-result v0

    if-nez v0, :cond_2f

    goto :goto_4b

    :cond_2f
    if-eqz p1, :cond_44

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/kk;->DW:Lcom/google/android/gms/internal/ads/Mo;

    if-eqz v0, :cond_44

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/Mo;->ei()Lcom/google/android/gms/internal/ads/tp;

    move-result-object v0

    if-eqz v0, :cond_44

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/kk;->DW:Lcom/google/android/gms/internal/ads/Mo;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/Mo;->ei()Lcom/google/android/gms/internal/ads/tp;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/ads/tp;->j6(Lcom/google/android/gms/internal/ads/xp;)V

    :cond_44
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/ads/internal/va;->j6(Lcom/google/android/gms/internal/ads/kk;Z)V

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/google/android/gms/internal/ads/kk;->J8:Z

    :cond_4b
    :goto_4b
    return-void
.end method

.method public final Ws(Z)V
    .registers 3

    const-string v0, "setManualImpressionsEnabled must be called from the main thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/r;->j6(Ljava/lang/String;)V

    iput-boolean p1, p0, Lcom/google/android/gms/ads/internal/va;->QX:Z

    return-void
.end method

.method protected final g0()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/Y;->tp:Lcom/google/android/gms/internal/ads/kk;

    if-eqz v0, :cond_9

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/kk;->DW:Lcom/google/android/gms/internal/ads/Mo;

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    iget-boolean v1, p0, Lcom/google/android/gms/ads/internal/va;->XL:Z

    if-nez v1, :cond_13

    if-eqz v0, :cond_13

    invoke-direct {p0, v0}, Lcom/google/android/gms/ads/internal/va;->FH(Lcom/google/android/gms/internal/ads/Mo;)V

    :cond_13
    invoke-super {p0}, Lcom/google/android/gms/ads/internal/fa;->g0()V

    return-void
.end method

.method public final getVideoController()Lcom/google/android/gms/internal/ads/kI;
    .registers 2

    const-string v0, "getVideoController must be called from the main thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/r;->j6(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/Y;->tp:Lcom/google/android/gms/internal/ads/kk;

    if-eqz v0, :cond_14

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/kk;->DW:Lcom/google/android/gms/internal/ads/Mo;

    if-eqz v0, :cond_14

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/Mo;->yS()Lcom/google/android/gms/internal/ads/bp;

    move-result-object v0

    return-object v0

    :cond_14
    const/4 v0, 0x0

    return-object v0
.end method

.method protected final hG()Z
    .registers 7

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->v5()Lcom/google/android/gms/internal/ads/Nk;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/Y;->FH:Landroid/content/Context;

    const-string v1, "android.permission.INTERNET"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/Nk;->j6(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_23

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->j6()Lcom/google/android/gms/internal/ads/Zl;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v3, v2, Lcom/google/android/gms/ads/internal/Y;->Zo:Lcom/google/android/gms/ads/internal/Z;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/Y;->u7:Lcom/google/android/gms/internal/ads/zzwf;

    const-string v4, "Missing internet permission in AndroidManifest.xml."

    const-string v5, "Missing internet permission in AndroidManifest.xml. You must have the following declaration: <uses-permission android:name=\"android.permission.INTERNET\" />"

    invoke-virtual {v0, v3, v2, v4, v5}, Lcom/google/android/gms/internal/ads/Zl;->j6(Landroid/view/ViewGroup;Lcom/google/android/gms/internal/ads/zzwf;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_24

    :cond_23
    const/4 v0, 0x1

    :goto_24
    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->v5()Lcom/google/android/gms/internal/ads/Nk;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/Y;->FH:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/Nk;->j6(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_43

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->j6()Lcom/google/android/gms/internal/ads/Zl;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v3, v2, Lcom/google/android/gms/ads/internal/Y;->Zo:Lcom/google/android/gms/ads/internal/Z;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/Y;->u7:Lcom/google/android/gms/internal/ads/zzwf;

    const-string v4, "Missing AdActivity with android:configChanges in AndroidManifest.xml."

    const-string v5, "Missing AdActivity with android:configChanges in AndroidManifest.xml. You must have the following declaration within the <application> element: <activity android:name=\"com.google.android.gms.ads.AdActivity\" android:configChanges=\"keyboard|keyboardHidden|orientation|screenLayout|uiMode|screenSize|smallestScreenSize\" />"

    invoke-virtual {v0, v3, v2, v4, v5}, Lcom/google/android/gms/internal/ads/Zl;->j6(Landroid/view/ViewGroup;Lcom/google/android/gms/internal/ads/zzwf;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_43
    if-nez v0, :cond_4e

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/Y;->Zo:Lcom/google/android/gms/ads/internal/Z;

    if-eqz v2, :cond_4e

    invoke-virtual {v2, v1}, Landroid/widget/ViewSwitcher;->setVisibility(I)V

    :cond_4e
    return v0
.end method

.method protected final j6(Lcom/google/android/gms/internal/ads/lk;Lcom/google/android/gms/ads/internal/ua;Lcom/google/android/gms/internal/ads/Wj;)Lcom/google/android/gms/internal/ads/Mo;
    .registers 9

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v1, v0, Lcom/google/android/gms/ads/internal/Y;->u7:Lcom/google/android/gms/internal/ads/zzwf;

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzwf;->VH:[Lcom/google/android/gms/internal/ads/zzwf;

    if-nez v2, :cond_50

    iget-boolean v2, v1, Lcom/google/android/gms/internal/ads/zzwf;->u7:Z

    if-eqz v2, :cond_50

    iget-object v2, p1, Lcom/google/android/gms/internal/ads/lk;->DW:Lcom/google/android/gms/internal/ads/zzasm;

    iget-boolean v3, v2, Lcom/google/android/gms/internal/ads/zzasm;->BT:Z

    if-eqz v3, :cond_13

    goto :goto_4e

    :cond_13
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzasm;->J8:Ljava/lang/String;

    if-eqz v2, :cond_41

    const-string v1, "[xX]"

    invoke-virtual {v2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v3, v1, v2

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v3, 0x1

    aget-object v4, v1, v3

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    new-instance v4, Lcom/google/android/gms/ads/d;

    aget-object v2, v1, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    aget-object v1, v1, v3

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-direct {v4, v2, v1}, Lcom/google/android/gms/ads/d;-><init>(II)V

    goto :goto_45

    :cond_41
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzwf;->FH()Lcom/google/android/gms/ads/d;

    move-result-object v4

    :goto_45
    new-instance v1, Lcom/google/android/gms/internal/ads/zzwf;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/Y;->FH:Landroid/content/Context;

    invoke-direct {v1, v2, v4}, Lcom/google/android/gms/internal/ads/zzwf;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/d;)V

    :goto_4e
    iput-object v1, v0, Lcom/google/android/gms/ads/internal/Y;->u7:Lcom/google/android/gms/internal/ads/zzwf;

    :cond_50
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/gms/ads/internal/fa;->j6(Lcom/google/android/gms/internal/ads/lk;Lcom/google/android/gms/ads/internal/ua;Lcom/google/android/gms/internal/ads/Wj;)Lcom/google/android/gms/internal/ads/Mo;

    move-result-object p1

    return-object p1
.end method

.method protected final j6(Lcom/google/android/gms/internal/ads/kk;Z)V
    .registers 10

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/fa;->s0()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_24

    if-eqz p1, :cond_c

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/kk;->DW:Lcom/google/android/gms/internal/ads/Mo;

    goto :goto_d

    :cond_c
    move-object v0, v1

    :goto_d
    if-eqz v0, :cond_24

    iget-boolean v2, p0, Lcom/google/android/gms/ads/internal/va;->XL:Z

    if-nez v2, :cond_16

    invoke-direct {p0, v0}, Lcom/google/android/gms/ads/internal/va;->FH(Lcom/google/android/gms/internal/ads/Mo;)V

    :cond_16
    iget-object v2, p0, Lcom/google/android/gms/ads/internal/a;->EQ:Labcd/ox;

    if-eqz v2, :cond_24

    new-instance v2, Labcd/k;

    invoke-direct {v2}, Labcd/k;-><init>()V

    const-string v3, "onSdkImpression"

    invoke-interface {v0, v3, v2}, Lcom/google/android/gms/internal/ads/Sc;->j6(Ljava/lang/String;Ljava/util/Map;)V

    :cond_24
    invoke-super {p0, p1, p2}, Lcom/google/android/gms/ads/internal/aa;->j6(Lcom/google/android/gms/internal/ads/kk;Z)V

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/s;->DW(Lcom/google/android/gms/internal/ads/kk;)Z

    move-result p2

    if-eqz p2, :cond_cf

    new-instance p2, Lcom/google/android/gms/ads/internal/c;

    invoke-direct {p2, p0}, Lcom/google/android/gms/ads/internal/c;-><init>(Lcom/google/android/gms/ads/internal/va;)V

    if-eqz p1, :cond_cf

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/s;->DW(Lcom/google/android/gms/internal/ads/kk;)Z

    move-result v0

    if-eqz v0, :cond_cf

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/kk;->DW:Lcom/google/android/gms/internal/ads/Mo;

    if-eqz v0, :cond_43

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/Mo;->getView()Landroid/view/View;

    move-result-object v2

    goto :goto_44

    :cond_43
    move-object v2, v1

    :goto_44
    if-nez v2, :cond_4c

    const-string p1, "AdWebView is null"

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;)V

    return-void

    :cond_4c
    :try_start_4c
    iget-object v3, p1, Lcom/google/android/gms/internal/ads/kk;->QX:Lcom/google/android/gms/internal/ads/pe;

    if-eqz v3, :cond_55

    iget-object v3, p1, Lcom/google/android/gms/internal/ads/kk;->QX:Lcom/google/android/gms/internal/ads/pe;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/pe;->aM:Ljava/util/List;

    goto :goto_56

    :cond_55
    move-object v3, v1

    :goto_56
    if-eqz v3, :cond_c3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_5f

    goto :goto_c3

    :cond_5f
    iget-object v4, p1, Lcom/google/android/gms/internal/ads/kk;->XL:Lcom/google/android/gms/internal/ads/Je;

    if-eqz v4, :cond_6a

    iget-object v4, p1, Lcom/google/android/gms/internal/ads/kk;->XL:Lcom/google/android/gms/internal/ads/Je;

    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/Je;->WB()Lcom/google/android/gms/internal/ads/Se;

    move-result-object v4

    goto :goto_6b

    :cond_6a
    move-object v4, v1

    :goto_6b
    iget-object v5, p1, Lcom/google/android/gms/internal/ads/kk;->XL:Lcom/google/android/gms/internal/ads/Je;

    if-eqz v5, :cond_76

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/kk;->XL:Lcom/google/android/gms/internal/ads/Je;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/Je;->ko()Lcom/google/android/gms/internal/ads/Ve;

    move-result-object p1

    goto :goto_77

    :cond_76
    move-object p1, v1

    :goto_77
    const-string v5, "2"

    invoke-interface {v3, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5
    :try_end_7d
    .catch Landroid/os/RemoteException; {:try_start_4c .. :try_end_7d} :catch_c9

    const-string v6, "/nativeExpressViewClicked"

    if-eqz v5, :cond_9b

    if-eqz v4, :cond_9b

    :try_start_83
    invoke-static {v2}, Labcd/px;->j6(Ljava/lang/Object;)Labcd/ox;

    move-result-object p1

    invoke-interface {v4, p1}, Lcom/google/android/gms/internal/ads/Se;->Zo(Labcd/ox;)V

    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/Se;->q7()Z

    move-result p1

    if-nez p1, :cond_93

    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/Se;->EQ()V

    :cond_93
    invoke-static {v4, v1, p2}, Lcom/google/android/gms/ads/internal/s;->j6(Lcom/google/android/gms/internal/ads/Se;Lcom/google/android/gms/internal/ads/Ve;Lcom/google/android/gms/ads/internal/c;)Lcom/google/android/gms/ads/internal/gmsg/B;

    move-result-object p1

    invoke-interface {v0, v6, p1}, Lcom/google/android/gms/internal/ads/Mo;->j6(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/B;)V

    return-void

    :cond_9b
    const-string v4, "1"

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_bd

    if-eqz p1, :cond_bd

    invoke-static {v2}, Labcd/px;->j6(Ljava/lang/Object;)Labcd/ox;

    move-result-object v2

    invoke-interface {p1, v2}, Lcom/google/android/gms/internal/ads/Ve;->Zo(Labcd/ox;)V

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/Ve;->q7()Z

    move-result v2

    if-nez v2, :cond_b5

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/Ve;->EQ()V

    :cond_b5
    invoke-static {v1, p1, p2}, Lcom/google/android/gms/ads/internal/s;->j6(Lcom/google/android/gms/internal/ads/Se;Lcom/google/android/gms/internal/ads/Ve;Lcom/google/android/gms/ads/internal/c;)Lcom/google/android/gms/ads/internal/gmsg/B;

    move-result-object p1

    invoke-interface {v0, v6, p1}, Lcom/google/android/gms/internal/ads/Mo;->j6(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/B;)V

    return-void

    :cond_bd
    const-string p1, "No matching template id and mapper"

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;)V

    return-void

    :cond_c3
    :goto_c3
    const-string p1, "No template ids present in mediation response"

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;)V
    :try_end_c8
    .catch Landroid/os/RemoteException; {:try_start_83 .. :try_end_c8} :catch_c9

    return-void

    :catch_c9
    move-exception p1

    const-string p2, "Error occurred while recording impression and registering for clicks"

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/jm;->FH(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_cf
    return-void
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/kk;Lcom/google/android/gms/internal/ads/kk;)Z
    .registers 7

    invoke-super {p0, p1, p2}, Lcom/google/android/gms/ads/internal/fa;->j6(Lcom/google/android/gms/internal/ads/kk;Lcom/google/android/gms/internal/ads/kk;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/Y;->Hw()Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/ads/internal/va;->DW(Lcom/google/android/gms/internal/ads/kk;Lcom/google/android/gms/internal/ads/kk;)Z

    move-result p1

    if-nez p1, :cond_23

    iget-object p1, p2, Lcom/google/android/gms/internal/ads/kk;->sG:Lcom/google/android/gms/internal/ads/YF;

    if-eqz p1, :cond_1f

    sget-object p2, Lcom/google/android/gms/internal/ads/_F;->Hw:Lcom/google/android/gms/internal/ads/_F;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/YF;->j6(Lcom/google/android/gms/internal/ads/_F;)V

    :cond_1f
    invoke-virtual {p0, v1}, Lcom/google/android/gms/ads/internal/a;->J0(I)V

    return v1

    :cond_23
    invoke-virtual {p0, p2, v1}, Lcom/google/android/gms/ads/internal/aa;->DW(Lcom/google/android/gms/internal/ads/kk;Z)V

    iget-boolean p1, p2, Lcom/google/android/gms/internal/ads/kk;->we:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_60

    invoke-virtual {p0, p2}, Lcom/google/android/gms/ads/internal/va;->Hw(Lcom/google/android/gms/internal/ads/kk;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->P8()Lcom/google/android/gms/internal/ads/Zm;

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object p1, p1, Lcom/google/android/gms/ads/internal/Y;->Zo:Lcom/google/android/gms/ads/internal/Z;

    invoke-static {p1, p0}, Lcom/google/android/gms/internal/ads/Zm;->j6(Landroid/view/View;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->P8()Lcom/google/android/gms/internal/ads/Zm;

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object p1, p1, Lcom/google/android/gms/ads/internal/Y;->Zo:Lcom/google/android/gms/ads/internal/Z;

    invoke-static {p1, p0}, Lcom/google/android/gms/internal/ads/Zm;->j6(Landroid/view/View;Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    iget-boolean p1, p2, Lcom/google/android/gms/internal/ads/kk;->J8:Z

    if-nez p1, :cond_7d

    new-instance p1, Lcom/google/android/gms/ads/internal/wa;

    invoke-direct {p1, p0}, Lcom/google/android/gms/ads/internal/wa;-><init>(Lcom/google/android/gms/ads/internal/va;)V

    iget-object v1, p2, Lcom/google/android/gms/internal/ads/kk;->DW:Lcom/google/android/gms/internal/ads/Mo;

    if-eqz v1, :cond_54

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/Mo;->ei()Lcom/google/android/gms/internal/ads/tp;

    move-result-object v1

    goto :goto_55

    :cond_54
    move-object v1, v0

    :goto_55
    if-eqz v1, :cond_7d

    new-instance v2, Lcom/google/android/gms/ads/internal/xa;

    invoke-direct {v2, p2, p1}, Lcom/google/android/gms/ads/internal/xa;-><init>(Lcom/google/android/gms/internal/ads/kk;Ljava/lang/Runnable;)V

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/tp;->j6(Lcom/google/android/gms/internal/ads/xp;)V

    goto :goto_7d

    :cond_60
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/internal/Y;->v5()Z

    move-result p1

    if-eqz p1, :cond_7a

    sget-object p1, Lcom/google/android/gms/internal/ads/p;->hx:Lcom/google/android/gms/internal/ads/e;

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->v5()Lcom/google/android/gms/internal/ads/m;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/ads/m;->j6(Lcom/google/android/gms/internal/ads/e;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_7d

    :cond_7a
    invoke-virtual {p0, p2, v1}, Lcom/google/android/gms/ads/internal/va;->j6(Lcom/google/android/gms/internal/ads/kk;Z)V

    :cond_7d
    :goto_7d
    iget-object p1, p2, Lcom/google/android/gms/internal/ads/kk;->DW:Lcom/google/android/gms/internal/ads/Mo;

    if-eqz p1, :cond_9b

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/Mo;->yS()Lcom/google/android/gms/internal/ads/bp;

    move-result-object p1

    iget-object v1, p2, Lcom/google/android/gms/internal/ads/kk;->DW:Lcom/google/android/gms/internal/ads/Mo;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/Mo;->ei()Lcom/google/android/gms/internal/ads/tp;

    move-result-object v1

    if-eqz v1, :cond_90

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/tp;->DW()V

    :cond_90
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/Y;->er:Lcom/google/android/gms/internal/ads/zzzw;

    if-eqz v1, :cond_9b

    if-eqz p1, :cond_9b

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/bp;->DW(Lcom/google/android/gms/internal/ads/zzzw;)V

    :cond_9b
    invoke-static {}, Lcom/google/android/gms/common/util/o;->j6()Z

    move-result p1

    if-eqz p1, :cond_130

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/internal/Y;->Hw()Z

    move-result p1

    if-eqz p1, :cond_112

    iget-object p1, p2, Lcom/google/android/gms/internal/ads/kk;->DW:Lcom/google/android/gms/internal/ads/Mo;

    if-eqz p1, :cond_127

    iget-object p1, p2, Lcom/google/android/gms/internal/ads/kk;->EQ:Lorg/json/JSONObject;

    if-eqz p1, :cond_ba

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/a;->gn:Lcom/google/android/gms/internal/ads/rE;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/Y;->u7:Lcom/google/android/gms/internal/ads/zzwf;

    invoke-virtual {p1, v0, p2}, Lcom/google/android/gms/internal/ads/rE;->j6(Lcom/google/android/gms/internal/ads/zzwf;Lcom/google/android/gms/internal/ads/kk;)V

    :cond_ba
    iget-object p1, p2, Lcom/google/android/gms/internal/ads/kk;->DW:Lcom/google/android/gms/internal/ads/Mo;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/Mo;->getView()Landroid/view/View;

    move-result-object v0

    new-instance p1, Lcom/google/android/gms/internal/ads/PE;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/Y;->FH:Landroid/content/Context;

    invoke-direct {p1, v1, v0}, Lcom/google/android/gms/internal/ads/PE;-><init>(Landroid/content/Context;Landroid/view/View;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->ei()Lcom/google/android/gms/internal/ads/ak;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/Y;->FH:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/ak;->FH(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_f7

    iget-object v1, p2, Lcom/google/android/gms/internal/ads/kk;->j6:Lcom/google/android/gms/internal/ads/zzwb;

    invoke-static {v1}, Lcom/google/android/gms/ads/internal/a;->FH(Lcom/google/android/gms/internal/ads/zzwb;)Z

    move-result v1

    if-eqz v1, :cond_f7

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/Y;->DW:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_f7

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    new-instance v2, Lcom/google/android/gms/internal/ads/_j;

    iget-object v3, v1, Lcom/google/android/gms/ads/internal/Y;->FH:Landroid/content/Context;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/Y;->DW:Ljava/lang/String;

    invoke-direct {v2, v3, v1}, Lcom/google/android/gms/internal/ads/_j;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/ads/PE;->j6(Lcom/google/android/gms/internal/ads/TE;)V

    :cond_f7
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/kk;->j6()Z

    move-result v1

    if-eqz v1, :cond_103

    iget-object v1, p2, Lcom/google/android/gms/internal/ads/kk;->DW:Lcom/google/android/gms/internal/ads/Mo;

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/PE;->j6(Lcom/google/android/gms/internal/ads/TE;)V

    goto :goto_127

    :cond_103
    iget-object v1, p2, Lcom/google/android/gms/internal/ads/kk;->DW:Lcom/google/android/gms/internal/ads/Mo;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/Mo;->ei()Lcom/google/android/gms/internal/ads/tp;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/ads/internal/b;

    invoke-direct {v2, p1, p2}, Lcom/google/android/gms/ads/internal/b;-><init>(Lcom/google/android/gms/internal/ads/PE;Lcom/google/android/gms/internal/ads/kk;)V

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/tp;->j6(Lcom/google/android/gms/internal/ads/wp;)V

    goto :goto_127

    :cond_112
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v1, p1, Lcom/google/android/gms/ads/internal/Y;->sh:Landroid/view/View;

    if-eqz v1, :cond_127

    iget-object v2, p2, Lcom/google/android/gms/internal/ads/kk;->EQ:Lorg/json/JSONObject;

    if-eqz v2, :cond_127

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->gn:Lcom/google/android/gms/internal/ads/rE;

    iget-object p1, p1, Lcom/google/android/gms/ads/internal/Y;->u7:Lcom/google/android/gms/internal/ads/zzwf;

    invoke-virtual {v0, p1, p2, v1}, Lcom/google/android/gms/internal/ads/rE;->j6(Lcom/google/android/gms/internal/ads/zzwf;Lcom/google/android/gms/internal/ads/kk;Landroid/view/View;)V

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v0, p1, Lcom/google/android/gms/ads/internal/Y;->sh:Landroid/view/View;

    :cond_127
    :goto_127
    iget-boolean p1, p2, Lcom/google/android/gms/internal/ads/kk;->Ws:Z

    if-nez p1, :cond_130

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/ads/internal/Y;->j6(Landroid/view/View;)V

    :cond_130
    const/4 p1, 0x1

    return p1
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/zzwb;)Z
    .registers 30

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/google/android/gms/ads/internal/va;->XL:Z

    const/4 v3, 0x0

    iput-object v3, v0, Lcom/google/android/gms/ads/internal/a;->EQ:Labcd/ox;

    iget-boolean v3, v1, Lcom/google/android/gms/internal/ads/zzwb;->gn:Z

    iget-boolean v4, v0, Lcom/google/android/gms/ads/internal/va;->QX:Z

    if-ne v3, v4, :cond_11

    goto :goto_5f

    :cond_11
    iget v6, v1, Lcom/google/android/gms/internal/ads/zzwb;->j6:I

    iget-wide v7, v1, Lcom/google/android/gms/internal/ads/zzwb;->DW:J

    iget-object v9, v1, Lcom/google/android/gms/internal/ads/zzwb;->FH:Landroid/os/Bundle;

    iget v10, v1, Lcom/google/android/gms/internal/ads/zzwb;->Hw:I

    iget-object v11, v1, Lcom/google/android/gms/internal/ads/zzwb;->v5:Ljava/util/List;

    iget-boolean v12, v1, Lcom/google/android/gms/internal/ads/zzwb;->Zo:Z

    iget v13, v1, Lcom/google/android/gms/internal/ads/zzwb;->VH:I

    if-nez v3, :cond_26

    if-eqz v4, :cond_24

    goto :goto_26

    :cond_24
    const/4 v14, 0x0

    goto :goto_28

    :cond_26
    :goto_26
    const/4 v2, 0x1

    const/4 v14, 0x1

    :goto_28
    new-instance v2, Lcom/google/android/gms/internal/ads/zzwb;

    move-object v5, v2

    iget-object v15, v1, Lcom/google/android/gms/internal/ads/zzwb;->u7:Ljava/lang/String;

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzwb;->tp:Lcom/google/android/gms/internal/ads/zzzs;

    move-object/from16 v16, v3

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzwb;->EQ:Landroid/location/Location;

    move-object/from16 v17, v3

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzwb;->we:Ljava/lang/String;

    move-object/from16 v18, v3

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzwb;->J0:Landroid/os/Bundle;

    move-object/from16 v19, v3

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzwb;->J8:Landroid/os/Bundle;

    move-object/from16 v20, v3

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzwb;->Ws:Ljava/util/List;

    move-object/from16 v21, v3

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzwb;->QX:Ljava/lang/String;

    move-object/from16 v22, v3

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzwb;->XL:Ljava/lang/String;

    move-object/from16 v23, v3

    iget-boolean v3, v1, Lcom/google/android/gms/internal/ads/zzwb;->aM:Z

    move/from16 v24, v3

    const/16 v25, 0x0

    iget v3, v1, Lcom/google/android/gms/internal/ads/zzwb;->Mr:I

    move/from16 v26, v3

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzwb;->U2:Ljava/lang/String;

    move-object/from16 v27, v1

    invoke-direct/range {v5 .. v27}, Lcom/google/android/gms/internal/ads/zzwb;-><init>(IJLandroid/os/Bundle;ILjava/util/List;ZIZLjava/lang/String;Lcom/google/android/gms/internal/ads/zzzs;Landroid/location/Location;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLcom/google/android/gms/internal/ads/zzvv;ILjava/lang/String;)V

    move-object v1, v2

    :goto_5f
    invoke-super {v0, v1}, Lcom/google/android/gms/ads/internal/a;->j6(Lcom/google/android/gms/internal/ads/zzwb;)Z

    move-result v1

    return v1
.end method

.method public final onGlobalLayout()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/Y;->tp:Lcom/google/android/gms/internal/ads/kk;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/internal/va;->Hw(Lcom/google/android/gms/internal/ads/kk;)V

    return-void
.end method

.method public final onScrollChanged()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/Y;->tp:Lcom/google/android/gms/internal/ads/kk;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/internal/va;->Hw(Lcom/google/android/gms/internal/ads/kk;)V

    return-void
.end method

.method public final showInterstitial()V
    .registers 3

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Interstitial is NOT supported by BannerAdManager."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final uD()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->v5:Lcom/google/android/gms/ads/internal/M;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/M;->Hw()V

    return-void
.end method
