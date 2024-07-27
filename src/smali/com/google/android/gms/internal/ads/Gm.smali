.class final Lcom/google/android/gms/internal/ads/Gm;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/Hm;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zh;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/Hm",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final DW:Lcom/google/android/gms/internal/ads/Im;

.field private final j6:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Gm;->j6:Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/internal/ads/Im;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/Im;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Gm;->DW:Lcom/google/android/gms/internal/ads/Im;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Gm;->DW:Lcom/google/android/gms/internal/ads/Im;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Im;->j6()V

    return-void
.end method


# virtual methods
.method public final cancel(Z)Z
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method public final get()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Gm;->j6:Ljava/lang/Object;

    return-object v0
.end method

.method public final get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Gm;->j6:Ljava/lang/Object;

    return-object v0
.end method

.method public final isCancelled()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final isDone()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public final j6(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Gm;->DW:Lcom/google/android/gms/internal/ads/Im;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/Im;->j6(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void
.end method
