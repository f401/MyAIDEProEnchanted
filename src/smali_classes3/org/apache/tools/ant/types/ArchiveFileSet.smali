.class public abstract Lorg/apache/tools/ant/types/ArchiveFileSet;
.super Lorg/apache/tools/ant/types/FileSet;
.source "ArchiveFileSet.java"


# static fields
.field private static final BASE_OCTAL:I = 0x8

.field public static final DEFAULT_DIR_MODE:I = 0x41ed

.field public static final DEFAULT_FILE_MODE:I = 0x81a4

.field private static final ERROR_DIR_AND_SRC_ATTRIBUTES:Ljava/lang/String; = "Cannot set both dir and src attributes"

.field private static final ERROR_PATH_AND_PREFIX:Ljava/lang/String; = "Cannot set both fullpath and prefix attributes"


# instance fields
.field private dirMode:I

.field private dirModeHasBeenSet:Z

.field private encoding:Ljava/lang/String;

.field private errorOnMissingArchive:Z

.field private fileMode:I

.field private fileModeHasBeenSet:Z

.field private fullpath:Ljava/lang/String;

.field private hasDir:Z

.field private prefix:Ljava/lang/String;

.field private src:Lorg/apache/tools/ant/types/Resource;


# direct methods
.method public constructor <init>()V
    .registers 4

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 79
    invoke-direct {p0}, Lorg/apache/tools/ant/types/FileSet;-><init>()V

    .line 61
    iput-object v2, p0, Lorg/apache/tools/ant/types/ArchiveFileSet;->src:Lorg/apache/tools/ant/types/Resource;

    .line 62
    const-string v0, ""

    iput-object v0, p0, Lorg/apache/tools/ant/types/ArchiveFileSet;->prefix:Ljava/lang/String;

    .line 63
    const-string v0, ""

    iput-object v0, p0, Lorg/apache/tools/ant/types/ArchiveFileSet;->fullpath:Ljava/lang/String;

    .line 64
    iput-boolean v1, p0, Lorg/apache/tools/ant/types/ArchiveFileSet;->hasDir:Z

    .line 65
    const v0, 0x81a4

    iput v0, p0, Lorg/apache/tools/ant/types/ArchiveFileSet;->fileMode:I

    .line 66
    const/16 v0, 0x41ed

    iput v0, p0, Lorg/apache/tools/ant/types/ArchiveFileSet;->dirMode:I

    .line 68
    iput-boolean v1, p0, Lorg/apache/tools/ant/types/ArchiveFileSet;->fileModeHasBeenSet:Z

    .line 69
    iput-boolean v1, p0, Lorg/apache/tools/ant/types/ArchiveFileSet;->dirModeHasBeenSet:Z

    .line 73
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/tools/ant/types/ArchiveFileSet;->errorOnMissingArchive:Z

    .line 75
    iput-object v2, p0, Lorg/apache/tools/ant/types/ArchiveFileSet;->encoding:Ljava/lang/String;

    .line 80
    return-void
.end method

