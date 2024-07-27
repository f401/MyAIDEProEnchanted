.class public Lorg/apache/tools/ant/taskdefs/Move;
.super Lorg/apache/tools/ant/taskdefs/Copy;
.source "Move.java"


# instance fields
.field private performGc:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 63
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/Copy;-><init>()V

    .line 54
    const-string v0, "windows"

    invoke-static {v0}, Lorg/apache/tools/ant/taskdefs/condition/Os;->isFamily(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Move;->performGc:Z

    .line 64
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/Move;->setOverwrite(Z)V

    .line 65
    return-void
.end method

.method private copyFile(Ljava/io/File;Ljava/io/File;ZZ)V
    .registers 17

    .line 237
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Copying "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lorg/apache/tools/ant/taskdefs/Move;->verbosity:I

    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/Move;->log(Ljava/lang/String;I)V

    .line 239
    new-instance v3, Lorg/apache/tools/ant/types/FilterSetCollection;

    invoke-direct {v3}, Lorg/apache/tools/ant/types/FilterSetCollection;-><init>()V

    .line 240
    if-eqz p3, :cond_0

    .line 241
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Move;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/Project;->getGlobalFilterSet()Lorg/apache/tools/ant/types/FilterSet;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/apache/tools/ant/types/FilterSetCollection;->addFilterSet(Lorg/apache/tools/ant/types/FilterSet;)V

    .line 243
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Move;->getFilterSets()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lorg/apache/tools/ant/taskdefs/Move$$ExternalSyntheticLambda0;

    invoke-direct {v1, v3}, Lorg/apache/tools/ant/taskdefs/Move$$ExternalSyntheticLambda0;-><init>(Lorg/apache/tools/ant/types/FilterSetCollection;)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->forEach(Ljava/util/function/Consumer;)V

    .line 244
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Move;->getFileUtils()Lorg/apache/tools/ant/util/FileUtils;

    move-result-object v0

    .line 245
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Move;->getFilterChains()Ljava/util/Vector;

    move-result-object v4

    iget-boolean v5, p0, Lorg/apache/tools/ant/taskdefs/Move;->forceOverwrite:Z

    .line 247
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Move;->getPreserveLastModified()Z

    move-result v6

    .line 249
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Move;->getEncoding()Ljava/lang/String;

    move-result-object v8

    .line 250
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Move;->getOutputEncoding()Ljava/lang/String;

    move-result-object v9

    .line 251
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Move;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v10

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Move;->getForce()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v11

    .line 244
    const/4 v7, 0x0

    move-object v1, p1

    move-object v2, p2

    :try_start_1
    invoke-virtual/range {v0 .. v11}, Lorg/apache/tools/ant/util/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;Lorg/apache/tools/ant/types/FilterSetCollection;Ljava/util/Vector;ZZZLjava/lang/String;Ljava/lang/String;Lorg/apache/tools/ant/Project;Z)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 255
    return-void

    .line 252
    :catch_0
    move-exception v0

    .line 253
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to copy "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " due to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Move;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v3

    invoke-direct {v2, v1, v0, v3}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lorg/apache/tools/ant/Location;)V

    throw v2

    .line 252
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method private moveFile(Ljava/io/File;Ljava/io/File;ZZ)V
    .registers 10

    .line 210
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Attempting to rename: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lorg/apache/tools/ant/taskdefs/Move;->verbosity:I

    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/Move;->log(Ljava/lang/String;I)V

    .line 213
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Move;->forceOverwrite:Z

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/apache/tools/ant/taskdefs/Move;->renameFile(Ljava/io/File;Ljava/io/File;ZZ)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 217
    if-nez v0, :cond_0

    .line 220
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/tools/ant/taskdefs/Move;->copyFile(Ljava/io/File;Ljava/io/File;ZZ)V

    .line 221
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Move;->getFileUtils()Lorg/apache/tools/ant/util/FileUtils;

    move-result-object v0

    iget-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/Move;->performGc:Z

    invoke-virtual {v0, p1, v1}, Lorg/apache/tools/ant/util/FileUtils;->tryHardToDelete(Ljava/io/File;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 226
    :cond_0
    return-void

    .line 222
    :cond_1
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Unable to delete file %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 214
    :catch_0
    move-exception v0

    .line 215
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to rename "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " due to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Move;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v3

    invoke-direct {v2, v1, v0, v3}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lorg/apache/tools/ant/Location;)V

    throw v2
.end method


# virtual methods
.method protected deleteDir(Ljava/io/File;)V
    .registers 3

    .line 287
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/tools/ant/taskdefs/Move;->deleteDir(Ljava/io/File;Z)V

    .line 288
    return-void
.end method

