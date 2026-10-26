.class public abstract Labcd/eE;
.super Ljava/lang/Object;

# interfaces
.implements Labcd/LE;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Labcd/eE$a;
    }
.end annotation


# static fields
.field static final DW:Ljava/lang/Object;

.field private static final j6:Ljava/util/concurrent/ScheduledThreadPoolExecutor;


# instance fields
.field private FH:J

.field private Hw:Ljava/util/concurrent/TimeUnit;

.field private v5:Labcd/eE$a;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const/4 v1, 0x1

    new-instance v2, Labcd/cE;

    invoke-direct {v2}, Labcd/cE;-><init>()V

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(ILjava/util/concurrent/ThreadFactory;)V

    sput-object v0, Labcd/eE;->j6:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->setContinueExistingPeriodicTasksAfterShutdownPolicy(Z)V

    invoke-virtual {v0, v3}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->setExecuteExistingDelayedTasksAfterShutdownPolicy(Z)V

    invoke-virtual {v0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->prestartAllCoreThreads()I

    invoke-static {}, Ljava/util/concurrent/Executors;->defaultThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->setThreadFactory(Ljava/util/concurrent/ThreadFactory;)V

    new-instance v0, Labcd/dE;

    invoke-direct {v0}, Labcd/dE;-><init>()V

    sput-object v0, Labcd/eE;->DW:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iput-object v0, p0, Labcd/eE;->Hw:Ljava/util/concurrent/TimeUnit;

    return-void
.end method

.method static synthetic DW()Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    .locals 1

    sget-object v0, Labcd/eE;->j6:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    return-object v0
.end method


# virtual methods
.method protected abstract DW(Ljava/lang/String;I)V
.end method

.method protected abstract DW(Ljava/lang/String;III)V
.end method

.method protected abstract FH(Ljava/lang/String;I)V
.end method

.method public isCancelled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public j6()V
    .locals 1

    iget-object v0, p0, Labcd/eE;->v5:Labcd/eE$a;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Labcd/eE$a;->j6(Labcd/eE;)V

    const/4 v0, 0x0

    iput-object v0, p0, Labcd/eE;->v5:Labcd/eE$a;

    :cond_0
    return-void
.end method

.method public j6(JLjava/util/concurrent/TimeUnit;)V
    .locals 1

    iput-wide p1, p0, Labcd/eE;->FH:J

    iput-object p3, p0, Labcd/eE;->Hw:Ljava/util/concurrent/TimeUnit;

    return-void
.end method

.method public j6(Ljava/lang/String;I)V
    .locals 6

    invoke-virtual {p0}, Labcd/eE;->j6()V

    new-instance v0, Labcd/eE$a;

    invoke-direct {v0, p1, p2}, Labcd/eE$a;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Labcd/eE;->v5:Labcd/eE$a;

    iget-wide v2, p0, Labcd/eE;->FH:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    iget-object v1, p0, Labcd/eE;->Hw:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Labcd/eE$a;->j6(JLjava/util/concurrent/TimeUnit;)V

    :cond_0
    return-void
.end method

.method protected abstract j6(Ljava/lang/String;III)V
.end method

.method public start(I)V
    .locals 0

    return-void
.end method

.method public update(I)V
    .locals 1

    iget-object v0, p0, Labcd/eE;->v5:Labcd/eE$a;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0, p1}, Labcd/eE$a;->j6(Labcd/eE;I)V

    :cond_0
    return-void
.end method
