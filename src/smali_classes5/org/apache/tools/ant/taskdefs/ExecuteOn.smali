.class public Lorg/apache/tools/ant/taskdefs/ExecuteOn;
.super Lorg/apache/tools/ant/taskdefs/ExecTask;
.source "ExecuteOn.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/tools/ant/taskdefs/ExecuteOn$FileDirBoth;
    }
.end annotation


# instance fields
.field private addSourceFile:Z

.field protected destDir:Ljava/io/File;

.field protected filesets:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lorg/apache/tools/ant/types/AbstractFileSet;",
            ">;"
        }
    .end annotation
.end field

.field private force:Z

.field private forwardSlash:Z

.field private ignoreMissing:Z

.field protected mapper:Lorg/apache/tools/ant/util/FileNameMapper;

.field protected mapperElement:Lorg/apache/tools/ant/types/Mapper;

.field private maxParallel:I

.field private parallel:Z

.field private relative:Z

.field private resources:Lorg/apache/tools/ant/types/resources/Union;

.field private skipEmpty:Z

.field protected srcFilePos:Lorg/apache/tools/ant/types/Commandline$Marker;

.field protected srcIsFirst:Z

.field protected targetFilePos:Lorg/apache/tools/ant/types/Commandline$Marker;

.field protected type:Ljava/lang/String;

.field private verbose:Z


# direct methods
.method public constructor <init>()V
    .registers 5

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 55
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/ExecTask;-><init>()V

    .line 67
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->filesets:Ljava/util/Vector;

    .line 69
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->resources:Lorg/apache/tools/ant/types/resources/Union;

    .line 70
    iput-boolean v2, p0, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->relative:Z

    .line 71
    iput-boolean v2, p0, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->parallel:Z

    .line 72
    iput-boolean v2, p0, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->forwardSlash:Z

    .line 73
    const-string v0, "file"

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->type:Ljava/lang/String;

    .line 74
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->srcFilePos:Lorg/apache/tools/ant/types/Commandline$Marker;

    .line 75
    iput-boolean v2, p0, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->skipEmpty:Z

    .line 76
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->targetFilePos:Lorg/apache/tools/ant/types/Commandline$Marker;

    .line 77
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->mapperElement:Lorg/apache/tools/ant/types/Mapper;

    .line 78
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->mapper:Lorg/apache/tools/ant/util/FileNameMapper;

    .line 79
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->destDir:Ljava/io/File;

    .line 80
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->maxParallel:I

    .line 81
    iput-boolean v3, p0, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->addSourceFile:Z

    .line 82
    iput-boolean v2, p0, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->verbose:Z

    .line 83
    iput-boolean v3, p0, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->ignoreMissing:Z

    .line 84
    iput-boolean v2, p0, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->force:Z

    .line 89
    iput-boolean v3, p0, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->srcIsFirst:Z

    return-void
.end method

