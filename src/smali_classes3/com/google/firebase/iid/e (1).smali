.class public final Lcom/google/firebase/iid/e;
.super Ljava/lang/Object;


# static fields
.field private static j6:Lcom/google/firebase/iid/e;


# instance fields
.field private final DW:Landroid/content/Context;

.field private final FH:Ljava/util/concurrent/ScheduledExecutorService;

.field private Hw:Lcom/google/firebase/iid/g;

.field private v5:I


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/util/concurrent/ScheduledExecutorService;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/firebase/iid/g;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/firebase/iid/g;-><init>(Lcom/google/firebase/iid/e;Lcom/google/firebase/iid/f;)V

    iput-object v0, p0, Lcom/google/firebase/iid/e;->Hw:Lcom/google/firebase/iid/g;

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/firebase/iid/e;->v5:I

    iput-object p2, p0, Lcom/google/firebase/iid/e;->FH:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/iid/e;->DW:Landroid/content/Context;

    return-void
.end method

.method static synthetic DW(Lcom/google/firebase/iid/e;)Ljava/util/concurrent/ScheduledExecutorService;
    .registers 1

    iget-object p0, p0, Lcom/google/firebase/iid/e;->FH:Ljava/util/concurrent/ScheduledExecutorService;

    return-object p0
.end method

.method private final j6()I
    .registers 3

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/google/firebase/iid/e;->v5:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/google/firebase/iid/e;->v5:I
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private final j6(Lcom/google/firebase/iid/m;)Labcd/Yx;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/firebase/iid/m<",
            "TT;>;)",
            "LYx<",
            "TT;>;"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    const-string v0, "MessengerIpcClient"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2e

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x9

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Queueing "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "MessengerIpcClient"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2e
    iget-object v0, p0, Lcom/google/firebase/iid/e;->Hw:Lcom/google/firebase/iid/g;

    invoke-virtual {v0, p1}, Lcom/google/firebase/iid/g;->j6(Lcom/google/firebase/iid/m;)Z

    move-result v0

    if-nez v0, :cond_41

    new-instance v0, Lcom/google/firebase/iid/g;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/firebase/iid/g;-><init>(Lcom/google/firebase/iid/e;Lcom/google/firebase/iid/f;)V

    iput-object v0, p0, Lcom/google/firebase/iid/e;->Hw:Lcom/google/firebase/iid/g;

    invoke-virtual {v0, p1}, Lcom/google/firebase/iid/g;->j6(Lcom/google/firebase/iid/m;)Z

    :cond_41
    iget-object p1, p1, Lcom/google/firebase/iid/m;->DW:Labcd/Zx;

    invoke-virtual {p1}, Labcd/Zx;->j6()Labcd/Yx;

    move-result-object p1
    :try_end_47
    .catchall {:try_start_1 .. :try_end_47} :catchall_49

    monitor-exit p0

    return-object p1

    :catchall_49
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method static synthetic j6(Lcom/google/firebase/iid/e;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/google/firebase/iid/e;->DW:Landroid/content/Context;

    return-object p0
.end method

.method public static j6(Landroid/content/Context;)Lcom/google/firebase/iid/e;
    .registers 4

    const-class v0, Lcom/google/firebase/iid/e;

    monitor-enter v0

    :try_start_3
    sget-object v0, Lcom/google/firebase/iid/e;->j6:Lcom/google/firebase/iid/e;

    if-nez v0, :cond_19

    new-instance v0, Lcom/google/firebase/iid/e;

    new-instance v1, Labcd/mx;

    const-string v2, "MessengerIpcClient"

    invoke-direct {v1, v2}, Labcd/mx;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/firebase/iid/e;-><init>(Landroid/content/Context;Ljava/util/concurrent/ScheduledExecutorService;)V

    sput-object v0, Lcom/google/firebase/iid/e;->j6:Lcom/google/firebase/iid/e;

    :cond_19
    sget-object p0, Lcom/google/firebase/iid/e;->j6:Lcom/google/firebase/iid/e;
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_1f

    const-class v0, Lcom/google/firebase/iid/e;

    monitor-exit v0

    return-object p0

    :catchall_1f
    move-exception p0

    const-class v0, Lcom/google/firebase/iid/e;

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public final j6(ILandroid/os/Bundle;)Labcd/Yx;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "LYx<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    new-instance p1, Lcom/google/firebase/iid/o;

    invoke-direct {p0}, Lcom/google/firebase/iid/e;->j6()I

    move-result v0

    const/4 v1, 0x1

    invoke-direct {p1, v0, v1, p2}, Lcom/google/firebase/iid/o;-><init>(IILandroid/os/Bundle;)V

    invoke-direct {p0, p1}, Lcom/google/firebase/iid/e;->j6(Lcom/google/firebase/iid/m;)Labcd/Yx;

    move-result-object p1

    return-object p1
.end method
