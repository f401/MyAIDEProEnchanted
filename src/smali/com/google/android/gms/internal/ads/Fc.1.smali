.class final Lcom/google/android/gms/internal/ads/Fc;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final DW:Lcom/google/android/gms/internal/ads/Hc;

.field private final j6:Lcom/google/android/gms/internal/ads/Gc;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/gc;Lcom/google/android/gms/internal/ads/Gc;Lcom/google/android/gms/internal/ads/Hc;)V
    .registers 4

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/Fc;->j6:Lcom/google/android/gms/internal/ads/Gc;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/Fc;->DW:Lcom/google/android/gms/internal/ads/Hc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Fc;->j6:Lcom/google/android/gms/internal/ads/Gc;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Fc;->DW:Lcom/google/android/gms/internal/ads/Hc;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/Gc;->j6(Lcom/google/android/gms/internal/ads/Hc;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Could not propagate interstitial ad event."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/jm;->FH(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
