.class public final Lcom/baidu/android/common/util/DeviceId;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/android/common/util/DeviceId$CuidChangeCallback;,
        Lcom/baidu/android/common/util/DeviceId$CuidChangeReceivedCallback;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "DeviceId"

.field private static final b:Z = false

.field private static d:Lcom/baidu/mobstat/bw$a; = null

.field private static volatile g:Lcom/baidu/android/common/util/DeviceId; = null

.field private static i:Lcom/baidu/android/common/util/DeviceId$CuidChangeCallback; = null

.field public static sDataCuidInfoShable:Z = true


# instance fields
.field private final c:Landroid/content/Context;

.field private e:Lcom/baidu/mobstat/bw;

.field private f:Lcom/baidu/mobstat/bv;

.field private h:Lcom/baidu/mobstat/bl;

.field private j:Ljava/util/concurrent/Executor;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v7, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-wide/16 v3, 0x0

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v7, p0, Lcom/baidu/android/common/util/DeviceId;->j:Ljava/util/concurrent/Executor;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/baidu/android/common/util/DeviceId;->c:Landroid/content/Context;

    new-instance v0, Lcom/baidu/mobstat/bl;

    invoke-direct {v0}, Lcom/baidu/mobstat/bl;-><init>()V

    iput-object v0, p0, Lcom/baidu/android/common/util/DeviceId;->h:Lcom/baidu/mobstat/bl;

    new-instance v0, Lcom/baidu/mobstat/bw;

    new-instance v1, Lcom/baidu/mobstat/bq;

    invoke-direct {v1, p1}, Lcom/baidu/mobstat/bq;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/baidu/android/common/util/DeviceId;->h:Lcom/baidu/mobstat/bl;

    invoke-direct {v0, p1, v1, v2}, Lcom/baidu/mobstat/bw;-><init>(Landroid/content/Context;Lcom/baidu/mobstat/bq;Lcom/baidu/mobstat/bl;)V

    iput-object v0, p0, Lcom/baidu/android/common/util/DeviceId;->e:Lcom/baidu/mobstat/bw;

    new-instance v0, Lcom/baidu/mobstat/bv;

    iget-object v1, p0, Lcom/baidu/android/common/util/DeviceId;->h:Lcom/baidu/mobstat/bl;

    invoke-direct {v0, p1, v1}, Lcom/baidu/mobstat/bv;-><init>(Landroid/content/Context;Lcom/baidu/mobstat/bl;)V

    iput-object v0, p0, Lcom/baidu/android/common/util/DeviceId;->f:Lcom/baidu/mobstat/bv;

    return-void
.end method

.method static synthetic a(Lcom/baidu/android/common/util/DeviceId$CuidChangeCallback;)Lcom/baidu/android/common/util/DeviceId$CuidChangeCallback;
    .registers 1

    sput-object p0, Lcom/baidu/android/common/util/DeviceId;->i:Lcom/baidu/android/common/util/DeviceId$CuidChangeCallback;

    return-object p0
.end method

.method static a(Landroid/content/Context;)Lcom/baidu/android/common/util/DeviceId;
    .registers 2

    const-class v0, Lcom/baidu/mobstat/br;

    monitor-enter v0

    :try_start_3
    sget-object v0, Lcom/baidu/android/common/util/DeviceId;->g:Lcom/baidu/android/common/util/DeviceId;

    if-nez v0, :cond_e

    new-instance v0, Lcom/baidu/android/common/util/DeviceId;

    invoke-direct {v0, p0}, Lcom/baidu/android/common/util/DeviceId;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/baidu/android/common/util/DeviceId;->g:Lcom/baidu/android/common/util/DeviceId;

    :cond_e
    sget-object p0, Lcom/baidu/android/common/util/DeviceId;->g:Lcom/baidu/android/common/util/DeviceId;

    const-class v0, Lcom/baidu/mobstat/br;

    monitor-exit v0

    return-object p0

    :catchall_14
    move-exception p0

    const-class v0, Lcom/baidu/mobstat/br;

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_14

    throw p0
