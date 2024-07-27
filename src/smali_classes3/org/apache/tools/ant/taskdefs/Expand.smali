.class public Lorg/apache/tools/ant/taskdefs/Expand;
.super Lorg/apache/tools/ant/Task;
.source "Expand.java"


# static fields
.field private static final BUFFER_SIZE:I = 0x400

.field public static final ERROR_MULTIPLE_MAPPERS:Ljava/lang/String; = "Cannot define more than one mapper"

.field private static final FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

.field public static final NATIVE_ENCODING:Ljava/lang/String; = "native-encoding"


# instance fields
.field private allowFilesToEscapeDest:Ljava/lang/Boolean;

.field private dest:Ljava/io/File;

.field private encoding:Ljava/lang/String;

.field private failOnEmptyArchive:Z

.field private mapperElement:Lorg/apache/tools/ant/types/Mapper;

.field private overwrite:Z

.field private patternsets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/tools/ant/types/PatternSet;",
            ">;"
        }
    .end annotation
.end field

.field private resources:Lorg/apache/tools/ant/types/resources/Union;

.field private resourcesSpecified:Z

.field private scanForUnicodeExtraFields:Z

.field private source:Ljava/io/File;

.field private stripAbsolutePathSpec:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 67
    invoke-static {}, Lorg/apache/tools/ant/util/FileUtils;->getFileUtils()Lorg/apache/tools/ant/util/FileUtils;

    move-result-object v0

    sput-object v0, Lorg/apache/tools/ant/taskdefs/Expand;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 88
    const-string v0, "UTF8"

    invoke-direct {p0, v0}, Lorg/apache/tools/ant/taskdefs/Expand;-><init>(Ljava/lang/String;)V

    .line 89
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .registers 6

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 97
    invoke-direct {p0}, Lorg/apache/tools/ant/Task;-><init>()V

    .line 72
    iput-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/Expand;->overwrite:Z

    .line 73
    iput-object v3, p0, Lorg/apache/tools/ant/taskdefs/Expand;->mapperElement:Lorg/apache/tools/ant/types/Mapper;

    .line 74
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Expand;->patternsets:Ljava/util/List;

    .line 75
    new-instance v0, Lorg/apache/tools/ant/types/resources/Union;

    invoke-direct {v0}, Lorg/apache/tools/ant/types/resources/Union;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Expand;->resources:Lorg/apache/tools/ant/types/resources/Union;

    .line 76
    iput-boolean v2, p0, Lorg/apache/tools/ant/taskdefs/Expand;->resourcesSpecified:Z

    .line 77
    iput-boolean v2, p0, Lorg/apache/tools/ant/taskdefs/Expand;->failOnEmptyArchive:Z

    .line 78
    iput-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/Expand;->stripAbsolutePathSpec:Z

    .line 79
    iput-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/Expand;->scanForUnicodeExtraFields:Z

    .line 80
    iput-object v3, p0, Lorg/apache/tools/ant/taskdefs/Expand;->allowFilesToEscapeDest:Ljava/lang/Boolean;

    .line 98
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Expand;->encoding:Ljava/lang/String;

    .line 99
    return-void
.end method


# virtual methods
.method public add(Lorg/apache/tools/ant/types/ResourceCollection;)V
    .registers 3

    .line 429
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Expand;->resourcesSpecified:Z

    .line 430
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Expand;->resources:Lorg/apache/tools/ant/types/resources/Union;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/resources/Union;->add(Lorg/apache/tools/ant/types/ResourceCollection;)V

    .line 431
    return-void
.end method

.method public add(Lorg/apache/tools/ant/util/FileNameMapper;)V
    .registers 3

    .line 454
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Expand;->createMapper()Lorg/apache/tools/ant/types/Mapper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/Mapper;->add(Lorg/apache/tools/ant/util/FileNameMapper;)V

    .line 455
    return-void
.end method

.method public addFileset(Lorg/apache/tools/ant/types/FileSet;)V
    .registers 2

    .line 420
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/taskdefs/Expand;->add(Lorg/apache/tools/ant/types/ResourceCollection;)V

    .line 421
    return-void
.end method

