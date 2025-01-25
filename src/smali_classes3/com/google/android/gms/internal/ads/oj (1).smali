.class public final Lcom/google/android/gms/internal/ads/oj;
.super Lcom/google/android/gms/internal/ads/kj;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zh;
.end annotation


# instance fields
.field private j6:Labcd/hx;


# direct methods
.method public constructor <init>(Labcd/hx;)V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/kj;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/oj;->j6:Labcd/hx;

    return-void
.end method


# virtual methods
.method public final DW(I)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/oj;->j6:Labcd/hx;

    if-eqz v0, :cond_7

    invoke-interface {v0, p1}, Labcd/hx;->DW(I)V

    :cond_7
    return-void
.end method

.method public final Mz()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/oj;->j6:Labcd/hx;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Labcd/hx;->Mz()V

    :cond_7
    return-void
.end method

.method public final Qq()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/oj;->j6:Labcd/hx;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Labcd/hx;->Qq()V

    :cond_7
    return-void
.end method

.method public final ca()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/oj;->j6:Labcd/hx;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Labcd/hx;->ca()V

    :cond_7
    return-void
.end method

.method public final g3()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/oj;->j6:Labcd/hx;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Labcd/hx;->g3()V

    :cond_7
    return-void
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/_i;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/oj;->j6:Labcd/hx;

    if-eqz v0, :cond_c

    new-instance v1, Lcom/google/android/gms/internal/ads/mj;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/mj;-><init>(Lcom/google/android/gms/internal/ads/_i;)V

    invoke-interface {v0, v1}, Labcd/hx;->j6(Labcd/gx;)V

    :cond_c
    return-void
.end method

.method public final jw()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/oj;->j6:Labcd/hx;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Labcd/hx;->jw()V

    :cond_7
    return-void
.end method

.method public final x9()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/oj;->j6:Labcd/hx;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Labcd/hx;->x9()V

    :cond_7
    return-void
.end method
