.class public Lorg/apache/tools/ant/taskdefs/RecorderEntry;
.super Ljava/lang/Object;
.source "RecorderEntry.java"

# interfaces
.implements Lorg/apache/tools/ant/BuildLogger;
.implements Lorg/apache/tools/ant/SubBuildListener;


# instance fields
.field private emacsMode:Z

.field private filename:Ljava/lang/String;

.field private loglevel:I

.field private out:Ljava/io/PrintStream;

.field private project:Lorg/apache/tools/ant/Project;

.field private record:Z

.field private targetStartTime:J


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .registers 4

    const/4 v1, 0x0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/RecorderEntry;->filename:Ljava/lang/String;

    .line 46
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/RecorderEntry;->record:Z

    .line 48
    const/4 v0, 0x2

    iput v0, p0, Lorg/apache/tools/ant/taskdefs/RecorderEntry;->loglevel:I

    .line 50
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/RecorderEntry;->out:Ljava/io/PrintStream;

    .line 52
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/apache/tools/ant/taskdefs/RecorderEntry;->targetStartTime:J

    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/RecorderEntry;->emacsMode:Z

    .line 65
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/tools/ant/taskdefs/RecorderEntry;->targetStartTime:J

    .line 66
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/RecorderEntry;->filename:Ljava/lang/String;

    .line 67
    return-void
.end method

.method private flush()V
    .registers 2

    .line 225
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/RecorderEntry;->record:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/RecorderEntry;->out:Ljava/io/PrintStream;

    if-eqz v0, :cond_0

    .line 226
    invoke-virtual {v0}, Ljava/io/PrintStream;->flush()V

    .line 228
    :cond_0
    return-void
.end method

.method private static formatTime(J)Ljava/lang/String;
    .registers 14

    const-wide/16 v10, 0x1

    const-wide/16 v8, 0x3c

    .line 270
    const-wide/16 v0, 0x3e8

    div-long v2, p0, v0

    .line 271
    div-long v4, v2, v8

    .line 274
    const-string v1, ""

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-lez v0, :cond_2

    .line 275
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " minute"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    cmp-long v0, v4, v10

    if-nez v0, :cond_0

    const-string v0, " "

    :goto_0
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    rem-long v4, v2, v8

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " second"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    rem-long/2addr v2, v8

    cmp-long v0, v2, v10

    if-nez v0, :cond_1

    move-object v0, v1

    :goto_1
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 280
    :goto_2
    return-object v0

    .line 276
    :cond_0
    const-string v0, "s "

    goto :goto_0

    .line 278
    :cond_1
    const-string v0, "s"

    goto :goto_1

    .line 280
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " second"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    rem-long/2addr v2, v8

    cmp-long v2, v2, v10

    if-nez v2, :cond_3

    :goto_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_3
    const-string v1, "s"

    goto :goto_3
.end method

.method private log(Ljava/lang/String;I)V
    .registers 4

    .line 219
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/RecorderEntry;->record:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/apache/tools/ant/taskdefs/RecorderEntry;->loglevel:I

    if-gt p2, v0, :cond_0

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/RecorderEntry;->out:Ljava/io/PrintStream;

    if-eqz v0, :cond_0

    .line 220
    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 222
    :cond_0
    return-void
.end method

