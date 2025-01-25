.class public Lorg/apache/tools/ant/taskdefs/optional/Rpm;
.super Lorg/apache/tools/ant/Task;
.source "Rpm.java"


# static fields
.field private static final PATH1:Ljava/lang/String; = "PATH"

.field private static final PATH2:Ljava/lang/String; = "Path"

.field private static final PATH3:Ljava/lang/String; = "path"


# instance fields
.field private cleanBuildDir:Z

.field private command:Ljava/lang/String;

.field private error:Ljava/io/File;

.field private failOnError:Z

.field private output:Ljava/io/File;

.field private quiet:Z

.field private removeSource:Z

.field private removeSpec:Z

.field private rpmBuildCommand:Ljava/lang/String;

.field private specFile:Ljava/lang/String;

.field private topDir:Ljava/io/File;


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    .line 45
    invoke-direct {p0}, Lorg/apache/tools/ant/Task;-><init>()V

    .line 64
    const-string v0, "-bb"

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/Rpm;->command:Ljava/lang/String;

    .line 70
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/Rpm;->rpmBuildCommand:Ljava/lang/String;

    .line 75
    iput-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/optional/Rpm;->cleanBuildDir:Z

    .line 80
    iput-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/optional/Rpm;->removeSpec:Z

    .line 85
    iput-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/optional/Rpm;->removeSource:Z

    .line 100
    iput-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/optional/Rpm;->failOnError:Z

    .line 106
    iput-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/optional/Rpm;->quiet:Z

    return-void
.end method


