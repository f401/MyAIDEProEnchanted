.class public Labcd/YK;
.super Ljava/lang/Thread;


# instance fields
.field private final DW:Ljava/io/OutputStream;

.field private volatile FH:Z

.field private final j6:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "-StreamCopy"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    iput-object p1, p0, Labcd/YK;->j6:Ljava/io/InputStream;

    iput-object p2, p0, Labcd/YK;->DW:Ljava/io/OutputStream;

    return-void
.end method


# virtual methods
.method public DW()V
    .registers 3

    :goto_0
    const-wide/16 v0, 0xfa

    invoke-virtual {p0, v0, v1}, Ljava/lang/Thread;->join(J)V

    invoke-virtual {p0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    iput-boolean v0, p0, Labcd/YK;->FH:Z

    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    :cond_12
    return-void
.end method

.method public j6()V
    .registers 1

    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    return-void
.end method

.method public run()V
    .registers 7

    const/16 v0, 0x400

    :try_start_2
    new-array v0, v0, [B
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_40

    const/4 v1, 0x0

    const/4 v2, 0x0

    :cond_6
    :goto_6
    if-lez v2, :cond_f

    :try_start_8
    iget-object v3, p0, Labcd/YK;->DW:Ljava/io/OutputStream;

    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V

    add-int/lit8 v2, v2, -0x1

    :cond_f
    iget-boolean v3, p0, Labcd/YK;->FH:Z
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_11} :catch_30
    .catchall {:try_start_8 .. :try_end_11} :catchall_40

    if-eqz v3, :cond_14

    goto :goto_31

    :cond_14
    :try_start_14
    iget-object v3, p0, Labcd/YK;->j6:Ljava/io/InputStream;

    invoke-virtual {v3, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3
    :try_end_1a
    .catch Ljava/io/InterruptedIOException; {:try_start_14 .. :try_end_1a} :catch_2c
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_1a} :catch_30
    .catchall {:try_start_14 .. :try_end_1a} :catchall_40

    if-gez v3, :cond_1d

    goto :goto_31

    :cond_1d
    const/4 v4, 0x0

    :goto_1e
    :try_start_1e
    iget-object v5, p0, Labcd/YK;->DW:Ljava/io/OutputStream;

    invoke-virtual {v5, v0, v1, v3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_23
    .catch Ljava/io/InterruptedIOException; {:try_start_1e .. :try_end_23} :catch_29
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_23} :catch_30
    .catchall {:try_start_1e .. :try_end_23} :catchall_40

    if-eqz v4, :cond_6

    :try_start_25
    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_28} :catch_30
    .catchall {:try_start_25 .. :try_end_28} :catchall_40

    goto :goto_6

    :catch_29
    move-exception v4

    const/4 v4, 0x1

    goto :goto_1e

    :catch_2c
    move-exception v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :catch_30
    move-exception v0

    :goto_31
    :try_start_31
    iget-object v0, p0, Labcd/YK;->j6:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_36
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_36} :catch_37

    goto :goto_38

    :catch_37
    move-exception v0

    :goto_38
    :try_start_38
    iget-object v0, p0, Labcd/YK;->DW:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_3d
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_3d} :catch_3e

    goto :goto_3f

    :catch_3e
    move-exception v0

    :goto_3f
    return-void

    :catchall_40
    move-exception v0

    :try_start_41
    iget-object v1, p0, Labcd/YK;->j6:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_46
    .catch Ljava/io/IOException; {:try_start_41 .. :try_end_46} :catch_47

    goto :goto_48

    :catch_47
    move-exception v1

    :goto_48
    :try_start_48
    iget-object v1, p0, Labcd/YK;->DW:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_4d
    .catch Ljava/io/IOException; {:try_start_48 .. :try_end_4d} :catch_4e

    goto :goto_4f

    :catch_4e
    move-exception v1

    :goto_4f
    goto :goto_51

    :goto_50
    throw v0

    :goto_51
    goto :goto_50
.end method
