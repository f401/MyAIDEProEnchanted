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
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p4

    if-eqz p4, :cond_d

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    :cond_d
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/vn;->j6:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/vn;->FH:Landroid/view/ViewGroup;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/vn;->DW:Lcom/google/android/gms/internal/ads/Dn;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/vn;->Hw:Lcom/google/android/gms/internal/ads/pn;

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

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/pn;->u7()V

    :cond_c
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

    if-eqz v0, :cond_16

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/pn;->gn()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vn;->FH:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/vn;->Hw:Lcom/google/android/gms/internal/ads/pn;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/vn;->Hw:Lcom/google/android/gms/internal/ads/pn;

    :cond_16
    return-void
.end method

.method public final j6(IIII)V
    .registers 6

    const-string v0, "The underlay may only be modified from the UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/r;->j6(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vn;->Hw:Lcom/google/android/gms/internal/ads/pn;

    if-eqz v0, :cond_c

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/pn;->j6(IIII)V

    :cond_c
    return-void
.end method

.method public final j6(IIIIIZLcom/google/android/gms/internal/ads/Cn;)V
    .registers 21

    move-object v0, p0

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/vn;->Hw:Lcom/google/android/gms/internal/ads/pn;

    if-eqz v1, :cond_6

    return-void

    :cond_6
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/vn;->DW:Lcom/google/android/gms/internal/ads/Dn;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/Dn;->QX()Lcom/google/android/gms/internal/ads/B;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/B;->j6()Lcom/google/android/gms/internal/ads/D;

    move-result-object v1

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/vn;->DW:Lcom/google/android/gms/internal/ads/Dn;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/Dn;->Mz()Lcom/google/android/gms/internal/ads/A;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "vpr2"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/ads/v;->j6(Lcom/google/android/gms/internal/ads/D;Lcom/google/android/gms/internal/ads/A;[Ljava/lang/String;)Z

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/vn;->j6:Landroid/content/Context;

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/vn;->DW:Lcom/google/android/gms/internal/ads/Dn;

    new-instance v1, Lcom/google/android/gms/internal/ads/pn;

    invoke-interface {v8}, Lcom/google/android/gms/internal/ads/Dn;->QX()Lcom/google/android/gms/internal/ads/B;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/B;->j6()Lcom/google/android/gms/internal/ads/D;

    move-result-object v11

    move-object v6, v1

    move/from16 v9, p5

    move/from16 v10, p6

    move-object/from16 v12, p7

    invoke-direct/range {v6 .. v12}, Lcom/google/android/gms/internal/ads/pn;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/Dn;IZLcom/google/android/gms/internal/ads/D;Lcom/google/android/gms/internal/ads/Cn;)V

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/vn;->Hw:Lcom/google/android/gms/internal/ads/pn;

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/vn;->FH:Landroid/view/ViewGroup;

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v3, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v1, v5, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/vn;->Hw:Lcom/google/android/gms/internal/ads/pn;

    move v2, p1

    move v3, p2

    move/from16 v4, p3

    move/from16 v6, p4

    invoke-virtual {v1, p1, p2, v4, v6}, Lcom/google/android/gms/internal/ads/pn;->j6(IIII)V

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/vn;->DW:Lcom/google/android/gms/internal/ads/Dn;

    invoke-interface {v1, v5}, Lcom/google/android/gms/internal/ads/Dn;->j6(Z)V

    return-void
.end method