.method public addPatternset(Lorg/apache/tools/ant/types/PatternSet;)V
    .registers 3

    .line 412
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Expand;->patternsets:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 413
    return-void
.end method

.method public createMapper()Lorg/apache/tools/ant/types/Mapper;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 440
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Expand;->mapperElement:Lorg/apache/tools/ant/types/Mapper;

    if-nez v0, :cond_0

    .line 444
    new-instance v0, Lorg/apache/tools/ant/types/Mapper;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Expand;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/types/Mapper;-><init>(Lorg/apache/tools/ant/Project;)V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Expand;->mapperElement:Lorg/apache/tools/ant/types/Mapper;

    .line 445
    return-object v0

    .line 441
    :cond_0
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Cannot define more than one mapper"

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Expand;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v0
.end method

.method public execute()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 128
    const-string v0, "expand"

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Expand;->getTaskType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    const-string v0, "!! expand is deprecated. Use unzip instead. !!"

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/Expand;->log(Ljava/lang/String;)V

    .line 132
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Expand;->source:Ljava/io/File;

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Expand;->resourcesSpecified:Z

    if-eqz v0, :cond_4

    .line 137
    :cond_1
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Expand;->dest:Ljava/io/File;

    if-eqz v0, :cond_b

    .line 142
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Expand;->dest:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 146
    :cond_2
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Expand;->source:Ljava/io/File;

    if-eqz v0, :cond_3

    .line 147
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_8

    .line 151
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Expand;->source:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 154
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Expand;->source:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 157
    sget-object v0, Lorg/apache/tools/ant/taskdefs/Expand;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Expand;->source:Ljava/io/File;

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Expand;->dest:Ljava/io/File;

    invoke-virtual {p0, v0, v1, v2}, Lorg/apache/tools/ant/taskdefs/Expand;->expandFile(Lorg/apache/tools/ant/util/FileUtils;Ljava/io/File;Ljava/io/File;)V

    .line 159
    :cond_3
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Expand;->resources:Lorg/apache/tools/ant/types/resources/Union;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/resources/Union;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/types/Resource;

    .line 160
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Resource;->isExists()Z

    move-result v1

    if-nez v1, :cond_9

    .line 161
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Skipping \'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Resource;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\' because it doesn\'t exist."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/Expand;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 133
    :cond_4
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "src attribute and/or resources must be specified"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 143
    :cond_5
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Dest must be a directory."

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Expand;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v0

    .line 155
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "src \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Expand;->source:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\' cannot be read."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 152
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "src \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Expand;->source:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\' doesn\'t exist."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 148
    :cond_8
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Src must not be a directory. Use nested filesets instead."

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Expand;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v0

    .line 165
    :cond_9
    const-class v1, Lorg/apache/tools/ant/types/resources/FileProvider;

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Resource;->as(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/tools/ant/types/resources/FileProvider;

    .line 166
    if-eqz v1, :cond_a

    .line 167
    sget-object v0, Lorg/apache/tools/ant/taskdefs/Expand;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    invoke-interface {v1}, Lorg/apache/tools/ant/types/resources/FileProvider;->getFile()Ljava/io/File;

    move-result-object v1

    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/Expand;->dest:Ljava/io/File;

    invoke-virtual {p0, v0, v1, v3}, Lorg/apache/tools/ant/taskdefs/Expand;->expandFile(Lorg/apache/tools/ant/util/FileUtils;Ljava/io/File;Ljava/io/File;)V

    goto/16 :goto_0

    .line 169
    :cond_a
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Expand;->dest:Ljava/io/File;

    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/Expand;->expandResource(Lorg/apache/tools/ant/types/Resource;Ljava/io/File;)V

    goto/16 :goto_0

    .line 138
    :cond_b
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Dest attribute must be specified"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 172
    :cond_c
    return-void
.end method

.method protected expandFile(Lorg/apache/tools/ant/util/FileUtils;Ljava/io/File;Ljava/io/File;)V
    .registers 16

    const/4 v0, 0x1

    const/4 v9, 0x0

    .line 182
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expanding: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " into "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {p0, v1, v2}, Lorg/apache/tools/ant/taskdefs/Expand;->log(Ljava/lang/String;I)V

    .line 183
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Expand;->getMapper()Lorg/apache/tools/ant/util/FileNameMapper;

    move-result-object v8

    .line 184
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 190
    :try_start_0
    new-instance v10, Lorg/apache/tools/zip/ZipFile;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Expand;->encoding:Ljava/lang/String;

    iget-boolean v2, p0, Lorg/apache/tools/ant/taskdefs/Expand;->scanForUnicodeExtraFields:Z

    invoke-direct {v10, p2, v1, v2}, Lorg/apache/tools/zip/ZipFile;-><init>(Ljava/io/File;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 192
    :try_start_1
    invoke-virtual {v10}, Lorg/apache/tools/zip/ZipFile;->getEntries()Ljava/util/Enumeration;

    move-result-object v11

    .line 193
    :goto_0
    invoke-interface {v11}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 194
    invoke-interface {v11}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/zip/ZipEntry;

    .line 195
    const/4 v4, 0x0

    .line 197
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "extracting "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/apache/tools/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {p0, v1, v2}, Lorg/apache/tools/ant/taskdefs/Expand;->log(Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 199
    :try_start_2
    invoke-virtual {v10, v0}, Lorg/apache/tools/zip/ZipFile;->getInputStream(Lorg/apache/tools/zip/ZipEntry;)Ljava/io/InputStream;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v4

    .line 201
    :try_start_3
    invoke-virtual {v0}, Lorg/apache/tools/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/util/Date;

    invoke-virtual {v0}, Lorg/apache/tools/zip/ZipEntry;->getTime()J

    move-result-wide v2

    invoke-direct {v6, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 202
    invoke-virtual {v0}, Lorg/apache/tools/zip/ZipEntry;->isDirectory()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    move-result v7

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 199
    :try_start_4
    invoke-virtual/range {v0 .. v8}, Lorg/apache/tools/ant/taskdefs/Expand;->extractFile(Lorg/apache/tools/ant/util/FileUtils;Ljava/io/File;Ljava/io/File;Ljava/io/InputStream;Ljava/lang/String;Ljava/util/Date;ZLorg/apache/tools/ant/util/FileNameMapper;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 204
    :try_start_5
    invoke-static {v4}, Lorg/apache/tools/ant/util/FileUtils;->close(Ljava/io/InputStream;)V

    move v0, v9

    .line 205
    goto :goto_0

    .line 204
    :catchall_0
    move-exception v0

    :goto_1
    invoke-static {v4}, Lorg/apache/tools/ant/util/FileUtils;->close(Ljava/io/InputStream;)V

    .line 205
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 190
    :catchall_1
    move-exception v0

    :try_start_6
    invoke-virtual {v10}, Lorg/apache/tools/zip/ZipFile;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :goto_2
    :try_start_7
    throw v0
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    .line 211
    :catch_0
    move-exception v0

    .line 212
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error while expanding "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 207
    :cond_0
    if-eqz v0, :cond_1

    :try_start_8
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Expand;->getFailOnEmptyArchive()Z

    move-result v0

    if-nez v0, :cond_2

    .line 210
    :cond_1
    const-string v0, "expand complete"

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/Expand;->log(Ljava/lang/String;I)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 211
    :try_start_9
    invoke-virtual {v10}, Lorg/apache/tools/zip/ZipFile;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0

    .line 216
    return-void

    .line 208
    :cond_2
    :try_start_a
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "archive \'%s\' is empty"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 185
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to expand "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " as the file does not exist"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 188
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Expand;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v1

    .line 204
    :catchall_2
    move-exception v0

    goto :goto_1

    .line 190
    :catchall_3
    move-exception v1

    goto :goto_2

    .line 204
    :catchall_4
    move-exception v0

    goto :goto_1
.end method

.method protected expandResource(Lorg/apache/tools/ant/types/Resource;Ljava/io/File;)V
    .registers 5

    .line 226
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "only filesystem based resources are supported by this task."

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected extractFile(Lorg/apache/tools/ant/util/FileUtils;Ljava/io/File;Ljava/io/File;Ljava/io/InputStream;Ljava/lang/String;Ljava/util/Date;ZLorg/apache/tools/ant/util/FileNameMapper;)V
    .registers 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 260
    invoke-virtual/range {p5 .. p5}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_7

    .line 261
    const/4 v2, 0x0

    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    sget-char v3, Ljava/io/File;->separatorChar:C

    if-eq v2, v3, :cond_0

    .line 262
    const/4 v2, 0x0

    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2f

    if-eq v2, v3, :cond_0

    .line 263
    const/4 v2, 0x0

    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x5c

    if-ne v2, v3, :cond_7

    :cond_0
    const/4 v2, 0x1

    .line 264
    :goto_0
    iget-boolean v3, p0, Lorg/apache/tools/ant/taskdefs/Expand;->stripAbsolutePathSpec:Z

    if-eqz v3, :cond_1

    if-eqz v2, :cond_1

    .line 265
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "stripped absolute path spec from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p5

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual {p0, v3, v4}, Lorg/apache/tools/ant/taskdefs/Expand;->log(Ljava/lang/String;I)V

    .line 267
    const/4 v3, 0x1

    move-object/from16 v0, p5

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p5

    .line 269
    :cond_1
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Expand;->getAllowFilesToEscapeDest()Ljava/lang/Boolean;

    move-result-object v4

    if-eq v3, v4, :cond_2

    .line 270
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Expand;->getAllowFilesToEscapeDest()Ljava/lang/Boolean;

    move-result-object v3

    if-nez v3, :cond_8

    iget-boolean v3, p0, Lorg/apache/tools/ant/taskdefs/Expand;->stripAbsolutePathSpec:Z

    if-nez v3, :cond_8

    if-eqz v2, :cond_8

    :cond_2
    const/4 v2, 0x1

    move v3, v2

    .line 272
    :goto_1
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Expand;->patternsets:Ljava/util/List;

    if-eqz v2, :cond_10

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_10

    .line 273
    const/16 v2, 0x2f

    sget-char v4, Ljava/io/File;->separatorChar:C

    move-object/from16 v0, p5

    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    sget-char v4, Ljava/io/File;->separatorChar:C

    .line 274
    const/16 v5, 0x5c

    invoke-virtual {v2, v5, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v7

    .line 276
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    .line 277
    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    .line 278
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Expand;->patternsets:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/tools/ant/types/PatternSet;

    .line 279
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Expand;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/apache/tools/ant/types/PatternSet;->getIncludePatterns(Lorg/apache/tools/ant/Project;)[Ljava/lang/String;

    move-result-object v4

    .line 280
    if-eqz v4, :cond_4

    array-length v5, v4

    if-nez v5, :cond_5

    .line 282
    :cond_4
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "**"

    aput-object v6, v4, v5

    .line 285
    :cond_5
    array-length v11, v4

    const/4 v5, 0x0

    move v6, v5

    :goto_2
    if-ge v6, v11, :cond_9

    aget-object v5, v4, v6

    .line 286
    const/16 v12, 0x2f

    sget-char v13, Ljava/io/File;->separatorChar:C

    invoke-virtual {v5, v12, v13}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v5

    sget-char v12, Ljava/io/File;->separatorChar:C

    .line 287
    const/16 v13, 0x5c

    invoke-virtual {v5, v13, v12}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v5

    .line 288
    sget-object v12, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 289
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "**"

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 291
    :cond_6
    invoke-interface {v8, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 285
    add-int/lit8 v5, v6, 0x1

    move v6, v5

    goto :goto_2

    .line 263
    :cond_7
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 270
    :cond_8
    const/4 v2, 0x0

    move v3, v2

    goto/16 :goto_1

    .line 294
    :cond_9
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Expand;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/apache/tools/ant/types/PatternSet;->getExcludePatterns(Lorg/apache/tools/ant/Project;)[Ljava/lang/String;

    move-result-object v5

    .line 295
    if-eqz v5, :cond_3

    .line 296
    array-length v6, v5

    const/4 v2, 0x0

    move v4, v2

    :goto_3
    if-ge v4, v6, :cond_3

    aget-object v2, v5, v4

    .line 297
    const/16 v11, 0x2f

    sget-char v12, Ljava/io/File;->separatorChar:C

    invoke-virtual {v2, v11, v12}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    sget-char v11, Ljava/io/File;->separatorChar:C

    .line 298
    const/16 v12, 0x5c

    invoke-virtual {v2, v12, v11}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    .line 299
    sget-object v11, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_a

    .line 300
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "**"

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 302
    :cond_a
    invoke-interface {v9, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 296
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_3

    .line 307
    :cond_b
    const/4 v4, 0x0

    .line 308
    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_c
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 309
    invoke-static {v2, v7}, Lorg/apache/tools/ant/types/selectors/SelectorUtils;->matchPath(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 310
    const/4 v2, 0x1

    move v4, v2

    .line 315
    :cond_d
    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_e
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 316
    invoke-static {v2, v7}, Lorg/apache/tools/ant/types/selectors/SelectorUtils;->matchPath(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 317
    const/4 v4, 0x0

    .line 322
    :cond_f
    if-nez v4, :cond_10

    .line 324
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "skipping "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " as it is excluded or not included."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {p0, v2, v3}, Lorg/apache/tools/ant/taskdefs/Expand;->log(Ljava/lang/String;I)V

    .line 376
    :goto_4
    return-void

    .line 272
    :cond_10
    move-object/from16 v0, p8

    move-object/from16 v1, p5

    invoke-interface {v0, v1}, Lorg/apache/tools/ant/util/FileNameMapper;->mapFileName(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 331
    if-eqz v2, :cond_11

    array-length v4, v2

    if-nez v4, :cond_12

    .line 332
    :cond_11
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p5, v2, v4

    .line 334
    :cond_12
    const/4 v4, 0x0

    aget-object v2, v2, v4

    move-object/from16 v0, p3

    invoke-virtual {p1, v0, v2}, Lorg/apache/tools/ant/util/FileUtils;->resolveFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    .line 335
    if-nez v3, :cond_13

    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {p1, v0, v4, v2}, Lorg/apache/tools/ant/util/FileUtils;->isLeadingPath(Ljava/io/File;Ljava/io/File;Z)Z

    move-result v2

    if-nez v2, :cond_13

    .line 336
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "skipping "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " as its target "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is outside of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 337
    invoke-virtual/range {p3 .. p3}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 336
    const/4 v3, 0x3

    invoke-virtual {p0, v2, v3}, Lorg/apache/tools/ant/taskdefs/Expand;->log(Ljava/lang/String;I)V

    goto :goto_4

    .line 342
    :cond_13
    :try_start_0
    iget-boolean v2, p0, Lorg/apache/tools/ant/taskdefs/Expand;->overwrite:Z

    if-nez v2, :cond_14

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_14

    .line 343
    invoke-virtual {v4}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    invoke-virtual/range {p6 .. p6}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    cmp-long v2, v2, v6

    if-ltz v2, :cond_14

    .line 344
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Skipping "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " as it is up-to-date"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {p0, v2, v3}, Lorg/apache/tools/ant/taskdefs/Expand;->log(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_4

    .line 370
    :catch_0
    move-exception v2

    .line 371
    :goto_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to expand to file "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {p0, v3, v2, v4}, Lorg/apache/tools/ant/taskdefs/Expand;->log(Ljava/lang/String;Ljava/lang/Throwable;I)V

    goto/16 :goto_4

    .line 349
    :cond_14
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "expanding "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {p0, v2, v3}, Lorg/apache/tools/ant/taskdefs/Expand;->log(Ljava/lang/String;I)V

    .line 352
    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    .line 353
    if-eqz v2, :cond_15

    .line 354
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 357
    :cond_15
    if-eqz p7, :cond_17

    .line 358
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 369
    :cond_16
    :goto_6
    :try_start_2
    invoke-virtual/range {p6 .. p6}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {p1, v4, v2, v3}, Lorg/apache/tools/ant/util/FileUtils;->setFileLastModified(Ljava/io/File;J)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_4

    .line 370
    :catch_1
    move-exception v2

    goto :goto_5

    .line 360
    :cond_17
    const/16 v2, 0x400

    :try_start_3
    new-array v2, v2, [B

    .line 361
    invoke-virtual {v4}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v3

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/nio/file/OpenOption;

    invoke-static {v3, v5}, Ljava/nio/file/Files;->newOutputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/OutputStream;
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v3

    .line 363
    :goto_7
    :try_start_4
    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v5

    if-ltz v5, :cond_19

    .line 364
    const/4 v6, 0x0

    invoke-virtual {v3, v2, v6, v5}, Ljava/io/OutputStream;->write([BII)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_7

    .line 361
    :catchall_0
    move-exception v2

    if-eqz v3, :cond_18

    :try_start_5
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :cond_18
    :goto_8
    :try_start_6
    throw v2

    .line 366
    :cond_19
    if-eqz v3, :cond_16

    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_6

    .line 361
    :catchall_1
    move-exception v3

    goto :goto_8
.end method

.method public getAllowFilesToEscapeDest()Ljava/lang/Boolean;
    .registers 2

    .line 551
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Expand;->allowFilesToEscapeDest:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getEncoding()Ljava/lang/String;
    .registers 2

    .line 490
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Expand;->encoding:Ljava/lang/String;

    return-object v0
.end method

.method public getFailOnEmptyArchive()Z
    .registers 2

    .line 118
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Expand;->failOnEmptyArchive:Z

    return v0
.end method

.method protected getMapper()Lorg/apache/tools/ant/util/FileNameMapper;
    .registers 2

    .line 235
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Expand;->mapperElement:Lorg/apache/tools/ant/types/Mapper;

    if-eqz v0, :cond_0

    .line 236
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Mapper;->getImplementation()Lorg/apache/tools/ant/util/FileNameMapper;

    move-result-object v0

    .line 238
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/apache/tools/ant/util/IdentityMapper;

    invoke-direct {v0}, Lorg/apache/tools/ant/util/IdentityMapper;-><init>()V

    goto :goto_0
.end method

.method public getScanForUnicodeExtraFields()Z
    .registers 2

    .line 530
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Expand;->scanForUnicodeExtraFields:Z

    return v0
.end method

.method protected internalSetEncoding(Ljava/lang/String;)V
    .registers 3

    .line 479
    const-string v0, "native-encoding"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 480
    const/4 p1, 0x0

    .line 482
    :cond_0
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Expand;->encoding:Ljava/lang/String;

    .line 483
    return-void
.end method

.method protected internalSetScanForUnicodeExtraFields(Z)V
    .registers 2

    .line 522
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/Expand;->scanForUnicodeExtraFields:Z

    .line 523
    return-void
.end method

.method public setAllowFilesToEscapeDest(Z)V
    .registers 3

    .line 540
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Expand;->allowFilesToEscapeDest:Ljava/lang/Boolean;

    .line 541
    return-void
.end method

.method public setDest(Ljava/io/File;)V
    .registers 2

    .line 386
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Expand;->dest:Ljava/io/File;

    .line 387
    return-void
.end method

.method public setEncoding(Ljava/lang/String;)V
    .registers 2

    .line 467
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/taskdefs/Expand;->internalSetEncoding(Ljava/lang/String;)V

    .line 468
    return-void
.end method

.method public setFailOnEmptyArchive(Z)V
    .registers 2

    .line 108
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/Expand;->failOnEmptyArchive:Z

    .line 109
    return-void
.end method

.method public setOverwrite(Z)V
    .registers 2

    .line 404
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/Expand;->overwrite:Z

    .line 405
    return-void
.end method

.method public setScanForUnicodeExtraFields(Z)V
    .registers 2

    .line 510
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/taskdefs/Expand;->internalSetScanForUnicodeExtraFields(Z)V

    .line 511
    return-void
.end method

.method public setSrc(Ljava/io/File;)V
    .registers 2

    .line 395
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Expand;->source:Ljava/io/File;

    .line 396
    return-void
.end method

.method public setStripAbsolutePathSpec(Z)V
    .registers 2

    .line 500
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/Expand;->stripAbsolutePathSpec:Z

    .line 501
    return-void
.end method
