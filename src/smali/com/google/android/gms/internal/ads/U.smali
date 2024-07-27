.class public final Lcom/google/android/gms/internal/ads/U;
.super Lcom/google/android/gms/internal/ads/_b;

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Landroid/view/ViewTreeObserver$OnScrollChangedListener;
.implements Lcom/google/android/gms/internal/ads/ka;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zh;
.end annotation


# instance fields
.field private DW:Lcom/google/android/gms/internal/ads/ia;

.field private FH:Z

.field private Hw:Z

.field private j6:Lcom/google/android/gms/internal/ads/Mo;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/Mo;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/_b;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/U;->j6:Lcom/google/android/gms/internal/ads/Mo;

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/U;->FH:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/U;->Hw:Z

    return-void
.end method

.method private final K3()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/U;->j6:Lcom/google/android/gms/internal/ads/Mo;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/Mo;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/U;->j6:Lcom/google/android/gms/internal/ads/Mo;

    check-cast v1, Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_0
.end method

.method private final OM()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/U;->DW:Lcom/google/android/gms/internal/ads/ia;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/U;->j6:Lcom/google/android/gms/internal/ads/Mo;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/Mo;->getView()Landroid/view/View;

    move-result-object v1

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/ads/ia;->FH(Landroid/view/View;Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method private static j6(Lcom/google/android/gms/internal/ads/ac;I)V
    .registers 4

    :try_start_0
    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/ac;->u7(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public final DY()Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/U;->j6:Lcom/google/android/gms/internal/ads/Mo;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/Mo;->getView()Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public final destroy()V
    .registers 3

    const/4 v1, 0x0

    const-string v0, "#008 Must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/r;->j6(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/U;->FH:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/U;->K3()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/U;->DW:Lcom/google/android/gms/internal/ads/ia;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/ia;->Vq()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/U;->DW:Lcom/google/android/gms/internal/ads/ia;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/ia;->k4()V

    :cond_1
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/U;->DW:Lcom/google/android/gms/internal/ads/ia;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/U;->j6:Lcom/google/android/gms/internal/ads/Mo;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/U;->FH:Z

    goto :goto_0
.end method

.method public final getVideoController()Lcom/google/android/gms/internal/ads/kI;
    .registers 3

    const/4 v0, 0x0

    const-string v1, "#008 Must be called on the main UI thread."

    invoke-static {v1}, Lcom/google/android/gms/common/internal/r;->j6(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/U;->FH:Z

    if-eqz v1, :cond_1

    const-string v1, "Instream ad is destroyed already."

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/jm;->j6(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/U;->j6:Lcom/google/android/gms/internal/ads/Mo;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/Mo;->yS()Lcom/google/android/gms/internal/ads/bp;

    move-result-object v0

    goto :goto_0
.end method

.method public final j6(Labcd/ox;Lcom/google/android/gms/internal/ads/ac;)V
    .registers 7

    const/4 v1, 0x1

    const/4 v3, -0x1

    const-string v0, "#008 Must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/r;->j6(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/U;->FH:Z

    if-eqz v0, :cond_0

    const-string v0, "Instream ad is destroyed already."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/jm;->j6(Ljava/lang/String;)V

    const/4 v0, 0x2

    invoke-static {p2, v0}, Lcom/google/android/gms/internal/ads/U;->j6(Lcom/google/android/gms/internal/ads/ac;I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/U;->j6:Lcom/google/android/gms/internal/ads/Mo;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/Mo;->yS()Lcom/google/android/gms/internal/ads/bp;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "Instream internal error: can not get video controller."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/jm;->j6(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {p2, v0}, Lcom/google/android/gms/internal/ads/U;->j6(Lcom/google/android/gms/internal/ads/ac;I)V

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/U;->Hw:Z

    if-eqz v0, :cond_2

    const-string v0, "Instream ad should not be used again."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/jm;->j6(Ljava/lang/String;)V

    invoke-static {p2, v1}, Lcom/google/android/gms/internal/ads/U;->j6(Lcom/google/android/gms/internal/ads/ac;I)V

    goto :goto_0

    :cond_2
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/U;->Hw:Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/U;->K3()V

    invoke-static {p1}, Labcd/px;->j6(Labcd/ox;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/U;->j6:Lcom/google/android/gms/internal/ads/Mo;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/Mo;->getView()Landroid/view/View;

    move-result-object v1

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->P8()Lcom/google/android/gms/internal/ads/Zm;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/U;->j6:Lcom/google/android/gms/internal/ads/Mo;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/Mo;->getView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/ads/Zm;->j6(Landroid/view/View;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->P8()Lcom/google/android/gms/internal/ads/Zm;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/U;->j6:Lcom/google/android/gms/internal/ads/Mo;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/Mo;->getView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/ads/Zm;->j6(Landroid/view/View;Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/U;->OM()V

    :try_start_0
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/ac;->oh()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/ia;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/U;->DW:Lcom/google/android/gms/internal/ads/ia;

    return-void
.end method

.method public final onGlobalLayout()V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/U;->OM()V

    return-void
.end method

.method public final onScrollChanged()V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/U;->OM()V

    return-void
.end method

.method public final pn()Lcom/google/android/gms/internal/ads/P;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public final vJ()Ljava/lang/String;
    .registers 2

    const-string v0, ""

    return-object v0
.end method

.method public final x6()Ljava/lang/String;
    .registers 2

    const-string v0, ""

    return-object v0
.end method
