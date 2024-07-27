.class final Lcom/google/android/gms/internal/ads/Z;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final j6:Lcom/google/android/gms/internal/ads/Y;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/Y;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Z;->j6:Lcom/google/android/gms/internal/ads/Y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Z;->j6:Lcom/google/android/gms/internal/ads/Y;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Y;->j6(Lcom/google/android/gms/internal/ads/Y;)Lcom/google/android/gms/internal/ads/ia;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Z;->j6:Lcom/google/android/gms/internal/ads/Y;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Y;->j6(Lcom/google/android/gms/internal/ads/Y;)Lcom/google/android/gms/internal/ads/ia;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/ia;->Vq()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Z;->j6:Lcom/google/android/gms/internal/ads/Y;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Y;->j6(Lcom/google/android/gms/internal/ads/Y;)Lcom/google/android/gms/internal/ads/ia;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/ia;->k4()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Z;->j6:Lcom/google/android/gms/internal/ads/Y;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Y;->j6(Lcom/google/android/gms/internal/ads/Y;)Lcom/google/android/gms/internal/ads/ia;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/ia;->qI()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Z;->j6:Lcom/google/android/gms/internal/ads/Y;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/Y;->j6(Lcom/google/android/gms/internal/ads/Y;Lcom/google/android/gms/internal/ads/ia;)Lcom/google/android/gms/internal/ads/ia;

    return-void
.end method