.method protected constructor <init>(Lorg/apache/tools/ant/types/ArchiveFileSet;)V
    .registers 5

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 95
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/types/FileSet;-><init>(Lorg/apache/tools/ant/types/FileSet;)V

    .line 61
    iput-object v2, p0, Lorg/apache/tools/ant/types/ArchiveFileSet;->src:Lorg/apache/tools/ant/types/Resource;

    .line 62
    const-string v0, ""

    iput-object v0, p0, Lorg/apache/tools/ant/types/ArchiveFileSet;->prefix:Ljava/lang/String;

    .line 63
    const-string v0, ""

    iput-object v0, p0, Lorg/apache/tools/ant/types/ArchiveFileSet;->fullpath:Ljava/lang/String;

    .line 64
    iput-boolean v1, p0, Lorg/apache/tools/ant/types/ArchiveFileSet;->hasDir:Z

    .line 65
    const v0, 0x81a4

    iput v0, p0, Lorg/apache/tools/ant/types/ArchiveFileSet;->fileMode:I

    .line 66
    const/16 v0, 0x41ed

    iput v0, p0, Lorg/apache/tools/ant/types/ArchiveFileSet;->dirMode:I

    .line 68
    iput-boolean v1, p0, Lorg/apache/tools/ant/types/ArchiveFileSet;->fileModeHasBeenSet:Z

    .line 69
    iput-boolean v1, p0, Lorg/apache/tools/ant/types/ArchiveFileSet;->dirModeHasBeenSet:Z

    .line 73
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/tools/ant/types/ArchiveFileSet;->errorOnMissingArchive:Z

    .line 75
    iput-object v2, p0, Lorg/apache/tools/ant/types/ArchiveFileSet;->encoding:Ljava/lang/String;

    .line 96
    iget-object v0, p1, Lorg/apache/tools/ant/types/ArchiveFileSet;->src:Lorg/apache/tools/ant/types/Resource;

    iput-object v0, p0, Lorg/apache/tools/ant/types/ArchiveFileSet;->src:Lorg/apache/tools/ant/types/Resource;

    .line 97
    iget-object v0, p1, Lorg/apache/tools/ant/types/ArchiveFileSet;->prefix:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/tools/ant/types/ArchiveFileSet;->prefix:Ljava/lang/String;

    .line 98
    iget-object v0, p1, Lorg/apache/tools/ant/types/ArchiveFileSet;->fullpath:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/tools/ant/types/ArchiveFileSet;->fullpath:Ljava/lang/String;

    .line 99
    iget-boolean v0, p1, Lorg/apache/tools/ant/types/ArchiveFileSet;->hasDir:Z

    iput-boolean v0, p0, Lorg/apache/tools/ant/types/ArchiveFileSet;->hasDir:Z

    .line 100
    iget v0, p1, Lorg/apache/tools/ant/types/ArchiveFileSet;->fileMode:I

    iput v0, p0, Lorg/apache/tools/ant/types/ArchiveFileSet;->fileMode:I

    .line 101
    iget v0, p1, Lorg/apache/tools/ant/types/ArchiveFileSet;->dirMode:I

    iput v0, p0, Lorg/apache/tools/ant/types/ArchiveFileSet;->dirMode:I

    .line 102
    iget-boolean v0, p1, Lorg/apache/tools/ant/types/ArchiveFileSet;->fileModeHasBeenSet:Z

    iput-boolean v0, p0, Lorg/apache/tools/ant/types/ArchiveFileSet;->fileModeHasBeenSet:Z

    .line 103
    iget-boolean v0, p1, Lorg/apache/tools/ant/types/ArchiveFileSet;->dirModeHasBeenSet:Z

    iput-boolean v0, p0, Lorg/apache/tools/ant/types/ArchiveFileSet;->dirModeHasBeenSet:Z

    .line 104
    iget-boolean v0, p1, Lorg/apache/tools/ant/types/ArchiveFileSet;->errorOnMissingArchive:Z

    iput-boolean v0, p0, Lorg/apache/tools/ant/types/ArchiveFileSet;->errorOnMissingArchive:Z

    .line 105
    iget-object v0, p1, Lorg/apache/tools/ant/types/ArchiveFileSet;->encoding:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/tools/ant/types/ArchiveFileSet;->encoding:Ljava/lang/String;

    .line 106
    return-void
.end method

.method protected constructor <init>(Lorg/apache/tools/ant/types/FileSet;)V
    .registers 5

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 87
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/types/FileSet;-><init>(Lorg/apache/tools/ant/types/FileSet;)V

    .line 61
    iput-object v2, p0, Lorg/apache/tools/ant/types/ArchiveFileSet;->src:Lorg/apache/tools/ant/types/Resource;

    .line 62
    const-string v0, ""

    iput-object v0, p0, Lorg/apache/tools/ant/types/ArchiveFileSet;->prefix:Ljava/lang/String;

    .line 63
    const-string v0, ""

    iput-object v0, p0, Lorg/apache/tools/ant/types/ArchiveFileSet;->fullpath:Ljava/lang/String;

    .line 64
    iput-boolean v1, p0, Lorg/apache/tools/ant/types/ArchiveFileSet;->hasDir:Z

    .line 65
    const v0, 0x81a4

    iput v0, p0, Lorg/apache/tools/ant/types/ArchiveFileSet;->fileMode:I

    .line 66
    const/16 v0, 0x41ed

    iput v0, p0, Lorg/apache/tools/ant/types/ArchiveFileSet;->dirMode:I

    .line 68
    iput-boolean v1, p0, Lorg/apache/tools/ant/types/ArchiveFileSet;->fileModeHasBeenSet:Z

    .line 69
    iput-boolean v1, p0, Lorg/apache/tools/ant/types/ArchiveFileSet;->dirModeHasBeenSet:Z

    .line 73
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/tools/ant/types/ArchiveFileSet;->errorOnMissingArchive:Z

    .line 75
    iput-object v2, p0, Lorg/apache/tools/ant/types/ArchiveFileSet;->encoding:Ljava/lang/String;

    .line 88
    return-void
