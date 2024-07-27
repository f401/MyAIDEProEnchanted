.class final Lcom/google/android/gms/internal/ads/pi;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final DW:Lcom/google/android/gms/internal/ads/oi;

.field private final j6:Lcom/google/android/gms/internal/ads/lk;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/oi;Lcom/google/android/gms/internal/ads/lk;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/pi;->DW:Lcom/google/android/gms/internal/ads/oi;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/pi;->j6:Lcom/google/android/gms/internal/ads/lk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/pi;->DW:Lcom/google/android/gms/internal/ads/oi;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/oi;->j6(Lcom/google/android/gms/internal/ads/oi;)Lcom/google/android/gms/internal/ads/Bh;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/pi;->j6:Lcom/google/android/gms/internal/ads/lk;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/Bh;->j6(Lcom/google/android/gms/internal/ads/lk;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/pi;->DW:Lcom/google/android/gms/internal/ads/oi;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/oi;->DW(Lcom/google/android/gms/internal/ads/oi;)Lcom/google/android/gms/internal/ads/Hd;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/pi;->DW:Lcom/google/android/gms/internal/ads/oi;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/oi;->DW(Lcom/google/android/gms/internal/ads/oi;)Lcom/google/android/gms/internal/ads/Hd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Hd;->FH()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/pi;->DW:Lcom/google/android/gms/internal/ads/oi;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/oi;->j6(Lcom/google/android/gms/internal/ads/oi;Lcom/google/android/gms/internal/ads/Hd;)Lcom/google/android/gms/internal/ads/Hd;

    :cond_0
    return-void
.end method
