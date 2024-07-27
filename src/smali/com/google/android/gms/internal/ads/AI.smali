.class final Lcom/google/android/gms/internal/ads/AI;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final j6:Lcom/google/android/gms/internal/ads/zI;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zI;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/AI;->j6:Lcom/google/android/gms/internal/ads/zI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/AI;->j6:Lcom/google/android/gms/internal/ads/zI;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zI;->j6:Lcom/google/android/gms/internal/ads/xI;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/xI;->j6(Lcom/google/android/gms/internal/ads/xI;)Lcom/google/android/gms/internal/ads/xH;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/AI;->j6:Lcom/google/android/gms/internal/ads/zI;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zI;->j6:Lcom/google/android/gms/internal/ads/xI;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/xI;->j6(Lcom/google/android/gms/internal/ads/xI;)Lcom/google/android/gms/internal/ads/xH;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/xH;->Zo(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Could not notify onAdFailedToLoad event."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/jm;->FH(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
