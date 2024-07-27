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

.field private static final b:Z

.field private static d:Lcom/baidu/mobstat/bw$a;

.field private static volatile g:Lcom/baidu/android/common/util/DeviceId;

.field private static i:Lcom/baidu/android/common/util/DeviceId$CuidChangeCallback;

.field public static sDataCuidInfoShable:Z


# instance fields
.field private final c:Landroid/content/Context;

.field private e:Lcom/baidu/mobstat/bw;

.field private f:Lcom/baidu/mobstat/bv;

.field private h:Lcom/baidu/mobstat/bl;

.field private j:Ljava/util/concurrent/Executor;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/baidu/android/common/util/DeviceId;->sDataCuidInfoShable:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v1, p0, Lcom/baidu/android/common/util/DeviceId;->j:Ljava/util/concurrent/Executor;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/android/common/util/DeviceId;->c:Landroid/content/Context;

    new-instance v0, Lcom/baidu/mobstat/bl;

    invoke-direct {v0}, Lcom/baidu/mobstat/bl;-><init>()V

    iput-object v0, p0, Lcom/baidu/android/common/util/DeviceId;->h:Lcom/baidu/mobstat/bl;

    new-instance v0, Lcom/baidu/mobstat/bq;

    iget-object v1, p0, Lcom/baidu/android/common/util/DeviceId;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/baidu/mobstat/bq;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/baidu/mobstat/bw;

    iget-object v2, p0, Lcom/baidu/android/common/util/DeviceId;->c:Landroid/content/Context;

    iget-object v3, p0, Lcom/baidu/android/common/util/DeviceId;->h:Lcom/baidu/mobstat/bl;

    invoke-direct {v1, v2, v0, v3}, Lcom/baidu/mobstat/bw;-><init>(Landroid/content/Context;Lcom/baidu/mobstat/bq;Lcom/baidu/mobstat/bl;)V

    iput-object v1, p0, Lcom/baidu/android/common/util/DeviceId;->e:Lcom/baidu/mobstat/bw;

    new-instance v0, Lcom/baidu/mobstat/bv;

    iget-object v1, p0, Lcom/baidu/android/common/util/DeviceId;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/baidu/android/common/util/DeviceId;->h:Lcom/baidu/mobstat/bl;

    invoke-direct {v0, v1, v2}, Lcom/baidu/mobstat/bv;-><init>(Landroid/content/Context;Lcom/baidu/mobstat/bl;)V

    iput-object v0, p0, Lcom/baidu/android/common/util/DeviceId;->f:Lcom/baidu/mobstat/bv;

    return-void
.end method

.method static synthetic a(Lcom/baidu/android/common/util/DeviceId$CuidChangeCallback;)Lcom/baidu/android/common/util/DeviceId$CuidChangeCallback;
    .registers 1

    sput-object p0, Lcom/baidu/android/common/util/DeviceId;->i:Lcom/baidu/android/common/util/DeviceId$CuidChangeCallback;

    return-object p0
.end method

.method static a(Landroid/content/Context;)Lcom/baidu/android/common/util/DeviceId;
    .registers 3

    const-class v0, Lcom/baidu/mobstat/br;

    monitor-enter v0

    :try_start_0
    sget-object v0, Lcom/baidu/android/common/util/DeviceId;->g:Lcom/baidu/android/common/util/DeviceId;

    if-nez v0, :cond_0

    new-instance v0, Lcom/baidu/android/common/util/DeviceId;

    invoke-direct {v0, p0}, Lcom/baidu/android/common/util/DeviceId;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/baidu/android/common/util/DeviceId;->g:Lcom/baidu/android/common/util/DeviceId;

    :cond_0
    sget-object v0, Lcom/baidu/android/common/util/DeviceId;->g:Lcom/baidu/android/common/util/DeviceId;

    const-class v1, Lcom/baidu/mobstat/br;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    const-class v1, Lcom/baidu/mobstat/br;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private a(Ljava/lang/String;)Lcom/baidu/mobstat/bw$a;
    .registers 3

    iget-object v0, p0, Lcom/baidu/android/common/util/DeviceId;->e:Lcom/baidu/mobstat/bw;

    invoke-virtual {v0, p1}, Lcom/baidu/mobstat/bw;->b(Ljava/lang/String;)Lcom/baidu/mobstat/bw$a;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/mobstat/bw$a;
    .registers 4

    iget-object v0, p0, Lcom/baidu/android/common/util/DeviceId;->e:Lcom/baidu/mobstat/bw;

    invoke-virtual {v0, p2}, Lcom/baidu/mobstat/bw;->c(Ljava/lang/String;)Lcom/baidu/mobstat/bw$a;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/baidu/android/common/util/DeviceId;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/mobstat/bw$a;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method static synthetic a(Lcom/baidu/android/common/util/DeviceId;)Lcom/baidu/mobstat/bw;
    .registers 2

    iget-object v0, p0, Lcom/baidu/android/common/util/DeviceId;->e:Lcom/baidu/mobstat/bw;

    return-object v0
