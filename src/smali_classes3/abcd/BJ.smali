.class Labcd/BJ;
.super Ljava/lang/Thread;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Labcd/zJ$c;-><init>(Labcd/zJ;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final DW:Ljava/io/PipedInputStream;

.field private final FH:Ljava/io/PipedOutputStream;

.field private final Hw:Labcd/UE;

.field final j6:Labcd/zJ$c;


# direct methods
.method constructor <init>(Labcd/zJ$c;Ljava/lang/String;Ljava/io/PipedInputStream;Ljava/io/PipedOutputStream;Labcd/UE;)V
    .registers 6

    iput-object p1, p0, Labcd/BJ;->j6:Labcd/zJ$c;

    iput-object p3, p0, Labcd/BJ;->DW:Ljava/io/PipedInputStream;

    iput-object p4, p0, Labcd/BJ;->FH:Ljava/io/PipedOutputStream;

    iput-object p5, p0, Labcd/BJ;->Hw:Labcd/UE;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    :try_start_0
    iget-object v0, p0, Labcd/BJ;->j6:Labcd/zJ$c;

    invoke-static {v0}, Labcd/zJ$c;->j6(Labcd/zJ$c;)Labcd/zJ;

    move-result-object v0

    iget-object v1, p0, Labcd/BJ;->Hw:Labcd/UE;

    invoke-virtual {v0, v1}, Labcd/zJ;->DW(Labcd/UE;)Labcd/IJ;

    move-result-object v0

    iget-object v1, p0, Labcd/BJ;->DW:Ljava/io/PipedInputStream;

    iget-object v2, p0, Labcd/BJ;->FH:Ljava/io/PipedOutputStream;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Labcd/IJ;->j6(Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/io/OutputStream;)V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_14} :catch_2a
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_14} :catch_1e
    .catchall {:try_start_0 .. :try_end_14} :catchall_1c

    :try_start_14
    iget-object v0, p0, Labcd/BJ;->DW:Ljava/io/PipedInputStream;

    invoke-virtual {v0}, Ljava/io/PipedInputStream;->close()V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_19} :catch_1a

    goto :goto_35

    :catch_1a
    move-exception v0

    goto :goto_35

    :catchall_1c
    move-exception v0

    goto :goto_42

    :catch_1e
    move-exception v0

    :try_start_1f
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V
    :try_end_22
    .catchall {:try_start_1f .. :try_end_22} :catchall_1c

    :try_start_22
    iget-object v0, p0, Labcd/BJ;->DW:Ljava/io/PipedInputStream;

    invoke-virtual {v0}, Ljava/io/PipedInputStream;->close()V
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_27} :catch_28

    goto :goto_35

    :catch_28
    move-exception v0

    goto :goto_35

    :catch_2a
    move-exception v0

    :try_start_2b
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2e
    .catchall {:try_start_2b .. :try_end_2e} :catchall_1c

    :try_start_2e
    iget-object v0, p0, Labcd/BJ;->DW:Ljava/io/PipedInputStream;

    invoke-virtual {v0}, Ljava/io/PipedInputStream;->close()V
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_33} :catch_34

    goto :goto_35

    :catch_34
    move-exception v0

    :goto_35
    :try_start_35
    iget-object v0, p0, Labcd/BJ;->FH:Ljava/io/PipedOutputStream;

    invoke-virtual {v0}, Ljava/io/PipedOutputStream;->close()V
    :try_end_3a
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_3a} :catch_3b

    goto :goto_3c

    :catch_3b
    move-exception v0

    :goto_3c
    iget-object v0, p0, Labcd/BJ;->Hw:Labcd/UE;

    invoke-virtual {v0}, Labcd/UE;->j6()V

    return-void

    :goto_42
    :try_start_42
    iget-object v1, p0, Labcd/BJ;->DW:Ljava/io/PipedInputStream;

    invoke-virtual {v1}, Ljava/io/PipedInputStream;->close()V
    :try_end_47
    .catch Ljava/io/IOException; {:try_start_42 .. :try_end_47} :catch_48

    goto :goto_49

    :catch_48
    move-exception v1

    :goto_49
    :try_start_49
    iget-object v1, p0, Labcd/BJ;->FH:Ljava/io/PipedOutputStream;

    invoke-virtual {v1}, Ljava/io/PipedOutputStream;->close()V
    :try_end_4e
    .catch Ljava/io/IOException; {:try_start_49 .. :try_end_4e} :catch_4f

    goto :goto_50

    :catch_4f
    move-exception v1

    :goto_50
    iget-object v1, p0, Labcd/BJ;->Hw:Labcd/UE;

    invoke-virtual {v1}, Labcd/UE;->j6()V

    throw v0
.end method
