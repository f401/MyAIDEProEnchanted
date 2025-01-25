.class Labcd/Ml;
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
.field final FH:Labcd/ProcessExecutorWrapper;
    .annotation runtime Labcd/vu;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-wide v0, -0x523c70abaea6c150L  # -3.072680983825631E-88

    const-wide v2, -0x302e236ed471bf14L  # -3.231610683058327E76

    const-class v4, Labcd/Ml;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Labcd/ProcessExecutorWrapper;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Labcd/Ml;->FH:Labcd/ProcessExecutorWrapper;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x97c7d2f65c77680L
    .end annotation

    const-wide v0, -0x4177aacfa10a3d2cL  # -1.8129325905391806E-7

    :try_start_5
    sget-boolean v2, Labcd/Ml;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_ab

    :cond_c
    const/4 v0, 0x6

    new-array v0, v0, [B

    :try_start_f
    iget-object v1, p0, Labcd/Ml;->FH:Labcd/ProcessExecutorWrapper;

    invoke-static {v1}, Labcd/ProcessExecutorWrapper;->Zo(Labcd/ProcessExecutorWrapper;)Ljava/io/InputStream;

    move-result-object v1
    :try_end_15
    .catchall {:try_start_f .. :try_end_15} :catchall_a9

    if-eqz v1, :cond_84

    :try_start_17
    iget-object v1, p0, Labcd/Ml;->FH:Labcd/ProcessExecutorWrapper;

    invoke-static {v1}, Labcd/ProcessExecutorWrapper;->Zo(Labcd/ProcessExecutorWrapper;)Ljava/io/InputStream;

    move-result-object v1

    :goto_1d
    invoke-static {v1, v0}, Lcom/a;->a(Ljava/io/InputStream;[B)I

    move-result v1

    if-lez v1, :cond_51

    iget-object v2, p0, Labcd/Ml;->FH:Labcd/ProcessExecutorWrapper;

    invoke-static {v2}, Labcd/ProcessExecutorWrapper;->VH(Labcd/ProcessExecutorWrapper;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_2a} :catch_71
    .catchall {:try_start_17 .. :try_end_2a} :catchall_5c

    :try_start_2a
    iget-object v3, p0, Labcd/Ml;->FH:Labcd/ProcessExecutorWrapper;

    invoke-static {v3}, Labcd/ProcessExecutorWrapper;->gn(Labcd/ProcessExecutorWrapper;)Z

    move-result v3

    if-eqz v3, :cond_34

    monitor-exit v2

    goto :goto_51

    :cond_34
    monitor-exit v2
    :try_end_35
    .catchall {:try_start_2a .. :try_end_35} :catchall_4e

    :try_start_35
    iget-object v2, p0, Labcd/Ml;->FH:Labcd/ProcessExecutorWrapper;

    invoke-static {v2}, Labcd/ProcessExecutorWrapper;->u7(Labcd/ProcessExecutorWrapper;)Ljava/io/OutputStream;

    move-result-object v2

    if-eqz v2, :cond_47

    iget-object v2, p0, Labcd/Ml;->FH:Labcd/ProcessExecutorWrapper;

    invoke-static {v2}, Labcd/ProcessExecutorWrapper;->u7(Labcd/ProcessExecutorWrapper;)Ljava/io/OutputStream;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3, v1}, Ljava/io/OutputStream;->write([BII)V

    :cond_47
    iget-object v1, p0, Labcd/Ml;->FH:Labcd/ProcessExecutorWrapper;

    invoke-static {v1}, Labcd/ProcessExecutorWrapper;->Zo(Labcd/ProcessExecutorWrapper;)Ljava/io/InputStream;

    move-result-object v1
    :try_end_4d
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_4d} :catch_71
    .catchall {:try_start_35 .. :try_end_4d} :catchall_5c

    goto :goto_1d

    :catchall_4e
    move-exception v0

    :try_start_4f
    monitor-exit v2
    :try_end_50
    .catchall {:try_start_4f .. :try_end_50} :catchall_4e

    :try_start_50
    throw v0
    :try_end_51
    .catch Ljava/io/IOException; {:try_start_50 .. :try_end_51} :catch_71
    .catchall {:try_start_50 .. :try_end_51} :catchall_5c

    :cond_51
    :goto_51
    :try_start_51
    iget-object v0, p0, Labcd/Ml;->FH:Labcd/ProcessExecutorWrapper;

    invoke-static {v0}, Labcd/ProcessExecutorWrapper;->u7(Labcd/ProcessExecutorWrapper;)Ljava/io/OutputStream;

    move-result-object v0

    if-eqz v0, :cond_84

    :goto_59
    iget-object v0, p0, Labcd/Ml;->FH:Labcd/ProcessExecutorWrapper;
    :try_end_5b
    .catch Ljava/io/IOException; {:try_start_51 .. :try_end_5b} :catch_83
    .catchall {:try_start_51 .. :try_end_5b} :catchall_a9

    goto :goto_7b

    :catchall_5c
    move-exception v0

    :try_start_5d
    iget-object v1, p0, Labcd/Ml;->FH:Labcd/ProcessExecutorWrapper;

    invoke-static {v1}, Labcd/ProcessExecutorWrapper;->u7(Labcd/ProcessExecutorWrapper;)Ljava/io/OutputStream;

    move-result-object v1

    if-eqz v1, :cond_70

    iget-object v1, p0, Labcd/Ml;->FH:Labcd/ProcessExecutorWrapper;

    invoke-static {v1}, Labcd/ProcessExecutorWrapper;->u7(Labcd/ProcessExecutorWrapper;)Ljava/io/OutputStream;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_6e
    .catch Ljava/io/IOException; {:try_start_5d .. :try_end_6e} :catch_6f
    .catchall {:try_start_5d .. :try_end_6e} :catchall_a9

    goto :goto_70

    :catch_6f
    move-exception v1

    :cond_70
    :goto_70
    :try_start_70
    throw v0
    :try_end_71
    .catchall {:try_start_70 .. :try_end_71} :catchall_a9

    :catch_71
    move-exception v0

    :try_start_72
    iget-object v0, p0, Labcd/Ml;->FH:Labcd/ProcessExecutorWrapper;

    invoke-static {v0}, Labcd/ProcessExecutorWrapper;->u7(Labcd/ProcessExecutorWrapper;)Ljava/io/OutputStream;

    move-result-object v0

    if-eqz v0, :cond_84

    goto :goto_59

    :goto_7b
    invoke-static {v0}, Labcd/ProcessExecutorWrapper;->u7(Labcd/ProcessExecutorWrapper;)Ljava/io/OutputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_82
    .catch Ljava/io/IOException; {:try_start_72 .. :try_end_82} :catch_83
    .catchall {:try_start_72 .. :try_end_82} :catchall_a9

    goto :goto_84

    :catch_83
    move-exception v0

    :cond_84
    :goto_84
    :try_start_84
    iget-object v0, p0, Labcd/Ml;->FH:Labcd/ProcessExecutorWrapper;

    monitor-enter v0
    :try_end_87
    .catchall {:try_start_84 .. :try_end_87} :catchall_a9

    :try_start_87
    iget-object v1, p0, Labcd/Ml;->FH:Labcd/ProcessExecutorWrapper;

    invoke-static {v1}, Labcd/ProcessExecutorWrapper;->Hw(Labcd/ProcessExecutorWrapper;)I

    iget-object v1, p0, Labcd/Ml;->FH:Labcd/ProcessExecutorWrapper;

    invoke-static {v1}, Labcd/ProcessExecutorWrapper;->FH(Labcd/ProcessExecutorWrapper;)I

    move-result v1

    if-gtz v1, :cond_a4

    iget-object v1, p0, Labcd/Ml;->FH:Labcd/ProcessExecutorWrapper;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V
    :try_end_99
    .catchall {:try_start_87 .. :try_end_99} :catchall_a6

    :try_start_99
    iget-object v1, p0, Labcd/Ml;->FH:Labcd/ProcessExecutorWrapper;

    invoke-static {v1}, Labcd/ProcessExecutorWrapper;->v5(Labcd/ProcessExecutorWrapper;)Labcd/ProcessExecutorWrapper$a$a;

    move-result-object v1

    invoke-virtual {v1}, Labcd/ProcessExecutorWrapper$a$a;->j6()V
    :try_end_a2
    .catch Ljava/io/IOException; {:try_start_99 .. :try_end_a2} :catch_a3
    .catchall {:try_start_99 .. :try_end_a2} :catchall_a6

    goto :goto_a4

    :catch_a3
    move-exception v1

    :cond_a4
    :goto_a4
    :try_start_a4
    monitor-exit v0

    goto :goto_aa

    :catchall_a6
    move-exception v1

    monitor-exit v0
    :try_end_a8
    .catchall {:try_start_a4 .. :try_end_a8} :catchall_a6

    :try_start_a8
    throw v1
    :try_end_a9
    .catchall {:try_start_a8 .. :try_end_a9} :catchall_a9

    :catchall_a9
    move-exception v0

    :goto_aa
    return-void

    :catchall_ab
    move-exception v2

    sget-boolean v3, Labcd/Ml;->DW:Z

    if-eqz v3, :cond_b3

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_b3
    goto :goto_b5

    :goto_b4
    throw v2

    :goto_b5
    goto :goto_b4
.end method
