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
    .registers 5

    const-wide v0, -0x523c70abaea6c150L  # -3.072680983825631E-88

    const-wide v2, -0x302e57bbe7f98a41L  # -3.194647479707564E76

    const-class v4, Labcd/Nl;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

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

    const-wide v0, -0x4170a247a1e2e57fL  # -2.33695614910128E-7

    :try_start_5
    sget-boolean v2, Labcd/Nl;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_a8

    :cond_c
    :try_start_c
    iget-object v0, p0, Labcd/Nl;->FH:Labcd/ProcessExecutorWrapper;

    invoke-static {v0}, Labcd/ProcessExecutorWrapper;->tp(Labcd/ProcessExecutorWrapper;)Ljava/io/InputStream;

    move-result-object v0
    :try_end_12
    .catchall {:try_start_c .. :try_end_12} :catchall_a6

    if-eqz v0, :cond_81

    :try_start_14
    iget-object v0, p0, Labcd/Nl;->FH:Labcd/ProcessExecutorWrapper;

    invoke-static {v0}, Labcd/ProcessExecutorWrapper;->tp(Labcd/ProcessExecutorWrapper;)Ljava/io/InputStream;

    move-result-object v0

    :goto_1a
    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_4e

    iget-object v1, p0, Labcd/Nl;->FH:Labcd/ProcessExecutorWrapper;

    invoke-static {v1}, Labcd/ProcessExecutorWrapper;->VH(Labcd/ProcessExecutorWrapper;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_28} :catch_6e
    .catchall {:try_start_14 .. :try_end_28} :catchall_59

    :try_start_28
    iget-object v2, p0, Labcd/Nl;->FH:Labcd/ProcessExecutorWrapper;

    invoke-static {v2}, Labcd/ProcessExecutorWrapper;->gn(Labcd/ProcessExecutorWrapper;)Z

    move-result v2

    if-eqz v2, :cond_32

    monitor-exit v1

    goto :goto_4e

    :cond_32
    monitor-exit v1
    :try_end_33
    .catchall {:try_start_28 .. :try_end_33} :catchall_4b

    :try_start_33
    iget-object v1, p0, Labcd/Nl;->FH:Labcd/ProcessExecutorWrapper;

    invoke-static {v1}, Labcd/ProcessExecutorWrapper;->EQ(Labcd/ProcessExecutorWrapper;)Ljava/io/OutputStream;

    move-result-object v1

    if-eqz v1, :cond_44

    iget-object v1, p0, Labcd/Nl;->FH:Labcd/ProcessExecutorWrapper;

    invoke-static {v1}, Labcd/ProcessExecutorWrapper;->EQ(Labcd/ProcessExecutorWrapper;)Ljava/io/OutputStream;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write(I)V

    :cond_44
    iget-object v0, p0, Labcd/Nl;->FH:Labcd/ProcessExecutorWrapper;

    invoke-static {v0}, Labcd/ProcessExecutorWrapper;->tp(Labcd/ProcessExecutorWrapper;)Ljava/io/InputStream;

    move-result-object v0
    :try_end_4a
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_4a} :catch_6e
    .catchall {:try_start_33 .. :try_end_4a} :catchall_59

    goto :goto_1a

    :catchall_4b
    move-exception v0

    :try_start_4c
    monitor-exit v1
    :try_end_4d
    .catchall {:try_start_4c .. :try_end_4d} :catchall_4b

    :try_start_4d
    throw v0
    :try_end_4e
    .catch Ljava/io/IOException; {:try_start_4d .. :try_end_4e} :catch_6e
    .catchall {:try_start_4d .. :try_end_4e} :catchall_59

    :cond_4e
    :goto_4e
    :try_start_4e
    iget-object v0, p0, Labcd/Nl;->FH:Labcd/ProcessExecutorWrapper;

    invoke-static {v0}, Labcd/ProcessExecutorWrapper;->EQ(Labcd/ProcessExecutorWrapper;)Ljava/io/OutputStream;

    move-result-object v0

    if-eqz v0, :cond_81

    :goto_56
    iget-object v0, p0, Labcd/Nl;->FH:Labcd/ProcessExecutorWrapper;
    :try_end_58
    .catch Ljava/io/IOException; {:try_start_4e .. :try_end_58} :catch_80
    .catchall {:try_start_4e .. :try_end_58} :catchall_a6

    goto :goto_78

    :catchall_59
    move-exception v0

    :try_start_5a
    iget-object v1, p0, Labcd/Nl;->FH:Labcd/ProcessExecutorWrapper;

    invoke-static {v1}, Labcd/ProcessExecutorWrapper;->EQ(Labcd/ProcessExecutorWrapper;)Ljava/io/OutputStream;

    move-result-object v1

    if-eqz v1, :cond_6d

    iget-object v1, p0, Labcd/Nl;->FH:Labcd/ProcessExecutorWrapper;

    invoke-static {v1}, Labcd/ProcessExecutorWrapper;->EQ(Labcd/ProcessExecutorWrapper;)Ljava/io/OutputStream;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_6b
    .catch Ljava/io/IOException; {:try_start_5a .. :try_end_6b} :catch_6c
    .catchall {:try_start_5a .. :try_end_6b} :catchall_a6

    goto :goto_6d

    :catch_6c
    move-exception v1

    :cond_6d
    :goto_6d
    :try_start_6d
    throw v0
    :try_end_6e
    .catchall {:try_start_6d .. :try_end_6e} :catchall_a6

    :catch_6e
    move-exception v0

    :try_start_6f
    iget-object v0, p0, Labcd/Nl;->FH:Labcd/ProcessExecutorWrapper;

    invoke-static {v0}, Labcd/ProcessExecutorWrapper;->EQ(Labcd/ProcessExecutorWrapper;)Ljava/io/OutputStream;

    move-result-object v0

    if-eqz v0, :cond_81

    goto :goto_56

    :goto_78
    invoke-static {v0}, Labcd/ProcessExecutorWrapper;->EQ(Labcd/ProcessExecutorWrapper;)Ljava/io/OutputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_7f
    .catch Ljava/io/IOException; {:try_start_6f .. :try_end_7f} :catch_80
    .catchall {:try_start_6f .. :try_end_7f} :catchall_a6

    goto :goto_81

    :catch_80
    move-exception v0

    :cond_81
    :goto_81
    :try_start_81
    iget-object v0, p0, Labcd/Nl;->FH:Labcd/ProcessExecutorWrapper;

    monitor-enter v0
    :try_end_84
    .catchall {:try_start_81 .. :try_end_84} :catchall_a6

    :try_start_84
    iget-object v1, p0, Labcd/Nl;->FH:Labcd/ProcessExecutorWrapper;

    invoke-static {v1}, Labcd/ProcessExecutorWrapper;->Hw(Labcd/ProcessExecutorWrapper;)I

    iget-object v1, p0, Labcd/Nl;->FH:Labcd/ProcessExecutorWrapper;

    invoke-static {v1}, Labcd/ProcessExecutorWrapper;->FH(Labcd/ProcessExecutorWrapper;)I

    move-result v1

    if-gtz v1, :cond_a1

    iget-object v1, p0, Labcd/Nl;->FH:Labcd/ProcessExecutorWrapper;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V
    :try_end_96
    .catchall {:try_start_84 .. :try_end_96} :catchall_a3

    :try_start_96
    iget-object v1, p0, Labcd/Nl;->FH:Labcd/ProcessExecutorWrapper;

    invoke-static {v1}, Labcd/ProcessExecutorWrapper;->v5(Labcd/ProcessExecutorWrapper;)Labcd/ProcessExecutorWrapper$a$a;

    move-result-object v1

    invoke-virtual {v1}, Labcd/ProcessExecutorWrapper$a$a;->j6()V
    :try_end_9f
    .catch Ljava/io/IOException; {:try_start_96 .. :try_end_9f} :catch_a0
    .catchall {:try_start_96 .. :try_end_9f} :catchall_a3

    goto :goto_a1

    :catch_a0
    move-exception v1

    :cond_a1
    :goto_a1
    :try_start_a1
    monitor-exit v0

    goto :goto_a7

    :catchall_a3
    move-exception v1

    monitor-exit v0
    :try_end_a5
    .catchall {:try_start_a1 .. :try_end_a5} :catchall_a3

    :try_start_a5
    throw v1
    :try_end_a6
    .catchall {:try_start_a5 .. :try_end_a6} :catchall_a6

    :catchall_a6
    move-exception v0

    :goto_a7
    return-void

    :catchall_a8
    move-exception v2

    sget-boolean v3, Labcd/Nl;->DW:Z

    if-eqz v3, :cond_b0

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_b0
    goto :goto_b2

    :goto_b1
    throw v2

    :goto_b2
    goto :goto_b1
.end method
