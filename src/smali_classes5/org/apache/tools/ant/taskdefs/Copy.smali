.class public Lorg/apache/tools/ant/taskdefs/Copy;
.super Lorg/apache/tools/ant/Task;
.source "Copy.java"


# static fields
.field static final LINE_SEPARATOR:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final MSG_WHEN_COPYING_EMPTY_RC_TO_FILE:Ljava/lang/String; = "Cannot perform operation from directory to file."

.field static final NULL_FILE_PLACEHOLDER:Ljava/io/File;


# instance fields
.field protected completeDirMap:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/io/File;",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field protected destDir:Ljava/io/File;

.field protected destFile:Ljava/io/File;

.field protected dirCopyMap:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private enableMultipleMappings:Z

.field protected failonerror:Z

.field protected file:Ljava/io/File;

.field protected fileCopyMap:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected fileUtils:Lorg/apache/tools/ant/util/FileUtils;

.field protected filesets:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lorg/apache/tools/ant/types/ResourceCollection;",
            ">;"
        }
    .end annotation
.end field

.field private final filterChains:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lorg/apache/tools/ant/types/FilterChain;",
            ">;"
        }
    .end annotation
.end field

.field private final filterSets:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lorg/apache/tools/ant/types/FilterSet;",
            ">;"
        }
    .end annotation
.end field

.field protected filtering:Z

.field protected flatten:Z

.field private force:Z

.field protected forceOverwrite:Z

.field private granularity:J

.field protected includeEmpty:Z

.field private inputEncoding:Ljava/lang/String;

.field protected mapperElement:Lorg/apache/tools/ant/types/Mapper;

.field private outputEncoding:Ljava/lang/String;

.field protected preserveLastModified:Z

.field private quiet:Z

.field protected rcs:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lorg/apache/tools/ant/types/ResourceCollection;",
            ">;"
        }
    .end annotation
.end field

.field private singleResource:Lorg/apache/tools/ant/types/Resource;

.field protected verbosity:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 75
    sget-object v0, Lorg/apache/tools/ant/util/StringUtils;->LINE_SEP:Ljava/lang/String;

    sput-object v0, Lorg/apache/tools/ant/taskdefs/Copy;->LINE_SEPARATOR:Ljava/lang/String;

    .line 76
    new-instance v0, Ljava/io/File;

    const-string v1, "/NULL_FILE"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/tools/ant/taskdefs/Copy;->NULL_FILE_PLACEHOLDER:Ljava/io/File;

    return-void
.end method

.method public constructor <init>()V
    .registers 5

    const/4 v1, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 116
    invoke-direct {p0}, Lorg/apache/tools/ant/Task;-><init>()V

    .line 78
    iput-object v2, p0, Lorg/apache/tools/ant/taskdefs/Copy;->file:Ljava/io/File;

    .line 79
    iput-object v2, p0, Lorg/apache/tools/ant/taskdefs/Copy;->destFile:Ljava/io/File;

    .line 80
    iput-object v2, p0, Lorg/apache/tools/ant/taskdefs/Copy;->destDir:Ljava/io/File;

    .line 81
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Copy;->rcs:Ljava/util/Vector;

    .line 83
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Copy;->filesets:Ljava/util/Vector;

    .line 85
    iput-boolean v3, p0, Lorg/apache/tools/ant/taskdefs/Copy;->enableMultipleMappings:Z

    .line 86
    iput-boolean v3, p0, Lorg/apache/tools/ant/taskdefs/Copy;->filtering:Z

    .line 87
    iput-boolean v3, p0, Lorg/apache/tools/ant/taskdefs/Copy;->preserveLastModified:Z

    .line 88
    iput-boolean v3, p0, Lorg/apache/tools/ant/taskdefs/Copy;->forceOverwrite:Z

    .line 89
    iput-boolean v3, p0, Lorg/apache/tools/ant/taskdefs/Copy;->flatten:Z

    .line 90
    const/4 v0, 0x3

    iput v0, p0, Lorg/apache/tools/ant/taskdefs/Copy;->verbosity:I

    .line 91
    iput-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/Copy;->includeEmpty:Z

    .line 92
    iput-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/Copy;->failonerror:Z

    .line 94
    new-instance v0, Lorg/apache/tools/ant/util/LinkedHashtable;

    invoke-direct {v0}, Lorg/apache/tools/ant/util/LinkedHashtable;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Copy;->fileCopyMap:Ljava/util/Hashtable;

    .line 95
    new-instance v0, Lorg/apache/tools/ant/util/LinkedHashtable;

    invoke-direct {v0}, Lorg/apache/tools/ant/util/LinkedHashtable;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Copy;->dirCopyMap:Ljava/util/Hashtable;

    .line 96
    new-instance v0, Lorg/apache/tools/ant/util/LinkedHashtable;

    invoke-direct {v0}, Lorg/apache/tools/ant/util/LinkedHashtable;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Copy;->completeDirMap:Ljava/util/Hashtable;

    .line 98
    iput-object v2, p0, Lorg/apache/tools/ant/taskdefs/Copy;->mapperElement:Lorg/apache/tools/ant/types/Mapper;

    .line 101
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Copy;->filterChains:Ljava/util/Vector;

    .line 102
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Copy;->filterSets:Ljava/util/Vector;

    .line 103
    iput-object v2, p0, Lorg/apache/tools/ant/taskdefs/Copy;->inputEncoding:Ljava/lang/String;

    .line 104
    iput-object v2, p0, Lorg/apache/tools/ant/taskdefs/Copy;->outputEncoding:Ljava/lang/String;

    .line 105
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/apache/tools/ant/taskdefs/Copy;->granularity:J

    .line 106
    iput-boolean v3, p0, Lorg/apache/tools/ant/taskdefs/Copy;->force:Z

    .line 107
    iput-boolean v3, p0, Lorg/apache/tools/ant/taskdefs/Copy;->quiet:Z

    .line 111
    iput-object v2, p0, Lorg/apache/tools/ant/taskdefs/Copy;->singleResource:Lorg/apache/tools/ant/types/Resource;

    .line 117
    invoke-static {}, Lorg/apache/tools/ant/util/FileUtils;->getFileUtils()Lorg/apache/tools/ant/util/FileUtils;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Copy;->fileUtils:Lorg/apache/tools/ant/util/FileUtils;

    .line 118
    invoke-virtual {v0}, Lorg/apache/tools/ant/util/FileUtils;->getFileTimestampGranularity()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/tools/ant/taskdefs/Copy;->granularity:J

    .line 119
    return-void
.end method

