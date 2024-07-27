.class final Lcom/google/android/gms/internal/ads/vI;
.super Lcom/google/android/gms/internal/ads/sH;


# instance fields
.field private final FH:Lcom/google/android/gms/internal/ads/tI;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/tI;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/vI;->FH:Lcom/google/android/gms/internal/ads/tI;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/sH;-><init>()V

    return-void
.end method


# virtual methods
.method public final Hw()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vI;->FH:Lcom/google/android/gms/internal/ads/tI;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/tI;->j6(Lcom/google/android/gms/internal/ads/tI;)Lcom/google/android/gms/ads/h;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/vI;->FH:Lcom/google/android/gms/internal/ads/tI;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/tI;->J0()Lcom/google/android/gms/internal/ads/kI;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/h;->j6(Lcom/google/android/gms/internal/ads/kI;)V

    invoke-super {p0}, Lcom/google/android/gms/internal/ads/sH;->Hw()V

    return-void
.end method

.method public final j6(I)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vI;->FH:Lcom/google/android/gms/internal/ads/tI;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/tI;->j6(Lcom/google/android/gms/internal/ads/tI;)Lcom/google/android/gms/ads/h;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/vI;->FH:Lcom/google/android/gms/internal/ads/tI;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/tI;->J0()Lcom/google/android/gms/internal/ads/kI;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/h;->j6(Lcom/google/android/gms/internal/ads/kI;)V

    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/sH;->j6(I)V

    return-void
.end method
