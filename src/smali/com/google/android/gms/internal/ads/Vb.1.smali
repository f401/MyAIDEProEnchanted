.class final Lcom/google/android/gms/internal/ads/Vb;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/c$a;


# instance fields
.field private final DW:Lcom/google/android/gms/internal/ads/zzaft;

.field private final j6:Lcom/google/android/gms/internal/ads/Rm;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzaft;Lcom/google/android/gms/internal/ads/Rm;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Vb;->DW:Lcom/google/android/gms/internal/ads/zzaft;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/Vb;->j6:Lcom/google/android/gms/internal/ads/Rm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onConnected(Landroid/os/Bundle;)V
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Vb;->j6:Lcom/google/android/gms/internal/ads/Rm;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Vb;->DW:Lcom/google/android/gms/internal/ads/zzaft;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzaft;->DW(Lcom/google/android/gms/internal/ads/zzaft;)Lcom/google/android/gms/internal/ads/Lb;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/Lb;->j6()Lcom/google/android/gms/internal/ads/Qb;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/Rm;->DW(Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Vb;->j6:Lcom/google/android/gms/internal/ads/Rm;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/Rm;->j6(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final onConnectionSuspended(I)V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Vb;->j6:Lcom/google/android/gms/internal/ads/Rm;

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x22

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "onConnectionSuspended: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/Rm;->j6(Ljava/lang/Throwable;)V

    return-void
.end method
