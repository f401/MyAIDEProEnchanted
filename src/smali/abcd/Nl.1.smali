.class Labcd/Nl;
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
    .registers 6

    const-class v0, Labcd/Nl;

    const-wide v2, -0x523c70abaea6c150L    # -3.072680983825631E-88

    const-wide v4, -0x302e57bbe7f98a41L    # -3.194647479707564E76

    invoke-static {v0, v2, v3, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Labcd/ProcessExecutorWrapper;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Labcd/Nl;->FH:Labcd/ProcessExecutorWrapper;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x1ea1ff96dd006598L
    .end annotation

    const-wide v2, -0x4170a247a1e2e57fL    # -2.33695614910128E-7

    :try_start_0
    sget-boolean v0, Labcd/Nl;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x4170a247a1e2e57fL    # -2.33695614910128E-7

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    :cond_0
    :try_start_1
    iget-object v0, p0, Labcd/Nl;->FH:Labcd/ProcessExecutorWrapper;

    invoke-static {v0}, Labcd/ProcessExecutorWrapper;->tp(Labcd/ProcessExecutorWrapper;)Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    if-eqz v0, :cond_2

    :try_start_2
    iget-object v0, p0, Labcd/Nl;->FH:Labcd/ProcessExecutorWrapper;

    invoke-static {v0}, Labcd/ProcessExecutorWrapper;->tp(Labcd/ProcessExecutorWrapper;)Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    :goto_0
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget-object v1, p0, Labcd/Nl;->FH:Labcd/ProcessExecutorWrapper;

    invoke-static {v1}, Labcd/ProcessExecutorWrapper;->VH(Labcd/ProcessExecutorWrapper;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    iget-object v2, p0, Labcd/Nl;->FH:Labcd/ProcessExecutorWrapper;

    invoke-static {v2}, Labcd/ProcessExecutorWrapper;->gn(Labcd/ProcessExecutorWrapper;)Z

    move-result v2

    if-eqz v2, :cond_4

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_1
    :try_start_4
    iget-object v0, p0, Labcd/Nl;->FH:Labcd/ProcessExecutorWrapper;

    invoke-static {v0}, Labcd/ProcessExecutorWrapper;->EQ(Labcd/ProcessExecutorWrapper;)Ljava/io/OutputStream;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Labcd/Nl;->FH:Labcd/ProcessExecutorWrapper;

    :goto_1
    invoke-static {v0}, Labcd/ProcessExecutorWrapper;->EQ(Labcd/ProcessExecutorWrapper;)Ljava/io/OutputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    :cond_2
    :goto_2
    :try_start_5
    iget-object v1, p0, Labcd/Nl;->FH:Labcd/ProcessExecutorWrapper;

    monitor-enter v1
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1

    :try_start_6
    iget-object v0, p0, Labcd/Nl;->FH:Labcd/ProcessExecutorWrapper;

    invoke-static {v0}, Labcd/ProcessExecutorWrapper;->Hw(Labcd/ProcessExecutorWrapper;)I

    iget-object v0, p0, Labcd/Nl;->FH:Labcd/ProcessExecutorWrapper;

    invoke-static {v0}, Labcd/ProcessExecutorWrapper;->FH(Labcd/ProcessExecutorWrapper;)I

    move-result v0

    if-gtz v0, :cond_3

    iget-object v0, p0, Labcd/Nl;->FH:Labcd/ProcessExecutorWrapper;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    iget-object v0, p0, Labcd/Nl;->FH:Labcd/ProcessExecutorWrapper;

    invoke-static {v0}, Labcd/ProcessExecutorWrapper;->v5(Labcd/ProcessExecutorWrapper;)Labcd/ProcessExecutorWrapper$a$a;

    move-result-object v0

    invoke-virtual {v0}, Labcd/ProcessExecutorWrapper$a$a;->j6()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :cond_3
    :goto_3
    :try_start_8
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :goto_4
    return-void

    :cond_4
    :try_start_9
    monitor-exit v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :try_start_a
    iget-object v1, p0, Labcd/Nl;->FH:Labcd/ProcessExecutorWrapper;

    invoke-static {v1}, Labcd/ProcessExecutorWrapper;->EQ(Labcd/ProcessExecutorWrapper;)Ljava/io/OutputStream;

    move-result-object v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Labcd/Nl;->FH:Labcd/ProcessExecutorWrapper;

    invoke-static {v1}, Labcd/ProcessExecutorWrapper;->EQ(Labcd/ProcessExecutorWrapper;)Ljava/io/OutputStream;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write(I)V

    :cond_5
    iget-object v0, p0, Labcd/Nl;->FH:Labcd/ProcessExecutorWrapper;

    invoke-static {v0}, Labcd/ProcessExecutorWrapper;->tp(Labcd/ProcessExecutorWrapper;)Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    move-result v0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_b
    monitor-exit v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    :try_start_c
    throw v0
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_0
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    :catch_0
    move-exception v0

    :try_start_d
    iget-object v0, p0, Labcd/Nl;->FH:Labcd/ProcessExecutorWrapper;

    invoke-static {v0}, Labcd/ProcessExecutorWrapper;->EQ(Labcd/ProcessExecutorWrapper;)Ljava/io/OutputStream;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Labcd/Nl;->FH:Labcd/ProcessExecutorWrapper;
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_5
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_1

    goto :goto_1

    :catchall_1
    move-exception v0

    :try_start_e
    iget-object v1, p0, Labcd/Nl;->FH:Labcd/ProcessExecutorWrapper;

    invoke-static {v1}, Labcd/ProcessExecutorWrapper;->EQ(Labcd/ProcessExecutorWrapper;)Ljava/io/OutputStream;

    move-result-object v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Labcd/Nl;->FH:Labcd/ProcessExecutorWrapper;

    invoke-static {v1}, Labcd/ProcessExecutorWrapper;->EQ(Labcd/ProcessExecutorWrapper;)Ljava/io/OutputStream;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_4
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_1

    :cond_6
    :goto_5
    :try_start_f
    throw v0
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_1

    :catch_1
    move-exception v0

    goto :goto_4

    :catchall_2
    move-exception v0

    :try_start_10
    monitor-exit v1
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    :try_start_11
    throw v0
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_1

    :catch_2
    move-exception v0

    sget-boolean v1, Labcd/Nl;->DW:Z

    if-eqz v1, :cond_7

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_7
    throw v0

    :catch_3
    move-exception v0

    goto :goto_3

    :catch_4
    move-exception v1

    goto :goto_5

    :catch_5
    move-exception v0

    goto :goto_2
.end method
