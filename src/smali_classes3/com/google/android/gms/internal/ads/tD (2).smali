.class public final Lcom/google/android/gms/internal/ads/tD;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/yD;


# instance fields
.field private DW:Lcom/google/android/gms/internal/ads/vD;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/vD<",
            "+",
            "Lcom/google/android/gms/internal/ads/wD;",
            ">;"
        }
    .end annotation
.end field

.field private FH:Ljava/io/IOException;

.field private final j6:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/TD;->j6(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/tD;->j6:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method static synthetic DW(Lcom/google/android/gms/internal/ads/tD;)Ljava/util/concurrent/ExecutorService;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/tD;->j6:Ljava/util/concurrent/ExecutorService;

    return-object p0
.end method

.method static synthetic j6(Lcom/google/android/gms/internal/ads/tD;)Lcom/google/android/gms/internal/ads/vD;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/tD;->DW:Lcom/google/android/gms/internal/ads/vD;

    return-object p0
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

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public final FH()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/tD;->DW:Lcom/google/android/gms/internal/ads/vD;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/vD;->j6(Z)V

    return-void
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/wD;Lcom/google/android/gms/internal/ads/uD;I)J
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/google/android/gms/internal/ads/wD;",
            ">(TT;",
            "Lcom/google/android/gms/internal/ads/uD<",
            "TT;>;I)J"
        }
    .end annotation

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    if-eqz v2, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/CD;->DW(Z)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    new-instance v10, Lcom/google/android/gms/internal/ads/vD;

    move-object v0, v10

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-wide v6, v8

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/ads/vD;-><init>(Lcom/google/android/gms/internal/ads/tD;Landroid/os/Looper;Lcom/google/android/gms/internal/ads/wD;Lcom/google/android/gms/internal/ads/uD;IJ)V

    const-wide/16 p1, 0x0

    invoke-virtual {v10, p1, p2}, Lcom/google/android/gms/internal/ads/vD;->j6(J)V

    return-wide v8
.end method

.method public final j6()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/tD;->FH:Ljava/io/IOException;

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/tD;->DW:Lcom/google/android/gms/internal/ads/vD;

    if-eqz v0, :cond_d

    iget v1, v0, Lcom/google/android/gms/internal/ads/vD;->FH:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/vD;->j6(I)V

    :cond_d
    return-void

    :cond_e
    throw v0
.end method

.method public final j6(I)V
    .registers 3

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/tD;->FH:Ljava/io/IOException;

    if-nez p1, :cond_e

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/tD;->DW:Lcom/google/android/gms/internal/ads/vD;

    if-eqz p1, :cond_d

    iget v0, p1, Lcom/google/android/gms/internal/ads/vD;->FH:I

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/vD;->j6(I)V

    :cond_d
    return-void

    :cond_e
    throw p1
.end method

.method public final j6(Ljava/lang/Runnable;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/tD;->DW:Lcom/google/android/gms/internal/ads/vD;

    if-eqz v0, :cond_8

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/vD;->j6(Z)V

    :cond_8
    if-eqz p1, :cond_f

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/tD;->j6:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_f
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/tD;->j6:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    return-void
.end method
