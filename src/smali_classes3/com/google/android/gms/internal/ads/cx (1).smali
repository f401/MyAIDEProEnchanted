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
    .registers 1

    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/cx;->j6:Landroid/os/ConditionVariable;

    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/gms/internal/ads/cx;->DW:Lcom/google/android/gms/internal/ads/zzur;

    sput-object v0, Lcom/google/android/gms/internal/ads/cx;->FH:Ljava/util/Random;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/Ax;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/cx;->Hw:Lcom/google/android/gms/internal/ads/Ax;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Ax;->FH()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    new-instance v0, Lcom/google/android/gms/internal/ads/dx;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/dx;-><init>(Lcom/google/android/gms/internal/ads/cx;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static DW()I
    .registers 2

    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_f

    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->current()Ljava/util/concurrent/ThreadLocalRandom;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadLocalRandom;->nextInt()I

    move-result v0

    return v0

    :cond_f
    invoke-static {}, Lcom/google/android/gms/internal/ads/cx;->FH()Ljava/util/Random;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0
    :try_end_17
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_17} :catch_18

    return v0

    :catch_18
    move-exception v0

    invoke-static {}, Lcom/google/android/gms/internal/ads/cx;->FH()Ljava/util/Random;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    return v0
.end method

.method private static FH()Ljava/util/Random;
    .registers 2

    sget-object v0, Lcom/google/android/gms/internal/ads/cx;->FH:Ljava/util/Random;

    if-nez v0, :cond_1b

    const-class v0, Lcom/google/android/gms/internal/ads/cx;

    monitor-enter v0

    :try_start_7
    sget-object v0, Lcom/google/android/gms/internal/ads/cx;->FH:Ljava/util/Random;

    if-nez v0, :cond_12

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/cx;->FH:Ljava/util/Random;

    :cond_12
    const-class v0, Lcom/google/android/gms/internal/ads/cx;

    monitor-exit v0

    goto :goto_1b

    :catchall_16
    move-exception v0

    const-class v1, Lcom/google/android/gms/internal/ads/cx;

    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_7 .. :try_end_1a} :catchall_16

    throw v0

    :cond_1b
    :goto_1b
    sget-object v0, Lcom/google/android/gms/internal/ads/cx;->FH:Ljava/util/Random;

    return-object v0
.end method

.method static synthetic j6()Landroid/os/ConditionVariable;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/ads/cx;->j6:Landroid/os/ConditionVariable;

    return-object v0
.end method

.method static synthetic j6(Lcom/google/android/gms/internal/ads/cx;)Lcom/google/android/gms/internal/ads/Ax;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/cx;->Hw:Lcom/google/android/gms/internal/ads/Ax;

    return-object p0
.end method


# virtual methods
.method public final j6(IIJ)V
    .registers 7

    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/ads/cx;->j6:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cx;->v5:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3b

    sget-object v0, Lcom/google/android/gms/internal/ads/cx;->DW:Lcom/google/android/gms/internal/ads/zzur;

    if-eqz v0, :cond_3b

    new-instance v0, Lcom/google/android/gms/internal/ads/fp;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/fp;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/cx;->Hw:Lcom/google/android/gms/internal/ads/Ax;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/Ax;->DW:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/fp;->FH:Ljava/lang/String;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    iput-object p3, v0, Lcom/google/android/gms/internal/ads/fp;->Hw:Ljava/lang/Long;

    sget-object p3, Lcom/google/android/gms/internal/ads/cx;->DW:Lcom/google/android/gms/internal/ads/zzur;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/cw;->j6(Lcom/google/android/gms/internal/ads/cw;)[B

    move-result-object p4

    invoke-virtual {p3, p4}, Lcom/google/android/gms/internal/ads/zzur;->j6([B)Lcom/google/android/gms/internal/ads/eG;

    move-result-object p3

    invoke-virtual {p3, p2}, Lcom/google/android/gms/internal/ads/eG;->j6(I)Lcom/google/android/gms/internal/ads/eG;

    invoke-virtual {p3, p1}, Lcom/google/android/gms/internal/ads/eG;->DW(I)Lcom/google/android/gms/internal/ads/eG;

    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/eG;->j6()V
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_39} :catch_3a

    goto :goto_3b

    :catch_3a
    move-exception p1

    :cond_3b
    :goto_3b
    return-void
.end method
