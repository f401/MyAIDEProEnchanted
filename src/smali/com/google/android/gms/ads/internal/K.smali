.class final Lcom/google/android/gms/ads/internal/K;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final DW:Lcom/google/android/gms/internal/ads/kk;

.field private final FH:Lcom/google/android/gms/ads/internal/C;

.field private final j6:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/C;Ljava/lang/String;Lcom/google/android/gms/internal/ads/kk;)V
    .registers 4

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/K;->FH:Lcom/google/android/gms/ads/internal/C;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/K;->j6:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/ads/internal/K;->DW:Lcom/google/android/gms/internal/ads/kk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/K;->FH:Lcom/google/android/gms/ads/internal/C;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/Y;->lg:Labcd/x;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/K;->j6:Ljava/lang/String;

    invoke-virtual {v0, v1}, Labcd/x;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/ob;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/K;->DW:Lcom/google/android/gms/internal/ads/kk;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/kk;->nw:Lcom/google/android/gms/internal/ads/ka;

    check-cast v1, Lcom/google/android/gms/internal/ads/aa;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/ob;->j6(Lcom/google/android/gms/internal/ads/ab;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
