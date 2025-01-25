.class public Lorg/apache/tools/ant/taskdefs/ManifestClassPath;
.super Lorg/apache/tools/ant/Task;
.source "ManifestClassPath.java"


# instance fields
.field private dir:Ljava/io/File;

.field private maxParentLevels:I

.field private name:Ljava/lang/String;

.field private path:Lorg/apache/tools/ant/types/Path;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 35
    invoke-direct {p0}, Lorg/apache/tools/ant/Task;-><init>()V

    .line 44
    const/4 v0, 0x2

    iput v0, p0, Lorg/apache/tools/ant/taskdefs/ManifestClassPath;->maxParentLevels:I

    return-void
.end method


# virtual methods
.method public addClassPath(Lorg/apache/tools/ant/types/Path;)V
    .registers 2

    .line 173
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/ManifestClassPath;->path:Lorg/apache/tools/ant/types/Path;

    .line 174
    return-void
.end method

.method public execute()V
    .registers 16

    const/4 v14, 0x1

    const/16 v13, 0x2f

    const/4 v1, 0x0

    .line 56
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/ManifestClassPath;->name:Ljava/lang/String;

    if-eqz v0, :cond_11f

    .line 59
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/ManifestClassPath;->dir:Ljava/io/File;

    if-eqz v0, :cond_117

    .line 62
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/ManifestClassPath;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/ManifestClassPath;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lorg/apache/tools/ant/Project;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_109

    .line 65
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/ManifestClassPath;->path:Lorg/apache/tools/ant/types/Path;

    if-eqz v0, :cond_101

    .line 69
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move v0, v1

    .line 70
    :goto_22
    iget v3, p0, Lorg/apache/tools/ant/taskdefs/ManifestClassPath;->maxParentLevels:I

    add-int/lit8 v3, v3, 0x1

    if-ge v0, v3, :cond_30

    .line 71
    const-string v3, "../"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    add-int/lit8 v0, v0, 0x1

    goto :goto_22

    .line 73
    :cond_30
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 76
    invoke-static {}, Lorg/apache/tools/ant/util/FileUtils;->getFileUtils()Lorg/apache/tools/ant/util/FileUtils;

    move-result-object v5

    .line 77
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/ManifestClassPath;->dir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lorg/apache/tools/ant/util/FileUtils;->normalize(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/ManifestClassPath;->dir:Ljava/io/File;

    .line 79
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 80
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/ManifestClassPath;->path:Lorg/apache/tools/ant/types/Path;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Path;->list()[Ljava/lang/String;

    move-result-object v7

    array-length v8, v7

    move v3, v1

    :goto_51
    if-ge v3, v8, :cond_ef

    aget-object v0, v7, v3

    .line 82
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 83
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    .line 84
    invoke-virtual {v5, v9}, Lorg/apache/tools/ant/util/FileUtils;->normalize(Ljava/lang/String;)Ljava/io/File;

    move-result-object v10

    .line 86
    :try_start_62
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/ManifestClassPath;->dir:Ljava/io/File;

    invoke-virtual {v0, v10}, Ljava/io/File;->equals(Ljava/lang/Object;)Z
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_62 .. :try_end_67} :catch_cd

    move-result v0

    if-eqz v0, :cond_b5

    .line 90
    const-string v2, "."

    .line 95
    :goto_6c
    :try_start_6c
    invoke-virtual {v10}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    .line 97
    sget-char v11, Ljava/io/File;->separatorChar:C

    if-eq v11, v13, :cond_7c

    .line 98
    sget-char v11, Ljava/io/File;->separatorChar:C

    .line 99
    const/16 v12, 0x2f

    invoke-virtual {v0, v11, v12}, Ljava/lang/String;->replace(CC)Ljava/lang/String;
    :try_end_7b
    .catch Ljava/lang/Exception; {:try_start_6c .. :try_end_7b} :catch_cd

    move-result-object v0

    .line 105
    :cond_7c
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_bc

    .line 109
    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_bc

    .line 114
    invoke-virtual {v10}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_127

    const-string v0, "/"

    invoke-virtual {v2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_127

    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 117
    :goto_a5
    invoke-static {v0}, Lorg/apache/tools/ant/launch/Locator;->encodeURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 122
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    const/16 v0, 0x20

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 80
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_51

    .line 92
    :cond_b5
    :try_start_b5
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/ManifestClassPath;->dir:Ljava/io/File;

    invoke-static {v0, v10}, Lorg/apache/tools/ant/util/FileUtils;->getRelativePath(Ljava/io/File;Ljava/io/File;)Ljava/lang/String;
    :try_end_ba
    .catch Ljava/lang/Exception; {:try_start_b5 .. :try_end_ba} :catch_cd

    move-result-object v2

    goto :goto_6c

    .line 110
    :cond_bc
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v2, "No suitable relative path from %s to %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/ManifestClassPath;->dir:Ljava/io/File;

    aput-object v4, v3, v1

    aput-object v9, v3, v14

    invoke-direct {v0, v2, v3}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 101
    :catch_cd
    move-exception v0

    .line 102
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error trying to get the relative path from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/ManifestClassPath;->dir:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 127
    :cond_ef
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/ManifestClassPath;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/ManifestClassPath;->name:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/apache/tools/ant/Project;->setNewProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    return-void

    .line 66
    :cond_101
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Missing nested <classpath>!"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 63
    :cond_109
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v2, "Property \'%s\' already set!"

    new-array v3, v14, [Ljava/lang/Object;

    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/ManifestClassPath;->name:Ljava/lang/String;

    aput-object v4, v3, v1

    invoke-direct {v0, v2, v3}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 60
    :cond_117
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Missing \'jarfile\' attribute!"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 57
    :cond_11f
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Missing \'property\' attribute!"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_127
    move-object v0, v2

    goto/16 :goto_a5
.end method

.method public setJarFile(Ljava/io/File;)V
    .registers 7

    .line 146
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 147
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 150
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/ManifestClassPath;->dir:Ljava/io/File;

    .line 151
    return-void

    .line 148
    :cond_d
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    const-string v2, "Jar\'s directory not found: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-direct {v1, v2, v3}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1
.end method

.method public setMaxParentLevels(I)V
    .registers 4

    .line 160
    if-ltz p1, :cond_5

    .line 164
    iput p1, p0, Lorg/apache/tools/ant/taskdefs/ManifestClassPath;->maxParentLevels:I

    .line 165
    return-void

    .line 161
    :cond_5
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "maxParentLevels must not be a negative number"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setProperty(Ljava/lang/String;)V
    .registers 2

    .line 136
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/ManifestClassPath;->name:Ljava/lang/String;

    .line 137
    return-void
.end method
