.class public final Lcom/google/android/gms/internal/ads/Hd;
.super Lcom/google/android/gms/internal/ads/Xm;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/Xm<",
        "Lcom/google/android/gms/internal/ads/Qd;",
        ">;"
    }
.end annotation


# instance fields
.field private VH:Z

.field private final Zo:Lcom/google/android/gms/internal/ads/Ld;

.field private final v5:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/Ld;)V
    .registers 3

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/Xm;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Hd;->v5:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Hd;->Zo:Lcom/google/android/gms/internal/ads/Ld;

    return-void
.end method

.method static synthetic j6(Lcom/google/android/gms/internal/ads/Hd;)Lcom/google/android/gms/internal/ads/Ld;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/Hd;->Zo:Lcom/google/android/gms/internal/ads/Ld;

    return-object p0
.end method


# virtual methods
.method public final FH()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Hd;->v5:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/Hd;->VH:Z

    if-eqz v1, :cond_9

    monitor-exit v0

    return-void

    :cond_9
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/Hd;->VH:Z

    new-instance v1, Lcom/google/android/gms/internal/ads/Id;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/Id;-><init>(Lcom/google/android/gms/internal/ads/Hd;)V

    new-instance v2, Lcom/google/android/gms/internal/ads/Vm;

    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/Vm;-><init>()V

    invoke-virtual {p0, v1, v2}, Lcom/google/android/gms/internal/ads/Xm;->j6(Lcom/google/android/gms/internal/ads/Wm;Lcom/google/android/gms/internal/ads/Um;)V

    new-instance v1, Lcom/google/android/gms/internal/ads/Jd;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/Jd;-><init>(Lcom/google/android/gms/internal/ads/Hd;)V

    new-instance v2, Lcom/google/android/gms/internal/ads/Kd;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/ads/Kd;-><init>(Lcom/google/android/gms/internal/ads/Hd;)V

    invoke-virtual {p0, v1, v2}, Lcom/google/android/gms/internal/ads/Xm;->j6(Lcom/google/android/gms/internal/ads/Wm;Lcom/google/android/gms/internal/ads/Um;)V

    monitor-exit v0

    return-void

    :catchall_28
    move-exception v1

    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_28

    throw v1
.end method
