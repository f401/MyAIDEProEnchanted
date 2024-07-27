.class public final Lcom/google/android/gms/internal/ads/tD;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/yD;


# instance fields
.field private DW:Lcom/google/android/gms/internal/ads/vD;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/vD",
            "<+",
            "Lcom/google/android/gms/internal/ads/wD;",
            ">;"
        }
    .end annotation
.end field

.field private FH:Ljava/io/IOException;

.field private final j6:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/TD;->j6(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/tD;->j6:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method static synthetic DW(Lcom/google/android/gms/internal/ads/tD;)Ljava/util/concurrent/ExecutorService;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/tD;->j6:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method static synthetic j6(Lcom/google/android/gms/internal/ads/tD;)Lcom/google/android/gms/internal/ads/vD;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/tD;->DW:Lcom/google/android/gms/internal/ads/vD;

    return-object v0
.end method

.method static synthetic j6(Lcom/google/android/gms/internal/ads/tD;Lcom/google/android/gms/internal/ads/vD;)Lcom/google/android/gms/internal/ads/vD;
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/tD;->DW:Lcom/google/android/gms/internal/ads/vD;

    return-object p1
.end method

.method static synthetic j6(Lcom/google/android/gms/internal/ads/tD;Ljava/io/IOException;)Ljava/io/IOException;
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/tD;->FH:Ljava/io/IOException;

    return-object p1
.end method


# virtual methods
.method public final DW()Z
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/tD;->DW:Lcom/google/android/gms/internal/ads/vD;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final FH()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/tD;->DW:Lcom/google/android/gms/internal/ads/vD;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/vD;->j6(Z)V

    return-void
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/wD;Lcom/google/android/gms/internal/ads/uD;I)J
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/google/android/gms/internal/ads/wD;",
            ">(TT;",
            "Lcom/google/android/gms/internal/ads/uD",
            "<TT;>;I)J"
        }
    .end annotation

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/CD;->DW(Z)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    new-instance v0, Lcom/google/android/gms/internal/ads/vD;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/ads/vD;-><init>(Lcom/google/android/gms/internal/ads/tD;Landroid/os/Looper;Lcom/google/android/gms/internal/ads/wD;Lcom/google/android/gms/internal/ads/uD;IJ)V

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/ads/vD;->j6(J)V

    return-wide v6

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final j6()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/tD;->FH:Ljava/io/IOException;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/tD;->DW:Lcom/google/android/gms/internal/ads/vD;

    if-eqz v0, :cond_0

    iget v1, v0, Lcom/google/android/gms/internal/ads/vD;->FH:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/vD;->j6(I)V

    :cond_0
    return-void

    :cond_1
    throw v0
.end method

.method public final j6(I)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/tD;->FH:Ljava/io/IOException;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/tD;->DW:Lcom/google/android/gms/internal/ads/vD;

    if-eqz v0, :cond_0

    iget v1, v0, Lcom/google/android/gms/internal/ads/vD;->FH:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/vD;->j6(I)V

    :cond_0
    return-void

    :cond_1
    throw v0
.end method

.method public final j6(Ljava/lang/Runnable;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/tD;->DW:Lcom/google/android/gms/internal/ads/vD;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/vD;->j6(Z)V

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/tD;->j6:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/tD;->j6:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    return-void
.end method
