.class public final Lcom/google/android/gms/internal/ads/zg;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zh;
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static j6(Landroid/content/Context;Lcom/google/android/gms/ads/internal/a;Lcom/google/android/gms/internal/ads/lk;Lcom/google/android/gms/internal/ads/ix;Lcom/google/android/gms/internal/ads/Mo;Lcom/google/android/gms/internal/ads/Ge;Lcom/google/android/gms/internal/ads/Ag;Lcom/google/android/gms/internal/ads/D;)Lcom/google/android/gms/internal/ads/hl;
    .registers 16

    iget-object v2, p2, Lcom/google/android/gms/internal/ads/lk;->DW:Lcom/google/android/gms/internal/ads/zzasm;

    iget-boolean v4, v2, Lcom/google/android/gms/internal/ads/zzasm;->u7:Z

    if-eqz v4, :cond_13

    new-instance v7, Lcom/google/android/gms/internal/ads/Fg;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p2

    move-object v3, p5

    move-object v4, p6

    move-object v5, p7

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/Fg;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/lk;Lcom/google/android/gms/internal/ads/Ge;Lcom/google/android/gms/internal/ads/Ag;Lcom/google/android/gms/internal/ads/D;Lcom/google/android/gms/internal/ads/Mo;)V

    goto :goto_5c

    :cond_13
    iget-boolean v4, v2, Lcom/google/android/gms/internal/ads/zzasm;->U2:Z

    if-nez v4, :cond_40

    instance-of v4, p1, Lcom/google/android/gms/ads/internal/C;

    if-eqz v4, :cond_1c

    goto :goto_40

    :cond_1c
    invoke-static {}, Lcom/google/android/gms/common/util/o;->Zo()Z

    move-result v0

    if-eqz v0, :cond_3a

    invoke-static {}, Lcom/google/android/gms/common/util/o;->gn()Z

    move-result v0

    if-nez v0, :cond_3a

    if-eqz p4, :cond_3a

    invoke-interface {p4}, Lcom/google/android/gms/internal/ads/Mo;->gW()Lcom/google/android/gms/internal/ads/yp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/yp;->v5()Z

    move-result v0

    if-eqz v0, :cond_3a

    new-instance v7, Lcom/google/android/gms/internal/ads/Eg;

    invoke-direct {v7, p0, p2, p4, p6}, Lcom/google/android/gms/internal/ads/Eg;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/lk;Lcom/google/android/gms/internal/ads/Mo;Lcom/google/android/gms/internal/ads/Ag;)V

    goto :goto_5c

    :cond_3a
    new-instance v7, Lcom/google/android/gms/internal/ads/Bg;

    invoke-direct {v7, p0, p2, p4, p6}, Lcom/google/android/gms/internal/ads/Bg;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/lk;Lcom/google/android/gms/internal/ads/Mo;Lcom/google/android/gms/internal/ads/Ag;)V

    goto :goto_5c

    :cond_40
    :goto_40
    iget-boolean v2, v2, Lcom/google/android/gms/internal/ads/zzasm;->U2:Z

    if-eqz v2, :cond_57

    instance-of v2, p1, Lcom/google/android/gms/ads/internal/C;

    if-eqz v2, :cond_57

    new-instance v7, Lcom/google/android/gms/internal/ads/Hg;

    move-object v2, p1

    check-cast v2, Lcom/google/android/gms/ads/internal/C;

    move-object v0, v7

    move-object v1, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p6

    move-object v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/Hg;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/C;Lcom/google/android/gms/internal/ads/lk;Lcom/google/android/gms/internal/ads/ix;Lcom/google/android/gms/internal/ads/Ag;Lcom/google/android/gms/internal/ads/D;)V

    goto :goto_5c

    :cond_57
    new-instance v7, Lcom/google/android/gms/internal/ads/Cg;

    invoke-direct {v7, p2, p6}, Lcom/google/android/gms/internal/ads/Cg;-><init>(Lcom/google/android/gms/internal/ads/lk;Lcom/google/android/gms/internal/ads/Ag;)V

    :goto_5c
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const-string v2, "AdRenderer: "

    if-eqz v1, :cond_75

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_7a

    :cond_75
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_7a
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;)V

    invoke-interface {v7}, Lcom/google/android/gms/internal/ads/hl;->FH()Ljava/lang/Object;

    return-object v7
.end method
