.class public final Lcom/google/android/gms/internal/ads/Vh;
.super Lcom/google/android/gms/internal/ads/Sh;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zh;
.end annotation


# instance fields
.field private final Hw:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/Tm;Lcom/google/android/gms/internal/ads/Qh;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/gms/internal/ads/Tm",
            "<",
            "Lcom/google/android/gms/internal/ads/zzasi;",
            ">;",
            "Lcom/google/android/gms/internal/ads/Qh;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/ads/Sh;-><init>(Lcom/google/android/gms/internal/ads/Tm;Lcom/google/android/gms/internal/ads/Qh;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Vh;->Hw:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final DW()Lcom/google/android/gms/internal/ads/ci;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Vh;->Hw:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zi;->j6(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zi;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/Ai;->j6(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zi;)Lcom/google/android/gms/internal/ads/Ai;

    move-result-object v0

    return-object v0
.end method

.method public final j6()V
    .registers 1

    return-void
.end method
