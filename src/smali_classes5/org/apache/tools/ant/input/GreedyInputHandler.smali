.class public Lorg/apache/tools/ant/input/GreedyInputHandler;
.super Lorg/apache/tools/ant/input/DefaultInputHandler;
.source "GreedyInputHandler.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 38
    invoke-direct {p0}, Lorg/apache/tools/ant/input/DefaultInputHandler;-><init>()V

    .line 39
    return-void
.end method


# virtual methods
.method public handleInput(Lorg/apache/tools/ant/input/InputRequest;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 48
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/input/GreedyInputHandler;->getPrompt(Lorg/apache/tools/ant/input/InputRequest;)Ljava/lang/String;

    move-result-object v0

    .line 49
    const/4 v1, 0x0

    .line 51
    :try_start_5
    invoke-virtual {p0}, Lorg/apache/tools/ant/input/GreedyInputHandler;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 52
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 53
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->flush()V

    .line 54
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 55
    new-instance v2, Lorg/apache/tools/ant/taskdefs/StreamPumper;

    invoke-direct {v2, v1, v0}, Lorg/apache/tools/ant/taskdefs/StreamPumper;-><init>(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 56
    new-instance v3, Ljava/lang/Thread;

    invoke-direct {v3, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 57
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V
    :try_end_25
    .catchall {:try_start_5 .. :try_end_25} :catchall_57

    .line 59
    :try_start_25
    invoke-virtual {v3}, Ljava/lang/Thread;->join()V
    :try_end_28
    .catch Ljava/lang/InterruptedException; {:try_start_25 .. :try_end_28} :catch_44
    .catchall {:try_start_25 .. :try_end_28} :catchall_57

    .line 67
    :goto_28
    :try_start_28
    new-instance v3, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {p1, v3}, Lorg/apache/tools/ant/input/InputRequest;->setInput(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p1}, Lorg/apache/tools/ant/input/InputRequest;->isInputValid()Z

    move-result v0

    if-eqz v0, :cond_5c

    .line 72
    invoke-virtual {v2}, Lorg/apache/tools/ant/taskdefs/StreamPumper;->getException()Ljava/lang/Exception;
    :try_end_3d
    .catchall {:try_start_28 .. :try_end_3d} :catchall_57

    move-result-object v0

    if-nez v0, :cond_4b

    .line 77
    invoke-static {v1}, Lorg/apache/tools/ant/util/FileUtils;->close(Ljava/io/InputStream;)V

    .line 78
    return-void

    .line 60
    :catch_44
    move-exception v4

    .line 62
    :try_start_45
    invoke-virtual {v3}, Ljava/lang/Thread;->join()V
    :try_end_48
    .catch Ljava/lang/InterruptedException; {:try_start_45 .. :try_end_48} :catch_49
    .catchall {:try_start_45 .. :try_end_48} :catchall_57

    goto :goto_28

    .line 63
    :catch_49
    move-exception v3

    goto :goto_28

    .line 73
    :cond_4b
    :try_start_4b
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    .line 74
    const-string v3, "Failed to read input from console"

    invoke-virtual {v2}, Lorg/apache/tools/ant/taskdefs/StreamPumper;->getException()Ljava/lang/Exception;

    move-result-object v2

    invoke-direct {v0, v3, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
    :try_end_57
    .catchall {:try_start_4b .. :try_end_57} :catchall_57

    .line 77
    :catchall_57
    move-exception v0

    invoke-static {v1}, Lorg/apache/tools/ant/util/FileUtils;->close(Ljava/io/InputStream;)V

    .line 78
    throw v0

    .line 69
    :cond_5c
    :try_start_5c
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v2, "Received invalid console input"

    invoke-direct {v0, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_64
    .catchall {:try_start_5c .. :try_end_64} :catchall_57
.end method