.end method

.method private checkArchiveAttributesAllowed()V
    .registers 3

    .line 573
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/ArchiveFileSet;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 574
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/ArchiveFileSet;->isReference()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 575
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/ArchiveFileSet;->getRefid()Lorg/apache/tools/ant/types/Reference;

    move-result-object v0

    .line 576
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/ArchiveFileSet;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    .line 575
    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Reference;->getReferencedObject(Lorg/apache/tools/ant/Project;)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lorg/apache/tools/ant/types/ArchiveFileSet;

    if-eqz v0, :cond_1

    .line 578
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/ArchiveFileSet;->checkAttributesAllowed()V

    .line 580
    :cond_1
    return-void
.end method


# virtual methods
.method public addConfigured(Lorg/apache/tools/ant/types/ResourceCollection;)V
    .registers 4

    .line 129
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/ArchiveFileSet;->checkChildrenAllowed()V

    .line 130
    invoke-interface {p1}, Lorg/apache/tools/ant/types/ResourceCollection;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 134
    invoke-interface {p1}, Lorg/apache/tools/ant/types/ResourceCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/types/Resource;

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/ArchiveFileSet;->setSrcResource(Lorg/apache/tools/ant/types/Resource;)V

    .line 135
    return-void

    .line 131
    :cond_0
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "only single argument resource collections are supported as archives"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public clone()Ljava/lang/Object;
    .registers 2

    .line 506
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/ArchiveFileSet;->isReference()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 507
    const-class v0, Lorg/apache/tools/ant/types/ArchiveFileSet;

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/ArchiveFileSet;->getCheckedRef(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/types/ArchiveFileSet;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/ArchiveFileSet;->clone()Ljava/lang/Object;

    move-result-object v0

    .line 509
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Lorg/apache/tools/ant/types/FileSet;->clone()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method protected configureFileSet(Lorg/apache/tools/ant/types/ArchiveFileSet;)V
    .registers 3

    .line 490
    iget-object v0, p0, Lorg/apache/tools/ant/types/ArchiveFileSet;->prefix:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/tools/ant/types/ArchiveFileSet;->setPrefix(Ljava/lang/String;)V

    .line 491
    iget-object v0, p0, Lorg/apache/tools/ant/types/ArchiveFileSet;->fullpath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/tools/ant/types/ArchiveFileSet;->setFullpath(Ljava/lang/String;)V

    .line 492
    iget-boolean v0, p0, Lorg/apache/tools/ant/types/ArchiveFileSet;->fileModeHasBeenSet:Z

    iput-boolean v0, p1, Lorg/apache/tools/ant/types/ArchiveFileSet;->fileModeHasBeenSet:Z

    .line 493
    iget v0, p0, Lorg/apache/tools/ant/types/ArchiveFileSet;->fileMode:I

    iput v0, p1, Lorg/apache/tools/ant/types/ArchiveFileSet;->fileMode:I

    .line 494
    iget-boolean v0, p0, Lorg/apache/tools/ant/types/ArchiveFileSet;->dirModeHasBeenSet:Z

    iput-boolean v0, p1, Lorg/apache/tools/ant/types/ArchiveFileSet;->dirModeHasBeenSet:Z

    .line 495
    iget v0, p0, Lorg/apache/tools/ant/types/ArchiveFileSet;->dirMode:I

    iput v0, p1, Lorg/apache/tools/ant/types/ArchiveFileSet;->dirMode:I

    .line 496
    return-void
.end method

.method protected dieOnCircularReference(Ljava/util/Stack;Lorg/apache/tools/ant/Project;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Stack",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Lorg/apache/tools/ant/Project;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    monitor-enter p0

    .line 585
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/ArchiveFileSet;->isChecked()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 586
    monitor-exit p0

    .line 598
    :goto_0
    return-void

    .line 590
    :cond_0
    :try_start_1
    invoke-super {p0, p1, p2}, Lorg/apache/tools/ant/types/FileSet;->dieOnCircularReference(Ljava/util/Stack;Lorg/apache/tools/ant/Project;)V

    .line 592
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/ArchiveFileSet;->isReference()Z

    move-result v0

    if-nez v0, :cond_2

    .line 593
    iget-object v0, p0, Lorg/apache/tools/ant/types/ArchiveFileSet;->src:Lorg/apache/tools/ant/types/Resource;

    if-eqz v0, :cond_1

    .line 594
    invoke-static {v0, p1, p2}, Lorg/apache/tools/ant/types/ArchiveFileSet;->pushAndInvokeCircularReferenceCheck(Lorg/apache/tools/ant/types/DataType;Ljava/util/Stack;Lorg/apache/tools/ant/Project;)V

    .line 596
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/ArchiveFileSet;->setChecked(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 598
    :cond_2
    monitor-exit p0

    goto :goto_0

    .line 584
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getDirMode()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 561
    iget v0, p0, Lorg/apache/tools/ant/types/ArchiveFileSet;->dirMode:I

    return v0
.end method

.method public getDirMode(Lorg/apache/tools/ant/Project;)I
    .registers 3

    .line 464
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/ArchiveFileSet;->isReference()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 465
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/types/ArchiveFileSet;->getRef(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/types/AbstractFileSet;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/types/ArchiveFileSet;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/ArchiveFileSet;->getDirMode(Lorg/apache/tools/ant/Project;)I

    move-result v0

    .line 468
    :goto_0
    return v0

    .line 467
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/ArchiveFileSet;->dieOnCircularReference()V

    .line 468
    iget v0, p0, Lorg/apache/tools/ant/types/ArchiveFileSet;->dirMode:I

    goto :goto_0
.end method

.method public getDirectoryScanner(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/DirectoryScanner;
    .registers 4

    .line 309
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/ArchiveFileSet;->isReference()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 310
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/types/ArchiveFileSet;->getRef(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/types/AbstractFileSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/AbstractFileSet;->getDirectoryScanner(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/DirectoryScanner;

    move-result-object v0

    .line 330
    :goto_0
    return-object v0

    .line 312
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/ArchiveFileSet;->dieOnCircularReference()V

    .line 313
    iget-object v0, p0, Lorg/apache/tools/ant/types/ArchiveFileSet;->src:Lorg/apache/tools/ant/types/Resource;

    if-nez v0, :cond_1

    .line 314
    invoke-super {p0, p1}, Lorg/apache/tools/ant/types/FileSet;->getDirectoryScanner(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/DirectoryScanner;

    move-result-object v0

    goto :goto_0

    .line 316
    :cond_1
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Resource;->isExists()Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lorg/apache/tools/ant/types/ArchiveFileSet;->errorOnMissingArchive:Z

    if-nez v0, :cond_3

    .line 320
    :cond_2
    iget-object v0, p0, Lorg/apache/tools/ant/types/ArchiveFileSet;->src:Lorg/apache/tools/ant/types/Resource;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Resource;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_4

    .line 324
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/ArchiveFileSet;->newArchiveScanner()Lorg/apache/tools/ant/types/ArchiveScanner;

    move-result-object v0

    .line 325
    iget-boolean v1, p0, Lorg/apache/tools/ant/types/ArchiveFileSet;->errorOnMissingArchive:Z

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/ArchiveScanner;->setErrorOnMissingArchive(Z)V

    .line 326
    iget-object v1, p0, Lorg/apache/tools/ant/types/ArchiveFileSet;->src:Lorg/apache/tools/ant/types/Resource;

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/ArchiveScanner;->setSrc(Lorg/apache/tools/ant/types/Resource;)V

    .line 327
    invoke-virtual {p1}, Lorg/apache/tools/ant/Project;->getBaseDir()Ljava/io/File;

    move-result-object v1

    invoke-super {p0, v1}, Lorg/apache/tools/ant/types/FileSet;->setDir(Ljava/io/File;)V

    .line 328
    invoke-virtual {p0, v0, p1}, Lorg/apache/tools/ant/types/ArchiveFileSet;->setupDirectoryScanner(Lorg/apache/tools/ant/FileScanner;Lorg/apache/tools/ant/Project;)V

    .line 329
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/ArchiveScanner;->init()V

    goto :goto_0

    .line 317
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The archive "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/tools/ant/types/ArchiveFileSet;->src:Lorg/apache/tools/ant/types/Resource;

    .line 318
    invoke-virtual {v1}, Lorg/apache/tools/ant/types/Resource;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " doesn\'t exist"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 321
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The archive "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/tools/ant/types/ArchiveFileSet;->src:Lorg/apache/tools/ant/types/Resource;

    invoke-virtual {v1}, Lorg/apache/tools/ant/types/Resource;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " can\'t be a directory"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getEncoding()Ljava/lang/String;
    .registers 3

    .line 287
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/ArchiveFileSet;->isReference()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 288
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/ArchiveFileSet;->getRef()Lorg/apache/tools/ant/types/AbstractFileSet;

    move-result-object v0

    .line 289
    instance-of v1, v0, Lorg/apache/tools/ant/types/ArchiveFileSet;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/apache/tools/ant/types/ArchiveFileSet;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/ArchiveFileSet;->getEncoding()Ljava/lang/String;

    move-result-object v0

    .line 291
    :goto_0
    return-object v0

    .line 289
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 291
    :cond_1
    iget-object v0, p0, Lorg/apache/tools/ant/types/ArchiveFileSet;->encoding:Ljava/lang/String;

    goto :goto_0
.end method

.method public getFileMode()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 552
    iget v0, p0, Lorg/apache/tools/ant/types/ArchiveFileSet;->fileMode:I

    return v0
.end method

.method public getFileMode(Lorg/apache/tools/ant/Project;)I
    .registers 3

    .line 414
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/ArchiveFileSet;->isReference()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 415
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/types/ArchiveFileSet;->getRef(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/types/AbstractFileSet;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/types/ArchiveFileSet;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/ArchiveFileSet;->getFileMode(Lorg/apache/tools/ant/Project;)I

    move-result v0

    .line 418
    :goto_0
    return v0

    .line 417
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/ArchiveFileSet;->dieOnCircularReference()V

    .line 418
    iget v0, p0, Lorg/apache/tools/ant/types/ArchiveFileSet;->fileMode:I

    goto :goto_0
.end method

.method public getFullpath()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 543
    iget-object v0, p0, Lorg/apache/tools/ant/types/ArchiveFileSet;->fullpath:Ljava/lang/String;

    return-object v0
.end method

.method public getFullpath(Lorg/apache/tools/ant/Project;)Ljava/lang/String;
    .registers 3

    .line 264
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/ArchiveFileSet;->isReference()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 265
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/types/ArchiveFileSet;->getRef(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/types/AbstractFileSet;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/types/ArchiveFileSet;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/ArchiveFileSet;->getFullpath(Lorg/apache/tools/ant/Project;)Ljava/lang/String;

    move-result-object v0

    .line 268
    :goto_0
    return-object v0

    .line 267
    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/types/ArchiveFileSet;->dieOnCircularReference(Lorg/apache/tools/ant/Project;)V

    .line 268
    iget-object v0, p0, Lorg/apache/tools/ant/types/ArchiveFileSet;->fullpath:Ljava/lang/String;

    goto :goto_0
.end method

.method public getPrefix()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 533
    iget-object v0, p0, Lorg/apache/tools/ant/types/ArchiveFileSet;->prefix:Ljava/lang/String;

    return-object v0
.end method

.method public getPrefix(Lorg/apache/tools/ant/Project;)Ljava/lang/String;
    .registers 3

    .line 237
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/ArchiveFileSet;->isReference()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 238
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/types/ArchiveFileSet;->getRef(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/types/AbstractFileSet;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/types/ArchiveFileSet;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/ArchiveFileSet;->getPrefix(Lorg/apache/tools/ant/Project;)Ljava/lang/String;

    move-result-object v0

    .line 241
    :goto_0
    return-object v0

    .line 240
    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/types/ArchiveFileSet;->dieOnCircularReference(Lorg/apache/tools/ant/Project;)V

    .line 241
    iget-object v0, p0, Lorg/apache/tools/ant/types/ArchiveFileSet;->prefix:Ljava/lang/String;

    goto :goto_0
.end method

.method protected getRef()Lorg/apache/tools/ant/types/AbstractFileSet;
    .registers 2

    .line 214
    const-class v0, Lorg/apache/tools/ant/types/AbstractFileSet;

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/ArchiveFileSet;->getCheckedRef(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/types/AbstractFileSet;

    return-object v0
.end method

.method public getSrc()Ljava/io/File;
    .registers 4

    const/4 v0, 0x0

    .line 191
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/ArchiveFileSet;->isReference()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 192
    const-class v0, Lorg/apache/tools/ant/types/ArchiveFileSet;

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/ArchiveFileSet;->getCheckedRef(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/types/ArchiveFileSet;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/ArchiveFileSet;->getSrc()Ljava/io/File;

    move-result-object v0

    .line 198
    :cond_0
    :goto_0
    return-object v0

    .line 194
    :cond_1
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/ArchiveFileSet;->dieOnCircularReference()V

    .line 195
    iget-object v1, p0, Lorg/apache/tools/ant/types/ArchiveFileSet;->src:Lorg/apache/tools/ant/types/Resource;

    if-eqz v1, :cond_0

    .line 198
    const-class v2, Lorg/apache/tools/ant/types/resources/FileProvider;

    invoke-virtual {v1, v2}, Lorg/apache/tools/ant/types/Resource;->asOptional(Ljava/lang/Class;)Ljava/util/Optional;

    move-result-object v1

    sget-object v2, Lorg/apache/tools/ant/taskdefs/ImportTask$$ExternalSyntheticLambda0;->INSTANCE:Lorg/apache/tools/ant/taskdefs/ImportTask$$ExternalSyntheticLambda0;

    invoke-virtual {v1, v2}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    goto :goto_0
.end method

.method public getSrc(Lorg/apache/tools/ant/Project;)Ljava/io/File;
    .registers 3

    .line 168
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/ArchiveFileSet;->isReference()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 169
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/types/ArchiveFileSet;->getRef(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/types/AbstractFileSet;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/types/ArchiveFileSet;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/ArchiveFileSet;->getSrc(Lorg/apache/tools/ant/Project;)Ljava/io/File;

    move-result-object v0

    .line 171
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/ArchiveFileSet;->getSrc()Ljava/io/File;

    move-result-object v0

    goto :goto_0
.end method

.method public hasDirModeBeenSet()Z
    .registers 2

    .line 477
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/ArchiveFileSet;->isReference()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 478
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/ArchiveFileSet;->getRef()Lorg/apache/tools/ant/types/AbstractFileSet;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/types/ArchiveFileSet;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/ArchiveFileSet;->hasDirModeBeenSet()Z

    move-result v0

    .line 481
    :goto_0
    return v0

    .line 480
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/ArchiveFileSet;->dieOnCircularReference()V

    .line 481
    iget-boolean v0, p0, Lorg/apache/tools/ant/types/ArchiveFileSet;->dirModeHasBeenSet:Z

    goto :goto_0
.end method

.method public hasFileModeBeenSet()Z
    .registers 2

    .line 426
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/ArchiveFileSet;->isReference()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 427
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/ArchiveFileSet;->getRef()Lorg/apache/tools/ant/types/AbstractFileSet;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/types/ArchiveFileSet;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/ArchiveFileSet;->hasFileModeBeenSet()Z

    move-result v0

    .line 430
    :goto_0
    return v0

    .line 429
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/ArchiveFileSet;->dieOnCircularReference()V

    .line 430
    iget-boolean v0, p0, Lorg/apache/tools/ant/types/ArchiveFileSet;->fileModeHasBeenSet:Z

    goto :goto_0
.end method

.method public integerSetDirMode(I)V
    .registers 3

    .line 454
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/tools/ant/types/ArchiveFileSet;->dirModeHasBeenSet:Z

    .line 455
    or-int/lit16 v0, p1, 0x4000

    iput v0, p0, Lorg/apache/tools/ant/types/ArchiveFileSet;->dirMode:I

    .line 456
    return-void
.end method

.method public integerSetFileMode(I)V
    .registers 3

    .line 404
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/tools/ant/types/ArchiveFileSet;->fileModeHasBeenSet:Z

    .line 405
    const v0, 0x8000

    or-int/2addr v0, p1

    iput v0, p0, Lorg/apache/tools/ant/types/ArchiveFileSet;->fileMode:I

    .line 406
    return-void
.end method

.method public isFilesystemOnly()Z
    .registers 2

    .line 375
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/ArchiveFileSet;->isReference()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 376
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/ArchiveFileSet;->getRef()Lorg/apache/tools/ant/types/AbstractFileSet;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/types/ArchiveFileSet;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/ArchiveFileSet;->isFilesystemOnly()Z

    move-result v0

    .line 379
    :goto_0
    return v0

    .line 378
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/ArchiveFileSet;->dieOnCircularReference()V

    .line 379
    iget-object v0, p0, Lorg/apache/tools/ant/types/ArchiveFileSet;->src:Lorg/apache/tools/ant/types/Resource;

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lorg/apache/tools/ant/types/Resource;",
            ">;"
        }
    .end annotation

    .line 340
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/ArchiveFileSet;->isReference()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 341
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/ArchiveFileSet;->getRef()Lorg/apache/tools/ant/types/AbstractFileSet;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/types/ResourceCollection;

    invoke-interface {v0}, Lorg/apache/tools/ant/types/ResourceCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 346
    :goto_0
    return-object v0

    .line 343
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/types/ArchiveFileSet;->src:Lorg/apache/tools/ant/types/Resource;

    if-nez v0, :cond_1

    .line 344
    invoke-super {p0}, Lorg/apache/tools/ant/types/FileSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    goto :goto_0

    .line 346
    :cond_1
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/ArchiveFileSet;->getDirectoryScanner()Lorg/apache/tools/ant/DirectoryScanner;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/types/ArchiveScanner;

    invoke-virtual {p0}, Lorg/apache/tools/ant/types/ArchiveFileSet;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/ArchiveScanner;->getResourceFiles(Lorg/apache/tools/ant/Project;)Ljava/util/Iterator;

    move-result-object v0

    goto :goto_0
.end method

.method protected abstract newArchiveScanner()Lorg/apache/tools/ant/types/ArchiveScanner;
.end method

.method public setDir(Ljava/io/File;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 115
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/ArchiveFileSet;->checkAttributesAllowed()V

    .line 116
    iget-object v0, p0, Lorg/apache/tools/ant/types/ArchiveFileSet;->src:Lorg/apache/tools/ant/types/Resource;

    if-nez v0, :cond_0

    .line 119
    invoke-super {p0, p1}, Lorg/apache/tools/ant/types/FileSet;->setDir(Ljava/io/File;)V

    .line 120
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/tools/ant/types/ArchiveFileSet;->hasDir:Z

    .line 121
    return-void

    .line 117
    :cond_0
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Cannot set both dir and src attributes"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setDirMode(Ljava/lang/String;)V
    .registers 3

    .line 440
    invoke-direct {p0}, Lorg/apache/tools/ant/types/ArchiveFileSet;->checkArchiveAttributesAllowed()V

    .line 441
    const/16 v0, 0x8

    invoke-static {p1, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/ArchiveFileSet;->integerSetDirMode(I)V

    .line 442
    return-void
.end method

.method public setEncoding(Ljava/lang/String;)V
    .registers 2

    .line 277
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/ArchiveFileSet;->checkAttributesAllowed()V

    .line 278
    iput-object p1, p0, Lorg/apache/tools/ant/types/ArchiveFileSet;->encoding:Ljava/lang/String;

    .line 279
    return-void
.end method

.method public setErrorOnMissingArchive(Z)V
    .registers 2

    .line 182
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/ArchiveFileSet;->checkAttributesAllowed()V

    .line 183
    iput-boolean p1, p0, Lorg/apache/tools/ant/types/ArchiveFileSet;->errorOnMissingArchive:Z

    .line 184
    return-void
.end method

.method public setFileMode(Ljava/lang/String;)V
    .registers 3

    .line 389
    invoke-direct {p0}, Lorg/apache/tools/ant/types/ArchiveFileSet;->checkArchiveAttributesAllowed()V

    .line 390
    const/16 v0, 0x8

    invoke-static {p1, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/ArchiveFileSet;->integerSetFileMode(I)V

    .line 391
    return-void
.end method

.method public setFullpath(Ljava/lang/String;)V
    .registers 4

    .line 251
    invoke-direct {p0}, Lorg/apache/tools/ant/types/ArchiveFileSet;->checkArchiveAttributesAllowed()V

    .line 252
    iget-object v0, p0, Lorg/apache/tools/ant/types/ArchiveFileSet;->prefix:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 255
    :cond_0
    iput-object p1, p0, Lorg/apache/tools/ant/types/ArchiveFileSet;->fullpath:Ljava/lang/String;

    .line 256
    return-void

    .line 253
    :cond_1
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Cannot set both fullpath and prefix attributes"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setPrefix(Ljava/lang/String;)V
    .registers 4

    .line 224
    invoke-direct {p0}, Lorg/apache/tools/ant/types/ArchiveFileSet;->checkArchiveAttributesAllowed()V

    .line 225
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/tools/ant/types/ArchiveFileSet;->fullpath:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 228
    :cond_0
    iput-object p1, p0, Lorg/apache/tools/ant/types/ArchiveFileSet;->prefix:Ljava/lang/String;

    .line 229
    return-void

    .line 226
    :cond_1
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Cannot set both fullpath and prefix attributes"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setSrc(Ljava/io/File;)V
    .registers 3

    .line 144
    new-instance v0, Lorg/apache/tools/ant/types/resources/FileResource;

    invoke-direct {v0, p1}, Lorg/apache/tools/ant/types/resources/FileResource;-><init>(Ljava/io/File;)V

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/ArchiveFileSet;->setSrcResource(Lorg/apache/tools/ant/types/Resource;)V

    .line 145
    return-void
.end method

.method public setSrcResource(Lorg/apache/tools/ant/types/Resource;)V
    .registers 4

    .line 154
    invoke-direct {p0}, Lorg/apache/tools/ant/types/ArchiveFileSet;->checkArchiveAttributesAllowed()V

    .line 155
    iget-boolean v0, p0, Lorg/apache/tools/ant/types/ArchiveFileSet;->hasDir:Z

    if-nez v0, :cond_0

    .line 158
    iput-object p1, p0, Lorg/apache/tools/ant/types/ArchiveFileSet;->src:Lorg/apache/tools/ant/types/Resource;

    .line 159
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/ArchiveFileSet;->setChecked(Z)V

    .line 160
    return-void

    .line 156
    :cond_0
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Cannot set both dir and src attributes"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public size()I
    .registers 2

    .line 356
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/ArchiveFileSet;->isReference()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 357
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/ArchiveFileSet;->getRef()Lorg/apache/tools/ant/types/AbstractFileSet;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/types/ResourceCollection;

    invoke-interface {v0}, Lorg/apache/tools/ant/types/ResourceCollection;->size()I

    move-result v0

    .line 362
    :goto_0
    return v0

    .line 359
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/types/ArchiveFileSet;->src:Lorg/apache/tools/ant/types/Resource;

    if-nez v0, :cond_1

    .line 360
    invoke-super {p0}, Lorg/apache/tools/ant/types/FileSet;->size()I

    move-result v0

    goto :goto_0

    .line 362
    :cond_1
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/ArchiveFileSet;->getDirectoryScanner()Lorg/apache/tools/ant/DirectoryScanner;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/DirectoryScanner;->getIncludedFilesCount()I

    move-result v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 520
    iget-boolean v0, p0, Lorg/apache/tools/ant/types/ArchiveFileSet;->hasDir:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/tools/ant/types/ArchiveFileSet;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 521
    invoke-super {p0}, Lorg/apache/tools/ant/types/FileSet;->toString()Ljava/lang/String;

    move-result-object v0

    .line 523
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/types/ArchiveFileSet;->src:Lorg/apache/tools/ant/types/Resource;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Resource;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
