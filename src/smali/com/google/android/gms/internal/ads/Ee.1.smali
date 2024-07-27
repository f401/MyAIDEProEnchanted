.class final Lcom/google/android/gms/internal/ads/Ee;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final j6:Lcom/google/android/gms/internal/ads/we;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/De;Lcom/google/android/gms/internal/ads/we;)V
    .registers 3

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/Ee;->j6:Lcom/google/android/gms/internal/ads/we;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ee;->j6:Lcom/google/android/gms/internal/ads/we;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/we;->FH:Lcom/google/android/gms/internal/ads/Je;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/Je;->destroy()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Could not destroy mediation adapter."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/jm;->FH(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
