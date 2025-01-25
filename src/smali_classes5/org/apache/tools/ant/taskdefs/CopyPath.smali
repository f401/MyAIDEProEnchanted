.class public Lorg/apache/tools/ant/taskdefs/CopyPath;
.super Lorg/apache/tools/ant/Task;
.source "CopyPath.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final ERROR_NO_DESTDIR:Ljava/lang/String; = "No destDir specified"

.field public static final ERROR_NO_MAPPER:Ljava/lang/String; = "No mapper specified"

.field public static final ERROR_NO_PATH:Ljava/lang/String; = "No path specified"

.field private static final FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;


# instance fields
.field private destDir:Ljava/io/File;

.field private granularity:J

.field private mapper:Lorg/apache/tools/ant/util/FileNameMapper;

.field private path:Lorg/apache/tools/ant/types/Path;

.field private preserveLastModified:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 56
    invoke-static {}, Lorg/apache/tools/ant/util/FileUtils;->getFileUtils()Lorg/apache/tools/ant/util/FileUtils;

    move-result-object v0

    sput-object v0, Lorg/apache/tools/ant/taskdefs/CopyPath;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 43
    invoke-direct {p0}, Lorg/apache/tools/ant/Task;-><init>()V

    .line 66
    sget-object v0, Lorg/apache/tools/ant/taskdefs/CopyPath;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    .line 67
    invoke-virtual {v0}, Lorg/apache/tools/ant/util/FileUtils;->getFileTimestampGranularity()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/tools/ant/taskdefs/CopyPath;->granularity:J

    .line 69
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/CopyPath;->preserveLastModified:Z

    return-void
.end method


# virtual methods
.method public add(Lorg/apache/tools/ant/util/FileNameMapper;)V
    .registers 4

    .line 85
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/CopyPath;->mapper:Lorg/apache/tools/ant/util/FileNameMapper;

    if-nez v0, :cond_7

    .line 88
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/CopyPath;->mapper:Lorg/apache/tools/ant/util/FileNameMapper;

    .line 89
    return-void

    .line 86
    :cond_7
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Only one mapper allowed"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public createPath()Lorg/apache/tools/ant/types/Path;
    .registers 3

    .line 117
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/CopyPath;->path:Lorg/apache/tools/ant/types/Path;

    if-nez v0, :cond_f

    .line 118
    new-instance v0, Lorg/apache/tools/ant/types/Path;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/CopyPath;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/types/Path;-><init>(Lorg/apache/tools/ant/Project;)V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/CopyPath;->path:Lorg/apache/tools/ant/types/Path;

    .line 120
    :cond_f
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/CopyPath;->path:Lorg/apache/tools/ant/types/Path;

    return-object v0
.end method

