.class final Lcom/google/android/gms/internal/ads/Hc;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zh;
.end annotation


# instance fields
.field DW:Lcom/google/android/gms/internal/ads/NH;

.field FH:Lcom/google/android/gms/internal/ads/QH;

.field Hw:Lcom/google/android/gms/internal/ads/J;

.field Zo:Lcom/google/android/gms/internal/ads/jj;

.field j6:Lcom/google/android/gms/internal/ads/xH;

.field v5:Lcom/google/android/gms/internal/ads/tH;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method final j6(Lcom/google/android/gms/ads/internal/m;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Hc;->j6:Lcom/google/android/gms/internal/ads/xH;

    if-eqz v0, :cond_c

    new-instance v1, Lcom/google/android/gms/internal/ads/Ic;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/Ic;-><init>(Lcom/google/android/gms/internal/ads/xH;)V

    invoke-virtual {p1, v1}, Lcom/google/android/gms/ads/internal/a;->DW(Lcom/google/android/gms/internal/ads/xH;)V

    :cond_c
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Hc;->DW:Lcom/google/android/gms/internal/ads/NH;

    if-eqz v0, :cond_13

    invoke-virtual {p1, v0}, Lcom/google/android/gms/ads/internal/a;->j6(Lcom/google/android/gms/internal/ads/NH;)V

    :cond_13
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Hc;->FH:Lcom/google/android/gms/internal/ads/QH;

    if-eqz v0, :cond_1a

    invoke-virtual {p1, v0}, Lcom/google/android/gms/ads/internal/a;->j6(Lcom/google/android/gms/internal/ads/QH;)V

    :cond_1a
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Hc;->Hw:Lcom/google/android/gms/internal/ads/J;

    if-eqz v0, :cond_21

    invoke-virtual {p1, v0}, Lcom/google/android/gms/ads/internal/fa;->j6(Lcom/google/android/gms/internal/ads/J;)V

    :cond_21
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Hc;->v5:Lcom/google/android/gms/internal/ads/tH;

    if-eqz v0, :cond_28

    invoke-virtual {p1, v0}, Lcom/google/android/gms/ads/internal/a;->j6(Lcom/google/android/gms/internal/ads/tH;)V

    :cond_28
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Hc;->Zo:Lcom/google/android/gms/internal/ads/jj;

    if-eqz v0, :cond_2f

    invoke-virtual {p1, v0}, Lcom/google/android/gms/ads/internal/a;->j6(Lcom/google/android/gms/internal/ads/jj;)V

    :cond_2f
    return-void
.end method
