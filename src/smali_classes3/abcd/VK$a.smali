.class final Labcd/VK$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/VK;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field private DW:J

.field private FH:Z

.field private j6:Ljava/lang/Thread;


# direct methods
.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Labcd/VK$a;->j6:Ljava/lang/Thread;

    return-void
.end method

.method private static FH()J
    .registers 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method DW()V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Labcd/VK$a;->FH:Z

    if-nez v0, :cond_f

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Labcd/VK$a;->DW:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Labcd/VK$a;->FH:Z

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_11

    :cond_f
    monitor-exit p0

    return-void

    :catchall_11
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method j6()V
    .registers 6

    monitor-enter p0

    :try_start_1
    iget-wide v0, p0, Labcd/VK$a;->DW:J

    const-wide/16 v2, 0x0

    cmp-long v4, v2, v0

    if-nez v4, :cond_d

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    goto :goto_f

    :cond_d
    iput-wide v2, p0, Labcd/VK$a;->DW:J

    :goto_f
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_14

    monitor-exit p0

    return-void

    :catchall_14
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method j6(I)V
    .registers 6

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Labcd/VK$a;->FH:Z

    if-nez v0, :cond_18

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Labcd/VK$a;->j6:Ljava/lang/Thread;

    invoke-static {}, Labcd/VK$a;->FH()J

    move-result-wide v0

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Labcd/VK$a;->DW:J

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_24

    monitor-exit p0

    return-void

    :cond_18
    :try_start_18
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v0

    iget-object v0, v0, Lorg/eclipse/jgit/JGitText;->timerAlreadyTerminated:Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_24
    .catchall {:try_start_18 .. :try_end_24} :catchall_24

    :catchall_24
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public run()V
    .registers 7

    monitor-enter p0

    :goto_1
    :try_start_1
    iget-boolean v0, p0, Labcd/VK$a;->FH:Z

    if-nez v0, :cond_33

    iget-object v0, p0, Labcd/VK$a;->j6:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_35

    if-nez v0, :cond_e

    goto :goto_33

    :cond_e
    :try_start_e
    iget-wide v0, p0, Labcd/VK$a;->DW:J

    const-wide/16 v2, 0x0

    cmp-long v4, v2, v0

    if-gez v4, :cond_2b

    invoke-static {}, Labcd/VK$a;->FH()J

    move-result-wide v4

    sub-long/2addr v0, v4

    cmp-long v4, v0, v2

    if-gtz v4, :cond_27

    iput-wide v2, p0, Labcd/VK$a;->DW:J

    iget-object v0, p0, Labcd/VK$a;->j6:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_1

    :cond_27
    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V

    goto :goto_1

    :cond_2b
    const-wide/16 v0, 0x3e8

    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_30
    .catch Ljava/lang/InterruptedException; {:try_start_e .. :try_end_30} :catch_31
    .catchall {:try_start_e .. :try_end_30} :catchall_35

    goto :goto_1

    :catch_31
    move-exception v0

    goto :goto_1

    :cond_33
    :goto_33
    monitor-exit p0

    return-void

    :catchall_35
    move-exception v0

    monitor-exit p0

    goto :goto_39

    :goto_38
    throw v0

    :goto_39
    goto :goto_38
.end method