.method public execute()V
    .registers 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 169
    const-string v1, "This task should have never been released and was obsoleted by ResourceCollection support in <copy> available since Ant 1.7.0.  Don\'t use it."

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Lorg/apache/tools/ant/taskdefs/CopyPath;->log(Ljava/lang/String;I)V

    .line 174
    invoke-virtual/range {p0 .. p0}, Lorg/apache/tools/ant/taskdefs/CopyPath;->validateAttributes()V

    .line 175
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/tools/ant/taskdefs/CopyPath;->path:Lorg/apache/tools/ant/types/Path;

    invoke-virtual {v1}, Lorg/apache/tools/ant/types/Path;->list()[Ljava/lang/String;

    move-result-object v13

    .line 176
    array-length v1, v13

    if-nez v1, :cond_1f

    .line 177
    const-string v1, "Path is empty"

    const/4 v2, 0x3

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Lorg/apache/tools/ant/taskdefs/CopyPath;->log(Ljava/lang/String;I)V

    .line 215
    :cond_1e
    return-void

    .line 181
    :cond_1f
    array-length v14, v13

    const/4 v1, 0x0

    move v12, v1

    :goto_22
    if-ge v12, v14, :cond_1e

    aget-object v15, v13, v12

    .line 183
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 184
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/tools/ant/taskdefs/CopyPath;->mapper:Lorg/apache/tools/ant/util/FileNameMapper;

    invoke-interface {v1, v15}, Lorg/apache/tools/ant/util/FileNameMapper;->mapFileName(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    .line 185
    if-nez v16, :cond_39

    .line 189
    :cond_35
    add-int/lit8 v1, v12, 0x1

    move v12, v1

    goto :goto_22

    :cond_39
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v17, v0

    const/4 v1, 0x0

    move v11, v1

    :goto_40
    move/from16 v0, v17

    if-ge v11, v0, :cond_35

    aget-object v1, v16, v11

    .line 190
    new-instance v3, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/tools/ant/taskdefs/CopyPath;->destDir:Ljava/io/File;

    invoke-direct {v3, v4, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 192
    invoke-virtual {v2, v3}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_70

    .line 193
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Skipping self-copy of "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x3

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v3}, Lorg/apache/tools/ant/taskdefs/CopyPath;->log(Ljava/lang/String;I)V

    .line 212
    :goto_6c
    add-int/lit8 v1, v11, 0x1

    move v11, v1

    goto :goto_40

    .line 196
    :cond_70
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_8d

    .line 197
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Skipping directory "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/taskdefs/CopyPath;->log(Ljava/lang/String;)V

    goto :goto_6c

    .line 201
    :cond_8d
    :try_start_8d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Copying "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " to "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x3

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v4}, Lorg/apache/tools/ant/taskdefs/CopyPath;->log(Ljava/lang/String;I)V

    .line 203
    sget-object v1, Lorg/apache/tools/ant/taskdefs/CopyPath;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lorg/apache/tools/ant/taskdefs/CopyPath;->preserveLastModified:Z

    .line 204
    invoke-virtual/range {p0 .. p0}, Lorg/apache/tools/ant/taskdefs/CopyPath;->getProject()Lorg/apache/tools/ant/Project;
    :try_end_b5
    .catch Ljava/io/IOException; {:try_start_8d .. :try_end_b5} :catch_10f

    move-result-object v10

    .line 203
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    :try_start_bb
    invoke-virtual/range {v1 .. v10}, Lorg/apache/tools/ant/util/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;Lorg/apache/tools/ant/types/FilterSetCollection;Ljava/util/Vector;ZZLjava/lang/String;Ljava/lang/String;Lorg/apache/tools/ant/Project;)V
    :try_end_be
    .catch Ljava/io/IOException; {:try_start_bb .. :try_end_be} :catch_bf

    goto :goto_6c

    .line 205
    :catch_bf
    move-exception v1

    .line 206
    :goto_c0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to copy "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " to "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " due to "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 208
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_105

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v4

    if-nez v4, :cond_105

    .line 209
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " and I couldn\'t delete the corrupt "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 211
    :cond_105
    new-instance v3, Lorg/apache/tools/ant/BuildException;

    invoke-virtual/range {p0 .. p0}, Lorg/apache/tools/ant/taskdefs/CopyPath;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v4

    invoke-direct {v3, v2, v1, v4}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lorg/apache/tools/ant/Location;)V

    throw v3

    .line 205
    :catch_10f
    move-exception v1

    goto :goto_c0
.end method

.method public setDestDir(Ljava/io/File;)V
    .registers 2

    .line 76
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/CopyPath;->destDir:Ljava/io/File;

    .line 77
    return-void
.end method

.method public setGranularity(J)V
    .registers 4

    .line 131
    iput-wide p1, p0, Lorg/apache/tools/ant/taskdefs/CopyPath;->granularity:J

    .line 132
    return-void
.end method

.method public setPath(Lorg/apache/tools/ant/types/Path;)V
    .registers 3

    .line 98
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/CopyPath;->createPath()Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/Path;->append(Lorg/apache/tools/ant/types/Path;)V

    .line 99
    return-void
.end method

.method public setPathRef(Lorg/apache/tools/ant/types/Reference;)V
    .registers 3

    .line 108
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/CopyPath;->createPath()Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/Path;->setRefid(Lorg/apache/tools/ant/types/Reference;)V

    .line 109
    return-void
.end method

.method public setPreserveLastModified(Z)V
    .registers 2

    .line 140
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/CopyPath;->preserveLastModified:Z

    .line 141
    return-void
.end method

.method protected validateAttributes()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 151
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/CopyPath;->destDir:Ljava/io/File;

    if-eqz v0, :cond_1d

    .line 154
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/CopyPath;->mapper:Lorg/apache/tools/ant/util/FileNameMapper;

    if-eqz v0, :cond_15

    .line 157
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/CopyPath;->path:Lorg/apache/tools/ant/types/Path;

    if-eqz v0, :cond_d

    .line 160
    return-void

    .line 158
    :cond_d
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "No path specified"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 155
    :cond_15
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "No mapper specified"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 152
    :cond_1d
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "No destDir specified"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
