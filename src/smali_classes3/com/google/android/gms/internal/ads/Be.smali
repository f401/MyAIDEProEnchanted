.class final Lcom/google/android/gms/internal/ads/Be;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/google/android/gms/internal/ads/we;",
        ">;"
    }
.end annotation


# instance fields
.field private final DW:Lcom/google/android/gms/internal/ads/Ae;

.field private final j6:Lcom/google/android/gms/internal/ads/te;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/Ae;Lcom/google/android/gms/internal/ads/te;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Be;->DW:Lcom/google/android/gms/internal/ads/Ae;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/Be;->j6:Lcom/google/android/gms/internal/ads/te;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final j6()Lcom/google/android/gms/internal/ads/we;
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Be;->DW:Lcom/google/android/gms/internal/ads/Ae;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Ae;->j6(Lcom/google/android/gms/internal/ads/Ae;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_7
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Be;->DW:Lcom/google/android/gms/internal/ads/Ae;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/Ae;->DW(Lcom/google/android/gms/internal/ads/Ae;)Z

    move-result v1

    if-eqz v1, :cond_12

    monitor-exit v0

    const/4 v0, 0x0

    return-object v0

    :cond_12
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_26

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Be;->j6:Lcom/google/android/gms/internal/ads/te;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Be;->DW:Lcom/google/android/gms/internal/ads/Ae;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/Ae;->FH(Lcom/google/android/gms/internal/ads/Ae;)J

    move-result-wide v1

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/Be;->DW:Lcom/google/android/gms/internal/ads/Ae;

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/Ae;->Hw(Lcom/google/android/gms/internal/ads/Ae;)J

    move-result-wide v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/te;->j6(JJ)Lcom/google/android/gms/internal/ads/we;

    move-result-object v0

    return-object v0

    :catchall_26
    move-exception v1

    :try_start_27
    monitor-exit v0
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_26

    throw v1
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/Be;->j6()Lcom/google/android/gms/internal/ads/we;

    move-result-object v0

    return-object v0
.end method