# virtual methods
.method public execute()V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x4

    const/4 v2, 0x0

    .line 116
    new-instance v4, Lorg/apache/tools/ant/types/Commandline;

    invoke-direct {v4}, Lorg/apache/tools/ant/types/Commandline;-><init>()V

    .line 118
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/Rpm;->rpmBuildCommand:Ljava/lang/String;

    if-nez v0, :cond_11

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/Rpm;->guessRpmBuildCommand()Ljava/lang/String;

    move-result-object v0

    .line 119
    :cond_11
    invoke-virtual {v4, v0}, Lorg/apache/tools/ant/types/Commandline;->setExecutable(Ljava/lang/String;)V

    .line 120
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/Rpm;->topDir:Ljava/io/File;

    if-eqz v0, :cond_3b

    .line 121
    invoke-virtual {v4}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    const-string v1, "--define"

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 122
    invoke-virtual {v4}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_topdir "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/optional/Rpm;->topDir:Ljava/io/File;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 125
    :cond_3b
    invoke-virtual {v4}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/Rpm;->command:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setLine(Ljava/lang/String;)V

    .line 127
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/optional/Rpm;->cleanBuildDir:Z

    if-eqz v0, :cond_51

    .line 128
    invoke-virtual {v4}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    const-string v1, "--clean"

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 130
    :cond_51
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/optional/Rpm;->removeSpec:Z

    if-eqz v0, :cond_5e

    .line 131
    invoke-virtual {v4}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    const-string v1, "--rmspec"

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 133
    :cond_5e
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/optional/Rpm;->removeSource:Z

    if-eqz v0, :cond_6b

    .line 134
    invoke-virtual {v4}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    const-string v1, "--rmsource"

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 137
    :cond_6b
    invoke-virtual {v4}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SPECS/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/optional/Rpm;->specFile:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 142
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/Rpm;->error:Ljava/io/File;

    if-nez v0, :cond_f5

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/Rpm;->output:Ljava/io/File;

    if-nez v0, :cond_f5

    .line 143
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/optional/Rpm;->quiet:Z

    if-nez v0, :cond_ed

    .line 144
    new-instance v3, Lorg/apache/tools/ant/taskdefs/LogStreamHandler;

    invoke-direct {v3, p0, v7, v6}, Lorg/apache/tools/ant/taskdefs/LogStreamHandler;-><init>(Lorg/apache/tools/ant/Task;II)V

    move-object v1, v2

    move-object v0, v2

    .line 184
    :goto_98
    invoke-virtual {p0, v4, v3}, Lorg/apache/tools/ant/taskdefs/optional/Rpm;->getExecute(Lorg/apache/tools/ant/types/Commandline;Lorg/apache/tools/ant/taskdefs/ExecuteStreamHandler;)Lorg/apache/tools/ant/taskdefs/Execute;

    move-result-object v2

    .line 186
    :try_start_9c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Building the RPM based on the "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lorg/apache/tools/ant/taskdefs/optional/Rpm;->specFile:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " file"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/apache/tools/ant/taskdefs/optional/Rpm;->log(Ljava/lang/String;)V

    .line 187
    invoke-virtual {v2}, Lorg/apache/tools/ant/taskdefs/Execute;->execute()I

    move-result v2

    .line 188
    invoke-static {v2}, Lorg/apache/tools/ant/taskdefs/Execute;->isFailure(I)Z

    move-result v3

    if-eqz v3, :cond_e6

    .line 189
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lorg/apache/tools/ant/types/Commandline;->getExecutable()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\' failed with exit code "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 191
    iget-boolean v3, p0, Lorg/apache/tools/ant/taskdefs/optional/Rpm;->failOnError:Z

    if-nez v3, :cond_16b

    .line 194
    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lorg/apache/tools/ant/taskdefs/optional/Rpm;->log(Ljava/lang/String;I)V
    :try_end_e6
    .catch Ljava/io/IOException; {:try_start_9c .. :try_end_e6} :catch_171
    .catchall {:try_start_9c .. :try_end_e6} :catchall_17c

    .line 199
    :cond_e6
    invoke-static {v0}, Lorg/apache/tools/ant/util/FileUtils;->close(Ljava/io/OutputStream;)V

    .line 200
    invoke-static {v1}, Lorg/apache/tools/ant/util/FileUtils;->close(Ljava/io/OutputStream;)V

    .line 201
    return-void

    .line 147
    :cond_ed
    new-instance v3, Lorg/apache/tools/ant/taskdefs/LogStreamHandler;

    invoke-direct {v3, p0, v5, v5}, Lorg/apache/tools/ant/taskdefs/LogStreamHandler;-><init>(Lorg/apache/tools/ant/Task;II)V

    move-object v1, v2

    move-object v0, v2

    goto :goto_98

    .line 151
    :cond_f5
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/Rpm;->output:Ljava/io/File;

    if-eqz v0, :cond_13d

    .line 154
    :try_start_f9
    invoke-virtual {v0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/nio/file/OpenOption;

    invoke-static {v0, v1}, Ljava/nio/file/Files;->newOutputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/OutputStream;
    :try_end_103
    .catch Ljava/io/IOException; {:try_start_f9 .. :try_end_103} :catch_12f

    move-result-object v1

    .line 155
    :try_start_104
    new-instance v3, Ljava/io/BufferedOutputStream;

    invoke-direct {v3, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 156
    new-instance v0, Ljava/io/PrintStream;

    invoke-direct {v0, v3}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_10e
    .catch Ljava/io/IOException; {:try_start_104 .. :try_end_10e} :catch_184

    .line 166
    :goto_10e
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/Rpm;->error:Ljava/io/File;

    if-eqz v1, :cond_15b

    .line 169
    :try_start_112
    invoke-virtual {v1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v1

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/nio/file/OpenOption;

    invoke-static {v1, v3}, Ljava/nio/file/Files;->newOutputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/OutputStream;

    move-result-object v2

    .line 170
    new-instance v3, Ljava/io/BufferedOutputStream;

    invoke-direct {v3, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 171
    new-instance v1, Ljava/io/PrintStream;

    invoke-direct {v1, v3}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_127
    .catch Ljava/io/IOException; {:try_start_112 .. :try_end_127} :catch_14d

    .line 181
    :goto_127
    new-instance v2, Lorg/apache/tools/ant/taskdefs/PumpStreamHandler;

    invoke-direct {v2, v0, v1}, Lorg/apache/tools/ant/taskdefs/PumpStreamHandler;-><init>(Ljava/io/OutputStream;Ljava/io/OutputStream;)V

    move-object v3, v2

    goto/16 :goto_98

    .line 157
    :catch_12f
    move-exception v0

    .line 158
    :goto_130
    invoke-static {v2}, Lorg/apache/tools/ant/util/FileUtils;->close(Ljava/io/OutputStream;)V

    .line 159
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/Rpm;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/Throwable;Lorg/apache/tools/ant/Location;)V

    throw v1

    .line 161
    :cond_13d
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/optional/Rpm;->quiet:Z

    if-nez v0, :cond_147

    .line 162
    new-instance v0, Lorg/apache/tools/ant/taskdefs/LogOutputStream;

    invoke-direct {v0, p0, v7}, Lorg/apache/tools/ant/taskdefs/LogOutputStream;-><init>(Lorg/apache/tools/ant/Task;I)V

    goto :goto_10e

    .line 164
    :cond_147
    new-instance v0, Lorg/apache/tools/ant/taskdefs/LogOutputStream;

    invoke-direct {v0, p0, v5}, Lorg/apache/tools/ant/taskdefs/LogOutputStream;-><init>(Lorg/apache/tools/ant/Task;I)V

    goto :goto_10e

    .line 172
    :catch_14d
    move-exception v0

    .line 173
    invoke-static {v2}, Lorg/apache/tools/ant/util/FileUtils;->close(Ljava/io/OutputStream;)V

    .line 174
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/Rpm;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/Throwable;Lorg/apache/tools/ant/Location;)V

    throw v1

    .line 176
    :cond_15b
    iget-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/optional/Rpm;->quiet:Z

    if-nez v1, :cond_165

    .line 177
    new-instance v1, Lorg/apache/tools/ant/taskdefs/LogOutputStream;

    invoke-direct {v1, p0, v6}, Lorg/apache/tools/ant/taskdefs/LogOutputStream;-><init>(Lorg/apache/tools/ant/Task;I)V

    goto :goto_127

    .line 179
    :cond_165
    new-instance v1, Lorg/apache/tools/ant/taskdefs/LogOutputStream;

    invoke-direct {v1, p0, v5}, Lorg/apache/tools/ant/taskdefs/LogOutputStream;-><init>(Lorg/apache/tools/ant/Task;I)V

    goto :goto_127

    .line 192
    :cond_16b
    :try_start_16b
    new-instance v3, Lorg/apache/tools/ant/BuildException;

    invoke-direct {v3, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_171
    .catch Ljava/io/IOException; {:try_start_16b .. :try_end_171} :catch_171
    .catchall {:try_start_16b .. :try_end_171} :catchall_17c

    .line 196
    :catch_171
    move-exception v2

    .line 197
    :try_start_172
    new-instance v3, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/Rpm;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v4

    invoke-direct {v3, v2, v4}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/Throwable;Lorg/apache/tools/ant/Location;)V

    throw v3
    :try_end_17c
    .catchall {:try_start_172 .. :try_end_17c} :catchall_17c

    .line 199
    :catchall_17c
    move-exception v2

    invoke-static {v0}, Lorg/apache/tools/ant/util/FileUtils;->close(Ljava/io/OutputStream;)V

    .line 200
    invoke-static {v1}, Lorg/apache/tools/ant/util/FileUtils;->close(Ljava/io/OutputStream;)V

    .line 201
    throw v2

    .line 157
    :catch_184
    move-exception v0

    move-object v2, v1

    goto :goto_130
.end method

.method protected getExecute(Lorg/apache/tools/ant/types/Commandline;Lorg/apache/tools/ant/taskdefs/ExecuteStreamHandler;)Lorg/apache/tools/ant/taskdefs/Execute;
    .registers 5

    .line 357
    new-instance v0, Lorg/apache/tools/ant/taskdefs/Execute;

    const/4 v1, 0x0

    invoke-direct {v0, p2, v1}, Lorg/apache/tools/ant/taskdefs/Execute;-><init>(Lorg/apache/tools/ant/taskdefs/ExecuteStreamHandler;Lorg/apache/tools/ant/taskdefs/ExecuteWatchdog;)V

    .line 359
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/Rpm;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/taskdefs/Execute;->setAntRun(Lorg/apache/tools/ant/Project;)V

    .line 360
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/Rpm;->topDir:Ljava/io/File;

    if-nez v1, :cond_1b

    .line 361
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/Rpm;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/tools/ant/Project;->getBaseDir()Ljava/io/File;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/Rpm;->topDir:Ljava/io/File;

    .line 363
    :cond_1b
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/Rpm;->topDir:Ljava/io/File;

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/taskdefs/Execute;->setWorkingDirectory(Ljava/io/File;)V

    .line 365
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->getCommandline()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/taskdefs/Execute;->setCommandline([Ljava/lang/String;)V

    .line 366
    return-object v0
.end method

.method protected guessRpmBuildCommand()Ljava/lang/String;
    .registers 7

    .line 323
    invoke-static {}, Lorg/apache/tools/ant/taskdefs/Execute;->getEnvironmentVariables()Ljava/util/Map;

    move-result-object v1

    .line 324
    const-string v0, "PATH"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 325
    if-nez v0, :cond_20

    .line 326
    const-string v0, "Path"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 327
    if-nez v0, :cond_20

    .line 328
    const-string v0, "path"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 332
    :cond_20
    if-eqz v0, :cond_68

    .line 333
    new-instance v1, Lorg/apache/tools/ant/types/Path;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/Rpm;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/apache/tools/ant/types/Path;-><init>(Lorg/apache/tools/ant/Project;Ljava/lang/String;)V

    .line 334
    invoke-virtual {v1}, Lorg/apache/tools/ant/types/Path;->list()[Ljava/lang/String;

    move-result-object v2

    .line 335
    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_32
    if-ge v1, v3, :cond_68

    aget-object v4, v2, v1

    .line 336
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "rpmbuild"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 338
    const-string v0, "dos"

    invoke-static {v0}, Lorg/apache/tools/ant/taskdefs/condition/Os;->isFamily(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_61

    const-string v0, ".exe"

    :goto_4a
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/io/File;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v4

    if-eqz v4, :cond_64

    .line 340
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 345
    :goto_60
    return-object v0

    .line 338
    :cond_61
    const-string v0, ""

    goto :goto_4a

    .line 335
    :cond_64
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_32

    .line 345
    :cond_68
    const-string v0, "rpm"

    goto :goto_60
.end method

.method public setCleanBuildDir(Z)V
    .registers 2

    .line 242
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/optional/Rpm;->cleanBuildDir:Z

    .line 243
    return-void
.end method

.method public setCommand(Ljava/lang/String;)V
    .registers 2

    .line 222
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/Rpm;->command:Ljava/lang/String;

    .line 223
    return-void
.end method

.method public setError(Ljava/io/File;)V
    .registers 2

    .line 276
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/Rpm;->error:Ljava/io/File;

    .line 277
    return-void
.end method

.method public setFailOnError(Z)V
    .registers 2

    .line 299
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/optional/Rpm;->failOnError:Z

    .line 300
    return-void
.end method

.method public setOutput(Ljava/io/File;)V
    .registers 2

    .line 268
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/Rpm;->output:Ljava/io/File;

    .line 269
    return-void
.end method

.method public setQuiet(Z)V
    .registers 2

    .line 310
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/optional/Rpm;->quiet:Z

    .line 311
    return-void
.end method

.method public setRemoveSource(Z)V
    .registers 2

    .line 260
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/optional/Rpm;->removeSource:Z

    .line 261
    return-void
.end method

.method public setRemoveSpec(Z)V
    .registers 2

    .line 250
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/optional/Rpm;->removeSpec:Z

    .line 251
    return-void
.end method

.method public setRpmBuildCommand(Ljava/lang/String;)V
    .registers 2

    .line 287
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/Rpm;->rpmBuildCommand:Ljava/lang/String;

    .line 288
    return-void
.end method

.method public setSpecFile(Ljava/lang/String;)V
    .registers 5

    .line 230
    if-eqz p1, :cond_f

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_f

    .line 233
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/Rpm;->specFile:Ljava/lang/String;

    .line 234
    return-void

    .line 231
    :cond_f
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "You must specify a spec file"

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/Rpm;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v0
.end method

.method public setTopDir(Ljava/io/File;)V
    .registers 2

    .line 213
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/Rpm;->topDir:Ljava/io/File;

    .line 214
    return-void
.end method
