.class public Lcom/google/android/gms/internal/ads/cx;
.super Ljava/lang/Object;


# static fields
.field protected static volatile DW:Lcom/google/android/gms/internal/ads/zzur;

.field private static volatile FH:Ljava/util/Random;

.field private static final j6:Landroid/os/ConditionVariable;


# instance fields
.field private Hw:Lcom/google/android/gms/internal/ads/Ax;

.field protected volatile v5:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v1, 0x0

    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/cx;->j6:Landroid/os/ConditionVariable;

    sput-object v1, Lcom/google/android/gms/internal/ads/cx;->DW:Lcom/google/android/gms/internal/ads/zzur;

    sput-object v1, Lcom/google/android/gms/internal/ads/cx;->FH:Ljava/util/Random;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/Ax;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/cx;->Hw:Lcom/google/android/gms/internal/ads/Ax;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Ax;->FH()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/dx;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/dx;-><init>(Lcom/google/android/gms/internal/ads/cx;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static DW()I
    .registers 2

    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->current()Ljava/util/concurrent/ThreadLocalRandom;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadLocalRandom;->nextInt()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/cx;->FH()Ljava/util/Random;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/google/android/gms/internal/ads/cx;->FH()Ljava/util/Random;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    goto :goto_0
.end method

.method private static FH()Ljava/util/Random;
    .registers 2

    sget-object v0, Lcom/google/android/gms/internal/ads/cx;->FH:Ljava/util/Random;

    if-nez v0, :cond_1

    const-class v0, Lcom/google/android/gms/internal/ads/cx;

    monitor-enter v0

    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/ads/cx;->FH:Ljava/util/Random;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/cx;->FH:Ljava/util/Random;

    :cond_0
    const-class v0, Lcom/google/android/gms/internal/ads/cx;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/google/android/gms/internal/ads/cx;->FH:Ljava/util/Random;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    const-class v1, Lcom/google/android/gms/internal/ads/cx;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic j6()Landroid/os/ConditionVariable;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/ads/cx;->j6:Landroid/os/ConditionVariable;

    return-object v0
.end method

.method static synthetic j6(Lcom/google/android/gms/internal/ads/cx;)Lcom/google/android/gms/internal/ads/Ax;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cx;->Hw:Lcom/google/android/gms/internal/ads/Ax;

    return-object v0
.end method


# virtual methods
.method public final j6(IIJ)V
    .registers 8

    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/ads/cx;->j6:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cx;->v5:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/ads/cx;->DW:Lcom/google/android/gms/internal/ads/zzur;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/ads/fp;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/fp;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/cx;->Hw:Lcom/google/android/gms/internal/ads/Ax;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/Ax;->DW:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/fp;->FH:Ljava/lang/String;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/fp;->Hw:Ljava/lang/Long;

    sget-object v1, Lcom/google/android/gms/internal/ads/cx;->DW:Lcom/google/android/gms/internal/ads/zzur;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/cw;->j6(Lcom/google/android/gms/internal/ads/cw;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzur;->j6([B)Lcom/google/android/gms/internal/ads/eG;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/eG;->j6(I)Lcom/google/android/gms/internal/ads/eG;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/eG;->DW(I)Lcom/google/android/gms/internal/ads/eG;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/eG;->j6()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