.end method

.method private a(Ljava/lang/String;)Lcom/baidu/mobstat/bw$a;
    .registers 3

    iget-object v0, p0, Lcom/baidu/android/common/util/DeviceId;->e:Lcom/baidu/mobstat/bw;

    invoke-virtual {v0, p1}, Lcom/baidu/mobstat/bw;->b(Ljava/lang/String;)Lcom/baidu/mobstat/bw$a;

    move-result-object p1

    return-object p1
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/mobstat/bw$a;
    .registers 4

    iget-object v0, p0, Lcom/baidu/android/common/util/DeviceId;->e:Lcom/baidu/mobstat/bw;

    invoke-virtual {v0, p2}, Lcom/baidu/mobstat/bw;->c(Ljava/lang/String;)Lcom/baidu/mobstat/bw$a;

    move-result-object v0

    if-nez v0, :cond_c

    invoke-direct {p0, p1, p2}, Lcom/baidu/android/common/util/DeviceId;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/mobstat/bw$a;

    move-result-object v0

    :cond_c
    return-object v0
.end method

.method static synthetic a(Lcom/baidu/android/common/util/DeviceId;)Lcom/baidu/mobstat/bw;
    .registers 1

    iget-object p0, p0, Lcom/baidu/android/common/util/DeviceId;->e:Lcom/baidu/mobstat/bw;

    return-object p0
.end method

