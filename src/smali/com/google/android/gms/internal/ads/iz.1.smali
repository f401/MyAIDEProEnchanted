.class final Lcom/google/android/gms/internal/ads/iz;
.super Ljava/lang/Thread;


# instance fields
.field private final DW:Lcom/google/android/gms/internal/ads/hz;

.field private final j6:Landroid/media/AudioTrack;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/hz;Landroid/media/AudioTrack;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/iz;->DW:Lcom/google/android/gms/internal/ads/hz;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/iz;->j6:Landroid/media/AudioTrack;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/iz;->j6:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->flush()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/iz;->j6:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/iz;->DW:Lcom/google/android/gms/internal/ads/hz;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/hz;->j6(Lcom/google/android/gms/internal/ads/hz;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/iz;->DW:Lcom/google/android/gms/internal/ads/hz;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/hz;->j6(Lcom/google/android/gms/internal/ads/hz;)Landroid/os/ConditionVariable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/ConditionVariable;->open()V

    throw v0
.end method
