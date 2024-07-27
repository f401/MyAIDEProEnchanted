.class public abstract Lcom/google/android/gms/internal/ads/cD;
.super Ljava/lang/Object;


# instance fields
.field private j6:Lcom/google/android/gms/internal/ads/dD;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract j6([Lcom/google/android/gms/internal/ads/Qy;Lcom/google/android/gms/internal/ads/NB;)Lcom/google/android/gms/internal/ads/eD;
.end method

.method protected final j6()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cD;->j6:Lcom/google/android/gms/internal/ads/dD;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/dD;->j6()V

    :cond_0
    return-void
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/dD;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/cD;->j6:Lcom/google/android/gms/internal/ads/dD;

    return-void
.end method

.method public abstract j6(Ljava/lang/Object;)V
.end method
