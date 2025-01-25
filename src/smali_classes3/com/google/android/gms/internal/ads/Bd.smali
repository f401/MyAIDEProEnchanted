.class final Lcom/google/android/gms/internal/ads/Bd;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final DW:Lcom/google/android/gms/internal/ads/gd;

.field private final FH:Lcom/google/android/gms/internal/ads/rd;

.field private final j6:Lcom/google/android/gms/internal/ads/Ld;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/rd;Lcom/google/android/gms/internal/ads/Ld;Lcom/google/android/gms/internal/ads/gd;)V
    .registers 4

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Bd;->FH:Lcom/google/android/gms/internal/ads/rd;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/Bd;->j6:Lcom/google/android/gms/internal/ads/Ld;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/Bd;->DW:Lcom/google/android/gms/internal/ads/gd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Bd;->FH:Lcom/google/android/gms/internal/ads/rd;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/rd;->j6(Lcom/google/android/gms/internal/ads/rd;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_7
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Bd;->j6:Lcom/google/android/gms/internal/ads/Ld;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/Xm;->j6()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_34

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Bd;->j6:Lcom/google/android/gms/internal/ads/Ld;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/Xm;->j6()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1a

    goto :goto_34

    :cond_1a
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Bd;->j6:Lcom/google/android/gms/internal/ads/Ld;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/Xm;->DW()V

    sget-object v1, Lcom/google/android/gms/internal/ads/Mm;->j6:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Bd;->DW:Lcom/google/android/gms/internal/ads/gd;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/Cd;->j6(Lcom/google/android/gms/internal/ads/gd;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    const-string v1, "Could not receive loaded message in a timely manner. Rejecting."

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/Ek;->Zo(Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :cond_34
    :goto_34
    monitor-exit v0

    return-void

    :catchall_36
    move-exception v1

    monitor-exit v0
    :try_end_38
    .catchall {:try_start_7 .. :try_end_38} :catchall_36

    throw v1
.end method
