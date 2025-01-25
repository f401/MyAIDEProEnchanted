.class public abstract Lorg/apache/tools/ant/types/ArchiveScanner;
.super Lorg/apache/tools/ant/DirectoryScanner;
.source "ArchiveScanner.java"


# instance fields
.field private dirEntries:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/apache/tools/ant/types/Resource;",
            ">;"
        }
    .end annotation
.end field

.field private encoding:Ljava/lang/String;

.field private errorOnMissingArchive:Z

.field private fileEntries:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/apache/tools/ant/types/Resource;",
            ">;"
        }
    .end annotation
.end field

.field private lastScannedResource:Lorg/apache/tools/ant/types/Resource;

.field private matchDirEntries:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/apache/tools/ant/types/Resource;",
            ">;"
        }
    .end annotation
.end field

.field private matchFileEntries:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/apache/tools/ant/types/Resource;",
            ">;"
        }
    .end annotation
.end field

.field private src:Lorg/apache/tools/ant/types/Resource;

.field protected srcFile:Ljava/io/File;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 41
    invoke-direct {p0}, Lorg/apache/tools/ant/DirectoryScanner;-><init>()V

    .line 64
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/types/ArchiveScanner;->fileEntries:Ljava/util/Map;

    .line 69
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/types/ArchiveScanner;->dirEntries:Ljava/util/Map;

    .line 74
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/types/ArchiveScanner;->matchFileEntries:Ljava/util/Map;

    .line 79
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/types/ArchiveScanner;->matchDirEntries:Ljava/util/Map;

    .line 91
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/tools/ant/types/ArchiveScanner;->errorOnMissingArchive:Z

    return-void
.end method

