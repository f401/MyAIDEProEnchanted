.class public Lorg/apache/tools/ant/taskdefs/optional/jlink/JlinkTask;
.super Lorg/apache/tools/ant/taskdefs/MatchingTask;
.source "JlinkTask.java"


# instance fields
.field private addfiles:Lorg/apache/tools/ant/types/Path;

.field private compress:Z

.field private mergefiles:Lorg/apache/tools/ant/types/Path;

.field private outfile:Ljava/io/File;


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    .line 55
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/MatchingTask;-><init>()V

    .line 57
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/jlink/JlinkTask;->outfile:Ljava/io/File;

    .line 59
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/jlink/JlinkTask;->mergefiles:Lorg/apache/tools/ant/types/Path;

    .line 61
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/jlink/JlinkTask;->addfiles:Lorg/apache/tools/ant/types/Path;

    .line 63
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/optional/jlink/JlinkTask;->compress:Z

    return-void
.end method

.method private haveAddFiles()Z
    .registers 2

    .line 165
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/jlink/JlinkTask;->addfiles:Lorg/apache/tools/ant/types/Path;

    invoke-direct {p0, v0}, Lorg/apache/tools/ant/taskdefs/optional/jlink/JlinkTask;->haveEntries(Lorg/apache/tools/ant/types/Path;)Z

    move-result v0

    return v0
.end method

