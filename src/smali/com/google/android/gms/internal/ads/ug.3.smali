.class final Lcom/google/android/gms/internal/ads/ug;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final j6:Lcom/google/android/gms/internal/ads/tg;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/tg;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ug;->j6:Lcom/google/android/gms/internal/ads/tg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ug;->j6:Lcom/google/android/gms/internal/ads/tg;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/tg;->j6(Lcom/google/android/gms/internal/ads/tg;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v0, "Timed out waiting for WebView to finish loading."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/jm;->j6(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ug;->j6:Lcom/google/android/gms/internal/ads/tg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/tg;->cancel()V

    goto :goto_0
.end method
