.class final Lcom/google/android/gms/internal/ads/uh;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# instance fields
.field private final DW:Lcom/google/android/gms/internal/ads/th;

.field private final j6:Ljava/lang/Thread$UncaughtExceptionHandler;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/th;Ljava/lang/Thread$UncaughtExceptionHandler;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/uh;->DW:Lcom/google/android/gms/internal/ads/th;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/uh;->j6:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .registers 5

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/uh;->DW:Lcom/google/android/gms/internal/ads/th;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/th;->j6(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_d

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/uh;->j6:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_1a

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    return-void

    :catchall_d
    move-exception v0

    :try_start_e
    const-string v0, "AdMob exception reporter failed reporting the exception."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/jm;->j6(Ljava/lang/String;)V
    :try_end_13
    .catchall {:try_start_e .. :try_end_13} :catchall_1b

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/uh;->j6:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_1a

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    :cond_1a
    return-void

    :catchall_1b
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/uh;->j6:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v1, :cond_23

    invoke-interface {v1, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    :cond_23
    throw v0
.end method
