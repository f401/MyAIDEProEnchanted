.class final synthetic Lcom/google/android/gms/internal/ads/Dm;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final DW:Ljava/util/concurrent/Future;

.field private final j6:Lcom/google/android/gms/internal/ads/Hm;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/Hm;Ljava/util/concurrent/Future;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Dm;->j6:Lcom/google/android/gms/internal/ads/Hm;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/Dm;->DW:Ljava/util/concurrent/Future;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Dm;->j6:Lcom/google/android/gms/internal/ads/Hm;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Dm;->DW:Ljava/util/concurrent/Future;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    invoke-interface {v1, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :cond_e
    return-void
.end method
