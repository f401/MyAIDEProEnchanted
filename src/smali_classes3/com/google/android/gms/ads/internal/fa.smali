.class public abstract Lcom/google/android/gms/ads/internal/fa;
.super Lcom/google/android/gms/ads/internal/aa;

# interfaces
.implements Lcom/google/android/gms/ads/internal/g;
.implements Lcom/google/android/gms/internal/ads/ag;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zh;
.end annotation


# instance fields
.field private Ws:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzwf;Ljava/lang/String;Lcom/google/android/gms/internal/ads/Ge;Lcom/google/android/gms/internal/ads/zzbbi;Lcom/google/android/gms/ads/internal/ta;)V
    .registers 7

    invoke-direct/range {p0 .. p6}, Lcom/google/android/gms/ads/internal/aa;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzwf;Ljava/lang/String;Lcom/google/android/gms/internal/ads/Ge;Lcom/google/android/gms/internal/ads/zzbbi;Lcom/google/android/gms/ads/internal/ta;)V

    return-void
.end method


# virtual methods
.method public final C()V
    .registers 1

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/aa;->J0()V

    return-void
.end method

.method public final DW(Landroid/view/View;)V
    .registers 12

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iput-object p1, v0, Lcom/google/android/gms/ads/internal/Y;->sh:Landroid/view/View;

    new-instance p1, Lcom/google/android/gms/internal/ads/kk;

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/Y;->EQ:Lcom/google/android/gms/internal/ads/lk;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v1, p1

    invoke-direct/range {v1 .. v9}, Lcom/google/android/gms/internal/ads/kk;-><init>(Lcom/google/android/gms/internal/ads/lk;Lcom/google/android/gms/internal/ads/Mo;Lcom/google/android/gms/internal/ads/pe;Lcom/google/android/gms/internal/ads/Je;Ljava/lang/String;Lcom/google/android/gms/internal/ads/se;Lcom/google/android/gms/internal/ads/ka;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/google/android/gms/ads/internal/aa;->j6(Lcom/google/android/gms/internal/ads/kk;)V

    return-void
.end method

.method final DW(Lcom/google/android/gms/internal/ads/Mo;)V
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v1, v0, Lcom/google/android/gms/ads/internal/Y;->tp:Lcom/google/android/gms/internal/ads/kk;

    if-eqz v1, :cond_15

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/a;->gn:Lcom/google/android/gms/internal/ads/rE;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/Y;->u7:Lcom/google/android/gms/internal/ads/zzwf;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/Mo;->getView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v0, v1, v3, p1}, Lcom/google/android/gms/internal/ads/rE;->j6(Lcom/google/android/gms/internal/ads/zzwf;Lcom/google/android/gms/internal/ads/kk;Landroid/view/View;Lcom/google/android/gms/internal/ads/Mo;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/ads/internal/fa;->Ws:Z

    return-void

    :cond_15
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/ads/internal/fa;->Ws:Z

    const-string p1, "Request to enable ActiveView before adState is available."

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;)V

    return-void
.end method

.method public final ME()V
    .registers 1

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/a;->K3()V

    return-void
.end method

.method public final dH()V
    .registers 1

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/aa;->EQ()V

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/a;->GK()V

    return-void
.end method

