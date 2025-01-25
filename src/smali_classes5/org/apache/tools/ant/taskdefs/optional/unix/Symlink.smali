.class public Lorg/apache/tools/ant/taskdefs/optional/unix/Symlink;
.super Lorg/apache/tools/ant/dispatch/DispatchTask;
.source "Symlink.java"


# instance fields
.field private executing:Z

.field private failonerror:Z

.field private fileSets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/tools/ant/types/FileSet;",
            ">;"
        }
    .end annotation
.end field

.field private link:Ljava/lang/String;

.field private linkFileName:Ljava/lang/String;

.field private overwrite:Z

.field private resource:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 106
    invoke-direct {p0}, Lorg/apache/tools/ant/dispatch/DispatchTask;-><init>()V

    .line 110
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/unix/Symlink;->fileSets:Ljava/util/List;

    .line 114
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/optional/unix/Symlink;->executing:Z

    return-void
.end method

.method private static deleteSymLink(Ljava/nio/file/Path;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 594
    invoke-interface {p0}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    .line 595
    if-eqz v0, :cond_b

    .line 598
    return-void

    .line 596
    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not delete symlink at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static deleteSymlink(Ljava/io/File;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 397
    invoke-virtual {p0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    invoke-static {v0}, Ljava/nio/file/Files;->isSymbolicLink(Ljava/nio/file/Path;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 401
    :goto_a
    return-void

    .line 400
    :cond_b
    invoke-virtual {p0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/tools/ant/taskdefs/optional/unix/Symlink;->deleteSymLink(Ljava/nio/file/Path;)V

    goto :goto_a
.end method

.method public static deleteSymlink(Ljava/lang/String;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 374
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-static {p0, v0}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    invoke-interface {v0}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/tools/ant/taskdefs/optional/unix/Symlink;->deleteSymlink(Ljava/io/File;)V

    .line 375
    return-void
.end method

.method private doLink(Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 443
    new-array v0, v4, [Ljava/lang/String;

    invoke-static {p2, v0}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    .line 444
    new-array v1, v4, [Ljava/lang/String;

    invoke-static {p1, v1}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v1

    .line 445
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/nio/file/LinkOption;

    sget-object v3, Ljava/nio/file/LinkOption;->NOFOLLOW_LINKS:Ljava/nio/file/LinkOption;

    aput-object v3, v2, v4

    invoke-static {v0, v2}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v2

    .line 446
    if-nez v2, :cond_80

    .line 450
    :try_start_1b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "creating symlink "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {p0, v2, v3}, Lorg/apache/tools/ant/taskdefs/optional/unix/Symlink;->log(Ljava/lang/String;I)V

    .line 451
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/nio/file/attribute/FileAttribute;

    invoke-static {v0, v1, v2}, Ljava/nio/file/Files;->createSymbolicLink(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/file/Path;
    :try_end_3e
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_3e} :catch_3f

    .line 483
    :goto_3e
    return-void

    .line 452
    :catch_3f
    move-exception v0

    .line 453
    iget-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/optional/unix/Symlink;->failonerror:Z

    if-nez v1, :cond_61

    .line 456
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to create symlink "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " to target "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0, v5}, Lorg/apache/tools/ant/taskdefs/optional/unix/Symlink;->log(Ljava/lang/String;Ljava/lang/Throwable;I)V

    goto :goto_3e

    .line 454
    :cond_61
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to create symlink "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " to target "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 461
    :cond_80
    iget-boolean v2, p0, Lorg/apache/tools/ant/taskdefs/optional/unix/Symlink;->overwrite:Z

    if-nez v2, :cond_9e

    .line 462
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Skipping symlink creation, since file at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " already exists and overwrite is set to false"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v5}, Lorg/apache/tools/ant/taskdefs/optional/unix/Symlink;->log(Ljava/lang/String;I)V

    goto :goto_3e

    .line 468
    :cond_9e
    invoke-interface {v0}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v2

    .line 469
    if-nez v2, :cond_c3

    .line 470
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Deletion of file at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " failed, while trying to overwrite it with a symlink"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/tools/ant/taskdefs/optional/unix/Symlink;->handleError(Ljava/lang/String;)V

    goto/16 :goto_3e

    .line 474
    :cond_c3
    :try_start_c3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "creating symlink "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " after removing original"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {p0, v2, v3}, Lorg/apache/tools/ant/taskdefs/optional/unix/Symlink;->log(Ljava/lang/String;I)V

    .line 476
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/nio/file/attribute/FileAttribute;

    invoke-static {v0, v1, v2}, Ljava/nio/file/Files;->createSymbolicLink(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/file/Path;
    :try_end_eb
    .catch Ljava/io/IOException; {:try_start_c3 .. :try_end_eb} :catch_ed

    goto/16 :goto_3e

    .line 477
    :catch_ed
    move-exception v0

    .line 478
    iget-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/optional/unix/Symlink;->failonerror:Z

    if-nez v1, :cond_110

    .line 481
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to create symlink "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " to target "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0, v5}, Lorg/apache/tools/ant/taskdefs/optional/unix/Symlink;->log(Ljava/lang/String;Ljava/lang/Throwable;I)V

    goto/16 :goto_3e

    .line 479
    :cond_110
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to create symlink "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " to target "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private findLinks(Ljava/util/List;)Ljava/util/Set;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/tools/ant/types/FileSet;",
            ">;)",
            "Ljava/util/Set",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 497
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 498
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_49

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/types/FileSet;

    .line 499
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/unix/Symlink;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/apache/tools/ant/types/FileSet;->getDirectoryScanner(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/DirectoryScanner;

    move-result-object v3

    .line 501
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/unix/Symlink;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/apache/tools/ant/types/FileSet;->getDir(Lorg/apache/tools/ant/Project;)Ljava/io/File;

    move-result-object v0

    .line 503
    const/4 v4, 0x2

    new-array v4, v4, [[Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v3}, Lorg/apache/tools/ant/DirectoryScanner;->getIncludedFiles()[Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual {v3}, Lorg/apache/tools/ant/DirectoryScanner;->getIncludedDirectories()[Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v5

    invoke-static {v4}, Lorg/apache/tools/ant/DirectoryScanner$$ExternalSyntheticStaticInterfaceCall1;->m([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v3

    sget-object v4, Lorg/apache/tools/ant/taskdefs/optional/unix/Symlink$$ExternalSyntheticLambda4;->INSTANCE:Lorg/apache/tools/ant/taskdefs/optional/unix/Symlink$$ExternalSyntheticLambda4;

    .line 504
    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->flatMap(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v4, Lorg/apache/tools/ant/taskdefs/optional/unix/Symlink$$ExternalSyntheticLambda2;

    invoke-direct {v4, p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/optional/unix/Symlink$$ExternalSyntheticLambda2;-><init>(Lorg/apache/tools/ant/taskdefs/optional/unix/Symlink;Ljava/io/File;Ljava/util/Set;)V

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    goto :goto_9

    .line 520
    :cond_49
    return-object v1
.end method

.method private handleError(Ljava/lang/String;)V
    .registers 3

    .line 429
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/optional/unix/Symlink;->failonerror:Z

    if-nez v0, :cond_8

    .line 432
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/taskdefs/optional/unix/Symlink;->log(Ljava/lang/String;)V

    .line 433
    return-void

    .line 430
    :cond_8
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    invoke-direct {v0, p1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic lambda$record$0(Ljava/io/File;)Ljava/util/List;
    .registers 2

    .line 255
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method static synthetic lambda$record$1(Ljava/util/Map;Ljava/io/File;)V
    .registers 4

    .line 255
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    sget-object v1, Lorg/apache/tools/ant/taskdefs/optional/unix/Symlink$$ExternalSyntheticLambda3;->INSTANCE:Lorg/apache/tools/ant/taskdefs/optional/unix/Symlink$$ExternalSyntheticLambda3;

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 256
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 255
    return-void
.end method

.method private loadLinks(Ljava/util/List;)Ljava/util/Properties;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/tools/ant/types/FileSet;",
            ">;)",
            "Ljava/util/Properties;"
        }
    .end annotation

    const/4 v13, 0x2

    const/4 v2, 0x0

    .line 535
    new-instance v3, Ljava/util/Properties;

    invoke-direct {v3}, Ljava/util/Properties;-><init>()V

    .line 537
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_ed

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/types/FileSet;

    .line 538
    new-instance v1, Lorg/apache/tools/ant/DirectoryScanner;

    invoke-direct {v1}, Lorg/apache/tools/ant/DirectoryScanner;-><init>()V

    .line 539
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/unix/Symlink;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v5

    invoke-virtual {v0, v1, v5}, Lorg/apache/tools/ant/types/FileSet;->setupDirectoryScanner(Lorg/apache/tools/ant/FileScanner;Lorg/apache/tools/ant/Project;)V

    .line 540
    invoke-virtual {v1, v2}, Lorg/apache/tools/ant/DirectoryScanner;->setFollowSymlinks(Z)V

    .line 541
    invoke-virtual {v1}, Lorg/apache/tools/ant/DirectoryScanner;->scan()V

    .line 542
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/unix/Symlink;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v5

    invoke-virtual {v0, v5}, Lorg/apache/tools/ant/types/FileSet;->getDir(Lorg/apache/tools/ant/Project;)Ljava/io/File;

    move-result-object v5

    .line 545
    invoke-virtual {v1}, Lorg/apache/tools/ant/DirectoryScanner;->getIncludedFiles()[Ljava/lang/String;

    move-result-object v6

    array-length v7, v6

    move v1, v2

    :goto_37
    if-ge v1, v7, :cond_b

    aget-object v8, v6, v1

    .line 546
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v5, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 547
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v9

    .line 548
    new-instance v10, Ljava/util/Properties;

    invoke-direct {v10}, Ljava/util/Properties;-><init>()V

    .line 549
    :try_start_49
    new-instance v11, Ljava/io/BufferedInputStream;

    .line 550
    invoke-virtual {v0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;
    :try_end_4e
    .catch Ljava/io/FileNotFoundException; {:try_start_49 .. :try_end_4e} :catch_ee
    .catch Ljava/io/IOException; {:try_start_49 .. :try_end_4e} :catch_d0

    move-result-object v0

    const/4 v12, 0x0

    :try_start_50
    new-array v12, v12, [Ljava/nio/file/OpenOption;

    invoke-static {v0, v12}, Ljava/nio/file/Files;->newInputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v11, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_59
    .catch Ljava/io/FileNotFoundException; {:try_start_50 .. :try_end_59} :catch_b1
    .catch Ljava/io/IOException; {:try_start_50 .. :try_end_59} :catch_f0

    .line 551
    :try_start_59
    invoke-virtual {v10, v11}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 552
    invoke-virtual {v9}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;
    :try_end_5f
    .catchall {:try_start_59 .. :try_end_5f} :catchall_ac

    move-result-object v9

    .line 553
    :try_start_60
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_63
    .catch Ljava/io/FileNotFoundException; {:try_start_60 .. :try_end_63} :catch_b1
    .catch Ljava/io/IOException; {:try_start_60 .. :try_end_63} :catch_f0

    .line 560
    :try_start_63
    new-instance v0, Ljava/io/PrintStream;

    new-instance v8, Lorg/apache/tools/ant/taskdefs/LogOutputStream;

    const/4 v11, 0x2

    invoke-direct {v8, p0, v11}, Lorg/apache/tools/ant/taskdefs/LogOutputStream;-><init>(Lorg/apache/tools/ant/Task;I)V

    invoke-direct {v0, v8}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    const-string v8, "listing properties"

    invoke-virtual {v10, v0, v8}, Ljava/util/Properties;->store(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_73
    .catch Ljava/io/IOException; {:try_start_63 .. :try_end_73} :catch_98

    .line 574
    :goto_73
    invoke-virtual {v10}, Ljava/util/Properties;->stringPropertyNames()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_7b
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_cb

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 575
    new-instance v11, Ljava/io/File;

    invoke-direct {v11, v9, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    .line 576
    invoke-virtual {v10, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 575
    invoke-virtual {v3, v11, v0}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7b

    .line 565
    :catch_98
    move-exception v0

    .line 566
    const-string v0, "failed to log unshortened properties"

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/optional/unix/Symlink;->log(Ljava/lang/String;)V

    .line 567
    new-instance v0, Ljava/io/PrintStream;

    new-instance v8, Lorg/apache/tools/ant/taskdefs/LogOutputStream;

    invoke-direct {v8, p0, v13}, Lorg/apache/tools/ant/taskdefs/LogOutputStream;-><init>(Lorg/apache/tools/ant/Task;I)V

    invoke-direct {v0, v8}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v10, v0}, Ljava/util/Properties;->list(Ljava/io/PrintStream;)V

    goto :goto_73

    .line 549
    :catchall_ac
    move-exception v0

    :try_start_ad
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_b0
    .catchall {:try_start_ad .. :try_end_b0} :catchall_eb

    :goto_b0
    :try_start_b0
    throw v0
    :try_end_b1
    .catch Ljava/io/FileNotFoundException; {:try_start_b0 .. :try_end_b1} :catch_b1
    .catch Ljava/io/IOException; {:try_start_b0 .. :try_end_b1} :catch_f0

    .line 553
    :catch_b1
    move-exception v0

    .line 554
    :goto_b2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unable to find "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "; skipping it."

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/tools/ant/taskdefs/optional/unix/Symlink;->handleError(Ljava/lang/String;)V

    .line 555
    :cond_cb
    :goto_cb
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_37

    .line 556
    :catch_d0
    move-exception v0

    .line 557
    :goto_d1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unable to open "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " or its parent dir; skipping it."

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/tools/ant/taskdefs/optional/unix/Symlink;->handleError(Ljava/lang/String;)V

    goto :goto_cb

    .line 549
    :catchall_eb
    move-exception v9

    goto :goto_b0

    .line 580
    :cond_ed
    return-object v3

    .line 553
    :catch_ee
    move-exception v0

    goto :goto_b2

    .line 556
    :catch_f0
    move-exception v0

    goto :goto_d1
.end method

.method private setDefaults()V
    .registers 2

    const/4 v0, 0x0

    .line 282
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/unix/Symlink;->resource:Ljava/lang/String;

    .line 283
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/unix/Symlink;->link:Ljava/lang/String;

    .line 284
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/unix/Symlink;->linkFileName:Ljava/lang/String;

    .line 285
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/optional/unix/Symlink;->failonerror:Z

    .line 286
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/optional/unix/Symlink;->overwrite:Z

    .line 287
    const-string v0, "single"

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/optional/unix/Symlink;->setAction(Ljava/lang/String;)V

    .line 288
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/unix/Symlink;->fileSets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 289
    return-void
.end method

.method private writePropertyFile(Ljava/util/Properties;Ljava/io/File;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 413
    :try_start_0
    new-instance v1, Ljava/io/BufferedOutputStream;

    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/optional/unix/Symlink;->linkFileName:Ljava/lang/String;

    invoke-direct {v0, p2, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 414
    invoke-virtual {v0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/nio/file/OpenOption;

    invoke-static {v0, v2}, Ljava/nio/file/Files;->newOutputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/OutputStream;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_17} :catch_34

    .line 415
    :try_start_17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Symlinks from "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Ljava/util/Properties;->store(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_2b
    .catchall {:try_start_17 .. :try_end_2b} :catchall_2f

    .line 416
    :try_start_2b
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_2e} :catch_34

    .line 418
    return-void

    .line 413
    :catchall_2f
    move-exception v0

    :try_start_30
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_33
    .catchall {:try_start_30 .. :try_end_33} :catchall_3f

    :goto_33
    :try_start_33
    throw v0
    :try_end_34
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_34} :catch_34

    .line 416
    :catch_34
    move-exception v0

    .line 417
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/unix/Symlink;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/Throwable;Lorg/apache/tools/ant/Location;)V

    throw v1

    .line 413
    :catchall_3f
    move-exception v1

    goto :goto_33
.end method


# virtual methods
.method public addFileset(Lorg/apache/tools/ant/types/FileSet;)V
    .registers 3

    .line 358
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/unix/Symlink;->fileSets:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 359
    return-void
.end method

.method public delete()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 172
    :try_start_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/unix/Symlink;->link:Ljava/lang/String;

    if-nez v0, :cond_d

    .line 173
    const-string v0, "Must define the link name for symlink!"

    invoke-direct {p0, v0}, Lorg/apache/tools/ant/taskdefs/optional/unix/Symlink;->handleError(Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_9} :catch_55
    .catchall {:try_start_0 .. :try_end_9} :catchall_5e

    .line 189
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/optional/unix/Symlink;->setDefaults()V

    .line 190
    :goto_c
    return-void

    .line 176
    :cond_d
    const/4 v1, 0x0

    :try_start_e
    new-array v1, v1, [Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    .line 177
    invoke-static {v0}, Ljava/nio/file/Files;->isSymbolicLink(Ljava/nio/file/Path;)Z

    move-result v1

    if-nez v1, :cond_38

    .line 178
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Skipping deletion of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " since it\'s not a symlink"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/optional/unix/Symlink;->log(Ljava/lang/String;I)V
    :try_end_34
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_34} :catch_55
    .catchall {:try_start_e .. :try_end_34} :catchall_5e

    .line 189
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/optional/unix/Symlink;->setDefaults()V

    goto :goto_c

    .line 184
    :cond_38
    :try_start_38
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Removing symlink: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/optional/unix/Symlink;->link:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/tools/ant/taskdefs/optional/unix/Symlink;->log(Ljava/lang/String;)V

    .line 185
    invoke-static {v0}, Lorg/apache/tools/ant/taskdefs/optional/unix/Symlink;->deleteSymLink(Ljava/nio/file/Path;)V
    :try_end_51
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_51} :catch_55
    .catchall {:try_start_38 .. :try_end_51} :catchall_5e

    .line 189
    :goto_51
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/optional/unix/Symlink;->setDefaults()V

    goto :goto_c

    .line 186
    :catch_55
    move-exception v0

    .line 187
    :try_start_56
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/tools/ant/taskdefs/optional/unix/Symlink;->handleError(Ljava/lang/String;)V
    :try_end_5d
    .catchall {:try_start_56 .. :try_end_5d} :catchall_5e

    goto :goto_51

    .line 189
    :catchall_5e
    move-exception v0

    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/optional/unix/Symlink;->setDefaults()V

    .line 190
    throw v0
.end method

.method public execute()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    monitor-enter p0

    .line 132
    :try_start_1
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/optional/unix/Symlink;->executing:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_15

    if-nez v0, :cond_18

    .line 137
    const/4 v0, 0x1

    :try_start_6
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/optional/unix/Symlink;->executing:Z

    .line 138
    invoke-static {p0}, Lorg/apache/tools/ant/dispatch/DispatchUtils;->execute(Ljava/lang/Object;)V
    :try_end_b
    .catchall {:try_start_6 .. :try_end_b} :catchall_10

    .line 140
    const/4 v0, 0x0

    :try_start_c
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/optional/unix/Symlink;->executing:Z
    :try_end_e
    .catchall {:try_start_c .. :try_end_e} :catchall_15

    .line 141
    monitor-exit p0

    return-void

    .line 140
    :catchall_10
    move-exception v0

    const/4 v1, 0x0

    :try_start_12
    iput-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/optional/unix/Symlink;->executing:Z

    .line 141
    throw v0
    :try_end_15
    .catchall {:try_start_12 .. :try_end_15} :catchall_15

    .line 131
    :catchall_15
    move-exception v0

    monitor-exit p0

    throw v0

    .line 133
    :cond_18
    :try_start_18
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Infinite recursion detected in Symlink.execute()"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_20
    .catchall {:try_start_18 .. :try_end_20} :catchall_15
.end method

.method public init()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 122
    invoke-super {p0}, Lorg/apache/tools/ant/dispatch/DispatchTask;->init()V

    .line 123
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/optional/unix/Symlink;->setDefaults()V

    .line 124
    return-void
.end method

.method public synthetic lambda$findLinks$3$Symlink(Ljava/io/File;Ljava/util/Set;Ljava/lang/String;)V
    .registers 7

    .line 506
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 507
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    .line 508
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 511
    new-instance v2, Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 512
    invoke-virtual {v2}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    invoke-static {v0}, Ljava/nio/file/Files;->isSymbolicLink(Ljava/nio/file/Path;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 513
    invoke-interface {p2, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_23} :catch_24

    .line 518
    :cond_23
    :goto_23
    return-void

    .line 515
    :catch_24
    move-exception v0

    .line 516
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IOException: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " omitted"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/tools/ant/taskdefs/optional/unix/Symlink;->handleError(Ljava/lang/String;)V

    goto :goto_23
.end method

.method public synthetic lambda$record$2$Symlink(Ljava/io/File;Ljava/util/List;)V
    .registers 7

    .line 260
    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1}, Ljava/util/Properties;-><init>()V

    .line 263
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 265
    :try_start_15
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_20} :catch_21

    goto :goto_9

    .line 266
    :catch_21
    move-exception v0

    .line 267
    const-string v0, "Couldn\'t get canonical name of parent link"

    invoke-direct {p0, v0}, Lorg/apache/tools/ant/taskdefs/optional/unix/Symlink;->handleError(Ljava/lang/String;)V

    goto :goto_9

    .line 270
    :cond_28
    invoke-direct {p0, v1, p1}, Lorg/apache/tools/ant/taskdefs/optional/unix/Symlink;->writePropertyFile(Ljava/util/Properties;Ljava/io/File;)V

    .line 271
    return-void
.end method

.method public record()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 242
    :try_start_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/unix/Symlink;->fileSets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 243
    const-string v0, "Fileset identifying links to record required"

    invoke-direct {p0, v0}, Lorg/apache/tools/ant/taskdefs/optional/unix/Symlink;->handleError(Ljava/lang/String;)V
    :try_end_d
    .catchall {:try_start_0 .. :try_end_d} :catchall_3d

    .line 273
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/optional/unix/Symlink;->setDefaults()V

    .line 274
    :goto_10
    return-void

    .line 246
    :cond_11
    :try_start_11
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/unix/Symlink;->linkFileName:Ljava/lang/String;

    if-nez v0, :cond_1e

    .line 247
    const-string v0, "Name of file to record links in required"

    invoke-direct {p0, v0}, Lorg/apache/tools/ant/taskdefs/optional/unix/Symlink;->handleError(Ljava/lang/String;)V
    :try_end_1a
    .catchall {:try_start_11 .. :try_end_1a} :catchall_3d

    .line 273
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/optional/unix/Symlink;->setDefaults()V

    goto :goto_10

    .line 251
    :cond_1e
    :try_start_1e
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 254
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/unix/Symlink;->fileSets:Ljava/util/List;

    invoke-direct {p0, v1}, Lorg/apache/tools/ant/taskdefs/optional/unix/Symlink;->findLinks(Ljava/util/List;)Ljava/util/Set;

    move-result-object v1

    new-instance v2, Lorg/apache/tools/ant/taskdefs/optional/unix/Symlink$$ExternalSyntheticLambda1;

    invoke-direct {v2, v0}, Lorg/apache/tools/ant/taskdefs/optional/unix/Symlink$$ExternalSyntheticLambda1;-><init>(Ljava/util/Map;)V

    invoke-interface {v1, v2}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    .line 259
    new-instance v1, Lorg/apache/tools/ant/taskdefs/optional/unix/Symlink$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lorg/apache/tools/ant/taskdefs/optional/unix/Symlink$$ExternalSyntheticLambda0;-><init>(Lorg/apache/tools/ant/taskdefs/optional/unix/Symlink;)V

    invoke-interface {v0, v1}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V
    :try_end_39
    .catchall {:try_start_1e .. :try_end_39} :catchall_3d

    .line 273
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/optional/unix/Symlink;->setDefaults()V

    goto :goto_10

    :catchall_3d
    move-exception v0

    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/optional/unix/Symlink;->setDefaults()V

    .line 274
    throw v0
.end method

.method public recreate()V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 200
    :try_start_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/unix/Symlink;->fileSets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 201
    const-string v0, "File set identifying link file(s) required for action recreate"

    invoke-direct {p0, v0}, Lorg/apache/tools/ant/taskdefs/optional/unix/Symlink;->handleError(Ljava/lang/String;)V
    :try_end_d
    .catchall {:try_start_0 .. :try_end_d} :catchall_92

    .line 231
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/optional/unix/Symlink;->setDefaults()V

    .line 232
    :goto_10
    return-void

    .line 205
    :cond_11
    :try_start_11
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/unix/Symlink;->fileSets:Ljava/util/List;

    invoke-direct {p0, v0}, Lorg/apache/tools/ant/taskdefs/optional/unix/Symlink;->loadLinks(Ljava/util/List;)Ljava/util/Properties;

    move-result-object v2

    .line 206
    invoke-virtual {v2}, Ljava/util/Properties;->stringPropertyNames()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 207
    invoke-virtual {v2, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;
    :try_end_2e
    .catchall {:try_start_11 .. :try_end_2e} :catchall_92

    move-result-object v4

    .line 209
    const/4 v1, 0x0

    :try_start_30
    new-array v1, v1, [Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v1

    invoke-static {v1}, Ljava/nio/file/Files;->isSymbolicLink(Ljava/nio/file/Path;)Z

    move-result v1

    if-eqz v1, :cond_97

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 210
    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_97

    .line 214
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "not recreating "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " as it points to the correct target already"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x4

    invoke-virtual {p0, v1, v5}, Lorg/apache/tools/ant/taskdefs/optional/unix/Symlink;->log(Ljava/lang/String;I)V
    :try_end_6e
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_6e} :catch_6f
    .catchall {:try_start_30 .. :try_end_6e} :catchall_92

    goto :goto_1f

    .line 218
    :catch_6f
    move-exception v1

    .line 219
    :try_start_70
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to check if path "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " is a symbolic link, linking to "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 220
    iget-boolean v4, p0, Lorg/apache/tools/ant/taskdefs/optional/unix/Symlink;->failonerror:Z

    if-nez v4, :cond_9b

    .line 224
    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/optional/unix/Symlink;->log(Ljava/lang/String;I)V
    :try_end_91
    .catchall {:try_start_70 .. :try_end_91} :catchall_92

    goto :goto_1f

    .line 231
    :catchall_92
    move-exception v0

    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/optional/unix/Symlink;->setDefaults()V

    .line 232
    throw v0

    .line 226
    :cond_97
    :try_start_97
    invoke-direct {p0, v4, v0}, Lorg/apache/tools/ant/taskdefs/optional/unix/Symlink;->doLink(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1f

    .line 221
    :cond_9b
    new-instance v2, Lorg/apache/tools/ant/BuildException;

    invoke-direct {v2, v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_a1
    .catchall {:try_start_97 .. :try_end_a1} :catchall_92

    .line 231
    :cond_a1
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/optional/unix/Symlink;->setDefaults()V

    goto/16 :goto_10
.end method

.method public setAction(Ljava/lang/String;)V
    .registers 2

    .line 320
    invoke-super {p0, p1}, Lorg/apache/tools/ant/dispatch/DispatchTask;->setAction(Ljava/lang/String;)V

    .line 321
    return-void
.end method

.method public setFailOnError(Z)V
    .registers 2

    .line 309
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/optional/unix/Symlink;->failonerror:Z

    .line 310
    return-void
.end method

.method public setLink(Ljava/lang/String;)V
    .registers 2

    .line 329
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/unix/Symlink;->link:Ljava/lang/String;

    .line 330
    return-void
.end method

.method public setLinkfilename(Ljava/lang/String;)V
    .registers 2

    .line 349
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/unix/Symlink;->linkFileName:Ljava/lang/String;

    .line 350
    return-void
.end method

.method public setOverwrite(Z)V
    .registers 2

    .line 299
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/optional/unix/Symlink;->overwrite:Z

    .line 300
    return-void
.end method

.method public setResource(Ljava/lang/String;)V
    .registers 2

    .line 339
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/unix/Symlink;->resource:Ljava/lang/String;

    .line 340
    return-void
.end method

.method public single()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 151
    :try_start_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/unix/Symlink;->resource:Ljava/lang/String;

    if-nez v0, :cond_d

    .line 152
    const-string v0, "Must define the resource to symlink to!"

    invoke-direct {p0, v0}, Lorg/apache/tools/ant/taskdefs/optional/unix/Symlink;->handleError(Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_0 .. :try_end_9} :catchall_21

    .line 161
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/optional/unix/Symlink;->setDefaults()V

    .line 162
    :goto_c
    return-void

    .line 155
    :cond_d
    :try_start_d
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/unix/Symlink;->link:Ljava/lang/String;

    if-nez v1, :cond_1a

    .line 156
    const-string v0, "Must define the link name for symlink!"

    invoke-direct {p0, v0}, Lorg/apache/tools/ant/taskdefs/optional/unix/Symlink;->handleError(Ljava/lang/String;)V
    :try_end_16
    .catchall {:try_start_d .. :try_end_16} :catchall_21

    .line 161
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/optional/unix/Symlink;->setDefaults()V

    goto :goto_c

    .line 159
    :cond_1a
    :try_start_1a
    invoke-direct {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/optional/unix/Symlink;->doLink(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1d
    .catchall {:try_start_1a .. :try_end_1d} :catchall_21

    .line 161
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/optional/unix/Symlink;->setDefaults()V

    goto :goto_c

    :catchall_21
    move-exception v0

    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/optional/unix/Symlink;->setDefaults()V

    .line 162
    throw v0
.end method
