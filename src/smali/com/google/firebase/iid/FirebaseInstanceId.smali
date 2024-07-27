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
    .registers 4

    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x8

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

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

    if-eqz v0, :cond_4

    const-class v0, Lcom/google/firebase/iid/FirebaseInstanceId;

    monitor-enter v0

    :try_start_0
    sget-object v0, Lcom/google/firebase/iid/FirebaseInstanceId;->DW:Lcom/google/firebase/iid/zzaw;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/firebase/iid/zzaw;

    invoke-virtual {p1}, Lcom/google/firebase/FirebaseApp;->j6()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/firebase/iid/zzaw;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/google/firebase/iid/FirebaseInstanceId;->DW:Lcom/google/firebase/iid/zzaw;

    :cond_0
    const-class v0, Lcom/google/firebase/iid/FirebaseInstanceId;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object p1, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->v5:Lcom/google/firebase/FirebaseApp;

    iput-object p2, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->Zo:Lcom/google/firebase/iid/zzan;

    iget-object v0, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->VH:Lcom/google/firebase/iid/b;

    if-nez v0, :cond_1

    const-class v0, Lcom/google/firebase/iid/b;

    invoke-virtual {p1, v0}, Lcom/google/firebase/FirebaseApp;->j6(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/iid/b;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lcom/google/firebase/iid/b;->DW()Z

    move-result v1

    if-eqz v1, :cond_3

    iput-object v0, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->VH:Lcom/google/firebase/iid/b;

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->VH:Lcom/google/firebase/iid/b;

    iput-object v0, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->VH:Lcom/google/firebase/iid/b;

    iput-object p4, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->Hw:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/google/firebase/iid/A;

    sget-object v1, Lcom/google/firebase/iid/FirebaseInstanceId;->DW:Lcom/google/firebase/iid/zzaw;

    invoke-direct {v0, v1}, Lcom/google/firebase/iid/A;-><init>(Lcom/google/firebase/iid/zzaw;)V

    iput-object v0, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->u7:Lcom/google/firebase/iid/A;

    new-instance v0, Lcom/google/firebase/iid/FirebaseInstanceId$a;

    invoke-direct {v0, p0, p5}, Lcom/google/firebase/iid/FirebaseInstanceId$a;-><init>(Lcom/google/firebase/iid/FirebaseInstanceId;Labcd/zy;)V

    iput-object v0, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->EQ:Lcom/google/firebase/iid/FirebaseInstanceId$a;

    new-instance v0, Lcom/google/firebase/iid/r;

    invoke-direct {v0, p3}, Lcom/google/firebase/iid/r;-><init>(Ljava/util/concurrent/Executor;)V

    iput-object v0, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->gn:Lcom/google/firebase/iid/r;

    iget-object v0, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->EQ:Lcom/google/firebase/iid/FirebaseInstanceId$a;

    invoke-virtual {v0}, Lcom/google/firebase/iid/FirebaseInstanceId$a;->j6()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/google/firebase/iid/FirebaseInstanceId;->J0()V

    :cond_2
    return-void

    :cond_3
    new-instance v0, Lcom/google/firebase/iid/P;

    invoke-direct {v0, p1, p2, p3}, Lcom/google/firebase/iid/P;-><init>(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/iid/zzan;Ljava/util/concurrent/Executor;)V

    iput-object v0, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->VH:Lcom/google/firebase/iid/b;

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    const-class v1, Lcom/google/firebase/iid/FirebaseInstanceId;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "FirebaseInstanceId failed to initialize, FirebaseApp is missing project ID"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final DW(Ljava/lang/String;Ljava/lang/String;)Labcd/Yx;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "LYx",
            "<",
            "Lcom/google/firebase/iid/a;",
            ">;"
        }
    .end annotation

    invoke-static {p2}, Lcom/google/firebase/iid/FirebaseInstanceId;->FH(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v4, Labcd/Zx;

    invoke-direct {v4}, Labcd/Zx;-><init>()V

    iget-object v6, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->Hw:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/google/firebase/iid/L;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/firebase/iid/L;-><init>(Lcom/google/firebase/iid/FirebaseInstanceId;Ljava/lang/String;Ljava/lang/String;Labcd/Zx;Ljava/lang/String;)V

    invoke-interface {v6, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    invoke-virtual {v4}, Labcd/Zx;->j6()Labcd/Yx;

    move-result-object v0

    return-object v0
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

    move-result-object v0

    return-object v0
.end method

.method private static FH(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "fcm"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "gcm"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string p0, "*"

    :cond_1
    return-object p0
.end method

.method private final J0()V
    .registers 3

    invoke-virtual {p0}, Lcom/google/firebase/iid/FirebaseInstanceId;->Hw()Lcom/google/firebase/iid/x;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/firebase/iid/FirebaseInstanceId;->u7()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->Zo:Lcom/google/firebase/iid/zzan;

    invoke-virtual {v1}, Lcom/google/firebase/iid/zzan;->DW()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/iid/x;->DW(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->u7:Lcom/google/firebase/iid/A;

    invoke-virtual {v0}, Lcom/google/firebase/iid/A;->j6()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/google/firebase/iid/FirebaseInstanceId;->we()V

    :cond_1
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
    .registers 3

    const/4 v2, 0x3

    const-string v0, "FirebaseInstanceId"

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ne v0, v1, :cond_1

    const-string v0, "FirebaseInstanceId"

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getInstance(Lcom/google/firebase/FirebaseApp;)Lcom/google/firebase/iid/FirebaseInstanceId;
    .registers 3
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    const-class v0, Lcom/google/firebase/iid/FirebaseInstanceId;

    monitor-enter v0

    :try_start_0
    const-class v0, Lcom/google/firebase/iid/FirebaseInstanceId;

    invoke-virtual {p0, v0}, Lcom/google/firebase/FirebaseApp;->j6(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/iid/FirebaseInstanceId;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-class v1, Lcom/google/firebase/iid/FirebaseInstanceId;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    const-class v1, Lcom/google/firebase/iid/FirebaseInstanceId;

    monitor-exit v1

    throw v0
.end method

.method static synthetic j6(Lcom/google/firebase/iid/FirebaseInstanceId;)Lcom/google/firebase/FirebaseApp;
    .registers 2

    iget-object v0, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->v5:Lcom/google/firebase/FirebaseApp;

    return-object v0
.end method

.method private final j6(Labcd/Yx;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LYx",
            "<TT;>;)TT;"
        }
    .end annotation

    const-wide/16 v0, 0x7530

    :try_start_0
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p1, v0, v1, v2}, Labcd/ay;->j6(Labcd/Yx;JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    :goto_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "SERVICE_NOT_AVAILABLE"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_1
    move-exception v0

    move-object v1, v0

    invoke-virtual {v1}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v2, v0, Ljava/io/IOException;

    if-eqz v2, :cond_1

    const-string v1, "INSTANCE_ID_RESET"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/google/firebase/iid/FirebaseInstanceId;->VH()V

    :cond_0
    check-cast v0, Ljava/io/IOException;

    throw v0

    :cond_1
    instance-of v2, v0, Ljava/lang/RuntimeException;

    if-eqz v2, :cond_2

    check-cast v0, Ljava/lang/RuntimeException;

    throw v0

    :cond_2
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_2
    move-exception v0

    goto :goto_0
.end method

.method static j6(Ljava/lang/Runnable;J)V
    .registers 6

    const-class v0, Lcom/google/firebase/iid/FirebaseInstanceId;

    monitor-enter v0

    :try_start_0
    sget-object v0, Lcom/google/firebase/iid/FirebaseInstanceId;->FH:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance v1, Labcd/mx;

    const-string v2, "FirebaseInstanceId"

    invoke-direct {v1, v2}, Labcd/mx;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(ILjava/util/concurrent/ThreadFactory;)V

    sput-object v0, Lcom/google/firebase/iid/FirebaseInstanceId;->FH:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    :cond_0
    sget-object v0, Lcom/google/firebase/iid/FirebaseInstanceId;->FH:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p0, p1, p2, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    const-class v0, Lcom/google/firebase/iid/FirebaseInstanceId;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v0

    const-class v1, Lcom/google/firebase/iid/FirebaseInstanceId;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private final we()V
    .registers 3

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->tp:Z

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/firebase/iid/FirebaseInstanceId;->j6(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method final DW(Ljava/lang/String;)V
    .registers 5

    invoke-virtual {p0}, Lcom/google/firebase/iid/FirebaseInstanceId;->Hw()Lcom/google/firebase/iid/x;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->Zo:Lcom/google/firebase/iid/zzan;

    invoke-virtual {v1}, Lcom/google/firebase/iid/zzan;->DW()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/iid/x;->DW(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/google/firebase/iid/FirebaseInstanceId;->J8()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->VH:Lcom/google/firebase/iid/b;

    iget-object v0, v0, Lcom/google/firebase/iid/x;->DW:Ljava/lang/String;

    invoke-interface {v2, v1, v0, p1}, Lcom/google/firebase/iid/b;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Labcd/Yx;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/firebase/iid/FirebaseInstanceId;->j6(Labcd/Yx;)Ljava/lang/Object;

    return-void

    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "token not available"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
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

    :try_start_0
    sget-object v0, Lcom/google/firebase/iid/FirebaseInstanceId;->DW:Lcom/google/firebase/iid/zzaw;

    invoke-virtual {v0}, Lcom/google/firebase/iid/zzaw;->DW()V

    iget-object v0, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->EQ:Lcom/google/firebase/iid/FirebaseInstanceId$a;

    invoke-virtual {v0}, Lcom/google/firebase/iid/FirebaseInstanceId$a;->j6()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/firebase/iid/FirebaseInstanceId;->we()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
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

    move-result-object v0

    return-object v0
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

    if-eq v0, v1, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/google/firebase/iid/FirebaseInstanceId;->DW(Ljava/lang/String;Ljava/lang/String;)Labcd/Yx;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/firebase/iid/FirebaseInstanceId;->j6(Labcd/Yx;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/iid/a;

    invoke-interface {v0}, Lcom/google/firebase/iid/a;->j6()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "MAIN_THREAD"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final j6(J)V
    .registers 10

    const/4 v2, 0x1

    monitor-enter p0

    const-wide/16 v0, 0x1e

    shl-long v2, p1, v2

    :try_start_0
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    sget-wide v2, Lcom/google/firebase/iid/FirebaseInstanceId;->j6:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    new-instance v0, Lcom/google/firebase/iid/y;

    iget-object v2, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->Zo:Lcom/google/firebase/iid/zzan;

    iget-object v3, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->u7:Lcom/google/firebase/iid/A;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/firebase/iid/y;-><init>(Lcom/google/firebase/iid/FirebaseInstanceId;Lcom/google/firebase/iid/zzan;Lcom/google/firebase/iid/A;J)V

    invoke-static {v0, p1, p2}, Lcom/google/firebase/iid/FirebaseInstanceId;->j6(Ljava/lang/Runnable;J)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->tp:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final j6(Ljava/lang/String;)V
    .registers 5

    invoke-virtual {p0}, Lcom/google/firebase/iid/FirebaseInstanceId;->Hw()Lcom/google/firebase/iid/x;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->Zo:Lcom/google/firebase/iid/zzan;

    invoke-virtual {v1}, Lcom/google/firebase/iid/zzan;->DW()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/iid/x;->DW(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/google/firebase/iid/FirebaseInstanceId;->J8()Ljava/lang/String;

    move-result-object v1

    iget-object v0, v0, Lcom/google/firebase/iid/x;->DW:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->VH:Lcom/google/firebase/iid/b;

    invoke-interface {v2, v1, v0, p1}, Lcom/google/firebase/iid/b;->DW(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Labcd/Yx;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/firebase/iid/FirebaseInstanceId;->j6(Labcd/Yx;)Ljava/lang/Object;

    return-void

    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "token not available"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final synthetic j6(Ljava/lang/String;Ljava/lang/String;Labcd/Zx;Ljava/lang/String;)V
    .registers 14

    invoke-static {}, Lcom/google/firebase/iid/FirebaseInstanceId;->J8()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, p2}, Lcom/google/firebase/iid/FirebaseInstanceId;->FH(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/iid/x;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->Zo:Lcom/google/firebase/iid/zzan;

    invoke-virtual {v1}, Lcom/google/firebase/iid/zzan;->DW()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/iid/x;->DW(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lcom/google/firebase/iid/W;

    iget-object v0, v0, Lcom/google/firebase/iid/x;->DW:Ljava/lang/String;

    invoke-direct {v1, v2, v0}, Lcom/google/firebase/iid/W;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3, v1}, Labcd/Zx;->j6(Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {v0}, Lcom/google/firebase/iid/x;->j6(Lcom/google/firebase/iid/x;)Ljava/lang/String;

    move-result-object v3

    iget-object v6, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->gn:Lcom/google/firebase/iid/r;

    new-instance v0, Lcom/google/firebase/iid/M;

    move-object v1, p0

    move-object v4, p1

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/firebase/iid/M;-><init>(Lcom/google/firebase/iid/FirebaseInstanceId;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, p1, p4, v0}, Lcom/google/firebase/iid/r;->j6(Ljava/lang/String;Ljava/lang/String;Lcom/google/firebase/iid/t;)Labcd/Yx;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->Hw:Ljava/util/concurrent/Executor;

    new-instance v3, Lcom/google/firebase/iid/N;

    move-object v4, p0

    move-object v5, p1

    move-object v6, p4

    move-object v7, p3

    move-object v8, v2

    invoke-direct/range {v3 .. v8}, Lcom/google/firebase/iid/N;-><init>(Lcom/google/firebase/iid/FirebaseInstanceId;Ljava/lang/String;Ljava/lang/String;Labcd/Zx;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v3}, Labcd/Yx;->j6(Ljava/util/concurrent/Executor;Labcd/Ux;)Labcd/Yx;

    goto :goto_0
.end method

.method final synthetic j6(Ljava/lang/String;Ljava/lang/String;Labcd/Zx;Ljava/lang/String;Labcd/Yx;)V
    .registers 12

    invoke-virtual {p5}, Labcd/Yx;->v5()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p5}, Labcd/Yx;->DW()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    sget-object v0, Lcom/google/firebase/iid/FirebaseInstanceId;->DW:Lcom/google/firebase/iid/zzaw;

    const-string v1, ""

    iget-object v2, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->Zo:Lcom/google/firebase/iid/zzan;

    invoke-virtual {v2}, Lcom/google/firebase/iid/zzan;->DW()Ljava/lang/String;

    move-result-object v5

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/google/firebase/iid/zzaw;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/google/firebase/iid/W;

    invoke-direct {v0, p4, v4}, Lcom/google/firebase/iid/W;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3, v0}, Labcd/Zx;->j6(Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p5}, Labcd/Yx;->j6()Ljava/lang/Exception;

    move-result-object v0

    invoke-virtual {p3, v0}, Labcd/Zx;->j6(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method final j6(Z)V
    .registers 3

    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->tp:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
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