.end method

.method static synthetic a(Lcom/baidu/android/common/util/DeviceId;Lcom/baidu/mobstat/bw$a;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/baidu/android/common/util/DeviceId;->b(Lcom/baidu/mobstat/bw$a;)V

    return-void
.end method

.method private a(Lcom/baidu/mobstat/bw$a;)Z
    .registers 5

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Lcom/baidu/mobstat/bw$a;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/baidu/mobstat/bw$a;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lcom/baidu/mobstat/bw$a;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/baidu/mobstat/bw;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic b()Lcom/baidu/android/common/util/DeviceId$CuidChangeCallback;
    .registers 1

    sget-object v0, Lcom/baidu/android/common/util/DeviceId;->i:Lcom/baidu/android/common/util/DeviceId$CuidChangeCallback;

    return-object v0
.end method

.method private static b(Landroid/content/Context;)Lcom/baidu/mobstat/bw$a;
    .registers 3

    sget-object v0, Lcom/baidu/android/common/util/DeviceId;->d:Lcom/baidu/mobstat/bw$a;

    if-nez v0, :cond_1

    const-class v0, Lcom/baidu/mobstat/br;

    monitor-enter v0

    :try_start_0
    sget-object v0, Lcom/baidu/android/common/util/DeviceId;->d:Lcom/baidu/mobstat/bw$a;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    invoke-static {p0}, Lcom/baidu/android/common/util/DeviceId;->a(Landroid/content/Context;)Lcom/baidu/android/common/util/DeviceId;

    move-result-object v0

    invoke-direct {v0}, Lcom/baidu/android/common/util/DeviceId;->c()Lcom/baidu/mobstat/bw$a;

    move-result-object v0

    sput-object v0, Lcom/baidu/android/common/util/DeviceId;->d:Lcom/baidu/mobstat/bw$a;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    :cond_0
    const-class v0, Lcom/baidu/mobstat/br;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    invoke-static {p0}, Lcom/baidu/android/common/util/DeviceId;->a(Landroid/content/Context;)Lcom/baidu/android/common/util/DeviceId;

    move-result-object v0

    invoke-direct {v0}, Lcom/baidu/android/common/util/DeviceId;->d()V

    sget-object v0, Lcom/baidu/android/common/util/DeviceId;->d:Lcom/baidu/mobstat/bw$a;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    const-class v1, Lcom/baidu/mobstat/br;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/mobstat/bw$a;
    .registers 6

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/baidu/android/common/util/DeviceId;->f:Lcom/baidu/mobstat/bv;

    invoke-virtual {v1, p1}, Lcom/baidu/mobstat/bv;->a(Ljava/lang/String;)Lcom/baidu/mobstat/br;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/baidu/mobstat/br;->a:Ljava/lang/String;

    invoke-static {p2, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/baidu/android/common/util/DeviceId;->e:Lcom/baidu/mobstat/bw;

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/bw;->a(Lcom/baidu/mobstat/br;)Lcom/baidu/mobstat/bw$a;

    move-result-object v0

    goto :goto_0
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

    :try_start_0
    invoke-direct {p0}, Lcom/baidu/android/common/util/DeviceId;->e()Lcom/baidu/mobstat/bw$a;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/baidu/android/common/util/DeviceId;->a(Lcom/baidu/mobstat/bw$a;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {v1}, Lcom/baidu/mobstat/bw$a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/baidu/android/common/util/DeviceId;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/mobstat/bw$a;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/baidu/android/common/util/DeviceId;->a(Ljava/lang/String;)Lcom/baidu/mobstat/bw$a;

    move-result-object v0

    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/baidu/mobstat/bw$a;->a(Z)V

    invoke-virtual {v1}, Lcom/baidu/mobstat/bw$a;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/bw$a;->a(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/baidu/android/common/util/DeviceId;->c(Lcom/baidu/mobstat/bw$a;)V

    :goto_0
    return-object v0

    :cond_1
    if-nez v1, :cond_3

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/baidu/android/common/util/DeviceId;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/mobstat/bw$a;

    move-result-object v0

    :goto_1
    if-nez v0, :cond_2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/baidu/android/common/util/DeviceId;->a(Ljava/lang/String;)Lcom/baidu/mobstat/bw$a;

    move-result-object v0

    :cond_2
    invoke-direct {p0, v0}, Lcom/baidu/android/common/util/DeviceId;->c(Lcom/baidu/mobstat/bw$a;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/baidu/android/common/util/DeviceId;->e:Lcom/baidu/mobstat/bw;

    invoke-virtual {v1}, Lcom/baidu/mobstat/bw;->d()V

    throw v0

    :cond_3
    move-object v0, v1

    goto :goto_1
.end method

.method private c(Lcom/baidu/mobstat/bw$a;)V
    .registers 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/baidu/android/common/util/DeviceId;->j:Ljava/util/concurrent/Executor;

    invoke-direct {p0, p1}, Lcom/baidu/android/common/util/DeviceId;->d(Lcom/baidu/mobstat/bw$a;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
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

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/baidu/mobstat/bw$a;->f()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/baidu/mobstat/bw$a;->g()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/android/common/util/DeviceId;->i:Lcom/baidu/android/common/util/DeviceId$CuidChangeCallback;

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/baidu/android/common/util/DeviceId;->j:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/baidu/android/common/util/DeviceId$1;

    invoke-direct {v2, p0, v0}, Lcom/baidu/android/common/util/DeviceId$1;-><init>(Lcom/baidu/android/common/util/DeviceId;Lcom/baidu/mobstat/bw$a;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private e()Lcom/baidu/mobstat/bw$a;
    .registers 2

    invoke-direct {p0}, Lcom/baidu/android/common/util/DeviceId;->f()Lcom/baidu/mobstat/bw$a;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/baidu/android/common/util/DeviceId;->g()Lcom/baidu/mobstat/bw$a;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private e(Lcom/baidu/mobstat/bw$a;)V
    .registers 6

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "cuidV270Info should not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p1}, Lcom/baidu/mobstat/bw$a;->i()Lcom/baidu/mobstat/br;

    move-result-object v0

    invoke-virtual {p1}, Lcom/baidu/mobstat/bw$a;->d()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/baidu/mobstat/bw$a;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    invoke-virtual {p1}, Lcom/baidu/mobstat/bw$a;->h()V

    :cond_2
    iget-object v1, p0, Lcom/baidu/android/common/util/DeviceId;->e:Lcom/baidu/mobstat/bw;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v2, v3}, Lcom/baidu/mobstat/bw;->a(Lcom/baidu/mobstat/bw$a;ZZ)Z

    iget-object v1, p0, Lcom/baidu/android/common/util/DeviceId;->f:Lcom/baidu/mobstat/bv;

    invoke-virtual {v1, v0}, Lcom/baidu/mobstat/bv;->a(Lcom/baidu/mobstat/br;)V

    iget-object v0, p0, Lcom/baidu/android/common/util/DeviceId;->e:Lcom/baidu/mobstat/bw;

    invoke-virtual {v0, p1}, Lcom/baidu/mobstat/bw;->a(Lcom/baidu/mobstat/bw$a;)V

    return-void
.end method

.method private f()Lcom/baidu/mobstat/bw$a;
    .registers 2

    iget-object v0, p0, Lcom/baidu/android/common/util/DeviceId;->e:Lcom/baidu/mobstat/bw;

    invoke-virtual {v0}, Lcom/baidu/mobstat/bw;->a()Lcom/baidu/mobstat/bw$a;

    move-result-object v0

    return-object v0
.end method

.method private g()Lcom/baidu/mobstat/bw$a;
    .registers 5

    const/4 v0, 0x0

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/baidu/android/common/util/DeviceId;->c:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "libcuid.so"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v1}, Lcom/baidu/mobstat/bu;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/baidu/mobstat/br;->b(Ljava/lang/String;)Lcom/baidu/mobstat/br;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/baidu/android/common/util/DeviceId;->e:Lcom/baidu/mobstat/bw;

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/bw;->a(Lcom/baidu/mobstat/br;)Lcom/baidu/mobstat/bw$a;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public static getCUID(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    invoke-static {p0}, Lcom/baidu/android/common/util/DeviceId;->b(Landroid/content/Context;)Lcom/baidu/mobstat/bw$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/bw$a;->k()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDeviceID(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    invoke-static {p0}, Lcom/baidu/android/common/util/DeviceId;->b(Landroid/content/Context;)Lcom/baidu/mobstat/bw$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/bw$a;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getOldCUID(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    invoke-static {p0}, Lcom/baidu/android/common/util/DeviceId;->b(Landroid/content/Context;)Lcom/baidu/mobstat/bw$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/bw$a;->g()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isMySelfTrusted(Landroid/content/Context;)Z
    .registers 3

    invoke-static {p0}, Lcom/baidu/android/common/util/DeviceId;->a(Landroid/content/Context;)Lcom/baidu/android/common/util/DeviceId;

    move-result-object v0

    iget-object v0, v0, Lcom/baidu/android/common/util/DeviceId;->h:Lcom/baidu/mobstat/bl;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/bl;->a(Landroid/content/Context;)Z

    move-result v0

    return v0
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
