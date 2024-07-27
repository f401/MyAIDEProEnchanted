.class public Lorg/apache/tools/ant/taskdefs/optional/Cab;
.super Lorg/apache/tools/ant/taskdefs/MatchingTask;
.source "Cab.java"


# static fields
.field private static final DEFAULT_RESULT:I = -0x63

.field private static final FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;


# instance fields
.field protected archiveType:Ljava/lang/String;

.field private baseDir:Ljava/io/File;

.field private cabFile:Ljava/io/File;

.field private cmdOptions:Ljava/lang/String;

.field private doCompress:Z

.field private doVerbose:Z

.field private filesetAdded:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 61
    invoke-static {}, Lorg/apache/tools/ant/util/FileUtils;->getFileUtils()Lorg/apache/tools/ant/util/FileUtils;

    move-result-object v0

    sput-object v0, Lorg/apache/tools/ant/taskdefs/optional/Cab;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    .line 47
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/MatchingTask;-><init>()V

    .line 52
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/optional/Cab;->doCompress:Z

    .line 53
    iput-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/optional/Cab;->doVerbose:Z

    .line 55
    iput-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/optional/Cab;->filesetAdded:Z

    .line 58
    const-string v0, "cab"

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/Cab;->archiveType:Ljava/lang/String;

    return-void
.end method

