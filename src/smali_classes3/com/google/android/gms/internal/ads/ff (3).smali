.class public final Lcom/google/android/gms/internal/ads/ff;
.super Lcom/google/android/gms/internal/ads/Te;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zh;
.end annotation


# instance fields
.field private final j6:Lcom/google/android/gms/ads/mediation/g;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/mediation/g;)V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/Te;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ff;->j6:Lcom/google/android/gms/ads/mediation/g;

    return-void
.end method


# virtual methods
.method public final BT()Labcd/ox;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public final CU()Lcom/google/android/gms/internal/ads/Ga;
    .registers 7

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ff;->j6:Lcom/google/android/gms/ads/mediation/g;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/mediation/g;->we()Lcom/google/android/gms/ads/formats/a$b;

    move-result-object v0

    if-eqz v0, :cond_1a

    new-instance v1, Lcom/google/android/gms/internal/ads/V;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/formats/a$b;->j6()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/gms/ads/formats/a$b;->FH()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/android/gms/ads/formats/a$b;->DW()D

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/google/android/gms/internal/ads/V;-><init>(Landroid/graphics/drawable/Drawable;Landroid/net/Uri;D)V

    return-object v1

    :cond_1a
    const/4 v0, 0x0

    return-object v0
.end method

.method public final DW(Labcd/ox;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ff;->j6:Lcom/google/android/gms/ads/mediation/g;

    invoke-static {p1}, Labcd/px;->j6(Labcd/ox;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/mediation/f;->j6(Landroid/view/View;)V

    return-void
.end method

.method public final EQ()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ff;->j6:Lcom/google/android/gms/ads/mediation/g;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/mediation/f;->VH()V

    return-void
.end method

.method public final FH(Labcd/ox;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ff;->j6:Lcom/google/android/gms/ads/mediation/g;

    invoke-static {p1}, Labcd/px;->j6(Labcd/ox;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/mediation/f;->FH(Landroid/view/View;)V

    return-void
.end method

.method public final FN()Labcd/ox;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ff;->j6:Lcom/google/android/gms/ads/mediation/g;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/mediation/f;->j6()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_a

    const/4 v0, 0x0

    return-object v0

    :cond_a
    invoke-static {v0}, Labcd/px;->j6(Ljava/lang/Object;)Labcd/ox;

    move-result-object v0

    return-object v0
.end method

.method public final Hw()Ljava/util/List;
    .registers 9

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ff;->j6:Lcom/google/android/gms/ads/mediation/g;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/mediation/g;->J0()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_33

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_32

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/ads/formats/a$b;

    new-instance v3, Lcom/google/android/gms/internal/ads/V;

    invoke-virtual {v2}, Lcom/google/android/gms/ads/formats/a$b;->j6()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v2}, Lcom/google/android/gms/ads/formats/a$b;->FH()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v2}, Lcom/google/android/gms/ads/formats/a$b;->DW()D

    move-result-wide v6

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/google/android/gms/internal/ads/V;-><init>(Landroid/graphics/drawable/Drawable;Landroid/net/Uri;D)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_11

    :cond_32
    return-object v1

    :cond_33
    const/4 v0, 0x0

    return-object v0
.end method

.method public final Zo(Labcd/ox;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ff;->j6:Lcom/google/android/gms/ads/mediation/g;

    invoke-static {p1}, Labcd/px;->j6(Labcd/ox;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/mediation/f;->DW(Landroid/view/View;)V

    return-void
.end method

.method public final a8()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ff;->j6:Lcom/google/android/gms/ads/mediation/g;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/mediation/g;->EQ()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final aq()Labcd/ox;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ff;->j6:Lcom/google/android/gms/ads/mediation/g;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/mediation/f;->gn()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_a

    const/4 v0, 0x0

    return-object v0

    :cond_a
    invoke-static {v0}, Labcd/px;->j6(Ljava/lang/Object;)Labcd/ox;

    move-result-object v0

    return-object v0
.end method

.method public final eU()Z
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ff;->j6:Lcom/google/android/gms/ads/mediation/g;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/mediation/f;->FH()Z

    move-result v0

    return v0
.end method

.method public final getExtras()Landroid/os/Bundle;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ff;->j6:Lcom/google/android/gms/ads/mediation/g;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/mediation/f;->DW()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public final getVideoController()Lcom/google/android/gms/internal/ads/kI;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ff;->j6:Lcom/google/android/gms/ads/mediation/g;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/mediation/f;->v5()Lcom/google/android/gms/ads/h;

    move-result-object v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ff;->j6:Lcom/google/android/gms/ads/mediation/g;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/mediation/f;->v5()Lcom/google/android/gms/ads/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/h;->j6()Lcom/google/android/gms/internal/ads/kI;

    move-result-object v0

    return-object v0

    :cond_13
    const/4 v0, 0x0

    return-object v0
.end method

.method public final gn()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ff;->j6:Lcom/google/android/gms/ads/mediation/g;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/mediation/g;->tp()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final j6(Labcd/ox;Labcd/ox;Labcd/ox;)V
    .registers 5

    invoke-static {p2}, Labcd/px;->j6(Labcd/ox;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/HashMap;

    invoke-static {p3}, Labcd/px;->j6(Labcd/ox;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/HashMap;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ff;->j6:Lcom/google/android/gms/ads/mediation/g;

    invoke-static {p1}, Labcd/px;->j6(Labcd/ox;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/ads/mediation/f;->j6(Landroid/view/View;Ljava/util/Map;Ljava/util/Map;)V

    return-void
.end method

.method public final kQ()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ff;->j6:Lcom/google/android/gms/ads/mediation/g;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/mediation/g;->J8()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final q7()Z
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ff;->j6:Lcom/google/android/gms/ads/mediation/g;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/mediation/f;->Hw()Z

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

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ff;->j6:Lcom/google/android/gms/ads/mediation/g;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/mediation/g;->u7()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final wc()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ff;->j6:Lcom/google/android/gms/ads/mediation/g;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/mediation/g;->QX()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final yO()D
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ff;->j6:Lcom/google/android/gms/ads/mediation/g;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/mediation/g;->Ws()D

    move-result-wide v0

    return-wide v0
.end method
