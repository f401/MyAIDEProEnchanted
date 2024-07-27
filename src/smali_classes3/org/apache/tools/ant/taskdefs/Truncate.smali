.class public Lorg/apache/tools/ant/taskdefs/Truncate;
.super Lorg/apache/tools/ant/Task;
.source "Truncate.java"


# static fields
.field private static final BUFFER_SIZE:I = 0x400

.field private static final FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

.field private static final FILL_BUFFER:[B

.field private static final INVALID_LENGTH:Ljava/lang/String; = "Cannot truncate to length "

.field private static final NO_CHILD:Ljava/lang/String; = "No files specified."

.field private static final READ_WRITE:Ljava/lang/String; = "rw"

.field private static final ZERO:Ljava/lang/Long;


# instance fields
.field private adjust:Ljava/lang/Long;

.field private create:Z

.field private length:Ljava/lang/Long;

.field private mkdirs:Z

.field private path:Lorg/apache/tools/ant/types/Path;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 43
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lorg/apache/tools/ant/taskdefs/Truncate;->ZERO:Ljava/lang/Long;

    .line 51
    invoke-static {}, Lorg/apache/tools/ant/util/FileUtils;->getFileUtils()Lorg/apache/tools/ant/util/FileUtils;

    move-result-object v0

    sput-object v0, Lorg/apache/tools/ant/taskdefs/Truncate;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    .line 53
    const/16 v0, 0x400

    new-array v0, v0, [B

    sput-object v0, Lorg/apache/tools/ant/taskdefs/Truncate;->FILL_BUFFER:[B

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 39
    invoke-direct {p0}, Lorg/apache/tools/ant/Task;-><init>()V

    .line 56
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Truncate;->create:Z

    .line 57
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Truncate;->mkdirs:Z

    return-void
.end method

.method private getPath()Lorg/apache/tools/ant/types/Path;
    .registers 3

    monitor-enter p0

    .line 199
    :try_start_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Truncate;->path:Lorg/apache/tools/ant/types/Path;

    if-nez v0, :cond_0

    .line 200
    new-instance v0, Lorg/apache/tools/ant/types/Path;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Truncate;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/types/Path;-><init>(Lorg/apache/tools/ant/Project;)V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Truncate;->path:Lorg/apache/tools/ant/types/Path;

    .line 202
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Truncate;->path:Lorg/apache/tools/ant/types/Path;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 198
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private process(Ljava/io/File;)V
    .registers 15

    const/4 v12, 0x1

    .line 160
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    .line 161
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Truncate;->length:Ljava/lang/Long;

    if-nez v2, :cond_0

    .line 162
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Truncate;->adjust:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    add-long/2addr v2, v0

    move-wide v4, v2

    .line 164
    :goto_0
    cmp-long v2, v0, v4

    if-nez v2, :cond_1

    .line 195
    :goto_1
    return-void

    .line 162
    :cond_0
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    move-wide v4, v2

    goto :goto_0

    .line 168
    :cond_1
    :try_start_0
    new-instance v3, Ljava/io/RandomAccessFile;

    const-string v2, "rw"

    invoke-direct {v3, p1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 173
    const-string v2, " closing "

    cmp-long v6, v4, v0

    if-lez v6, :cond_2

    .line 176
    :try_start_1
    invoke-virtual {v3, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 178
    :goto_2
    cmp-long v6, v0, v4

    if-gez v6, :cond_3

    .line 179
    sget-object v6, Lorg/apache/tools/ant/taskdefs/Truncate;->FILL_BUFFER:[B

    array-length v7, v6
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    int-to-long v8, v7

    sub-long v10, v4, v0

    :try_start_2
    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    .line 181
    const/4 v7, 0x0

    long-to-int v10, v8

    invoke-virtual {v3, v6, v7, v10}, Ljava/io/RandomAccessFile;->write([BII)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 182
    add-long/2addr v0, v8

    .line 183
    goto :goto_2

    .line 190
    :catchall_0
    move-exception v0

    move-object v1, v0

    .line 191
    :goto_3
    :try_start_3
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 195
    :goto_4
    throw v1

    .line 185
    :cond_2
    const-string v2, " closing "

    :try_start_4
    invoke-virtual {v3, v4, v5}, Ljava/io/RandomAccessFile;->setLength(J)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 191
    :cond_3
    :try_start_5
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_1

    .line 192
    :catch_0
    move-exception v0

    .line 193
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Caught "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v12}, Lorg/apache/tools/ant/taskdefs/Truncate;->log(Ljava/lang/String;I)V

    goto :goto_1

    .line 190
    :catchall_1
    move-exception v1

    const-string v0, " closing "

    :goto_5
    move-object v2, v0

    goto :goto_3

    .line 187
    :catch_1
    move-exception v1

    move-object v0, v2

    .line 188
    :goto_6
    :try_start_6
    new-instance v2, Lorg/apache/tools/ant/BuildException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception working with "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 190
    :catchall_2
    move-exception v1

    goto :goto_5

    .line 192
    :catch_2
    move-exception v0

    .line 193
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Caught "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v12}, Lorg/apache/tools/ant/taskdefs/Truncate;->log(Ljava/lang/String;I)V

    goto :goto_4

    .line 171
    :catch_3
    move-exception v0

    .line 172
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not open "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " for writing"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 187
    :catch_4
    move-exception v1

    move-object v0, v2

    goto :goto_6

    .line 190
    :catchall_3
    move-exception v1

    move-object v0, v2

    goto :goto_5
.end method

.method private shouldProcess(Ljava/io/File;)Z
    .registers 7

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 137
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 154
    :goto_0
    return v0

    .line 140
    :cond_0
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Truncate;->create:Z

    if-nez v0, :cond_1

    move v0, v2

    .line 141
    goto :goto_0

    .line 143
    :cond_1
    const/4 v0, 0x0

    .line 145
    :try_start_0
    sget-object v3, Lorg/apache/tools/ant/taskdefs/Truncate;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    iget-boolean v4, p0, Lorg/apache/tools/ant/taskdefs/Truncate;->mkdirs:Z

    invoke-virtual {v3, p1, v4}, Lorg/apache/tools/ant/util/FileUtils;->createNewFile(Ljava/io/File;Z)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_2

    move v0, v1

    .line 146
    goto :goto_0

    .line 148
    :catch_0
    move-exception v0

    .line 149
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to create "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 152
    if-nez v0, :cond_3

    .line 153
    invoke-virtual {p0, v3, v1}, Lorg/apache/tools/ant/taskdefs/Truncate;->log(Ljava/lang/String;I)V

    move v0, v2

    .line 154
    goto :goto_0

    .line 156
    :cond_3
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-direct {v1, v3, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public add(Lorg/apache/tools/ant/types/ResourceCollection;)V
    .registers 3

    .line 75
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/Truncate;->getPath()Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/Path;->add(Lorg/apache/tools/ant/types/ResourceCollection;)V

    .line 76
    return-void
.end method

.method public execute()V
    .registers 4

    .line 118
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Truncate;->length:Ljava/lang/Long;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Truncate;->adjust:Ljava/lang/Long;

    if-nez v1, :cond_3

    .line 122
    :cond_0
    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Truncate;->adjust:Ljava/lang/Long;

    if-nez v0, :cond_1

    .line 123
    sget-object v0, Lorg/apache/tools/ant/taskdefs/Truncate;->ZERO:Ljava/lang/Long;

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Truncate;->length:Ljava/lang/Long;

    .line 125
    :cond_1
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Truncate;->path:Lorg/apache/tools/ant/types/Path;

    if-eqz v0, :cond_4

    .line 128
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Path;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/types/Resource;

    .line 129
    const-class v2, Lorg/apache/tools/ant/types/resources/FileProvider;

    invoke-virtual {v0, v2}, Lorg/apache/tools/ant/types/Resource;->as(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/types/resources/FileProvider;

    invoke-interface {v0}, Lorg/apache/tools/ant/types/resources/FileProvider;->getFile()Ljava/io/File;

    move-result-object v0

    .line 130
    invoke-direct {p0, v0}, Lorg/apache/tools/ant/taskdefs/Truncate;->shouldProcess(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 131
    invoke-direct {p0, v0}, Lorg/apache/tools/ant/taskdefs/Truncate;->process(Ljava/io/File;)V

    goto :goto_0

    .line 119
    :cond_3
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "length and adjust are mutually exclusive options"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 126
    :cond_4
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "No files specified."

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 134
    :cond_5
    return-void
.end method

.method public setAdjust(Ljava/lang/Long;)V
    .registers 2

    .line 84
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Truncate;->adjust:Ljava/lang/Long;

    .line 85
    return-void
.end method

.method public setCreate(Z)V
    .registers 2

    .line 104
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/Truncate;->create:Z

    .line 105
    return-void
.end method

.method public setFile(Ljava/io/File;)V
    .registers 3

    .line 67
    new-instance v0, Lorg/apache/tools/ant/types/resources/FileResource;

    invoke-direct {v0, p1}, Lorg/apache/tools/ant/types/resources/FileResource;-><init>(Ljava/io/File;)V

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/Truncate;->add(Lorg/apache/tools/ant/types/ResourceCollection;)V

    .line 68
    return-void
.end method

.method public setLength(Ljava/lang/Long;)V
    .registers 6

    .line 93
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Truncate;->length:Ljava/lang/Long;

    .line 94
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    .line 97
    :cond_0
    return-void

    .line 95
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot truncate to length "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setMkdirs(Z)V
    .registers 2

    .line 113
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/Truncate;->mkdirs:Z

    .line 114
    return-void
.end method
