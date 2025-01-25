.class public Lorg/apache/tools/ant/taskdefs/Tar;
.super Lorg/apache/tools/ant/taskdefs/MatchingTask;
.source "Tar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/tools/ant/taskdefs/Tar$TarCompressionMethod;,
        Lorg/apache/tools/ant/taskdefs/Tar$TarFileSet;,
        Lorg/apache/tools/ant/taskdefs/Tar$TarLongFileMode;
    }
.end annotation


# static fields
.field private static final BUFFER_SIZE:I = 0x2000

.field public static final FAIL:Ljava/lang/String; = "fail"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final GNU:Ljava/lang/String; = "gnu"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final OMIT:Ljava/lang/String; = "omit"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TRUNCATE:Ljava/lang/String; = "truncate"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WARN:Ljava/lang/String; = "warn"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field baseDir:Ljava/io/File;

.field private compression:Lorg/apache/tools/ant/taskdefs/Tar$TarCompressionMethod;

.field private encoding:Ljava/lang/String;

.field filesets:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lorg/apache/tools/ant/taskdefs/Tar$TarFileSet;",
            ">;"
        }
    .end annotation
.end field

.field private longFileMode:Lorg/apache/tools/ant/taskdefs/Tar$TarLongFileMode;

.field private longWarningGiven:Z

.field private final resourceCollections:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/tools/ant/types/ResourceCollection;",
            ">;"
        }
    .end annotation
.end field

.field tarFile:Ljava/io/File;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 67
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/MatchingTask;-><init>()V

    .line 110
    new-instance v0, Lorg/apache/tools/ant/taskdefs/Tar$TarLongFileMode;

    invoke-direct {v0}, Lorg/apache/tools/ant/taskdefs/Tar$TarLongFileMode;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Tar;->longFileMode:Lorg/apache/tools/ant/taskdefs/Tar$TarLongFileMode;

    .line 113
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Tar;->filesets:Ljava/util/Vector;

    .line 116
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Tar;->resourceCollections:Ljava/util/List;

    .line 123
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Tar;->longWarningGiven:Z

    .line 125
    new-instance v0, Lorg/apache/tools/ant/taskdefs/Tar$TarCompressionMethod;

    invoke-direct {v0}, Lorg/apache/tools/ant/taskdefs/Tar$TarCompressionMethod;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Tar;->compression:Lorg/apache/tools/ant/taskdefs/Tar$TarCompressionMethod;

    return-void
.end method

.method private static getCanonicalPrefix(Lorg/apache/tools/ant/taskdefs/Tar$TarFileSet;Lorg/apache/tools/ant/Project;)Ljava/lang/String;
    .registers 4

    .line 789
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/taskdefs/Tar$TarFileSet;->getPrefix(Lorg/apache/tools/ant/Project;)Ljava/lang/String;

    move-result-object v0

    .line 791
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_12

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 794
    :cond_12
    :goto_12
    return-object v0

    :cond_13
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_12
.end method

