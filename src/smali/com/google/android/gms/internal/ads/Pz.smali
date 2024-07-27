.class public final Lcom/google/android/gms/internal/ads/Pz;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/b;


# instance fields
.field private final j6:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/pA;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/pA;-><init>(Lcom/google/android/gms/internal/ads/Pz;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Pz;->j6:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public final j6(Lcom/google/android/gms/internal/ads/lE;Lcom/google/android/gms/internal/ads/db;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/lE",
            "<*>;",
            "Lcom/google/android/gms/internal/ads/db;",
            ")V"
        }
    .end annotation

    const-string v0, "post-error"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/lE;->j6(Ljava/lang/String;)V

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/wH;->j6(Lcom/google/android/gms/internal/ads/db;)Lcom/google/android/gms/internal/ads/wH;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Pz;->j6:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/google/android/gms/internal/ads/QA;

    const/4 v3, 0x0

    invoke-direct {v2, p1, v0, v3}, Lcom/google/android/gms/internal/ads/QA;-><init>(Lcom/google/android/gms/internal/ads/lE;Lcom/google/android/gms/internal/ads/wH;Ljava/lang/Runnable;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/lE;Lcom/google/android/gms/internal/ads/wH;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/lE",
            "<*>;",
            "Lcom/google/android/gms/internal/ads/wH",
            "<*>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/gms/internal/ads/Pz;->j6(Lcom/google/android/gms/internal/ads/lE;Lcom/google/android/gms/internal/ads/wH;Ljava/lang/Runnable;)V

    return-void
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/lE;Lcom/google/android/gms/internal/ads/wH;Ljava/lang/Runnable;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/lE",
            "<*>;",
            "Lcom/google/android/gms/internal/ads/wH",
            "<*>;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/lE;->lg()V

    const-string v0, "post-response"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/lE;->j6(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Pz;->j6:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/android/gms/internal/ads/QA;

    invoke-direct {v1, p1, p2, p3}, Lcom/google/android/gms/internal/ads/QA;-><init>(Lcom/google/android/gms/internal/ads/lE;Lcom/google/android/gms/internal/ads/wH;Ljava/lang/Runnable;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