.method private static insertTargetFiles([Ljava/lang/String;[Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .registers 8

    const/4 v0, 0x0

    .line 742
    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-virtual {p4}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 743
    array-length v1, p0

    invoke-static {p0, v0, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 751
    :cond_11
    return-void

    .line 746
    :cond_12
    :goto_12
    array-length v1, p0

    if-ge v0, v1, :cond_11

    .line 747
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v2, p0, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int v2, p2, v0

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p1, v2

    .line 746
    add-int/lit8 v0, v0, 0x1

    goto :goto_12
.end method

.method private logSkippingFileset(Ljava/lang/String;Lorg/apache/tools/ant/DirectoryScanner;Ljava/io/File;)V
    .registers 8

    const/4 v1, 0x0

    .line 501
    const-string v0, "dir"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_40

    invoke-virtual {p2}, Lorg/apache/tools/ant/DirectoryScanner;->getIncludedFilesCount()I

    move-result v0

    .line 502
    :goto_d
    const-string v2, "file"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_19

    invoke-virtual {p2}, Lorg/apache/tools/ant/DirectoryScanner;->getIncludedDirsCount()I

    move-result v1

    .line 504
    :cond_19
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Skipping fileset for directory "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ". It is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 505
    add-int/2addr v0, v1

    if-lez v0, :cond_42

    const-string v0, "up to date."

    :goto_30
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 506
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->verbose:Z

    if-eqz v0, :cond_45

    const/4 v0, 0x2

    .line 504
    :goto_3c
    invoke-virtual {p0, v1, v0}, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->log(Ljava/lang/String;I)V

    .line 507
    return-void

    :cond_40
    move v0, v1

    .line 501
    goto :goto_d

    .line 505
    :cond_42
    const-string v0, "empty."

    goto :goto_30

    .line 506
    :cond_45
    const/4 v0, 0x3

    goto :goto_3c
.end method

.method private restrict([Ljava/lang/String;Ljava/io/File;)[Ljava/lang/String;
    .registers 6

    .line 673
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->mapper:Lorg/apache/tools/ant/util/FileNameMapper;

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->force:Z

    if-eqz v0, :cond_9

    :cond_8
    :goto_8
    return-object p1

    .line 674
    :cond_9
    new-instance v0, Lorg/apache/tools/ant/util/SourceFileScanner;

    invoke-direct {v0, p0}, Lorg/apache/tools/ant/util/SourceFileScanner;-><init>(Lorg/apache/tools/ant/Task;)V

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->destDir:Ljava/io/File;

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->mapper:Lorg/apache/tools/ant/util/FileNameMapper;

    invoke-virtual {v0, p1, p2, v1, v2}, Lorg/apache/tools/ant/util/SourceFileScanner;->restrict([Ljava/lang/String;Ljava/io/File;Ljava/io/File;Lorg/apache/tools/ant/util/FileNameMapper;)[Ljava/lang/String;

    move-result-object p1

    goto :goto_8
.end method


# virtual methods
.method public add(Lorg/apache/tools/ant/types/ResourceCollection;)V
    .registers 3

    .line 125
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->resources:Lorg/apache/tools/ant/types/resources/Union;

    if-nez v0, :cond_b

    .line 126
    new-instance v0, Lorg/apache/tools/ant/types/resources/Union;

    invoke-direct {v0}, Lorg/apache/tools/ant/types/resources/Union;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->resources:Lorg/apache/tools/ant/types/resources/Union;

    .line 128
    :cond_b
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->resources:Lorg/apache/tools/ant/types/resources/Union;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/resources/Union;->add(Lorg/apache/tools/ant/types/ResourceCollection;)V

    .line 129
    return-void
.end method

.method public add(Lorg/apache/tools/ant/util/FileNameMapper;)V
    .registers 3

    .line 297
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->createMapper()Lorg/apache/tools/ant/types/Mapper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/Mapper;->add(Lorg/apache/tools/ant/util/FileNameMapper;)V

    .line 298
    return-void
.end method

.method public addDirset(Lorg/apache/tools/ant/types/DirSet;)V
    .registers 3

    .line 108
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->filesets:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 109
    return-void
.end method

.method public addFilelist(Lorg/apache/tools/ant/types/FileList;)V
    .registers 2

    .line 116
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->add(Lorg/apache/tools/ant/types/ResourceCollection;)V

    .line 117
    return-void
.end method

.method public addFileset(Lorg/apache/tools/ant/types/FileSet;)V
    .registers 3

    .line 97
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->filesets:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 98
    return-void
.end method

.method protected checkConfiguration()V
    .registers 4

    .line 307
    const-string v0, "execon"

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->getTaskName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 308
    const-string v0, "!! execon is deprecated. Use apply instead. !!"

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->log(Ljava/lang/String;)V

    .line 310
    :cond_11
    invoke-super {p0}, Lorg/apache/tools/ant/taskdefs/ExecTask;->checkConfiguration()V

    .line 311
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->filesets:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->resources:Lorg/apache/tools/ant/types/resources/Union;

    if-eqz v0, :cond_3b

    .line 315
    :cond_20
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->targetFilePos:Lorg/apache/tools/ant/types/Commandline$Marker;

    if-eqz v0, :cond_28

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->mapperElement:Lorg/apache/tools/ant/types/Mapper;

    if-eqz v0, :cond_47

    .line 319
    :cond_28
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->destDir:Ljava/io/File;

    if-eqz v0, :cond_30

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->mapperElement:Lorg/apache/tools/ant/types/Mapper;

    if-eqz v0, :cond_53

    .line 323
    :cond_30
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->mapperElement:Lorg/apache/tools/ant/types/Mapper;

    if-eqz v0, :cond_3a

    .line 324
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Mapper;->getImplementation()Lorg/apache/tools/ant/util/FileNameMapper;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->mapper:Lorg/apache/tools/ant/util/FileNameMapper;

    .line 326
    :cond_3a
    return-void

    .line 312
    :cond_3b
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "no resources specified"

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v0

    .line 316
    :cond_47
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "targetfile specified without mapper"

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v0

    .line 320
    :cond_53
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "dest specified without mapper"

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v0
.end method

.method protected createHandler()Lorg/apache/tools/ant/taskdefs/ExecuteStreamHandler;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 337
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->redirectorElement:Lorg/apache/tools/ant/types/RedirectorElement;

    if-nez v0, :cond_9

    invoke-super {p0}, Lorg/apache/tools/ant/taskdefs/ExecTask;->createHandler()Lorg/apache/tools/ant/taskdefs/ExecuteStreamHandler;

    move-result-object v0

    :goto_8
    return-object v0

    :cond_9
    new-instance v0, Lorg/apache/tools/ant/taskdefs/PumpStreamHandler;

    invoke-direct {v0}, Lorg/apache/tools/ant/taskdefs/PumpStreamHandler;-><init>()V

    goto :goto_8
.end method

.method public createMapper()Lorg/apache/tools/ant/types/Mapper;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 283
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->mapperElement:Lorg/apache/tools/ant/types/Mapper;

    if-nez v0, :cond_10

    .line 287
    new-instance v0, Lorg/apache/tools/ant/types/Mapper;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/types/Mapper;-><init>(Lorg/apache/tools/ant/Project;)V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->mapperElement:Lorg/apache/tools/ant/types/Mapper;

    .line 288
    return-object v0

    .line 284
    :cond_10
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Cannot define more than one mapper"

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v0
.end method

.method public createSrcfile()Lorg/apache/tools/ant/types/Commandline$Marker;
    .registers 4

    .line 253
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->srcFilePos:Lorg/apache/tools/ant/types/Commandline$Marker;

    if-nez v0, :cond_d

    .line 257
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->cmdl:Lorg/apache/tools/ant/types/Commandline;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Commandline;->createMarker()Lorg/apache/tools/ant/types/Commandline$Marker;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->srcFilePos:Lorg/apache/tools/ant/types/Commandline$Marker;

    .line 258
    return-object v0

    .line 254
    :cond_d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->getTaskType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " doesn\'t support multiple srcfile elements."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 255
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v1
.end method

.method public createTargetfile()Lorg/apache/tools/ant/types/Commandline$Marker;
    .registers 4

    .line 267
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->targetFilePos:Lorg/apache/tools/ant/types/Commandline$Marker;

    if-nez v0, :cond_16

    .line 271
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->cmdl:Lorg/apache/tools/ant/types/Commandline;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Commandline;->createMarker()Lorg/apache/tools/ant/types/Commandline$Marker;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->targetFilePos:Lorg/apache/tools/ant/types/Commandline$Marker;

    .line 272
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->srcFilePos:Lorg/apache/tools/ant/types/Commandline$Marker;

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    :goto_11
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->srcIsFirst:Z

    .line 273
    return-object v1

    .line 272
    :cond_14
    const/4 v0, 0x0

    goto :goto_11

    .line 268
    :cond_16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->getTaskType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " doesn\'t support multiple targetfile elements."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 269
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v1
.end method

.method protected getCommandline(Ljava/lang/String;Ljava/io/File;)[Ljava/lang/String;
    .registers 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 635
    new-array v0, v1, [Ljava/lang/String;

    aput-object p1, v0, v2

    new-array v1, v1, [Ljava/io/File;

    aput-object p2, v1, v2

    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->getCommandline([Ljava/lang/String;[Ljava/io/File;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getCommandline([Ljava/lang/String;[Ljava/io/File;)[Ljava/lang/String;
    .registers 16

    const/16 v12, 0x2f

    const/4 v2, 0x0

    .line 517
    sget-char v4, Ljava/io/File;->separatorChar:C

    .line 518
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 519
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->targetFilePos:Lorg/apache/tools/ant/types/Commandline$Marker;

    if-eqz v0, :cond_55

    .line 520
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 521
    array-length v7, p1

    move v1, v2

    :goto_15
    if-ge v1, v7, :cond_55

    aget-object v0, p1, v1

    .line 522
    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->mapper:Lorg/apache/tools/ant/util/FileNameMapper;

    invoke-interface {v3, v0}, Lorg/apache/tools/ant/util/FileNameMapper;->mapFileName(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 523
    if-eqz v8, :cond_51

    .line 524
    array-length v9, v8

    move v3, v2

    :goto_23
    if-ge v3, v9, :cond_51

    aget-object v0, v8, v3

    .line 526
    iget-boolean v10, p0, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->relative:Z

    if-eqz v10, :cond_45

    .line 531
    :goto_2b
    iget-boolean v10, p0, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->forwardSlash:Z

    if-eqz v10, :cond_35

    if-eq v4, v12, :cond_35

    .line 532
    invoke-virtual {v0, v4, v12}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 534
    :cond_35
    invoke-interface {v6, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_41

    .line 535
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 536
    invoke-interface {v6, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 524
    :cond_41
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_23

    .line 529
    :cond_45
    new-instance v10, Ljava/io/File;

    iget-object v11, p0, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->destDir:Ljava/io/File;

    invoke-direct {v10, v11, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    goto :goto_2b

    .line 521
    :cond_51
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_15

    .line 542
    :cond_55
    new-array v0, v2, [Ljava/lang/String;

    invoke-interface {v5, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 544
    iget-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->addSourceFile:Z

    if-nez v1, :cond_63

    .line 545
    new-array p1, v2, [Ljava/lang/String;

    .line 547
    :cond_63
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->cmdl:Lorg/apache/tools/ant/types/Commandline;

    invoke-virtual {v1}, Lorg/apache/tools/ant/types/Commandline;->getCommandline()[Ljava/lang/String;

    move-result-object v3

    .line 548
    array-length v1, v3

    array-length v5, p1

    add-int/2addr v1, v5

    array-length v5, v0

    add-int/2addr v1, v5

    new-array v5, v1, [Ljava/lang/String;

    .line 551
    array-length v1, v3

    .line 552
    iget-object v6, p0, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->srcFilePos:Lorg/apache/tools/ant/types/Commandline$Marker;

    if-eqz v6, :cond_79

    .line 553
    invoke-virtual {v6}, Lorg/apache/tools/ant/types/Commandline$Marker;->getPosition()I

    move-result v1

    .line 555
    :cond_79
    iget-object v6, p0, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->targetFilePos:Lorg/apache/tools/ant/types/Commandline$Marker;

    if-eqz v6, :cond_125

    .line 556
    invoke-virtual {v6}, Lorg/apache/tools/ant/types/Commandline$Marker;->getPosition()I

    move-result v6

    .line 558
    if-lt v1, v6, :cond_89

    if-ne v1, v6, :cond_100

    iget-boolean v7, p0, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->srcIsFirst:Z

    if-eqz v7, :cond_100

    .line 562
    :cond_89
    invoke-static {v3, v2, v5, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 565
    array-length v7, p1

    add-int/2addr v7, v1

    sub-int v8, v6, v1

    invoke-static {v3, v1, v5, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 569
    array-length v7, p1

    iget-object v8, p0, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->targetFilePos:Lorg/apache/tools/ant/types/Commandline$Marker;

    .line 571
    invoke-virtual {v8}, Lorg/apache/tools/ant/types/Commandline$Marker;->getPrefix()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->targetFilePos:Lorg/apache/tools/ant/types/Commandline$Marker;

    .line 572
    invoke-virtual {v9}, Lorg/apache/tools/ant/types/Commandline$Marker;->getSuffix()Ljava/lang/String;

    move-result-object v9

    .line 569
    add-int/2addr v7, v6

    invoke-static {v0, v5, v7, v8, v9}, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->insertTargetFiles([Ljava/lang/String;[Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 575
    array-length v7, p1

    add-int/2addr v7, v6

    array-length v0, v0

    add-int/2addr v0, v7

    array-length v7, v3

    sub-int/2addr v7, v6

    invoke-static {v3, v6, v5, v0, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 608
    :goto_ad
    array-length v0, p1

    if-ge v2, v0, :cond_140

    .line 610
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->relative:Z

    if-eqz v0, :cond_131

    .line 611
    aget-object v0, p1, v2

    .line 615
    :goto_b6
    iget-boolean v3, p0, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->forwardSlash:Z

    if-eqz v3, :cond_c0

    if-eq v4, v12, :cond_c0

    .line 616
    invoke-virtual {v0, v4, v12}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 618
    :cond_c0
    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->srcFilePos:Lorg/apache/tools/ant/types/Commandline$Marker;

    if-eqz v3, :cond_f8

    .line 619
    invoke-virtual {v3}, Lorg/apache/tools/ant/types/Commandline$Marker;->getPrefix()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_da

    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->srcFilePos:Lorg/apache/tools/ant/types/Commandline$Marker;

    invoke-virtual {v3}, Lorg/apache/tools/ant/types/Commandline$Marker;->getSuffix()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_f8

    .line 620
    :cond_da
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->srcFilePos:Lorg/apache/tools/ant/types/Commandline$Marker;

    invoke-virtual {v6}, Lorg/apache/tools/ant/types/Commandline$Marker;->getPrefix()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->srcFilePos:Lorg/apache/tools/ant/types/Commandline$Marker;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Commandline$Marker;->getSuffix()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 622
    :cond_f8
    add-int v3, v1, v2

    aput-object v0, v5, v3

    .line 608
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_ad

    .line 580
    :cond_100
    invoke-static {v3, v2, v5, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 582
    iget-object v7, p0, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->targetFilePos:Lorg/apache/tools/ant/types/Commandline$Marker;

    .line 583
    invoke-virtual {v7}, Lorg/apache/tools/ant/types/Commandline$Marker;->getPrefix()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->targetFilePos:Lorg/apache/tools/ant/types/Commandline$Marker;

    .line 584
    invoke-virtual {v8}, Lorg/apache/tools/ant/types/Commandline$Marker;->getSuffix()Ljava/lang/String;

    move-result-object v8

    .line 582
    invoke-static {v0, v5, v6, v7, v8}, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->insertTargetFiles([Ljava/lang/String;[Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 587
    array-length v7, v0

    add-int/2addr v7, v6

    sub-int v8, v1, v6

    invoke-static {v3, v6, v5, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 592
    array-length v6, p1

    add-int/2addr v6, v1

    array-length v7, v0

    add-int/2addr v6, v7

    array-length v7, v3

    sub-int/2addr v7, v1

    invoke-static {v3, v1, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 595
    array-length v0, v0

    add-int/2addr v1, v0

    goto :goto_ad

    .line 601
    :cond_125
    invoke-static {v3, v2, v5, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 603
    array-length v0, p1

    add-int/2addr v0, v1

    array-length v6, v3

    sub-int/2addr v6, v1

    invoke-static {v3, v1, v5, v0, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/16 :goto_ad

    .line 613
    :cond_131
    new-instance v0, Ljava/io/File;

    aget-object v3, p2, v2

    aget-object v6, p1, v2

    invoke-direct {v0, v3, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_b6

    .line 624
    :cond_140
    return-object v5
.end method

.method protected getDirs(Ljava/io/File;Lorg/apache/tools/ant/DirectoryScanner;)[Ljava/lang/String;
    .registers 4

    .line 657
    invoke-virtual {p2}, Lorg/apache/tools/ant/DirectoryScanner;->getIncludedDirectories()[Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->restrict([Ljava/lang/String;Ljava/io/File;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getFiles(Ljava/io/File;Lorg/apache/tools/ant/DirectoryScanner;)[Ljava/lang/String;
    .registers 4

    .line 646
    invoke-virtual {p2}, Lorg/apache/tools/ant/DirectoryScanner;->getIncludedFiles()[Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->restrict([Ljava/lang/String;Ljava/io/File;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getFilesAndDirs(Lorg/apache/tools/ant/types/FileList;)[Ljava/lang/String;
    .registers 4

    .line 669
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/apache/tools/ant/types/FileList;->getFiles(Lorg/apache/tools/ant/Project;)[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/apache/tools/ant/types/FileList;->getDir(Lorg/apache/tools/ant/Project;)Ljava/io/File;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->restrict([Ljava/lang/String;Ljava/io/File;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected runExec(Lorg/apache/tools/ant/taskdefs/Execute;)V
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 356
    const/4 v1, 0x0

    .line 357
    const/4 v2, 0x0

    .line 358
    const/4 v3, 0x0

    .line 360
    :try_start_3
    new-instance v7, Ljava/util/Vector;

    invoke-direct {v7}, Ljava/util/Vector;-><init>()V

    .line 361
    new-instance v8, Ljava/util/Vector;

    invoke-direct {v8}, Ljava/util/Vector;-><init>()V

    .line 362
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->filesets:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_13
    :goto_13
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_127

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/types/AbstractFileSet;

    .line 363
    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->type:Ljava/lang/String;

    .line 364
    instance-of v5, v0, Lorg/apache/tools/ant/types/DirSet;

    if-eqz v5, :cond_27a

    .line 365
    const-string v5, "dir"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_27a

    .line 366
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Found a nested dirset but type is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->type:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ". Temporarily switching to type=\"dir\" on the assumption that you really did mean <dirset> not <fileset>."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x4

    invoke-virtual {p0, v4, v5}, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->log(Ljava/lang/String;I)V
    :try_end_49
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_49} :catch_ab
    .catchall {:try_start_3 .. :try_end_49} :catchall_c7

    .line 369
    const-string v4, "dir"

    move-object v5, v4

    .line 372
    :goto_4c
    :try_start_4c
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/apache/tools/ant/types/AbstractFileSet;->getDir(Lorg/apache/tools/ant/Project;)Ljava/io/File;

    move-result-object v9

    .line 374
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/apache/tools/ant/types/AbstractFileSet;->getDirectoryScanner(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/DirectoryScanner;

    move-result-object v10

    .line 376
    const-string v0, "dir"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7c

    .line 377
    invoke-virtual {p0, v9, v10}, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->getFiles(Ljava/io/File;Lorg/apache/tools/ant/DirectoryScanner;)[Ljava/lang/String;

    move-result-object v11

    array-length v12, v11
    :try_end_69
    .catch Ljava/io/IOException; {:try_start_4c .. :try_end_69} :catch_ab
    .catchall {:try_start_4c .. :try_end_69} :catchall_c7

    const/4 v4, 0x0

    move v0, v1

    :goto_6b
    if-ge v4, v12, :cond_7b

    aget-object v1, v11, v4

    .line 378
    add-int/lit8 v0, v0, 0x1

    :try_start_71
    invoke-virtual {v7, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 380
    invoke-virtual {v8, v9}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_77
    .catch Ljava/io/IOException; {:try_start_71 .. :try_end_77} :catch_125
    .catchall {:try_start_71 .. :try_end_77} :catchall_271

    .line 377
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_6b

    :cond_7b
    move v1, v0

    .line 383
    :cond_7c
    :try_start_7c
    const-string v0, "file"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_81
    .catch Ljava/io/IOException; {:try_start_7c .. :try_end_81} :catch_26b
    .catchall {:try_start_7c .. :try_end_81} :catchall_26e

    move-result v0

    if-nez v0, :cond_9c

    .line 384
    :try_start_84
    invoke-virtual {p0, v9, v10}, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->getDirs(Ljava/io/File;Lorg/apache/tools/ant/DirectoryScanner;)[Ljava/lang/String;

    move-result-object v11

    array-length v12, v11
    :try_end_89
    .catch Ljava/io/IOException; {:try_start_84 .. :try_end_89} :catch_ab
    .catchall {:try_start_84 .. :try_end_89} :catchall_c7

    const/4 v4, 0x0

    move v0, v2

    :goto_8b
    if-ge v4, v12, :cond_9b

    aget-object v2, v11, v4

    .line 385
    add-int/lit8 v0, v0, 0x1

    .line 386
    :try_start_91
    invoke-virtual {v7, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 387
    invoke-virtual {v8, v9}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_97
    .catch Ljava/io/IOException; {:try_start_91 .. :try_end_97} :catch_ab
    .catchall {:try_start_91 .. :try_end_97} :catchall_c7

    .line 384
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_8b

    :cond_9b
    move v2, v0

    .line 390
    :cond_9c
    :try_start_9c
    invoke-virtual {v7}, Ljava/util/Vector;->isEmpty()Z
    :try_end_9f
    .catch Ljava/io/IOException; {:try_start_9c .. :try_end_9f} :catch_26b
    .catchall {:try_start_9c .. :try_end_9f} :catchall_26e

    move-result v0

    if-eqz v0, :cond_d7

    :try_start_a2
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->skipEmpty:Z

    if-eqz v0, :cond_d7

    .line 391
    invoke-direct {p0, v5, v10, v9}, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->logSkippingFileset(Ljava/lang/String;Lorg/apache/tools/ant/DirectoryScanner;Ljava/io/File;)V
    :try_end_a9
    .catch Ljava/io/IOException; {:try_start_a2 .. :try_end_a9} :catch_ab
    .catchall {:try_start_a2 .. :try_end_a9} :catchall_c7

    goto/16 :goto_13

    .line 483
    :catch_ab
    move-exception v0

    .line 484
    :goto_ac
    :try_start_ac
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Execute failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v3

    invoke-direct {v1, v2, v0, v3}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lorg/apache/tools/ant/Location;)V

    throw v1
    :try_end_c7
    .catchall {:try_start_ac .. :try_end_c7} :catchall_c7

    .line 487
    :catchall_c7
    move-exception v0

    :goto_c8
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->logFlush()V

    .line 488
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->redirector:Lorg/apache/tools/ant/taskdefs/Redirector;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/apache/tools/ant/taskdefs/Redirector;->setAppendProperties(Z)V

    .line 489
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->redirector:Lorg/apache/tools/ant/taskdefs/Redirector;

    invoke-virtual {v1}, Lorg/apache/tools/ant/taskdefs/Redirector;->setProperties()V

    .line 490
    throw v0

    .line 394
    :cond_d7
    :try_start_d7
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->parallel:Z

    if-nez v0, :cond_13

    .line 395
    invoke-virtual {v7}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_df
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_11d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 396
    invoke-virtual {p0, v0, v9}, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->getCommandline(Ljava/lang/String;Ljava/io/File;)[Ljava/lang/String;

    move-result-object v5

    .line 397
    invoke-static {v5}, Lorg/apache/tools/ant/types/Commandline;->describeCommand([Ljava/lang/String;)Ljava/lang/String;
    :try_end_f2
    .catch Ljava/io/IOException; {:try_start_d7 .. :try_end_f2} :catch_26b
    .catchall {:try_start_d7 .. :try_end_f2} :catchall_26e

    move-result-object v10

    const/4 v11, 0x3

    :try_start_f4
    invoke-virtual {p0, v10, v11}, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->log(Ljava/lang/String;I)V

    .line 398
    invoke-virtual {p1, v5}, Lorg/apache/tools/ant/taskdefs/Execute;->setCommandline([Ljava/lang/String;)V

    .line 400
    iget-object v5, p0, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->redirectorElement:Lorg/apache/tools/ant/types/RedirectorElement;

    if-eqz v5, :cond_108

    .line 401
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->setupRedirector()V

    .line 402
    iget-object v5, p0, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->redirectorElement:Lorg/apache/tools/ant/types/RedirectorElement;

    iget-object v10, p0, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->redirector:Lorg/apache/tools/ant/taskdefs/Redirector;

    invoke-virtual {v5, v10, v0}, Lorg/apache/tools/ant/types/RedirectorElement;->configure(Lorg/apache/tools/ant/taskdefs/Redirector;Ljava/lang/String;)V

    .line 404
    :cond_108
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->redirectorElement:Lorg/apache/tools/ant/types/RedirectorElement;

    if-nez v0, :cond_10e

    if-eqz v3, :cond_117

    .line 408
    :cond_10e
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->redirector:Lorg/apache/tools/ant/taskdefs/Redirector;

    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/Redirector;->createHandler()Lorg/apache/tools/ant/taskdefs/ExecuteStreamHandler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/apache/tools/ant/taskdefs/Execute;->setStreamHandler(Lorg/apache/tools/ant/taskdefs/ExecuteStreamHandler;)V

    .line 410
    :cond_117
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->runExecute(Lorg/apache/tools/ant/taskdefs/Execute;)V

    .line 411
    const/4 v0, 0x1

    move v3, v0

    .line 412
    goto :goto_df

    .line 413
    :cond_11d
    invoke-virtual {v7}, Ljava/util/Vector;->clear()V

    .line 414
    invoke-virtual {v8}, Ljava/util/Vector;->clear()V
    :try_end_123
    .catch Ljava/io/IOException; {:try_start_f4 .. :try_end_123} :catch_125
    .catchall {:try_start_f4 .. :try_end_123} :catchall_271

    goto/16 :goto_13

    .line 483
    :catch_125
    move-exception v0

    goto :goto_ac

    .line 418
    :cond_127
    :try_start_127
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->resources:Lorg/apache/tools/ant/types/resources/Union;

    if-eqz v0, :cond_1e5

    .line 419
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/resources/Union;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move v4, v1

    :cond_130
    :goto_130
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1e6

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/types/Resource;

    .line 421
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Resource;->isExists()Z

    move-result v1

    if-nez v1, :cond_146

    iget-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->ignoreMissing:Z

    if-nez v1, :cond_130

    .line 425
    :cond_146
    const/4 v5, 0x0

    .line 426
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Resource;->getName()Ljava/lang/String;

    move-result-object v6

    .line 427
    const-class v1, Lorg/apache/tools/ant/types/resources/FileProvider;

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Resource;->as(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/tools/ant/types/resources/FileProvider;

    .line 428
    if-eqz v1, :cond_168

    .line 429
    invoke-static {v1}, Lorg/apache/tools/ant/util/ResourceUtils;->asFileResource(Lorg/apache/tools/ant/types/resources/FileProvider;)Lorg/apache/tools/ant/types/resources/FileResource;

    move-result-object v5

    .line 430
    invoke-virtual {v5}, Lorg/apache/tools/ant/types/resources/FileResource;->getBaseDir()Ljava/io/File;

    move-result-object v1

    .line 431
    if-nez v1, :cond_277

    .line 432
    invoke-virtual {v5}, Lorg/apache/tools/ant/types/resources/FileResource;->getFile()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    move-object v5, v1

    .line 436
    :cond_168
    :goto_168
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v10, 0x0

    aput-object v6, v1, v10

    invoke-direct {p0, v1, v5}, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->restrict([Ljava/lang/String;Ljava/io/File;)[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    if-eqz v1, :cond_130

    .line 440
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Resource;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_181

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Resource;->isExists()Z

    move-result v1

    if-nez v1, :cond_1d1

    :cond_181
    const-string v1, "dir"

    iget-object v10, p0, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->type:Ljava/lang/String;

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_188
    .catch Ljava/io/IOException; {:try_start_127 .. :try_end_188} :catch_ab
    .catchall {:try_start_127 .. :try_end_188} :catchall_c7

    move-result v1

    if-nez v1, :cond_1d1

    .line 441
    add-int/lit8 v1, v4, 0x1

    .line 448
    :goto_18d
    :try_start_18d
    invoke-virtual {v8, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 449
    invoke-virtual {v7, v6}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 451
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->parallel:Z

    if-nez v0, :cond_274

    .line 452
    invoke-virtual {p0, v6, v5}, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->getCommandline(Ljava/lang/String;Ljava/io/File;)[Ljava/lang/String;

    move-result-object v0

    .line 453
    invoke-static {v0}, Lorg/apache/tools/ant/types/Commandline;->describeCommand([Ljava/lang/String;)Ljava/lang/String;
    :try_end_19e
    .catch Ljava/io/IOException; {:try_start_18d .. :try_end_19e} :catch_25f
    .catchall {:try_start_18d .. :try_end_19e} :catchall_262

    move-result-object v4

    const/4 v5, 0x3

    :try_start_1a0
    invoke-virtual {p0, v4, v5}, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->log(Ljava/lang/String;I)V

    .line 454
    invoke-virtual {p1, v0}, Lorg/apache/tools/ant/taskdefs/Execute;->setCommandline([Ljava/lang/String;)V

    .line 456
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->redirectorElement:Lorg/apache/tools/ant/types/RedirectorElement;

    if-eqz v0, :cond_1b4

    .line 457
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->setupRedirector()V

    .line 458
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->redirectorElement:Lorg/apache/tools/ant/types/RedirectorElement;

    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->redirector:Lorg/apache/tools/ant/taskdefs/Redirector;

    invoke-virtual {v0, v4, v6}, Lorg/apache/tools/ant/types/RedirectorElement;->configure(Lorg/apache/tools/ant/taskdefs/Redirector;Ljava/lang/String;)V

    .line 460
    :cond_1b4
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->redirectorElement:Lorg/apache/tools/ant/types/RedirectorElement;

    if-nez v0, :cond_1ba

    if-eqz v3, :cond_1c3

    .line 464
    :cond_1ba
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->redirector:Lorg/apache/tools/ant/taskdefs/Redirector;

    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/Redirector;->createHandler()Lorg/apache/tools/ant/taskdefs/ExecuteStreamHandler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/apache/tools/ant/taskdefs/Execute;->setStreamHandler(Lorg/apache/tools/ant/taskdefs/ExecuteStreamHandler;)V

    .line 466
    :cond_1c3
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->runExecute(Lorg/apache/tools/ant/taskdefs/Execute;)V

    .line 467
    const/4 v0, 0x1

    .line 468
    invoke-virtual {v7}, Ljava/util/Vector;->clear()V

    .line 469
    invoke-virtual {v8}, Ljava/util/Vector;->clear()V
    :try_end_1cd
    .catch Ljava/io/IOException; {:try_start_1a0 .. :try_end_1cd} :catch_265
    .catchall {:try_start_1a0 .. :try_end_1cd} :catchall_268

    :goto_1cd
    move v3, v0

    move v4, v1

    .line 451
    goto/16 :goto_130

    .line 442
    :cond_1d1
    :try_start_1d1
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Resource;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_130

    const-string v0, "file"

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_130

    .line 443
    add-int/lit8 v2, v2, 0x1

    move v1, v4

    goto :goto_18d

    :cond_1e5
    move v4, v1

    .line 473
    :cond_1e6
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->parallel:Z

    if-eqz v0, :cond_1f8

    invoke-virtual {v7}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1f4

    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->skipEmpty:Z

    if-nez v0, :cond_1f8

    .line 474
    :cond_1f4
    invoke-virtual {p0, p1, v7, v8}, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->runParallel(Lorg/apache/tools/ant/taskdefs/Execute;Ljava/util/Vector;Ljava/util/Vector;)V

    .line 475
    const/4 v3, 0x1

    .line 477
    :cond_1f8
    if-eqz v3, :cond_248

    .line 478
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Applied "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->cmdl:Lorg/apache/tools/ant/types/Commandline;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Commandline;->getExecutable()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " to "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " file"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_21a
    .catch Ljava/io/IOException; {:try_start_1d1 .. :try_end_21a} :catch_ab
    .catchall {:try_start_1d1 .. :try_end_21a} :catchall_c7

    .line 479
    const/4 v0, 0x1

    if-eq v4, v0, :cond_257

    const-string v0, "s"

    :goto_21f
    :try_start_21f
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " and "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " director"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_22f
    .catch Ljava/io/IOException; {:try_start_21f .. :try_end_22f} :catch_ab
    .catchall {:try_start_21f .. :try_end_22f} :catchall_c7

    .line 480
    const/4 v0, 0x1

    if-eq v2, v0, :cond_25a

    const-string v0, "ies"

    :goto_234
    :try_start_234
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 481
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->verbose:Z

    if-eqz v0, :cond_25d

    const/4 v0, 0x2

    .line 478
    :goto_245
    invoke-virtual {p0, v1, v0}, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->log(Ljava/lang/String;I)V
    :try_end_248
    .catch Ljava/io/IOException; {:try_start_234 .. :try_end_248} :catch_ab
    .catchall {:try_start_234 .. :try_end_248} :catchall_c7

    .line 487
    :cond_248
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->logFlush()V

    .line 488
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->redirector:Lorg/apache/tools/ant/taskdefs/Redirector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/taskdefs/Redirector;->setAppendProperties(Z)V

    .line 489
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->redirector:Lorg/apache/tools/ant/taskdefs/Redirector;

    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/Redirector;->setProperties()V

    .line 490
    return-void

    .line 479
    :cond_257
    const-string v0, ""

    goto :goto_21f

    .line 480
    :cond_25a
    const-string v0, "y"

    goto :goto_234

    .line 481
    :cond_25d
    const/4 v0, 0x3

    goto :goto_245

    .line 483
    :catch_25f
    move-exception v0

    goto/16 :goto_ac

    .line 487
    :catchall_262
    move-exception v0

    goto/16 :goto_c8

    .line 483
    :catch_265
    move-exception v0

    goto/16 :goto_ac

    .line 487
    :catchall_268
    move-exception v0

    goto/16 :goto_c8

    .line 483
    :catch_26b
    move-exception v0

    goto/16 :goto_ac

    .line 487
    :catchall_26e
    move-exception v0

    goto/16 :goto_c8

    :catchall_271
    move-exception v0

    goto/16 :goto_c8

    :cond_274
    move v0, v3

    goto/16 :goto_1cd

    :cond_277
    move-object v5, v1

    goto/16 :goto_168

    :cond_27a
    move-object v5, v4

    goto/16 :goto_4c
.end method

.method protected runParallel(Lorg/apache/tools/ant/taskdefs/Execute;Ljava/util/Vector;Ljava/util/Vector;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/tools/ant/taskdefs/Execute;",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Vector",
            "<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    const/4 v9, 0x3

    const/4 v8, 0x0

    const/4 v4, 0x0

    .line 690
    new-array v0, v4, [Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 691
    new-array v1, v4, [Ljava/io/File;

    invoke-virtual {p3, v1}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/io/File;

    .line 693
    iget v2, p0, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->maxParallel:I

    if-lez v2, :cond_1a

    array-length v2, v0

    if-nez v2, :cond_43

    .line 694
    :cond_1a
    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->getCommandline([Ljava/lang/String;[Ljava/io/File;)[Ljava/lang/String;

    move-result-object v0

    .line 695
    invoke-static {v0}, Lorg/apache/tools/ant/types/Commandline;->describeCommand([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v9}, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->log(Ljava/lang/String;I)V

    .line 696
    invoke-virtual {p1, v0}, Lorg/apache/tools/ant/taskdefs/Execute;->setCommandline([Ljava/lang/String;)V

    .line 697
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->redirectorElement:Lorg/apache/tools/ant/types/RedirectorElement;

    if-eqz v0, :cond_3f

    .line 698
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->setupRedirector()V

    .line 699
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->redirectorElement:Lorg/apache/tools/ant/types/RedirectorElement;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->redirector:Lorg/apache/tools/ant/taskdefs/Redirector;

    invoke-virtual {v0, v1, v8}, Lorg/apache/tools/ant/types/RedirectorElement;->configure(Lorg/apache/tools/ant/taskdefs/Redirector;Ljava/lang/String;)V

    .line 700
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->redirector:Lorg/apache/tools/ant/taskdefs/Redirector;

    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/Redirector;->createHandler()Lorg/apache/tools/ant/taskdefs/ExecuteStreamHandler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/apache/tools/ant/taskdefs/Execute;->setStreamHandler(Lorg/apache/tools/ant/taskdefs/ExecuteStreamHandler;)V

    .line 702
    :cond_3f
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->runExecute(Lorg/apache/tools/ant/taskdefs/Execute;)V

    .line 703
    :cond_42
    return-void

    .line 704
    :cond_43
    invoke-virtual {p2}, Ljava/util/Vector;->size()I

    move-result v2

    move v3, v4

    .line 706
    :goto_48
    if-lez v2, :cond_42

    .line 707
    iget v5, p0, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->maxParallel:I

    invoke-static {v2, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 708
    new-array v6, v5, [Ljava/lang/String;

    .line 709
    invoke-static {v0, v3, v6, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 710
    new-array v7, v5, [Ljava/io/File;

    .line 711
    invoke-static {v1, v3, v7, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 712
    invoke-virtual {p0, v6, v7}, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->getCommandline([Ljava/lang/String;[Ljava/io/File;)[Ljava/lang/String;

    move-result-object v6

    .line 713
    invoke-static {v6}, Lorg/apache/tools/ant/types/Commandline;->describeCommand([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7, v9}, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->log(Ljava/lang/String;I)V

    .line 714
    invoke-virtual {p1, v6}, Lorg/apache/tools/ant/taskdefs/Execute;->setCommandline([Ljava/lang/String;)V

    .line 715
    iget-object v6, p0, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->redirectorElement:Lorg/apache/tools/ant/types/RedirectorElement;

    if-eqz v6, :cond_76

    .line 716
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->setupRedirector()V

    .line 717
    iget-object v6, p0, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->redirectorElement:Lorg/apache/tools/ant/types/RedirectorElement;

    iget-object v7, p0, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->redirector:Lorg/apache/tools/ant/taskdefs/Redirector;

    invoke-virtual {v6, v7, v8}, Lorg/apache/tools/ant/types/RedirectorElement;->configure(Lorg/apache/tools/ant/taskdefs/Redirector;Ljava/lang/String;)V

    .line 719
    :cond_76
    iget-object v6, p0, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->redirectorElement:Lorg/apache/tools/ant/types/RedirectorElement;

    if-nez v6, :cond_7c

    if-lez v3, :cond_85

    .line 723
    :cond_7c
    iget-object v6, p0, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->redirector:Lorg/apache/tools/ant/taskdefs/Redirector;

    invoke-virtual {v6}, Lorg/apache/tools/ant/taskdefs/Redirector;->createHandler()Lorg/apache/tools/ant/taskdefs/ExecuteStreamHandler;

    move-result-object v6

    invoke-virtual {p1, v6}, Lorg/apache/tools/ant/taskdefs/Execute;->setStreamHandler(Lorg/apache/tools/ant/taskdefs/ExecuteStreamHandler;)V

    .line 725
    :cond_85
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->runExecute(Lorg/apache/tools/ant/taskdefs/Execute;)V

    .line 727
    sub-int/2addr v2, v5

    .line 728
    add-int/2addr v3, v5

    .line 729
    goto :goto_48
.end method

.method public setAddsourcefile(Z)V
    .registers 2

    .line 213
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->addSourceFile:Z

    .line 214
    return-void
.end method

.method public setDest(Ljava/io/File;)V
    .registers 2

    .line 176
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->destDir:Ljava/io/File;

    .line 177
    return-void
.end method

.method public setForce(Z)V
    .registers 2

    .line 244
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->force:Z

    .line 245
    return-void
.end method

.method public setForwardslash(Z)V
    .registers 2

    .line 185
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->forwardSlash:Z

    .line 186
    return-void
.end method

.method public setIgnoremissing(Z)V
    .registers 2

    .line 234
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->ignoreMissing:Z

    .line 235
    return-void
.end method

.method public setMaxParallel(I)V
    .registers 2

    .line 200
    iput p1, p0, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->maxParallel:I

    .line 201
    return-void
.end method

.method public setParallel(Z)V
    .registers 2

    .line 150
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->parallel:Z

    .line 151
    return-void
.end method

.method public setRelative(Z)V
    .registers 2

    .line 139
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->relative:Z

    .line 140
    return-void
.end method

.method public setSkipEmptyFilesets(Z)V
    .registers 2

    .line 168
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->skipEmpty:Z

    .line 169
    return-void
.end method

.method public setType(Lorg/apache/tools/ant/taskdefs/ExecuteOn$FileDirBoth;)V
    .registers 3

    .line 158
    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/ExecuteOn$FileDirBoth;->getValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->type:Ljava/lang/String;

    .line 159
    return-void
.end method

.method public setVerbose(Z)V
    .registers 2

    .line 224
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->verbose:Z

    .line 225
    return-void
.end method

.method protected setupRedirector()V
    .registers 3

    .line 345
    invoke-super {p0}, Lorg/apache/tools/ant/taskdefs/ExecTask;->setupRedirector()V

    .line 346
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->redirector:Lorg/apache/tools/ant/taskdefs/Redirector;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/taskdefs/Redirector;->setAppendProperties(Z)V

    .line 347
    return-void
.end method
