.class public final Lcom/google/android/gms/internal/ads/Wh;
.super Lcom/google/android/gms/internal/ads/Sh;

# interfaces
.implements Lcom/google/android/gms/common/internal/c$a;
.implements Lcom/google/android/gms/common/internal/c$b;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zh;
.end annotation


# instance fields
.field private Hw:Landroid/content/Context;

.field private VH:Lcom/google/android/gms/internal/ads/hl;

.field private Zo:Lcom/google/android/gms/internal/ads/Tm;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/Tm<",
            "Lcom/google/android/gms/internal/ads/zzasi;",
            ">;"
        }
    .end annotation
.end field

.field private final gn:Lcom/google/android/gms/internal/ads/Qh;

.field private tp:Lcom/google/android/gms/internal/ads/Xh;

.field private final u7:Ljava/lang/Object;

.field private v5:Lcom/google/android/gms/internal/ads/zzbbi;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbbi;Lcom/google/android/gms/internal/ads/Tm;Lcom/google/android/gms/internal/ads/Qh;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/gms/internal/ads/zzbbi;",
            "Lcom/google/android/gms/internal/ads/Tm<",
            "Lcom/google/android/gms/internal/ads/zzasi;",
            ">;",
            "Lcom/google/android/gms/internal/ads/Qh;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p3, p4}, Lcom/google/android/gms/internal/ads/Sh;-><init>(Lcom/google/android/gms/internal/ads/Tm;Lcom/google/android/gms/internal/ads/Qh;)V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Wh;->u7:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Wh;->Hw:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/Wh;->v5:Lcom/google/android/gms/internal/ads/zzbbi;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/Wh;->Zo:Lcom/google/android/gms/internal/ads/Tm;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/Wh;->gn:Lcom/google/android/gms/internal/ads/Qh;

    new-instance p2, Lcom/google/android/gms/internal/ads/Xh;

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->U2()Lcom/google/android/gms/internal/ads/Ll;

    move-result-object p3

    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/Ll;->DW()Landroid/os/Looper;

    move-result-object p3

    invoke-direct {p2, p1, p3, p0, p0}, Lcom/google/android/gms/internal/ads/Xh;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/c$a;Lcom/google/android/gms/common/internal/c$b;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/Wh;->tp:Lcom/google/android/gms/internal/ads/Xh;

    invoke-virtual {p2}, Lcom/google/android/gms/common/internal/c;->checkAvailabilityAndConnect()V

    return-void
.end method


# virtual methods
.method public final DW()Lcom/google/android/gms/internal/ads/ci;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Wh;->u7:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Wh;->tp:Lcom/google/android/gms/internal/ads/Xh;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/Xh;->j6()Lcom/google/android/gms/internal/ads/ci;

    move-result-object v1
    :try_end_9
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_9} :catch_f
    .catch Landroid/os/DeadObjectException; {:try_start_3 .. :try_end_9} :catch_d
    .catchall {:try_start_3 .. :try_end_9} :catchall_b

    :try_start_9
    monitor-exit v0

    return-object v1

    :catchall_b
    move-exception v1

    goto :goto_13

    :catch_d
    move-exception v1

    goto :goto_10

    :catch_f
    move-exception v1

    :goto_10
    monitor-exit v0

    const/4 v0, 0x0

    return-object v0

    :goto_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_9 .. :try_end_14} :catchall_b

    throw v1
.end method

.method public final j6()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Wh;->u7:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Wh;->tp:Lcom/google/android/gms/internal/ads/Xh;

    invoke-virtual {v1}, Lcom/google/android/gms/common/internal/c;->isConnected()Z

    move-result v1

    if-nez v1, :cond_13

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Wh;->tp:Lcom/google/android/gms/internal/ads/Xh;

    invoke-virtual {v1}, Lcom/google/android/gms/common/internal/c;->isConnecting()Z

    move-result v1

    if-eqz v1, :cond_18

    :cond_13
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Wh;->tp:Lcom/google/android/gms/internal/ads/Xh;

    invoke-virtual {v1}, Lcom/google/android/gms/common/internal/c;->disconnect()V

    :cond_18
    invoke-static {}, Landroid/os/Binder;->flushPendingCommands()V

    monitor-exit v0

    return-void

    :catchall_1d
    move-exception v1

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1d

    throw v1
.end method

.method public final onConnected(Landroid/os/Bundle;)V
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/Sh;->FH()Ljava/lang/Object;

    return-void
.end method

.method public final onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .registers 11

    const-string p1, "Cannot connect to remote service, fallback to local instance."

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;)V

    new-instance p1, Lcom/google/android/gms/internal/ads/Vh;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Wh;->Hw:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Wh;->Zo:Lcom/google/android/gms/internal/ads/Tm;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Wh;->gn:Lcom/google/android/gms/internal/ads/Qh;

    invoke-direct {p1, v0, v1, v2}, Lcom/google/android/gms/internal/ads/Vh;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/Tm;Lcom/google/android/gms/internal/ads/Qh;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Wh;->VH:Lcom/google/android/gms/internal/ads/hl;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/hl;->FH()Ljava/lang/Object;

    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    const-string p1, "action"

    const-string v0, "gms_connection_failed_fallback_to_local"

    invoke-virtual {v7, p1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->v5()Lcom/google/android/gms/internal/ads/Nk;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/Wh;->Hw:Landroid/content/Context;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/Wh;->v5:Lcom/google/android/gms/internal/ads/zzbbi;

    iget-object v5, p1, Lcom/google/android/gms/internal/ads/zzbbi;->j6:Ljava/lang/String;

    const-string v6, "gmob-apps"

    const/4 v8, 0x1

    invoke-virtual/range {v3 .. v8}, Lcom/google/android/gms/internal/ads/Nk;->DW(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Z)V

    return-void
.end method

.method public final onConnectionSuspended(I)V
    .registers 2

    const-string p1, "Disconnected from remote ad request service."

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;)V

    return-void
.end method
