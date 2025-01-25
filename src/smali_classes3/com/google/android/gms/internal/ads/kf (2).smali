.class final Lcom/google/android/gms/internal/ads/kf;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final DW:Lcom/google/android/gms/internal/ads/jf;

.field private final j6:Labcd/ax;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/jf;Labcd/ax;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/kf;->DW:Lcom/google/android/gms/internal/ads/jf;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/kf;->j6:Labcd/ax;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/kf;->DW:Lcom/google/android/gms/internal/ads/jf;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/jf;->j6(Lcom/google/android/gms/internal/ads/jf;)Lcom/google/android/gms/internal/ads/Me;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/kf;->j6:Labcd/ax;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/mf;->j6(Labcd/ax;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/Me;->Zo(I)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_f} :catch_10

    return-void

    :catch_10
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
