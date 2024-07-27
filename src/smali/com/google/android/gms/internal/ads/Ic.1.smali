.class final Lcom/google/android/gms/internal/ads/Ic;
.super Lcom/google/android/gms/internal/ads/yH;


# instance fields
.field private final j6:Lcom/google/android/gms/internal/ads/xH;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/xH;)V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/yH;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Ic;->j6:Lcom/google/android/gms/internal/ads/xH;

    return-void
.end method


# virtual methods
.method public final Cz()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ic;->j6:Lcom/google/android/gms/internal/ads/xH;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/xH;->Cz()V

    return-void
.end method

.method public final Gj()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ic;->j6:Lcom/google/android/gms/internal/ads/xH;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/xH;->Gj()V

    return-void
.end method

.method public final J0()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ic;->j6:Lcom/google/android/gms/internal/ads/xH;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/xH;->J0()V

    return-void
.end method

.method public final QO()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ic;->j6:Lcom/google/android/gms/internal/ads/xH;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/xH;->QO()V

    return-void
.end method

.method public final Zo(I)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ic;->j6:Lcom/google/android/gms/internal/ads/xH;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/xH;->Zo(I)V

    return-void
.end method

.method public final a5()V
    .registers 5

    invoke-static {}, Lcom/google/android/gms/internal/ads/Rc;->j6()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/google/android/gms/internal/ads/p;->Bx:Lcom/google/android/gms/internal/ads/e;

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->v5()Lcom/google/android/gms/internal/ads/m;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/m;->j6(Lcom/google/android/gms/internal/ads/e;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sget-object v0, Lcom/google/android/gms/internal/ads/p;->oa:Lcom/google/android/gms/internal/ads/e;

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->v5()Lcom/google/android/gms/internal/ads/m;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/m;->j6(Lcom/google/android/gms/internal/ads/e;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v1, :cond_0

    if-gez v0, :cond_2

    :cond_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->j3()Lcom/google/android/gms/internal/ads/Kc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Kc;->j6()V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ic;->j6:Lcom/google/android/gms/internal/ads/xH;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/xH;->a5()V

    return-void

    :cond_2
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v2, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/2addr v0, v1

    int-to-long v0, v0

    sget-object v2, Lcom/google/android/gms/internal/ads/Nk;->j6:Landroid/os/Handler;

    sget-object v3, Lcom/google/android/gms/internal/ads/Jc;->j6:Ljava/lang/Runnable;

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public final pN()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ic;->j6:Lcom/google/android/gms/internal/ads/xH;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/xH;->pN()V

    return-void
.end method
