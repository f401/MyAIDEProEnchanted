.class public Lcom/google/firebase/iid/FirebaseInstanceId;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/iid/FirebaseInstanceId$a;
    }
.end annotation


# static fields
.field private static DW:Lcom/google/firebase/iid/zzaw;

.field private static FH:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

.field private static final j6:J


# instance fields
.field private final EQ:Lcom/google/firebase/iid/FirebaseInstanceId$a;

.field private final Hw:Ljava/util/concurrent/Executor;

.field private VH:Lcom/google/firebase/iid/b;

.field private final Zo:Lcom/google/firebase/iid/zzan;

.field private final gn:Lcom/google/firebase/iid/r;

.field private tp:Z

.field private final u7:Lcom/google/firebase/iid/A;

.field private final v5:Lcom/google/firebase/FirebaseApp;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x8

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/firebase/iid/FirebaseInstanceId;->j6:J

    return-void
.end method

.method constructor <init>(Lcom/google/firebase/FirebaseApp;Labcd/zy;)V
    .registers 9

    new-instance v2, Lcom/google/firebase/iid/zzan;

    invoke-virtual {p1}, Lcom/google/firebase/FirebaseApp;->j6()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/google/firebase/iid/zzan;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/google/firebase/iid/H;->DW()Ljava/util/concurrent/Executor;

    move-result-object v3

    invoke-static {}, Lcom/google/firebase/iid/H;->DW()Ljava/util/concurrent/Executor;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/firebase/iid/FirebaseInstanceId;-><init>(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/iid/zzan;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Labcd/zy;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/iid/zzan;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Labcd/zy;)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->tp:Z

    invoke-static {p1}, Lcom/google/firebase/iid/zzan;->j6(Lcom/google/firebase/FirebaseApp;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6d

    const-class v0, Lcom/google/firebase/iid/FirebaseInstanceId;

    monitor-enter v0

    :try_start_f
    sget-object v0, Lcom/google/firebase/iid/FirebaseInstanceId;->DW:Lcom/google/firebase/iid/zzaw;

    if-nez v0, :cond_1e

    new-instance v0, Lcom/google/firebase/iid/zzaw;

    invoke-virtual {p1}, Lcom/google/firebase/FirebaseApp;->j6()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/firebase/iid/zzaw;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/google/firebase/iid/FirebaseInstanceId;->DW:Lcom/google/firebase/iid/zzaw;

    :cond_1e
    const-class v0, Lcom/google/firebase/iid/FirebaseInstanceId;

    monitor-exit v0
    :try_end_21
    .catchall {:try_start_f .. :try_end_21} :catchall_68

    iput-object p1, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->v5:Lcom/google/firebase/FirebaseApp;

    iput-object p2, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->Zo:Lcom/google/firebase/iid/zzan;

    iget-object v0, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->VH:Lcom/google/firebase/iid/b;

    if-nez v0, :cond_41

    const-class v0, Lcom/google/firebase/iid/b;

    invoke-virtual {p1, v0}, Lcom/google/firebase/FirebaseApp;->j6(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/iid/b;

    if-eqz v0, :cond_3a

    invoke-interface {v0}, Lcom/google/firebase/iid/b;->DW()Z

    move-result v1

    if-eqz v1, :cond_3a

    goto :goto_3f

    :cond_3a
    new-instance v0, Lcom/google/firebase/iid/P;

    invoke-direct {v0, p1, p2, p3}, Lcom/google/firebase/iid/P;-><init>(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/iid/zzan;Ljava/util/concurrent/Executor;)V

    :goto_3f
    iput-object v0, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->VH:Lcom/google/firebase/iid/b;

    :cond_41
    iget-object p1, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->VH:Lcom/google/firebase/iid/b;

    iput-object p1, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->VH:Lcom/google/firebase/iid/b;

    iput-object p4, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->Hw:Ljava/util/concurrent/Executor;

    new-instance p1, Lcom/google/firebase/iid/A;

    sget-object p2, Lcom/google/firebase/iid/FirebaseInstanceId;->DW:Lcom/google/firebase/iid/zzaw;

    invoke-direct {p1, p2}, Lcom/google/firebase/iid/A;-><init>(Lcom/google/firebase/iid/zzaw;)V

    iput-object p1, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->u7:Lcom/google/firebase/iid/A;

    new-instance p1, Lcom/google/firebase/iid/FirebaseInstanceId$a;

    invoke-direct {p1, p0, p5}, Lcom/google/firebase/iid/FirebaseInstanceId$a;-><init>(Lcom/google/firebase/iid/FirebaseInstanceId;Labcd/zy;)V

    iput-object p1, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->EQ:Lcom/google/firebase/iid/FirebaseInstanceId$a;

    new-instance p2, Lcom/google/firebase/iid/r;

    invoke-direct {p2, p3}, Lcom/google/firebase/iid/r;-><init>(Ljava/util/concurrent/Executor;)V

    iput-object p2, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->gn:Lcom/google/firebase/iid/r;

    invoke-virtual {p1}, Lcom/google/firebase/iid/FirebaseInstanceId$a;->j6()Z

    move-result p1

    if-eqz p1, :cond_67

    invoke-direct {p0}, Lcom/google/firebase/iid/FirebaseInstanceId;->J0()V

    :cond_67
    return-void

    :catchall_68
    move-exception p1

    :try_start_69
    const-class p2, Lcom/google/firebase/iid/FirebaseInstanceId;

    monitor-exit p2
    :try_end_6c
    .catchall {:try_start_69 .. :try_end_6c} :catchall_68

    throw p1

    :cond_6d
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "FirebaseInstanceId failed to initialize, FirebaseApp is missing project ID"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final DW(Ljava/lang/String;Ljava/lang/String;)Labcd/Yx;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "LYx<",
            "Lcom/google/firebase/iid/a;",
            ">;"
        }
    .end annotation

    invoke-static {p2}, Lcom/google/firebase/iid/FirebaseInstanceId;->FH(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Labcd/Zx;

    invoke-direct {v6}, Labcd/Zx;-><init>()V

    iget-object v7, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->Hw:Ljava/util/concurrent/Executor;

    new-instance v8, Lcom/google/firebase/iid/L;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, v6

    invoke-direct/range {v0 .. v5}, Lcom/google/firebase/iid/L;-><init>(Lcom/google/firebase/iid/FirebaseInstanceId;Ljava/lang/String;Ljava/lang/String;Labcd/Zx;Ljava/lang/String;)V

    invoke-interface {v7, v8}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    invoke-virtual {v6}, Labcd/Zx;->j6()Labcd/Yx;

    move-result-object p1

    return-object p1
.end method

.method public static DW()Lcom/google/firebase/iid/FirebaseInstanceId;
    .registers 1

    invoke-static {}, Lcom/google/firebase/FirebaseApp;->getInstance()Lcom/google/firebase/FirebaseApp;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/iid/FirebaseInstanceId;->getInstance(Lcom/google/firebase/FirebaseApp;)Lcom/google/firebase/iid/FirebaseInstanceId;

    move-result-object v0

    return-object v0
.end method

.method static synthetic DW(Lcom/google/firebase/iid/FirebaseInstanceId;)V
    .registers 1

    invoke-direct {p0}, Lcom/google/firebase/iid/FirebaseInstanceId;->J0()V

    return-void
.end method

.method private static FH(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/iid/x;
    .registers 4

    sget-object v0, Lcom/google/firebase/iid/FirebaseInstanceId;->DW:Lcom/google/firebase/iid/zzaw;

    const-string v1, ""

    invoke-virtual {v0, v1, p0, p1}, Lcom/google/firebase/iid/zzaw;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/iid/x;

    move-result-object p0

    return-object p0
.end method

.method private static FH(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_18

    const-string v0, "fcm"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_18

    const-string v0, "gcm"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    goto :goto_18

    :cond_17
    return-object p0

    :cond_18
    :goto_18
    const-string p0, "*"

    return-object p0
.end method

.method private final J0()V
    .registers 3

    invoke-virtual {p0}, Lcom/google/firebase/iid/FirebaseInstanceId;->Hw()Lcom/google/firebase/iid/x;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/firebase/iid/FirebaseInstanceId;->u7()Z

    move-result v1

    if-eqz v1, :cond_20

    if-eqz v0, :cond_20

    iget-object v1, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->Zo:Lcom/google/firebase/iid/zzan;

    invoke-virtual {v1}, Lcom/google/firebase/iid/zzan;->DW()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/iid/x;->DW(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_20

    iget-object v0, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->u7:Lcom/google/firebase/iid/A;

    invoke-virtual {v0}, Lcom/google/firebase/iid/A;->j6()Z

    move-result v0

    if-eqz v0, :cond_23

    :cond_20
    invoke-direct {p0}, Lcom/google/firebase/iid/FirebaseInstanceId;->we()V

    :cond_23
    return-void
.end method

.method private static J8()Ljava/lang/String;
    .registers 2

    sget-object v0, Lcom/google/firebase/iid/FirebaseInstanceId;->DW:Lcom/google/firebase/iid/zzaw;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/google/firebase/iid/zzaw;->DW(Ljava/lang/String;)Lcom/google/firebase/iid/Y;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/iid/Y;->j6()Ljava/security/KeyPair;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/iid/zzan;->j6(Ljava/security/KeyPair;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static Zo()Z
    .registers 4

    const-string v0, "FirebaseInstanceId"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_18

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-ne v2, v3, :cond_16

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_16

    goto :goto_18

    :cond_16
    const/4 v0, 0x0

    return v0

    :cond_18
    :goto_18
    const/4 v0, 0x1

    return v0
.end method

.method public static getInstance(Lcom/google/firebase/FirebaseApp;)Lcom/google/firebase/iid/FirebaseInstanceId;
    .registers 2

    const-class v0, Lcom/google/firebase/iid/FirebaseInstanceId;

    monitor-enter v0

    :try_start_3
    const-class v0, Lcom/google/firebase/iid/FirebaseInstanceId;

    invoke-virtual {p0, v0}, Lcom/google/firebase/FirebaseApp;->j6(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/iid/FirebaseInstanceId;
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_f

    const-class v0, Lcom/google/firebase/iid/FirebaseInstanceId;

    monitor-exit v0

    return-object p0

    :catchall_f
    move-exception p0

    const-class v0, Lcom/google/firebase/iid/FirebaseInstanceId;

    monitor-exit v0

    throw p0
.end method

.method static synthetic j6(Lcom/google/firebase/iid/FirebaseInstanceId;)Lcom/google/firebase/FirebaseApp;
    .registers 1

    iget-object p0, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->v5:Lcom/google/firebase/FirebaseApp;

    return-object p0
.end method

.method private final j6(Labcd/Yx;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LYx<",
            "TT;>;)TT;"
        }
    .end annotation

    :try_start_0
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x7530

    invoke-static {p1, v1, v2, v0}, Labcd/ay;->j6(Labcd/Yx;JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p1
    :try_end_8
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_8} :catch_14
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_8} :catch_b
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_8} :catch_9

    return-object p1

    :catch_9
    move-exception p1

    goto :goto_c

    :catch_b
    move-exception p1

    :goto_c
    new-instance p1, Ljava/io/IOException;

    const-string v0, "SERVICE_NOT_AVAILABLE"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_14
    move-exception p1

    invoke-virtual {p1}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v1, v0, Ljava/io/IOException;

    if-eqz v1, :cond_2f

    const-string p1, "INSTANCE_ID_RESET"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2c

    invoke-virtual {p0}, Lcom/google/firebase/iid/FirebaseInstanceId;->VH()V

    :cond_2c
    check-cast v0, Ljava/io/IOException;

    throw v0

    :cond_2f
    instance-of v1, v0, Ljava/lang/RuntimeException;

    if-eqz v1, :cond_36

    check-cast v0, Ljava/lang/RuntimeException;

    throw v0

    :cond_36
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method static j6(Ljava/lang/Runnable;J)V
    .registers 6

    const-class v0, Lcom/google/firebase/iid/FirebaseInstanceId;

    monitor-enter v0

    :try_start_3
    sget-object v0, Lcom/google/firebase/iid/FirebaseInstanceId;->FH:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    if-nez v0, :cond_16

    new-instance v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance v1, Labcd/mx;

    const-string v2, "FirebaseInstanceId"

    invoke-direct {v1, v2}, Labcd/mx;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(ILjava/util/concurrent/ThreadFactory;)V

    sput-object v0, Lcom/google/firebase/iid/FirebaseInstanceId;->FH:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    :cond_16
    sget-object v0, Lcom/google/firebase/iid/FirebaseInstanceId;->FH:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p0, p1, p2, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    const-class p0, Lcom/google/firebase/iid/FirebaseInstanceId;

    monitor-exit p0

    return-void

    :catchall_21
    move-exception p0

    const-class p1, Lcom/google/firebase/iid/FirebaseInstanceId;

    monitor-exit p1
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_21

    throw p0
.end method

.method private final we()V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->tp:Z

    if-nez v0, :cond_a

    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/firebase/iid/FirebaseInstanceId;->j6(J)V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    :cond_a
    monitor-exit p0

    return-void

    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method final DW(Ljava/lang/String;)V
    .registers 5

    invoke-virtual {p0}, Lcom/google/firebase/iid/FirebaseInstanceId;->Hw()Lcom/google/firebase/iid/x;

    move-result-object v0

    if-eqz v0, :cond_22

    iget-object v1, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->Zo:Lcom/google/firebase/iid/zzan;

    invoke-virtual {v1}, Lcom/google/firebase/iid/zzan;->DW()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/iid/x;->DW(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_22

    invoke-static {}, Lcom/google/firebase/iid/FirebaseInstanceId;->J8()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->VH:Lcom/google/firebase/iid/b;

    iget-object v0, v0, Lcom/google/firebase/iid/x;->DW:Ljava/lang/String;

    invoke-interface {v2, v1, v0, p1}, Lcom/google/firebase/iid/b;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Labcd/Yx;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/firebase/iid/FirebaseInstanceId;->j6(Labcd/Yx;)Ljava/lang/Object;

    return-void

    :cond_22
    new-instance p1, Ljava/io/IOException;

    const-string v0, "token not available"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method final EQ()V
    .registers 3

    sget-object v0, Lcom/google/firebase/iid/FirebaseInstanceId;->DW:Lcom/google/firebase/iid/zzaw;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/google/firebase/iid/zzaw;->FH(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/google/firebase/iid/FirebaseInstanceId;->we()V

    return-void
.end method

.method final FH()Lcom/google/firebase/FirebaseApp;
    .registers 2

    iget-object v0, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->v5:Lcom/google/firebase/FirebaseApp;

    return-object v0
.end method

.method final Hw()Lcom/google/firebase/iid/x;
    .registers 3

    iget-object v0, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->v5:Lcom/google/firebase/FirebaseApp;

    invoke-static {v0}, Lcom/google/firebase/iid/zzan;->j6(Lcom/google/firebase/FirebaseApp;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "*"

    invoke-static {v0, v1}, Lcom/google/firebase/iid/FirebaseInstanceId;->FH(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/iid/x;

    move-result-object v0

    return-object v0
.end method

.method final VH()V
    .registers 2

    monitor-enter p0

    :try_start_1
    sget-object v0, Lcom/google/firebase/iid/FirebaseInstanceId;->DW:Lcom/google/firebase/iid/zzaw;

    invoke-virtual {v0}, Lcom/google/firebase/iid/zzaw;->DW()V

    iget-object v0, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->EQ:Lcom/google/firebase/iid/FirebaseInstanceId$a;

    invoke-virtual {v0}, Lcom/google/firebase/iid/FirebaseInstanceId$a;->j6()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-direct {p0}, Lcom/google/firebase/iid/FirebaseInstanceId;->we()V
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_13

    :cond_11
    monitor-exit p0

    return-void

    :catchall_13
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final gn()Z
    .registers 2

    iget-object v0, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->VH:Lcom/google/firebase/iid/b;

    invoke-interface {v0}, Lcom/google/firebase/iid/b;->DW()Z

    move-result v0

    return v0
.end method

.method final synthetic j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Labcd/Yx;
    .registers 6

    iget-object v0, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->VH:Lcom/google/firebase/iid/b;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/google/firebase/iid/b;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Labcd/Yx;

    move-result-object p1

    return-object p1
.end method

.method public j6()Ljava/lang/String;
    .registers 2

    invoke-direct {p0}, Lcom/google/firebase/iid/FirebaseInstanceId;->J0()V

    invoke-static {}, Lcom/google/firebase/iid/FirebaseInstanceId;->J8()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public j6(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_19

    invoke-direct {p0, p1, p2}, Lcom/google/firebase/iid/FirebaseInstanceId;->DW(Ljava/lang/String;Ljava/lang/String;)Labcd/Yx;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/firebase/iid/FirebaseInstanceId;->j6(Labcd/Yx;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/iid/a;

    invoke-interface {p1}, Lcom/google/firebase/iid/a;->j6()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_19
    new-instance p1, Ljava/io/IOException;

    const-string p2, "MAIN_THREAD"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method final j6(J)V
    .registers 14

    monitor-enter p0

    const-wide/16 v0, 0x1e

    const/4 v2, 0x1

    shl-long v3, p1, v2

    :try_start_6
    invoke-static {v0, v1, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    sget-wide v3, Lcom/google/firebase/iid/FirebaseInstanceId;->j6:J

    invoke-static {v0, v1, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v9

    new-instance v0, Lcom/google/firebase/iid/y;

    iget-object v7, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->Zo:Lcom/google/firebase/iid/zzan;

    iget-object v8, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->u7:Lcom/google/firebase/iid/A;

    move-object v5, v0

    move-object v6, p0

    invoke-direct/range {v5 .. v10}, Lcom/google/firebase/iid/y;-><init>(Lcom/google/firebase/iid/FirebaseInstanceId;Lcom/google/firebase/iid/zzan;Lcom/google/firebase/iid/A;J)V

    invoke-static {v0, p1, p2}, Lcom/google/firebase/iid/FirebaseInstanceId;->j6(Ljava/lang/Runnable;J)V

    iput-boolean v2, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->tp:Z
    :try_end_20
    .catchall {:try_start_6 .. :try_end_20} :catchall_22

    monitor-exit p0

    return-void

    :catchall_22
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method final j6(Ljava/lang/String;)V
    .registers 5

    invoke-virtual {p0}, Lcom/google/firebase/iid/FirebaseInstanceId;->Hw()Lcom/google/firebase/iid/x;

    move-result-object v0

    if-eqz v0, :cond_22

    iget-object v1, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->Zo:Lcom/google/firebase/iid/zzan;

    invoke-virtual {v1}, Lcom/google/firebase/iid/zzan;->DW()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/iid/x;->DW(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_22

    invoke-static {}, Lcom/google/firebase/iid/FirebaseInstanceId;->J8()Ljava/lang/String;

    move-result-object v1

    iget-object v0, v0, Lcom/google/firebase/iid/x;->DW:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->VH:Lcom/google/firebase/iid/b;

    invoke-interface {v2, v1, v0, p1}, Lcom/google/firebase/iid/b;->DW(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Labcd/Yx;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/firebase/iid/FirebaseInstanceId;->j6(Labcd/Yx;)Ljava/lang/Object;

    return-void

    :cond_22
    new-instance p1, Ljava/io/IOException;

    const-string v0, "token not available"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method final synthetic j6(Ljava/lang/String;Ljava/lang/String;Labcd/Zx;Ljava/lang/String;)V
    .registers 14

    invoke-static {}, Lcom/google/firebase/iid/FirebaseInstanceId;->J8()Ljava/lang/String;

    move-result-object v6

    invoke-static {p1, p2}, Lcom/google/firebase/iid/FirebaseInstanceId;->FH(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/iid/x;

    move-result-object p2

    if-eqz p2, :cond_21

    iget-object v0, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->Zo:Lcom/google/firebase/iid/zzan;

    invoke-virtual {v0}, Lcom/google/firebase/iid/zzan;->DW()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/firebase/iid/x;->DW(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_21

    new-instance p1, Lcom/google/firebase/iid/W;

    iget-object p2, p2, Lcom/google/firebase/iid/x;->DW:Ljava/lang/String;

    invoke-direct {p1, v6, p2}, Lcom/google/firebase/iid/W;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Labcd/Zx;->j6(Ljava/lang/Object;)V

    return-void

    :cond_21
    invoke-static {p2}, Lcom/google/firebase/iid/x;->j6(Lcom/google/firebase/iid/x;)Ljava/lang/String;

    move-result-object v3

    iget-object p2, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->gn:Lcom/google/firebase/iid/r;

    new-instance v7, Lcom/google/firebase/iid/M;

    move-object v0, v7

    move-object v1, p0

    move-object v2, v6

    move-object v4, p1

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/firebase/iid/M;-><init>(Lcom/google/firebase/iid/FirebaseInstanceId;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, p1, p4, v7}, Lcom/google/firebase/iid/r;->j6(Ljava/lang/String;Ljava/lang/String;Lcom/google/firebase/iid/t;)Labcd/Yx;

    move-result-object p2

    iget-object v7, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->Hw:Ljava/util/concurrent/Executor;

    new-instance v8, Lcom/google/firebase/iid/N;

    move-object v0, v8

    move-object v2, p1

    move-object v3, p4

    move-object v4, p3

    move-object v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/google/firebase/iid/N;-><init>(Lcom/google/firebase/iid/FirebaseInstanceId;Ljava/lang/String;Ljava/lang/String;Labcd/Zx;Ljava/lang/String;)V

    invoke-virtual {p2, v7, v8}, Labcd/Yx;->j6(Ljava/util/concurrent/Executor;Labcd/Ux;)Labcd/Yx;

    return-void
.end method

.method final synthetic j6(Ljava/lang/String;Ljava/lang/String;Labcd/Zx;Ljava/lang/String;Labcd/Yx;)V
    .registers 12

    invoke-virtual {p5}, Labcd/Yx;->v5()Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-virtual {p5}, Labcd/Yx;->DW()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/String;

    sget-object v0, Lcom/google/firebase/iid/FirebaseInstanceId;->DW:Lcom/google/firebase/iid/zzaw;

    const-string v1, ""

    iget-object v2, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->Zo:Lcom/google/firebase/iid/zzan;

    invoke-virtual {v2}, Lcom/google/firebase/iid/zzan;->DW()Ljava/lang/String;

    move-result-object v5

    move-object v2, p1

    move-object v3, p2

    move-object v4, p5

    invoke-virtual/range {v0 .. v5}, Lcom/google/firebase/iid/zzaw;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/google/firebase/iid/W;

    invoke-direct {p1, p4, p5}, Lcom/google/firebase/iid/W;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Labcd/Zx;->j6(Ljava/lang/Object;)V

    return-void

    :cond_25
    invoke-virtual {p5}, Labcd/Yx;->j6()Ljava/lang/Exception;

    move-result-object p1

    invoke-virtual {p3, p1}, Labcd/Zx;->j6(Ljava/lang/Exception;)V

    return-void
.end method

.method final j6(Z)V
    .registers 2

    monitor-enter p0

    :try_start_1
    iput-boolean p1, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->tp:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-void

    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method final tp()V
    .registers 4

    invoke-static {}, Lcom/google/firebase/iid/FirebaseInstanceId;->J8()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/firebase/iid/FirebaseInstanceId;->Hw()Lcom/google/firebase/iid/x;

    move-result-object v1

    invoke-static {v1}, Lcom/google/firebase/iid/x;->j6(Lcom/google/firebase/iid/x;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->VH:Lcom/google/firebase/iid/b;

    invoke-interface {v2, v0, v1}, Lcom/google/firebase/iid/b;->j6(Ljava/lang/String;Ljava/lang/String;)Labcd/Yx;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/firebase/iid/FirebaseInstanceId;->j6(Labcd/Yx;)Ljava/lang/Object;

    return-void
.end method

.method final u7()Z
    .registers 2

    iget-object v0, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->VH:Lcom/google/firebase/iid/b;

    invoke-interface {v0}, Lcom/google/firebase/iid/b;->j6()Z

    move-result v0

    return v0
.end method

.method final v5()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->v5:Lcom/google/firebase/FirebaseApp;

    invoke-static {v0}, Lcom/google/firebase/iid/zzan;->j6(Lcom/google/firebase/FirebaseApp;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "*"

    invoke-virtual {p0, v0, v1}, Lcom/google/firebase/iid/FirebaseInstanceId;->j6(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
