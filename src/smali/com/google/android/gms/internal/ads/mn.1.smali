.class final Lcom/google/android/gms/internal/ads/mn;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final j6:Lcom/google/android/gms/internal/ads/cn;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/cn;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/mn;->j6:Lcom/google/android/gms/internal/ads/cn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/mn;->j6:Lcom/google/android/gms/internal/ads/cn;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/cn;->j6(Lcom/google/android/gms/internal/ads/cn;)Lcom/google/android/gms/internal/ads/nn;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/mn;->j6:Lcom/google/android/gms/internal/ads/cn;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/cn;->j6(Lcom/google/android/gms/internal/ads/cn;)Lcom/google/android/gms/internal/ads/nn;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/nn;->v5()V

    :cond_0
    return-void
.end method
