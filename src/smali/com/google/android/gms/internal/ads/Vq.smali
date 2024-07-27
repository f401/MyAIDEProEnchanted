.class final Lcom/google/android/gms/internal/ads/Vq;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/tq;


# instance fields
.field private final j6:Lcom/google/android/gms/internal/ads/Aq;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/Aq;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Vq;->j6:Lcom/google/android/gms/internal/ads/Aq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final j6([B[B)[B
    .registers 6

    const/4 v0, 0x2

    new-array v1, v0, [[B

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Vq;->j6:Lcom/google/android/gms/internal/ads/Aq;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/Aq;->j6()Lcom/google/android/gms/internal/ads/Cq;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/Cq;->DW()[B

    move-result-object v2

    aput-object v2, v1, v0

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Vq;->j6:Lcom/google/android/gms/internal/ads/Aq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Aq;->j6()Lcom/google/android/gms/internal/ads/Cq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Cq;->j6()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/tq;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/tq;->j6([B[B)[B

    move-result-object v0

    aput-object v0, v1, v2

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/As;->j6([[B)[B

    move-result-object v0

    return-object v0
.end method
