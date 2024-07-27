.class final Lcom/google/android/gms/internal/ads/qB;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final j6:Lcom/google/android/gms/internal/ads/oB;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/oB;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/qB;->j6:Lcom/google/android/gms/internal/ads/oB;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/qB;->j6:Lcom/google/android/gms/internal/ads/oB;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/oB;->DW(Lcom/google/android/gms/internal/ads/oB;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/qB;->j6:Lcom/google/android/gms/internal/ads/oB;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/oB;->FH(Lcom/google/android/gms/internal/ads/oB;)Lcom/google/android/gms/internal/ads/zB;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/qB;->j6:Lcom/google/android/gms/internal/ads/oB;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/JB;->j6(Lcom/google/android/gms/internal/ads/IB;)V

    :cond_0
    return-void
.end method