.method private haveEntries(Lorg/apache/tools/ant/types/Path;)Z
    .registers 3

    .line 173
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Path;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private haveMergeFiles()Z
    .registers 2

    .line 169
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/jlink/JlinkTask;->mergefiles:Lorg/apache/tools/ant/types/Path;

    invoke-direct {p0, v0}, Lorg/apache/tools/ant/taskdefs/optional/jlink/JlinkTask;->haveEntries(Lorg/apache/tools/ant/types/Path;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public createAddfiles()Lorg/apache/tools/ant/types/Path;
    .registers 3

    .line 103
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/jlink/JlinkTask;->addfiles:Lorg/apache/tools/ant/types/Path;

    if-nez v0, :cond_0

    .line 104
    new-instance v0, Lorg/apache/tools/ant/types/Path;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/jlink/JlinkTask;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/types/Path;-><init>(Lorg/apache/tools/ant/Project;)V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/jlink/JlinkTask;->addfiles:Lorg/apache/tools/ant/types/Path;

    .line 106
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/jlink/JlinkTask;->addfiles:Lorg/apache/tools/ant/types/Path;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Path;->createPath()Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    return-object v0
.end method

.method public createMergefiles()Lorg/apache/tools/ant/types/Path;
    .registers 3

    .line 79
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/jlink/JlinkTask;->mergefiles:Lorg/apache/tools/ant/types/Path;

    if-nez v0, :cond_0

    .line 80
    new-instance v0, Lorg/apache/tools/ant/types/Path;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/jlink/JlinkTask;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/types/Path;-><init>(Lorg/apache/tools/ant/Project;)V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/jlink/JlinkTask;->mergefiles:Lorg/apache/tools/ant/types/Path;

    .line 82
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/jlink/JlinkTask;->mergefiles:Lorg/apache/tools/ant/types/Path;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Path;->createPath()Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    return-object v0
.end method

.method public execute()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    const/4 v3, 0x3

    .line 136
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/jlink/JlinkTask;->outfile:Ljava/io/File;

    if-eqz v0, :cond_4

    .line 140
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/optional/jlink/JlinkTask;->haveAddFiles()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/optional/jlink/JlinkTask;->haveMergeFiles()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 144
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "linking:     "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/jlink/JlinkTask;->outfile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/optional/jlink/JlinkTask;->log(Ljava/lang/String;)V

    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "compression: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/optional/jlink/JlinkTask;->compress:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v3}, Lorg/apache/tools/ant/taskdefs/optional/jlink/JlinkTask;->log(Ljava/lang/String;I)V

    .line 146
    new-instance v0, Lorg/apache/tools/ant/taskdefs/optional/jlink/jlink;

    invoke-direct {v0}, Lorg/apache/tools/ant/taskdefs/optional/jlink/jlink;-><init>()V

    .line 147
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/jlink/JlinkTask;->outfile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/taskdefs/optional/jlink/jlink;->setOutfile(Ljava/lang/String;)V

    .line 148
    iget-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/optional/jlink/JlinkTask;->compress:Z

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/taskdefs/optional/jlink/jlink;->setCompression(Z)V

    .line 149
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/optional/jlink/JlinkTask;->haveMergeFiles()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 150
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "merge files: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/optional/jlink/JlinkTask;->mergefiles:Lorg/apache/tools/ant/types/Path;

    invoke-virtual {v2}, Lorg/apache/tools/ant/types/Path;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v3}, Lorg/apache/tools/ant/taskdefs/optional/jlink/JlinkTask;->log(Ljava/lang/String;I)V

    .line 151
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/jlink/JlinkTask;->mergefiles:Lorg/apache/tools/ant/types/Path;

    invoke-virtual {v1}, Lorg/apache/tools/ant/types/Path;->list()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/taskdefs/optional/jlink/jlink;->addMergeFiles([Ljava/lang/String;)V

    .line 153
    :cond_1
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/optional/jlink/JlinkTask;->haveAddFiles()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 154
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "add files: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/optional/jlink/JlinkTask;->addfiles:Lorg/apache/tools/ant/types/Path;

    invoke-virtual {v2}, Lorg/apache/tools/ant/types/Path;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v3}, Lorg/apache/tools/ant/taskdefs/optional/jlink/JlinkTask;->log(Ljava/lang/String;I)V

    .line 155
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/jlink/JlinkTask;->addfiles:Lorg/apache/tools/ant/types/Path;

    invoke-virtual {v1}, Lorg/apache/tools/ant/types/Path;->list()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/taskdefs/optional/jlink/jlink;->addAddFiles([Ljava/lang/String;)V

    .line 158
    :cond_2
    :try_start_0
    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/optional/jlink/jlink;->link()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 161
    return-void

    .line 141
    :cond_3
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "addfiles or mergefiles required! Please set."

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 159
    :catch_0
    move-exception v0

    .line 160
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/jlink/JlinkTask;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/Throwable;Lorg/apache/tools/ant/Location;)V

    throw v1

    .line 137
    :cond_4
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "outfile attribute is required! Please set."

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setAddfiles(Lorg/apache/tools/ant/types/Path;)V
    .registers 3

    .line 114
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/jlink/JlinkTask;->addfiles:Lorg/apache/tools/ant/types/Path;

    if-nez v0, :cond_0

    .line 115
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/jlink/JlinkTask;->addfiles:Lorg/apache/tools/ant/types/Path;

    .line 119
    :goto_0
    return-void

    .line 117
    :cond_0
    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/Path;->append(Lorg/apache/tools/ant/types/Path;)V

    goto :goto_0
.end method

.method public setCompress(Z)V
    .registers 2

    .line 126
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/optional/jlink/JlinkTask;->compress:Z

    .line 127
    return-void
.end method

.method public setMergefiles(Lorg/apache/tools/ant/types/Path;)V
    .registers 3

    .line 90
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/jlink/JlinkTask;->mergefiles:Lorg/apache/tools/ant/types/Path;

    if-nez v0, :cond_0

    .line 91
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/jlink/JlinkTask;->mergefiles:Lorg/apache/tools/ant/types/Path;

    .line 95
    :goto_0
    return-void

    .line 93
    :cond_0
    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/Path;->append(Lorg/apache/tools/ant/types/Path;)V

    goto :goto_0
.end method

.method public setOutfile(Ljava/io/File;)V
    .registers 2

    .line 70
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/jlink/JlinkTask;->outfile:Ljava/io/File;

    .line 71
    return-void
.end method
