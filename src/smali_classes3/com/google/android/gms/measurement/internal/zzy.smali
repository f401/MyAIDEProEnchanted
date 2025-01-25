.class abstract Lcom/google/android/gms/measurement/internal/zzy;
.super Ljava/lang/Object;


# static fields
.field private static volatile handler:Landroid/os/Handler;


# instance fields
.field private final zzahn:Lcom/google/android/gms/measurement/internal/zzct;

.field private final zzyo:Ljava/lang/Runnable;

.field private volatile zzyp:J


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzct;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/r;->j6(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzy;->zzahn:Lcom/google/android/gms/measurement/internal/zzct;

    new-instance v0, Lcom/google/android/gms/measurement/internal/zzz;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/measurement/internal/zzz;-><init>(Lcom/google/android/gms/measurement/internal/zzy;Lcom/google/android/gms/measurement/internal/zzct;)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzy;->zzyo:Ljava/lang/Runnable;

    return-void
.end method

.method private final getHandler()Landroid/os/Handler;
    .registers 3

    sget-object v0, Lcom/google/android/gms/measurement/internal/zzy;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_7

    sget-object v0, Lcom/google/android/gms/measurement/internal/zzy;->handler:Landroid/os/Handler;

    return-object v0

    :cond_7
    const-class v0, Lcom/google/android/gms/measurement/internal/zzy;

    monitor-enter v0

    :try_start_a
    sget-object v0, Lcom/google/android/gms/measurement/internal/zzy;->handler:Landroid/os/Handler;

    if-nez v0, :cond_1f

    new-instance v0, Lcom/google/android/gms/internal/measurement/d;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzy;->zzahn:Lcom/google/android/gms/measurement/internal/zzct;

    invoke-interface {v1}, Lcom/google/android/gms/measurement/internal/zzct;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/d;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/google/android/gms/measurement/internal/zzy;->handler:Landroid/os/Handler;

    :cond_1f
    sget-object v0, Lcom/google/android/gms/measurement/internal/zzy;->handler:Landroid/os/Handler;

    const-class v1, Lcom/google/android/gms/measurement/internal/zzy;

    monitor-exit v1

    return-object v0

    :catchall_25
    move-exception v0

    const-class v1, Lcom/google/android/gms/measurement/internal/zzy;

    monitor-exit v1
    :try_end_29
    .catchall {:try_start_a .. :try_end_29} :catchall_25

    throw v0
.end method

.method static synthetic zza(Lcom/google/android/gms/measurement/internal/zzy;J)J
    .registers 3

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lcom/google/android/gms/measurement/internal/zzy;->zzyp:J

    return-wide p1
.end method


# virtual methods
.method final cancel()V
    .registers 3

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/measurement/internal/zzy;->zzyp:J

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzy;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzy;->zzyo:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public abstract run()V
.end method

.method public final zzej()Z
    .registers 6

    iget-wide v0, p0, Lcom/google/android/gms/measurement/internal/zzy;->zzyp:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_a

    const/4 v0, 0x1

    return v0

    :cond_a
    const/4 v0, 0x0

    return v0
.end method

.method public final zzh(J)V
    .registers 6

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzy;->cancel()V

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_34

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzy;->zzahn:Lcom/google/android/gms/measurement/internal/zzct;

    invoke-interface {v0}, Lcom/google/android/gms/measurement/internal/zzct;->zzbx()Lcom/google/android/gms/common/util/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/e;->j6()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/measurement/internal/zzy;->zzyp:J

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzy;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzy;->zzyo:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v0

    if-nez v0, :cond_34

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzy;->zzahn:Lcom/google/android/gms/measurement/internal/zzct;

    invoke-interface {v0}, Lcom/google/android/gms/measurement/internal/zzct;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzas;->zzjg()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v0

    const-string v1, "Failed to schedule delayed post. time"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/measurement/internal/zzau;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_34
    return-void
.end method
