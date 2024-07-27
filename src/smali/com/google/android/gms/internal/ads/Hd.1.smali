.class public final Lcom/google/android/gms/internal/ads/Hd;
.super Lcom/google/android/gms/internal/ads/Xm;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/Xm",
        "<",
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
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Hd;->Zo:Lcom/google/android/gms/internal/ads/Ld;

    return-object v0
.end method


# virtual methods
.method public final FH()V
    .registers 4

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Hd;->v5:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/Hd;->VH:Z

    if-eqz v0, :cond_0

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/Hd;->VH:Z

    new-instance v0, Lcom/google/android/gms/internal/ads/Id;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/Id;-><init>(Lcom/google/android/gms/internal/ads/Hd;)V

    new-instance v2, Lcom/google/android/gms/internal/ads/Vm;

    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/Vm;-><init>()V

    invoke-virtual {p0, v0, v2}, Lcom/google/android/gms/internal/ads/Xm;->j6(Lcom/google/android/gms/internal/ads/Wm;Lcom/google/android/gms/internal/ads/Um;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/Jd;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/Jd;-><init>(Lcom/google/android/gms/internal/ads/Hd;)V

    new-instance v2, Lcom/google/android/gms/internal/ads/Kd;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/ads/Kd;-><init>(Lcom/google/android/gms/internal/ads/Hd;)V

    invoke-virtual {p0, v0, v2}, Lcom/google/android/gms/internal/ads/Xm;->j6(Lcom/google/android/gms/internal/ads/Wm;Lcom/google/android/gms/internal/ads/Um;)V

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
