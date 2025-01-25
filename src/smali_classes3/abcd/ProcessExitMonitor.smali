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
    .registers 5

    const-wide v0, -0x523c70abaea6c150L  # -3.072680983825631E-88

    const-wide v2, -0x302def21c0abf3a9L  # -3.268573889020874E76

    const-class v4, Labcd/ProcessExitMonitor;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

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

    const-wide v0, -0x417eb2e6e40d65d7L  # -1.28903719675073E-7

    :try_start_5
    sget-boolean v2, Labcd/ProcessExitMonitor;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_4c

    :cond_c
    :try_start_c
    iget-object v0, p0, Labcd/ProcessExitMonitor;->processWrapper:Labcd/ProcessExecutorWrapper;

    invoke-static {v0}, Labcd/ProcessExecutorWrapper;->j6(Labcd/ProcessExecutorWrapper;)Ljava/lang/Process;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Process;->waitFor()I

    iget-object v0, p0, Labcd/ProcessExitMonitor;->processWrapper:Labcd/ProcessExecutorWrapper;

    invoke-static {v0}, Labcd/ProcessExecutorWrapper;->j6(Labcd/ProcessExecutorWrapper;)Ljava/lang/Process;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Process;->exitValue()I

    move-result v1

    invoke-static {v0, v1}, Labcd/ProcessExecutorWrapper;->j6(Labcd/ProcessExecutorWrapper;I)I
    :try_end_22
    .catch Ljava/lang/InterruptedException; {:try_start_c .. :try_end_22} :catch_25
    .catchall {:try_start_c .. :try_end_22} :catchall_23

    goto :goto_26

    :catchall_23
    move-exception v0

    goto :goto_4b

    :catch_25
    move-exception v0

    :goto_26
    :try_start_26
    iget-object v0, p0, Labcd/ProcessExitMonitor;->processWrapper:Labcd/ProcessExecutorWrapper;

    monitor-enter v0
    :try_end_29
    .catchall {:try_start_26 .. :try_end_29} :catchall_23

    :try_start_29
    iget-object v1, p0, Labcd/ProcessExitMonitor;->processWrapper:Labcd/ProcessExecutorWrapper;

    invoke-static {v1}, Labcd/ProcessExecutorWrapper;->Hw(Labcd/ProcessExecutorWrapper;)I

    iget-object v1, p0, Labcd/ProcessExitMonitor;->processWrapper:Labcd/ProcessExecutorWrapper;

    invoke-static {v1}, Labcd/ProcessExecutorWrapper;->FH(Labcd/ProcessExecutorWrapper;)I

    move-result v1

    if-gtz v1, :cond_46

    iget-object v1, p0, Labcd/ProcessExitMonitor;->processWrapper:Labcd/ProcessExecutorWrapper;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V
    :try_end_3b
    .catchall {:try_start_29 .. :try_end_3b} :catchall_48

    :try_start_3b
    iget-object v1, p0, Labcd/ProcessExitMonitor;->processWrapper:Labcd/ProcessExecutorWrapper;

    invoke-static {v1}, Labcd/ProcessExecutorWrapper;->v5(Labcd/ProcessExecutorWrapper;)Labcd/ProcessExecutorWrapper$a$a;

    move-result-object v1

    invoke-virtual {v1}, Labcd/ProcessExecutorWrapper$a$a;->j6()V
    :try_end_44
    .catch Ljava/io/IOException; {:try_start_3b .. :try_end_44} :catch_45
    .catchall {:try_start_3b .. :try_end_44} :catchall_48

    goto :goto_46

    :catch_45
    move-exception v1

    :cond_46
    :goto_46
    :try_start_46
    monitor-exit v0

    goto :goto_4b

    :catchall_48
    move-exception v1

    monitor-exit v0
    :try_end_4a
    .catchall {:try_start_46 .. :try_end_4a} :catchall_48

    :try_start_4a
    throw v1
    :try_end_4b
    .catchall {:try_start_4a .. :try_end_4b} :catchall_23

    :goto_4b
    return-void

    :catchall_4c
    move-exception v2

    sget-boolean v3, Labcd/ProcessExitMonitor;->DW:Z

    if-eqz v3, :cond_54

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_54
    throw v2
.end method