.method static synthetic lambda$execute$2(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .registers 3

    .line 241
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method static synthetic lambda$isUpToDate$1(JJ)Z
    .registers 6

    .line 161
    cmp-long v0, p2, p0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addFileset(Lorg/apache/tools/ant/types/FileSet;)V
    .registers 4

    .line 108
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/optional/Cab;->filesetAdded:Z

    if-nez v0, :cond_0

    .line 111
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/optional/Cab;->filesetAdded:Z

    .line 112
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/Cab;->fileset:Lorg/apache/tools/ant/types/FileSet;

    .line 113
    return-void

    .line 109
    :cond_0
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Only one nested fileset allowed"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected appendFiles(Ljava/util/Vector;Lorg/apache/tools/ant/DirectoryScanner;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lorg/apache/tools/ant/DirectoryScanner;",
            ")V"
        }
    .end annotation

    .line 195
    invoke-virtual {p2}, Lorg/apache/tools/ant/DirectoryScanner;->getIncludedFiles()[Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 196
    return-void
.end method

.method protected checkConfiguration()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 125
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/Cab;->baseDir:Ljava/io/File;

    if-nez v0, :cond_0

    iget-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/optional/Cab;->filesetAdded:Z

    if-eqz v1, :cond_3

    .line 130
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 133
    :cond_1
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/Cab;->baseDir:Ljava/io/File;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/optional/Cab;->filesetAdded:Z

    if-nez v0, :cond_5

    .line 137
    :cond_2
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/Cab;->cabFile:Ljava/io/File;

    if-eqz v0, :cond_6

    .line 141
    return-void

    .line 126
    :cond_3
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "basedir attribute or one nested fileset is required!"

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/Cab;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v0

    .line 131
    :cond_4
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "basedir does not exist!"

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/Cab;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v0

    .line 134
    :cond_5
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Both basedir attribute and a nested fileset is not allowed"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 138
    :cond_6
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "cabfile attribute must be set!"

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/Cab;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v0
.end method

.method protected createExec()Lorg/apache/tools/ant/taskdefs/ExecTask;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 150
    new-instance v0, Lorg/apache/tools/ant/taskdefs/ExecTask;

    invoke-direct {v0, p0}, Lorg/apache/tools/ant/taskdefs/ExecTask;-><init>(Lorg/apache/tools/ant/Task;)V

    return-object v0
.end method

.method protected createListFile(Ljava/util/Vector;)Ljava/io/File;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/io/File;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v5, 0x1

    .line 176
    sget-object v0, Lorg/apache/tools/ant/taskdefs/optional/Cab;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/Cab;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    const-string v2, "ant"

    const-string v3, ""

    const/4 v4, 0x0

    move v6, v5

    invoke-virtual/range {v0 .. v6}, Lorg/apache/tools/ant/util/FileUtils;->createTempFile(Lorg/apache/tools/ant/Project;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;ZZ)Ljava/io/File;

    move-result-object v1

    .line 178
    new-instance v2, Ljava/io/BufferedWriter;

    new-instance v0, Ljava/io/FileWriter;

    invoke-direct {v0, v1}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v0}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 180
    :try_start_0
    invoke-virtual {p1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 181
    const-string v4, "\"%s\""

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 182
    invoke-virtual {v2, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 183
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->newLine()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 178
    :catchall_0
    move-exception v0

    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_1
    throw v0

    .line 185
    :cond_0
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V

    .line 186
    return-object v1

    .line 178
    :catchall_1
    move-exception v1

    goto :goto_1
.end method

.method public execute()V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    const/4 v4, 0x3

    const/4 v0, 0x0

    .line 225
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/Cab;->checkConfiguration()V

    .line 227
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/Cab;->getFileList()Ljava/util/Vector;

    move-result-object v1

    .line 230
    invoke-virtual {p0, v1}, Lorg/apache/tools/ant/taskdefs/optional/Cab;->isUpToDate(Ljava/util/Vector;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 336
    :cond_0
    :goto_0
    return-void

    .line 234
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Building "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/optional/Cab;->archiveType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/optional/Cab;->cabFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/tools/ant/taskdefs/optional/Cab;->log(Ljava/lang/String;)V

    .line 236
    const-string v2, "windows"

    invoke-static {v2}, Lorg/apache/tools/ant/taskdefs/condition/Os;->isFamily(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 237
    const-string v0, "Using listcab/libcabinet"

    invoke-virtual {p0, v0, v4}, Lorg/apache/tools/ant/taskdefs/optional/Cab;->log(Ljava/lang/String;I)V

    .line 239
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 241
    new-instance v0, Lorg/apache/tools/ant/taskdefs/optional/Cab$$ExternalSyntheticLambda0;

    invoke-direct {v0, v2}, Lorg/apache/tools/ant/taskdefs/optional/Cab$$ExternalSyntheticLambda0;-><init>(Ljava/lang/StringBuilder;)V

    invoke-virtual {v1, v0}, Ljava/util/Vector;->forEach(Ljava/util/function/Consumer;)V

    .line 243
    const-string v0, "\n"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/Cab;->cabFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/Cab;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    .line 248
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/Cab;->baseDir:Ljava/io/File;

    if-eqz v0, :cond_2

    .line 246
    :goto_1
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "listcab"

    aput-object v5, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static {v1, v3, v4, v0, v5}, Lorg/apache/tools/ant/taskdefs/Execute;->launch(Lorg/apache/tools/ant/Project;[Ljava/lang/String;[Ljava/lang/String;Ljava/io/File;Z)Ljava/lang/Process;

    move-result-object v0

    .line 250
    invoke-virtual {v0}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    .line 255
    new-instance v3, Lorg/apache/tools/ant/taskdefs/LogOutputStream;

    const/4 v4, 0x3

    invoke-direct {v3, p0, v4}, Lorg/apache/tools/ant/taskdefs/LogOutputStream;-><init>(Lorg/apache/tools/ant/Task;I)V

    .line 256
    new-instance v4, Lorg/apache/tools/ant/taskdefs/LogOutputStream;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lorg/apache/tools/ant/taskdefs/LogOutputStream;-><init>(Lorg/apache/tools/ant/Task;I)V

    .line 257
    new-instance v5, Lorg/apache/tools/ant/taskdefs/StreamPumper;

    invoke-virtual {v0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-direct {v5, v6, v3}, Lorg/apache/tools/ant/taskdefs/StreamPumper;-><init>(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 258
    new-instance v6, Lorg/apache/tools/ant/taskdefs/StreamPumper;

    invoke-virtual {v0}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v7

    invoke-direct {v6, v7, v4}, Lorg/apache/tools/ant/taskdefs/StreamPumper;-><init>(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 261
    new-instance v7, Ljava/lang/Thread;

    invoke-direct {v7, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v7}, Ljava/lang/Thread;->start()V

    .line 262
    new-instance v7, Ljava/lang/Thread;

    invoke-direct {v7, v6}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v7}, Ljava/lang/Thread;->start()V

    .line 264
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 265
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    .line 266
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 269
    const/16 v1, -0x63

    .line 273
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Process;->waitFor()I

    move-result v1

    .line 276
    invoke-virtual {v5}, Lorg/apache/tools/ant/taskdefs/StreamPumper;->waitFor()V

    .line 277
    invoke-virtual {v3}, Lorg/apache/tools/ant/taskdefs/LogOutputStream;->close()V

    .line 278
    invoke-virtual {v6}, Lorg/apache/tools/ant/taskdefs/StreamPumper;->waitFor()V

    .line 279
    invoke-virtual {v4}, Lorg/apache/tools/ant/taskdefs/LogOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 285
    :goto_2
    :try_start_2
    invoke-static {v1}, Lorg/apache/tools/ant/taskdefs/Execute;->isFailure(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 286
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error executing listcab; error code: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/optional/Cab;->log(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 288
    :catch_0
    move-exception v0

    .line 289
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Problem creating "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/optional/Cab;->cabFile:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 291
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/Cab;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v1

    .line 248
    :cond_2
    :try_start_3
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/Cab;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/Project;->getBaseDir()Ljava/io/File;

    move-result-object v0

    goto/16 :goto_1

    .line 280
    :catch_1
    move-exception v0

    .line 281
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Thread interrupted: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/optional/Cab;->log(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    .line 295
    :cond_3
    :try_start_4
    invoke-virtual {p0, v1}, Lorg/apache/tools/ant/taskdefs/optional/Cab;->createListFile(Ljava/util/Vector;)Ljava/io/File;

    move-result-object v7

    .line 296
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/Cab;->createExec()Lorg/apache/tools/ant/taskdefs/ExecTask;

    move-result-object v8

    .line 300
    const/4 v1, 0x1

    invoke-virtual {v8, v1}, Lorg/apache/tools/ant/taskdefs/ExecTask;->setFailonerror(Z)V

    .line 301
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/Cab;->baseDir:Ljava/io/File;

    invoke-virtual {v8, v1}, Lorg/apache/tools/ant/taskdefs/ExecTask;->setDir(Ljava/io/File;)V

    .line 303
    iget-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/optional/Cab;->doVerbose:Z

    if-nez v1, :cond_4

    .line 304
    sget-object v0, Lorg/apache/tools/ant/taskdefs/optional/Cab;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/Cab;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    const-string v2, "ant"

    const-string v3, ""

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x1

    invoke-virtual/range {v0 .. v6}, Lorg/apache/tools/ant/util/FileUtils;->createTempFile(Lorg/apache/tools/ant/Project;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;ZZ)Ljava/io/File;

    move-result-object v0

    .line 305
    invoke-virtual {v8, v0}, Lorg/apache/tools/ant/taskdefs/ExecTask;->setOutput(Ljava/io/File;)V

    .line 308
    :cond_4
    const-string v1, "cabarc"

    invoke-virtual {v8, v1}, Lorg/apache/tools/ant/taskdefs/ExecTask;->setExecutable(Ljava/lang/String;)V

    .line 309
    invoke-virtual {v8}, Lorg/apache/tools/ant/taskdefs/ExecTask;->createArg()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v1

    const-string v2, "-r"

    invoke-virtual {v1, v2}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 310
    invoke-virtual {v8}, Lorg/apache/tools/ant/taskdefs/ExecTask;->createArg()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v1

    const-string v2, "-p"

    invoke-virtual {v1, v2}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 312
    iget-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/optional/Cab;->doCompress:Z

    if-nez v1, :cond_5

    .line 313
    invoke-virtual {v8}, Lorg/apache/tools/ant/taskdefs/ExecTask;->createArg()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v1

    const-string v2, "-m"

    invoke-virtual {v1, v2}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 314
    invoke-virtual {v8}, Lorg/apache/tools/ant/taskdefs/ExecTask;->createArg()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v1

    const-string v2, "none"

    invoke-virtual {v1, v2}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 317
    :cond_5
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/Cab;->cmdOptions:Ljava/lang/String;

    if-eqz v1, :cond_6

    .line 318
    invoke-virtual {v8}, Lorg/apache/tools/ant/taskdefs/ExecTask;->createArg()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/optional/Cab;->cmdOptions:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/apache/tools/ant/types/Commandline$Argument;->setLine(Ljava/lang/String;)V

    .line 321
    :cond_6
    invoke-virtual {v8}, Lorg/apache/tools/ant/taskdefs/ExecTask;->createArg()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v1

    const-string v2, "n"

    invoke-virtual {v1, v2}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 322
    invoke-virtual {v8}, Lorg/apache/tools/ant/taskdefs/ExecTask;->createArg()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/optional/Cab;->cabFile:Ljava/io/File;

    invoke-virtual {v1, v2}, Lorg/apache/tools/ant/types/Commandline$Argument;->setFile(Ljava/io/File;)V

    .line 323
    invoke-virtual {v8}, Lorg/apache/tools/ant/taskdefs/ExecTask;->createArg()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "@"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 325
    invoke-virtual {v8}, Lorg/apache/tools/ant/taskdefs/ExecTask;->execute()V

    .line 327
    if-eqz v0, :cond_7

    .line 328
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 331
    :cond_7
    invoke-virtual {v7}, Ljava/io/File;->delete()Z
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_0

    .line 332
    :catch_2
    move-exception v0

    .line 333
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Problem creating "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/optional/Cab;->cabFile:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 334
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 335
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/Cab;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v1
.end method

.method protected getFileList()Ljava/util/Vector;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 206
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 208
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/Cab;->baseDir:Ljava/io/File;

    if-eqz v1, :cond_0

    .line 210
    invoke-super {p0, v1}, Lorg/apache/tools/ant/taskdefs/MatchingTask;->getDirectoryScanner(Ljava/io/File;)Lorg/apache/tools/ant/DirectoryScanner;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/optional/Cab;->appendFiles(Ljava/util/Vector;Lorg/apache/tools/ant/DirectoryScanner;)V

    .line 215
    :goto_0
    return-object v0

    .line 212
    :cond_0
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/Cab;->fileset:Lorg/apache/tools/ant/types/FileSet;

    invoke-virtual {v1}, Lorg/apache/tools/ant/types/FileSet;->getDir()Ljava/io/File;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/Cab;->baseDir:Ljava/io/File;

    .line 213
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/Cab;->fileset:Lorg/apache/tools/ant/types/FileSet;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/Cab;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/tools/ant/types/FileSet;->getDirectoryScanner(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/DirectoryScanner;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/optional/Cab;->appendFiles(Ljava/util/Vector;Lorg/apache/tools/ant/DirectoryScanner;)V

    goto :goto_0
.end method

.method protected isUpToDate(Ljava/util/Vector;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 159
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/Cab;->cabFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    .line 160
    invoke-virtual {p1}, Ljava/util/Vector;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lorg/apache/tools/ant/taskdefs/optional/Cab$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0}, Lorg/apache/tools/ant/taskdefs/optional/Cab$$ExternalSyntheticLambda1;-><init>(Lorg/apache/tools/ant/taskdefs/optional/Cab;)V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v2

    sget-object v3, Lorg/apache/tools/ant/taskdefs/optional/Cab$$ExternalSyntheticLambda3;->INSTANCE:Lorg/apache/tools/ant/taskdefs/optional/Cab$$ExternalSyntheticLambda3;

    .line 161
    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->mapToLong(Ljava/util/function/ToLongFunction;)Ljava/util/stream/LongStream;

    move-result-object v2

    new-instance v3, Lorg/apache/tools/ant/taskdefs/optional/Cab$$ExternalSyntheticLambda2;

    invoke-direct {v3, v0, v1}, Lorg/apache/tools/ant/taskdefs/optional/Cab$$ExternalSyntheticLambda2;-><init>(J)V

    invoke-interface {v2, v3}, Ljava/util/stream/LongStream;->allMatch(Ljava/util/function/LongPredicate;)Z

    move-result v0

    .line 160
    return v0
.end method

.method public synthetic lambda$isUpToDate$0$Cab(Ljava/lang/String;)Ljava/io/File;
    .registers 4

    .line 160
    sget-object v0, Lorg/apache/tools/ant/taskdefs/optional/Cab;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/Cab;->baseDir:Ljava/io/File;

    invoke-virtual {v0, v1, p1}, Lorg/apache/tools/ant/util/FileUtils;->resolveFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public setBasedir(Ljava/io/File;)V
    .registers 2

    .line 76
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/Cab;->baseDir:Ljava/io/File;

    .line 77
    return-void
.end method

.method public setCabfile(Ljava/io/File;)V
    .registers 2

    .line 68
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/Cab;->cabFile:Ljava/io/File;

    .line 69
    return-void
.end method

.method public setCompress(Z)V
    .registers 2

    .line 84
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/optional/Cab;->doCompress:Z

    .line 85
    return-void
.end method

.method public setOptions(Ljava/lang/String;)V
    .registers 2

    .line 100
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/Cab;->cmdOptions:Ljava/lang/String;

    .line 101
    return-void
.end method

.method public setVerbose(Z)V
    .registers 2

    .line 92
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/optional/Cab;->doVerbose:Z

    .line 93
    return-void
.end method