.method private scanme()V
    .registers 9

    .line 327
    iget-object v0, p0, Lorg/apache/tools/ant/types/ArchiveScanner;->src:Lorg/apache/tools/ant/types/Resource;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Resource;->isExists()Z

    move-result v0

    if-nez v0, :cond_d

    iget-boolean v0, p0, Lorg/apache/tools/ant/types/ArchiveScanner;->errorOnMissingArchive:Z

    if-nez v0, :cond_d

    .line 353
    :cond_c
    :goto_c
    return-void

    .line 332
    :cond_d
    iget-object v0, p0, Lorg/apache/tools/ant/types/ArchiveScanner;->src:Lorg/apache/tools/ant/types/Resource;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Resource;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/tools/ant/types/ArchiveScanner;->src:Lorg/apache/tools/ant/types/Resource;

    .line 333
    invoke-virtual {v1}, Lorg/apache/tools/ant/types/Resource;->isExists()Z

    move-result v1

    iget-object v2, p0, Lorg/apache/tools/ant/types/ArchiveScanner;->src:Lorg/apache/tools/ant/types/Resource;

    .line 334
    new-instance v7, Lorg/apache/tools/ant/types/Resource;

    invoke-virtual {v2}, Lorg/apache/tools/ant/types/Resource;->getLastModified()J

    move-result-wide v2

    invoke-direct {v7, v0, v1, v2, v3}, Lorg/apache/tools/ant/types/Resource;-><init>(Ljava/lang/String;ZJ)V

    .line 336
    iget-object v0, p0, Lorg/apache/tools/ant/types/ArchiveScanner;->lastScannedResource:Lorg/apache/tools/ant/types/Resource;

    if-eqz v0, :cond_44

    .line 337
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Resource;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7}, Lorg/apache/tools/ant/types/Resource;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_44

    iget-object v0, p0, Lorg/apache/tools/ant/types/ArchiveScanner;->lastScannedResource:Lorg/apache/tools/ant/types/Resource;

    .line 338
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Resource;->getLastModified()J

    move-result-wide v0

    .line 339
    invoke-virtual {v7}, Lorg/apache/tools/ant/types/Resource;->getLastModified()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_c

    .line 342
    :cond_44
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/ArchiveScanner;->init()V

    .line 344
    iget-object v0, p0, Lorg/apache/tools/ant/types/ArchiveScanner;->fileEntries:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 345
    iget-object v0, p0, Lorg/apache/tools/ant/types/ArchiveScanner;->dirEntries:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 346
    iget-object v0, p0, Lorg/apache/tools/ant/types/ArchiveScanner;->matchFileEntries:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 347
    iget-object v0, p0, Lorg/apache/tools/ant/types/ArchiveScanner;->matchDirEntries:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 348
    iget-object v1, p0, Lorg/apache/tools/ant/types/ArchiveScanner;->src:Lorg/apache/tools/ant/types/Resource;

    iget-object v2, p0, Lorg/apache/tools/ant/types/ArchiveScanner;->encoding:Ljava/lang/String;

    iget-object v3, p0, Lorg/apache/tools/ant/types/ArchiveScanner;->fileEntries:Ljava/util/Map;

    iget-object v4, p0, Lorg/apache/tools/ant/types/ArchiveScanner;->matchFileEntries:Ljava/util/Map;

    iget-object v5, p0, Lorg/apache/tools/ant/types/ArchiveScanner;->dirEntries:Ljava/util/Map;

    iget-object v6, p0, Lorg/apache/tools/ant/types/ArchiveScanner;->matchDirEntries:Ljava/util/Map;

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lorg/apache/tools/ant/types/ArchiveScanner;->fillMapsFromArchive(Lorg/apache/tools/ant/types/Resource;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V

    .line 352
    iput-object v7, p0, Lorg/apache/tools/ant/types/ArchiveScanner;->lastScannedResource:Lorg/apache/tools/ant/types/Resource;

    goto :goto_c
.end method

.method protected static final trimSeparator(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 361
    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_13
    return-object p0
.end method


# virtual methods
.method protected abstract fillMapsFromArchive(Lorg/apache/tools/ant/types/Resource;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/tools/ant/types/Resource;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/apache/tools/ant/types/Resource;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/apache/tools/ant/types/Resource;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/apache/tools/ant/types/Resource;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/apache/tools/ant/types/Resource;",
            ">;)V"
        }
    .end annotation
.end method

.method public getIncludedDirectories()[Ljava/lang/String;
    .registers 3

    .line 186
    iget-object v0, p0, Lorg/apache/tools/ant/types/ArchiveScanner;->src:Lorg/apache/tools/ant/types/Resource;

    if-nez v0, :cond_9

    .line 187
    invoke-super {p0}, Lorg/apache/tools/ant/DirectoryScanner;->getIncludedDirectories()[Ljava/lang/String;

    move-result-object v0

    .line 190
    :goto_8
    return-object v0

    .line 189
    :cond_9
    invoke-direct {p0}, Lorg/apache/tools/ant/types/ArchiveScanner;->scanme()V

    .line 190
    iget-object v0, p0, Lorg/apache/tools/ant/types/ArchiveScanner;->matchDirEntries:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    goto :goto_8
.end method

.method public getIncludedDirsCount()I
    .registers 2

    .line 199
    iget-object v0, p0, Lorg/apache/tools/ant/types/ArchiveScanner;->src:Lorg/apache/tools/ant/types/Resource;

    if-nez v0, :cond_9

    .line 200
    invoke-super {p0}, Lorg/apache/tools/ant/DirectoryScanner;->getIncludedDirsCount()I

    move-result v0

    .line 203
    :goto_8
    return v0

    .line 202
    :cond_9
    invoke-direct {p0}, Lorg/apache/tools/ant/types/ArchiveScanner;->scanme()V

    .line 203
    iget-object v0, p0, Lorg/apache/tools/ant/types/ArchiveScanner;->matchDirEntries:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    goto :goto_8
.end method

.method public getIncludedFiles()[Ljava/lang/String;
    .registers 3

    .line 157
    iget-object v0, p0, Lorg/apache/tools/ant/types/ArchiveScanner;->src:Lorg/apache/tools/ant/types/Resource;

    if-nez v0, :cond_9

    .line 158
    invoke-super {p0}, Lorg/apache/tools/ant/DirectoryScanner;->getIncludedFiles()[Ljava/lang/String;

    move-result-object v0

    .line 161
    :goto_8
    return-object v0

    .line 160
    :cond_9
    invoke-direct {p0}, Lorg/apache/tools/ant/types/ArchiveScanner;->scanme()V

    .line 161
    iget-object v0, p0, Lorg/apache/tools/ant/types/ArchiveScanner;->matchFileEntries:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    goto :goto_8
.end method

.method public getIncludedFilesCount()I
    .registers 2

    .line 170
    iget-object v0, p0, Lorg/apache/tools/ant/types/ArchiveScanner;->src:Lorg/apache/tools/ant/types/Resource;

    if-nez v0, :cond_9

    .line 171
    invoke-super {p0}, Lorg/apache/tools/ant/DirectoryScanner;->getIncludedFilesCount()I

    move-result v0

    .line 174
    :goto_8
    return v0

    .line 173
    :cond_9
    invoke-direct {p0}, Lorg/apache/tools/ant/types/ArchiveScanner;->scanme()V

    .line 174
    iget-object v0, p0, Lorg/apache/tools/ant/types/ArchiveScanner;->matchFileEntries:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    goto :goto_8
.end method

.method public getResource(Ljava/lang/String;)Lorg/apache/tools/ant/types/Resource;
    .registers 9

    const/4 v3, 0x1

    .line 277
    iget-object v0, p0, Lorg/apache/tools/ant/types/ArchiveScanner;->src:Lorg/apache/tools/ant/types/Resource;

    if-nez v0, :cond_a

    .line 278
    invoke-super {p0, p1}, Lorg/apache/tools/ant/DirectoryScanner;->getResource(Ljava/lang/String;)Lorg/apache/tools/ant/types/Resource;

    move-result-object v0

    .line 294
    :goto_9
    return-object v0

    .line 280
    :cond_a
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 282
    new-instance v1, Lorg/apache/tools/ant/types/Resource;

    const-string v2, ""

    const-wide v4, 0x7fffffffffffffffL

    move v6, v3

    invoke-direct/range {v1 .. v6}, Lorg/apache/tools/ant/types/Resource;-><init>(Ljava/lang/String;ZJZ)V

    move-object v0, v1

    goto :goto_9

    .line 285
    :cond_1f
    invoke-direct {p0}, Lorg/apache/tools/ant/types/ArchiveScanner;->scanme()V

    .line 286
    iget-object v0, p0, Lorg/apache/tools/ant/types/ArchiveScanner;->fileEntries:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 287
    iget-object v0, p0, Lorg/apache/tools/ant/types/ArchiveScanner;->fileEntries:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/types/Resource;

    goto :goto_9

    .line 289
    :cond_33
    invoke-static {p1}, Lorg/apache/tools/ant/types/ArchiveScanner;->trimSeparator(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 291
    iget-object v0, p0, Lorg/apache/tools/ant/types/ArchiveScanner;->dirEntries:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_48

    .line 292
    iget-object v0, p0, Lorg/apache/tools/ant/types/ArchiveScanner;->dirEntries:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/types/Resource;

    goto :goto_9

    .line 294
    :cond_48
    new-instance v0, Lorg/apache/tools/ant/types/Resource;

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/types/Resource;-><init>(Ljava/lang/String;)V

    goto :goto_9
.end method

.method getResourceDirectories(Lorg/apache/tools/ant/Project;)Ljava/util/Iterator;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/tools/ant/Project;",
            ")",
            "Ljava/util/Iterator",
            "<",
            "Lorg/apache/tools/ant/types/Resource;",
            ">;"
        }
    .end annotation

    .line 227
    iget-object v0, p0, Lorg/apache/tools/ant/types/ArchiveScanner;->src:Lorg/apache/tools/ant/types/Resource;

    if-nez v0, :cond_12

    .line 228
    new-instance v0, Lorg/apache/tools/ant/types/resources/FileResourceIterator;

    invoke-virtual {p0}, Lorg/apache/tools/ant/types/ArchiveScanner;->getBasedir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/tools/ant/types/ArchiveScanner;->getIncludedDirectories()[Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p1, v1, v2}, Lorg/apache/tools/ant/types/resources/FileResourceIterator;-><init>(Lorg/apache/tools/ant/Project;Ljava/io/File;[Ljava/lang/String;)V

    .line 231
    :goto_11
    return-object v0

    .line 230
    :cond_12
    invoke-direct {p0}, Lorg/apache/tools/ant/types/ArchiveScanner;->scanme()V

    .line 231
    iget-object v0, p0, Lorg/apache/tools/ant/types/ArchiveScanner;->matchDirEntries:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    goto :goto_11
.end method

.method getResourceFiles(Lorg/apache/tools/ant/Project;)Ljava/util/Iterator;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/tools/ant/Project;",
            ")",
            "Ljava/util/Iterator",
            "<",
            "Lorg/apache/tools/ant/types/Resource;",
            ">;"
        }
    .end annotation

    .line 213
    iget-object v0, p0, Lorg/apache/tools/ant/types/ArchiveScanner;->src:Lorg/apache/tools/ant/types/Resource;

    if-nez v0, :cond_12

    .line 214
    new-instance v0, Lorg/apache/tools/ant/types/resources/FileResourceIterator;

    invoke-virtual {p0}, Lorg/apache/tools/ant/types/ArchiveScanner;->getBasedir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/tools/ant/types/ArchiveScanner;->getIncludedFiles()[Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p1, v1, v2}, Lorg/apache/tools/ant/types/resources/FileResourceIterator;-><init>(Lorg/apache/tools/ant/Project;Ljava/io/File;[Ljava/lang/String;)V

    .line 217
    :goto_11
    return-object v0

    .line 216
    :cond_12
    invoke-direct {p0}, Lorg/apache/tools/ant/types/ArchiveScanner;->scanme()V

    .line 217
    iget-object v0, p0, Lorg/apache/tools/ant/types/ArchiveScanner;->matchFileEntries:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    goto :goto_11
.end method

.method public init()V
    .registers 4

    const/4 v2, 0x0

    .line 238
    iget-object v0, p0, Lorg/apache/tools/ant/types/ArchiveScanner;->includes:[Ljava/lang/String;

    if-nez v0, :cond_10

    .line 240
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/tools/ant/types/ArchiveScanner;->includes:[Ljava/lang/String;

    .line 241
    iget-object v0, p0, Lorg/apache/tools/ant/types/ArchiveScanner;->includes:[Ljava/lang/String;

    const-string v1, "**"

    aput-object v1, v0, v2

    .line 243
    :cond_10
    iget-object v0, p0, Lorg/apache/tools/ant/types/ArchiveScanner;->excludes:[Ljava/lang/String;

    if-nez v0, :cond_18

    .line 244
    new-array v0, v2, [Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/tools/ant/types/ArchiveScanner;->excludes:[Ljava/lang/String;

    .line 246
    :cond_18
    return-void
.end method

.method public match(Ljava/lang/String;)Z
    .registers 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 258
    .line 259
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_24

    .line 260
    const/16 v2, 0x2f

    sget-char v3, Ljava/io/File;->separatorChar:C

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    sget-char v3, Ljava/io/File;->separatorChar:C

    .line 261
    const/16 v4, 0x5c

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    .line 262
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    sget-char v3, Ljava/io/File;->separatorChar:C

    if-ne v2, v3, :cond_24

    .line 263
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 266
    :cond_24
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/types/ArchiveScanner;->isIncluded(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_31

    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/types/ArchiveScanner;->isExcluded(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_31

    :goto_30
    return v0

    :cond_31
    move v0, v1

    goto :goto_30
.end method

.method public scan()V
    .registers 2

    .line 109
    iget-object v0, p0, Lorg/apache/tools/ant/types/ArchiveScanner;->src:Lorg/apache/tools/ant/types/Resource;

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Resource;->isExists()Z

    move-result v0

    if-nez v0, :cond_f

    iget-boolean v0, p0, Lorg/apache/tools/ant/types/ArchiveScanner;->errorOnMissingArchive:Z

    if-nez v0, :cond_f

    .line 113
    :cond_e
    :goto_e
    return-void

    .line 112
    :cond_f
    invoke-super {p0}, Lorg/apache/tools/ant/DirectoryScanner;->scan()V

    goto :goto_e
.end method

.method public setEncoding(Ljava/lang/String;)V
    .registers 2

    .line 145
    iput-object p1, p0, Lorg/apache/tools/ant/types/ArchiveScanner;->encoding:Ljava/lang/String;

    .line 146
    return-void
.end method

.method public setErrorOnMissingArchive(Z)V
    .registers 2

    .line 101
    iput-boolean p1, p0, Lorg/apache/tools/ant/types/ArchiveScanner;->errorOnMissingArchive:Z

    .line 102
    return-void
.end method

.method public setSrc(Ljava/io/File;)V
    .registers 3

    .line 122
    new-instance v0, Lorg/apache/tools/ant/types/resources/FileResource;

    invoke-direct {v0, p1}, Lorg/apache/tools/ant/types/resources/FileResource;-><init>(Ljava/io/File;)V

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/ArchiveScanner;->setSrc(Lorg/apache/tools/ant/types/Resource;)V

    .line 123
    return-void
.end method

.method public setSrc(Lorg/apache/tools/ant/types/Resource;)V
    .registers 3

    .line 132
    iput-object p1, p0, Lorg/apache/tools/ant/types/ArchiveScanner;->src:Lorg/apache/tools/ant/types/Resource;

    .line 133
    const-class v0, Lorg/apache/tools/ant/types/resources/FileProvider;

    invoke-virtual {p1, v0}, Lorg/apache/tools/ant/types/Resource;->as(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/types/resources/FileProvider;

    .line 134
    if-eqz v0, :cond_12

    .line 135
    invoke-interface {v0}, Lorg/apache/tools/ant/types/resources/FileProvider;->getFile()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/types/ArchiveScanner;->srcFile:Ljava/io/File;

    .line 137
    :cond_12
    return-void
.end method
