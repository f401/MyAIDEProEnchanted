.class public final Lcom/google/android/gms/internal/ads/QF;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zh;
.end annotation


# instance fields
.field private DW:Z

.field private final FH:Landroid/content/Context;

.field private final Hw:Ljava/lang/Object;

.field private j6:Lcom/google/android/gms/internal/ads/JF;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/QF;->Hw:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/QF;->FH:Landroid/content/Context;

    return-void
.end method

.method static synthetic DW(Lcom/google/android/gms/internal/ads/QF;)Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/QF;->Hw:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic FH(Lcom/google/android/gms/internal/ads/QF;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/QF;->DW:Z

    return v0
.end method

.method static synthetic Hw(Lcom/google/android/gms/internal/ads/QF;)Lcom/google/android/gms/internal/ads/JF;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/QF;->j6:Lcom/google/android/gms/internal/ads/JF;

    return-object v0
.end method

.method private final j6()V
    .registers 3

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/QF;->Hw:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/QF;->j6:Lcom/google/android/gms/internal/ads/JF;

    if-nez v0, :cond_0

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/QF;->j6:Lcom/google/android/gms/internal/ads/JF;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/c;->disconnect()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/QF;->j6:Lcom/google/android/gms/internal/ads/JF;

    invoke-static {}, Landroid/os/Binder;->flushPendingCommands()V

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic j6(Lcom/google/android/gms/internal/ads/QF;)V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/QF;->j6()V

    return-void
.end method

.method static synthetic j6(Lcom/google/android/gms/internal/ads/QF;Z)Z
    .registers 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/QF;->DW:Z

    return v0
.end method


# virtual methods
.method final j6(Lcom/google/android/gms/internal/ads/zzty;)Ljava/util/concurrent/Future;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzty;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/ads/RF;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/RF;-><init>(Lcom/google/android/gms/internal/ads/QF;)V

    new-instance v1, Lcom/google/android/gms/internal/ads/SF;

    invoke-direct {v1, p0, p1, v0}, Lcom/google/android/gms/internal/ads/SF;-><init>(Lcom/google/android/gms/internal/ads/QF;Lcom/google/android/gms/internal/ads/zzty;Lcom/google/android/gms/internal/ads/Rm;)V

    new-instance v2, Lcom/google/android/gms/internal/ads/WF;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/internal/ads/WF;-><init>(Lcom/google/android/gms/internal/ads/QF;Lcom/google/android/gms/internal/ads/Rm;)V

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/QF;->Hw:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    new-instance v4, Lcom/google/android/gms/internal/ads/JF;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/QF;->FH:Landroid/content/Context;

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->U2()Lcom/google/android/gms/internal/ads/Ll;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/Ll;->DW()Landroid/os/Looper;

    move-result-object v6

    invoke-direct {v4, v5, v6, v1, v2}, Lcom/google/android/gms/internal/ads/JF;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/c$a;Lcom/google/android/gms/common/internal/c$b;)V

    iput-object v4, p0, Lcom/google/android/gms/internal/ads/QF;->j6:Lcom/google/android/gms/internal/ads/JF;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/QF;->j6:Lcom/google/android/gms/internal/ads/JF;

    invoke-virtual {v1}, Lcom/google/android/gms/common/internal/c;->checkAvailabilityAndConnect()V

    monitor-exit v3

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