.method protected deleteDir(Ljava/io/File;Z)V
    .registers 10

    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 296
    invoke-virtual {p1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v2

    .line 297
    if-nez v2, :cond_1

    .line 320
    :cond_0
    return-void

    .line 301
    :cond_1
    array-length v3, v2

    move v0, v1

    :goto_0
    if-ge v0, v3, :cond_4

    aget-object v4, v2, v0

    .line 302
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 303
    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 304
    invoke-virtual {p0, v5}, Lorg/apache/tools/ant/taskdefs/Move;->deleteDir(Ljava/io/File;)V

    .line 301
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 305
    :cond_2
    if-eqz p2, :cond_3

    .line 306
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Move;->getFileUtils()Lorg/apache/tools/ant/util/FileUtils;

    move-result-object v0

    iget-boolean v2, p0, Lorg/apache/tools/ant/taskdefs/Move;->performGc:Z

    invoke-virtual {v0, v5, v2}, Lorg/apache/tools/ant/util/FileUtils;->tryHardToDelete(Ljava/io/File;Z)Z

    move-result v0

    if-nez v0, :cond_3

    .line 307
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v2, "Unable to delete file %s"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-direct {v0, v2, v3}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 310
    :cond_3
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v2, "UNEXPECTED ERROR - The file %s should not exist!"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-direct {v0, v2, v3}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 315
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Deleting directory "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget v2, p0, Lorg/apache/tools/ant/taskdefs/Move;->verbosity:I

    invoke-virtual {p0, v0, v2}, Lorg/apache/tools/ant/taskdefs/Move;->log(Ljava/lang/String;I)V

    .line 316
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Move;->getFileUtils()Lorg/apache/tools/ant/util/FileUtils;

    move-result-object v0

    iget-boolean v2, p0, Lorg/apache/tools/ant/taskdefs/Move;->performGc:Z

    invoke-virtual {v0, p1, v2}, Lorg/apache/tools/ant/util/FileUtils;->tryHardToDelete(Ljava/io/File;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 317
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v2, "Unable to delete directory %s"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-direct {v0, v2, v3}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
.end method

.method protected doFileOperations()V
    .registers 13

    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 109
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Move;->completeDirMap:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 110
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Move;->completeDirMap:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 111
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    .line 112
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 113
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Attempting to rename dir: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " to "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget v6, p0, Lorg/apache/tools/ant/taskdefs/Move;->verbosity:I

    invoke-virtual {p0, v4, v6}, Lorg/apache/tools/ant/taskdefs/Move;->log(Ljava/lang/String;I)V

    .line 116
    iget-boolean v4, p0, Lorg/apache/tools/ant/taskdefs/Move;->filtering:Z

    iget-boolean v6, p0, Lorg/apache/tools/ant/taskdefs/Move;->forceOverwrite:Z

    invoke-virtual {p0, v1, v0, v4, v6}, Lorg/apache/tools/ant/taskdefs/Move;->renameFile(Ljava/io/File;Ljava/io/File;ZZ)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 121
    if-nez v4, :cond_0

    .line 123
    new-instance v4, Lorg/apache/tools/ant/types/FileSet;

    invoke-direct {v4}, Lorg/apache/tools/ant/types/FileSet;-><init>()V

    .line 124
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Move;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/apache/tools/ant/types/FileSet;->setProject(Lorg/apache/tools/ant/Project;)V

    .line 125
    invoke-virtual {v4, v1}, Lorg/apache/tools/ant/types/FileSet;->setDir(Ljava/io/File;)V

    .line 126
    invoke-virtual {p0, v4}, Lorg/apache/tools/ant/taskdefs/Move;->addFileset(Lorg/apache/tools/ant/types/FileSet;)V

    .line 127
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Move;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/apache/tools/ant/types/FileSet;->getDirectoryScanner(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/DirectoryScanner;

    move-result-object v4

    .line 128
    invoke-virtual {v4}, Lorg/apache/tools/ant/DirectoryScanner;->getIncludedFiles()[Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Lorg/apache/tools/ant/DirectoryScanner;->getIncludedDirectories()[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v1, v0, v6, v4}, Lorg/apache/tools/ant/taskdefs/Move;->scan(Ljava/io/File;Ljava/io/File;[Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0

    .line 117
    :catch_0
    move-exception v2

    .line 118
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to rename dir "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " to "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " due to "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 120
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Move;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v3

    invoke-direct {v1, v0, v2, v3}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lorg/apache/tools/ant/Location;)V

    throw v1

    .line 132
    :cond_1
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Move;->fileCopyMap:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->size()I

    move-result v0

    .line 133
    if-lez v0, :cond_6

    .line 134
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Moving "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " file"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ne v0, v5, :cond_3

    const-string v0, ""

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " to "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Move;->destDir:Ljava/io/File;

    .line 135
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 134
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/Move;->log(Ljava/lang/String;)V

    .line 137
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Move;->fileCopyMap:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 138
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 139
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 141
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 142
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    move v2, v3

    move v4, v3

    .line 143
    :goto_2
    array-length v8, v0

    if-ge v4, v8, :cond_2

    .line 144
    aget-object v8, v0, v4

    .line 146
    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 147
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Skipping self-move of "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget v8, p0, Lorg/apache/tools/ant/taskdefs/Move;->verbosity:I

    invoke-virtual {p0, v2, v8}, Lorg/apache/tools/ant/taskdefs/Move;->log(Ljava/lang/String;I)V

    move v2, v5

    .line 143
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 134
    :cond_3
    const-string v0, "s"

    goto :goto_1

    .line 154
    :cond_4
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 155
    add-int/lit8 v8, v4, 0x1

    array-length v10, v0

    if-ne v8, v10, :cond_5

    if-nez v2, :cond_5

    .line 158
    iget-boolean v8, p0, Lorg/apache/tools/ant/taskdefs/Move;->filtering:Z

    iget-boolean v10, p0, Lorg/apache/tools/ant/taskdefs/Move;->forceOverwrite:Z

    invoke-direct {p0, v7, v9, v8, v10}, Lorg/apache/tools/ant/taskdefs/Move;->moveFile(Ljava/io/File;Ljava/io/File;ZZ)V

    goto :goto_3

    .line 160
    :cond_5
    iget-boolean v8, p0, Lorg/apache/tools/ant/taskdefs/Move;->filtering:Z

    iget-boolean v10, p0, Lorg/apache/tools/ant/taskdefs/Move;->forceOverwrite:Z

    invoke-direct {p0, v7, v9, v8, v10}, Lorg/apache/tools/ant/taskdefs/Move;->copyFile(Ljava/io/File;Ljava/io/File;ZZ)V

    goto :goto_3

    .line 167
    :cond_6
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Move;->includeEmpty:Z

    if-eqz v0, :cond_d

    .line 169
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Move;->dirCopyMap:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move v2, v3

    :cond_7
    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 170
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 172
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    array-length v8, v0

    move v4, v3

    move v6, v3

    :goto_5
    if-ge v6, v8, :cond_b

    aget-object v9, v0, v6

    .line 173
    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 174
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Skipping self-move of "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget v9, p0, Lorg/apache/tools/ant/taskdefs/Move;->verbosity:I

    invoke-virtual {p0, v4, v9}, Lorg/apache/tools/ant/taskdefs/Move;->log(Ljava/lang/String;I)V

    move v4, v5

    .line 179
    :cond_8
    :goto_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 178
    :cond_9
    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 179
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_8

    .line 180
    invoke-virtual {v10}, Ljava/io/File;->mkdirs()Z

    move-result v9

    if-nez v9, :cond_a

    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_a

    .line 181
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unable to create directory "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 181
    invoke-virtual {p0, v9, v3}, Lorg/apache/tools/ant/taskdefs/Move;->log(Ljava/lang/String;I)V

    goto :goto_6

    .line 180
    :cond_a
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 188
    :cond_b
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 189
    if-nez v4, :cond_7

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/Move;->okToDelete(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 190
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/Move;->deleteDir(Ljava/io/File;)V

    goto/16 :goto_4

    .line 193
    :cond_c
    if-lez v2, :cond_d

    .line 194
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Moved "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Move;->dirCopyMap:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->size()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " empty director"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Move;->dirCopyMap:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->size()I

    move-result v0

    const-string v1, "y"

    if-ne v0, v5, :cond_e

    const-string v0, "y"

    :goto_7
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " to "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " empty director"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    if-ne v2, v5, :cond_f

    move-object v0, v1

    :goto_8
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " under "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Move;->destDir:Ljava/io/File;

    .line 200
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 194
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/Move;->log(Ljava/lang/String;)V

    .line 203
    :cond_d
    return-void

    .line 196
    :cond_e
    const-string v0, "ies"

    goto :goto_7

    .line 199
    :cond_f
    const-string v0, "ies"

    goto :goto_8
.end method

.method protected okToDelete(Ljava/io/File;)Z
    .registers 8

    const/4 v0, 0x0

    .line 264
    invoke-virtual {p1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v2

    .line 265
    if-nez v2, :cond_1

    .line 279
    :cond_0
    :goto_0
    return v0

    .line 269
    :cond_1
    array-length v3, v2

    move v1, v0

    :goto_1
    if-ge v1, v3, :cond_2

    aget-object v4, v2, v1

    .line 270
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 271
    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 272
    invoke-virtual {p0, v5}, Lorg/apache/tools/ant/taskdefs/Move;->okToDelete(Ljava/io/File;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 269
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 279
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected renameFile(Ljava/io/File;Ljava/io/File;ZZ)Z
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 342
    invoke-virtual {p2}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_0

    if-nez p3, :cond_0

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Move;->getFilterSets()Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Vector;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 343
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Move;->getFilterChains()Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Vector;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    move v0, v1

    .line 379
    :goto_0
    return v0

    .line 348
    :cond_1
    invoke-virtual {p2}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p2}, Ljava/io/File;->canWrite()Z

    move-result v2

    if-nez v2, :cond_2

    .line 349
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Move;->getForce()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 353
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Move;->getFileUtils()Lorg/apache/tools/ant/util/FileUtils;

    move-result-object v2

    invoke-virtual {v2, p2}, Lorg/apache/tools/ant/util/FileUtils;->tryHardToDelete(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 361
    :cond_2
    invoke-virtual {p2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    .line 362
    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_6

    .line 363
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 379
    :cond_3
    invoke-virtual {p1, p2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    goto :goto_0

    .line 354
    :cond_4
    new-instance v2, Ljava/io/IOException;

    const-string v3, "failed to delete read-only destination file %s"

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p2, v0, v1

    invoke-static {v3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 350
    :cond_5
    new-instance v2, Ljava/io/IOException;

    const-string v3, "can\'t replace read-only destination file %s"

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p2, v0, v1

    invoke-static {v3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 364
    :cond_6
    invoke-virtual {p2}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 365
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Move;->getFileUtils()Lorg/apache/tools/ant/util/FileUtils;

    move-result-object v2

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/tools/ant/util/FileUtils;->normalize(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object p1

    .line 366
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Move;->getFileUtils()Lorg/apache/tools/ant/util/FileUtils;

    move-result-object v2

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/tools/ant/util/FileUtils;->normalize(Ljava/lang/String;)Ljava/io/File;

    move-result-object p2

    .line 367
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 369
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Rename of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " is a no-op."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {p0, v1, v2}, Lorg/apache/tools/ant/taskdefs/Move;->log(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 373
    :cond_7
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Move;->getFileUtils()Lorg/apache/tools/ant/util/FileUtils;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Lorg/apache/tools/ant/util/FileUtils;->areSame(Ljava/io/File;Ljava/io/File;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 374
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Move;->getFileUtils()Lorg/apache/tools/ant/util/FileUtils;

    move-result-object v2

    iget-boolean v3, p0, Lorg/apache/tools/ant/taskdefs/Move;->performGc:Z

    invoke-virtual {v2, p2, v3}, Lorg/apache/tools/ant/util/FileUtils;->tryHardToDelete(Ljava/io/File;Z)Z

    move-result v2

    if-nez v2, :cond_3

    .line 375
    new-instance v2, Lorg/apache/tools/ant/BuildException;

    const-string v3, "Unable to remove existing file %s"

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p2, v0, v1

    invoke-direct {v2, v3, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v2
.end method

.method public setPerformGcOnFailedDelete(Z)V
    .registers 2

    .line 78
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/Move;->performGc:Z

    .line 79
    return-void
.end method

.method protected validateAttributes()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 84
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Move;->file:Ljava/io/File;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Move;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 85
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Move;->destFile:Ljava/io/File;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Move;->destDir:Ljava/io/File;

    if-nez v0, :cond_2

    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Move;->destFile:Ljava/io/File;

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Move;->destDir:Ljava/io/File;

    if-eqz v0, :cond_2

    .line 89
    :cond_1
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Move;->destFile:Ljava/io/File;

    if-nez v0, :cond_3

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Move;->destDir:Ljava/io/File;

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Move;->file:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :goto_0
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Move;->destFile:Ljava/io/File;

    .line 90
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Move;->destDir:Ljava/io/File;

    if-nez v0, :cond_4

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Move;->destFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Move;->destDir:Ljava/io/File;

    .line 92
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Move;->completeDirMap:Ljava/util/Hashtable;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Move;->file:Ljava/io/File;

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Move;->destFile:Ljava/io/File;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Move;->file:Ljava/io/File;

    .line 97
    :goto_2
    return-void

    .line 87
    :cond_2
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "One and only one of tofile and todir must be set."

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 89
    :cond_3
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Move;->destFile:Ljava/io/File;

    goto :goto_0

    .line 90
    :cond_4
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Move;->destDir:Ljava/io/File;

    goto :goto_1

    .line 95
    :cond_5
    invoke-super {p0}, Lorg/apache/tools/ant/taskdefs/Copy;->validateAttributes()V

    goto :goto_2
.end method
