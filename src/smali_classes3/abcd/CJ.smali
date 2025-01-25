.class Labcd/CJ;
.super Ljava/lang/Thread;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Labcd/zJ$d;-><init>(Labcd/zJ;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final DW:Ljava/io/PipedInputStream;

.field private final FH:Ljava/io/PipedOutputStream;

.field private final Hw:Labcd/UE;

.field final j6:Labcd/zJ$d;


# direct methods
.method constructor <init>(Labcd/zJ$d;Ljava/lang/String;Ljava/io/PipedInputStream;Ljava/io/PipedOutputStream;Labcd/UE;)V
    .registers 6

    iput-object p1, p0, Labcd/CJ;->j6:Labcd/zJ$d;

    iput-object p3, p0, Labcd/CJ;->DW:Ljava/io/PipedInputStream;

    iput-object p4, p0, Labcd/CJ;->FH:Ljava/io/PipedOutputStream;

    iput-object p5, p0, Labcd/CJ;->Hw:Labcd/UE;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    :try_start_0
    iget-object v0, p0, Labcd/CJ;->j6:Labcd/zJ$d;

    invoke-static {v0}, Labcd/zJ$d;->j6(Labcd/zJ$d;)Labcd/zJ;

    move-result-object v0

    iget-object v1, p0, Labcd/CJ;->Hw:Labcd/UE;

    invoke-virtual {v0, v1}, Labcd/zJ;->j6(Labcd/UE;)Labcd/SI;

    move-result-object v0

    iget-object v1, p0, Labcd/CJ;->DW:Ljava/io/PipedInputStream;

    iget-object v2, p0, Labcd/CJ;->FH:Ljava/io/PipedOutputStream;

    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, v1, v2, v3}, Labcd/SI;->j6(Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/io/OutputStream;)V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_15} :catch_3b
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_15} :catch_32
    .catchall {:try_start_0 .. :try_end_15} :catchall_1d

    :try_start_15
    iget-object v0, p0, Labcd/CJ;->DW:Ljava/io/PipedInputStream;

    invoke-virtual {v0}, Ljava/io/PipedInputStream;->close()V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_1a} :catch_1b

    goto :goto_43

    :catch_1b
    move-exception v0

    goto :goto_43

    :catchall_1d
    move-exception v0

    :try_start_1e
    iget-object v1, p0, Labcd/CJ;->DW:Ljava/io/PipedInputStream;

    invoke-virtual {v1}, Ljava/io/PipedInputStream;->close()V
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_23} :catch_24

    goto :goto_25

    :catch_24
    move-exception v1

    :goto_25
    :try_start_25
    iget-object v1, p0, Labcd/CJ;->FH:Ljava/io/PipedOutputStream;

    invoke-virtual {v1}, Ljava/io/PipedOutputStream;->close()V
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_2a} :catch_2b

    goto :goto_2c

    :catch_2b
    move-exception v1

    :goto_2c
    iget-object v1, p0, Labcd/CJ;->Hw:Labcd/UE;

    invoke-virtual {v1}, Labcd/UE;->j6()V

    throw v0

    :catch_32
    move-exception v0

    :try_start_33
    iget-object v0, p0, Labcd/CJ;->DW:Ljava/io/PipedInputStream;

    invoke-virtual {v0}, Ljava/io/PipedInputStream;->close()V
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_38} :catch_39

    goto :goto_43

    :catch_39
    move-exception v0

    goto :goto_43

    :catch_3b
    move-exception v0

    :try_start_3c
    iget-object v0, p0, Labcd/CJ;->DW:Ljava/io/PipedInputStream;

    invoke-virtual {v0}, Ljava/io/PipedInputStream;->close()V
    :try_end_41
    .catch Ljava/io/IOException; {:try_start_3c .. :try_end_41} :catch_42

    goto :goto_43

    :catch_42
    move-exception v0

    :goto_43
    :try_start_43
    iget-object v0, p0, Labcd/CJ;->FH:Ljava/io/PipedOutputStream;

    invoke-virtual {v0}, Ljava/io/PipedOutputStream;->close()V
    :try_end_48
    .catch Ljava/io/IOException; {:try_start_43 .. :try_end_48} :catch_49

    goto :goto_4a

    :catch_49
    move-exception v0

    :goto_4a
    iget-object v0, p0, Labcd/CJ;->Hw:Labcd/UE;

    invoke-virtual {v0}, Labcd/UE;->j6()V

    return-void
.end method