.method protected static getFileNames(Lorg/apache/tools/ant/types/FileSet;)[Ljava/lang/String;
    .registers 6

    const/4 v4, 0x0

    .line 728
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/FileSet;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/FileSet;->getDirectoryScanner(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/DirectoryScanner;

    move-result-object v0

    .line 729
    invoke-virtual {v0}, Lorg/apache/tools/ant/DirectoryScanner;->getIncludedDirectories()[Ljava/lang/String;

    move-result-object v1

    .line 730
    invoke-virtual {v0}, Lorg/apache/tools/ant/DirectoryScanner;->getIncludedFiles()[Ljava/lang/String;

    move-result-object v0

    .line 731
    array-length v2, v1

    array-length v3, v0

    add-int/2addr v2, v3

    new-array v2, v2, [Ljava/lang/String;

    .line 732
    array-length v3, v1

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 733
    array-length v1, v1

    array-length v3, v0

    invoke-static {v0, v4, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 735
    return-object v2
.end method

.method protected static isFileFileSet(Lorg/apache/tools/ant/types/ResourceCollection;)Z
    .registers 2

    .line 717
    instance-of v0, p0, Lorg/apache/tools/ant/types/FileSet;

    if-eqz v0, :cond_c

    invoke-interface {p0}, Lorg/apache/tools/ant/types/ResourceCollection;->isFilesystemOnly()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method static synthetic lambda$check$0(Ljava/io/File;)Ljava/util/List;
    .registers 2

    .line 611
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    return-object v0
.end method


# virtual methods
.method public add(Lorg/apache/tools/ant/types/ResourceCollection;)V
    .registers 3

    .line 150
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Tar;->resourceCollections:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 151
    return-void
.end method

.method protected archiveIsUpToDate(Lorg/apache/tools/ant/types/Resource;)Z
    .registers 6

    .line 559
    new-instance v0, Lorg/apache/tools/ant/types/resources/FileResource;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Tar;->tarFile:Ljava/io/File;

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/types/resources/FileResource;-><init>(Ljava/io/File;)V

    .line 560
    invoke-static {}, Lorg/apache/tools/ant/util/FileUtils;->getFileUtils()Lorg/apache/tools/ant/util/FileUtils;

    move-result-object v1

    .line 561
    invoke-virtual {v1}, Lorg/apache/tools/ant/util/FileUtils;->getFileTimestampGranularity()J

    move-result-wide v2

    .line 559
    invoke-static {v0, p1, v2, v3}, Lorg/apache/tools/ant/types/selectors/SelectorUtils;->isOutOfDate(Lorg/apache/tools/ant/types/Resource;Lorg/apache/tools/ant/types/Resource;J)Z

    move-result v0

    return v0
.end method

.method protected archiveIsUpToDate([Ljava/lang/String;)Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 535
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Tar;->baseDir:Ljava/io/File;

    invoke-virtual {p0, p1, v0}, Lorg/apache/tools/ant/taskdefs/Tar;->archiveIsUpToDate([Ljava/lang/String;Ljava/io/File;)Z

    move-result v0

    return v0
.end method

.method protected archiveIsUpToDate([Ljava/lang/String;Ljava/io/File;)Z
    .registers 6

    .line 546
    new-instance v0, Lorg/apache/tools/ant/util/SourceFileScanner;

    invoke-direct {v0, p0}, Lorg/apache/tools/ant/util/SourceFileScanner;-><init>(Lorg/apache/tools/ant/Task;)V

    .line 547
    new-instance v1, Lorg/apache/tools/ant/util/MergingMapper;

    invoke-direct {v1}, Lorg/apache/tools/ant/util/MergingMapper;-><init>()V

    .line 548
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Tar;->tarFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/tools/ant/util/MergingMapper;->setTo(Ljava/lang/String;)V

    .line 549
    const/4 v2, 0x0

    invoke-virtual {v0, p1, p2, v2, v1}, Lorg/apache/tools/ant/util/SourceFileScanner;->restrict([Ljava/lang/String;Ljava/io/File;Ljava/io/File;Lorg/apache/tools/ant/util/FileNameMapper;)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    if-nez v0, :cond_1d

    const/4 v0, 0x1

    :goto_1c
    return v0

    :cond_1d
    const/4 v0, 0x0

    goto :goto_1c
.end method

.method protected asTarFileSet(Lorg/apache/tools/ant/types/ArchiveFileSet;)Lorg/apache/tools/ant/taskdefs/Tar$TarFileSet;
    .registers 4

    .line 749
    instance-of v0, p1, Lorg/apache/tools/ant/taskdefs/Tar$TarFileSet;

    if-eqz v0, :cond_7

    .line 750
    check-cast p1, Lorg/apache/tools/ant/taskdefs/Tar$TarFileSet;

    .line 785
    :goto_6
    return-object p1

    .line 752
    :cond_7
    new-instance v0, Lorg/apache/tools/ant/taskdefs/Tar$TarFileSet;

    invoke-direct {v0}, Lorg/apache/tools/ant/taskdefs/Tar$TarFileSet;-><init>()V

    .line 753
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Tar;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/taskdefs/Tar$TarFileSet;->setProject(Lorg/apache/tools/ant/Project;)V

    .line 754
    if-eqz p1, :cond_8a

    .line 755
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Tar;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/apache/tools/ant/types/ArchiveFileSet;->getPrefix(Lorg/apache/tools/ant/Project;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/taskdefs/Tar$TarFileSet;->setPrefix(Ljava/lang/String;)V

    .line 756
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Tar;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/apache/tools/ant/types/ArchiveFileSet;->getFullpath(Lorg/apache/tools/ant/Project;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/taskdefs/Tar$TarFileSet;->setFullpath(Ljava/lang/String;)V

    .line 757
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/ArchiveFileSet;->hasFileModeBeenSet()Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 758
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Tar;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/apache/tools/ant/types/ArchiveFileSet;->getFileMode(Lorg/apache/tools/ant/Project;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/taskdefs/Tar$TarFileSet;->integerSetFileMode(I)V

    .line 761
    :cond_3c
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/ArchiveFileSet;->hasDirModeBeenSet()Z

    move-result v1

    if-eqz v1, :cond_4d

    .line 762
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Tar;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/apache/tools/ant/types/ArchiveFileSet;->getDirMode(Lorg/apache/tools/ant/Project;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/taskdefs/Tar$TarFileSet;->integerSetDirMode(I)V

    .line 766
    :cond_4d
    instance-of v1, p1, Lorg/apache/tools/ant/types/TarFileSet;

    if-eqz v1, :cond_8a

    .line 768
    check-cast p1, Lorg/apache/tools/ant/types/TarFileSet;

    .line 770
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/TarFileSet;->hasUserNameBeenSet()Z

    move-result v1

    if-eqz v1, :cond_60

    .line 771
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/TarFileSet;->getUserName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/taskdefs/Tar$TarFileSet;->setUserName(Ljava/lang/String;)V

    .line 773
    :cond_60
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/TarFileSet;->hasGroupBeenSet()Z

    move-result v1

    if-eqz v1, :cond_6d

    .line 774
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/TarFileSet;->getGroup()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/taskdefs/Tar$TarFileSet;->setGroup(Ljava/lang/String;)V

    .line 776
    :cond_6d
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/TarFileSet;->hasUserIdBeenSet()Z

    move-result v1

    if-eqz v1, :cond_7a

    .line 777
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/TarFileSet;->getUid()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/taskdefs/Tar$TarFileSet;->setUid(I)V

    .line 779
    :cond_7a
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/TarFileSet;->hasGroupIdBeenSet()Z

    move-result v1

    if-eqz v1, :cond_8a

    .line 780
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/TarFileSet;->getGid()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/taskdefs/Tar$TarFileSet;->setGid(I)V

    move-object p1, v0

    goto/16 :goto_6

    :cond_8a
    move-object p1, v0

    goto/16 :goto_6
.end method

.method protected check(Ljava/io/File;Ljava/util/Collection;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 663
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p2, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lorg/apache/tools/ant/taskdefs/Tar;->check(Ljava/io/File;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected check(Ljava/io/File;[Ljava/lang/String;)Z
    .registers 9

    .line 641
    invoke-virtual {p0, p2, p1}, Lorg/apache/tools/ant/taskdefs/Tar;->archiveIsUpToDate([Ljava/lang/String;Ljava/io/File;)Z

    move-result v1

    .line 643
    array-length v2, p2

    const/4 v0, 0x0

    :goto_6
    if-ge v0, v2, :cond_26

    aget-object v3, p2, v0

    .line 644
    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/Tar;->tarFile:Ljava/io/File;

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1a

    .line 643
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 645
    :cond_1a
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "A tar file cannot include itself"

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Tar;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v0

    .line 649
    :cond_26
    return v1
.end method

.method protected check(Lorg/apache/tools/ant/types/ResourceCollection;)Z
    .registers 10

    const/4 v2, 0x1

    .line 594
    .line 595
    invoke-static {p1}, Lorg/apache/tools/ant/taskdefs/Tar;->isFileFileSet(Lorg/apache/tools/ant/types/ResourceCollection;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 596
    check-cast p1, Lorg/apache/tools/ant/types/FileSet;

    .line 597
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Tar;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/apache/tools/ant/types/FileSet;->getDir(Lorg/apache/tools/ant/Project;)Ljava/io/File;

    move-result-object v0

    invoke-static {p1}, Lorg/apache/tools/ant/taskdefs/Tar;->getFileNames(Lorg/apache/tools/ant/types/FileSet;)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/Tar;->check(Ljava/io/File;[Ljava/lang/String;)Z

    move-result v1

    .line 628
    :cond_19
    :goto_19
    return v1

    .line 598
    :cond_1a
    invoke-interface {p1}, Lorg/apache/tools/ant/types/ResourceCollection;->isFilesystemOnly()Z

    move-result v0

    if-nez v0, :cond_26

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Tar;->supportsNonFileResources()Z

    move-result v0

    if-eqz v0, :cond_76

    .line 600
    :cond_26
    invoke-interface {p1}, Lorg/apache/tools/ant/types/ResourceCollection;->isFilesystemOnly()Z

    move-result v0

    if-eqz v0, :cond_ab

    .line 601
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 602
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 603
    invoke-interface {p1}, Lorg/apache/tools/ant/types/ResourceCollection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3a
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_86

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/types/Resource;

    .line 604
    const-class v1, Lorg/apache/tools/ant/types/resources/FileProvider;

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Resource;->as(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/types/resources/FileProvider;

    invoke-static {v0}, Lorg/apache/tools/ant/util/ResourceUtils;->asFileResource(Lorg/apache/tools/ant/types/resources/FileProvider;)Lorg/apache/tools/ant/types/resources/FileResource;

    move-result-object v6

    .line 606
    invoke-virtual {v6}, Lorg/apache/tools/ant/types/resources/FileResource;->getBaseDir()Ljava/io/File;

    move-result-object v0

    .line 607
    if-nez v0, :cond_c3

    .line 608
    sget-object v0, Lorg/apache/tools/ant/taskdefs/Copy;->NULL_FILE_PLACEHOLDER:Ljava/io/File;

    move-object v1, v0

    .line 610
    :goto_5b
    invoke-interface {v3, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 611
    sget-object v0, Lorg/apache/tools/ant/taskdefs/Tar$$ExternalSyntheticLambda0;->INSTANCE:Lorg/apache/tools/ant/taskdefs/Tar$$ExternalSyntheticLambda0;

    invoke-interface {v4, v1, v0}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 612
    sget-object v7, Lorg/apache/tools/ant/taskdefs/Copy;->NULL_FILE_PLACEHOLDER:Ljava/io/File;

    if-ne v1, v7, :cond_7e

    .line 613
    invoke-virtual {v6}, Lorg/apache/tools/ant/types/resources/FileResource;->getFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3a

    .line 599
    :cond_76
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "only filesystem resources are supported"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 615
    :cond_7e
    invoke-virtual {v6}, Lorg/apache/tools/ant/types/resources/FileResource;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3a

    .line 618
    :cond_86
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v2

    :goto_8b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 619
    sget-object v2, Lorg/apache/tools/ant/taskdefs/Copy;->NULL_FILE_PLACEHOLDER:Ljava/io/File;

    if-ne v0, v2, :cond_a9

    const/4 v2, 0x0

    .line 620
    :goto_9c
    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 621
    invoke-virtual {p0, v2, v0}, Lorg/apache/tools/ant/taskdefs/Tar;->check(Ljava/io/File;Ljava/util/Collection;)Z

    move-result v0

    and-int/2addr v0, v1

    move v1, v0

    .line 622
    goto :goto_8b

    :cond_a9
    move-object v2, v0

    .line 619
    goto :goto_9c

    .line 624
    :cond_ab
    invoke-interface {p1}, Lorg/apache/tools/ant/types/ResourceCollection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_af
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/types/Resource;

    .line 625
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/Tar;->archiveIsUpToDate(Lorg/apache/tools/ant/types/Resource;)Z

    move-result v2

    goto :goto_af

    :cond_c0
    move v1, v2

    goto/16 :goto_19

    :cond_c3
    move-object v1, v0

    goto :goto_5b
.end method

.method public createTarFileSet()Lorg/apache/tools/ant/taskdefs/Tar$TarFileSet;
    .registers 3

    .line 138
    new-instance v0, Lorg/apache/tools/ant/taskdefs/Tar$TarFileSet;

    invoke-direct {v0}, Lorg/apache/tools/ant/taskdefs/Tar$TarFileSet;-><init>()V

    .line 139
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Tar;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/taskdefs/Tar$TarFileSet;->setProject(Lorg/apache/tools/ant/Project;)V

    .line 140
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Tar;->filesets:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 141
    return-object v0
.end method

.method public execute()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    const/4 v1, 0x1

    .line 261
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Tar;->tarFile:Ljava/io/File;

    if-eqz v0, :cond_1d5

    .line 266
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Tar;->tarFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_6d

    .line 271
    :cond_13
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Tar;->tarFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_23

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Tar;->tarFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v0

    if-eqz v0, :cond_79

    .line 276
    :cond_23
    new-instance v2, Ljava/util/Vector;

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Tar;->filesets:Ljava/util/Vector;

    invoke-direct {v2, v0}, Ljava/util/Vector;-><init>(Ljava/util/Collection;)V

    .line 278
    :try_start_2a
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Tar;->baseDir:Ljava/io/File;

    if-eqz v0, :cond_45

    .line 279
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_85

    .line 285
    new-instance v0, Lorg/apache/tools/ant/taskdefs/Tar$TarFileSet;

    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/Tar;->fileset:Lorg/apache/tools/ant/types/FileSet;

    invoke-direct {v0, v3}, Lorg/apache/tools/ant/taskdefs/Tar$TarFileSet;-><init>(Lorg/apache/tools/ant/types/FileSet;)V

    .line 286
    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/Tar;->baseDir:Ljava/io/File;

    invoke-virtual {v0, v3}, Lorg/apache/tools/ant/taskdefs/Tar$TarFileSet;->setDir(Ljava/io/File;)V

    .line 287
    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/Tar;->filesets:Ljava/util/Vector;

    invoke-virtual {v3, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 290
    :cond_45
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Tar;->filesets:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_55

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Tar;->resourceCollections:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_95

    .line 299
    :cond_55
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Tar;->filesets:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_5b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/taskdefs/Tar$TarFileSet;

    .line 300
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/Tar;->check(Lorg/apache/tools/ant/types/ResourceCollection;)Z
    :try_end_6a
    .catchall {:try_start_2a .. :try_end_6a} :catchall_91

    move-result v0

    and-int/2addr v1, v0

    goto :goto_5b

    .line 267
    :cond_6d
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "tarfile is a directory!"

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Tar;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v0

    .line 272
    :cond_79
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Can not write to the specified tarfile!"

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Tar;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v0

    .line 280
    :cond_85
    :try_start_85
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    .line 281
    const-string v1, "basedir does not exist!"

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Tar;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v0
    :try_end_91
    .catchall {:try_start_85 .. :try_end_91} :catchall_91

    .line 351
    :catchall_91
    move-exception v0

    iput-object v2, p0, Lorg/apache/tools/ant/taskdefs/Tar;->filesets:Ljava/util/Vector;

    .line 352
    throw v0

    .line 291
    :cond_95
    :try_start_95
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    .line 293
    const-string v1, "You must supply either a basedir attribute or some nested resource collections."

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Tar;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v0

    .line 302
    :cond_a1
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Tar;->resourceCollections:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_a7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_ba

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/types/ResourceCollection;

    .line 303
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/Tar;->check(Lorg/apache/tools/ant/types/ResourceCollection;)Z

    move-result v0

    and-int/2addr v0, v1

    move v1, v0

    .line 304
    goto :goto_a7

    .line 306
    :cond_ba
    if-eqz v1, :cond_df

    .line 307
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Nothing to do: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Tar;->tarFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " is up to date."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/Tar;->log(Ljava/lang/String;I)V
    :try_end_dc
    .catchall {:try_start_95 .. :try_end_dc} :catchall_91

    .line 351
    iput-object v2, p0, Lorg/apache/tools/ant/taskdefs/Tar;->filesets:Ljava/util/Vector;

    .line 352
    :goto_de
    return-void

    .line 312
    :cond_df
    :try_start_df
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Tar;->tarFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 313
    if-eqz v0, :cond_f9

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_f9

    .line 314
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_f9

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_181

    .line 320
    :cond_f9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Building tar: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Tar;->tarFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/Tar;->log(Ljava/lang/String;I)V
    :try_end_114
    .catchall {:try_start_df .. :try_end_114} :catchall_91

    .line 322
    :try_start_114
    new-instance v1, Lorg/apache/tools/tar/TarOutputStream;

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Tar;->compression:Lorg/apache/tools/ant/taskdefs/Tar$TarCompressionMethod;

    new-instance v3, Ljava/io/BufferedOutputStream;

    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/Tar;->tarFile:Ljava/io/File;

    .line 324
    invoke-virtual {v4}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/nio/file/OpenOption;

    invoke-static {v4, v5}, Ljava/nio/file/Files;->newOutputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/OutputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 323
    invoke-static {v0, v3}, Lorg/apache/tools/ant/taskdefs/Tar$TarCompressionMethod;->access$000(Lorg/apache/tools/ant/taskdefs/Tar$TarCompressionMethod;Ljava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object v0

    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/Tar;->encoding:Ljava/lang/String;

    invoke-direct {v1, v0, v3}, Lorg/apache/tools/tar/TarOutputStream;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_133
    .catch Ljava/io/IOException; {:try_start_114 .. :try_end_133} :catch_161
    .catchall {:try_start_114 .. :try_end_133} :catchall_91

    .line 326
    const/4 v0, 0x1

    :try_start_134
    invoke-virtual {v1, v0}, Lorg/apache/tools/tar/TarOutputStream;->setDebug(Z)V

    .line 327
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Tar;->longFileMode:Lorg/apache/tools/ant/taskdefs/Tar$TarLongFileMode;

    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/Tar$TarLongFileMode;->isTruncateMode()Z

    move-result v0

    if-eqz v0, :cond_191

    .line 328
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lorg/apache/tools/tar/TarOutputStream;->setLongFileMode(I)V

    .line 339
    :goto_143
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Tar;->longWarningGiven:Z

    .line 340
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Tar;->filesets:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_14c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1b8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/taskdefs/Tar$TarFileSet;

    .line 341
    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/Tar;->tar(Lorg/apache/tools/ant/types/ResourceCollection;Lorg/apache/tools/tar/TarOutputStream;)V
    :try_end_15b
    .catchall {:try_start_134 .. :try_end_15b} :catchall_15c

    goto :goto_14c

    .line 322
    :catchall_15c
    move-exception v0

    :try_start_15d
    invoke-virtual {v1}, Lorg/apache/tools/tar/TarOutputStream;->close()V
    :try_end_160
    .catchall {:try_start_15d .. :try_end_160} :catchall_1e1

    :goto_160
    :try_start_160
    throw v0
    :try_end_161
    .catch Ljava/io/IOException; {:try_start_160 .. :try_end_161} :catch_161
    .catchall {:try_start_160 .. :try_end_161} :catchall_91

    .line 346
    :catch_161
    move-exception v0

    .line 347
    :try_start_162
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Problem creating TAR: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 348
    new-instance v3, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Tar;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v4

    invoke-direct {v3, v1, v0, v4}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lorg/apache/tools/ant/Location;)V

    throw v3

    .line 315
    :cond_181
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Failed to create missing parent directory for %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lorg/apache/tools/ant/taskdefs/Tar;->tarFile:Ljava/io/File;

    aput-object v5, v3, v4

    invoke-direct {v0, v1, v3}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
    :try_end_191
    .catchall {:try_start_162 .. :try_end_191} :catchall_91

    .line 329
    :cond_191
    :try_start_191
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Tar;->longFileMode:Lorg/apache/tools/ant/taskdefs/Tar$TarLongFileMode;

    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/Tar$TarLongFileMode;->isFailMode()Z

    move-result v0

    if-nez v0, :cond_1a1

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Tar;->longFileMode:Lorg/apache/tools/ant/taskdefs/Tar$TarLongFileMode;

    .line 330
    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/Tar$TarLongFileMode;->isOmitMode()Z

    move-result v0

    if-eqz v0, :cond_1a6

    .line 331
    :cond_1a1
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lorg/apache/tools/tar/TarOutputStream;->setLongFileMode(I)V

    goto :goto_143

    .line 332
    :cond_1a6
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Tar;->longFileMode:Lorg/apache/tools/ant/taskdefs/Tar$TarLongFileMode;

    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/Tar$TarLongFileMode;->isPosixMode()Z

    move-result v0

    if-eqz v0, :cond_1b3

    .line 333
    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Lorg/apache/tools/tar/TarOutputStream;->setLongFileMode(I)V

    goto :goto_143

    .line 336
    :cond_1b3
    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Lorg/apache/tools/tar/TarOutputStream;->setLongFileMode(I)V

    goto :goto_143

    .line 343
    :cond_1b8
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Tar;->resourceCollections:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1be
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1ce

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/types/ResourceCollection;

    .line 344
    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/Tar;->tar(Lorg/apache/tools/ant/types/ResourceCollection;Lorg/apache/tools/tar/TarOutputStream;)V
    :try_end_1cd
    .catchall {:try_start_191 .. :try_end_1cd} :catchall_15c

    goto :goto_1be

    .line 346
    :cond_1ce
    :try_start_1ce
    invoke-virtual {v1}, Lorg/apache/tools/tar/TarOutputStream;->close()V
    :try_end_1d1
    .catch Ljava/io/IOException; {:try_start_1ce .. :try_end_1d1} :catch_161
    .catchall {:try_start_1ce .. :try_end_1d1} :catchall_91

    .line 349
    iput-object v2, p0, Lorg/apache/tools/ant/taskdefs/Tar;->filesets:Ljava/util/Vector;

    goto/16 :goto_de

    .line 262
    :cond_1d5
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "tarfile attribute must be set!"

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Tar;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v0

    .line 322
    :catchall_1e1
    move-exception v1

    goto/16 :goto_160
.end method

.method public setBasedir(Ljava/io/File;)V
    .registers 2

    .line 178
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Tar;->baseDir:Ljava/io/File;

    .line 179
    return-void
.end method

.method public setCompression(Lorg/apache/tools/ant/taskdefs/Tar$TarCompressionMethod;)V
    .registers 2

    .line 238
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Tar;->compression:Lorg/apache/tools/ant/taskdefs/Tar$TarCompressionMethod;

    .line 239
    return-void
.end method

.method public setDestFile(Ljava/io/File;)V
    .registers 2

    .line 170
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Tar;->tarFile:Ljava/io/File;

    .line 171
    return-void
.end method

.method public setEncoding(Ljava/lang/String;)V
    .registers 2

    .line 252
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Tar;->encoding:Ljava/lang/String;

    .line 253
    return-void
.end method

.method public setLongfile(Ljava/lang/String;)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 202
    const-string v0, "DEPRECATED - The setLongfile(String) method has been deprecated. Use setLongfile(Tar.TarLongFileMode) instead."

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/Tar;->log(Ljava/lang/String;)V

    .line 203
    new-instance v0, Lorg/apache/tools/ant/taskdefs/Tar$TarLongFileMode;

    invoke-direct {v0}, Lorg/apache/tools/ant/taskdefs/Tar$TarLongFileMode;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Tar;->longFileMode:Lorg/apache/tools/ant/taskdefs/Tar$TarLongFileMode;

    .line 204
    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/taskdefs/Tar$TarLongFileMode;->setValue(Ljava/lang/String;)V

    .line 205
    return-void
.end method

.method public setLongfile(Lorg/apache/tools/ant/taskdefs/Tar$TarLongFileMode;)V
    .registers 2

    .line 223
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Tar;->longFileMode:Lorg/apache/tools/ant/taskdefs/Tar$TarLongFileMode;

    .line 224
    return-void
.end method

.method public setTarfile(Ljava/io/File;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 161
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Tar;->tarFile:Ljava/io/File;

    .line 162
    return-void
.end method

.method protected supportsNonFileResources()Z
    .registers 3

    .line 576
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lorg/apache/tools/ant/taskdefs/Tar;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected tar(Lorg/apache/tools/ant/types/ResourceCollection;Lorg/apache/tools/tar/TarOutputStream;)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 679
    const/4 v0, 0x0

    .line 680
    instance-of v1, p1, Lorg/apache/tools/ant/types/ArchiveFileSet;

    if-eqz v1, :cond_8

    move-object v0, p1

    .line 681
    check-cast v0, Lorg/apache/tools/ant/types/ArchiveFileSet;

    .line 683
    :cond_8
    if-eqz v0, :cond_1f

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/ArchiveFileSet;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_1f

    .line 684
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Tar;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/ArchiveFileSet;->getFullpath(Lorg/apache/tools/ant/Project;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_50

    .line 688
    :cond_1f
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/Tar;->asTarFileSet(Lorg/apache/tools/ant/types/ArchiveFileSet;)Lorg/apache/tools/ant/taskdefs/Tar$TarFileSet;

    move-result-object v1

    .line 690
    invoke-static {p1}, Lorg/apache/tools/ant/taskdefs/Tar;->isFileFileSet(Lorg/apache/tools/ant/types/ResourceCollection;)Z

    move-result v0

    if-eqz v0, :cond_58

    .line 691
    check-cast p1, Lorg/apache/tools/ant/types/FileSet;

    .line 692
    invoke-static {p1}, Lorg/apache/tools/ant/taskdefs/Tar;->getFileNames(Lorg/apache/tools/ant/types/FileSet;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    :goto_31
    if-ge v0, v3, :cond_9a

    aget-object v4, v2, v0

    .line 693
    new-instance v5, Ljava/io/File;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Tar;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v6

    invoke-virtual {p1, v6}, Lorg/apache/tools/ant/types/FileSet;->getDir(Lorg/apache/tools/ant/Project;)Ljava/io/File;

    move-result-object v6

    invoke-direct {v5, v6, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 694
    sget-char v6, Ljava/io/File;->separatorChar:C

    const/16 v7, 0x2f

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    .line 695
    invoke-virtual {p0, v5, p2, v4, v1}, Lorg/apache/tools/ant/taskdefs/Tar;->tarFile(Ljava/io/File;Lorg/apache/tools/tar/TarOutputStream;Ljava/lang/String;Lorg/apache/tools/ant/taskdefs/Tar$TarFileSet;)V

    .line 692
    add-int/lit8 v0, v0, 0x1

    goto :goto_31

    .line 685
    :cond_50
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "fullpath attribute may only be specified for filesets that specify a single file."

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 697
    :cond_58
    invoke-interface {p1}, Lorg/apache/tools/ant/types/ResourceCollection;->isFilesystemOnly()Z

    move-result v0

    if-eqz v0, :cond_82

    .line 698
    invoke-interface {p1}, Lorg/apache/tools/ant/types/ResourceCollection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_62
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/types/Resource;

    .line 699
    const-class v3, Lorg/apache/tools/ant/types/resources/FileProvider;

    invoke-virtual {v0, v3}, Lorg/apache/tools/ant/types/Resource;->as(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/types/resources/FileProvider;

    invoke-interface {v0}, Lorg/apache/tools/ant/types/resources/FileProvider;->getFile()Ljava/io/File;

    move-result-object v0

    .line 700
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v0, p2, v3, v1}, Lorg/apache/tools/ant/taskdefs/Tar;->tarFile(Ljava/io/File;Lorg/apache/tools/tar/TarOutputStream;Ljava/lang/String;Lorg/apache/tools/ant/taskdefs/Tar$TarFileSet;)V

    goto :goto_62

    .line 703
    :cond_82
    invoke-interface {p1}, Lorg/apache/tools/ant/types/ResourceCollection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_86
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/types/Resource;

    .line 704
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Resource;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v0, p2, v3, v1}, Lorg/apache/tools/ant/taskdefs/Tar;->tarResource(Lorg/apache/tools/ant/types/Resource;Lorg/apache/tools/tar/TarOutputStream;Ljava/lang/String;Lorg/apache/tools/ant/taskdefs/Tar$TarFileSet;)V

    goto :goto_86

    .line 707
    :cond_9a
    return-void
.end method

.method protected tarFile(Ljava/io/File;Lorg/apache/tools/tar/TarOutputStream;Ljava/lang/String;Lorg/apache/tools/ant/taskdefs/Tar$TarFileSet;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 366
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Tar;->tarFile:Ljava/io/File;

    invoke-virtual {p1, v0}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 379
    :goto_8
    return-void

    .line 378
    :cond_9
    new-instance v0, Lorg/apache/tools/ant/types/resources/FileResource;

    invoke-direct {v0, p1}, Lorg/apache/tools/ant/types/resources/FileResource;-><init>(Ljava/io/File;)V

    invoke-virtual {p0, v0, p2, p3, p4}, Lorg/apache/tools/ant/taskdefs/Tar;->tarResource(Lorg/apache/tools/ant/types/Resource;Lorg/apache/tools/tar/TarOutputStream;Ljava/lang/String;Lorg/apache/tools/ant/taskdefs/Tar$TarFileSet;)V

    goto :goto_8
.end method

.method protected tarResource(Lorg/apache/tools/ant/types/Resource;Lorg/apache/tools/tar/TarOutputStream;Ljava/lang/String;Lorg/apache/tools/ant/taskdefs/Tar$TarFileSet;)V
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide v8, 0x1ffffffffL

    const/4 v3, 0x0

    const/16 v7, 0x64

    const/4 v2, 0x0

    const/4 v6, 0x1

    .line 394
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Resource;->isExists()Z

    move-result v0

    if-nez v0, :cond_11

    .line 523
    :cond_10
    :goto_10
    return-void

    .line 400
    :cond_11
    if-eqz p4, :cond_23c

    .line 401
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Tar;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    invoke-virtual {p4, v0}, Lorg/apache/tools/ant/taskdefs/Tar$TarFileSet;->getFullpath(Lorg/apache/tools/ant/Project;)Ljava/lang/String;

    move-result-object v0

    .line 402
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 404
    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_10

    .line 408
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Tar;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-static {p4, v1}, Lorg/apache/tools/ant/taskdefs/Tar;->getCanonicalPrefix(Lorg/apache/tools/ant/taskdefs/Tar$TarFileSet;Lorg/apache/tools/ant/Project;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 413
    :cond_3e
    invoke-virtual {p4}, Lorg/apache/tools/ant/taskdefs/Tar$TarFileSet;->getPreserveLeadingSlashes()Z

    move-result v1

    .line 415
    const-string v4, "/"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_56

    if-nez v1, :cond_56

    .line 416
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    .line 417
    if-le v4, v6, :cond_10

    .line 421
    invoke-virtual {v0, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 425
    :cond_56
    :goto_56
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Resource;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_75

    const-string v4, "/"

    invoke-virtual {v0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_75

    .line 426
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 429
    :cond_75
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v4, v7, :cond_ce

    .line 430
    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/Tar;->longFileMode:Lorg/apache/tools/ant/taskdefs/Tar$TarLongFileMode;

    invoke-virtual {v4}, Lorg/apache/tools/ant/taskdefs/Tar$TarLongFileMode;->isOmitMode()Z

    move-result v4

    if-eqz v4, :cond_9a

    .line 431
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Omitting: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/Tar;->log(Ljava/lang/String;I)V

    goto/16 :goto_10

    .line 433
    :cond_9a
    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/Tar;->longFileMode:Lorg/apache/tools/ant/taskdefs/Tar$TarLongFileMode;

    invoke-virtual {v4}, Lorg/apache/tools/ant/taskdefs/Tar$TarLongFileMode;->isWarnMode()Z

    move-result v4

    if-eqz v4, :cond_1c5

    .line 434
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Entry: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " longer than "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " characters."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4, v6}, Lorg/apache/tools/ant/taskdefs/Tar;->log(Ljava/lang/String;I)V

    .line 437
    iget-boolean v4, p0, Lorg/apache/tools/ant/taskdefs/Tar;->longWarningGiven:Z

    if-nez v4, :cond_ce

    .line 438
    const-string v4, "Resulting tar file can only be processed successfully by GNU compatible tar commands"

    invoke-virtual {p0, v4, v6}, Lorg/apache/tools/ant/taskdefs/Tar;->log(Ljava/lang/String;I)V

    .line 441
    iput-boolean v6, p0, Lorg/apache/tools/ant/taskdefs/Tar;->longWarningGiven:Z

    .line 450
    :cond_ce
    new-instance v4, Lorg/apache/tools/tar/TarEntry;

    invoke-direct {v4, v0, v1}, Lorg/apache/tools/tar/TarEntry;-><init>(Ljava/lang/String;Z)V

    .line 451
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Resource;->getLastModified()J

    move-result-wide v0

    invoke-virtual {v4, v0, v1}, Lorg/apache/tools/tar/TarEntry;->setModTime(J)V

    .line 453
    instance-of v0, p1, Lorg/apache/tools/ant/types/resources/ArchiveResource;

    if-eqz v0, :cond_144

    move-object v0, p1

    .line 454
    check-cast v0, Lorg/apache/tools/ant/types/resources/ArchiveResource;

    .line 455
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/resources/ArchiveResource;->getMode()I

    move-result v0

    invoke-virtual {v4, v0}, Lorg/apache/tools/tar/TarEntry;->setMode(I)V

    .line 456
    instance-of v0, p1, Lorg/apache/tools/ant/types/resources/TarResource;

    if-eqz v0, :cond_144

    move-object v0, p1

    .line 457
    check-cast v0, Lorg/apache/tools/ant/types/resources/TarResource;

    .line 458
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/resources/TarResource;->getUserName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lorg/apache/tools/tar/TarEntry;->setUserName(Ljava/lang/String;)V

    .line 459
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/resources/TarResource;->getLongUid()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lorg/apache/tools/tar/TarEntry;->setUserId(J)V

    .line 460
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/resources/TarResource;->getGroup()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lorg/apache/tools/tar/TarEntry;->setGroupName(Ljava/lang/String;)V

    .line 461
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/resources/TarResource;->getLongGid()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lorg/apache/tools/tar/TarEntry;->setGroupId(J)V

    .line 462
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/resources/TarResource;->getLinkName()Ljava/lang/String;

    move-result-object v1

    .line 463
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/resources/TarResource;->getLinkFlag()B

    move-result v5

    .line 464
    const/16 v0, 0x31

    if-ne v5, v0, :cond_239

    if-eqz v1, :cond_239

    .line 465
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_239

    const-string v0, "/"

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_239

    .line 466
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Tar;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v6

    invoke-static {p4, v6}, Lorg/apache/tools/ant/taskdefs/Tar;->getCanonicalPrefix(Lorg/apache/tools/ant/taskdefs/Tar$TarFileSet;Lorg/apache/tools/ant/Project;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 468
    :goto_13e
    invoke-virtual {v4, v0}, Lorg/apache/tools/tar/TarEntry;->setLinkName(Ljava/lang/String;)V

    .line 469
    invoke-virtual {v4, v5}, Lorg/apache/tools/tar/TarEntry;->setLinkFlag(B)V

    .line 473
    :cond_144
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Resource;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_219

    .line 474
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Resource;->size()I

    move-result v0

    int-to-long v0, v0

    cmp-long v0, v0, v8

    if-gtz v0, :cond_1f5

    .line 479
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Resource;->getSize()J

    move-result-wide v0

    invoke-virtual {v4, v0, v1}, Lorg/apache/tools/tar/TarEntry;->setSize(J)V

    .line 481
    if-eqz p4, :cond_169

    invoke-virtual {p4}, Lorg/apache/tools/ant/taskdefs/Tar$TarFileSet;->hasFileModeBeenSet()Z

    move-result v0

    if-eqz v0, :cond_169

    .line 482
    invoke-virtual {p4}, Lorg/apache/tools/ant/taskdefs/Tar$TarFileSet;->getMode()I

    move-result v0

    invoke-virtual {v4, v0}, Lorg/apache/tools/tar/TarEntry;->setMode(I)V

    .line 489
    :cond_169
    :goto_169
    if-eqz p4, :cond_19f

    .line 491
    invoke-virtual {p4}, Lorg/apache/tools/ant/taskdefs/Tar$TarFileSet;->hasUserNameBeenSet()Z

    move-result v0

    if-eqz v0, :cond_178

    .line 492
    invoke-virtual {p4}, Lorg/apache/tools/ant/taskdefs/Tar$TarFileSet;->getUserName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lorg/apache/tools/tar/TarEntry;->setUserName(Ljava/lang/String;)V

    .line 494
    :cond_178
    invoke-virtual {p4}, Lorg/apache/tools/ant/taskdefs/Tar$TarFileSet;->hasGroupBeenSet()Z

    move-result v0

    if-eqz v0, :cond_185

    .line 495
    invoke-virtual {p4}, Lorg/apache/tools/ant/taskdefs/Tar$TarFileSet;->getGroup()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lorg/apache/tools/tar/TarEntry;->setGroupName(Ljava/lang/String;)V

    .line 497
    :cond_185
    invoke-virtual {p4}, Lorg/apache/tools/ant/taskdefs/Tar$TarFileSet;->hasUserIdBeenSet()Z

    move-result v0

    if-eqz v0, :cond_192

    .line 498
    invoke-virtual {p4}, Lorg/apache/tools/ant/taskdefs/Tar$TarFileSet;->getUid()I

    move-result v0

    invoke-virtual {v4, v0}, Lorg/apache/tools/tar/TarEntry;->setUserId(I)V

    .line 500
    :cond_192
    invoke-virtual {p4}, Lorg/apache/tools/ant/taskdefs/Tar$TarFileSet;->hasGroupIdBeenSet()Z

    move-result v0

    if-eqz v0, :cond_19f

    .line 501
    invoke-virtual {p4}, Lorg/apache/tools/ant/taskdefs/Tar$TarFileSet;->getGid()I

    move-result v0

    invoke-virtual {v4, v0}, Lorg/apache/tools/tar/TarEntry;->setGroupId(I)V

    .line 507
    :cond_19f
    :try_start_19f
    invoke-virtual {p2, v4}, Lorg/apache/tools/tar/TarOutputStream;->putNextEntry(Lorg/apache/tools/tar/TarEntry;)V

    .line 509
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Resource;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_237

    .line 510
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Resource;->getInputStream()Ljava/io/InputStream;
    :try_end_1ab
    .catchall {:try_start_19f .. :try_end_1ab} :catchall_22e

    move-result-object v0

    .line 512
    const/16 v1, 0x2000

    :try_start_1ae
    new-array v1, v1, [B

    .line 515
    :cond_1b0
    const/4 v3, 0x0

    invoke-virtual {p2, v1, v3, v2}, Lorg/apache/tools/tar/TarOutputStream;->write([BII)V

    .line 516
    const/4 v2, 0x0

    array-length v3, v1

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    .line 517
    const/4 v3, -0x1

    if-ne v2, v3, :cond_1b0

    .line 520
    :goto_1bd
    invoke-virtual {p2}, Lorg/apache/tools/tar/TarOutputStream;->closeEntry()V
    :try_end_1c0
    .catchall {:try_start_1ae .. :try_end_1c0} :catchall_234

    .line 522
    invoke-static {v0}, Lorg/apache/tools/ant/util/FileUtils;->close(Ljava/io/InputStream;)V

    goto/16 :goto_10

    .line 443
    :cond_1c5
    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/Tar;->longFileMode:Lorg/apache/tools/ant/taskdefs/Tar$TarLongFileMode;

    invoke-virtual {v4}, Lorg/apache/tools/ant/taskdefs/Tar$TarLongFileMode;->isFailMode()Z

    move-result v4

    if-eqz v4, :cond_ce

    .line 444
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Entry: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " longer than "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "characters."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 446
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Tar;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v1

    .line 475
    :cond_1f5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Resource: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " larger than "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " bytes."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 484
    :cond_219
    if-eqz p4, :cond_169

    invoke-virtual {p4}, Lorg/apache/tools/ant/taskdefs/Tar$TarFileSet;->hasDirModeBeenSet()Z

    move-result v0

    if-eqz v0, :cond_169

    .line 486
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Tar;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    invoke-virtual {p4, v0}, Lorg/apache/tools/ant/taskdefs/Tar$TarFileSet;->getDirMode(Lorg/apache/tools/ant/Project;)I

    move-result v0

    invoke-virtual {v4, v0}, Lorg/apache/tools/tar/TarEntry;->setMode(I)V

    goto/16 :goto_169

    .line 522
    :catchall_22e
    move-exception v0

    move-object v1, v0

    :goto_230
    invoke-static {v3}, Lorg/apache/tools/ant/util/FileUtils;->close(Ljava/io/InputStream;)V

    .line 523
    throw v1

    .line 522
    :catchall_234
    move-exception v1

    move-object v3, v0

    goto :goto_230

    :cond_237
    move-object v0, v3

    goto :goto_1bd

    :cond_239
    move-object v0, v1

    goto/16 :goto_13e

    :cond_23c
    move-object v0, p3

    move v1, v2

    goto/16 :goto_56
.end method
