.class public Lorg/apache/tools/ant/taskdefs/Jikes;
.super Ljava/lang/Object;
.source "Jikes.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final MAX_FILES_ON_COMMAND_LINE:I = 0xfa


# instance fields
.field protected command:Ljava/lang/String;

.field protected jop:Lorg/apache/tools/ant/taskdefs/JikesOutputParser;

.field protected project:Lorg/apache/tools/ant/Project;


# direct methods
.method protected constructor <init>(Lorg/apache/tools/ant/taskdefs/JikesOutputParser;Ljava/lang/String;Lorg/apache/tools/ant/Project;)V
    .registers 6

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "As of Ant 1.2 released in October 2000, the Jikes class"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 63
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "is considered to be dead code by the Ant developers and is unmaintained."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 65
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "Don\'t use it!"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 67
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Jikes;->jop:Lorg/apache/tools/ant/taskdefs/JikesOutputParser;

    .line 68
    iput-object p2, p0, Lorg/apache/tools/ant/taskdefs/Jikes;->command:Ljava/lang/String;

    .line 69
    iput-object p3, p0, Lorg/apache/tools/ant/taskdefs/Jikes;->project:Lorg/apache/tools/ant/Project;

    .line 70
    return-void
.end method


# virtual methods
.method protected compile([Ljava/lang/String;)V
    .registers 12

    const/4 v9, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 77
    .line 83
    :try_start_3
    const-string v0, "windows"

    invoke-static {v0}, Lorg/apache/tools/ant/taskdefs/condition/Os;->isFamily(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a1

    array-length v0, p1

    const/16 v1, 0xfa

    if-le v0, v1, :cond_a1

    .line 84
    invoke-static {}, Lorg/apache/tools/ant/util/FileUtils;->getFileUtils()Lorg/apache/tools/ant/util/FileUtils;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Jikes;->project:Lorg/apache/tools/ant/Project;

    const-string v2, "jikes"

    const-string v3, "tmp"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual/range {v0 .. v6}, Lorg/apache/tools/ant/util/FileUtils;->createTempFile(Lorg/apache/tools/ant/Project;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;ZZ)Ljava/io/File;
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_be

    move-result-object v0

    .line 86
    :try_start_21
    new-instance v2, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/FileWriter;

    invoke-direct {v1, v0}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_2b} :catch_8a
    .catchall {:try_start_21 .. :try_end_2b} :catchall_93

    .line 87
    :try_start_2b
    array-length v3, p1
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_85

    move v1, v8

    :goto_2d
    if-ge v1, v3, :cond_3a

    aget-object v4, p1, v1

    .line 88
    :try_start_31
    invoke-virtual {v2, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 89
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->newLine()V

    .line 87
    add-int/lit8 v1, v1, 0x1

    goto :goto_2d

    .line 91
    :cond_3a
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->flush()V

    .line 92
    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/Jikes;->command:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "@"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_53
    .catchall {:try_start_31 .. :try_end_53} :catchall_85

    move-result-object v4

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    aput-object v3, v1, v8

    aput-object v4, v1, v9

    .line 94
    :try_start_5b
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_5e
    .catch Ljava/io/IOException; {:try_start_5b .. :try_end_5e} :catch_8a
    .catchall {:try_start_5b .. :try_end_5e} :catchall_93

    .line 108
    :goto_5e
    :try_start_5e
    new-instance v2, Lorg/apache/tools/ant/taskdefs/Execute;

    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/Jikes;->jop:Lorg/apache/tools/ant/taskdefs/JikesOutputParser;

    invoke-direct {v2, v3}, Lorg/apache/tools/ant/taskdefs/Execute;-><init>(Lorg/apache/tools/ant/taskdefs/ExecuteStreamHandler;)V

    .line 109
    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/Jikes;->project:Lorg/apache/tools/ant/Project;

    invoke-virtual {v2, v3}, Lorg/apache/tools/ant/taskdefs/Execute;->setAntRun(Lorg/apache/tools/ant/Project;)V

    .line 110
    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/Jikes;->project:Lorg/apache/tools/ant/Project;

    invoke-virtual {v3}, Lorg/apache/tools/ant/Project;->getBaseDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/tools/ant/taskdefs/Execute;->setWorkingDirectory(Ljava/io/File;)V

    .line 111
    invoke-virtual {v2, v1}, Lorg/apache/tools/ant/taskdefs/Execute;->setCommandline([Ljava/lang/String;)V

    .line 112
    invoke-virtual {v2}, Lorg/apache/tools/ant/taskdefs/Execute;->execute()I
    :try_end_79
    .catch Ljava/io/IOException; {:try_start_5e .. :try_end_79} :catch_b3
    .catchall {:try_start_5e .. :try_end_79} :catchall_93

    .line 115
    if-eqz v0, :cond_84

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_84

    .line 118
    invoke-virtual {v0}, Ljava/io/File;->deleteOnExit()V

    .line 121
    :cond_84
    return-void

    .line 86
    :catchall_85
    move-exception v1

    :try_start_86
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_89
    .catchall {:try_start_86 .. :try_end_89} :catchall_bc

    :goto_89
    :try_start_89
    throw v1
    :try_end_8a
    .catch Ljava/io/IOException; {:try_start_89 .. :try_end_8a} :catch_8a
    .catchall {:try_start_89 .. :try_end_8a} :catchall_93

    .line 94
    :catch_8a
    move-exception v1

    .line 95
    :try_start_8b
    new-instance v2, Lorg/apache/tools/ant/BuildException;

    const-string v3, "Error creating temporary file"

    invoke-direct {v2, v3, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_93
    .catchall {:try_start_8b .. :try_end_93} :catchall_93

    .line 117
    :catchall_93
    move-exception v1

    move-object v7, v0

    :goto_95
    if-eqz v7, :cond_a0

    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_a0

    .line 118
    invoke-virtual {v7}, Ljava/io/File;->deleteOnExit()V

    .line 120
    :cond_a0
    throw v1

    .line 98
    :cond_a1
    :try_start_a1
    array-length v0, p1

    add-int/lit8 v0, v0, 0x1

    new-array v1, v0, [Ljava/lang/String;

    .line 99
    const/4 v0, 0x0

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Jikes;->command:Ljava/lang/String;

    aput-object v2, v1, v0

    .line 100
    const/4 v0, 0x0

    const/4 v2, 0x1

    array-length v3, p1

    invoke-static {p1, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_b1
    .catchall {:try_start_a1 .. :try_end_b1} :catchall_be

    move-object v0, v7

    goto :goto_5e

    .line 113
    :catch_b3
    move-exception v1

    .line 114
    :try_start_b4
    new-instance v2, Lorg/apache/tools/ant/BuildException;

    const-string v3, "Error running Jikes compiler"

    invoke-direct {v2, v3, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_bc
    .catchall {:try_start_b4 .. :try_end_bc} :catchall_93

    .line 86
    :catchall_bc
    move-exception v2

    goto :goto_89

    .line 117
    :catchall_be
    move-exception v0

    move-object v1, v0

    goto :goto_95
.end method