.method private openFileImpl(Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 356
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/RecorderEntry;->out:Ljava/io/PrintStream;

    if-nez v0, :cond_0

    .line 358
    :try_start_0
    new-instance v0, Ljava/io/PrintStream;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/RecorderEntry;->filename:Ljava/lang/String;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v1

    invoke-static {v1, p1}, Lorg/apache/tools/ant/util/FileUtils;->newOutputStream(Ljava/nio/file/Path;Z)Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/RecorderEntry;->out:Ljava/io/PrintStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 364
    :cond_0
    return-void

    .line 359
    :catch_0
    move-exception v0

    .line 360
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    const-string v2, "Problems opening file using a recorder entry"

    invoke-direct {v1, v2, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public buildFinished(Lorg/apache/tools/ant/BuildEvent;)V
    .registers 6

    const/4 v3, 0x0

    .line 104
    const-string v0, "< BUILD FINISHED"

    const/4 v1, 0x4

    invoke-direct {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/RecorderEntry;->log(Ljava/lang/String;I)V

    .line 106
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/RecorderEntry;->record:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/RecorderEntry;->out:Ljava/io/PrintStream;

    if-eqz v0, :cond_0

    .line 107
    invoke-virtual {p1}, Lorg/apache/tools/ant/BuildEvent;->getException()Ljava/lang/Throwable;

    move-result-object v0

    .line 109
    if-nez v0, :cond_1

    .line 110
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/RecorderEntry;->out:Ljava/io/PrintStream;

    const-string v1, "%nBUILD SUCCESSFUL%n"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 116
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/RecorderEntry;->cleanup()V

    .line 117
    return-void

    .line 112
    :cond_1
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/RecorderEntry;->out:Ljava/io/PrintStream;

    const-string v2, "%nBUILD FAILED%n%n"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 113
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/RecorderEntry;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    goto :goto_0
.end method

.method public buildStarted(Lorg/apache/tools/ant/BuildEvent;)V
    .registers 4

    .line 96
    const-string v0, "> BUILD STARTED"

    const/4 v1, 0x4

    invoke-direct {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/RecorderEntry;->log(Ljava/lang/String;I)V

    .line 97
    return-void
.end method

.method public cleanup()V
    .registers 2

    .line 314
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/RecorderEntry;->closeFile()V

    .line 315
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/RecorderEntry;->project:Lorg/apache/tools/ant/Project;

    if-eqz v0, :cond_0

    .line 316
    invoke-virtual {v0, p0}, Lorg/apache/tools/ant/Project;->removeBuildListener(Lorg/apache/tools/ant/BuildListener;)V

    .line 318
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/RecorderEntry;->project:Lorg/apache/tools/ant/Project;

    .line 319
    return-void
.end method

.method closeFile()V
    .registers 2

    .line 339
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/RecorderEntry;->out:Ljava/io/PrintStream;

    if-eqz v0, :cond_0

    .line 340
    invoke-virtual {v0}, Ljava/io/PrintStream;->close()V

    .line 341
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/RecorderEntry;->out:Ljava/io/PrintStream;

    .line 343
    :cond_0
    return-void
.end method

.method public getFilename()Ljava/lang/String;
    .registers 2

    .line 76
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/RecorderEntry;->filename:Ljava/lang/String;

    return-object v0
.end method

.method public getProject()Lorg/apache/tools/ant/Project;
    .registers 2

    .line 307
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/RecorderEntry;->project:Lorg/apache/tools/ant/Project;

    return-object v0
.end method

.method public messageLogged(Lorg/apache/tools/ant/BuildEvent;)V
    .registers 7

    .line 189
    const-string v0, "--- MESSAGE LOGGED"

    const/4 v1, 0x4

    invoke-direct {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/RecorderEntry;->log(Ljava/lang/String;I)V

    .line 191
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 193
    invoke-virtual {p1}, Lorg/apache/tools/ant/BuildEvent;->getTask()Lorg/apache/tools/ant/Task;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 194
    invoke-virtual {p1}, Lorg/apache/tools/ant/BuildEvent;->getTask()Lorg/apache/tools/ant/Task;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/Task;->getTaskName()Ljava/lang/String;

    move-result-object v0

    .line 196
    iget-boolean v2, p0, Lorg/apache/tools/ant/taskdefs/RecorderEntry;->emacsMode:Z

    if-nez v2, :cond_1

    .line 197
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "] "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 198
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    .line 200
    const/4 v0, 0x0

    :goto_0
    rsub-int/lit8 v4, v3, 0xc

    if-ge v0, v4, :cond_0

    .line 201
    const-string v4, " "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 203
    :cond_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    :cond_1
    invoke-virtual {p1}, Lorg/apache/tools/ant/BuildEvent;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/tools/ant/BuildEvent;->getPriority()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/RecorderEntry;->log(Ljava/lang/String;I)V

    .line 209
    return-void
.end method

.method openFile(Z)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 330
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/taskdefs/RecorderEntry;->openFileImpl(Z)V

    .line 331
    return-void
.end method

.method reopenFile()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 352
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/apache/tools/ant/taskdefs/RecorderEntry;->openFileImpl(Z)V

    .line 353
    return-void
.end method

.method public setEmacsMode(Z)V
    .registers 2

    .line 255
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/RecorderEntry;->emacsMode:Z

    .line 256
    return-void
.end method

.method public setErrorPrintStream(Ljava/io/PrintStream;)V
    .registers 2

    .line 264
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/taskdefs/RecorderEntry;->setOutputPrintStream(Ljava/io/PrintStream;)V

    .line 265
    return-void
.end method

.method public setMessageOutputLevel(I)V
    .registers 3

    .line 235
    if-ltz p1, :cond_0

    const/4 v0, 0x4

    if-gt p1, v0, :cond_0

    .line 236
    iput p1, p0, Lorg/apache/tools/ant/taskdefs/RecorderEntry;->loglevel:I

    .line 238
    :cond_0
    return-void
.end method

.method public setOutputPrintStream(Ljava/io/PrintStream;)V
    .registers 2

    .line 245
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/RecorderEntry;->closeFile()V

    .line 246
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/RecorderEntry;->out:Ljava/io/PrintStream;

    .line 247
    return-void
.end method

.method public setProject(Lorg/apache/tools/ant/Project;)V
    .registers 2

    .line 294
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/RecorderEntry;->project:Lorg/apache/tools/ant/Project;

    .line 295
    if-eqz p1, :cond_0

    .line 296
    invoke-virtual {p1, p0}, Lorg/apache/tools/ant/Project;->addBuildListener(Lorg/apache/tools/ant/BuildListener;)V

    .line 298
    :cond_0
    return-void
.end method

.method public setRecordState(Ljava/lang/Boolean;)V
    .registers 3

    .line 85
    if-eqz p1, :cond_0

    .line 86
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/RecorderEntry;->flush()V

    .line 87
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/RecorderEntry;->record:Z

    .line 89
    :cond_0
    return-void
.end method

.method public subBuildFinished(Lorg/apache/tools/ant/BuildEvent;)V
    .registers 4

    .line 129
    invoke-virtual {p1}, Lorg/apache/tools/ant/BuildEvent;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/RecorderEntry;->project:Lorg/apache/tools/ant/Project;

    if-ne v0, v1, :cond_0

    .line 130
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/RecorderEntry;->cleanup()V

    .line 132
    :cond_0
    return-void
.end method

.method public subBuildStarted(Lorg/apache/tools/ant/BuildEvent;)V
    .registers 2

    .line 142
    return-void
.end method

.method public targetFinished(Lorg/apache/tools/ant/BuildEvent;)V
    .registers 6

    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<< TARGET FINISHED -- "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/apache/tools/ant/BuildEvent;->getTarget()Lorg/apache/tools/ant/Target;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    invoke-direct {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/RecorderEntry;->log(Ljava/lang/String;I)V

    .line 161
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/apache/tools/ant/taskdefs/RecorderEntry;->targetStartTime:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Lorg/apache/tools/ant/taskdefs/RecorderEntry;->formatTime(J)Ljava/lang/String;

    move-result-object v0

    .line 163
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lorg/apache/tools/ant/BuildEvent;->getTarget()Lorg/apache/tools/ant/Target;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ":  duration "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-direct {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/RecorderEntry;->log(Ljava/lang/String;I)V

    .line 164
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/RecorderEntry;->flush()V

    .line 165
    return-void
.end method

.method public targetStarted(Lorg/apache/tools/ant/BuildEvent;)V
    .registers 6

    .line 149
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ">> TARGET STARTED -- "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/apache/tools/ant/BuildEvent;->getTarget()Lorg/apache/tools/ant/Target;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    invoke-direct {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/RecorderEntry;->log(Ljava/lang/String;I)V

    .line 150
    const-string v0, "%n%s:"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Lorg/apache/tools/ant/BuildEvent;->getTarget()Lorg/apache/tools/ant/Target;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/tools/ant/Target;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/RecorderEntry;->log(Ljava/lang/String;I)V

    .line 151
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/tools/ant/taskdefs/RecorderEntry;->targetStartTime:J

    .line 152
    return-void
.end method

.method public taskFinished(Lorg/apache/tools/ant/BuildEvent;)V
    .registers 4

    .line 180
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<<< TASK FINISHED -- "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/apache/tools/ant/BuildEvent;->getTask()Lorg/apache/tools/ant/Task;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    invoke-direct {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/RecorderEntry;->log(Ljava/lang/String;I)V

    .line 181
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/RecorderEntry;->flush()V

    .line 182
    return-void
.end method

.method public taskStarted(Lorg/apache/tools/ant/BuildEvent;)V
    .registers 4

    .line 172
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ">>> TASK STARTED -- "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/apache/tools/ant/BuildEvent;->getTask()Lorg/apache/tools/ant/Task;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    invoke-direct {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/RecorderEntry;->log(Ljava/lang/String;I)V

    .line 173
    return-void
.end method
