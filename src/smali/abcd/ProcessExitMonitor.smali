.class Labcd/ProcessExitMonitor;
.super Ljava/lang/Thread;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Labcd/ProcessExecutorWrapper;->start()Ljava/io/OutputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static DW:Z
    .annotation runtime Labcd/uu;
    .end annotation
.end field

.field private static j6:Z
    .annotation runtime Labcd/tu;
    .end annotation
.end field


# instance fields
.field final processWrapper:Labcd/ProcessExecutorWrapper;
    .annotation runtime Labcd/vu;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const-class v0, Labcd/ProcessExitMonitor;

    const-wide v2, -0x523c70abaea6c150L    # -3.072680983825631E-88

    const-wide v4, -0x302def21c0abf3a9L    # -3.268573889020874E76

    invoke-static {v0, v2, v3, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Labcd/ProcessExecutorWrapper;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Labcd/ProcessExitMonitor;->processWrapper:Labcd/ProcessExecutorWrapper;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x111a71067ef6b358L
    .end annotation

    const-wide v2, -0x417eb2e6e40d65d7L    # -1.28903719675073E-7

    :try_start_0
    sget-boolean v0, Labcd/ProcessExitMonitor;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x417eb2e6e40d65d7L    # -1.28903719675073E-7

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :try_start_1
    iget-object v0, p0, Labcd/ProcessExitMonitor;->processWrapper:Labcd/ProcessExecutorWrapper;

    invoke-static {v0}, Labcd/ProcessExecutorWrapper;->j6(Labcd/ProcessExecutorWrapper;)Ljava/lang/Process;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Process;->waitFor()I

    iget-object v0, p0, Labcd/ProcessExitMonitor;->processWrapper:Labcd/ProcessExecutorWrapper;

    iget-object v1, p0, Labcd/ProcessExitMonitor;->processWrapper:Labcd/ProcessExecutorWrapper;

    invoke-static {v1}, Labcd/ProcessExecutorWrapper;->j6(Labcd/ProcessExecutorWrapper;)Ljava/lang/Process;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Process;->exitValue()I

    move-result v1

    invoke-static {v0, v1}, Labcd/ProcessExecutorWrapper;->j6(Labcd/ProcessExecutorWrapper;I)I
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    :try_start_2
    iget-object v1, p0, Labcd/ProcessExitMonitor;->processWrapper:Labcd/ProcessExecutorWrapper;

    monitor-enter v1
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    :try_start_3
    iget-object v0, p0, Labcd/ProcessExitMonitor;->processWrapper:Labcd/ProcessExecutorWrapper;

    invoke-static {v0}, Labcd/ProcessExecutorWrapper;->Hw(Labcd/ProcessExecutorWrapper;)I

    iget-object v0, p0, Labcd/ProcessExitMonitor;->processWrapper:Labcd/ProcessExecutorWrapper;

    invoke-static {v0}, Labcd/ProcessExecutorWrapper;->FH(Labcd/ProcessExecutorWrapper;)I

    move-result v0

    if-gtz v0, :cond_1

    iget-object v0, p0, Labcd/ProcessExitMonitor;->processWrapper:Labcd/ProcessExecutorWrapper;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    iget-object v0, p0, Labcd/ProcessExitMonitor;->processWrapper:Labcd/ProcessExecutorWrapper;

    invoke-static {v0}, Labcd/ProcessExecutorWrapper;->v5(Labcd/ProcessExecutorWrapper;)Labcd/ProcessExecutorWrapper$a$a;

    move-result-object v0

    invoke-virtual {v0}, Labcd/ProcessExecutorWrapper$a$a;->j6()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_1
    :goto_1
    :try_start_5
    monitor-exit v1

    :goto_2
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v0
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    sget-boolean v1, Labcd/ProcessExitMonitor;->DW:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0

    :catch_2
    move-exception v0

    goto :goto_1

    :catch_3
    move-exception v0

    goto :goto_0
.end method
