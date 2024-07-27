.class public Lorg/apache/tools/ant/taskdefs/launcher/VmsCommandLauncher;
.super Lorg/apache/tools/ant/taskdefs/launcher/Java13CommandLauncher;
.source "VmsCommandLauncher.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 33
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/launcher/Java13CommandLauncher;-><init>()V

    return-void
.end method

.method private createCommandFile(Lorg/apache/tools/ant/Project;[Ljava/lang/String;[Ljava/lang/String;)Ljava/io/File;
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v5, 0x1

    const/4 v7, 0x0

    .line 96
    sget-object v0, Lorg/apache/tools/ant/taskdefs/launcher/VmsCommandLauncher;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    const-string v2, "ANT"

    const-string v3, ".COM"

    const/4 v4, 0x0

    move-object v1, p1

    move v6, v5

    invoke-virtual/range {v0 .. v6}, Lorg/apache/tools/ant/util/FileUtils;->createTempFile(Lorg/apache/tools/ant/Project;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;ZZ)Ljava/io/File;

    move-result-object v1

    .line 97
    new-instance v2, Ljava/io/BufferedWriter;

    new-instance v0, Ljava/io/FileWriter;

    invoke-direct {v0, v1}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v0}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 100
    if-eqz p3, :cond_1

    .line 102
    :try_start_0
    array-length v3, p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, v7

    :goto_0
    if-ge v0, v3, :cond_1

    aget-object v4, p3, v0

    .line 103
    const/16 v6, 0x3d

    :try_start_1
    invoke-virtual {v4, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    .line 104
    const/4 v7, -0x1

    if-eq v6, v7, :cond_0

    .line 105
    const-string v7, "$ DEFINE/NOLOG "

    invoke-virtual {v2, v7}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 106
    const/4 v7, 0x0

    invoke-virtual {v4, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 107
    const-string v7, " \""

    invoke-virtual {v2, v7}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 108
    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 109
    const/16 v4, 0x22

    invoke-virtual {v2, v4}, Ljava/io/BufferedWriter;->write(I)V

    .line 110
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->newLine()V

    .line 102
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 114
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "$ "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    aget-object v3, p2, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 115
    :goto_1
    array-length v0, p2

    if-ge v5, v0, :cond_2

    .line 116
    const-string v0, " -"

    invoke-virtual {v2, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 117
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->newLine()V

    .line 118
    aget-object v0, p2, v5

    invoke-virtual {v2, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 115
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 120
    :cond_2
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V

    .line 121
    return-object v1

    .line 97
    :catchall_0
    move-exception v0

    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_2
    throw v0

    :catchall_1
    move-exception v1

    goto :goto_2
.end method

.method private deleteAfter(Ljava/io/File;Ljava/lang/Process;)V
    .registers 5

    .line 125
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lorg/apache/tools/ant/taskdefs/launcher/VmsCommandLauncher$$ExternalSyntheticLambda0;

    invoke-direct {v1, p2, p1}, Lorg/apache/tools/ant/taskdefs/launcher/VmsCommandLauncher$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Process;Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 132
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 133
    return-void
.end method

.method static synthetic lambda$deleteAfter$0(Ljava/lang/Process;Ljava/io/File;)V
    .registers 3

    .line 127
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Process;->waitFor()I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    :goto_0
    invoke-static {p1}, Lorg/apache/tools/ant/util/FileUtils;->delete(Ljava/io/File;)V

    .line 132
    return-void

    .line 128
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public exec(Lorg/apache/tools/ant/Project;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Process;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 51
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/tools/ant/taskdefs/launcher/VmsCommandLauncher;->createCommandFile(Lorg/apache/tools/ant/Project;[Ljava/lang/String;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 52
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-super {p0, p1, v1, p3}, Lorg/apache/tools/ant/taskdefs/launcher/Java13CommandLauncher;->exec(Lorg/apache/tools/ant/Project;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v1

    .line 54
    invoke-direct {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/launcher/VmsCommandLauncher;->deleteAfter(Ljava/io/File;Ljava/lang/Process;)V

    .line 55
    return-object v1
.end method

.method public exec(Lorg/apache/tools/ant/Project;[Ljava/lang/String;[Ljava/lang/String;Ljava/io/File;)Ljava/lang/Process;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 79
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/tools/ant/taskdefs/launcher/VmsCommandLauncher;->createCommandFile(Lorg/apache/tools/ant/Project;[Ljava/lang/String;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 80
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-super {p0, p1, v1, p3, p4}, Lorg/apache/tools/ant/taskdefs/launcher/Java13CommandLauncher;->exec(Lorg/apache/tools/ant/Project;[Ljava/lang/String;[Ljava/lang/String;Ljava/io/File;)Ljava/lang/Process;

    move-result-object v1

    .line 82
    invoke-direct {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/launcher/VmsCommandLauncher;->deleteAfter(Ljava/io/File;Ljava/lang/Process;)V

    .line 83
    return-object v1
.end method
