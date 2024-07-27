.class public abstract Lcom/google/android/gms/internal/ads/Sh;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/Qh;
.implements Lcom/google/android/gms/internal/ads/hl;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zh;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/Qh;",
        "Lcom/google/android/gms/internal/ads/hl",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final DW:Lcom/google/android/gms/internal/ads/Qh;

.field private final FH:Ljava/lang/Object;

.field private final j6:Lcom/google/android/gms/internal/ads/Tm;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/Tm",
            "<",
            "Lcom/google/android/gms/internal/ads/zzasi;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/Tm;Lcom/google/android/gms/internal/ads/Qh;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/Tm",
            "<",
            "Lcom/google/android/gms/internal/ads/zzasi;",
            ">;",
            "Lcom/google/android/gms/internal/ads/Qh;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Sh;->FH:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Sh;->j6:Lcom/google/android/gms/internal/ads/Tm;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/Sh;->DW:Lcom/google/android/gms/internal/ads/Qh;

    return-void
.end method


# virtual methods
.method public abstract DW()Lcom/google/android/gms/internal/ads/ci;
.end method

.method public final synthetic FH()Ljava/lang/Object;
    .registers 5

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/Sh;->DW()Lcom/google/android/gms/internal/ads/ci;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Sh;->DW:Lcom/google/android/gms/internal/ads/Qh;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzasm;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzasm;-><init>(I)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/Qh;->j6(Lcom/google/android/gms/internal/ads/zzasm;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/Sh;->j6()V

    :goto_0
    return-object v3

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Sh;->j6:Lcom/google/android/gms/internal/ads/Tm;

    new-instance v2, Lcom/google/android/gms/internal/ads/Th;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/internal/ads/Th;-><init>(Lcom/google/android/gms/internal/ads/Sh;Lcom/google/android/gms/internal/ads/ci;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/Uh;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/Uh;-><init>(Lcom/google/android/gms/internal/ads/Sh;)V

    invoke-interface {v1, v2, v0}, Lcom/google/android/gms/internal/ads/Tm;->j6(Lcom/google/android/gms/internal/ads/Wm;Lcom/google/android/gms/internal/ads/Um;)V

    goto :goto_0
.end method

.method public final cancel()V
    .registers 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/Sh;->j6()V

    return-void
.end method

.method public abstract j6()V
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/zzasm;)V
    .registers 4

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Sh;->FH:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Sh;->DW:Lcom/google/android/gms/internal/ads/Qh;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/Qh;->j6(Lcom/google/android/gms/internal/ads/zzasm;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/Sh;->j6()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method final j6(Lcom/google/android/gms/internal/ads/ci;Lcom/google/android/gms/internal/ads/zzasi;)Z
    .registers 7

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lcom/google/android/gms/internal/ads/_h;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/_h;-><init>(Lcom/google/android/gms/internal/ads/Qh;)V

    invoke-interface {p1, p2, v1}, Lcom/google/android/gms/internal/ads/ci;->j6(Lcom/google/android/gms/internal/ads/zzasi;Lcom/google/android/gms/internal/ads/fi;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v1

    const-string v2, "Could not fetch ad response from ad request service due to an Exception."

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/jm;->FH(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->u7()Lcom/google/android/gms/internal/ads/pk;

    move-result-object v2

    const-string v3, "AdRequestClientTask.getAdResponseFromService"

    invoke-virtual {v2, v1, v3}, Lcom/google/android/gms/internal/ads/pk;->j6(Ljava/lang/Throwable;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Sh;->DW:Lcom/google/android/gms/internal/ads/Qh;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzasm;

    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/ads/zzasm;-><init>(I)V

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/Qh;->j6(Lcom/google/android/gms/internal/ads/zzasm;)V

    goto :goto_0
.end method
