.class final Lcom/google/android/gms/ads/internal/J;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final DW:Lcom/google/android/gms/ads/internal/C;

.field private final j6:Lcom/google/android/gms/internal/ads/Y;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/C;Lcom/google/android/gms/internal/ads/Y;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/J;->DW:Lcom/google/android/gms/ads/internal/C;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/J;->j6:Lcom/google/android/gms/internal/ads/Y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/J;->DW:Lcom/google/android/gms/ads/internal/C;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/Y;->j3:Lcom/google/android/gms/internal/ads/ib;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/J;->DW:Lcom/google/android/gms/ads/internal/C;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/Y;->j3:Lcom/google/android/gms/internal/ads/ib;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/J;->j6:Lcom/google/android/gms/internal/ads/Y;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/ib;->j6(Lcom/google/android/gms/internal/ads/Xa;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/J;->DW:Lcom/google/android/gms/ads/internal/C;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/J;->j6:Lcom/google/android/gms/internal/ads/Y;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/Y;->et()Labcd/ox;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/C;->BT(Labcd/ox;)V
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_1e} :catch_1f

    :cond_1e
    return-void

    :catch_1f
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
