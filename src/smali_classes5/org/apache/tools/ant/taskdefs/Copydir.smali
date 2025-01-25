.class public Lorg/apache/tools/ant/taskdefs/Copydir;
.super Lorg/apache/tools/ant/taskdefs/MatchingTask;
.source "Copydir.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private destDir:Ljava/io/File;

.field private filecopyList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private filtering:Z

.field private flatten:Z

.field private forceOverwrite:Z

.field private srcDir:Ljava/io/File;


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    .line 39
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/MatchingTask;-><init>()V

    .line 43
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Copydir;->filtering:Z

    .line 44
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Copydir;->flatten:Z

    .line 45
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Copydir;->forceOverwrite:Z

    .line 46
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Copydir;->filecopyList:Ljava/util/Map;

    return-void
.end method

.method private scanDir(Ljava/io/File;Ljava/io/File;[Ljava/lang/String;)V
    .registers 14

    .line 148
    array-length v2, p3

    const/4 v0, 0x0

    move v1, v0

    :goto_3
    if-ge v1, v2, :cond_45

    aget-object v3, p3, v1

    .line 149
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 151
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Copydir;->flatten:Z

    if-eqz v0, :cond_3f

    .line 152
    new-instance v0, Ljava/io/File;

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, p2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 156
    :goto_1e
    iget-boolean v3, p0, Lorg/apache/tools/ant/taskdefs/Copydir;->forceOverwrite:Z

    if-nez v3, :cond_2e

    .line 157
    invoke-virtual {v4}, Ljava/io/File;->lastModified()J

    move-result-wide v6

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v8

    cmp-long v3, v6, v8

    if-lez v3, :cond_3b

    .line 158
    :cond_2e
    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/Copydir;->filecopyList:Ljava/util/Map;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    .line 159
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 158
    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    :cond_3b
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    .line 154
    :cond_3f
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_1e

    .line 162
    :cond_45
    return-void
.end method


# virtual methods
.method public execute()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    const/4 v3, 0x1

    .line 100
    const-string v0, "DEPRECATED - The copydir task is deprecated.  Use copy instead."

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/Copydir;->log(Ljava/lang/String;)V

    .line 102
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Copydir;->srcDir:Ljava/io/File;

    if-eqz v0, :cond_114

    .line 107
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_ee

    .line 112
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Copydir;->destDir:Ljava/io/File;

    if-eqz v0, :cond_e2

    .line 117
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Copydir;->srcDir:Ljava/io/File;

    invoke-virtual {v1, v0}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 118
    const-string v0, "Warning: src == dest"

    invoke-virtual {p0, v0, v3}, Lorg/apache/tools/ant/taskdefs/Copydir;->log(Ljava/lang/String;I)V

    .line 121
    :cond_21
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Copydir;->srcDir:Ljava/io/File;

    invoke-super {p0, v0}, Lorg/apache/tools/ant/taskdefs/MatchingTask;->getDirectoryScanner(Ljava/io/File;)Lorg/apache/tools/ant/DirectoryScanner;

    move-result-object v0

    .line 124
    :try_start_27
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Copydir;->srcDir:Ljava/io/File;

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Copydir;->destDir:Ljava/io/File;

    invoke-virtual {v0}, Lorg/apache/tools/ant/DirectoryScanner;->getIncludedFiles()[Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v2, v0}, Lorg/apache/tools/ant/taskdefs/Copydir;->scanDir(Ljava/io/File;Ljava/io/File;[Ljava/lang/String;)V

    .line 125
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Copydir;->filecopyList:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_dc

    .line 126
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Copying "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Copydir;->filecopyList:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " file"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Copydir;->filecopyList:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I
    :try_end_57
    .catchall {:try_start_27 .. :try_end_57} :catchall_d2

    move-result v0

    if-ne v0, v3, :cond_d9

    const-string v0, ""

    :goto_5c
    :try_start_5c
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " to "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Copydir;->destDir:Ljava/io/File;

    .line 128
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 126
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/Copydir;->log(Ljava/lang/String;)V

    .line 129
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Copydir;->filecopyList:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_7e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_dc

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 130
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 131
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_96
    .catchall {:try_start_5c .. :try_end_96} :catchall_d2

    .line 133
    :try_start_96
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Copydir;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v3

    iget-boolean v4, p0, Lorg/apache/tools/ant/taskdefs/Copydir;->filtering:Z

    iget-boolean v5, p0, Lorg/apache/tools/ant/taskdefs/Copydir;->forceOverwrite:Z

    invoke-virtual {v3, v1, v0, v4, v5}, Lorg/apache/tools/ant/Project;->copyFile(Ljava/lang/String;Ljava/lang/String;ZZ)V
    :try_end_a1
    .catch Ljava/io/IOException; {:try_start_96 .. :try_end_a1} :catch_a2
    .catchall {:try_start_96 .. :try_end_a1} :catchall_d2

    goto :goto_7e

    .line 135
    :catch_a2
    move-exception v2

    .line 136
    :try_start_a3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to copy "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " to "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " due to "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 138
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Copydir;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v3

    invoke-direct {v1, v0, v2, v3}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lorg/apache/tools/ant/Location;)V

    throw v1
    :try_end_d2
    .catchall {:try_start_a3 .. :try_end_d2} :catchall_d2

    .line 143
    :catchall_d2
    move-exception v0

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Copydir;->filecopyList:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 144
    throw v0

    .line 127
    :cond_d9
    const-string v0, "s"

    goto :goto_5c

    .line 143
    :cond_dc
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Copydir;->filecopyList:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 144
    return-void

    .line 113
    :cond_e2
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "The dest attribute must be set."

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Copydir;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v0

    .line 108
    :cond_ee
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "srcdir "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Copydir;->srcDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " does not exist!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 109
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Copydir;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v1

    .line 103
    :cond_114
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "src attribute must be set!"

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Copydir;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v0
.end method

.method public setDest(Ljava/io/File;)V
    .registers 2

    .line 63
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Copydir;->destDir:Ljava/io/File;

    .line 64
    return-void
.end method

.method public setFiltering(Z)V
    .registers 2

    .line 72
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/Copydir;->filtering:Z

    .line 73
    return-void
.end method

.method public setFlatten(Z)V
    .registers 2

    .line 81
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/Copydir;->flatten:Z

    .line 82
    return-void
.end method

.method public setForceoverwrite(Z)V
    .registers 2

    .line 91
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/Copydir;->forceOverwrite:Z

    .line 92
    return-void
.end method

.method public setSrc(Ljava/io/File;)V
    .registers 2

    .line 54
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Copydir;->srcDir:Ljava/io/File;

    .line 55
    return-void
.end method
