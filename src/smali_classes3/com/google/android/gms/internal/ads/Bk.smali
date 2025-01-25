.class final Lcom/google/android/gms/internal/ads/Bk;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final j6:Lcom/google/android/gms/internal/ads/Ak;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/Ak;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Bk;->j6:Lcom/google/android/gms/internal/ads/Ak;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Bk;->j6:Lcom/google/android/gms/internal/ads/Ak;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/Ak;->j6(Lcom/google/android/gms/internal/ads/Ak;Ljava/lang/Thread;)Ljava/lang/Thread;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Bk;->j6:Lcom/google/android/gms/internal/ads/Ak;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Ak;->Hw()V

    return-void
.end method
