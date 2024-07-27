.class public Lorg/apache/tools/ant/taskdefs/Sync;
.super Lorg/apache/tools/ant/Task;
.source "Sync.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/tools/ant/taskdefs/Sync$MyCopy;,
        Lorg/apache/tools/ant/taskdefs/Sync$SyncTarget;
    }
.end annotation


# instance fields
.field private myCopy:Lorg/apache/tools/ant/taskdefs/Sync$MyCopy;

.field private resources:Lorg/apache/tools/ant/types/resources/Resources;

.field private syncTarget:Lorg/apache/tools/ant/taskdefs/Sync$SyncTarget;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 60
    invoke-direct {p0}, Lorg/apache/tools/ant/Task;-><init>()V

    .line 68
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Sync;->resources:Lorg/apache/tools/ant/types/resources/Resources;

    return-void
.end method

.method static synthetic access$200(Ljava/lang/String;Z)V
    .registers 2

    .line 60
    invoke-static {p0, p1}, Lorg/apache/tools/ant/taskdefs/Sync;->assertTrue(Ljava/lang/String;Z)V

    return-void
.end method

.method private static assertTrue(Ljava/lang/String;Z)V
    .registers 4

    .line 596
    if-eqz p1, :cond_0

    .line 599
    return-void

    .line 597
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Assertion Error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private configureTask(Lorg/apache/tools/ant/Task;)V
    .registers 3

    .line 90
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Sync;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/apache/tools/ant/Task;->setProject(Lorg/apache/tools/ant/Project;)V

    .line 91
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Sync;->getTaskName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/apache/tools/ant/Task;->setTaskName(Ljava/lang/String;)V

    .line 92
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Sync;->getOwningTarget()Lorg/apache/tools/ant/Target;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/apache/tools/ant/Task;->setOwningTarget(Lorg/apache/tools/ant/Target;)V

    .line 93
    invoke-virtual {p1}, Lorg/apache/tools/ant/Task;->init()V

    .line 94
    return-void
.end method

.method private getExplicitPreserveEmptyDirs()Ljava/lang/Boolean;
    .registers 2

    .line 450
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Sync;->syncTarget:Lorg/apache/tools/ant/taskdefs/Sync$SyncTarget;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/Sync$SyncTarget;->getPreserveEmptyDirs()Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method private logRemovedCount(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10

    const/4 v4, 0x2

    .line 157
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Sync;->myCopy:Lorg/apache/tools/ant/taskdefs/Sync$MyCopy;

    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/Sync$MyCopy;->getToDir()Ljava/io/File;

    move-result-object v0

    .line 159
    if-nez p2, :cond_0

    const-string p2, ""

    .line 160
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ge p1, v4, :cond_1

    :goto_0
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 162
    if-lez p1, :cond_2

    .line 163
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Removed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " from "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v4}, Lorg/apache/tools/ant/taskdefs/Sync;->log(Ljava/lang/String;I)V

    .line 169
    :goto_1
    return-void

    :cond_1
    move-object p3, p4

    .line 160
    goto :goto_0

    .line 166
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NO "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " to remove from "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/Sync;->log(Ljava/lang/String;I)V

    goto :goto_1
.end method

