.class final Lcom/google/android/gms/internal/ads/Km;
.super Ljava/util/concurrent/FutureTask;

# interfaces
.implements Lcom/google/android/gms/internal/ads/Hm;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zh;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/FutureTask<",
        "TV;>;",
        "Lcom/google/android/gms/internal/ads/Hm<",
        "TV;>;"
    }
.end annotation


# instance fields
.field private final j6:Lcom/google/android/gms/internal/ads/Im;


# direct methods
.method constructor <init>(Ljava/lang/Runnable;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            "TV;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    new-instance p1, Lcom/google/android/gms/internal/ads/Im;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/Im;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Km;->j6:Lcom/google/android/gms/internal/ads/Im;

    return-void
.end method

.method constructor <init>(Ljava/util/concurrent/Callable;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "TV;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    new-instance p1, Lcom/google/android/gms/internal/ads/Im;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/Im;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Km;->j6:Lcom/google/android/gms/internal/ads/Im;

    return-void
.end method


# virtual methods
.method protected final done()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Km;->j6:Lcom/google/android/gms/internal/ads/Im;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Im;->j6()V

    return-void
.end method

.method public final j6(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Km;->j6:Lcom/google/android/gms/internal/ads/Im;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/Im;->j6(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void
.end method
