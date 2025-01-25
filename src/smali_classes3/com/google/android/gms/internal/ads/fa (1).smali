.class final Lcom/google/android/gms/internal/ads/fa;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final j6:Lcom/google/android/gms/internal/ads/da;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/da;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/fa;->j6:Lcom/google/android/gms/internal/ads/da;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/fa;->j6:Lcom/google/android/gms/internal/ads/da;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/da;->j6(Lcom/google/android/gms/internal/ads/da;)Lcom/google/android/gms/internal/ads/ia;

    move-result-object v0

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/fa;->j6:Lcom/google/android/gms/internal/ads/da;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/da;->j6(Lcom/google/android/gms/internal/ads/da;)Lcom/google/android/gms/internal/ads/ia;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/ia;->Vq()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/fa;->j6:Lcom/google/android/gms/internal/ads/da;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/da;->j6(Lcom/google/android/gms/internal/ads/da;)Lcom/google/android/gms/internal/ads/ia;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/ia;->k4()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/fa;->j6:Lcom/google/android/gms/internal/ads/da;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/da;->j6(Lcom/google/android/gms/internal/ads/da;)Lcom/google/android/gms/internal/ads/ia;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/ia;->qI()V

    :cond_23
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/fa;->j6:Lcom/google/android/gms/internal/ads/da;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/da;->j6(Lcom/google/android/gms/internal/ads/da;Lcom/google/android/gms/internal/ads/ia;)Lcom/google/android/gms/internal/ads/ia;

    return-void
.end method