.method static synthetic a(Lcom/baidu/android/common/util/DeviceId;Lcom/baidu/mobstat/bw$a;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/baidu/android/common/util/DeviceId;->b(Lcom/baidu/mobstat/bw$a;)V

    return-void
.end method

.method private a(Lcom/baidu/mobstat/bw$a;)Z
    .registers 4

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    :cond_4
    invoke-virtual {p1}, Lcom/baidu/mobstat/bw$a;->d()Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-virtual {p1}, Lcom/baidu/mobstat/bw$a;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_15

    goto :goto_25

    :cond_15
    invoke-virtual {p1}, Lcom/baidu/mobstat/bw$a;->e()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/baidu/mobstat/bw;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_25

    const/4 p1, 0x1

    return p1

    :cond_25
    :goto_25
    return v0
.end method

.method static synthetic b()Lcom/baidu/android/common/util/DeviceId$CuidChangeCallback;
    .registers 1

    sget-object v0, Lcom/baidu/android/common/util/DeviceId;->i:Lcom/baidu/android/common/util/DeviceId$CuidChangeCallback;

    return-object v0
.end method

.method private static b(Landroid/content/Context;)Lcom/baidu/mobstat/bw$a;
    .registers 2

    sget-object v0, Lcom/baidu/android/common/util/DeviceId;->d:Lcom/baidu/mobstat/bw$a;

    if-nez v0, :cond_24

    const-class v0, Lcom/baidu/mobstat/br;

    monitor-enter v0

    :try_start_7
    sget-object v0, Lcom/baidu/android/common/util/DeviceId;->d:Lcom/baidu/mobstat/bw$a;

    if-nez v0, :cond_1b

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    invoke-static {p0}, Lcom/baidu/android/common/util/DeviceId;->a(Landroid/content/Context;)Lcom/baidu/android/common/util/DeviceId;

    move-result-object v0

    invoke-direct {v0}, Lcom/baidu/android/common/util/DeviceId;->c()Lcom/baidu/mobstat/bw$a;

    move-result-object v0

    sput-object v0, Lcom/baidu/android/common/util/DeviceId;->d:Lcom/baidu/mobstat/bw$a;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    :cond_1b
    const-class v0, Lcom/baidu/mobstat/br;

    monitor-exit v0

    goto :goto_24

    :catchall_1f
    move-exception p0

    const-class v0, Lcom/baidu/mobstat/br;

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_7 .. :try_end_23} :catchall_1f

    throw p0

    :cond_24
    :goto_24
    invoke-static {p0}, Lcom/baidu/android/common/util/DeviceId;->a(Landroid/content/Context;)Lcom/baidu/android/common/util/DeviceId;

    move-result-object p0

    invoke-direct {p0}, Lcom/baidu/android/common/util/DeviceId;->d()V

    sget-object p0, Lcom/baidu/android/common/util/DeviceId;->d:Lcom/baidu/mobstat/bw$a;

    return-object p0
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/mobstat/bw$a;
    .registers 5

    iget-object v0, p0, Lcom/baidu/android/common/util/DeviceId;->f:Lcom/baidu/mobstat/bv;

    invoke-virtual {v0, p1}, Lcom/baidu/mobstat/bv;->a(Ljava/lang/String;)Lcom/baidu/mobstat/br;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_19

    iget-object v1, p1, Lcom/baidu/mobstat/br;->a:Ljava/lang/String;

    invoke-static {p2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_12

    return-object v0

    :cond_12
    iget-object p2, p0, Lcom/baidu/android/common/util/DeviceId;->e:Lcom/baidu/mobstat/bw;

    invoke-virtual {p2, p1}, Lcom/baidu/mobstat/bw;->a(Lcom/baidu/mobstat/br;)Lcom/baidu/mobstat/bw$a;

    move-result-object p1

    return-object p1

    :cond_19
    return-object v0
.end method

.method static synthetic b(Lcom/baidu/android/common/util/DeviceId;Lcom/baidu/mobstat/bw$a;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/baidu/android/common/util/DeviceId;->e(Lcom/baidu/mobstat/bw$a;)V

    return-void
.end method

.method private b(Lcom/baidu/mobstat/bw$a;)V
    .registers 4

    iget-object v0, p0, Lcom/baidu/android/common/util/DeviceId;->j:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/baidu/android/common/util/DeviceId$2;

    invoke-direct {v1, p0, p1}, Lcom/baidu/android/common/util/DeviceId$2;-><init>(Lcom/baidu/android/common/util/DeviceId;Lcom/baidu/mobstat/bw$a;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private c()Lcom/baidu/mobstat/bw$a;
    .registers 4

    iget-object v0, p0, Lcom/baidu/android/common/util/DeviceId;->e:Lcom/baidu/mobstat/bw;

    invoke-virtual {v0}, Lcom/baidu/mobstat/bw;->c()Z

    :try_start_5
    invoke-direct {p0}, Lcom/baidu/android/common/util/DeviceId;->e()Lcom/baidu/mobstat/bw$a;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/baidu/android/common/util/DeviceId;->a(Lcom/baidu/mobstat/bw$a;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2d

    invoke-virtual {v0}, Lcom/baidu/mobstat/bw$a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v2, v1}, Lcom/baidu/android/common/util/DeviceId;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/mobstat/bw$a;

    move-result-object v1

    if-nez v1, :cond_1e

    invoke-direct {p0, v2}, Lcom/baidu/android/common/util/DeviceId;->a(Ljava/lang/String;)Lcom/baidu/mobstat/bw$a;

    move-result-object v1

    :cond_1e
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/baidu/mobstat/bw$a;->a(Z)V

    invoke-virtual {v0}, Lcom/baidu/mobstat/bw$a;->k()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/baidu/mobstat/bw$a;->a(Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/baidu/android/common/util/DeviceId;->c(Lcom/baidu/mobstat/bw$a;)V

    return-object v1

    :cond_2d
    if-nez v0, :cond_33

    invoke-direct {p0, v2, v2}, Lcom/baidu/android/common/util/DeviceId;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/mobstat/bw$a;

    move-result-object v0

    :cond_33
    if-nez v0, :cond_39

    invoke-direct {p0, v2}, Lcom/baidu/android/common/util/DeviceId;->a(Ljava/lang/String;)Lcom/baidu/mobstat/bw$a;

    move-result-object v0

    :cond_39
    invoke-direct {p0, v0}, Lcom/baidu/android/common/util/DeviceId;->c(Lcom/baidu/mobstat/bw$a;)V
    :try_end_3c
    .catchall {:try_start_5 .. :try_end_3c} :catchall_3d

    return-object v0

    :catchall_3d
    move-exception v0

    iget-object v1, p0, Lcom/baidu/android/common/util/DeviceId;->e:Lcom/baidu/mobstat/bw;

    invoke-virtual {v1}, Lcom/baidu/mobstat/bw;->d()V

    throw v0
.end method

.method private c(Lcom/baidu/mobstat/bw$a;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/baidu/android/common/util/DeviceId;->j:Ljava/util/concurrent/Executor;

    invoke-direct {p0, p1}, Lcom/baidu/android/common/util/DeviceId;->d(Lcom/baidu/mobstat/bw$a;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    monitor-exit p0

    return-void

    :catchall_c
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private d(Lcom/baidu/mobstat/bw$a;)Ljava/lang/Runnable;
    .registers 3

    new-instance v0, Lcom/baidu/android/common/util/DeviceId$3;

    invoke-direct {v0, p0, p1}, Lcom/baidu/android/common/util/DeviceId$3;-><init>(Lcom/baidu/android/common/util/DeviceId;Lcom/baidu/mobstat/bw$a;)V

    return-object v0
.end method

.method private d()V
    .registers 4

    sget-object v0, Lcom/baidu/android/common/util/DeviceId;->d:Lcom/baidu/mobstat/bw$a;

    sget-object v1, Lcom/baidu/android/common/util/DeviceId;->i:Lcom/baidu/android/common/util/DeviceId$CuidChangeCallback;

    if-nez v1, :cond_7

    return-void

    :cond_7
    if-eqz v0, :cond_25

    invoke-virtual {v0}, Lcom/baidu/mobstat/bw$a;->f()Z

    move-result v1

    if-nez v1, :cond_25

    invoke-virtual {v0}, Lcom/baidu/mobstat/bw$a;->g()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1a

    goto :goto_25

    :cond_1a
    iget-object v1, p0, Lcom/baidu/android/common/util/DeviceId;->j:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/baidu/android/common/util/DeviceId$1;

    invoke-direct {v2, p0, v0}, Lcom/baidu/android/common/util/DeviceId$1;-><init>(Lcom/baidu/android/common/util/DeviceId;Lcom/baidu/mobstat/bw$a;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_25
    :goto_25
    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/android/common/util/DeviceId;->i:Lcom/baidu/android/common/util/DeviceId$CuidChangeCallback;

    return-void
.end method

.method private e()Lcom/baidu/mobstat/bw$a;
    .registers 2

    invoke-direct {p0}, Lcom/baidu/android/common/util/DeviceId;->f()Lcom/baidu/mobstat/bw$a;

    move-result-object v0

    if-nez v0, :cond_a

    invoke-direct {p0}, Lcom/baidu/android/common/util/DeviceId;->g()Lcom/baidu/mobstat/bw$a;

    move-result-object v0

    :cond_a
    return-object v0
.end method

.method private e(Lcom/baidu/mobstat/bw$a;)V
    .registers 6

    if-eqz p1, :cond_2b

    invoke-virtual {p1}, Lcom/baidu/mobstat/bw$a;->i()Lcom/baidu/mobstat/br;

    move-result-object v0

    invoke-virtual {p1}, Lcom/baidu/mobstat/bw$a;->d()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-virtual {p1}, Lcom/baidu/mobstat/bw$a;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_19

    :cond_16
    invoke-virtual {p1}, Lcom/baidu/mobstat/bw$a;->h()V

    :cond_19
    iget-object v1, p0, Lcom/baidu/android/common/util/DeviceId;->e:Lcom/baidu/mobstat/bw;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v2, v3}, Lcom/baidu/mobstat/bw;->a(Lcom/baidu/mobstat/bw$a;ZZ)Z

    iget-object v1, p0, Lcom/baidu/android/common/util/DeviceId;->f:Lcom/baidu/mobstat/bv;

    invoke-virtual {v1, v0}, Lcom/baidu/mobstat/bv;->a(Lcom/baidu/mobstat/br;)V

    iget-object v0, p0, Lcom/baidu/android/common/util/DeviceId;->e:Lcom/baidu/mobstat/bw;

    invoke-virtual {v0, p1}, Lcom/baidu/mobstat/bw;->a(Lcom/baidu/mobstat/bw$a;)V

    return-void

    :cond_2b
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "cuidV270Info should not be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private f()Lcom/baidu/mobstat/bw$a;
    .registers 2

    iget-object v0, p0, Lcom/baidu/android/common/util/DeviceId;->e:Lcom/baidu/mobstat/bw;

    invoke-virtual {v0}, Lcom/baidu/mobstat/bw;->a()Lcom/baidu/mobstat/bw$a;

    move-result-object v0

    return-object v0
.end method

.method private g()Lcom/baidu/mobstat/bw$a;
    .registers 4

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/baidu/android/common/util/DeviceId;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "libcuid.so"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-static {v0}, Lcom/baidu/mobstat/bu;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/mobstat/br;->b(Ljava/lang/String;)Lcom/baidu/mobstat/br;

    move-result-object v0

    if-eqz v0, :cond_24

    iget-object v1, p0, Lcom/baidu/android/common/util/DeviceId;->e:Lcom/baidu/mobstat/bw;

    invoke-virtual {v1, v0}, Lcom/baidu/mobstat/bw;->a(Lcom/baidu/mobstat/br;)Lcom/baidu/mobstat/bw$a;

    move-result-object v0

    goto :goto_25

    :cond_24
    const/4 v0, 0x0

    :goto_25
    return-object v0
.end method

.method public static getCUID(Landroid/content/Context;)Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Lcom/baidu/android/common/util/DeviceId;->b(Landroid/content/Context;)Lcom/baidu/mobstat/bw$a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/baidu/mobstat/bw$a;->k()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getDeviceID(Landroid/content/Context;)Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Lcom/baidu/android/common/util/DeviceId;->b(Landroid/content/Context;)Lcom/baidu/mobstat/bw$a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/baidu/mobstat/bw$a;->a()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getOldCUID(Landroid/content/Context;)Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Lcom/baidu/android/common/util/DeviceId;->b(Landroid/content/Context;)Lcom/baidu/mobstat/bw$a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/baidu/mobstat/bw$a;->g()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static isMySelfTrusted(Landroid/content/Context;)Z
    .registers 2

    invoke-static {p0}, Lcom/baidu/android/common/util/DeviceId;->a(Landroid/content/Context;)Lcom/baidu/android/common/util/DeviceId;

    move-result-object v0

    iget-object v0, v0, Lcom/baidu/android/common/util/DeviceId;->h:Lcom/baidu/mobstat/bl;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/baidu/mobstat/bl;->a(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public static registerCuidChangeEvent(Landroid/content/Context;Lcom/baidu/android/common/util/DeviceId$CuidChangeCallback;)V
    .registers 2

    sput-object p1, Lcom/baidu/android/common/util/DeviceId;->i:Lcom/baidu/android/common/util/DeviceId$CuidChangeCallback;

    invoke-static {p0}, Lcom/baidu/android/common/util/DeviceId;->b(Landroid/content/Context;)Lcom/baidu/mobstat/bw$a;

    return-void
.end method

.method public static setCuidDataShable(Landroid/content/Context;Z)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method


# virtual methods
.method a()Lcom/baidu/mobstat/bw;
    .registers 2

    iget-object v0, p0, Lcom/baidu/android/common/util/DeviceId;->e:Lcom/baidu/mobstat/bw;

    return-object v0
.end method