.method private removeEmptyDirectories(Ljava/io/File;ZLjava/util/Set;)I
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Z",
            "Ljava/util/Set",
            "<",
            "Ljava/io/File;",
            ">;)I"
        }
    .end annotation

    const/4 v6, 0x1

    const/4 v2, 0x0

    .line 290
    .line 291
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 292
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 293
    array-length v4, v1

    move v3, v2

    move v0, v2

    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v2, v1, v3

    .line 295
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 296
    invoke-direct {p0, v2, v6, p3}, Lorg/apache/tools/ant/taskdefs/Sync;->removeEmptyDirectories(Ljava/io/File;ZLjava/util/Set;)I

    move-result v2

    add-int/2addr v0, v2

    .line 293
    :cond_0
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_0

    .line 300
    :cond_1
    array-length v2, v1

    if-lez v2, :cond_2

    .line 303
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 305
    :cond_2
    array-length v1, v1

    if-ge v1, v6, :cond_3

    if-eqz p2, :cond_3

    .line 306
    invoke-interface {p3, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 307
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Removing empty directory: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {p0, v1, v2}, Lorg/apache/tools/ant/taskdefs/Sync;->log(Ljava/lang/String;I)V

    .line 308
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 309
    add-int/lit8 v0, v0, 0x1

    .line 312
    :cond_3
    :goto_1
    return v0

    :cond_4
    move v0, v2

    goto :goto_1
.end method

.method private removeEmptyDirectories(Ljava/util/Set;)I
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/io/File;",
            ">;)I"
        }
    .end annotation

    .line 329
    const/4 v1, 0x0

    .line 330
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 331
    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v3

    .line 332
    if-eqz v3, :cond_0

    array-length v3, v3

    if-nez v3, :cond_2

    .line 333
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Removing empty directory: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {p0, v3, v4}, Lorg/apache/tools/ant/taskdefs/Sync;->log(Ljava/lang/String;I)V

    .line 334
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 335
    add-int/lit8 v0, v1, 0x1

    :goto_1
    move v1, v0

    .line 337
    goto :goto_0

    .line 338
    :cond_1
    return v1

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method private removeOrphanFiles(Ljava/util/Set;Ljava/io/File;Ljava/util/Set;)[I
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/io/File;",
            "Ljava/util/Set",
            "<",
            "Ljava/io/File;",
            ">;)[I"
        }
    .end annotation

    const/4 v10, 0x4

    const/4 v9, 0x1

    const/4 v2, 0x0

    .line 192
    const/4 v0, 0x2

    new-array v3, v0, [I

    aput v2, v3, v2

    aput v2, v3, v9

    .line 193
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 196
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v1

    const-string v4, ""

    aput-object v4, v0, v1

    .line 199
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Sync;->syncTarget:Lorg/apache/tools/ant/taskdefs/Sync$SyncTarget;

    if-eqz v1, :cond_2

    .line 200
    invoke-static {v1, v2}, Lorg/apache/tools/ant/taskdefs/Sync$SyncTarget;->access$100(Lorg/apache/tools/ant/taskdefs/Sync$SyncTarget;Z)Lorg/apache/tools/ant/types/FileSet;

    move-result-object v4

    .line 201
    invoke-virtual {v4, p2}, Lorg/apache/tools/ant/types/FileSet;->setDir(Ljava/io/File;)V

    .line 206
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Sync;->syncTarget:Lorg/apache/tools/ant/taskdefs/Sync$SyncTarget;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Sync;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v5

    invoke-virtual {v1, v5}, Lorg/apache/tools/ant/taskdefs/Sync$SyncTarget;->mergePatterns(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/types/PatternSet;

    move-result-object v1

    .line 207
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Sync;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v5

    invoke-virtual {v1, v5}, Lorg/apache/tools/ant/types/PatternSet;->getIncludePatterns(Lorg/apache/tools/ant/Project;)[Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/apache/tools/ant/types/FileSet;->appendExcludes([Ljava/lang/String;)V

    .line 208
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Sync;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v5

    invoke-virtual {v1, v5}, Lorg/apache/tools/ant/types/PatternSet;->getExcludePatterns(Lorg/apache/tools/ant/Project;)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lorg/apache/tools/ant/types/FileSet;->appendIncludes([Ljava/lang/String;)V

    .line 209
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Sync;->syncTarget:Lorg/apache/tools/ant/taskdefs/Sync$SyncTarget;

    invoke-virtual {v1}, Lorg/apache/tools/ant/taskdefs/Sync$SyncTarget;->getDefaultexcludes()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v4, v1}, Lorg/apache/tools/ant/types/FileSet;->setDefaultexcludes(Z)V

    .line 214
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Sync;->syncTarget:Lorg/apache/tools/ant/taskdefs/Sync$SyncTarget;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Sync;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v5

    invoke-virtual {v1, v5}, Lorg/apache/tools/ant/taskdefs/Sync$SyncTarget;->getSelectors(Lorg/apache/tools/ant/Project;)[Lorg/apache/tools/ant/types/selectors/FileSelector;

    move-result-object v5

    .line 215
    array-length v1, v5

    if-lez v1, :cond_1

    .line 216
    new-instance v6, Lorg/apache/tools/ant/types/selectors/NoneSelector;

    invoke-direct {v6}, Lorg/apache/tools/ant/types/selectors/NoneSelector;-><init>()V

    .line 217
    array-length v7, v5

    move v1, v2

    :goto_0
    if-ge v1, v7, :cond_0

    aget-object v8, v5, v1

    .line 218
    invoke-virtual {v6, v8}, Lorg/apache/tools/ant/types/selectors/NoneSelector;->appendSelector(Lorg/apache/tools/ant/types/selectors/FileSelector;)V

    .line 217
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 220
    :cond_0
    invoke-virtual {v4, v6}, Lorg/apache/tools/ant/types/FileSet;->appendSelector(Lorg/apache/tools/ant/types/selectors/FileSelector;)V

    .line 222
    :cond_1
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Sync;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-virtual {v4, v1}, Lorg/apache/tools/ant/types/FileSet;->getDirectoryScanner(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/DirectoryScanner;

    move-result-object v1

    .line 231
    :goto_1
    invoke-virtual {v1, v0}, Lorg/apache/tools/ant/DirectoryScanner;->addExcludes([Ljava/lang/String;)V

    .line 233
    invoke-virtual {v1}, Lorg/apache/tools/ant/DirectoryScanner;->scan()V

    .line 234
    invoke-virtual {v1}, Lorg/apache/tools/ant/DirectoryScanner;->getIncludedFiles()[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    move v0, v2

    :goto_2
    if-ge v0, v5, :cond_3

    aget-object v6, v4, v0

    .line 235
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, p2, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 236
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Removing orphan file: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6, v10}, Lorg/apache/tools/ant/taskdefs/Sync;->log(Ljava/lang/String;I)V

    .line 237
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    .line 238
    aget v6, v3, v9

    add-int/lit8 v6, v6, 0x1

    aput v6, v3, v9

    .line 234
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 224
    :cond_2
    new-instance v1, Lorg/apache/tools/ant/DirectoryScanner;

    invoke-direct {v1}, Lorg/apache/tools/ant/DirectoryScanner;-><init>()V

    .line 225
    invoke-virtual {v1, p2}, Lorg/apache/tools/ant/DirectoryScanner;->setBasedir(Ljava/io/File;)V

    .line 229
    invoke-virtual {p2}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v4

    invoke-static {v4}, Lorg/apache/tools/ant/util/FileUtils;->isCaseSensitiveFileSystem(Ljava/nio/file/Path;)Ljava/util/Optional;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, Lorg/apache/tools/ant/taskdefs/Sync$$ExternalSyntheticLambda0;

    invoke-direct {v5, v1}, Lorg/apache/tools/ant/taskdefs/Sync$$ExternalSyntheticLambda0;-><init>(Lorg/apache/tools/ant/DirectoryScanner;)V

    invoke-virtual {v4, v5}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    goto :goto_1

    .line 240
    :cond_3
    invoke-virtual {v1}, Lorg/apache/tools/ant/DirectoryScanner;->getIncludedDirectories()[Ljava/lang/String;

    move-result-object v1

    .line 246
    array-length v0, v1

    add-int/lit8 v0, v0, -0x1

    :goto_3
    if-ltz v0, :cond_6

    .line 247
    new-instance v4, Ljava/io/File;

    aget-object v5, v1, v0

    invoke-direct {v4, p2, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 248
    invoke-virtual {v4}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v5

    .line 249
    if-eqz v5, :cond_4

    array-length v5, v5

    if-ge v5, v9, :cond_5

    .line 250
    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Removing orphan directory: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5, v10}, Lorg/apache/tools/ant/taskdefs/Sync;->log(Ljava/lang/String;I)V

    .line 251
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 252
    aget v4, v3, v2

    add-int/lit8 v4, v4, 0x1

    aput v4, v3, v2

    .line 246
    :cond_5
    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    .line 256
    :cond_6
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/Sync;->getExplicitPreserveEmptyDirs()Ljava/lang/Boolean;

    move-result-object v0

    .line 257
    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Sync;->myCopy:Lorg/apache/tools/ant/taskdefs/Sync$MyCopy;

    invoke-virtual {v1}, Lorg/apache/tools/ant/taskdefs/Sync$MyCopy;->getIncludeEmptyDirs()Z

    move-result v1

    if-eq v0, v1, :cond_7

    .line 258
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Sync;->syncTarget:Lorg/apache/tools/ant/taskdefs/Sync$SyncTarget;

    invoke-static {v0, v9}, Lorg/apache/tools/ant/taskdefs/Sync$SyncTarget;->access$100(Lorg/apache/tools/ant/taskdefs/Sync$SyncTarget;Z)Lorg/apache/tools/ant/types/FileSet;

    move-result-object v0

    .line 259
    invoke-virtual {v0, p2}, Lorg/apache/tools/ant/types/FileSet;->setDir(Ljava/io/File;)V

    .line 260
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Sync;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/FileSet;->getDirectoryScanner(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/DirectoryScanner;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/DirectoryScanner;->getIncludedDirectories()[Ljava/lang/String;

    move-result-object v1

    .line 262
    array-length v0, v1

    add-int/lit8 v0, v0, -0x1

    :goto_4
    if-ltz v0, :cond_7

    .line 263
    new-instance v2, Ljava/io/File;

    aget-object v4, v1, v0

    invoke-direct {v2, p2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-interface {p3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 262
    add-int/lit8 v0, v0, -0x1

    goto :goto_4

    .line 257
    :cond_7
    return-object v3
.end method


# virtual methods
.method public add(Lorg/apache/tools/ant/types/ResourceCollection;)V
    .registers 4

    .line 399
    instance-of v0, p1, Lorg/apache/tools/ant/types/FileSet;

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lorg/apache/tools/ant/types/ResourceCollection;->isFilesystemOnly()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 401
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Sync;->myCopy:Lorg/apache/tools/ant/taskdefs/Sync$MyCopy;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/taskdefs/Sync$MyCopy;->add(Lorg/apache/tools/ant/types/ResourceCollection;)V

    .line 412
    :goto_0
    return-void

    .line 403
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Sync;->resources:Lorg/apache/tools/ant/types/resources/Resources;

    if-nez v0, :cond_1

    .line 404
    new-instance v0, Lorg/apache/tools/ant/types/resources/Restrict;

    invoke-direct {v0}, Lorg/apache/tools/ant/types/resources/Restrict;-><init>()V

    .line 405
    new-instance v1, Lorg/apache/tools/ant/types/resources/selectors/Exists;

    invoke-direct {v1}, Lorg/apache/tools/ant/types/resources/selectors/Exists;-><init>()V

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/resources/Restrict;->add(Lorg/apache/tools/ant/types/resources/selectors/ResourceSelector;)V

    .line 406
    new-instance v1, Lorg/apache/tools/ant/types/resources/Resources;

    invoke-direct {v1}, Lorg/apache/tools/ant/types/resources/Resources;-><init>()V

    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/Sync;->resources:Lorg/apache/tools/ant/types/resources/Resources;

    .line 407
    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/resources/Restrict;->add(Lorg/apache/tools/ant/types/ResourceCollection;)V

    .line 408
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Sync;->myCopy:Lorg/apache/tools/ant/taskdefs/Sync$MyCopy;

    invoke-virtual {v1, v0}, Lorg/apache/tools/ant/taskdefs/Sync$MyCopy;->add(Lorg/apache/tools/ant/types/ResourceCollection;)V

    .line 410
    :cond_1
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Sync;->resources:Lorg/apache/tools/ant/types/resources/Resources;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/resources/Resources;->add(Lorg/apache/tools/ant/types/ResourceCollection;)V

    goto :goto_0
.end method

.method public addFileset(Lorg/apache/tools/ant/types/FileSet;)V
    .registers 2

    .line 390
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/taskdefs/Sync;->add(Lorg/apache/tools/ant/types/ResourceCollection;)V

    .line 391
    return-void
.end method

.method public addPreserveInTarget(Lorg/apache/tools/ant/taskdefs/Sync$SyncTarget;)V
    .registers 4

    .line 436
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Sync;->syncTarget:Lorg/apache/tools/ant/taskdefs/Sync$SyncTarget;

    if-nez v0, :cond_0

    .line 440
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Sync;->syncTarget:Lorg/apache/tools/ant/taskdefs/Sync$SyncTarget;

    .line 441
    return-void

    .line 437
    :cond_0
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "you must not specify multiple preserveintarget elements."

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public execute()V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v9, 0x4

    .line 106
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Sync;->myCopy:Lorg/apache/tools/ant/taskdefs/Sync$MyCopy;

    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/Sync$MyCopy;->getToDir()Ljava/io/File;

    move-result-object v3

    .line 109
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Sync;->myCopy:Lorg/apache/tools/ant/taskdefs/Sync$MyCopy;

    invoke-static {v0}, Lorg/apache/tools/ant/taskdefs/Sync$MyCopy;->access$000(Lorg/apache/tools/ant/taskdefs/Sync$MyCopy;)Ljava/util/Set;

    move-result-object v4

    .line 113
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v3}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    if-ge v0, v2, :cond_2

    :cond_0
    move v0, v2

    .line 116
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PASS#1: Copying files to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5, v9}, Lorg/apache/tools/ant/taskdefs/Sync;->log(Ljava/lang/String;I)V

    .line 117
    iget-object v5, p0, Lorg/apache/tools/ant/taskdefs/Sync;->myCopy:Lorg/apache/tools/ant/taskdefs/Sync$MyCopy;

    invoke-virtual {v5}, Lorg/apache/tools/ant/taskdefs/Sync$MyCopy;->execute()V

    .line 120
    if-eqz v0, :cond_3

    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NO removing necessary in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v9}, Lorg/apache/tools/ant/taskdefs/Sync;->log(Ljava/lang/String;I)V

    .line 153
    :cond_1
    :goto_1
    return-void

    :cond_2
    move v0, v1

    .line 113
    goto :goto_0

    .line 128
    :cond_3
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 131
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PASS#2: Removing orphan files from "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5, v9}, Lorg/apache/tools/ant/taskdefs/Sync;->log(Ljava/lang/String;I)V

    .line 132
    invoke-direct {p0, v4, v3, v0}, Lorg/apache/tools/ant/taskdefs/Sync;->removeOrphanFiles(Ljava/util/Set;Ljava/io/File;Ljava/util/Set;)[I

    move-result-object v4

    .line 134
    aget v5, v4, v1

    const-string v6, "dangling director"

    const-string v7, "y"

    const-string v8, "ies"

    invoke-direct {p0, v5, v6, v7, v8}, Lorg/apache/tools/ant/taskdefs/Sync;->logRemovedCount(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    aget v2, v4, v2

    const-string v4, "dangling file"

    const-string v5, ""

    const-string v6, "s"

    invoke-direct {p0, v2, v4, v5, v6}, Lorg/apache/tools/ant/taskdefs/Sync;->logRemovedCount(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Sync;->myCopy:Lorg/apache/tools/ant/taskdefs/Sync$MyCopy;

    invoke-virtual {v2}, Lorg/apache/tools/ant/taskdefs/Sync$MyCopy;->getIncludeEmptyDirs()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 139
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/Sync;->getExplicitPreserveEmptyDirs()Ljava/lang/Boolean;

    move-result-object v2

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-ne v2, v4, :cond_1

    .line 140
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PASS#3: Removing empty directories from "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v9}, Lorg/apache/tools/ant/taskdefs/Sync;->log(Ljava/lang/String;I)V

    .line 143
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Sync;->myCopy:Lorg/apache/tools/ant/taskdefs/Sync$MyCopy;

    invoke-virtual {v2}, Lorg/apache/tools/ant/taskdefs/Sync$MyCopy;->getIncludeEmptyDirs()Z

    move-result v2

    if-nez v2, :cond_5

    .line 145
    invoke-direct {p0, v3, v1, v0}, Lorg/apache/tools/ant/taskdefs/Sync;->removeEmptyDirectories(Ljava/io/File;ZLjava/util/Set;)I

    move-result v0

    .line 151
    :goto_2
    const-string v1, "empty director"

    const-string v2, "y"

    const-string v3, "ies"

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/apache/tools/ant/taskdefs/Sync;->logRemovedCount(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 148
    :cond_5
    invoke-direct {p0, v0}, Lorg/apache/tools/ant/taskdefs/Sync;->removeEmptyDirectories(Ljava/util/Set;)I

    move-result v0

    goto :goto_2
.end method

.method public init()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    const/4 v1, 0x0

    .line 80
    new-instance v0, Lorg/apache/tools/ant/taskdefs/Sync$MyCopy;

    invoke-direct {v0}, Lorg/apache/tools/ant/taskdefs/Sync$MyCopy;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Sync;->myCopy:Lorg/apache/tools/ant/taskdefs/Sync$MyCopy;

    .line 81
    invoke-direct {p0, v0}, Lorg/apache/tools/ant/taskdefs/Sync;->configureTask(Lorg/apache/tools/ant/Task;)V

    .line 84
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Sync;->myCopy:Lorg/apache/tools/ant/taskdefs/Sync$MyCopy;

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/taskdefs/Sync$MyCopy;->setFiltering(Z)V

    .line 85
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Sync;->myCopy:Lorg/apache/tools/ant/taskdefs/Sync$MyCopy;

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/taskdefs/Sync$MyCopy;->setIncludeEmptyDirs(Z)V

    .line 86
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Sync;->myCopy:Lorg/apache/tools/ant/taskdefs/Sync$MyCopy;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/taskdefs/Sync$MyCopy;->setPreserveLastModified(Z)V

    .line 87
    return-void
.end method

.method public setFailOnError(Z)V
    .registers 3

    .line 382
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Sync;->myCopy:Lorg/apache/tools/ant/taskdefs/Sync$MyCopy;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/taskdefs/Sync$MyCopy;->setFailOnError(Z)V

    .line 383
    return-void
.end method

.method public setGranularity(J)V
    .registers 4

    .line 423
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Sync;->myCopy:Lorg/apache/tools/ant/taskdefs/Sync$MyCopy;

    invoke-virtual {v0, p1, p2}, Lorg/apache/tools/ant/taskdefs/Sync$MyCopy;->setGranularity(J)V

    .line 424
    return-void
.end method

.method public setIncludeEmptyDirs(Z)V
    .registers 3

    .line 374
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Sync;->myCopy:Lorg/apache/tools/ant/taskdefs/Sync$MyCopy;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/taskdefs/Sync$MyCopy;->setIncludeEmptyDirs(Z)V

    .line 375
    return-void
.end method

.method public setOverwrite(Z)V
    .registers 3

    .line 366
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Sync;->myCopy:Lorg/apache/tools/ant/taskdefs/Sync$MyCopy;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/taskdefs/Sync$MyCopy;->setOverwrite(Z)V

    .line 367
    return-void
.end method

.method public setTodir(Ljava/io/File;)V
    .registers 3

    .line 350
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Sync;->myCopy:Lorg/apache/tools/ant/taskdefs/Sync$MyCopy;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/taskdefs/Sync$MyCopy;->setTodir(Ljava/io/File;)V

    .line 351
    return-void
.end method

.method public setVerbose(Z)V
    .registers 3

    .line 358
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Sync;->myCopy:Lorg/apache/tools/ant/taskdefs/Sync$MyCopy;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/taskdefs/Sync$MyCopy;->setVerbose(Z)V

    .line 359
    return-void
.end method
