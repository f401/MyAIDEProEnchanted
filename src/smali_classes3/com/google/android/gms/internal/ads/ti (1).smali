.class final Lcom/google/android/gms/internal/ads/ti;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final j6:Lcom/google/android/gms/internal/ads/oi;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/oi;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ti;->j6:Lcom/google/android/gms/internal/ads/oi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ti;->j6:Lcom/google/android/gms/internal/ads/oi;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/oi;->DW(Lcom/google/android/gms/internal/ads/oi;)Lcom/google/android/gms/internal/ads/Hd;

    move-result-object v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ti;->j6:Lcom/google/android/gms/internal/ads/oi;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/oi;->DW(Lcom/google/android/gms/internal/ads/oi;)Lcom/google/android/gms/internal/ads/Hd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Hd;->FH()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ti;->j6:Lcom/google/android/gms/internal/ads/oi;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/oi;->j6(Lcom/google/android/gms/internal/ads/oi;Lcom/google/android/gms/internal/ads/Hd;)Lcom/google/android/gms/internal/ads/Hd;

    :cond_17
    return-void
.end method
