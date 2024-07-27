.class public Lorg/apache/tools/ant/DirectoryScanner;
.super Ljava/lang/Object;
.source "DirectoryScanner.java"

# interfaces
.implements Lorg/apache/tools/ant/FileScanner;
.implements Lorg/apache/tools/ant/types/selectors/SelectorScanner;
.implements Lorg/apache/tools/ant/types/ResourceFactory;


# static fields
.field protected static final DEFAULTEXCLUDES:[Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final DOES_NOT_EXIST_POSTFIX:Ljava/lang/String; = " does not exist."

.field private static final FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

.field public static final MAX_LEVELS_OF_SYMLINKS:I = 0x5

.field private static final ON_VMS:Z

.field private static final defaultExcludes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private areNonPatternSetsReady:Z

.field protected basedir:Ljava/io/File;

.field protected dirsDeselected:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected dirsExcluded:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected dirsIncluded:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected dirsNotIncluded:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected errorOnMissingDir:Z

.field protected everythingIncluded:Z

.field private final excludeNonPatterns:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/apache/tools/ant/types/selectors/TokenizedPath;",
            ">;"
        }
    .end annotation
.end field

.field private excludePatterns:[Lorg/apache/tools/ant/types/selectors/TokenizedPattern;

.field protected excludes:[Ljava/lang/String;

.field protected filesDeselected:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected filesExcluded:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected filesIncluded:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected filesNotIncluded:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private followSymlinks:Z

.field protected haveSlowResults:Z

.field private illegal:Ljava/lang/IllegalStateException;

.field private final includeNonPatterns:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/apache/tools/ant/types/selectors/TokenizedPath;",
            ">;"
        }
    .end annotation
.end field

.field private includePatterns:[Lorg/apache/tools/ant/types/selectors/TokenizedPattern;

.field protected includes:[Ljava/lang/String;

.field protected isCaseSensitive:Z

.field private maxLevelsOfSymlinks:I

.field private final notFollowedSymlinks:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final scanLock:Ljava/lang/Object;

.field private final scannedDirs:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private scanning:Z

.field protected selectors:[Lorg/apache/tools/ant/types/selectors/FileSelector;

.field private final slowScanLock:Ljava/lang/Object;

.field private slowScanning:Z


# direct methods
.method public static synthetic $r8$lambda$uwgy0axyhl5fMFQ1MSgfbkF1pVI(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    invoke-static {p0}, Lorg/apache/tools/ant/DirectoryScanner;->normalizePattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 155
    const-string v0, "openvms"

    invoke-static {v0}, Lorg/apache/tools/ant/taskdefs/condition/Os;->isFamily(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lorg/apache/tools/ant/DirectoryScanner;->ON_VMS:Z

    .line 170
    const/16 v0, 0x1c

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "**/*~"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "**/#*#"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "**/.#*"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "**/%*%"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "**/._*"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "**/CVS"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "**/CVS/**"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "**/.cvsignore"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "**/SCCS"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "**/SCCS/**"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "**/vssver.scc"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "**/.svn"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "**/.svn/**"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "**/.git"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "**/.git/**"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "**/.gitattributes"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "**/.gitignore"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "**/.gitmodules"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "**/.hg"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "**/.hg/**"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "**/.hgignore"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "**/.hgsub"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "**/.hgsubstate"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "**/.hgtags"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "**/.bzr"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "**/.bzr/**"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "**/.bzrignore"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "**/.DS_Store"

    aput-object v2, v0, v1

    sput-object v0, Lorg/apache/tools/ant/DirectoryScanner;->DEFAULTEXCLUDES:[Ljava/lang/String;

    .line 230
    invoke-static {}, Lorg/apache/tools/ant/util/FileUtils;->getFileUtils()Lorg/apache/tools/ant/util/FileUtils;

    move-result-object v0

    sput-object v0, Lorg/apache/tools/ant/DirectoryScanner;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    .line 237
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lorg/apache/tools/ant/DirectoryScanner;->defaultExcludes:Ljava/util/Set;

    .line 239
    invoke-static {}, Lorg/apache/tools/ant/DirectoryScanner;->resetDefaultExcludes()V

    .line 240
    return-void
.end method

.method public constructor <init>()V
    .registers 4

    const/4 v2, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 254
    iput-object v2, p0, Lorg/apache/tools/ant/DirectoryScanner;->selectors:[Lorg/apache/tools/ant/types/selectors/FileSelector;

    .line 299
    iput-boolean v1, p0, Lorg/apache/tools/ant/DirectoryScanner;->haveSlowResults:Z

    .line 305
    iput-boolean v0, p0, Lorg/apache/tools/ant/DirectoryScanner;->isCaseSensitive:Z

    .line 311
    iput-boolean v0, p0, Lorg/apache/tools/ant/DirectoryScanner;->errorOnMissingDir:Z

    .line 318
    iput-boolean v0, p0, Lorg/apache/tools/ant/DirectoryScanner;->followSymlinks:Z

    .line 321
    iput-boolean v0, p0, Lorg/apache/tools/ant/DirectoryScanner;->everythingIncluded:Z

    .line 330
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/DirectoryScanner;->scannedDirs:Ljava/util/Set;

    .line 347
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/DirectoryScanner;->includeNonPatterns:Ljava/util/Map;

    .line 364
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/DirectoryScanner;->excludeNonPatterns:Ljava/util/Map;

    .line 390
    iput-boolean v1, p0, Lorg/apache/tools/ant/DirectoryScanner;->areNonPatternSetsReady:Z

    .line 397
    iput-boolean v1, p0, Lorg/apache/tools/ant/DirectoryScanner;->scanning:Z

    .line 404
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/DirectoryScanner;->scanLock:Ljava/lang/Object;

    .line 411
    iput-boolean v1, p0, Lorg/apache/tools/ant/DirectoryScanner;->slowScanning:Z

    .line 418
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/DirectoryScanner;->slowScanLock:Ljava/lang/Object;

    .line 425
    iput-object v2, p0, Lorg/apache/tools/ant/DirectoryScanner;->illegal:Ljava/lang/IllegalStateException;

    .line 433
    const/4 v0, 0x5

    iput v0, p0, Lorg/apache/tools/ant/DirectoryScanner;->maxLevelsOfSymlinks:I

    .line 443
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/DirectoryScanner;->notFollowedSymlinks:Ljava/util/Set;

    return-void
.end method

.method private accountForIncludedDir(Lorg/apache/tools/ant/types/selectors/TokenizedPath;Ljava/io/File;Z)V
    .registers 10

    .line 1300
    iget-object v3, p0, Lorg/apache/tools/ant/DirectoryScanner;->dirsIncluded:Ljava/util/Vector;

    iget-object v4, p0, Lorg/apache/tools/ant/DirectoryScanner;->dirsExcluded:Ljava/util/Vector;

    iget-object v5, p0, Lorg/apache/tools/ant/DirectoryScanner;->dirsDeselected:Ljava/util/Vector;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lorg/apache/tools/ant/DirectoryScanner;->processIncluded(Lorg/apache/tools/ant/types/selectors/TokenizedPath;Ljava/io/File;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 1301
    if-eqz p3, :cond_0

    invoke-direct {p0, p1}, Lorg/apache/tools/ant/DirectoryScanner;->couldHoldIncluded(Lorg/apache/tools/ant/types/selectors/TokenizedPath;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/DirectoryScanner;->contentsExcluded(Lorg/apache/tools/ant/types/selectors/TokenizedPath;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1302
    invoke-direct {p0, p2, p1, p3}, Lorg/apache/tools/ant/DirectoryScanner;->scandir(Ljava/io/File;Lorg/apache/tools/ant/types/selectors/TokenizedPath;Z)V

    .line 1304
    :cond_0
    return-void
.end method

.method private accountForIncludedDir(Lorg/apache/tools/ant/types/selectors/TokenizedPath;Ljava/io/File;Z[Ljava/lang/String;Ljava/util/Deque;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/tools/ant/types/selectors/TokenizedPath;",
            "Ljava/io/File;",
            "Z[",
            "Ljava/lang/String;",
            "Ljava/util/Deque",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1310
    iget-object v3, p0, Lorg/apache/tools/ant/DirectoryScanner;->dirsIncluded:Ljava/util/Vector;

    iget-object v4, p0, Lorg/apache/tools/ant/DirectoryScanner;->dirsExcluded:Ljava/util/Vector;

    iget-object v5, p0, Lorg/apache/tools/ant/DirectoryScanner;->dirsDeselected:Ljava/util/Vector;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lorg/apache/tools/ant/DirectoryScanner;->processIncluded(Lorg/apache/tools/ant/types/selectors/TokenizedPath;Ljava/io/File;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 1311
    if-eqz p3, :cond_0

    invoke-direct {p0, p1}, Lorg/apache/tools/ant/DirectoryScanner;->couldHoldIncluded(Lorg/apache/tools/ant/types/selectors/TokenizedPath;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/DirectoryScanner;->contentsExcluded(Lorg/apache/tools/ant/types/selectors/TokenizedPath;)Z

    move-result v0

    if-nez v0, :cond_0

    move-object v0, p0

    move-object v1, p2

    move-object v2, p1

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 1312
    invoke-direct/range {v0 .. v5}, Lorg/apache/tools/ant/DirectoryScanner;->scandir(Ljava/io/File;Lorg/apache/tools/ant/types/selectors/TokenizedPath;Z[Ljava/lang/String;Ljava/util/Deque;)V

    .line 1314
    :cond_0
    return-void
.end method

.method private accountForIncludedFile(Lorg/apache/tools/ant/types/selectors/TokenizedPath;Ljava/io/File;)V
    .registers 9

    .line 1287
    iget-object v3, p0, Lorg/apache/tools/ant/DirectoryScanner;->filesIncluded:Ljava/util/Vector;

    iget-object v4, p0, Lorg/apache/tools/ant/DirectoryScanner;->filesExcluded:Ljava/util/Vector;

    iget-object v5, p0, Lorg/apache/tools/ant/DirectoryScanner;->filesDeselected:Ljava/util/Vector;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lorg/apache/tools/ant/DirectoryScanner;->processIncluded(Lorg/apache/tools/ant/types/selectors/TokenizedPath;Ljava/io/File;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 1289
    return-void
.end method

.method private accountForNotFollowedSymlink(Ljava/lang/String;Ljava/io/File;)V
    .registers 4

    .line 1317
    new-instance v0, Lorg/apache/tools/ant/types/selectors/TokenizedPath;

    invoke-direct {v0, p1}, Lorg/apache/tools/ant/types/selectors/TokenizedPath;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, p2}, Lorg/apache/tools/ant/DirectoryScanner;->accountForNotFollowedSymlink(Lorg/apache/tools/ant/types/selectors/TokenizedPath;Ljava/io/File;)V

    .line 1318
    return-void
.end method

.method private accountForNotFollowedSymlink(Lorg/apache/tools/ant/types/selectors/TokenizedPath;Ljava/io/File;)V
    .registers 5

    .line 1321
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/DirectoryScanner;->isExcluded(Lorg/apache/tools/ant/types/selectors/TokenizedPath;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lorg/apache/tools/ant/DirectoryScanner;->isIncluded(Lorg/apache/tools/ant/types/selectors/TokenizedPath;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1322
    invoke-virtual {p2}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lorg/apache/tools/ant/DirectoryScanner;->couldHoldIncluded(Lorg/apache/tools/ant/types/selectors/TokenizedPath;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/DirectoryScanner;->contentsExcluded(Lorg/apache/tools/ant/types/selectors/TokenizedPath;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1323
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/DirectoryScanner;->notFollowedSymlinks:Ljava/util/Set;

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1325
    :cond_1
    return-void
.end method

.method public static addDefaultExclude(Ljava/lang/String;)Z
    .registers 3

    .line 588
    sget-object v1, Lorg/apache/tools/ant/DirectoryScanner;->defaultExcludes:Ljava/util/Set;

    monitor-enter v1

    .line 589
    :try_start_0
    invoke-interface {v1, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 590
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private causesIllegalSymlinkLoop(Ljava/lang/String;Ljava/io/File;Ljava/util/Deque;)Z
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            "Ljava/util/Deque",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1803
    if-nez p2, :cond_1

    .line 1804
    const/4 v0, 0x0

    :try_start_0
    new-array v0, v0, [Ljava/lang/String;

    invoke-static {p1, v0}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    .line 1808
    :goto_0
    invoke-interface {p3}, Ljava/util/Deque;->size()I

    move-result v3

    iget v4, p0, Lorg/apache/tools/ant/DirectoryScanner;->maxLevelsOfSymlinks:I

    if-lt v3, v4, :cond_2

    .line 1809
    invoke-static {p3, p1}, Ljava/util/Collections;->frequency(Ljava/util/Collection;Ljava/lang/Object;)I

    move-result v3

    iget v4, p0, Lorg/apache/tools/ant/DirectoryScanner;->maxLevelsOfSymlinks:I

    if-lt v3, v4, :cond_2

    .line 1810
    invoke-static {v0}, Ljava/nio/file/Files;->isSymbolicLink(Ljava/nio/file/Path;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1812
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1813
    sget-object v0, Lorg/apache/tools/ant/DirectoryScanner;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    invoke-virtual {v0, p2, p1}, Lorg/apache/tools/ant/util/FileUtils;->resolveFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 1814
    invoke-virtual {v0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v4

    .line 1815
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1817
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 1818
    invoke-interface {p3}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1819
    const-string v7, "../"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1820
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1821
    sget-object v7, Lorg/apache/tools/ant/DirectoryScanner;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, p2, v0}, Lorg/apache/tools/ant/util/FileUtils;->resolveFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 1822
    invoke-virtual {v0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1823
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    iget v7, p0, Lorg/apache/tools/ant/DirectoryScanner;->maxLevelsOfSymlinks:I

    if-le v0, v7, :cond_0

    .line 1824
    invoke-static {v3, v4}, Ljava/util/Collections;->frequency(Ljava/util/Collection;Ljava/lang/Object;)I

    move-result v0

    iget v7, p0, Lorg/apache/tools/ant/DirectoryScanner;->maxLevelsOfSymlinks:I

    if-le v0, v7, :cond_0

    move v0, v1

    .line 1830
    :goto_1
    return v0

    .line 1806
    :cond_1
    invoke-virtual {p2}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    invoke-interface {v0}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {v0, v3}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto/16 :goto_0

    :cond_2
    move v0, v2

    .line 1830
    goto :goto_1

    .line 1831
    :catch_0
    move-exception v0

    .line 1832
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    const-string v2, "Caught error while checking for symbolic links"

    invoke-direct {v1, v2, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private checkIncludePatterns()V
    .registers 11

    const/4 v7, 0x0

    const/4 v9, 0x1

    .line 932
    invoke-virtual {p0}, Lorg/apache/tools/ant/DirectoryScanner;->ensureNonPatternSetsReady()V

    .line 933
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 937
    iget-object v1, p0, Lorg/apache/tools/ant/DirectoryScanner;->includePatterns:[Lorg/apache/tools/ant/types/selectors/TokenizedPattern;

    array-length v2, v1

    move v0, v7

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v4, v1, v0

    .line 938
    invoke-virtual {v4}, Lorg/apache/tools/ant/types/selectors/TokenizedPattern;->toString()Ljava/lang/String;

    move-result-object v5

    .line 939
    invoke-direct {p0, v5}, Lorg/apache/tools/ant/DirectoryScanner;->shouldSkipPattern(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 940
    invoke-virtual {v4}, Lorg/apache/tools/ant/types/selectors/TokenizedPattern;->rtrimWildcardTokens()Lorg/apache/tools/ant/types/selectors/TokenizedPath;

    move-result-object v4

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 937
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 943
    :cond_1
    iget-object v0, p0, Lorg/apache/tools/ant/DirectoryScanner;->includeNonPatterns:Ljava/util/Map;

    .line 944
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 943
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/util/Map$Entry;

    .line 945
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 946
    invoke-direct {p0, v0}, Lorg/apache/tools/ant/DirectoryScanner;->shouldSkipPattern(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 947
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/tools/ant/types/selectors/TokenizedPath;

    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 951
    :cond_3
    sget-object v0, Lorg/apache/tools/ant/types/selectors/TokenizedPath;->EMPTY_PATH:Lorg/apache/tools/ant/types/selectors/TokenizedPath;

    invoke-interface {v3, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/apache/tools/ant/DirectoryScanner;->basedir:Ljava/io/File;

    if-eqz v0, :cond_5

    .line 954
    const-string v1, ""

    invoke-virtual {p0, v0, v1, v9}, Lorg/apache/tools/ant/DirectoryScanner;->scandir(Ljava/io/File;Ljava/lang/String;Z)V

    .line 1034
    :cond_4
    return-void

    .line 956
    :cond_5
    const/4 v0, 0x0

    .line 957
    iget-object v1, p0, Lorg/apache/tools/ant/DirectoryScanner;->basedir:Ljava/io/File;

    if-eqz v1, :cond_13

    .line 959
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v2, v0

    .line 966
    :goto_2
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_6
    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 967
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/tools/ant/types/selectors/TokenizedPath;

    .line 968
    invoke-virtual {v1}, Lorg/apache/tools/ant/types/selectors/TokenizedPath;->toString()Ljava/lang/String;

    move-result-object v4

    .line 969
    iget-object v3, p0, Lorg/apache/tools/ant/DirectoryScanner;->basedir:Ljava/io/File;

    if-nez v3, :cond_7

    invoke-static {v4}, Lorg/apache/tools/ant/util/FileUtils;->isAbsolutePath(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 972
    :cond_7
    new-instance v3, Ljava/io/File;

    iget-object v5, p0, Lorg/apache/tools/ant/DirectoryScanner;->basedir:Ljava/io/File;

    invoke-direct {v3, v5, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 974
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_12

    .line 979
    :try_start_1
    iget-object v5, p0, Lorg/apache/tools/ant/DirectoryScanner;->basedir:Ljava/io/File;

    if-nez v5, :cond_b

    .line 980
    invoke-virtual {v3}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v5

    .line 983
    :goto_4
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    sget-boolean v5, Lorg/apache/tools/ant/DirectoryScanner;->ON_VMS:Z

    if-eqz v5, :cond_9

    .line 984
    :cond_8
    iget-object v3, p0, Lorg/apache/tools/ant/DirectoryScanner;->basedir:Ljava/io/File;

    const/4 v5, 0x1

    invoke-virtual {v1, v3, v5}, Lorg/apache/tools/ant/types/selectors/TokenizedPath;->findFile(Ljava/io/File;Z)Ljava/io/File;

    move-result-object v3

    .line 985
    if-eqz v3, :cond_9

    iget-object v5, p0, Lorg/apache/tools/ant/DirectoryScanner;->basedir:Ljava/io/File;

    if-eqz v5, :cond_9

    .line 986
    sget-object v4, Lorg/apache/tools/ant/DirectoryScanner;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    invoke-virtual {v4, v5, v3}, Lorg/apache/tools/ant/util/FileUtils;->removeLeadingPath(Ljava/io/File;Ljava/io/File;)Ljava/lang/String;

    move-result-object v4

    .line 988
    invoke-virtual {v1}, Lorg/apache/tools/ant/types/selectors/TokenizedPath;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9

    .line 989
    new-instance v1, Lorg/apache/tools/ant/types/selectors/TokenizedPath;

    invoke-direct {v1, v4}, Lorg/apache/tools/ant/types/selectors/TokenizedPath;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_9
    move-object v5, v3

    .line 998
    :goto_5
    if-eqz v5, :cond_a

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_11

    :cond_a
    invoke-virtual {p0}, Lorg/apache/tools/ant/DirectoryScanner;->isCaseSensitive()Z

    move-result v3

    if-nez v3, :cond_11

    .line 999
    iget-object v3, p0, Lorg/apache/tools/ant/DirectoryScanner;->basedir:Ljava/io/File;

    invoke-virtual {v1, v3, v7}, Lorg/apache/tools/ant/types/selectors/TokenizedPath;->findFile(Ljava/io/File;Z)Ljava/io/File;

    move-result-object v6

    .line 1000
    if-eqz v6, :cond_11

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_11

    .line 1003
    iget-object v1, p0, Lorg/apache/tools/ant/DirectoryScanner;->basedir:Ljava/io/File;

    if-nez v1, :cond_c

    .line 1004
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 1007
    :goto_6
    new-instance v3, Lorg/apache/tools/ant/types/selectors/TokenizedPath;

    invoke-direct {v3, v1}, Lorg/apache/tools/ant/types/selectors/TokenizedPath;-><init>(Ljava/lang/String;)V

    move-object v4, v1

    move-object v5, v6

    .line 1011
    :goto_7
    if-eqz v5, :cond_6

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1012
    iget-boolean v1, p0, Lorg/apache/tools/ant/DirectoryScanner;->followSymlinks:Z

    if-nez v1, :cond_d

    iget-object v1, p0, Lorg/apache/tools/ant/DirectoryScanner;->basedir:Ljava/io/File;

    invoke-virtual {v3, v1}, Lorg/apache/tools/ant/types/selectors/TokenizedPath;->isSymlink(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 1013
    invoke-direct {p0, v3, v5}, Lorg/apache/tools/ant/DirectoryScanner;->accountForNotFollowedSymlink(Lorg/apache/tools/ant/types/selectors/TokenizedPath;Ljava/io/File;)V

    goto/16 :goto_3

    .line 960
    :catch_0
    move-exception v0

    .line 961
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-direct {v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 981
    :cond_b
    :try_start_2
    sget-object v5, Lorg/apache/tools/ant/DirectoryScanner;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    .line 982
    invoke-virtual {v3}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v6

    .line 981
    invoke-virtual {v5, v2, v6}, Lorg/apache/tools/ant/util/FileUtils;->removeLeadingPath(Ljava/io/File;Ljava/io/File;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v5

    goto/16 :goto_4

    .line 993
    :catch_1
    move-exception v0

    .line 994
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-direct {v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 1005
    :cond_c
    sget-object v3, Lorg/apache/tools/ant/DirectoryScanner;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    invoke-virtual {v3, v1, v6}, Lorg/apache/tools/ant/util/FileUtils;->removeLeadingPath(Ljava/io/File;Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    goto :goto_6

    .line 1016
    :cond_d
    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 1017
    invoke-direct {p0, v3}, Lorg/apache/tools/ant/DirectoryScanner;->isIncluded(Lorg/apache/tools/ant/types/selectors/TokenizedPath;)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e

    .line 1018
    invoke-direct {p0, v3, v5, v9}, Lorg/apache/tools/ant/DirectoryScanner;->accountForIncludedDir(Lorg/apache/tools/ant/types/selectors/TokenizedPath;Ljava/io/File;Z)V

    goto/16 :goto_3

    .line 1020
    :cond_e
    invoke-direct {p0, v5, v3, v9}, Lorg/apache/tools/ant/DirectoryScanner;->scandir(Ljava/io/File;Lorg/apache/tools/ant/types/selectors/TokenizedPath;Z)V

    goto/16 :goto_3

    .line 1022
    :cond_f
    invoke-virtual {v5}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1023
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1024
    invoke-virtual {p0}, Lorg/apache/tools/ant/DirectoryScanner;->isCaseSensitive()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 1025
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1027
    :goto_8
    if-eqz v0, :cond_6

    .line 1028
    invoke-direct {p0, v3, v5}, Lorg/apache/tools/ant/DirectoryScanner;->accountForIncludedFile(Lorg/apache/tools/ant/types/selectors/TokenizedPath;Ljava/io/File;)V

    goto/16 :goto_3

    .line 1026
    :cond_10
    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    goto :goto_8

    :cond_11
    move-object v3, v1

    goto :goto_7

    :cond_12
    move-object v5, v3

    goto/16 :goto_5

    :cond_13
    move-object v2, v0

    goto/16 :goto_2
.end method

.method private clearCaches()V
    .registers 2

    monitor-enter p0

    .line 1745
    :try_start_0
    iget-object v0, p0, Lorg/apache/tools/ant/DirectoryScanner;->includeNonPatterns:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1746
    iget-object v0, p0, Lorg/apache/tools/ant/DirectoryScanner;->excludeNonPatterns:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1747
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/tools/ant/DirectoryScanner;->includePatterns:[Lorg/apache/tools/ant/types/selectors/TokenizedPattern;

    .line 1748
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/tools/ant/DirectoryScanner;->excludePatterns:[Lorg/apache/tools/ant/types/selectors/TokenizedPattern;

    .line 1749
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/tools/ant/DirectoryScanner;->areNonPatternSetsReady:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1750
    monitor-exit p0

    return-void

    .line 1744
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private couldHoldIncluded(Lorg/apache/tools/ant/types/selectors/TokenizedPath;)Z
    .registers 5

    .line 1398
    iget-object v0, p0, Lorg/apache/tools/ant/DirectoryScanner;->includePatterns:[Lorg/apache/tools/ant/types/selectors/TokenizedPattern;

    invoke-static {v0}, Lorg/apache/tools/ant/DirectoryScanner$$ExternalSyntheticStaticInterfaceCall1;->m([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/tools/ant/DirectoryScanner;->includeNonPatterns:Ljava/util/Map;

    .line 1399
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    sget-object v2, Lorg/apache/tools/ant/DirectoryScanner$$ExternalSyntheticLambda4;->INSTANCE:Lorg/apache/tools/ant/DirectoryScanner$$ExternalSyntheticLambda4;

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    .line 1398
    invoke-static {v0, v1}, Lorg/apache/tools/ant/AntClassLoader$$ExternalSyntheticStaticInterfaceCall1;->m(Ljava/util/stream/Stream;Ljava/util/stream/Stream;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/apache/tools/ant/DirectoryScanner$$ExternalSyntheticLambda13;

    invoke-direct {v1, p0, p1}, Lorg/apache/tools/ant/DirectoryScanner$$ExternalSyntheticLambda13;-><init>(Lorg/apache/tools/ant/DirectoryScanner;Lorg/apache/tools/ant/types/selectors/TokenizedPath;)V

    .line 1400
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    .line 1398
    return v0
.end method

.method private couldHoldIncluded(Lorg/apache/tools/ant/types/selectors/TokenizedPath;Lorg/apache/tools/ant/types/selectors/TokenizedPattern;)Z
    .registers 4

    .line 1413
    invoke-virtual {p0}, Lorg/apache/tools/ant/DirectoryScanner;->isCaseSensitive()Z

    move-result v0

    invoke-virtual {p2, p1, v0}, Lorg/apache/tools/ant/types/selectors/TokenizedPattern;->matchStartOf(Lorg/apache/tools/ant/types/selectors/TokenizedPath;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1414
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/selectors/TokenizedPath;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/tools/ant/DirectoryScanner;->isMorePowerfulThanExcludes(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1415
    invoke-direct {p0, p2, p1}, Lorg/apache/tools/ant/DirectoryScanner;->isDeeper(Lorg/apache/tools/ant/types/selectors/TokenizedPattern;Lorg/apache/tools/ant/types/selectors/TokenizedPath;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 1413
    :goto_0
    return v0

    .line 1415
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private fillNonPatternSet(Ljava/util/Map;[Ljava/lang/String;)[Lorg/apache/tools/ant/types/selectors/TokenizedPattern;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/apache/tools/ant/types/selectors/TokenizedPath;",
            ">;[",
            "Ljava/lang/String;",
            ")[",
            "Lorg/apache/tools/ant/types/selectors/TokenizedPattern;"
        }
    .end annotation

    const/4 v2, 0x0

    .line 1776
    new-instance v3, Ljava/util/ArrayList;

    array-length v0, p2

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 1777
    array-length v4, p2

    move v1, v2

    :goto_0
    if-ge v1, v4, :cond_2

    aget-object v0, p2, v1

    .line 1778
    invoke-static {v0}, Lorg/apache/tools/ant/types/selectors/SelectorUtils;->hasWildcards(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1779
    new-instance v5, Lorg/apache/tools/ant/types/selectors/TokenizedPattern;

    invoke-direct {v5, v0}, Lorg/apache/tools/ant/types/selectors/TokenizedPattern;-><init>(Ljava/lang/String;)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1777
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1781
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/DirectoryScanner;->isCaseSensitive()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1782
    :goto_2
    new-instance v5, Lorg/apache/tools/ant/types/selectors/TokenizedPath;

    invoke-direct {v5, v0}, Lorg/apache/tools/ant/types/selectors/TokenizedPath;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1781
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 1785
    :cond_2
    new-array v0, v2, [Lorg/apache/tools/ant/types/selectors/TokenizedPattern;

    invoke-interface {v3, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/tools/ant/types/selectors/TokenizedPattern;

    return-object v0
.end method

.method public static getDefaultExcludes()[Ljava/lang/String;
    .registers 2

    .line 572
    sget-object v1, Lorg/apache/tools/ant/DirectoryScanner;->defaultExcludes:Ljava/util/Set;

    monitor-enter v1

    .line 573
    const/4 v0, 0x0

    :try_start_0
    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    monitor-exit v1

    return-object v0

    .line 574
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private hasBeenScanned(Ljava/lang/String;)Z
    .registers 3

    .line 1727
    iget-object v0, p0, Lorg/apache/tools/ant/DirectoryScanner;->scannedDirs:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private isDeeper(Lorg/apache/tools/ant/types/selectors/TokenizedPattern;Lorg/apache/tools/ant/types/selectors/TokenizedPath;)Z
    .registers 5

    .line 1427
    const-string v0, "**"

    invoke-virtual {p1, v0}, Lorg/apache/tools/ant/types/selectors/TokenizedPattern;->containsPattern(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1428
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/selectors/TokenizedPattern;->depth()I

    move-result v0

    invoke-virtual {p2}, Lorg/apache/tools/ant/types/selectors/TokenizedPath;->depth()I

    move-result v1

    if-le v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 1427
    :goto_0
    return v0

    .line 1428
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isExcluded(Lorg/apache/tools/ant/types/selectors/TokenizedPath;)Z
    .registers 4

    .line 1486
    invoke-virtual {p0}, Lorg/apache/tools/ant/DirectoryScanner;->ensureNonPatternSetsReady()V

    .line 1488
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/selectors/TokenizedPath;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1489
    invoke-virtual {p0}, Lorg/apache/tools/ant/DirectoryScanner;->isCaseSensitive()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1490
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 1492
    :cond_0
    iget-object v1, p0, Lorg/apache/tools/ant/DirectoryScanner;->excludeNonPatterns:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/tools/ant/DirectoryScanner;->excludePatterns:[Lorg/apache/tools/ant/types/selectors/TokenizedPattern;

    .line 1493
    invoke-static {v0}, Lorg/apache/tools/ant/DirectoryScanner$$ExternalSyntheticStaticInterfaceCall1;->m([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/apache/tools/ant/DirectoryScanner$$ExternalSyntheticLambda14;

    invoke-direct {v1, p0, p1}, Lorg/apache/tools/ant/DirectoryScanner$$ExternalSyntheticLambda14;-><init>(Lorg/apache/tools/ant/DirectoryScanner;Lorg/apache/tools/ant/types/selectors/TokenizedPath;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    .line 1492
    :goto_0
    return v0

    .line 1493
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isIncluded(Lorg/apache/tools/ant/types/selectors/TokenizedPath;)Z
    .registers 4

    .line 1367
    invoke-virtual {p0}, Lorg/apache/tools/ant/DirectoryScanner;->ensureNonPatternSetsReady()V

    .line 1369
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/selectors/TokenizedPath;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1370
    invoke-virtual {p0}, Lorg/apache/tools/ant/DirectoryScanner;->isCaseSensitive()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1371
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 1373
    :cond_0
    iget-object v1, p0, Lorg/apache/tools/ant/DirectoryScanner;->includeNonPatterns:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/tools/ant/DirectoryScanner;->includePatterns:[Lorg/apache/tools/ant/types/selectors/TokenizedPattern;

    .line 1374
    invoke-static {v0}, Lorg/apache/tools/ant/DirectoryScanner$$ExternalSyntheticStaticInterfaceCall1;->m([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/apache/tools/ant/DirectoryScanner$$ExternalSyntheticLambda15;

    invoke-direct {v1, p0, p1}, Lorg/apache/tools/ant/DirectoryScanner$$ExternalSyntheticLambda15;-><init>(Lorg/apache/tools/ant/DirectoryScanner;Lorg/apache/tools/ant/types/selectors/TokenizedPath;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    .line 1373
    :goto_0
    return v0

    .line 1374
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isMorePowerfulThanExcludes(Ljava/lang/String;)Z
    .registers 5

    .line 1448
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-char v1, Ljava/io/File;->separatorChar:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "**"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1449
    iget-object v1, p0, Lorg/apache/tools/ant/DirectoryScanner;->excludePatterns:[Lorg/apache/tools/ant/types/selectors/TokenizedPattern;

    invoke-static {v1}, Lorg/apache/tools/ant/DirectoryScanner$$ExternalSyntheticStaticInterfaceCall1;->m([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v1

    sget-object v2, Lorg/apache/tools/ant/DirectoryScanner$$ExternalSyntheticLambda5;->INSTANCE:Lorg/apache/tools/ant/DirectoryScanner$$ExternalSyntheticLambda5;

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    .line 1450
    invoke-static {v0}, Lorg/apache/tools/ant/DirectoryScanner$$ExternalSyntheticStaticInterfaceCall0;->m(Ljava/lang/Object;)Ljava/util/function/Predicate;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/stream/Stream;->noneMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    .line 1449
    return v0
.end method

.method static synthetic lambda$addDefaultExcludes$10(I)[Ljava/lang/String;
    .registers 2

    .line 1703
    new-array v0, p0, [Ljava/lang/String;

    return-object v0
.end method

.method static synthetic lambda$addDefaultExcludes$9(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 1698
    const/16 v0, 0x2f

    sget-char v1, Ljava/io/File;->separatorChar:C

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    sget-char v1, Ljava/io/File;->separatorChar:C

    .line 1699
    const/16 v2, 0x5c

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 1698
    return-object v0
.end method

.method static synthetic lambda$addExcludes$2(I)[Ljava/lang/String;
    .registers 2

    .line 788
    new-array v0, p0, [Ljava/lang/String;

    return-object v0
.end method

.method static synthetic lambda$contentsExcluded$5(Lorg/apache/tools/ant/types/selectors/TokenizedPattern;)Z
    .registers 2

    .line 1460
    const-string v0, "**"

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/selectors/TokenizedPattern;->endsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$setExcludes$1(I)[Ljava/lang/String;
    .registers 2

    .line 764
    new-array v0, p0, [Ljava/lang/String;

    return-object v0
.end method

.method static synthetic lambda$setIncludes$0(I)[Ljava/lang/String;
    .registers 2

    .line 742
    new-array v0, p0, [Ljava/lang/String;

    return-object v0
.end method

.method public static match(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3

    .line 536
    invoke-static {p0, p1}, Lorg/apache/tools/ant/types/selectors/SelectorUtils;->match(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected static match(Ljava/lang/String;Ljava/lang/String;Z)Z
    .registers 4

    .line 558
    invoke-static {p0, p1, p2}, Lorg/apache/tools/ant/types/selectors/SelectorUtils;->match(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method protected static matchPath(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3

    .line 500
    invoke-static {p0, p1}, Lorg/apache/tools/ant/types/selectors/SelectorUtils;->matchPath(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected static matchPath(Ljava/lang/String;Ljava/lang/String;Z)Z
    .registers 4

    .line 518
    invoke-static {p0, p1, p2}, Lorg/apache/tools/ant/types/selectors/SelectorUtils;->matchPath(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method protected static matchPatternStart(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3

    .line 462
    invoke-static {p0, p1}, Lorg/apache/tools/ant/types/selectors/SelectorUtils;->matchPatternStart(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected static matchPatternStart(Ljava/lang/String;Ljava/lang/String;Z)Z
    .registers 4

    .line 485
    invoke-static {p0, p1, p2}, Lorg/apache/tools/ant/types/selectors/SelectorUtils;->matchPatternStart(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private static normalizePattern(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 803
    const/16 v0, 0x2f

    sget-char v1, Ljava/io/File;->separatorChar:C

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    sget-char v1, Ljava/io/File;->separatorChar:C

    .line 804
    const/16 v2, 0x5c

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 805
    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 806
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "**"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 808
    :cond_0
    return-object v0
.end method

.method private processIncluded(Lorg/apache/tools/ant/types/selectors/TokenizedPath;Ljava/io/File;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/tools/ant/types/selectors/TokenizedPath;",
            "Ljava/io/File;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1330
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/selectors/TokenizedPath;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1331
    invoke-interface {p3, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p4, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p5, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1344
    :cond_0
    :goto_0
    return-void

    .line 1334
    :cond_1
    const/4 v0, 0x0

    .line 1335
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/DirectoryScanner;->isExcluded(Lorg/apache/tools/ant/types/selectors/TokenizedPath;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1336
    invoke-interface {p4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1343
    :goto_1
    iget-boolean v1, p0, Lorg/apache/tools/ant/DirectoryScanner;->everythingIncluded:Z

    and-int/2addr v0, v1

    iput-boolean v0, p0, Lorg/apache/tools/ant/DirectoryScanner;->everythingIncluded:Z

    goto :goto_0

    .line 1337
    :cond_2
    invoke-virtual {p0, v1, p2}, Lorg/apache/tools/ant/DirectoryScanner;->isSelected(Ljava/lang/String;Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1338
    const/4 v0, 0x1

    .line 1339
    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1341
    :cond_3
    invoke-interface {p5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private processSlowScan([Ljava/lang/String;)V
    .registers 9

    const/4 v1, 0x0

    .line 1127
    array-length v2, p1

    move v0, v1

    :goto_0
    if-ge v0, v2, :cond_2

    aget-object v3, p1, v0

    .line 1128
    new-instance v4, Lorg/apache/tools/ant/types/selectors/TokenizedPath;

    invoke-direct {v4, v3}, Lorg/apache/tools/ant/types/selectors/TokenizedPath;-><init>(Ljava/lang/String;)V

    .line 1129
    invoke-direct {p0, v4}, Lorg/apache/tools/ant/DirectoryScanner;->couldHoldIncluded(Lorg/apache/tools/ant/types/selectors/TokenizedPath;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p0, v4}, Lorg/apache/tools/ant/DirectoryScanner;->contentsExcluded(Lorg/apache/tools/ant/types/selectors/TokenizedPath;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1130
    :cond_0
    new-instance v5, Ljava/io/File;

    iget-object v6, p0, Lorg/apache/tools/ant/DirectoryScanner;->basedir:Ljava/io/File;

    invoke-direct {v5, v6, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {p0, v5, v4, v1}, Lorg/apache/tools/ant/DirectoryScanner;->scandir(Ljava/io/File;Lorg/apache/tools/ant/types/selectors/TokenizedPath;Z)V

    .line 1127
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1133
    :cond_2
    return-void
.end method

.method public static removeDefaultExclude(Ljava/lang/String;)Z
    .registers 3

    .line 605
    sget-object v1, Lorg/apache/tools/ant/DirectoryScanner;->defaultExcludes:Ljava/util/Set;

    monitor-enter v1

    .line 606
    :try_start_0
    invoke-interface {v1, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 607
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static resetDefaultExcludes()V
    .registers 2

    .line 616
    sget-object v1, Lorg/apache/tools/ant/DirectoryScanner;->defaultExcludes:Ljava/util/Set;

    monitor-enter v1

    .line 617
    :try_start_0
    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 618
    sget-object v0, Lorg/apache/tools/ant/DirectoryScanner;->DEFAULTEXCLUDES:[Ljava/lang/String;

    invoke-static {v1, v0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 619
    monitor-exit v1

    .line 620
    return-void

    .line 619
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private scandir(Ljava/io/File;Lorg/apache/tools/ant/types/selectors/TokenizedPath;Z)V
    .registers 10

    const/4 v2, 0x1

    const/4 v5, 0x0

    .line 1180
    if-eqz p1, :cond_3

    .line 1183
    invoke-virtual {p1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v4

    .line 1184
    if-nez v4, :cond_2

    .line 1185
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1187
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1188
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "%s is not a directory."

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v5

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 1190
    :cond_0
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "IO error scanning directory \'%s\'"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 1186
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " does not exist."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1194
    :cond_2
    new-instance v5, Ljava/util/LinkedList;

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lorg/apache/tools/ant/DirectoryScanner;->scandir(Ljava/io/File;Lorg/apache/tools/ant/types/selectors/TokenizedPath;Z[Ljava/lang/String;Ljava/util/Deque;)V

    .line 1195
    return-void

    .line 1181
    :cond_3
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "dir must not be null."

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private scandir(Ljava/io/File;Lorg/apache/tools/ant/types/selectors/TokenizedPath;Z[Ljava/lang/String;Ljava/util/Deque;)V
    .registers 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Lorg/apache/tools/ant/types/selectors/TokenizedPath;",
            "Z[",
            "Ljava/lang/String;",
            "Ljava/util/Deque",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1199
    invoke-virtual/range {p2 .. p2}, Lorg/apache/tools/ant/types/selectors/TokenizedPath;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1200
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_10

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_10

    .line 1201
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v15, v3

    .line 1205
    :goto_0
    if-eqz p3, :cond_1

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lorg/apache/tools/ant/DirectoryScanner;->hasBeenScanned(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1279
    :cond_0
    :goto_1
    return-void

    .line 1208
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lorg/apache/tools/ant/DirectoryScanner;->followSymlinks:Z

    if-nez v3, :cond_9

    .line 1209
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1210
    move-object/from16 v0, p4

    array-length v6, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_2
    if-ge v4, v6, :cond_6

    aget-object v7, p4, v4

    .line 1212
    if-nez p1, :cond_3

    .line 1213
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-static {v7, v3}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v3

    .line 1217
    :goto_3
    invoke-static {v3}, Ljava/nio/file/Files;->isSymbolicLink(Ljava/nio/file/Path;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1218
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1219
    new-instance v8, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v8, v0, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1220
    invoke-virtual {v8}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1221
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/apache/tools/ant/DirectoryScanner;->dirsExcluded:Ljava/util/Vector;

    invoke-virtual {v7, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1225
    :cond_2
    :goto_4
    move-object/from16 v0, p0

    invoke-direct {v0, v3, v8}, Lorg/apache/tools/ant/DirectoryScanner;->accountForNotFollowedSymlink(Ljava/lang/String;Ljava/io/File;)V

    .line 1210
    :goto_5
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto :goto_2

    .line 1215
    :cond_3
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v3

    invoke-interface {v3}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v7, v8, v9

    invoke-static {v3, v8}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v3

    goto :goto_3

    .line 1222
    :cond_4
    invoke-virtual {v8}, Ljava/io/File;->isFile()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1223
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/apache/tools/ant/DirectoryScanner;->filesExcluded:Ljava/util/Vector;

    invoke-virtual {v7, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_4

    .line 1227
    :cond_5
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 1230
    :cond_6
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    move-object/from16 p4, v3

    .line 1235
    :goto_6
    move-object/from16 v0, p4

    array-length v0, v0

    move/from16 v16, v0

    const/4 v3, 0x0

    move v14, v3

    :goto_7
    move/from16 v0, v16

    if-ge v14, v0, :cond_f

    aget-object v3, p4, v14

    .line 1236
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1237
    new-instance v4, Lorg/apache/tools/ant/types/selectors/TokenizedPath;

    move-object/from16 v0, p2

    invoke-direct {v4, v0, v3}, Lorg/apache/tools/ant/types/selectors/TokenizedPath;-><init>(Lorg/apache/tools/ant/types/selectors/TokenizedPath;Ljava/lang/String;)V

    .line 1238
    new-instance v5, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v5, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1239
    invoke-virtual {v5}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v7

    .line 1240
    if-eqz v7, :cond_7

    array-length v8, v7

    if-nez v8, :cond_a

    invoke-virtual {v5}, Ljava/io/File;->isFile()Z

    move-result v8

    if-eqz v8, :cond_a

    :cond_7
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lorg/apache/tools/ant/DirectoryScanner;->isIncluded(Lorg/apache/tools/ant/types/selectors/TokenizedPath;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 1242
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lorg/apache/tools/ant/DirectoryScanner;->accountForIncludedFile(Lorg/apache/tools/ant/types/selectors/TokenizedPath;Ljava/io/File;)V

    .line 1235
    :cond_8
    :goto_8
    add-int/lit8 v3, v14, 0x1

    move v14, v3

    goto :goto_7

    .line 1232
    :cond_9
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p5

    invoke-interface {v0, v3}, Ljava/util/Deque;->addFirst(Ljava/lang/Object;)V

    goto :goto_6

    .line 1247
    :cond_a
    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v8

    if-eqz v8, :cond_8

    .line 1249
    move-object/from16 v0, p0

    iget-boolean v8, v0, Lorg/apache/tools/ant/DirectoryScanner;->followSymlinks:Z

    if-eqz v8, :cond_b

    .line 1250
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p5

    invoke-direct {v0, v3, v1, v2}, Lorg/apache/tools/ant/DirectoryScanner;->causesIllegalSymlinkLoop(Ljava/lang/String;Ljava/io/File;Ljava/util/Deque;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 1252
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "skipping symbolic link "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1253
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " -- too many levels of symbolic links."

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1252
    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1256
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/tools/ant/DirectoryScanner;->notFollowedSymlinks:Ljava/util/Set;

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 1260
    :cond_b
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lorg/apache/tools/ant/DirectoryScanner;->isIncluded(Lorg/apache/tools/ant/types/selectors/TokenizedPath;)Z

    move-result v3

    if-eqz v3, :cond_d

    move-object/from16 v3, p0

    move/from16 v6, p3

    move-object/from16 v8, p5

    .line 1261
    invoke-direct/range {v3 .. v8}, Lorg/apache/tools/ant/DirectoryScanner;->accountForIncludedDir(Lorg/apache/tools/ant/types/selectors/TokenizedPath;Ljava/io/File;Z[Ljava/lang/String;Ljava/util/Deque;)V

    .line 1270
    :cond_c
    :goto_9
    if-nez p3, :cond_8

    move-object/from16 v8, p0

    move-object v9, v5

    move-object v10, v4

    move/from16 v11, p3

    move-object v12, v7

    move-object/from16 v13, p5

    .line 1271
    invoke-direct/range {v8 .. v13}, Lorg/apache/tools/ant/DirectoryScanner;->scandir(Ljava/io/File;Lorg/apache/tools/ant/types/selectors/TokenizedPath;Z[Ljava/lang/String;Ljava/util/Deque;)V

    goto :goto_8

    .line 1264
    :cond_d
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lorg/apache/tools/ant/DirectoryScanner;->everythingIncluded:Z

    .line 1265
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/tools/ant/DirectoryScanner;->dirsNotIncluded:Ljava/util/Vector;

    invoke-virtual {v3, v6}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1266
    if-eqz p3, :cond_c

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lorg/apache/tools/ant/DirectoryScanner;->couldHoldIncluded(Lorg/apache/tools/ant/types/selectors/TokenizedPath;)Z

    move-result v3

    if-eqz v3, :cond_c

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/apache/tools/ant/DirectoryScanner;->contentsExcluded(Lorg/apache/tools/ant/types/selectors/TokenizedPath;)Z

    move-result v3

    if-nez v3, :cond_c

    move-object/from16 v8, p0

    move-object v9, v5

    move-object v10, v4

    move/from16 v11, p3

    move-object v12, v7

    move-object/from16 v13, p5

    .line 1267
    invoke-direct/range {v8 .. v13}, Lorg/apache/tools/ant/DirectoryScanner;->scandir(Ljava/io/File;Lorg/apache/tools/ant/types/selectors/TokenizedPath;Z[Ljava/lang/String;Ljava/util/Deque;)V

    goto :goto_9

    .line 1244
    :cond_e
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lorg/apache/tools/ant/DirectoryScanner;->everythingIncluded:Z

    .line 1245
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/tools/ant/DirectoryScanner;->filesNotIncluded:Ljava/util/Vector;

    invoke-virtual {v3, v6}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto/16 :goto_8

    .line 1276
    :cond_f
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lorg/apache/tools/ant/DirectoryScanner;->followSymlinks:Z

    if-eqz v3, :cond_0

    .line 1277
    invoke-interface/range {p5 .. p5}, Ljava/util/Deque;->removeFirst()Ljava/lang/Object;

    goto/16 :goto_1

    :cond_10
    move-object v15, v3

    goto/16 :goto_0
.end method

.method private shouldSkipPattern(Ljava/lang/String;)Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1043
    invoke-static {p1}, Lorg/apache/tools/ant/util/FileUtils;->isAbsolutePath(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1045
    iget-object v2, p0, Lorg/apache/tools/ant/DirectoryScanner;->basedir:Ljava/io/File;

    if-eqz v2, :cond_1

    .line 1046
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lorg/apache/tools/ant/DirectoryScanner;->isCaseSensitive()Z

    move-result v3

    .line 1045
    invoke-static {p1, v2, v3}, Lorg/apache/tools/ant/types/selectors/SelectorUtils;->matchPatternStart(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1049
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 1045
    goto :goto_0

    .line 1049
    :cond_2
    iget-object v2, p0, Lorg/apache/tools/ant/DirectoryScanner;->basedir:Ljava/io/File;

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public addDefaultExcludes()V
    .registers 3

    monitor-enter p0

    .line 1698
    :try_start_0
    invoke-static {}, Lorg/apache/tools/ant/DirectoryScanner;->getDefaultExcludes()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/tools/ant/DirectoryScanner$$ExternalSyntheticStaticInterfaceCall1;->m([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lorg/apache/tools/ant/DirectoryScanner$$ExternalSyntheticLambda3;->INSTANCE:Lorg/apache/tools/ant/DirectoryScanner$$ExternalSyntheticLambda3;

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 1700
    iget-object v1, p0, Lorg/apache/tools/ant/DirectoryScanner;->excludes:[Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1701
    invoke-static {v1}, Lorg/apache/tools/ant/DirectoryScanner$$ExternalSyntheticStaticInterfaceCall1;->m([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/apache/tools/ant/AntClassLoader$$ExternalSyntheticStaticInterfaceCall1;->m(Ljava/util/stream/Stream;Ljava/util/stream/Stream;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 1703
    :cond_0
    sget-object v1, Lorg/apache/tools/ant/DirectoryScanner$$ExternalSyntheticLambda7;->INSTANCE:Lorg/apache/tools/ant/DirectoryScanner$$ExternalSyntheticLambda7;

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/tools/ant/DirectoryScanner;->excludes:[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1704
    monitor-exit p0

    return-void

    .line 1697
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public addExcludes([Ljava/lang/String;)V
    .registers 5

    monitor-enter p0

    .line 782
    if-eqz p1, :cond_1

    :try_start_0
    array-length v0, p1

    if-lez v0, :cond_1

    .line 783
    iget-object v0, p0, Lorg/apache/tools/ant/DirectoryScanner;->excludes:[Ljava/lang/String;

    if-eqz v0, :cond_0

    array-length v1, v0

    if-nez v1, :cond_2

    .line 784
    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/DirectoryScanner;->setExcludes([Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 791
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 786
    :cond_2
    :try_start_1
    invoke-static {v0}, Lorg/apache/tools/ant/DirectoryScanner$$ExternalSyntheticStaticInterfaceCall1;->m([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 787
    invoke-static {p1}, Lorg/apache/tools/ant/DirectoryScanner$$ExternalSyntheticStaticInterfaceCall1;->m([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v1

    sget-object v2, Lorg/apache/tools/ant/DirectoryScanner$$ExternalSyntheticLambda2;->INSTANCE:Lorg/apache/tools/ant/DirectoryScanner$$ExternalSyntheticLambda2;

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    .line 786
    invoke-static {v0, v1}, Lorg/apache/tools/ant/AntClassLoader$$ExternalSyntheticStaticInterfaceCall1;->m(Ljava/util/stream/Stream;Ljava/util/stream/Stream;)Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lorg/apache/tools/ant/DirectoryScanner$$ExternalSyntheticLambda8;->INSTANCE:Lorg/apache/tools/ant/DirectoryScanner$$ExternalSyntheticLambda8;

    .line 788
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/tools/ant/DirectoryScanner;->excludes:[Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 781
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected clearResults()V
    .registers 2

    monitor-enter p0

    .line 1056
    :try_start_0
    new-instance v0, Lorg/apache/tools/ant/util/VectorSet;

    invoke-direct {v0}, Lorg/apache/tools/ant/util/VectorSet;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/DirectoryScanner;->filesIncluded:Ljava/util/Vector;

    .line 1057
    new-instance v0, Lorg/apache/tools/ant/util/VectorSet;

    invoke-direct {v0}, Lorg/apache/tools/ant/util/VectorSet;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/DirectoryScanner;->filesNotIncluded:Ljava/util/Vector;

    .line 1058
    new-instance v0, Lorg/apache/tools/ant/util/VectorSet;

    invoke-direct {v0}, Lorg/apache/tools/ant/util/VectorSet;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/DirectoryScanner;->filesExcluded:Ljava/util/Vector;

    .line 1059
    new-instance v0, Lorg/apache/tools/ant/util/VectorSet;

    invoke-direct {v0}, Lorg/apache/tools/ant/util/VectorSet;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/DirectoryScanner;->filesDeselected:Ljava/util/Vector;

    .line 1060
    new-instance v0, Lorg/apache/tools/ant/util/VectorSet;

    invoke-direct {v0}, Lorg/apache/tools/ant/util/VectorSet;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/DirectoryScanner;->dirsIncluded:Ljava/util/Vector;

    .line 1061
    new-instance v0, Lorg/apache/tools/ant/util/VectorSet;

    invoke-direct {v0}, Lorg/apache/tools/ant/util/VectorSet;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/DirectoryScanner;->dirsNotIncluded:Ljava/util/Vector;

    .line 1062
    new-instance v0, Lorg/apache/tools/ant/util/VectorSet;

    invoke-direct {v0}, Lorg/apache/tools/ant/util/VectorSet;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/DirectoryScanner;->dirsExcluded:Ljava/util/Vector;

    .line 1063
    new-instance v0, Lorg/apache/tools/ant/util/VectorSet;

    invoke-direct {v0}, Lorg/apache/tools/ant/util/VectorSet;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/DirectoryScanner;->dirsDeselected:Ljava/util/Vector;

    .line 1064
    iget-object v0, p0, Lorg/apache/tools/ant/DirectoryScanner;->basedir:Ljava/io/File;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lorg/apache/tools/ant/DirectoryScanner;->everythingIncluded:Z

    .line 1065
    iget-object v0, p0, Lorg/apache/tools/ant/DirectoryScanner;->scannedDirs:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 1066
    iget-object v0, p0, Lorg/apache/tools/ant/DirectoryScanner;->notFollowedSymlinks:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1067
    monitor-exit p0

    return-void

    .line 1064
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1055
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method contentsExcluded(Lorg/apache/tools/ant/types/selectors/TokenizedPath;)Z
    .registers 4

    .line 1459
    iget-object v0, p0, Lorg/apache/tools/ant/DirectoryScanner;->excludePatterns:[Lorg/apache/tools/ant/types/selectors/TokenizedPattern;

    invoke-static {v0}, Lorg/apache/tools/ant/DirectoryScanner$$ExternalSyntheticStaticInterfaceCall1;->m([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lorg/apache/tools/ant/DirectoryScanner$$ExternalSyntheticLambda16;->INSTANCE:Lorg/apache/tools/ant/DirectoryScanner$$ExternalSyntheticLambda16;

    .line 1460
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lorg/apache/tools/ant/DirectoryScanner$$ExternalSyntheticLambda6;->INSTANCE:Lorg/apache/tools/ant/DirectoryScanner$$ExternalSyntheticLambda6;

    .line 1461
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/apache/tools/ant/DirectoryScanner$$ExternalSyntheticLambda12;

    invoke-direct {v1, p0, p1}, Lorg/apache/tools/ant/DirectoryScanner$$ExternalSyntheticLambda12;-><init>(Lorg/apache/tools/ant/DirectoryScanner;Lorg/apache/tools/ant/types/selectors/TokenizedPath;)V

    .line 1462
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    .line 1459
    return v0
.end method

.method protected couldHoldIncluded(Ljava/lang/String;)Z
    .registers 3

    .line 1386
    new-instance v0, Lorg/apache/tools/ant/types/selectors/TokenizedPath;

    invoke-direct {v0, p1}, Lorg/apache/tools/ant/types/selectors/TokenizedPath;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lorg/apache/tools/ant/DirectoryScanner;->couldHoldIncluded(Lorg/apache/tools/ant/types/selectors/TokenizedPath;)Z

    move-result v0

    return v0
.end method

.method ensureNonPatternSetsReady()V
    .registers 3

    monitor-enter p0

    .line 1759
    :try_start_0
    iget-boolean v0, p0, Lorg/apache/tools/ant/DirectoryScanner;->areNonPatternSetsReady:Z

    if-nez v0, :cond_0

    .line 1760
    iget-object v0, p0, Lorg/apache/tools/ant/DirectoryScanner;->includeNonPatterns:Ljava/util/Map;

    iget-object v1, p0, Lorg/apache/tools/ant/DirectoryScanner;->includes:[Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lorg/apache/tools/ant/DirectoryScanner;->fillNonPatternSet(Ljava/util/Map;[Ljava/lang/String;)[Lorg/apache/tools/ant/types/selectors/TokenizedPattern;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/DirectoryScanner;->includePatterns:[Lorg/apache/tools/ant/types/selectors/TokenizedPattern;

    .line 1761
    iget-object v0, p0, Lorg/apache/tools/ant/DirectoryScanner;->excludeNonPatterns:Ljava/util/Map;

    iget-object v1, p0, Lorg/apache/tools/ant/DirectoryScanner;->excludes:[Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lorg/apache/tools/ant/DirectoryScanner;->fillNonPatternSet(Ljava/util/Map;[Ljava/lang/String;)[Lorg/apache/tools/ant/types/selectors/TokenizedPattern;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/DirectoryScanner;->excludePatterns:[Lorg/apache/tools/ant/types/selectors/TokenizedPattern;

    .line 1762
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/tools/ant/DirectoryScanner;->areNonPatternSetsReady:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1764
    :cond_0
    monitor-exit p0

    return-void

    .line 1758
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getBasedir()Ljava/io/File;
    .registers 2

    monitor-enter p0

    .line 656
    :try_start_0
    iget-object v0, p0, Lorg/apache/tools/ant/DirectoryScanner;->basedir:Ljava/io/File;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getDeselectedDirectories()[Ljava/lang/String;
    .registers 3

    monitor-enter p0

    .line 1671
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/DirectoryScanner;->slowScan()V

    .line 1672
    iget-object v0, p0, Lorg/apache/tools/ant/DirectoryScanner;->dirsDeselected:Ljava/util/Vector;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 1670
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getDeselectedFiles()[Ljava/lang/String;
    .registers 3

    monitor-enter p0

    .line 1588
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/DirectoryScanner;->slowScan()V

    .line 1589
    iget-object v0, p0, Lorg/apache/tools/ant/DirectoryScanner;->filesDeselected:Ljava/util/Vector;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 1587
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getExcludedDirectories()[Ljava/lang/String;
    .registers 3

    monitor-enter p0

    .line 1654
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/DirectoryScanner;->slowScan()V

    .line 1655
    iget-object v0, p0, Lorg/apache/tools/ant/DirectoryScanner;->dirsExcluded:Ljava/util/Vector;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 1653
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getExcludedFiles()[Ljava/lang/String;
    .registers 3

    monitor-enter p0

    .line 1571
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/DirectoryScanner;->slowScan()V

    .line 1572
    iget-object v0, p0, Lorg/apache/tools/ant/DirectoryScanner;->filesExcluded:Ljava/util/Vector;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 1570
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getIncludedDirectories()[Ljava/lang/String;
    .registers 3

    .line 1603
    monitor-enter p0

    .line 1604
    :try_start_0
    iget-object v0, p0, Lorg/apache/tools/ant/DirectoryScanner;->dirsIncluded:Ljava/util/Vector;

    if-eqz v0, :cond_0

    .line 1607
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 1608
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1609
    invoke-static {v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 1610
    return-object v0

    .line 1605
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must call scan() first"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1608
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getIncludedDirsCount()I
    .registers 3

    monitor-enter p0

    .line 1619
    :try_start_0
    iget-object v0, p0, Lorg/apache/tools/ant/DirectoryScanner;->dirsIncluded:Ljava/util/Vector;

    if-eqz v0, :cond_0

    .line 1622
    invoke-virtual {v0}, Ljava/util/Vector;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    .line 1620
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must call scan() first"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1618
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getIncludedFiles()[Ljava/lang/String;
    .registers 3

    .line 1520
    monitor-enter p0

    .line 1521
    :try_start_0
    iget-object v0, p0, Lorg/apache/tools/ant/DirectoryScanner;->filesIncluded:Ljava/util/Vector;

    if-eqz v0, :cond_0

    .line 1524
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 1525
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1526
    invoke-static {v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 1527
    return-object v0

    .line 1522
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must call scan() first"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1525
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getIncludedFilesCount()I
    .registers 3

    monitor-enter p0

    .line 1536
    :try_start_0
    iget-object v0, p0, Lorg/apache/tools/ant/DirectoryScanner;->filesIncluded:Ljava/util/Vector;

    if-eqz v0, :cond_0

    .line 1539
    invoke-virtual {v0}, Ljava/util/Vector;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    .line 1537
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must call scan() first"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1535
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getNotFollowedSymlinks()[Ljava/lang/String;
    .registers 3

    monitor-enter p0

    .line 1686
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1687
    :try_start_1
    iget-object v0, p0, Lorg/apache/tools/ant/DirectoryScanner;->notFollowedSymlinks:Ljava/util/Set;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 1688
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1689
    :try_start_2
    invoke-static {v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1690
    monitor-exit p0

    return-object v0

    .line 1688
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1685
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getNotIncludedDirectories()[Ljava/lang/String;
    .registers 3

    monitor-enter p0

    .line 1637
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/DirectoryScanner;->slowScan()V

    .line 1638
    iget-object v0, p0, Lorg/apache/tools/ant/DirectoryScanner;->dirsNotIncluded:Ljava/util/Vector;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 1636
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getNotIncludedFiles()[Ljava/lang/String;
    .registers 3

    monitor-enter p0

    .line 1554
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/DirectoryScanner;->slowScan()V

    .line 1555
    iget-object v0, p0, Lorg/apache/tools/ant/DirectoryScanner;->filesNotIncluded:Ljava/util/Vector;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 1553
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getResource(Ljava/lang/String;)Lorg/apache/tools/ant/types/Resource;
    .registers 4

    monitor-enter p0

    .line 1715
    :try_start_0
    new-instance v0, Lorg/apache/tools/ant/types/resources/FileResource;

    iget-object v1, p0, Lorg/apache/tools/ant/DirectoryScanner;->basedir:Ljava/io/File;

    invoke-direct {v0, v1, p1}, Lorg/apache/tools/ant/types/resources/FileResource;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method getScannedDirs()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1736
    iget-object v0, p0, Lorg/apache/tools/ant/DirectoryScanner;->scannedDirs:Ljava/util/Set;

    return-object v0
.end method

.method public isCaseSensitive()Z
    .registers 2

    monitor-enter p0

    .line 666
    :try_start_0
    iget-boolean v0, p0, Lorg/apache/tools/ant/DirectoryScanner;->isCaseSensitive:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isEverythingIncluded()Z
    .registers 2

    monitor-enter p0

    .line 829
    :try_start_0
    iget-boolean v0, p0, Lorg/apache/tools/ant/DirectoryScanner;->everythingIncluded:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected isExcluded(Ljava/lang/String;)Z
    .registers 3

    .line 1474
    new-instance v0, Lorg/apache/tools/ant/types/selectors/TokenizedPath;

    invoke-direct {v0, p1}, Lorg/apache/tools/ant/types/selectors/TokenizedPath;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lorg/apache/tools/ant/DirectoryScanner;->isExcluded(Lorg/apache/tools/ant/types/selectors/TokenizedPath;)Z

    move-result v0

    return v0
.end method

.method public isFollowSymlinks()Z
    .registers 2

    monitor-enter p0

    .line 700
    :try_start_0
    iget-boolean v0, p0, Lorg/apache/tools/ant/DirectoryScanner;->followSymlinks:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected isIncluded(Ljava/lang/String;)Z
    .registers 3

    .line 1355
    new-instance v0, Lorg/apache/tools/ant/types/selectors/TokenizedPath;

    invoke-direct {v0, p1}, Lorg/apache/tools/ant/types/selectors/TokenizedPath;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lorg/apache/tools/ant/DirectoryScanner;->isIncluded(Lorg/apache/tools/ant/types/selectors/TokenizedPath;)Z

    move-result v0

    return v0
.end method

.method protected isSelected(Ljava/lang/String;Ljava/io/File;)Z
    .registers 5

    .line 1505
    iget-object v0, p0, Lorg/apache/tools/ant/DirectoryScanner;->selectors:[Lorg/apache/tools/ant/types/selectors/FileSelector;

    if-eqz v0, :cond_0

    .line 1506
    invoke-static {v0}, Lorg/apache/tools/ant/DirectoryScanner$$ExternalSyntheticStaticInterfaceCall1;->m([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/apache/tools/ant/DirectoryScanner$$ExternalSyntheticLambda11;

    invoke-direct {v1, p0, p1, p2}, Lorg/apache/tools/ant/DirectoryScanner$$ExternalSyntheticLambda11;-><init>(Lorg/apache/tools/ant/DirectoryScanner;Ljava/lang/String;Ljava/io/File;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->allMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 1505
    :goto_0
    return v0

    .line 1506
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public synthetic lambda$contentsExcluded$6$DirectoryScanner(Lorg/apache/tools/ant/types/selectors/TokenizedPath;Lorg/apache/tools/ant/types/selectors/TokenizedPattern;)Z
    .registers 4

    .line 1462
    invoke-virtual {p0}, Lorg/apache/tools/ant/DirectoryScanner;->isCaseSensitive()Z

    move-result v0

    invoke-virtual {p2, p1, v0}, Lorg/apache/tools/ant/types/selectors/TokenizedPattern;->matchPath(Lorg/apache/tools/ant/types/selectors/TokenizedPath;Z)Z

    move-result v0

    return v0
.end method

.method public synthetic lambda$couldHoldIncluded$4$DirectoryScanner(Lorg/apache/tools/ant/types/selectors/TokenizedPath;Lorg/apache/tools/ant/types/selectors/TokenizedPattern;)Z
    .registers 4

    .line 1400
    invoke-direct {p0, p1, p2}, Lorg/apache/tools/ant/DirectoryScanner;->couldHoldIncluded(Lorg/apache/tools/ant/types/selectors/TokenizedPath;Lorg/apache/tools/ant/types/selectors/TokenizedPattern;)Z

    move-result v0

    return v0
.end method

.method public synthetic lambda$isExcluded$7$DirectoryScanner(Lorg/apache/tools/ant/types/selectors/TokenizedPath;Lorg/apache/tools/ant/types/selectors/TokenizedPattern;)Z
    .registers 4

    .line 1493
    invoke-virtual {p0}, Lorg/apache/tools/ant/DirectoryScanner;->isCaseSensitive()Z

    move-result v0

    invoke-virtual {p2, p1, v0}, Lorg/apache/tools/ant/types/selectors/TokenizedPattern;->matchPath(Lorg/apache/tools/ant/types/selectors/TokenizedPath;Z)Z

    move-result v0

    return v0
.end method

.method public synthetic lambda$isIncluded$3$DirectoryScanner(Lorg/apache/tools/ant/types/selectors/TokenizedPath;Lorg/apache/tools/ant/types/selectors/TokenizedPattern;)Z
    .registers 4

    .line 1374
    invoke-virtual {p0}, Lorg/apache/tools/ant/DirectoryScanner;->isCaseSensitive()Z

    move-result v0

    invoke-virtual {p2, p1, v0}, Lorg/apache/tools/ant/types/selectors/TokenizedPattern;->matchPath(Lorg/apache/tools/ant/types/selectors/TokenizedPath;Z)Z

    move-result v0

    return v0
.end method

.method public synthetic lambda$isSelected$8$DirectoryScanner(Ljava/lang/String;Ljava/io/File;Lorg/apache/tools/ant/types/selectors/FileSelector;)Z
    .registers 5

    .line 1506
    iget-object v0, p0, Lorg/apache/tools/ant/DirectoryScanner;->basedir:Ljava/io/File;

    invoke-interface {p3, v0, p1, p2}, Lorg/apache/tools/ant/types/selectors/FileSelector;->isSelected(Ljava/io/File;Ljava/lang/String;Ljava/io/File;)Z

    move-result v0

    return v0
.end method

.method public scan()V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 844
    iget-object v1, p0, Lorg/apache/tools/ant/DirectoryScanner;->scanLock:Ljava/lang/Object;

    monitor-enter v1

    .line 845
    :try_start_0
    iget-boolean v4, p0, Lorg/apache/tools/ant/DirectoryScanner;->scanning:Z

    if-eqz v4, :cond_2

    .line 846
    :goto_0
    iget-boolean v0, p0, Lorg/apache/tools/ant/DirectoryScanner;->scanning:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 848
    :try_start_1
    iget-object v0, p0, Lorg/apache/tools/ant/DirectoryScanner;->scanLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 849
    :catch_0
    move-exception v0

    goto :goto_0

    .line 852
    :cond_0
    :try_start_2
    iget-object v0, p0, Lorg/apache/tools/ant/DirectoryScanner;->illegal:Ljava/lang/IllegalStateException;

    if-nez v0, :cond_1

    .line 855
    monitor-exit v1

    .line 923
    :goto_1
    return-void

    .line 853
    :cond_1
    throw v0

    .line 858
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 857
    :cond_2
    const/4 v4, 0x1

    :try_start_3
    iput-boolean v4, p0, Lorg/apache/tools/ant/DirectoryScanner;->scanning:Z

    .line 858
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 859
    iget-object v5, p0, Lorg/apache/tools/ant/DirectoryScanner;->basedir:Ljava/io/File;

    .line 861
    :try_start_4
    monitor-enter p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    .line 862
    const/4 v1, 0x0

    :try_start_5
    iput-object v1, p0, Lorg/apache/tools/ant/DirectoryScanner;->illegal:Ljava/lang/IllegalStateException;

    .line 863
    invoke-virtual {p0}, Lorg/apache/tools/ant/DirectoryScanner;->clearResults()V

    .line 866
    iget-object v1, p0, Lorg/apache/tools/ant/DirectoryScanner;->includes:[Ljava/lang/String;

    if-nez v1, :cond_6

    move v4, v2

    .line 867
    :goto_2
    if-eqz v4, :cond_3

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    const-string v6, "**"

    aput-object v6, v1, v3

    :cond_3
    :try_start_6
    iput-object v1, p0, Lorg/apache/tools/ant/DirectoryScanner;->includes:[Ljava/lang/String;

    .line 868
    iget-object v1, p0, Lorg/apache/tools/ant/DirectoryScanner;->excludes:[Ljava/lang/String;

    if-nez v1, :cond_7

    .line 869
    :goto_3
    if-eqz v2, :cond_4

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    :cond_4
    iput-object v1, p0, Lorg/apache/tools/ant/DirectoryScanner;->excludes:[Ljava/lang/String;

    .line 871
    iget-object v1, p0, Lorg/apache/tools/ant/DirectoryScanner;->basedir:Ljava/io/File;

    if-eqz v1, :cond_5

    iget-boolean v3, p0, Lorg/apache/tools/ant/DirectoryScanner;->followSymlinks:Z

    if-nez v3, :cond_5

    .line 872
    invoke-virtual {v1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v1

    invoke-static {v1}, Ljava/nio/file/Files;->isSymbolicLink(Ljava/nio/file/Path;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 873
    iget-object v1, p0, Lorg/apache/tools/ant/DirectoryScanner;->notFollowedSymlinks:Ljava/util/Set;

    iget-object v3, p0, Lorg/apache/tools/ant/DirectoryScanner;->basedir:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 874
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/tools/ant/DirectoryScanner;->basedir:Ljava/io/File;

    .line 877
    :cond_5
    iget-object v1, p0, Lorg/apache/tools/ant/DirectoryScanner;->basedir:Ljava/io/File;

    if-nez v1, :cond_8

    .line 879
    if-eqz v4, :cond_a

    .line 880
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 918
    iput-object v5, p0, Lorg/apache/tools/ant/DirectoryScanner;->basedir:Ljava/io/File;

    .line 919
    iget-object v1, p0, Lorg/apache/tools/ant/DirectoryScanner;->scanLock:Ljava/lang/Object;

    monitor-enter v1

    .line 920
    const/4 v0, 0x0

    :try_start_7
    iput-boolean v0, p0, Lorg/apache/tools/ant/DirectoryScanner;->scanning:Z

    .line 921
    iget-object v0, p0, Lorg/apache/tools/ant/DirectoryScanner;->scanLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 922
    monitor-exit v1

    goto :goto_1

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw v0

    :cond_6
    move v4, v3

    .line 866
    goto :goto_2

    :cond_7
    move v2, v3

    .line 868
    goto :goto_3

    .line 883
    :cond_8
    :try_start_8
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_c

    .line 884
    iget-boolean v1, p0, Lorg/apache/tools/ant/DirectoryScanner;->errorOnMissingDir:Z

    if-eqz v1, :cond_b

    .line 885
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "basedir "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lorg/apache/tools/ant/DirectoryScanner;->basedir:Ljava/io/File;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " does not exist."

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lorg/apache/tools/ant/DirectoryScanner;->illegal:Ljava/lang/IllegalStateException;

    .line 897
    :cond_9
    :goto_4
    iget-object v1, p0, Lorg/apache/tools/ant/DirectoryScanner;->illegal:Ljava/lang/IllegalStateException;

    if-nez v1, :cond_12

    .line 901
    :cond_a
    sget-object v1, Lorg/apache/tools/ant/types/selectors/TokenizedPath;->EMPTY_PATH:Lorg/apache/tools/ant/types/selectors/TokenizedPath;

    invoke-direct {p0, v1}, Lorg/apache/tools/ant/DirectoryScanner;->isIncluded(Lorg/apache/tools/ant/types/selectors/TokenizedPath;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 902
    sget-object v1, Lorg/apache/tools/ant/types/selectors/TokenizedPath;->EMPTY_PATH:Lorg/apache/tools/ant/types/selectors/TokenizedPath;

    invoke-direct {p0, v1}, Lorg/apache/tools/ant/DirectoryScanner;->isExcluded(Lorg/apache/tools/ant/types/selectors/TokenizedPath;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 903
    iget-object v1, p0, Lorg/apache/tools/ant/DirectoryScanner;->dirsExcluded:Ljava/util/Vector;

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 912
    :goto_5
    invoke-direct {p0}, Lorg/apache/tools/ant/DirectoryScanner;->checkIncludePatterns()V

    .line 913
    invoke-direct {p0}, Lorg/apache/tools/ant/DirectoryScanner;->clearCaches()V

    .line 914
    if-eqz v4, :cond_10

    move-object v1, v0

    :goto_6
    iput-object v1, p0, Lorg/apache/tools/ant/DirectoryScanner;->includes:[Ljava/lang/String;

    .line 915
    if-eqz v2, :cond_11

    :goto_7
    iput-object v0, p0, Lorg/apache/tools/ant/DirectoryScanner;->excludes:[Ljava/lang/String;

    .line 916
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 918
    iput-object v5, p0, Lorg/apache/tools/ant/DirectoryScanner;->basedir:Ljava/io/File;

    .line 919
    iget-object v1, p0, Lorg/apache/tools/ant/DirectoryScanner;->scanLock:Ljava/lang/Object;

    monitor-enter v1

    .line 920
    const/4 v0, 0x0

    :try_start_9
    iput-boolean v0, p0, Lorg/apache/tools/ant/DirectoryScanner;->scanning:Z

    .line 921
    iget-object v0, p0, Lorg/apache/tools/ant/DirectoryScanner;->scanLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 922
    monitor-exit v1

    goto/16 :goto_1

    :catchall_2
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    throw v0

    .line 890
    :cond_b
    :try_start_a
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 918
    iput-object v5, p0, Lorg/apache/tools/ant/DirectoryScanner;->basedir:Ljava/io/File;

    .line 919
    iget-object v1, p0, Lorg/apache/tools/ant/DirectoryScanner;->scanLock:Ljava/lang/Object;

    monitor-enter v1

    .line 920
    const/4 v0, 0x0

    :try_start_b
    iput-boolean v0, p0, Lorg/apache/tools/ant/DirectoryScanner;->scanning:Z

    .line 921
    iget-object v0, p0, Lorg/apache/tools/ant/DirectoryScanner;->scanLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 922
    monitor-exit v1

    goto/16 :goto_1

    :catchall_3
    move-exception v0

    monitor-exit v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    throw v0

    .line 892
    :cond_c
    :try_start_c
    iget-object v1, p0, Lorg/apache/tools/ant/DirectoryScanner;->basedir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_9

    .line 893
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "basedir "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lorg/apache/tools/ant/DirectoryScanner;->basedir:Ljava/io/File;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " is not a directory."

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lorg/apache/tools/ant/DirectoryScanner;->illegal:Ljava/lang/IllegalStateException;

    goto :goto_4

    .line 916
    :catchall_4
    move-exception v0

    monitor-exit p0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    :try_start_d
    throw v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    .line 918
    :catchall_5
    move-exception v0

    iput-object v5, p0, Lorg/apache/tools/ant/DirectoryScanner;->basedir:Ljava/io/File;

    .line 919
    iget-object v1, p0, Lorg/apache/tools/ant/DirectoryScanner;->scanLock:Ljava/lang/Object;

    monitor-enter v1

    .line 920
    const/4 v2, 0x0

    :try_start_e
    iput-boolean v2, p0, Lorg/apache/tools/ant/DirectoryScanner;->scanning:Z

    .line 921
    iget-object v2, p0, Lorg/apache/tools/ant/DirectoryScanner;->scanLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 922
    monitor-exit v1
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_6

    .line 923
    throw v0

    .line 904
    :cond_d
    :try_start_f
    const-string v1, ""

    iget-object v3, p0, Lorg/apache/tools/ant/DirectoryScanner;->basedir:Ljava/io/File;

    invoke-virtual {p0, v1, v3}, Lorg/apache/tools/ant/DirectoryScanner;->isSelected(Ljava/lang/String;Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 905
    iget-object v1, p0, Lorg/apache/tools/ant/DirectoryScanner;->dirsIncluded:Ljava/util/Vector;

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto/16 :goto_5

    .line 907
    :cond_e
    iget-object v1, p0, Lorg/apache/tools/ant/DirectoryScanner;->dirsDeselected:Ljava/util/Vector;

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto/16 :goto_5

    .line 910
    :cond_f
    iget-object v1, p0, Lorg/apache/tools/ant/DirectoryScanner;->dirsNotIncluded:Ljava/util/Vector;

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto/16 :goto_5

    .line 914
    :cond_10
    iget-object v1, p0, Lorg/apache/tools/ant/DirectoryScanner;->includes:[Ljava/lang/String;

    goto/16 :goto_6

    .line 915
    :cond_11
    iget-object v0, p0, Lorg/apache/tools/ant/DirectoryScanner;->excludes:[Ljava/lang/String;

    goto/16 :goto_7

    .line 898
    :cond_12
    throw v1
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    .line 922
    :catchall_6
    move-exception v0

    :try_start_10
    monitor-exit v1
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_6

    throw v0
.end method

.method protected scandir(Ljava/io/File;Ljava/lang/String;Z)V
    .registers 5

    .line 1156
    new-instance v0, Lorg/apache/tools/ant/types/selectors/TokenizedPath;

    invoke-direct {v0, p2}, Lorg/apache/tools/ant/types/selectors/TokenizedPath;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1, v0, p3}, Lorg/apache/tools/ant/DirectoryScanner;->scandir(Ljava/io/File;Lorg/apache/tools/ant/types/selectors/TokenizedPath;Z)V

    .line 1157
    return-void
.end method

.method public setBasedir(Ljava/io/File;)V
    .registers 3

    monitor-enter p0

    .line 645
    :try_start_0
    iput-object p1, p0, Lorg/apache/tools/ant/DirectoryScanner;->basedir:Ljava/io/File;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 646
    monitor-exit p0

    return-void

    .line 644
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setBasedir(Ljava/lang/String;)V
    .registers 6

    .line 632
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/DirectoryScanner;->setBasedir(Ljava/io/File;)V

    .line 635
    return-void

    .line 633
    :cond_0
    new-instance v0, Ljava/io/File;

    const/16 v1, 0x2f

    sget-char v2, Ljava/io/File;->separatorChar:C

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x5c

    sget-char v3, Ljava/io/File;->separatorChar:C

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setCaseSensitive(Z)V
    .registers 3

    monitor-enter p0

    .line 678
    :try_start_0
    iput-boolean p1, p0, Lorg/apache/tools/ant/DirectoryScanner;->isCaseSensitive:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 679
    monitor-exit p0

    return-void

    .line 677
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setErrorOnMissingDir(Z)V
    .registers 2

    .line 689
    iput-boolean p1, p0, Lorg/apache/tools/ant/DirectoryScanner;->errorOnMissingDir:Z

    .line 690
    return-void
.end method

.method public setExcludes([Ljava/lang/String;)V
    .registers 4

    monitor-enter p0

    .line 760
    if-nez p1, :cond_0

    .line 761
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lorg/apache/tools/ant/DirectoryScanner;->excludes:[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 766
    :goto_0
    monitor-exit p0

    return-void

    .line 763
    :cond_0
    :try_start_1
    invoke-static {p1}, Lorg/apache/tools/ant/DirectoryScanner$$ExternalSyntheticStaticInterfaceCall1;->m([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lorg/apache/tools/ant/DirectoryScanner$$ExternalSyntheticLambda2;->INSTANCE:Lorg/apache/tools/ant/DirectoryScanner$$ExternalSyntheticLambda2;

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lorg/apache/tools/ant/DirectoryScanner$$ExternalSyntheticLambda9;->INSTANCE:Lorg/apache/tools/ant/DirectoryScanner$$ExternalSyntheticLambda9;

    .line 764
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/tools/ant/DirectoryScanner;->excludes:[Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 759
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setFollowSymlinks(Z)V
    .registers 3

    monitor-enter p0

    .line 709
    :try_start_0
    iput-boolean p1, p0, Lorg/apache/tools/ant/DirectoryScanner;->followSymlinks:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 710
    monitor-exit p0

    return-void

    .line 708
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setIncludes([Ljava/lang/String;)V
    .registers 4

    monitor-enter p0

    .line 738
    if-nez p1, :cond_0

    .line 739
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lorg/apache/tools/ant/DirectoryScanner;->includes:[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 744
    :goto_0
    monitor-exit p0

    return-void

    .line 741
    :cond_0
    :try_start_1
    invoke-static {p1}, Lorg/apache/tools/ant/DirectoryScanner$$ExternalSyntheticStaticInterfaceCall1;->m([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lorg/apache/tools/ant/DirectoryScanner$$ExternalSyntheticLambda2;->INSTANCE:Lorg/apache/tools/ant/DirectoryScanner$$ExternalSyntheticLambda2;

    .line 742
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lorg/apache/tools/ant/DirectoryScanner$$ExternalSyntheticLambda10;->INSTANCE:Lorg/apache/tools/ant/DirectoryScanner$$ExternalSyntheticLambda10;

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/tools/ant/DirectoryScanner;->includes:[Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 737
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setMaxLevelsOfSymlinks(I)V
    .registers 2

    .line 720
    iput p1, p0, Lorg/apache/tools/ant/DirectoryScanner;->maxLevelsOfSymlinks:I

    .line 721
    return-void
.end method

.method public setSelectors([Lorg/apache/tools/ant/types/selectors/FileSelector;)V
    .registers 3

    monitor-enter p0

    .line 818
    :try_start_0
    iput-object p1, p0, Lorg/apache/tools/ant/DirectoryScanner;->selectors:[Lorg/apache/tools/ant/types/selectors/FileSelector;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 819
    monitor-exit p0

    return-void

    .line 817
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected slowScan()V
    .registers 7

    const/4 v0, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1078
    iget-object v1, p0, Lorg/apache/tools/ant/DirectoryScanner;->slowScanLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1079
    :try_start_0
    iget-boolean v4, p0, Lorg/apache/tools/ant/DirectoryScanner;->haveSlowResults:Z

    if-eqz v4, :cond_0

    .line 1080
    monitor-exit v1

    .line 1123
    :goto_0
    return-void

    .line 1082
    :cond_0
    iget-boolean v4, p0, Lorg/apache/tools/ant/DirectoryScanner;->slowScanning:Z

    if-eqz v4, :cond_2

    .line 1083
    :goto_1
    iget-boolean v0, p0, Lorg/apache/tools/ant/DirectoryScanner;->slowScanning:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 1085
    :try_start_1
    iget-object v0, p0, Lorg/apache/tools/ant/DirectoryScanner;->slowScanLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1086
    :catch_0
    move-exception v0

    goto :goto_1

    .line 1090
    :cond_1
    :try_start_2
    monitor-exit v1

    goto :goto_0

    .line 1093
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 1092
    :cond_2
    const/4 v4, 0x1

    :try_start_3
    iput-boolean v4, p0, Lorg/apache/tools/ant/DirectoryScanner;->slowScanning:Z

    .line 1093
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1095
    :try_start_4
    monitor-enter p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 1098
    :try_start_5
    iget-object v1, p0, Lorg/apache/tools/ant/DirectoryScanner;->includes:[Ljava/lang/String;

    if-nez v1, :cond_5

    move v4, v2

    .line 1099
    :goto_2
    if-eqz v4, :cond_3

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    const-string v5, "**"

    aput-object v5, v1, v3

    :cond_3
    :try_start_6
    iput-object v1, p0, Lorg/apache/tools/ant/DirectoryScanner;->includes:[Ljava/lang/String;

    .line 1100
    iget-object v1, p0, Lorg/apache/tools/ant/DirectoryScanner;->excludes:[Ljava/lang/String;

    if-nez v1, :cond_6

    .line 1101
    :goto_3
    if-eqz v2, :cond_4

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    :cond_4
    iput-object v1, p0, Lorg/apache/tools/ant/DirectoryScanner;->excludes:[Ljava/lang/String;

    .line 1103
    iget-object v1, p0, Lorg/apache/tools/ant/DirectoryScanner;->dirsExcluded:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    .line 1104
    iget-object v3, p0, Lorg/apache/tools/ant/DirectoryScanner;->dirsExcluded:Ljava/util/Vector;

    invoke-virtual {v3, v1}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    .line 1106
    iget-object v3, p0, Lorg/apache/tools/ant/DirectoryScanner;->dirsNotIncluded:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    .line 1107
    iget-object v5, p0, Lorg/apache/tools/ant/DirectoryScanner;->dirsNotIncluded:Ljava/util/Vector;

    invoke-virtual {v5, v3}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    .line 1109
    invoke-virtual {p0}, Lorg/apache/tools/ant/DirectoryScanner;->ensureNonPatternSetsReady()V

    .line 1111
    invoke-direct {p0, v1}, Lorg/apache/tools/ant/DirectoryScanner;->processSlowScan([Ljava/lang/String;)V

    .line 1112
    invoke-direct {p0, v3}, Lorg/apache/tools/ant/DirectoryScanner;->processSlowScan([Ljava/lang/String;)V

    .line 1113
    invoke-direct {p0}, Lorg/apache/tools/ant/DirectoryScanner;->clearCaches()V

    .line 1114
    if-eqz v4, :cond_7

    move-object v1, v0

    :goto_4
    iput-object v1, p0, Lorg/apache/tools/ant/DirectoryScanner;->includes:[Ljava/lang/String;

    .line 1115
    if-eqz v2, :cond_8

    :goto_5
    iput-object v0, p0, Lorg/apache/tools/ant/DirectoryScanner;->excludes:[Ljava/lang/String;

    .line 1116
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 1118
    iget-object v1, p0, Lorg/apache/tools/ant/DirectoryScanner;->slowScanLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1119
    const/4 v0, 0x1

    :try_start_7
    iput-boolean v0, p0, Lorg/apache/tools/ant/DirectoryScanner;->haveSlowResults:Z

    .line 1120
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/tools/ant/DirectoryScanner;->slowScanning:Z

    .line 1121
    iget-object v0, p0, Lorg/apache/tools/ant/DirectoryScanner;->slowScanLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1122
    monitor-exit v1

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw v0

    :cond_5
    move v4, v3

    .line 1098
    goto :goto_2

    :cond_6
    move v2, v3

    .line 1100
    goto :goto_3

    .line 1114
    :cond_7
    :try_start_8
    iget-object v1, p0, Lorg/apache/tools/ant/DirectoryScanner;->includes:[Ljava/lang/String;

    goto :goto_4

    .line 1115
    :cond_8
    iget-object v0, p0, Lorg/apache/tools/ant/DirectoryScanner;->excludes:[Ljava/lang/String;

    goto :goto_5

    .line 1116
    :catchall_2
    move-exception v0

    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :try_start_9
    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 1118
    :catchall_3
    move-exception v0

    iget-object v1, p0, Lorg/apache/tools/ant/DirectoryScanner;->slowScanLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1119
    const/4 v2, 0x1

    :try_start_a
    iput-boolean v2, p0, Lorg/apache/tools/ant/DirectoryScanner;->haveSlowResults:Z

    .line 1120
    const/4 v2, 0x0

    iput-boolean v2, p0, Lorg/apache/tools/ant/DirectoryScanner;->slowScanning:Z

    .line 1121
    iget-object v2, p0, Lorg/apache/tools/ant/DirectoryScanner;->slowScanLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 1122
    monitor-exit v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 1123
    throw v0

    .line 1122
    :catchall_4
    move-exception v0

    :try_start_b
    monitor-exit v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    throw v0
.end method
