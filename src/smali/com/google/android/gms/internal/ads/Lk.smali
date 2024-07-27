.class public final Lcom/google/android/gms/internal/ads/Lk;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zh;
.end annotation


# static fields
.field public static final DW:Lcom/google/android/gms/internal/ads/Lm;

.field public static final FH:Ljava/util/concurrent/ScheduledExecutorService;

.field public static final j6:Lcom/google/android/gms/internal/ads/Lm;


# direct methods
.method static constructor <clinit>()V
    .registers 10

    const-wide/16 v4, 0xa

    const/4 v9, 0x5

    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v2, 0x2

    const v3, 0x7fffffff

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v7}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    const-string v0, "Default"

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Lk;->j6(Ljava/lang/String;)Ljava/util/concurrent/ThreadFactory;

    move-result-object v8

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/Mm;->j6(Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/Lm;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/Lk;->j6:Lcom/google/android/gms/internal/ads/Lm;

    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const-string v0, "Loader"

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Lk;->j6(Ljava/lang/String;)Ljava/util/concurrent/ThreadFactory;

    move-result-object v8

    move v2, v9

    move v3, v9

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/Mm;->j6(Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/Lm;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/Lk;->DW:Lcom/google/android/gms/internal/ads/Lm;

    new-instance v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const/4 v1, 0x3

    const-string v2, "Schedule"

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/Lk;->j6(Ljava/lang/String;)Ljava/util/concurrent/ThreadFactory;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(ILjava/util/concurrent/ThreadFactory;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/Lk;->FH:Ljava/util/concurrent/ScheduledExecutorService;

    return-void
.end method

.method public static j6(Ljava/lang/Runnable;)Lcom/google/android/gms/internal/ads/Hm;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            ")",
            "Lcom/google/android/gms/internal/ads/Hm",
            "<*>;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/ads/Lk;->j6:Lcom/google/android/gms/internal/ads/Lm;

    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/ads/Lm;->j6(Ljava/lang/Runnable;)Lcom/google/android/gms/internal/ads/Hm;

    move-result-object v0

    return-object v0
.end method

.method public static j6(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/internal/ads/Hm;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable",
            "<TT;>;)",
            "Lcom/google/android/gms/internal/ads/Hm",
            "<TT;>;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/ads/Lk;->j6:Lcom/google/android/gms/internal/ads/Lm;

    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/ads/Lm;->j6(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/internal/ads/Hm;

    move-result-object v0

    return-object v0
.end method

.method private static j6(Ljava/lang/String;)Ljava/util/concurrent/ThreadFactory;
    .registers 2

    new-instance v0, Lcom/google/android/gms/internal/ads/Mk;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/Mk;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
