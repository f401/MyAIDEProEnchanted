.class final Lcom/google/android/gms/ads/internal/L;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final DW:Lcom/google/android/gms/ads/internal/C;

.field private final j6:Lcom/google/android/gms/internal/ads/ab;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/C;Lcom/google/android/gms/internal/ads/ab;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/L;->DW:Lcom/google/android/gms/ads/internal/C;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/L;->j6:Lcom/google/android/gms/internal/ads/ab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/L;->j6:Lcom/google/android/gms/internal/ads/ab;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/ab;->vJ()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/L;->DW:Lcom/google/android/gms/ads/internal/C;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/Y;->lg:Labcd/x;

    invoke-virtual {v1, v0}, Labcd/x;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/ob;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/L;->j6:Lcom/google/android/gms/internal/ads/ab;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/ob;->j6(Lcom/google/android/gms/internal/ads/ab;)V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_17} :catch_18

    return-void

    :catch_18
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
