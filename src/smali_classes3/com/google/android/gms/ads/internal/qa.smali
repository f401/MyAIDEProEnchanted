.class final Lcom/google/android/gms/ads/internal/qa;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final DW:Lcom/google/android/gms/ads/internal/na;

.field private final j6:Lcom/google/android/gms/internal/ads/W;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/na;Lcom/google/android/gms/internal/ads/W;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/qa;->DW:Lcom/google/android/gms/ads/internal/na;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/qa;->j6:Lcom/google/android/gms/internal/ads/W;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/qa;->DW:Lcom/google/android/gms/ads/internal/na;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/Y;->aM:Lcom/google/android/gms/internal/ads/fb;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/qa;->DW:Lcom/google/android/gms/ads/internal/na;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/Y;->aM:Lcom/google/android/gms/internal/ads/fb;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/qa;->j6:Lcom/google/android/gms/internal/ads/W;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/fb;->j6(Lcom/google/android/gms/internal/ads/Ta;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/qa;->DW:Lcom/google/android/gms/ads/internal/na;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/qa;->j6:Lcom/google/android/gms/internal/ads/W;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/W;->et()Labcd/ox;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/na;->BT(Labcd/ox;)V
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
