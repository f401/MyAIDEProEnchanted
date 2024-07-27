.class public final Lcom/google/android/gms/internal/ads/of;
.super Lcom/google/android/gms/internal/ads/Ze;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zh;
.end annotation


# instance fields
.field private final j6:Lcom/google/android/gms/ads/mediation/m;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/mediation/m;)V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/Ze;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/of;->j6:Lcom/google/android/gms/ads/mediation/m;

    return-void
.end method


# virtual methods
.method public final BT()Labcd/ox;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/of;->j6:Lcom/google/android/gms/ads/mediation/m;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/mediation/m;->aM()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {v0}, Labcd/px;->j6(Ljava/lang/Object;)Labcd/ox;

    move-result-object v0

    goto :goto_0
.end method

.method public final CU()Lcom/google/android/gms/internal/ads/Ga;
    .registers 7

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/of;->j6:Lcom/google/android/gms/ads/mediation/m;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/mediation/m;->VH()Lcom/google/android/gms/ads/formats/a$b;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/ads/V;

    invoke-virtual {v1}, Lcom/google/android/gms/ads/formats/a$b;->j6()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1}, Lcom/google/android/gms/ads/formats/a$b;->FH()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1}, Lcom/google/android/gms/ads/formats/a$b;->DW()D

    move-result-wide v4

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/google/android/gms/internal/ads/V;-><init>(Landroid/graphics/drawable/Drawable;Landroid/net/Uri;D)V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final DW(Labcd/ox;)V
    .registers 4

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/of;->j6:Lcom/google/android/gms/ads/mediation/m;

    invoke-static {p1}, Labcd/px;->j6(Labcd/ox;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/ads/mediation/m;->j6(Landroid/view/View;)V

    return-void
.end method

.method public final EQ()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/of;->j6:Lcom/google/android/gms/ads/mediation/m;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/mediation/m;->QX()V

    return-void
.end method

.method public final FH(Labcd/ox;)V
    .registers 4

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/of;->j6:Lcom/google/android/gms/ads/mediation/m;

    invoke-static {p1}, Labcd/px;->j6(Labcd/ox;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/ads/mediation/m;->DW(Landroid/view/View;)V

    return-void
.end method

.method public final FN()Labcd/ox;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/of;->j6:Lcom/google/android/gms/ads/mediation/m;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/mediation/m;->j6()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {v0}, Labcd/px;->j6(Ljava/lang/Object;)Labcd/ox;

    move-result-object v0

    goto :goto_0
.end method

.method public final Hw()Ljava/util/List;
    .registers 9

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/of;->j6:Lcom/google/android/gms/ads/mediation/m;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/mediation/m;->gn()Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/ads/formats/a$b;

    new-instance v3, Lcom/google/android/gms/internal/ads/V;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/formats/a$b;->j6()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v0}, Lcom/google/android/gms/ads/formats/a$b;->FH()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v0}, Lcom/google/android/gms/ads/formats/a$b;->DW()D

    move-result-wide v6

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/google/android/gms/internal/ads/V;-><init>(Landroid/graphics/drawable/Drawable;Landroid/net/Uri;D)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public final a8()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/of;->j6:Lcom/google/android/gms/ads/mediation/m;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/mediation/m;->Zo()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final aq()Labcd/ox;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/of;->j6:Lcom/google/android/gms/ads/mediation/m;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/mediation/m;->XL()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {v0}, Labcd/px;->j6(Ljava/lang/Object;)Labcd/ox;

    move-result-object v0

    goto :goto_0
.end method

.method public final eU()Z
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/of;->j6:Lcom/google/android/gms/ads/mediation/m;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/mediation/m;->u7()Z

    move-result v0

    return v0
.end method

.method public final getExtras()Landroid/os/Bundle;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/of;->j6:Lcom/google/android/gms/ads/mediation/m;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/mediation/m;->v5()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public final getVideoController()Lcom/google/android/gms/internal/ads/kI;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/of;->j6:Lcom/google/android/gms/ads/mediation/m;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/mediation/m;->J8()Lcom/google/android/gms/ads/h;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/of;->j6:Lcom/google/android/gms/ads/mediation/m;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/mediation/m;->J8()Lcom/google/android/gms/ads/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/h;->j6()Lcom/google/android/gms/internal/ads/kI;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final gn()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/of;->j6:Lcom/google/android/gms/ads/mediation/m;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/mediation/m;->Hw()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final j6(Labcd/ox;Labcd/ox;Labcd/ox;)V
    .registers 8

    invoke-static {p2}, Labcd/px;->j6(Labcd/ox;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    invoke-static {p3}, Labcd/px;->j6(Labcd/ox;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/of;->j6:Lcom/google/android/gms/ads/mediation/m;

    invoke-static {p1}, Labcd/px;->j6(Labcd/ox;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v3, v2, v0, v1}, Lcom/google/android/gms/ads/mediation/m;->j6(Landroid/view/View;Ljava/util/Map;Ljava/util/Map;)V

    return-void
.end method

.method public final jJ()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/of;->j6:Lcom/google/android/gms/ads/mediation/m;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/mediation/m;->DW()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final kQ()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/of;->j6:Lcom/google/android/gms/ads/mediation/m;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/mediation/m;->EQ()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final q7()Z
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/of;->j6:Lcom/google/android/gms/ads/mediation/m;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/mediation/m;->tp()Z

    move-result v0

    return v0
.end method

.method public final rN()Lcom/google/android/gms/internal/ads/Ba;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public final ro()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/of;->j6:Lcom/google/android/gms/ads/mediation/m;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/mediation/m;->FH()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final wc()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/of;->j6:Lcom/google/android/gms/ads/mediation/m;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/mediation/m;->J0()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final yO()D
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/of;->j6:Lcom/google/android/gms/ads/mediation/m;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/mediation/m;->we()Ljava/lang/Double;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/of;->j6:Lcom/google/android/gms/ads/mediation/m;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/mediation/m;->we()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    goto :goto_0
.end method
