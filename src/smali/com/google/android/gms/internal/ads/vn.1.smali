.class public final Lcom/google/android/gms/internal/ads/vn;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zh;
.end annotation


# instance fields
.field private final DW:Lcom/google/android/gms/internal/ads/Dn;

.field private final FH:Landroid/view/ViewGroup;

.field private Hw:Lcom/google/android/gms/internal/ads/pn;

.field private final j6:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/google/android/gms/internal/ads/Dn;Lcom/google/android/gms/internal/ads/pn;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/vn;->j6:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/vn;->FH:Landroid/view/ViewGroup;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/vn;->DW:Lcom/google/android/gms/internal/ads/Dn;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/vn;->Hw:Lcom/google/android/gms/internal/ads/pn;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/google/android/gms/internal/ads/Mo;)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/gms/internal/ads/vn;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/google/android/gms/internal/ads/Dn;Lcom/google/android/gms/internal/ads/pn;)V

    return-void
.end method


# virtual methods
.method public final DW()V
    .registers 2

    const-string v0, "onPause must be called from the UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/r;->j6(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vn;->Hw:Lcom/google/android/gms/internal/ads/pn;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/pn;->u7()V

    :cond_0
    return-void
.end method

.method public final FH()Lcom/google/android/gms/internal/ads/pn;
    .registers 2

    const-string v0, "getAdVideoUnderlay must be called from the UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/r;->j6(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vn;->Hw:Lcom/google/android/gms/internal/ads/pn;

    return-object v0
.end method

.method public final j6()V
    .registers 3

    const-string v0, "onDestroy must be called from the UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/r;->j6(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vn;->Hw:Lcom/google/android/gms/internal/ads/pn;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/pn;->gn()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vn;->FH:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/vn;->Hw:Lcom/google/android/gms/internal/ads/pn;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/vn;->Hw:Lcom/google/android/gms/internal/ads/pn;

    :cond_0
    return-void
.end method

.method public final j6(IIII)V
    .registers 6

    const-string v0, "The underlay may only be modified from the UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/r;->j6(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vn;->Hw:Lcom/google/android/gms/internal/ads/pn;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/pn;->j6(IIII)V

    :cond_0
    return-void
.end method

.method public final j6(IIIIIZLcom/google/android/gms/internal/ads/Cn;)V
    .registers 15

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vn;->Hw:Lcom/google/android/gms/internal/ads/pn;

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vn;->DW:Lcom/google/android/gms/internal/ads/Dn;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/Dn;->QX()Lcom/google/android/gms/internal/ads/B;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/B;->j6()Lcom/google/android/gms/internal/ads/D;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/vn;->DW:Lcom/google/android/gms/internal/ads/Dn;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/Dn;->Mz()Lcom/google/android/gms/internal/ads/A;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "vpr2"

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/v;->j6(Lcom/google/android/gms/internal/ads/D;Lcom/google/android/gms/internal/ads/A;[Ljava/lang/String;)Z

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/vn;->j6:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/vn;->DW:Lcom/google/android/gms/internal/ads/Dn;

    new-instance v0, Lcom/google/android/gms/internal/ads/pn;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/Dn;->QX()Lcom/google/android/gms/internal/ads/B;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/B;->j6()Lcom/google/android/gms/internal/ads/D;

    move-result-object v5

    move v3, p5

    move v4, p6

    move-object v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/pn;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/Dn;IZLcom/google/android/gms/internal/ads/D;Lcom/google/android/gms/internal/ads/Cn;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/vn;->Hw:Lcom/google/android/gms/internal/ads/pn;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vn;->FH:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/vn;->Hw:Lcom/google/android/gms/internal/ads/pn;

    const/4 v2, 0x0

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x1

    invoke-direct {v3, v4, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vn;->Hw:Lcom/google/android/gms/internal/ads/pn;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/pn;->j6(IIII)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vn;->DW:Lcom/google/android/gms/internal/ads/Dn;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/Dn;->j6(Z)V

    goto :goto_0
.end method