.method private static add(Ljava/io/File;Ljava/lang/String;Ljava/util/Map;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/io/File;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 1027
    if-eqz p1, :cond_b

    .line 1028
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {p0, v0, p2}, Lorg/apache/tools/ant/taskdefs/Copy;->add(Ljava/io/File;[Ljava/lang/String;Ljava/util/Map;)V

    .line 1030
    :cond_b
    return-void
.end method

.method private static add(Ljava/io/File;[Ljava/lang/String;Ljava/util/Map;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "[",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/io/File;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 1015
    if-eqz p1, :cond_18

    .line 1016
    invoke-static {p0}, Lorg/apache/tools/ant/taskdefs/Copy;->getKeyFile(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    .line 1017
    new-instance v1, Lorg/apache/tools/ant/taskdefs/Copy$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lorg/apache/tools/ant/taskdefs/Copy$$ExternalSyntheticLambda0;-><init>([Ljava/lang/String;)V

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 1018
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1020
    :cond_18
    return-void
.end method

.method private copySingleFile()V
    .registers 7

    const/4 v5, 0x0

    .line 621
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Copy;->file:Ljava/io/File;

    if-eqz v0, :cond_53

    .line 622
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_76

    .line 623
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Copy;->destFile:Ljava/io/File;

    if-nez v0, :cond_1e

    .line 624
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Copy;->destDir:Ljava/io/File;

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Copy;->file:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Copy;->destFile:Ljava/io/File;

    .line 626
    :cond_1e
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Copy;->forceOverwrite:Z

    if-nez v0, :cond_3d

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Copy;->destFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3d

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Copy;->file:Ljava/io/File;

    .line 627
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/apache/tools/ant/taskdefs/Copy;->granularity:J

    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/Copy;->destFile:Ljava/io/File;

    .line 628
    sub-long/2addr v0, v2

    invoke-virtual {v4}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_54

    .line 629
    :cond_3d
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Copy;->fileCopyMap:Ljava/util/Hashtable;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Copy;->file:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Copy;->destFile:Ljava/io/File;

    .line 630
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 629
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    aput-object v2, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 647
    :cond_53
    :goto_53
    return-void

    .line 632
    :cond_54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Copy;->file:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " omitted as "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Copy;->destFile:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " is up to date."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/Copy;->log(Ljava/lang/String;I)V

    goto :goto_53

    .line 636
    :cond_76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Warning: Could not find file "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Copy;->file:Ljava/io/File;

    .line 637
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " to copy."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 638
    iget-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/Copy;->failonerror:Z

    if-nez v1, :cond_9e

    .line 639
    iget-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/Copy;->quiet:Z

    if-nez v1, :cond_53

    .line 640
    invoke-virtual {p0, v0, v5}, Lorg/apache/tools/ant/taskdefs/Copy;->log(Ljava/lang/String;I)V

    goto :goto_53

    .line 643
    :cond_9e
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-direct {v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private getDueTo(Ljava/lang/Exception;)Ljava/lang/String;
    .registers 7

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1073
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v3, Ljava/io/IOException;

    if-ne v0, v3, :cond_63

    move v0, v1

    .line 1074
    :goto_b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1075
    if-eqz v0, :cond_18

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_23

    .line 1076
    :cond_18
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1078
    :cond_23
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_37

    .line 1079
    if-nez v0, :cond_30

    .line 1080
    const-string v0, " "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1082
    :cond_30
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1084
    :cond_37
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v4, "MalformedInput"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5e

    .line 1085
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Copy;->inputEncoding:Ljava/lang/String;

    if-nez v0, :cond_51

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Copy;->fileUtils:Lorg/apache/tools/ant/util/FileUtils;

    invoke-virtual {v0}, Lorg/apache/tools/ant/util/FileUtils;->getDefaultEncoding()Ljava/lang/String;

    move-result-object v0

    :cond_51
    const-string v4, "%nThis is normally due to the input file containing invalid%nbytes for the character encoding used : %s%n"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v0, v1, v2

    invoke-static {v4, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1090
    :cond_5e
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_63
    move v0, v2

    .line 1073
    goto :goto_b
.end method

.method private static getKeyFile(Ljava/io/File;)Ljava/io/File;
    .registers 1

    .line 1036
    if-nez p0, :cond_4

    sget-object p0, Lorg/apache/tools/ant/taskdefs/Copy;->NULL_FILE_PLACEHOLDER:Ljava/io/File;

    :cond_4
    return-object p0
.end method

.method private getMapper()Lorg/apache/tools/ant/util/FileNameMapper;
    .registers 2

    .line 1044
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Copy;->mapperElement:Lorg/apache/tools/ant/types/Mapper;

    if-eqz v0, :cond_9

    .line 1046
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Mapper;->getImplementation()Lorg/apache/tools/ant/util/FileNameMapper;

    move-result-object v0

    .line 1052
    :goto_8
    return-object v0

    .line 1047
    :cond_9
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Copy;->flatten:Z

    if-eqz v0, :cond_13

    .line 1048
    new-instance v0, Lorg/apache/tools/ant/util/FlatFileNameMapper;

    invoke-direct {v0}, Lorg/apache/tools/ant/util/FlatFileNameMapper;-><init>()V

    goto :goto_8

    .line 1050
    :cond_13
    new-instance v0, Lorg/apache/tools/ant/util/IdentityMapper;

    invoke-direct {v0}, Lorg/apache/tools/ant/util/IdentityMapper;-><init>()V

    goto :goto_8
.end method

.method private getMessage(Ljava/lang/Exception;)Ljava/lang/String;
    .registers 3

    .line 1062
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_b

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_a
.end method

.method private iterateOverBaseDirs(Ljava/util/Set;Ljava/util/Map;Ljava/util/Map;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/io/File;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/io/File;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/util/Map",
            "<",
            "Ljava/io/File;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    const/4 v5, 0x0

    .line 653
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/io/File;

    .line 654
    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 655
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 657
    new-array v3, v5, [Ljava/lang/String;

    .line 658
    if-eqz v0, :cond_29

    .line 659
    invoke-interface {v0, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    move-object v3, v0

    .line 661
    :cond_29
    new-array v0, v5, [Ljava/lang/String;

    .line 662
    if-eqz v2, :cond_33

    .line 663
    invoke-interface {v2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 665
    :cond_33
    sget-object v2, Lorg/apache/tools/ant/taskdefs/Copy;->NULL_FILE_PLACEHOLDER:Ljava/io/File;

    if-ne v1, v2, :cond_38

    const/4 v1, 0x0

    :cond_38
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Copy;->destDir:Ljava/io/File;

    invoke-virtual {p0, v1, v2, v3, v0}, Lorg/apache/tools/ant/taskdefs/Copy;->scan(Ljava/io/File;Ljava/io/File;[Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_5

    .line 668
    :cond_3e
    return-void
.end method

.method static synthetic lambda$add$1([Ljava/lang/String;Ljava/io/File;)Ljava/util/List;
    .registers 4

    .line 1017
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    return-object v0
.end method

.method static synthetic lambda$buildMap$0(Ljava/io/File;Ljava/lang/String;)Lorg/apache/tools/ant/types/Resource;
    .registers 3

    .line 830
    new-instance v0, Lorg/apache/tools/ant/types/resources/FileResource;

    invoke-direct {v0, p0, p1}, Lorg/apache/tools/ant/types/resources/FileResource;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public add(Lorg/apache/tools/ant/types/ResourceCollection;)V
    .registers 3

    .line 351
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Copy;->rcs:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 352
    return-void
.end method

.method public add(Lorg/apache/tools/ant/util/FileNameMapper;)V
    .registers 3

    .line 374
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Copy;->createMapper()Lorg/apache/tools/ant/types/Mapper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/Mapper;->add(Lorg/apache/tools/ant/util/FileNameMapper;)V

    .line 375
    return-void
.end method

.method public addFileset(Lorg/apache/tools/ant/types/FileSet;)V
    .registers 2

    .line 342
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/taskdefs/Copy;->add(Lorg/apache/tools/ant/types/ResourceCollection;)V

    .line 343
    return-void
.end method

.method protected buildMap([Lorg/apache/tools/ant/types/Resource;Ljava/io/File;Lorg/apache/tools/ant/util/FileNameMapper;)Ljava/util/Map;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/apache/tools/ant/types/Resource;",
            "Ljava/io/File;",
            "Lorg/apache/tools/ant/util/FileNameMapper;",
            ")",
            "Ljava/util/Map",
            "<",
            "Lorg/apache/tools/ant/types/Resource;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v6, 0x0

    .line 818
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 820
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Copy;->forceOverwrite:Z

    if-eqz v0, :cond_5b

    .line 821
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 822
    array-length v2, p1

    move v0, v6

    :goto_11
    if-ge v0, v2, :cond_25

    aget-object v3, p1, v0

    .line 823
    invoke-virtual {v3}, Lorg/apache/tools/ant/types/Resource;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p3, v4}, Lorg/apache/tools/ant/util/FileNameMapper;->mapFileName(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_22

    .line 824
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 822
    :cond_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 827
    :cond_25
    new-array v0, v6, [Lorg/apache/tools/ant/types/Resource;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/tools/ant/types/Resource;

    .line 832
    :goto_2d
    array-length v3, v0

    move v2, v6

    :goto_2f
    if-ge v2, v3, :cond_8a

    aget-object v4, v0, v2

    .line 833
    invoke-virtual {v4}, Lorg/apache/tools/ant/types/Resource;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p3, v1}, Lorg/apache/tools/ant/util/FileNameMapper;->mapFileName(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 834
    if-eqz v5, :cond_82

    array-length v1, v5

    if-eqz v1, :cond_82

    .line 839
    iget-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/Copy;->enableMultipleMappings:Z

    if-nez v1, :cond_6a

    .line 840
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    new-instance v8, Ljava/io/File;

    aget-object v5, v5, v6

    invoke-direct {v8, p2, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v6

    invoke-interface {v7, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 832
    :goto_57
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_2f

    .line 829
    :cond_5b
    new-instance v3, Lorg/apache/tools/ant/taskdefs/Copy$$ExternalSyntheticLambda1;

    invoke-direct {v3, p2}, Lorg/apache/tools/ant/taskdefs/Copy$$ExternalSyntheticLambda1;-><init>(Ljava/io/File;)V

    iget-wide v4, p0, Lorg/apache/tools/ant/taskdefs/Copy;->granularity:J

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    invoke-static/range {v0 .. v5}, Lorg/apache/tools/ant/util/ResourceUtils;->selectOutOfDateSources(Lorg/apache/tools/ant/ProjectComponent;[Lorg/apache/tools/ant/types/Resource;Lorg/apache/tools/ant/util/FileNameMapper;Lorg/apache/tools/ant/types/ResourceFactory;J)[Lorg/apache/tools/ant/types/Resource;

    move-result-object v0

    goto :goto_2d

    :cond_6a
    move v1, v6

    .line 843
    :goto_6b
    array-length v8, v5

    if-ge v1, v8, :cond_7e

    .line 844
    new-instance v8, Ljava/io/File;

    aget-object v9, v5, v1

    invoke-direct {v8, p2, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v5, v1

    .line 843
    add-int/lit8 v1, v1, 0x1

    goto :goto_6b

    .line 846
    :cond_7e
    invoke-interface {v7, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_57

    .line 835
    :cond_82
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Can\'t copy a resource without a name if the mapper doesn\'t provide one."

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 849
    :cond_8a
    return-object v7
.end method

.method protected buildMap(Ljava/io/File;Ljava/io/File;[Ljava/lang/String;Lorg/apache/tools/ant/util/FileNameMapper;Ljava/util/Hashtable;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/io/File;",
            "[",
            "Ljava/lang/String;",
            "Lorg/apache/tools/ant/util/FileNameMapper;",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v8, 0x0

    .line 774
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Copy;->forceOverwrite:Z

    if-eqz v0, :cond_3c

    .line 776
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 777
    array-length v2, p3

    move v0, v8

    :goto_c
    if-ge v0, v2, :cond_1c

    aget-object v3, p3, v0

    .line 778
    invoke-interface {p4, v3}, Lorg/apache/tools/ant/util/FileNameMapper;->mapFileName(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_19

    .line 779
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 777
    :cond_19
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 782
    :cond_1c
    new-array v0, v8, [Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 787
    :goto_24
    array-length v3, v0

    move v2, v8

    :goto_26
    if-ge v2, v3, :cond_84

    aget-object v1, v0, v2

    .line 788
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 789
    invoke-interface {p4, v1}, Lorg/apache/tools/ant/util/FileNameMapper;->mapFileName(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 790
    if-eqz v5, :cond_38

    array-length v1, v5

    if-nez v1, :cond_4c

    .line 787
    :cond_38
    :goto_38
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_26

    .line 784
    :cond_3c
    new-instance v1, Lorg/apache/tools/ant/util/SourceFileScanner;

    invoke-direct {v1, p0}, Lorg/apache/tools/ant/util/SourceFileScanner;-><init>(Lorg/apache/tools/ant/Task;)V

    .line 785
    iget-wide v6, p0, Lorg/apache/tools/ant/taskdefs/Copy;->granularity:J

    move-object v2, p3

    move-object v3, p1

    move-object v4, p2

    move-object v5, p4

    invoke-virtual/range {v1 .. v7}, Lorg/apache/tools/ant/util/SourceFileScanner;->restrict([Ljava/lang/String;Ljava/io/File;Ljava/io/File;Lorg/apache/tools/ant/util/FileNameMapper;J)[Ljava/lang/String;

    move-result-object v0

    goto :goto_24

    .line 794
    :cond_4c
    iget-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/Copy;->enableMultipleMappings:Z

    if-nez v1, :cond_68

    .line 795
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/io/File;

    aget-object v5, v5, v8

    invoke-direct {v4, p2, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 796
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    .line 795
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    aput-object v4, v5, v8

    invoke-virtual {p5, v1, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_38

    :cond_68
    move v1, v8

    .line 799
    :goto_69
    array-length v6, v5

    if-ge v1, v6, :cond_7c

    .line 800
    new-instance v6, Ljava/io/File;

    aget-object v7, v5, v1

    invoke-direct {v6, p2, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    .line 799
    add-int/lit8 v1, v1, 0x1

    goto :goto_69

    .line 802
    :cond_7c
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p5, v1, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_38

    .line 805
    :cond_84
    return-void
.end method

.method public createFilterChain()Lorg/apache/tools/ant/types/FilterChain;
    .registers 3

    .line 158
    new-instance v0, Lorg/apache/tools/ant/types/FilterChain;

    invoke-direct {v0}, Lorg/apache/tools/ant/types/FilterChain;-><init>()V

    .line 159
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Copy;->filterChains:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 160
    return-object v0
.end method

.method public createFilterSet()Lorg/apache/tools/ant/types/FilterSet;
    .registers 3

    .line 168
    new-instance v0, Lorg/apache/tools/ant/types/FilterSet;

    invoke-direct {v0}, Lorg/apache/tools/ant/types/FilterSet;-><init>()V

    .line 169
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Copy;->filterSets:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 170
    return-object v0
.end method

.method public createMapper()Lorg/apache/tools/ant/types/Mapper;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 360
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Copy;->mapperElement:Lorg/apache/tools/ant/types/Mapper;

    if-nez v0, :cond_10

    .line 364
    new-instance v0, Lorg/apache/tools/ant/types/Mapper;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Copy;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/types/Mapper;-><init>(Lorg/apache/tools/ant/Project;)V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Copy;->mapperElement:Lorg/apache/tools/ant/types/Mapper;

    .line 365
    return-object v0

    .line 361
    :cond_10
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Cannot define more than one mapper"

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Copy;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v0
.end method

.method protected doFileOperations()V
    .registers 21

    .line 857
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/tools/ant/taskdefs/Copy;->fileCopyMap:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_19f

    .line 858
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Copying "

    const-string v1, "Copying "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/tools/ant/taskdefs/Copy;->fileCopyMap:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->size()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " file"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 859
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/tools/ant/taskdefs/Copy;->fileCopyMap:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->size()I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_a6

    const-string v1, ""

    :goto_33
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " to "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/tools/ant/taskdefs/Copy;->destDir:Ljava/io/File;

    .line 860
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 858
    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/taskdefs/Copy;->log(Ljava/lang/String;)V

    .line 862
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/tools/ant/taskdefs/Copy;->fileCopyMap:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :cond_5b
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19f

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 863
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Ljava/lang/String;

    .line 865
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v14, v1

    check-cast v14, [Ljava/lang/String;

    array-length v0, v14

    move/from16 v18, v0

    const/4 v1, 0x0

    move v15, v1

    :goto_7a
    move/from16 v0, v18

    if-ge v15, v0, :cond_5b

    aget-object v19, v14, v15

    .line 866
    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a9

    .line 867
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Skipping self-copy of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iget v2, v0, Lorg/apache/tools/ant/taskdefs/Copy;->verbosity:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Lorg/apache/tools/ant/taskdefs/Copy;->log(Ljava/lang/String;I)V

    .line 865
    :goto_a2
    add-int/lit8 v1, v15, 0x1

    move v15, v1

    goto :goto_7a

    .line 859
    :cond_a6
    const-string v1, "s"

    goto :goto_33

    .line 871
    :cond_a9
    :try_start_a9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, v19

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iget v2, v0, Lorg/apache/tools/ant/taskdefs/Copy;->verbosity:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Lorg/apache/tools/ant/taskdefs/Copy;->log(Ljava/lang/String;I)V

    .line 873
    new-instance v4, Lorg/apache/tools/ant/types/FilterSetCollection;

    invoke-direct {v4}, Lorg/apache/tools/ant/types/FilterSetCollection;-><init>()V

    .line 875
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lorg/apache/tools/ant/taskdefs/Copy;->filtering:Z
    :try_end_d6
    .catch Ljava/io/IOException; {:try_start_a9 .. :try_end_d6} :catch_265

    if-eqz v1, :cond_e3

    .line 876
    :try_start_d8
    invoke-virtual/range {p0 .. p0}, Lorg/apache/tools/ant/taskdefs/Copy;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/tools/ant/Project;->getGlobalFilterSet()Lorg/apache/tools/ant/types/FilterSet;

    move-result-object v1

    invoke-virtual {v4, v1}, Lorg/apache/tools/ant/types/FilterSetCollection;->addFilterSet(Lorg/apache/tools/ant/types/FilterSet;)V
    :try_end_e3
    .catch Ljava/io/IOException; {:try_start_d8 .. :try_end_e3} :catch_fb

    .line 879
    :cond_e3
    :try_start_e3
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/tools/ant/taskdefs/Copy;->filterSets:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_eb
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
    :try_end_ee
    .catch Ljava/io/IOException; {:try_start_e3 .. :try_end_ee} :catch_265

    move-result v1

    if-eqz v1, :cond_160

    :try_start_f1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/tools/ant/types/FilterSet;

    .line 880
    invoke-virtual {v4, v1}, Lorg/apache/tools/ant/types/FilterSetCollection;->addFilterSet(Lorg/apache/tools/ant/types/FilterSet;)V
    :try_end_fa
    .catch Ljava/io/IOException; {:try_start_f1 .. :try_end_fa} :catch_fb

    goto :goto_eb

    .line 889
    :catch_fb
    move-exception v1

    .line 890
    :goto_fc
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to copy "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " due to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 891
    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/taskdefs/Copy;->getDueTo(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 892
    new-instance v3, Ljava/io/File;

    move-object/from16 v0, v19

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 893
    instance-of v4, v1, Lorg/apache/tools/ant/util/ResourceUtils$ReadOnlyTargetFileException;

    if-nez v4, :cond_152

    .line 895
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_152

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v3

    if-nez v3, :cond_152

    .line 896
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " and I couldn\'t delete the corrupt "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 898
    :cond_152
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lorg/apache/tools/ant/taskdefs/Copy;->failonerror:Z

    if-nez v3, :cond_195

    .line 901
    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v1}, Lorg/apache/tools/ant/taskdefs/Copy;->log(Ljava/lang/String;I)V

    goto/16 :goto_a2

    .line 882
    :cond_160
    :try_start_160
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/tools/ant/taskdefs/Copy;->fileUtils:Lorg/apache/tools/ant/util/FileUtils;

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/io/File;

    move-object/from16 v0, v19

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/tools/ant/taskdefs/Copy;->filterChains:Ljava/util/Vector;

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lorg/apache/tools/ant/taskdefs/Copy;->forceOverwrite:Z
    :try_end_178
    .catch Ljava/io/IOException; {:try_start_160 .. :try_end_178} :catch_265

    :try_start_178
    move-object/from16 v0, p0

    iget-boolean v7, v0, Lorg/apache/tools/ant/taskdefs/Copy;->preserveLastModified:Z
    :try_end_17c
    .catch Ljava/io/IOException; {:try_start_178 .. :try_end_17c} :catch_25f

    :try_start_17c
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/apache/tools/ant/taskdefs/Copy;->inputEncoding:Ljava/lang/String;
    :try_end_180
    .catch Ljava/io/IOException; {:try_start_17c .. :try_end_180} :catch_262

    :try_start_180
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/apache/tools/ant/taskdefs/Copy;->outputEncoding:Ljava/lang/String;

    .line 887
    invoke-virtual/range {p0 .. p0}, Lorg/apache/tools/ant/taskdefs/Copy;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v11

    .line 888
    invoke-virtual/range {p0 .. p0}, Lorg/apache/tools/ant/taskdefs/Copy;->getForce()Z

    move-result v12

    .line 882
    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v12}, Lorg/apache/tools/ant/util/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;Lorg/apache/tools/ant/types/FilterSetCollection;Ljava/util/Vector;ZZZLjava/lang/String;Ljava/lang/String;Lorg/apache/tools/ant/Project;Z)V
    :try_end_190
    .catch Ljava/io/IOException; {:try_start_180 .. :try_end_190} :catch_192

    goto/16 :goto_a2

    .line 889
    :catch_192
    move-exception v1

    goto/16 :goto_fc

    .line 899
    :cond_195
    new-instance v3, Lorg/apache/tools/ant/BuildException;

    invoke-virtual/range {p0 .. p0}, Lorg/apache/tools/ant/taskdefs/Copy;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v4

    invoke-direct {v3, v2, v1, v4}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lorg/apache/tools/ant/Location;)V

    throw v3

    .line 906
    :cond_19f
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lorg/apache/tools/ant/taskdefs/Copy;->includeEmpty:Z

    if-eqz v1, :cond_258

    .line 907
    const/4 v1, 0x0

    .line 908
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/tools/ant/taskdefs/Copy;->dirCopyMap:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v2, v1

    :cond_1b3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1fd

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 909
    array-length v5, v1

    const/4 v3, 0x0

    :goto_1c1
    if-ge v3, v5, :cond_1b3

    aget-object v6, v1, v3

    .line 910
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 911
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_1f7

    .line 912
    invoke-virtual {v7}, Ljava/io/File;->mkdirs()Z

    move-result v6

    if-nez v6, :cond_1fa

    invoke-virtual {v7}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-nez v6, :cond_1fa

    .line 913
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to create directory "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 914
    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 913
    const/4 v7, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Lorg/apache/tools/ant/taskdefs/Copy;->log(Ljava/lang/String;I)V

    .line 911
    :cond_1f7
    :goto_1f7
    add-int/lit8 v3, v3, 0x1

    goto :goto_1c1

    .line 912
    :cond_1fa
    add-int/lit8 v2, v2, 0x1

    goto :goto_1f7

    .line 921
    :cond_1fd
    if-lez v2, :cond_258

    .line 922
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Copied "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/tools/ant/taskdefs/Copy;->dirCopyMap:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->size()I

    move-result v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " empty director"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 924
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/tools/ant/taskdefs/Copy;->dirCopyMap:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->size()I

    move-result v1

    const-string v3, "y"

    const/4 v5, 0x1

    if-ne v1, v5, :cond_259

    const-string v1, "y"

    :goto_228
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " to "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " empty director"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 927
    const/4 v1, 0x1

    if-ne v2, v1, :cond_25c

    move-object v1, v3

    :goto_23c
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " under "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/tools/ant/taskdefs/Copy;->destDir:Ljava/io/File;

    .line 928
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 922
    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/taskdefs/Copy;->log(Ljava/lang/String;)V

    .line 931
    :cond_258
    return-void

    .line 924
    :cond_259
    const-string v1, "ies"

    goto :goto_228

    .line 927
    :cond_25c
    const-string v1, "ies"

    goto :goto_23c

    .line 889
    :catch_25f
    move-exception v1

    goto/16 :goto_fc

    :catch_262
    move-exception v1

    goto/16 :goto_fc

    :catch_265
    move-exception v1

    goto/16 :goto_fc
.end method

.method protected doResourceOperations(Ljava/util/Map;)V
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lorg/apache/tools/ant/types/Resource;",
            "[",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 940
    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_165

    .line 941
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Copying "

    const-string v1, "Copying "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " resource"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 942
    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->size()I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_128

    const-string v1, ""

    :goto_27
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " to "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/tools/ant/taskdefs/Copy;->destDir:Ljava/io/File;

    .line 943
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 941
    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/taskdefs/Copy;->log(Ljava/lang/String;)V

    .line 945
    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :cond_4b
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_165

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/util/Map$Entry;

    .line 946
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/tools/ant/types/Resource;

    .line 947
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    move-object v12, v2

    check-cast v12, [Ljava/lang/String;

    array-length v0, v12

    move/from16 v16, v0

    const/4 v2, 0x0

    move v13, v2

    :goto_6a
    move/from16 v0, v16

    if-ge v13, v0, :cond_4b

    aget-object v17, v12, v13

    .line 949
    :try_start_70
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lorg/apache/tools/ant/taskdefs/Copy;->verbosity:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lorg/apache/tools/ant/taskdefs/Copy;->log(Ljava/lang/String;I)V

    .line 952
    new-instance v3, Lorg/apache/tools/ant/types/FilterSetCollection;

    invoke-direct {v3}, Lorg/apache/tools/ant/types/FilterSetCollection;-><init>()V

    .line 953
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/apache/tools/ant/taskdefs/Copy;->filtering:Z
    :try_end_9b
    .catch Ljava/io/IOException; {:try_start_70 .. :try_end_9b} :catch_166

    if-eqz v2, :cond_a8

    .line 954
    :try_start_9d
    invoke-virtual/range {p0 .. p0}, Lorg/apache/tools/ant/taskdefs/Copy;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/tools/ant/Project;->getGlobalFilterSet()Lorg/apache/tools/ant/types/FilterSet;

    move-result-object v2

    invoke-virtual {v3, v2}, Lorg/apache/tools/ant/types/FilterSetCollection;->addFilterSet(Lorg/apache/tools/ant/types/FilterSet;)V
    :try_end_a8
    .catch Ljava/io/IOException; {:try_start_9d .. :try_end_a8} :catch_c0

    .line 957
    :cond_a8
    :try_start_a8
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/tools/ant/taskdefs/Copy;->filterSets:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_b0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z
    :try_end_b3
    .catch Ljava/io/IOException; {:try_start_a8 .. :try_end_b3} :catch_166

    move-result v2

    if-eqz v2, :cond_12c

    :try_start_b6
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/tools/ant/types/FilterSet;

    .line 958
    invoke-virtual {v3, v2}, Lorg/apache/tools/ant/types/FilterSetCollection;->addFilterSet(Lorg/apache/tools/ant/types/FilterSet;)V
    :try_end_bf
    .catch Ljava/io/IOException; {:try_start_b6 .. :try_end_bf} :catch_c0

    goto :goto_b0

    .line 972
    :catch_c0
    move-exception v2

    .line 973
    :goto_c1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to copy "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " due to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 975
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lorg/apache/tools/ant/taskdefs/Copy;->getDueTo(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 976
    new-instance v4, Ljava/io/File;

    move-object/from16 v0, v17

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 977
    instance-of v5, v2, Lorg/apache/tools/ant/util/ResourceUtils$ReadOnlyTargetFileException;

    if-nez v5, :cond_117

    .line 979
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_117

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v4

    if-nez v4, :cond_117

    .line 980
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " and I couldn\'t delete the corrupt "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 982
    :cond_117
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lorg/apache/tools/ant/taskdefs/Copy;->failonerror:Z

    if-nez v4, :cond_15b

    .line 985
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v2}, Lorg/apache/tools/ant/taskdefs/Copy;->log(Ljava/lang/String;I)V

    .line 947
    :goto_123
    add-int/lit8 v2, v13, 0x1

    move v13, v2

    goto/16 :goto_6a

    .line 942
    :cond_128
    const-string v1, "s"

    goto/16 :goto_27

    .line 960
    :cond_12c
    :try_start_12c
    new-instance v2, Lorg/apache/tools/ant/types/resources/FileResource;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/tools/ant/taskdefs/Copy;->destDir:Ljava/io/File;

    move-object/from16 v0, v17

    invoke-direct {v2, v4, v0}, Lorg/apache/tools/ant/types/resources/FileResource;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/tools/ant/taskdefs/Copy;->filterChains:Ljava/util/Vector;

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lorg/apache/tools/ant/taskdefs/Copy;->forceOverwrite:Z

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lorg/apache/tools/ant/taskdefs/Copy;->preserveLastModified:Z

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/apache/tools/ant/taskdefs/Copy;->inputEncoding:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/apache/tools/ant/taskdefs/Copy;->outputEncoding:Ljava/lang/String;

    .line 970
    invoke-virtual/range {p0 .. p0}, Lorg/apache/tools/ant/taskdefs/Copy;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v10

    .line 971
    invoke-virtual/range {p0 .. p0}, Lorg/apache/tools/ant/taskdefs/Copy;->getForce()Z
    :try_end_152
    .catch Ljava/io/IOException; {:try_start_12c .. :try_end_152} :catch_166

    move-result v11

    .line 960
    const/4 v7, 0x0

    :try_start_154
    invoke-static/range {v1 .. v11}, Lorg/apache/tools/ant/util/ResourceUtils;->copyResource(Lorg/apache/tools/ant/types/Resource;Lorg/apache/tools/ant/types/Resource;Lorg/apache/tools/ant/types/FilterSetCollection;Ljava/util/Vector;ZZZLjava/lang/String;Ljava/lang/String;Lorg/apache/tools/ant/Project;Z)V
    :try_end_157
    .catch Ljava/io/IOException; {:try_start_154 .. :try_end_157} :catch_158

    goto :goto_123

    .line 972
    :catch_158
    move-exception v2

    goto/16 :goto_c1

    .line 983
    :cond_15b
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-virtual/range {p0 .. p0}, Lorg/apache/tools/ant/taskdefs/Copy;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v4

    invoke-direct {v1, v3, v2, v4}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lorg/apache/tools/ant/Location;)V

    throw v1

    .line 990
    :cond_165
    return-void

    .line 972
    :catch_166
    move-exception v2

    goto/16 :goto_c1
.end method

.method public execute()V
    .registers 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 438
    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/apache/tools/ant/taskdefs/Copy;->file:Ljava/io/File;

    .line 439
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/apache/tools/ant/taskdefs/Copy;->destFile:Ljava/io/File;

    .line 440
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/apache/tools/ant/taskdefs/Copy;->destDir:Ljava/io/File;

    .line 441
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/tools/ant/taskdefs/Copy;->file:Ljava/io/File;

    if-nez v1, :cond_e0

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/tools/ant/taskdefs/Copy;->destFile:Ljava/io/File;

    if-eqz v1, :cond_e0

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/tools/ant/taskdefs/Copy;->rcs:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_e0

    .line 444
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/tools/ant/taskdefs/Copy;->rcs:Ljava/util/Vector;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/tools/ant/types/ResourceCollection;

    move-object v7, v1

    .line 450
    :goto_2f
    :try_start_2f
    invoke-virtual/range {p0 .. p0}, Lorg/apache/tools/ant/taskdefs/Copy;->validateAttributes()V
    :try_end_32
    .catch Lorg/apache/tools/ant/BuildException; {:try_start_2f .. :try_end_32} :catch_292
    .catchall {:try_start_2f .. :try_end_32} :catchall_ae

    .line 460
    :try_start_32
    invoke-direct/range {p0 .. p0}, Lorg/apache/tools/ant/taskdefs/Copy;->copySingleFile()V

    .line 482
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 483
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 484
    new-instance v11, Ljava/util/HashSet;

    invoke-direct {v11}, Ljava/util/HashSet;-><init>()V

    .line 485
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 487
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/tools/ant/taskdefs/Copy;->rcs:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_51
    :goto_51
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1c4

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/tools/ant/types/ResourceCollection;

    .line 490
    instance-of v2, v1, Lorg/apache/tools/ant/types/FileSet;

    if-eqz v2, :cond_11f

    invoke-interface {v1}, Lorg/apache/tools/ant/types/ResourceCollection;->isFilesystemOnly()Z

    move-result v2

    if-eqz v2, :cond_11f

    .line 491
    check-cast v1, Lorg/apache/tools/ant/types/FileSet;
    :try_end_69
    .catchall {:try_start_32 .. :try_end_69} :catchall_ae

    .line 494
    :try_start_69
    invoke-virtual/range {p0 .. p0}, Lorg/apache/tools/ant/taskdefs/Copy;->getProject()Lorg/apache/tools/ant/Project;
    :try_end_6c
    .catch Lorg/apache/tools/ant/BuildException; {:try_start_69 .. :try_end_6c} :catch_e4
    .catchall {:try_start_69 .. :try_end_6c} :catchall_ae

    move-result-object v2

    :try_start_6d
    invoke-virtual {v1, v2}, Lorg/apache/tools/ant/types/FileSet;->getDirectoryScanner(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/DirectoryScanner;
    :try_end_70
    .catch Lorg/apache/tools/ant/BuildException; {:try_start_6d .. :try_end_70} :catch_2f7
    .catchall {:try_start_6d .. :try_end_70} :catchall_ae

    move-result-object v2

    .line 505
    :try_start_71
    invoke-virtual/range {p0 .. p0}, Lorg/apache/tools/ant/taskdefs/Copy;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v5

    invoke-virtual {v1, v5}, Lorg/apache/tools/ant/types/FileSet;->getDir(Lorg/apache/tools/ant/Project;)Ljava/io/File;

    move-result-object v5

    .line 508
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lorg/apache/tools/ant/taskdefs/Copy;->flatten:Z

    if-nez v6, :cond_9c

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/tools/ant/taskdefs/Copy;->mapperElement:Lorg/apache/tools/ant/types/Mapper;

    if-nez v6, :cond_9c

    .line 509
    invoke-virtual {v2}, Lorg/apache/tools/ant/DirectoryScanner;->isEverythingIncluded()Z

    move-result v6

    if-eqz v6, :cond_9c

    invoke-virtual {v1}, Lorg/apache/tools/ant/types/FileSet;->hasPatterns()Z

    move-result v1

    if-nez v1, :cond_9c

    .line 510
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/tools/ant/taskdefs/Copy;->completeDirMap:Ljava/util/Hashtable;

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/tools/ant/taskdefs/Copy;->destDir:Ljava/io/File;

    invoke-virtual {v1, v5, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 508
    :cond_9c
    invoke-virtual {v2}, Lorg/apache/tools/ant/DirectoryScanner;->getIncludedFiles()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1, v4}, Lorg/apache/tools/ant/taskdefs/Copy;->add(Ljava/io/File;[Ljava/lang/String;Ljava/util/Map;)V

    .line 513
    invoke-virtual {v2}, Lorg/apache/tools/ant/DirectoryScanner;->getIncludedDirectories()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1, v3}, Lorg/apache/tools/ant/taskdefs/Copy;->add(Ljava/io/File;[Ljava/lang/String;Ljava/util/Map;)V

    .line 514
    invoke-interface {v11, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_ad
    .catchall {:try_start_71 .. :try_end_ad} :catchall_ae

    goto :goto_51

    .line 602
    :catchall_ae
    move-exception v1

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/apache/tools/ant/taskdefs/Copy;->singleResource:Lorg/apache/tools/ant/types/Resource;

    .line 603
    move-object/from16 v0, p0

    iput-object v8, v0, Lorg/apache/tools/ant/taskdefs/Copy;->file:Ljava/io/File;

    .line 604
    move-object/from16 v0, p0

    iput-object v9, v0, Lorg/apache/tools/ant/taskdefs/Copy;->destFile:Ljava/io/File;

    .line 605
    move-object/from16 v0, p0

    iput-object v10, v0, Lorg/apache/tools/ant/taskdefs/Copy;->destDir:Ljava/io/File;

    .line 606
    if-eqz v7, :cond_ca

    .line 607
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/tools/ant/taskdefs/Copy;->rcs:Ljava/util/Vector;

    const/4 v3, 0x0

    invoke-virtual {v2, v7, v3}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    .line 609
    :cond_ca
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/tools/ant/taskdefs/Copy;->fileCopyMap:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->clear()V

    .line 610
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/tools/ant/taskdefs/Copy;->dirCopyMap:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->clear()V

    .line 611
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/tools/ant/taskdefs/Copy;->completeDirMap:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->clear()V

    .line 612
    throw v1

    .line 450
    :cond_e0
    const/4 v1, 0x0

    move-object v7, v1

    goto/16 :goto_2f

    .line 495
    :catch_e4
    move-exception v1

    .line 496
    :goto_e5
    :try_start_e5
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/apache/tools/ant/taskdefs/Copy;->failonerror:Z

    if-nez v2, :cond_11e

    .line 497
    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/taskdefs/Copy;->getMessage(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v2

    const-string v5, " does not exist."

    invoke-virtual {v2, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_11e

    .line 501
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/apache/tools/ant/taskdefs/Copy;->quiet:Z

    if-nez v2, :cond_51

    .line 502
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Warning: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/taskdefs/Copy;->getMessage(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Lorg/apache/tools/ant/taskdefs/Copy;->log(Ljava/lang/String;I)V

    goto/16 :goto_51

    .line 499
    :cond_11e
    throw v1

    .line 517
    :cond_11f
    invoke-interface {v1}, Lorg/apache/tools/ant/types/ResourceCollection;->isFilesystemOnly()Z

    move-result v2

    if-nez v2, :cond_12b

    invoke-virtual/range {p0 .. p0}, Lorg/apache/tools/ant/taskdefs/Copy;->supportsNonFileResources()Z

    move-result v2

    if-eqz v2, :cond_16e

    .line 522
    :cond_12b
    invoke-interface {v1}, Lorg/apache/tools/ant/types/ResourceCollection;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_12f
    :goto_12f
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_51

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/tools/ant/types/Resource;

    .line 523
    invoke-virtual {v1}, Lorg/apache/tools/ant/types/Resource;->isExists()Z

    move-result v2

    if-nez v2, :cond_17c

    .line 524
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Warning: Could not find resource "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 525
    invoke-virtual {v1}, Lorg/apache/tools/ant/types/Resource;->toLongString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " to copy."

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 526
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/apache/tools/ant/taskdefs/Copy;->failonerror:Z

    if-nez v2, :cond_176

    .line 527
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/apache/tools/ant/taskdefs/Copy;->quiet:Z

    if-nez v2, :cond_12f

    .line 528
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Lorg/apache/tools/ant/taskdefs/Copy;->log(Ljava/lang/String;I)V

    goto :goto_12f

    .line 518
    :cond_16e
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    const-string v2, "Only FileSystem resources are supported."

    invoke-direct {v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 531
    :cond_176
    new-instance v2, Lorg/apache/tools/ant/BuildException;

    invoke-direct {v2, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 536
    :cond_17c
    sget-object v6, Lorg/apache/tools/ant/taskdefs/Copy;->NULL_FILE_PLACEHOLDER:Ljava/io/File;

    .line 537
    invoke-virtual {v1}, Lorg/apache/tools/ant/types/Resource;->getName()Ljava/lang/String;

    move-result-object v5

    .line 538
    const-class v2, Lorg/apache/tools/ant/types/resources/FileProvider;

    invoke-virtual {v1, v2}, Lorg/apache/tools/ant/types/Resource;->as(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/tools/ant/types/resources/FileProvider;

    .line 539
    if-eqz v2, :cond_1a6

    .line 540
    invoke-static {v2}, Lorg/apache/tools/ant/util/ResourceUtils;->asFileResource(Lorg/apache/tools/ant/types/resources/FileProvider;)Lorg/apache/tools/ant/types/resources/FileResource;

    move-result-object v15

    .line 541
    invoke-virtual {v15}, Lorg/apache/tools/ant/types/resources/FileResource;->getBaseDir()Ljava/io/File;

    move-result-object v6

    invoke-static {v6}, Lorg/apache/tools/ant/taskdefs/Copy;->getKeyFile(Ljava/io/File;)Ljava/io/File;

    move-result-object v6

    .line 542
    invoke-virtual {v15}, Lorg/apache/tools/ant/types/resources/FileResource;->getBaseDir()Ljava/io/File;

    move-result-object v16

    if-nez v16, :cond_1a6

    .line 543
    invoke-virtual {v15}, Lorg/apache/tools/ant/types/resources/FileResource;->getFile()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    .line 550
    :cond_1a6
    invoke-virtual {v1}, Lorg/apache/tools/ant/types/Resource;->isDirectory()Z

    move-result v15

    if-nez v15, :cond_1ae

    if-eqz v2, :cond_1bd

    .line 551
    :cond_1ae
    invoke-virtual {v1}, Lorg/apache/tools/ant/types/Resource;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_1c2

    move-object v1, v3

    :goto_1b5
    invoke-static {v6, v5, v1}, Lorg/apache/tools/ant/taskdefs/Copy;->add(Ljava/io/File;Ljava/lang/String;Ljava/util/Map;)V

    .line 554
    invoke-interface {v11, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_12f

    .line 557
    :cond_1bd
    invoke-interface {v12, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_12f

    :cond_1c2
    move-object v1, v4

    .line 553
    goto :goto_1b5

    .line 563
    :cond_1c4
    move-object/from16 v0, p0

    invoke-direct {v0, v11, v3, v4}, Lorg/apache/tools/ant/taskdefs/Copy;->iterateOverBaseDirs(Ljava/util/Set;Ljava/util/Map;Ljava/util/Map;)V
    :try_end_1c9
    .catchall {:try_start_e5 .. :try_end_1c9} :catchall_ae

    .line 567
    :try_start_1c9
    invoke-virtual/range {p0 .. p0}, Lorg/apache/tools/ant/taskdefs/Copy;->doFileOperations()V
    :try_end_1cc
    .catch Lorg/apache/tools/ant/BuildException; {:try_start_1c9 .. :try_end_1cc} :catch_238
    .catchall {:try_start_1c9 .. :try_end_1cc} :catchall_ae

    .line 578
    :cond_1cc
    :goto_1cc
    :try_start_1cc
    invoke-interface {v12}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1d8

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/tools/ant/taskdefs/Copy;->singleResource:Lorg/apache/tools/ant/types/Resource;

    if-eqz v1, :cond_207

    .line 579
    :cond_1d8
    const/4 v1, 0x0

    new-array v1, v1, [Lorg/apache/tools/ant/types/Resource;

    invoke-interface {v12, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/apache/tools/ant/types/Resource;

    .line 582
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/tools/ant/taskdefs/Copy;->destDir:Ljava/io/File;

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Lorg/apache/tools/ant/taskdefs/Copy;->scan([Lorg/apache/tools/ant/types/Resource;Ljava/io/File;)Ljava/util/Map;

    move-result-object v1

    .line 583
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/tools/ant/taskdefs/Copy;->singleResource:Lorg/apache/tools/ant/types/Resource;

    if-eqz v2, :cond_202

    .line 584
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/tools/ant/taskdefs/Copy;->destFile:Ljava/io/File;

    .line 585
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    .line 584
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v3, v4, v5

    invoke-interface {v1, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_202
    .catchall {:try_start_1cc .. :try_end_202} :catchall_ae

    .line 588
    :cond_202
    :try_start_202
    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/taskdefs/Copy;->doResourceOperations(Ljava/util/Map;)V
    :try_end_207
    .catch Lorg/apache/tools/ant/BuildException; {:try_start_202 .. :try_end_207} :catch_264
    .catchall {:try_start_202 .. :try_end_207} :catchall_ae

    .line 602
    :cond_207
    :goto_207
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Lorg/apache/tools/ant/taskdefs/Copy;->singleResource:Lorg/apache/tools/ant/types/Resource;

    .line 603
    move-object/from16 v0, p0

    iput-object v8, v0, Lorg/apache/tools/ant/taskdefs/Copy;->file:Ljava/io/File;

    .line 604
    move-object/from16 v0, p0

    iput-object v9, v0, Lorg/apache/tools/ant/taskdefs/Copy;->destFile:Ljava/io/File;

    .line 605
    move-object/from16 v0, p0

    iput-object v10, v0, Lorg/apache/tools/ant/taskdefs/Copy;->destDir:Ljava/io/File;

    .line 606
    if-eqz v7, :cond_222

    .line 607
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/tools/ant/taskdefs/Copy;->rcs:Ljava/util/Vector;

    const/4 v2, 0x0

    invoke-virtual {v1, v7, v2}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    .line 609
    :cond_222
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/tools/ant/taskdefs/Copy;->fileCopyMap:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->clear()V

    .line 610
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/tools/ant/taskdefs/Copy;->dirCopyMap:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->clear()V

    .line 611
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/tools/ant/taskdefs/Copy;->completeDirMap:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->clear()V

    .line 612
    :goto_237
    return-void

    .line 568
    :catch_238
    move-exception v1

    .line 569
    :try_start_239
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/apache/tools/ant/taskdefs/Copy;->failonerror:Z

    if-nez v2, :cond_291

    .line 570
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/apache/tools/ant/taskdefs/Copy;->quiet:Z

    if-nez v2, :cond_1cc

    .line 571
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Warning: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/taskdefs/Copy;->getMessage(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Lorg/apache/tools/ant/taskdefs/Copy;->log(Ljava/lang/String;I)V

    goto/16 :goto_1cc

    .line 589
    :catch_264
    move-exception v1

    .line 590
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/apache/tools/ant/taskdefs/Copy;->failonerror:Z

    if-nez v2, :cond_290

    .line 591
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/apache/tools/ant/taskdefs/Copy;->quiet:Z

    if-nez v2, :cond_207

    .line 592
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Warning: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/taskdefs/Copy;->getMessage(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Lorg/apache/tools/ant/taskdefs/Copy;->log(Ljava/lang/String;I)V

    goto/16 :goto_207

    .line 595
    :cond_290
    throw v1

    .line 574
    :cond_291
    throw v1

    .line 451
    :catch_292
    move-exception v1

    .line 452
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/apache/tools/ant/taskdefs/Copy;->failonerror:Z

    if-nez v2, :cond_2f6

    .line 453
    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/taskdefs/Copy;->getMessage(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v2

    .line 454
    const-string v3, "Cannot perform operation from directory to file."

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2f6

    .line 457
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Warning: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/taskdefs/Copy;->getMessage(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Lorg/apache/tools/ant/taskdefs/Copy;->log(Ljava/lang/String;I)V
    :try_end_2c4
    .catchall {:try_start_239 .. :try_end_2c4} :catchall_ae

    .line 602
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Lorg/apache/tools/ant/taskdefs/Copy;->singleResource:Lorg/apache/tools/ant/types/Resource;

    .line 603
    move-object/from16 v0, p0

    iput-object v8, v0, Lorg/apache/tools/ant/taskdefs/Copy;->file:Ljava/io/File;

    .line 604
    move-object/from16 v0, p0

    iput-object v9, v0, Lorg/apache/tools/ant/taskdefs/Copy;->destFile:Ljava/io/File;

    .line 605
    move-object/from16 v0, p0

    iput-object v10, v0, Lorg/apache/tools/ant/taskdefs/Copy;->destDir:Ljava/io/File;

    .line 606
    if-eqz v7, :cond_2df

    .line 607
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/tools/ant/taskdefs/Copy;->rcs:Ljava/util/Vector;

    const/4 v2, 0x0

    invoke-virtual {v1, v7, v2}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    .line 609
    :cond_2df
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/tools/ant/taskdefs/Copy;->fileCopyMap:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->clear()V

    .line 610
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/tools/ant/taskdefs/Copy;->dirCopyMap:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->clear()V

    .line 611
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/tools/ant/taskdefs/Copy;->completeDirMap:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->clear()V

    goto/16 :goto_237

    .line 455
    :cond_2f6
    :try_start_2f6
    throw v1
    :try_end_2f7
    .catchall {:try_start_2f6 .. :try_end_2f7} :catchall_ae

    .line 495
    :catch_2f7
    move-exception v1

    goto/16 :goto_e5
.end method

.method public getEncoding()Ljava/lang/String;
    .registers 2

    .line 396
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Copy;->inputEncoding:Ljava/lang/String;

    return-object v0
.end method

.method protected getFileUtils()Lorg/apache/tools/ant/util/FileUtils;
    .registers 2

    .line 126
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Copy;->fileUtils:Lorg/apache/tools/ant/util/FileUtils;

    return-object v0
.end method

.method protected getFilterChains()Ljava/util/Vector;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector",
            "<",
            "Lorg/apache/tools/ant/types/FilterChain;",
            ">;"
        }
    .end annotation

    .line 220
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Copy;->filterChains:Ljava/util/Vector;

    return-object v0
.end method

.method protected getFilterSets()Ljava/util/Vector;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector",
            "<",
            "Lorg/apache/tools/ant/types/FilterSet;",
            ">;"
        }
    .end annotation

    .line 211
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Copy;->filterSets:Ljava/util/Vector;

    return-object v0
.end method

.method public getForce()Z
    .registers 2

    .line 260
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Copy;->force:Z

    return v0
.end method

.method public getOutputEncoding()Ljava/lang/String;
    .registers 2

    .line 416
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Copy;->outputEncoding:Ljava/lang/String;

    return-object v0
.end method

.method public getPreserveLastModified()Z
    .registers 2

    .line 202
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Copy;->preserveLastModified:Z

    return v0
.end method

.method public isEnableMultipleMapping()Z
    .registers 2

    .line 325
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Copy;->enableMultipleMappings:Z

    return v0
.end method

.method protected scan([Lorg/apache/tools/ant/types/Resource;Ljava/io/File;)Ljava/util/Map;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/apache/tools/ant/types/Resource;",
            "Ljava/io/File;",
            ")",
            "Ljava/util/Map",
            "<",
            "Lorg/apache/tools/ant/types/Resource;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 760
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/Copy;->getMapper()Lorg/apache/tools/ant/util/FileNameMapper;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/tools/ant/taskdefs/Copy;->buildMap([Lorg/apache/tools/ant/types/Resource;Ljava/io/File;Lorg/apache/tools/ant/util/FileNameMapper;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method protected scan(Ljava/io/File;Ljava/io/File;[Ljava/lang/String;[Ljava/lang/String;)V
    .registers 11

    .line 739
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/Copy;->getMapper()Lorg/apache/tools/ant/util/FileNameMapper;

    move-result-object v4

    .line 740
    iget-object v5, p0, Lorg/apache/tools/ant/taskdefs/Copy;->fileCopyMap:Ljava/util/Hashtable;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lorg/apache/tools/ant/taskdefs/Copy;->buildMap(Ljava/io/File;Ljava/io/File;[Ljava/lang/String;Lorg/apache/tools/ant/util/FileNameMapper;Ljava/util/Hashtable;)V

    .line 742
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Copy;->includeEmpty:Z

    if-eqz v0, :cond_1a

    .line 743
    iget-object v5, p0, Lorg/apache/tools/ant/taskdefs/Copy;->dirCopyMap:Ljava/util/Hashtable;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p4

    invoke-virtual/range {v0 .. v5}, Lorg/apache/tools/ant/taskdefs/Copy;->buildMap(Ljava/io/File;Ljava/io/File;[Ljava/lang/String;Lorg/apache/tools/ant/util/FileNameMapper;Ljava/util/Hashtable;)V

    .line 745
    :cond_1a
    return-void
.end method

.method public setEnableMultipleMappings(Z)V
    .registers 2

    .line 317
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/Copy;->enableMultipleMappings:Z

    .line 318
    return-void
.end method

.method public setEncoding(Ljava/lang/String;)V
    .registers 3

    .line 383
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Copy;->inputEncoding:Ljava/lang/String;

    .line 384
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Copy;->outputEncoding:Ljava/lang/String;

    if-nez v0, :cond_8

    .line 385
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Copy;->outputEncoding:Ljava/lang/String;

    .line 387
    :cond_8
    return-void
.end method

.method public setFailOnError(Z)V
    .registers 2

    .line 334
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/Copy;->failonerror:Z

    .line 335
    return-void
.end method

.method public setFile(Ljava/io/File;)V
    .registers 2

    .line 134
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Copy;->file:Ljava/io/File;

    .line 135
    return-void
.end method

.method public setFiltering(Z)V
    .registers 2

    .line 228
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/Copy;->filtering:Z

    .line 229
    return-void
.end method

.method public setFlatten(Z)V
    .registers 2

    .line 273
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/Copy;->flatten:Z

    .line 274
    return-void
.end method

.method public setForce(Z)V
    .registers 2

    .line 250
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/Copy;->force:Z

    .line 251
    return-void
.end method

.method public setGranularity(J)V
    .registers 4

    .line 429
    iput-wide p1, p0, Lorg/apache/tools/ant/taskdefs/Copy;->granularity:J

    .line 430
    return-void
.end method

.method public setIncludeEmptyDirs(Z)V
    .registers 2

    .line 290
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/Copy;->includeEmpty:Z

    .line 291
    return-void
.end method

.method public setOutputEncoding(Ljava/lang/String;)V
    .registers 2

    .line 405
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Copy;->outputEncoding:Ljava/lang/String;

    .line 406
    return-void
.end method

.method public setOverwrite(Z)V
    .registers 2

    .line 238
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/Copy;->forceOverwrite:Z

    .line 239
    return-void
.end method

.method public setPreserveLastModified(Ljava/lang/String;)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 183
    invoke-static {p1}, Lorg/apache/tools/ant/Project;->toBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/Copy;->setPreserveLastModified(Z)V

    .line 184
    return-void
.end method

.method public setPreserveLastModified(Z)V
    .registers 2

    .line 191
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/Copy;->preserveLastModified:Z

    .line 192
    return-void
.end method

.method public setQuiet(Z)V
    .registers 2

    .line 302
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/Copy;->quiet:Z

    .line 303
    return-void
.end method

.method public setTodir(Ljava/io/File;)V
    .registers 2

    .line 150
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Copy;->destDir:Ljava/io/File;

    .line 151
    return-void
.end method

.method public setTofile(Ljava/io/File;)V
    .registers 2

    .line 142
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Copy;->destFile:Ljava/io/File;

    .line 143
    return-void
.end method

.method public setVerbose(Z)V
    .registers 3

    .line 282
    if-eqz p1, :cond_6

    const/4 v0, 0x2

    :goto_3
    iput v0, p0, Lorg/apache/tools/ant/taskdefs/Copy;->verbosity:I

    .line 283
    return-void

    .line 282
    :cond_6
    const/4 v0, 0x3

    goto :goto_3
.end method

.method protected supportsNonFileResources()Z
    .registers 3

    .line 1007
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lorg/apache/tools/ant/taskdefs/Copy;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected validateAttributes()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 677
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Copy;->file:Ljava/io/File;

    if-nez v0, :cond_e

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Copy;->rcs:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_88

    .line 681
    :cond_e
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Copy;->destFile:Ljava/io/File;

    if-eqz v0, :cond_16

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Copy;->destDir:Ljava/io/File;

    if-nez v1, :cond_90

    .line 685
    :cond_16
    if-nez v0, :cond_1c

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Copy;->destDir:Ljava/io/File;

    if-eqz v0, :cond_98

    .line 688
    :cond_1c
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Copy;->file:Ljava/io/File;

    if-eqz v0, :cond_26

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_a0

    .line 691
    :cond_26
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Copy;->destFile:Ljava/io/File;

    if-eqz v0, :cond_7d

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Copy;->rcs:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7d

    .line 692
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Copy;->rcs:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-gt v0, v2, :cond_cb

    .line 696
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Copy;->rcs:Ljava/util/Vector;

    invoke-virtual {v0, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/types/ResourceCollection;

    .line 697
    invoke-interface {v0}, Lorg/apache/tools/ant/types/ResourceCollection;->isFilesystemOnly()Z

    move-result v1

    if-nez v1, :cond_4e

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Copy;->supportsNonFileResources()Z

    move-result v1

    if-eqz v1, :cond_a8

    .line 701
    :cond_4e
    invoke-interface {v0}, Lorg/apache/tools/ant/types/ResourceCollection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_c3

    .line 704
    invoke-interface {v0}, Lorg/apache/tools/ant/types/ResourceCollection;->size()I

    move-result v1

    if-ne v1, v2, :cond_bb

    .line 705
    invoke-interface {v0}, Lorg/apache/tools/ant/types/ResourceCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/types/Resource;

    .line 706
    const-class v1, Lorg/apache/tools/ant/types/resources/FileProvider;

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Resource;->as(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/tools/ant/types/resources/FileProvider;

    .line 707
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Copy;->file:Ljava/io/File;

    if-nez v2, :cond_b3

    .line 708
    if-eqz v1, :cond_b0

    .line 709
    invoke-interface {v1}, Lorg/apache/tools/ant/types/resources/FileProvider;->getFile()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Copy;->file:Ljava/io/File;

    .line 713
    :goto_78
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Copy;->rcs:Ljava/util/Vector;

    invoke-virtual {v0, v3}, Ljava/util/Vector;->removeElementAt(I)V

    .line 723
    :cond_7d
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Copy;->destFile:Ljava/io/File;

    if-eqz v0, :cond_87

    .line 724
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Copy;->destDir:Ljava/io/File;

    .line 726
    :cond_87
    return-void

    .line 678
    :cond_88
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Specify at least one source--a file or a resource collection."

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 682
    :cond_90
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Only one of tofile and todir may be set."

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 686
    :cond_98
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "One of tofile or todir must be set."

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 689
    :cond_a0
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Use a resource collection to copy directories."

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 698
    :cond_a8
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Only FileSystem resources are supported."

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 711
    :cond_b0
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Copy;->singleResource:Lorg/apache/tools/ant/types/Resource;

    goto :goto_78

    .line 715
    :cond_b3
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Cannot concatenate multiple files into a single file."

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 719
    :cond_bb
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Cannot concatenate multiple files into a single file."

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 702
    :cond_c3
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Cannot perform operation from directory to file."

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 693
    :cond_cb
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Cannot concatenate multiple files into a single file."

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
