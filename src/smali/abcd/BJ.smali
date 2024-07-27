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
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, p0, Labcd/BJ;->DW:Ljava/io/PipedInputStream;

    invoke-virtual {v0}, Ljava/io/PipedInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7

    :goto_0
    :try_start_2
    iget-object v0, p0, Labcd/BJ;->FH:Ljava/io/PipedOutputStream;

    :goto_1
    invoke-virtual {v0}, Ljava/io/PipedOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6

    :goto_2
    iget-object v0, p0, Labcd/BJ;->Hw:Labcd/UE;

    invoke-virtual {v0}, Labcd/UE;->j6()V

    return-void

    :catch_0
    move-exception v0

    :try_start_3
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    iget-object v0, p0, Labcd/BJ;->DW:Ljava/io/PipedInputStream;

    invoke-virtual {v0}, Ljava/io/PipedInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5

    :goto_3
    :try_start_5
    iget-object v0, p0, Labcd/BJ;->FH:Ljava/io/PipedOutputStream;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6

    goto :goto_1

    :catch_1
    move-exception v0

    :try_start_6
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    iget-object v0, p0, Labcd/BJ;->DW:Ljava/io/PipedInputStream;

    invoke-virtual {v0}, Ljava/io/PipedInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    :goto_4
    :try_start_8
    iget-object v0, p0, Labcd/BJ;->FH:Ljava/io/PipedOutputStream;
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    goto :goto_1

    :catchall_0
    move-exception v0

    :try_start_9
    iget-object v1, p0, Labcd/BJ;->DW:Ljava/io/PipedInputStream;

    invoke-virtual {v1}, Ljava/io/PipedInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    :goto_5
    :try_start_a
    iget-object v1, p0, Labcd/BJ;->FH:Ljava/io/PipedOutputStream;

    invoke-virtual {v1}, Ljava/io/PipedOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2

    :goto_6
    iget-object v1, p0, Labcd/BJ;->Hw:Labcd/UE;

    invoke-virtual {v1}, Labcd/UE;->j6()V

    throw v0

    :catch_2
    move-exception v1

    goto :goto_6

    :catch_3
    move-exception v1

    goto :goto_5

    :catch_4
    move-exception v0

    goto :goto_4

    :catch_5
    move-exception v0

    goto :goto_3

    :catch_6
    move-exception v0

    goto :goto_2

    :catch_7
    move-exception v0

    goto :goto_0
.end method
