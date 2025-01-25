.class final synthetic Lcom/google/android/gms/ads/internal/E;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final DW:Lcom/google/android/gms/internal/ads/U;

.field private final j6:Lcom/google/android/gms/ads/internal/C;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/C;Lcom/google/android/gms/internal/ads/U;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/E;->j6:Lcom/google/android/gms/ads/internal/C;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/E;->DW:Lcom/google/android/gms/internal/ads/U;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/E;->j6:Lcom/google/android/gms/ads/internal/C;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/E;->DW:Lcom/google/android/gms/internal/ads/U;

    :try_start_4
    iget-object v2, v0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/Y;->U2:Lcom/google/android/gms/internal/ads/cc;

    if-eqz v2, :cond_11

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/Y;->U2:Lcom/google/android/gms/internal/ads/cc;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/cc;->j6(Lcom/google/android/gms/internal/ads/Zb;)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_11} :catch_12

    :cond_11
    return-void

    :catch_12
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