.method protected g0()V
    .registers 3

    invoke-super {p0}, Lcom/google/android/gms/ads/internal/a;->g0()V

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/fa;->Ws:Z

    if-eqz v0, :cond_22

    sget-object v0, Lcom/google/android/gms/internal/ads/p;->pn:Lcom/google/android/gms/internal/ads/e;

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->v5()Lcom/google/android/gms/internal/ads/m;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/m;->j6(Lcom/google/android/gms/internal/ads/e;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/Y;->tp:Lcom/google/android/gms/internal/ads/kk;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/kk;->DW:Lcom/google/android/gms/internal/ads/Mo;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/internal/fa;->DW(Lcom/google/android/gms/internal/ads/Mo;)V

    :cond_22
    return-void
.end method

.method protected j6(Lcom/google/android/gms/internal/ads/lk;Lcom/google/android/gms/ads/internal/ua;Lcom/google/android/gms/internal/ads/Wj;)Lcom/google/android/gms/internal/ads/Mo;
    .registers 18

    move-object v11, p0

    move-object v12, p1

    iget-object v0, v11, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/Y;->Zo:Lcom/google/android/gms/ads/internal/Z;

    invoke-virtual {v0}, Landroid/widget/ViewSwitcher;->getNextView()Landroid/view/View;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/gms/internal/ads/Mo;

    if-eqz v1, :cond_14

    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/internal/ads/Mo;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/Mo;->destroy()V

    :cond_14
    if-eqz v0, :cond_1d

    iget-object v1, v11, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/Y;->Zo:Lcom/google/android/gms/ads/internal/Z;

    invoke-virtual {v1, v0}, Landroid/widget/ViewSwitcher;->removeView(Landroid/view/View;)V

    :cond_1d
    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->Zo()Lcom/google/android/gms/internal/ads/So;

    iget-object v0, v11, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v1, v0, Lcom/google/android/gms/ads/internal/Y;->FH:Landroid/content/Context;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/Y;->u7:Lcom/google/android/gms/internal/ads/zzwf;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/yp;->j6(Lcom/google/android/gms/internal/ads/zzwf;)Lcom/google/android/gms/internal/ads/yp;

    move-result-object v2

    iget-object v0, v11, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v3, v0, Lcom/google/android/gms/ads/internal/Y;->u7:Lcom/google/android/gms/internal/ads/zzwf;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzwf;->j6:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v6, v0, Lcom/google/android/gms/ads/internal/Y;->Hw:Lcom/google/android/gms/internal/ads/ix;

    iget-object v7, v0, Lcom/google/android/gms/ads/internal/Y;->v5:Lcom/google/android/gms/internal/ads/zzbbi;

    iget-object v8, v11, Lcom/google/android/gms/ads/internal/a;->j6:Lcom/google/android/gms/internal/ads/D;

    iget-object v9, v11, Lcom/google/android/gms/ads/internal/a;->we:Lcom/google/android/gms/ads/internal/ta;

    iget-object v10, v12, Lcom/google/android/gms/internal/ads/lk;->u7:Lcom/google/android/gms/internal/ads/YF;

    move-object v0, v1

    move-object v1, v2

    move-object v2, v3

    move v3, v4

    move v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    move-object v8, p0

    invoke-static/range {v0 .. v10}, Lcom/google/android/gms/internal/ads/So;->j6(Landroid/content/Context;Lcom/google/android/gms/internal/ads/yp;Ljava/lang/String;ZZLcom/google/android/gms/internal/ads/ix;Lcom/google/android/gms/internal/ads/zzbbi;Lcom/google/android/gms/internal/ads/D;Lcom/google/android/gms/ads/internal/P;Lcom/google/android/gms/ads/internal/ta;Lcom/google/android/gms/internal/ads/YF;)Lcom/google/android/gms/internal/ads/Mo;

    move-result-object v13

    iget-object v0, v11, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/Y;->u7:Lcom/google/android/gms/internal/ads/zzwf;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzwf;->VH:[Lcom/google/android/gms/internal/ads/zzwf;

    if-nez v0, :cond_58

    invoke-interface {v13}, Lcom/google/android/gms/internal/ads/Mo;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/internal/a;->FH(Landroid/view/View;)V

    :cond_58
    invoke-interface {v13}, Lcom/google/android/gms/internal/ads/Mo;->ei()Lcom/google/android/gms/internal/ads/tp;

    move-result-object v0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p0

    move-object v3, p0

    move-object v4, p0

    move-object v5, p0

    move-object/from16 v8, p2

    move-object v9, p0

    move-object/from16 v10, p3

    invoke-interface/range {v0 .. v10}, Lcom/google/android/gms/internal/ads/tp;->j6(Lcom/google/android/gms/internal/ads/WG;Lcom/google/android/gms/ads/internal/gmsg/i;Lcom/google/android/gms/ads/internal/overlay/m;Lcom/google/android/gms/ads/internal/gmsg/k;Lcom/google/android/gms/ads/internal/overlay/s;ZLcom/google/android/gms/ads/internal/gmsg/F;Lcom/google/android/gms/ads/internal/ua;Lcom/google/android/gms/internal/ads/ag;Lcom/google/android/gms/internal/ads/Wj;)V

    invoke-virtual {p0, v13}, Lcom/google/android/gms/ads/internal/fa;->j6(Lcom/google/android/gms/internal/ads/Mo;)V

    iget-object v0, v12, Lcom/google/android/gms/internal/ads/lk;->j6:Lcom/google/android/gms/internal/ads/zzasi;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzasi;->a8:Ljava/lang/String;

    invoke-interface {v13, v0}, Lcom/google/android/gms/internal/ads/Mo;->j6(Ljava/lang/String;)V

    return-object v13
.end method

.method public final j6(IIII)V
    .registers 5

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/a;->Qs()V

    return-void
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/J;)V
    .registers 3

    const-string v0, "setOnCustomRenderedAdLoadedListener must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/r;->j6(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iput-object p1, v0, Lcom/google/android/gms/ads/internal/Y;->P8:Lcom/google/android/gms/internal/ads/J;

    return-void
.end method

.method protected final j6(Lcom/google/android/gms/internal/ads/Mo;)V
    .registers 4

    new-instance v0, Lcom/google/android/gms/ads/internal/ga;

    invoke-direct {v0, p0}, Lcom/google/android/gms/ads/internal/ga;-><init>(Lcom/google/android/gms/ads/internal/fa;)V

    const-string v1, "/trackActiveViewUnit"

    invoke-interface {p1, v1, v0}, Lcom/google/android/gms/internal/ads/Mo;->j6(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/B;)V

    return-void
.end method

.method protected j6(Lcom/google/android/gms/internal/ads/lk;Lcom/google/android/gms/internal/ads/D;)V
    .registers 13

    iget v0, p1, Lcom/google/android/gms/internal/ads/lk;->v5:I

    const/4 v1, -0x2

    if-eq v0, v1, :cond_10

    sget-object p2, Lcom/google/android/gms/internal/ads/Nk;->j6:Landroid/os/Handler;

    new-instance v0, Lcom/google/android/gms/ads/internal/ha;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/ads/internal/ha;-><init>(Lcom/google/android/gms/ads/internal/fa;Lcom/google/android/gms/internal/ads/lk;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_10
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/lk;->Hw:Lcom/google/android/gms/internal/ads/zzwf;

    if-eqz v0, :cond_18

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iput-object v0, v1, Lcom/google/android/gms/ads/internal/Y;->u7:Lcom/google/android/gms/internal/ads/zzwf;

    :cond_18
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/lk;->DW:Lcom/google/android/gms/internal/ads/zzasm;

    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzasm;->u7:Z

    if-eqz v1, :cond_3e

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzasm;->vy:Z

    if-nez v0, :cond_3e

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    const/4 v1, 0x0

    iput v1, v0, Lcom/google/android/gms/ads/internal/Y;->cb:I

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->Hw()Lcom/google/android/gms/internal/ads/zg;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v2, v1, Lcom/google/android/gms/ads/internal/Y;->FH:Landroid/content/Context;

    iget-object v5, v1, Lcom/google/android/gms/ads/internal/Y;->Hw:Lcom/google/android/gms/internal/ads/ix;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/google/android/gms/ads/internal/aa;->J0:Lcom/google/android/gms/internal/ads/Ge;

    move-object v3, p0

    move-object v4, p1

    move-object v8, p0

    move-object v9, p2

    invoke-static/range {v2 .. v9}, Lcom/google/android/gms/internal/ads/zg;->j6(Landroid/content/Context;Lcom/google/android/gms/ads/internal/a;Lcom/google/android/gms/internal/ads/lk;Lcom/google/android/gms/internal/ads/ix;Lcom/google/android/gms/internal/ads/Mo;Lcom/google/android/gms/internal/ads/Ge;Lcom/google/android/gms/internal/ads/Ag;Lcom/google/android/gms/internal/ads/D;)Lcom/google/android/gms/internal/ads/hl;

    move-result-object p1

    iput-object p1, v0, Lcom/google/android/gms/ads/internal/Y;->gn:Lcom/google/android/gms/internal/ads/hl;

    return-void

    :cond_3e
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->we:Lcom/google/android/gms/ads/internal/ta;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/ta;->FH:Lcom/google/android/gms/internal/ads/Xj;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v2, v1, Lcom/google/android/gms/ads/internal/Y;->FH:Landroid/content/Context;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/Y;->v5:Lcom/google/android/gms/internal/ads/zzbbi;

    iget-object v3, p1, Lcom/google/android/gms/internal/ads/lk;->DW:Lcom/google/android/gms/internal/ads/zzasm;

    invoke-interface {v0, v2, v1, v3}, Lcom/google/android/gms/internal/ads/Xj;->j6(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbbi;Lcom/google/android/gms/internal/ads/zzasm;)Lcom/google/android/gms/internal/ads/Wj;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/Nk;->j6:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/gms/ads/internal/ia;

    invoke-direct {v2, p0, p1, v0, p2}, Lcom/google/android/gms/ads/internal/ia;-><init>(Lcom/google/android/gms/ads/internal/fa;Lcom/google/android/gms/internal/ads/lk;Lcom/google/android/gms/internal/ads/Wj;Lcom/google/android/gms/internal/ads/D;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected j6(Lcom/google/android/gms/internal/ads/kk;Lcom/google/android/gms/internal/ads/kk;)Z
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/Y;->Hw()Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/Y;->Zo:Lcom/google/android/gms/ads/internal/Z;

    if-eqz v0, :cond_17

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/Z;->j6()Lcom/google/android/gms/internal/ads/zzazc;

    move-result-object v0

    iget-object v1, p2, Lcom/google/android/gms/internal/ads/kk;->P8:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzazc;->FH(Ljava/lang/String;)V

    :cond_17
    :try_start_17
    iget-object v0, p2, Lcom/google/android/gms/internal/ads/kk;->DW:Lcom/google/android/gms/internal/ads/Mo;

    if-eqz v0, :cond_42

    iget-boolean v0, p2, Lcom/google/android/gms/internal/ads/kk;->Ws:Z

    if-nez v0, :cond_42

    iget-boolean v0, p2, Lcom/google/android/gms/internal/ads/kk;->Sf:Z

    if-eqz v0, :cond_42

    iget-object v0, p2, Lcom/google/android/gms/internal/ads/kk;->j6:Lcom/google/android/gms/internal/ads/zzwb;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzwb;->FH:Landroid/os/Bundle;

    const-string v1, "sdk_less_server_data"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0
    :try_end_2d
    .catch Ljava/lang/RuntimeException; {:try_start_17 .. :try_end_2d} :catch_3c

    if-nez v0, :cond_42

    :try_start_2f
    iget-object v0, p2, Lcom/google/android/gms/internal/ads/kk;->DW:Lcom/google/android/gms/internal/ads/Mo;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/Mo;->lg()V
    :try_end_34
    .catchall {:try_start_2f .. :try_end_34} :catchall_35

    goto :goto_42

    :catchall_35
    move-exception v0

    :try_start_36
    const-string v0, "Could not render test Ad label."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Ek;->Zo(Ljava/lang/String;)V
    :try_end_3b
    .catch Ljava/lang/RuntimeException; {:try_start_36 .. :try_end_3b} :catch_3c

    goto :goto_42

    :catch_3c
    move-exception v0

    const-string v0, "Could not render test AdLabel."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Ek;->Zo(Ljava/lang/String;)V

    :cond_42
    :goto_42
    if-eqz p2, :cond_4d

    iget-object v0, p2, Lcom/google/android/gms/internal/ads/kk;->DW:Lcom/google/android/gms/internal/ads/Mo;

    if-eqz v0, :cond_4d

    iget-boolean v1, p2, Lcom/google/android/gms/internal/ads/kk;->I:Z

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/Mo;->FH(Z)V

    :cond_4d
    invoke-super {p0, p1, p2}, Lcom/google/android/gms/ads/internal/aa;->j6(Lcom/google/android/gms/internal/ads/kk;Lcom/google/android/gms/internal/ads/kk;)Z

    move-result p1

    return p1
.end method

.method protected final s0()Z
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/Y;->EQ:Lcom/google/android/gms/internal/ads/lk;

    if-eqz v0, :cond_10

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/lk;->DW:Lcom/google/android/gms/internal/ads/zzasm;

    if-eqz v0, :cond_10

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzasm;->ca:Z

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    return v0

    :cond_10
    const/4 v0, 0x0

    return v0
.end method
