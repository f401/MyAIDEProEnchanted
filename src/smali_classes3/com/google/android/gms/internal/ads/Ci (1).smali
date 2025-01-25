.class final Lcom/google/android/gms/internal/ads/Ci;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final DW:Lcom/google/android/gms/internal/ads/fi;

.field private final FH:Lcom/google/android/gms/internal/ads/Ai;

.field private final j6:Lcom/google/android/gms/internal/ads/zzasi;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/Ai;Lcom/google/android/gms/internal/ads/zzasi;Lcom/google/android/gms/internal/ads/fi;)V
    .registers 4

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Ci;->FH:Lcom/google/android/gms/internal/ads/Ai;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/Ci;->j6:Lcom/google/android/gms/internal/ads/zzasi;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/Ci;->DW:Lcom/google/android/gms/internal/ads/fi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ci;->FH:Lcom/google/android/gms/internal/ads/Ai;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Ci;->j6:Lcom/google/android/gms/internal/ads/zzasi;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/Ai;->j6(Lcom/google/android/gms/internal/ads/zzasi;)Lcom/google/android/gms/internal/ads/zzasm;

    move-result-object v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_9

    goto :goto_19

    :catch_9
    move-exception v0

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->u7()Lcom/google/android/gms/internal/ads/pk;

    move-result-object v1

    const-string v2, "AdRequestServiceImpl.loadAdAsync"

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/ads/pk;->j6(Ljava/lang/Throwable;Ljava/lang/String;)V

    const-string v1, "Could not fetch ad response due to an Exception."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/jm;->FH(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    :goto_19
    if-nez v0, :cond_21

    new-instance v0, Lcom/google/android/gms/internal/ads/zzasm;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzasm;-><init>(I)V

    :cond_21
    :try_start_21
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Ci;->DW:Lcom/google/android/gms/internal/ads/fi;

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/fi;->j6(Lcom/google/android/gms/internal/ads/zzasm;)V
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_21 .. :try_end_26} :catch_27

    return-void

    :catch_27
    move-exception v0

    const-string v1, "Fail to forward ad response."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/jm;->FH(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
