.class public final Lcom/google/android/gms/internal/ads/Vx;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final DW:Lcom/google/android/gms/internal/ads/br;

.field private final j6:Lcom/google/android/gms/internal/ads/Ax;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/Ax;Lcom/google/android/gms/internal/ads/br;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Vx;->j6:Lcom/google/android/gms/internal/ads/Ax;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/Vx;->DW:Lcom/google/android/gms/internal/ads/br;

    return-void
.end method

.method private final j6()Ljava/lang/Void;
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Vx;->j6:Lcom/google/android/gms/internal/ads/Ax;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Ax;->we()Ljava/util/concurrent/Future;

    move-result-object v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Vx;->j6:Lcom/google/android/gms/internal/ads/Ax;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Ax;->we()Ljava/util/concurrent/Future;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    :cond_11
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Vx;->j6:Lcom/google/android/gms/internal/ads/Ax;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Ax;->EQ()Lcom/google/android/gms/internal/ads/br;

    move-result-object v0

    if-eqz v0, :cond_2b

    :try_start_19
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Vx;->DW:Lcom/google/android/gms/internal/ads/br;

    monitor-enter v1
    :try_end_1c
    .catch Lcom/google/android/gms/internal/ads/bw; {:try_start_19 .. :try_end_1c} :catch_2a

    :try_start_1c
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Vx;->DW:Lcom/google/android/gms/internal/ads/br;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/cw;->j6(Lcom/google/android/gms/internal/ads/cw;)[B

    move-result-object v0

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ads/cw;->j6(Lcom/google/android/gms/internal/ads/cw;[B)Lcom/google/android/gms/internal/ads/cw;

    monitor-exit v1

    goto :goto_2b

    :catchall_27
    move-exception v0

    monitor-exit v1
    :try_end_29
    .catchall {:try_start_1c .. :try_end_29} :catchall_27

    :try_start_29
    throw v0
    :try_end_2a
    .catch Lcom/google/android/gms/internal/ads/bw; {:try_start_29 .. :try_end_2a} :catch_2a

    :catch_2a
    move-exception v0

    :cond_2b
    :goto_2b
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/Vx;->j6()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
