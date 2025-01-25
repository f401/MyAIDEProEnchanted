.class final Lcom/google/android/gms/ads/internal/x;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/ads/internal/gmsg/B;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/ads/internal/gmsg/B<",
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
    .registers 4

    check-cast p1, Lcom/google/android/gms/internal/ads/Mo;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/Mo;->getView()Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_4c

    :try_start_8
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/x;->j6:Lcom/google/android/gms/internal/ads/Se;

    if-eqz v0, :cond_27

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/Se;->eU()Z

    move-result v0

    if-nez v0, :cond_23

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/x;->j6:Lcom/google/android/gms/internal/ads/Se;

    invoke-static {p2}, Labcd/px;->j6(Ljava/lang/Object;)Labcd/ox;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/Se;->DW(Labcd/ox;)V

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/x;->DW:Lcom/google/android/gms/ads/internal/c;

    iget-object p1, p1, Lcom/google/android/gms/ads/internal/c;->j6:Lcom/google/android/gms/ads/internal/va;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/internal/aa;->J0()V

    return-void

    :cond_23
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/s;->j6(Lcom/google/android/gms/internal/ads/Mo;)V

    return-void

    :cond_27
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/x;->FH:Lcom/google/android/gms/internal/ads/Ve;

    if-eqz v0, :cond_45

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/Ve;->eU()Z

    move-result v0

    if-nez v0, :cond_42

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/x;->FH:Lcom/google/android/gms/internal/ads/Ve;

    invoke-static {p2}, Labcd/px;->j6(Ljava/lang/Object;)Labcd/ox;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/Ve;->DW(Labcd/ox;)V

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/x;->DW:Lcom/google/android/gms/ads/internal/c;

    iget-object p1, p1, Lcom/google/android/gms/ads/internal/c;->j6:Lcom/google/android/gms/ads/internal/va;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/internal/aa;->J0()V

    return-void

    :cond_42
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/s;->j6(Lcom/google/android/gms/internal/ads/Mo;)V
    :try_end_45
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_45} :catch_46

    :cond_45
    return-void

    :catch_46
    move-exception p1

    const-string p2, "Unable to call handleClick on mapper"

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/jm;->FH(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_4c
    return-void
.end method
