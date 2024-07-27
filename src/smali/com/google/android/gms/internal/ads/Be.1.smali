.class final Lcom/google/android/gms/internal/ads/Be;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
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
    .registers 7

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Be;->DW:Lcom/google/android/gms/internal/ads/Ae;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Ae;->j6(Lcom/google/android/gms/internal/ads/Ae;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Be;->DW:Lcom/google/android/gms/internal/ads/Ae;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Ae;->DW(Lcom/google/android/gms/internal/ads/Ae;)Z

    move-result v0

    if-eqz v0, :cond_0

    monitor-exit v1

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Be;->j6:Lcom/google/android/gms/internal/ads/te;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Be;->DW:Lcom/google/android/gms/internal/ads/Ae;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/Ae;->FH(Lcom/google/android/gms/internal/ads/Ae;)J

    move-result-wide v2

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Be;->DW:Lcom/google/android/gms/internal/ads/Ae;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/Ae;->Hw(Lcom/google/android/gms/internal/ads/Ae;)J

    move-result-wide v4

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/google/android/gms/internal/ads/te;->j6(JJ)Lcom/google/android/gms/internal/ads/we;

    move-result-object v0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/Be;->j6()Lcom/google/android/gms/internal/ads/we;

    move-result-object v0

    return-object v0
.end method
