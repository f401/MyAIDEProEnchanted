.class final Lcom/google/android/gms/ads/internal/x;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/ads/internal/gmsg/B;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/ads/internal/gmsg/B",
        "<",
        "Lcom/google/android/gms/internal/ads/Mo;",
        ">;"
    }
.end annotation


# instance fields
.field private final DW:Lcom/google/android/gms/ads/internal/c;

.field private final FH:Lcom/google/android/gms/internal/ads/Ve;

.field private final j6:Lcom/google/android/gms/internal/ads/Se;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/Se;Lcom/google/android/gms/ads/internal/c;Lcom/google/android/gms/internal/ads/Ve;)V
    .registers 4

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/x;->j6:Lcom/google/android/gms/internal/ads/Se;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/x;->DW:Lcom/google/android/gms/ads/internal/c;

    iput-object p3, p0, Lcom/google/android/gms/ads/internal/x;->FH:Lcom/google/android/gms/internal/ads/Ve;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic zza(Ljava/lang/Object;Ljava/util/Map;)V
    .registers 5

    check-cast p1, Lcom/google/android/gms/internal/ads/Mo;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/Mo;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/x;->j6:Lcom/google/android/gms/internal/ads/Se;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/x;->j6:Lcom/google/android/gms/internal/ads/Se;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/Se;->eU()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/x;->j6:Lcom/google/android/gms/internal/ads/Se;

    invoke-static {v0}, Labcd/px;->j6(Ljava/lang/Object;)Labcd/ox;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/Se;->DW(Labcd/ox;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/x;->DW:Lcom/google/android/gms/ads/internal/c;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/c;->j6:Lcom/google/android/gms/ads/internal/va;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/aa;->J0()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/s;->j6(Lcom/google/android/gms/internal/ads/Mo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Unable to call handleClick on mapper"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/jm;->FH(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/x;->FH:Lcom/google/android/gms/internal/ads/Ve;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/x;->FH:Lcom/google/android/gms/internal/ads/Ve;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/Ve;->eU()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/x;->FH:Lcom/google/android/gms/internal/ads/Ve;

    invoke-static {v0}, Labcd/px;->j6(Ljava/lang/Object;)Labcd/ox;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/Ve;->DW(Labcd/ox;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/x;->DW:Lcom/google/android/gms/ads/internal/c;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/c;->j6:Lcom/google/android/gms/ads/internal/va;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/aa;->J0()V

    goto :goto_0

    :cond_3
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/s;->j6(Lcom/google/android/gms/internal/ads/Mo;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
