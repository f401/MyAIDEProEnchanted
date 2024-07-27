.class final Lcom/google/android/gms/ads/internal/N;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final DW:Lcom/google/android/gms/ads/internal/M;

.field private final j6:Ljava/lang/ref/WeakReference;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/M;Ljava/lang/ref/WeakReference;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/N;->DW:Lcom/google/android/gms/ads/internal/M;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/N;->j6:Ljava/lang/ref/WeakReference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/N;->DW:Lcom/google/android/gms/ads/internal/M;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/ads/internal/M;->j6(Lcom/google/android/gms/ads/internal/M;Z)Z

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/N;->j6:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/ads/internal/a;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/N;->DW:Lcom/google/android/gms/ads/internal/M;

    invoke-static {v1}, Lcom/google/android/gms/ads/internal/M;->j6(Lcom/google/android/gms/ads/internal/M;)Lcom/google/android/gms/internal/ads/zzwb;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/a;->Hw(Lcom/google/android/gms/internal/ads/zzwb;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/a;->j6(Lcom/google/android/gms/internal/ads/zzwb;)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v2, "Ad is not visible. Not refreshing ad."

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/jm;->FH(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/a;->v5:Lcom/google/android/gms/ads/internal/M;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/M;->DW(Lcom/google/android/gms/internal/ads/zzwb;)V

    goto :goto_0
.end method
