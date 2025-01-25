.class public Labcd/fw;
.super Ljava/lang/Object;

# interfaces
.implements Labcd/Zv;


# static fields
.field private static final j6:Labcd/_v;


# instance fields
.field private final DW:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Labcd/_v;",
            ">;"
        }
    .end annotation
.end field

.field private final FH:Ljava/lang/Object;

.field private final Hw:Ljava/lang/Object;

.field private final VH:Ljava/util/concurrent/locks/Condition;

.field private final Zo:Ljava/util/concurrent/locks/Condition;

.field private gn:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final v5:Ljava/util/concurrent/locks/ReentrantLock;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Labcd/_v;

    invoke-direct {v0}, Labcd/_v;-><init>()V

    sput-object v0, Labcd/fw;->j6:Labcd/_v;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Labcd/fw;->gn:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Labcd/fw;->DW:Ljava/util/concurrent/BlockingQueue;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Labcd/fw;->FH:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Labcd/fw;->Hw:Ljava/lang/Object;

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Labcd/fw;->v5:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v1

    iput-object v1, p0, Labcd/fw;->Zo:Ljava/util/concurrent/locks/Condition;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Labcd/fw;->VH:Ljava/util/concurrent/locks/Condition;

    return-void
.end method

.method private DW()Ljava/io/File;
    .registers 4

    invoke-static {}, Labcd/ApplicationUtils;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "logfiles-tmp"

    invoke-static {v0, v1}, Labcd/uw;->j6(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/io/File;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v2
.end method

.method static synthetic DW(Labcd/fw;)Ljava/util/concurrent/locks/ReentrantLock;
    .registers 1

    iget-object p0, p0, Labcd/fw;->v5:Ljava/util/concurrent/locks/ReentrantLock;

    return-object p0
.end method

.method static synthetic EQ(Labcd/fw;)Ljava/util/concurrent/locks/Condition;
    .registers 1

    iget-object p0, p0, Labcd/fw;->VH:Ljava/util/concurrent/locks/Condition;

    return-object p0
.end method

.method static synthetic FH(Labcd/fw;)Ljava/io/File;
    .registers 1

    invoke-direct {p0}, Labcd/fw;->Hw()Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method private FH()[Ljava/io/File;
    .registers 3

    invoke-direct {p0}, Labcd/fw;->v5()Ljava/io/File;

    move-result-object v0

    new-instance v1, Labcd/bw;

    invoke-direct {v1, p0}, Labcd/bw;-><init>(Labcd/fw;)V

    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private Hw()Ljava/io/File;
    .registers 4

    new-instance v0, Ljava/io/File;

    invoke-direct {p0}, Labcd/fw;->v5()Ljava/io/File;

    move-result-object v1

    const-string v2, "networking.lock"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method static synthetic Hw(Labcd/fw;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Labcd/fw;->Hw:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic VH(Labcd/fw;)Ljava/io/File;
    .registers 1

    invoke-direct {p0}, Labcd/fw;->DW()Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method static synthetic Zo(Labcd/fw;)Ljava/util/concurrent/BlockingQueue;
    .registers 1

    iget-object p0, p0, Labcd/fw;->DW:Ljava/util/concurrent/BlockingQueue;

    return-object p0
.end method

.method static synthetic gn(Labcd/fw;)Ljava/io/File;
    .registers 1

    invoke-direct {p0}, Labcd/fw;->v5()Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method static synthetic j6()Labcd/_v;
    .registers 1

    sget-object v0, Labcd/fw;->j6:Labcd/_v;

    return-object v0
.end method

.method static synthetic j6(Labcd/fw;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 1

    iget-object p0, p0, Labcd/fw;->gn:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic tp(Labcd/fw;)[Ljava/io/File;
    .registers 1

    invoke-direct {p0}, Labcd/fw;->FH()[Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method static synthetic u7(Labcd/fw;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Labcd/fw;->FH:Ljava/lang/Object;

    return-object p0
.end method

.method private v5()Ljava/io/File;
    .registers 3

    invoke-static {}, Labcd/ApplicationUtils;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "logfiles-outgoing"

    invoke-static {v0, v1}, Labcd/uw;->j6(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method static synthetic v5(Labcd/fw;)Ljava/util/concurrent/locks/Condition;
    .registers 1

    iget-object p0, p0, Labcd/fw;->Zo:Ljava/util/concurrent/locks/Condition;

    return-object p0
.end method


# virtual methods
.method public j6(Labcd/_v;)V
    .registers 3

    iget-object v0, p0, Labcd/fw;->gn:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Labcd/fw;->DW:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    :cond_d
    return-void
.end method

.method public j6(Ljava/lang/String;)V
    .registers 5

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Labcd/cw;

    invoke-direct {v1, p0}, Labcd/cw;-><init>(Labcd/fw;)V

    const-string v2, "a4backbone disk writer"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Labcd/dw;

    invoke-direct {v1, p0, p1}, Labcd/dw;-><init>(Labcd/fw;Ljava/lang/String;)V

    const-string p1, "a4backbone networking"

    invoke-direct {v0, v1, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    new-instance p1, Labcd/ew;

    invoke-direct {p1, p0}, Labcd/ew;-><init>(Labcd/fw;)V

    invoke-static {p1}, Labcd/vw;->j6(Labcd/vw$b;)V

    return-void
.end method

.method public j6(J)Z
    .registers 10

    const-string v0, "Flush"

    :try_start_2
    iget-object v1, p0, Labcd/fw;->v5:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    iget-object v1, p0, Labcd/fw;->DW:Ljava/util/concurrent/BlockingQueue;

    sget-object v2, Labcd/fw;->j6:Labcd/_v;

    invoke-interface {v1, v2}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    const-wide/16 v1, 0x0

    cmp-long v3, p1, v1

    if-lez v3, :cond_4d

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-string v5, "Waiting for all events written to disk."

    invoke-static {v0, v5}, Labcd/yw;->j6(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Labcd/fw;->Zo:Ljava/util/concurrent/locks/Condition;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v5, p1, p2, v6}, Ljava/util/concurrent/locks/Condition;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v5

    if-nez v5, :cond_28

    goto :goto_4d

    :cond_28
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v3

    sub-long/2addr p1, v5

    cmp-long v3, p1, v1

    if-lez v3, :cond_4d

    const-string v1, "Waiting for all files reported."

    invoke-static {v0, v1}, Labcd/yw;->j6(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Labcd/fw;->VH:Ljava/util/concurrent/locks/Condition;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, p1, p2, v2}, Ljava/util/concurrent/locks/Condition;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result p1
    :try_end_3f
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_3f} :catch_47
    .catchall {:try_start_2 .. :try_end_3f} :catchall_45

    iget-object p2, p0, Labcd/fw;->v5:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return p1

    :catchall_45
    move-exception p1

    goto :goto_54

    :catch_47
    move-exception p1

    :try_start_48
    const-string p2, "Unexpected InterruptedException"

    invoke-static {v0, p2, p1}, Labcd/yw;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4d
    .catchall {:try_start_48 .. :try_end_4d} :catchall_45

    :cond_4d
    :goto_4d
    iget-object p1, p0, Labcd/fw;->v5:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    const/4 p1, 0x0

    return p1

    :goto_54
    iget-object p2, p0, Labcd/fw;->v5:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method
