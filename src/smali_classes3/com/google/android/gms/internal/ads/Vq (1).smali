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

    new-array v0, v0, [[B

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Vq;->j6:Lcom/google/android/gms/internal/ads/Aq;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/Aq;->j6()Lcom/google/android/gms/internal/ads/Cq;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/Cq;->DW()[B

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Vq;->j6:Lcom/google/android/gms/internal/ads/Aq;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/Aq;->j6()Lcom/google/android/gms/internal/ads/Cq;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/Cq;->j6()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/tq;

    invoke-interface {v1, p1, p2}, Lcom/google/android/gms/internal/ads/tq;->j6([B[B)[B

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v0, p2

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/As;->j6([[B)[B

    move-result-object p1

    return-object p1
.end method
