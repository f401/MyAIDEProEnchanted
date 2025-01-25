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
    :try_start_1
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Truncate;->path:Lorg/apache/tools/ant/types/Path;

    if-nez v0, :cond_10

    .line 200
    new-instance v0, Lorg/apache/tools/ant/types/Path;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Truncate;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/types/Path;-><init>(Lorg/apache/tools/ant/Project;)V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Truncate;->path:Lorg/apache/tools/ant/types/Path;

    .line 202
    :cond_10
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Truncate;->path:Lorg/apache/tools/ant/types/Path;
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_14

    monitor-exit p0

    return-object v0

    .line 198
    :catchall_14
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

    if-nez v2, :cond_16

    .line 162
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Truncate;->adjust:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    add-long/2addr v2, v0

    move-wide v4, v2

    .line 164
    :goto_11
    cmp-long v2, v0, v4

    if-nez v2, :cond_1c

    .line 195
    :goto_15
    return-void

    .line 162
    :cond_16
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    move-wide v4, v2

    goto :goto_11

    .line 168
    :cond_1c
    :try_start_1c
    new-instance v3, Ljava/io/RandomAccessFile;

    const-string v2, "rw"

    invoke-direct {v3, p1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_23} :catch_a8

    .line 173
    const-string v2, " closing "

    cmp-long v6, v4, v0

    if-lez v6, :cond_47

    .line 176
    :try_start_29
    invoke-virtual {v3, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 178
    :goto_2c
    cmp-long v6, v0, v4

    if-gez v6, :cond_4c

    .line 179
    sget-object v6, Lorg/apache/tools/ant/taskdefs/Truncate;->FILL_BUFFER:[B

    array-length v7, v6
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_33} :catch_c5
    .catchall {:try_start_29 .. :try_end_33} :catchall_c8

    int-to-long v8, v7

    sub-long v10, v4, v0

    :try_start_36
    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    .line 181
    const/4 v7, 0x0

    long-to-int v10, v8

    invoke-virtual {v3, v6, v7, v10}, Ljava/io/RandomAccessFile;->write([BII)V
    :try_end_3f
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_3f} :catch_71
    .catchall {:try_start_36 .. :try_end_3f} :catchall_41

    .line 182
    add-long/2addr v0, v8

    .line 183
    goto :goto_2c

    .line 190
    :catchall_41
    move-exception v0

    move-object v1, v0

    .line 191
    :goto_43
    :try_start_43
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_46
    .catch Ljava/io/IOException; {:try_start_43 .. :try_end_46} :catch_8c

    .line 195
    :goto_46
    throw v1

    .line 185
    :cond_47
    const-string v2, " closing "

    :try_start_49
    invoke-virtual {v3, v4, v5}, Ljava/io/RandomAccessFile;->setLength(J)V
    :try_end_4c
    .catch Ljava/io/IOException; {:try_start_49 .. :try_end_4c} :catch_71
    .catchall {:try_start_49 .. :try_end_4c} :catchall_6c

    .line 191
    :cond_4c
    :try_start_4c
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4f
    .catch Ljava/io/IOException; {:try_start_4c .. :try_end_4f} :catch_50

    goto :goto_15

    .line 192
    :catch_50
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

    goto :goto_15

    .line 190
    :catchall_6c
    move-exception v1

    const-string v0, " closing "

    :goto_6f
    move-object v2, v0

    goto :goto_43

    .line 187
    :catch_71
    move-exception v1

    move-object v0, v2

    .line 188
    :goto_73
    :try_start_73
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
    :try_end_8a
    .catchall {:try_start_73 .. :try_end_8a} :catchall_8a

    .line 190
    :catchall_8a
    move-exception v1

    goto :goto_6f

    .line 192
    :catch_8c
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

    goto :goto_46

    .line 171
    :catch_a8
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
    :catch_c5
    move-exception v1

    move-object v0, v2

    goto :goto_73

    .line 190
    :catchall_c8
    move-exception v1

    move-object v0, v2

    goto :goto_6f
.end method

.method private shouldProcess(Ljava/io/File;)Z
    .registers 7

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 137
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_a

    move v0, v1

    .line 154
    :goto_9
    return v0

    .line 140
    :cond_a
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Truncate;->create:Z

    if-nez v0, :cond_10

    move v0, v2

    .line 141
    goto :goto_9

    .line 143
    :cond_10
    const/4 v0, 0x0

    .line 145
    :try_start_11
    sget-object v3, Lorg/apache/tools/ant/taskdefs/Truncate;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    iget-boolean v4, p0, Lorg/apache/tools/ant/taskdefs/Truncate;->mkdirs:Z

    invoke-virtual {v3, p1, v4}, Lorg/apache/tools/ant/util/FileUtils;->createNewFile(Ljava/io/File;Z)Z
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_18} :catch_1d

    move-result v3

    if-eqz v3, :cond_1e

    move v0, v1

    .line 146
    goto :goto_9

    .line 148
    :catch_1d
    move-exception v0

    .line 149
    :cond_1e
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to create "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 152
    if-nez v0, :cond_36

    .line 153
    invoke-virtual {p0, v3, v1}, Lorg/apache/tools/ant/taskdefs/Truncate;->log(Ljava/lang/String;I)V

    move v0, v2

    .line 154
    goto :goto_9

    .line 156
    :cond_36
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

    if-eqz v0, :cond_8

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Truncate;->adjust:Ljava/lang/Long;

    if-nez v1, :cond_3c

    .line 122
    :cond_8
    if-nez v0, :cond_12

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Truncate;->adjust:Ljava/lang/Long;

    if-nez v0, :cond_12

    .line 123
    sget-object v0, Lorg/apache/tools/ant/taskdefs/Truncate;->ZERO:Ljava/lang/Long;

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Truncate;->length:Ljava/lang/Long;

    .line 125
    :cond_12
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Truncate;->path:Lorg/apache/tools/ant/types/Path;

    if-eqz v0, :cond_44

    .line 128
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Path;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1a
    :goto_1a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4c

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

    if-eqz v2, :cond_1a

    .line 131
    invoke-direct {p0, v0}, Lorg/apache/tools/ant/taskdefs/Truncate;->process(Ljava/io/File;)V

    goto :goto_1a

    .line 119
    :cond_3c
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "length and adjust are mutually exclusive options"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 126
    :cond_44
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "No files specified."

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 134
    :cond_4c
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
    if-eqz p1, :cond_e

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_f

    .line 97
    :cond_e
    return-void

    .line 95
    :cond_f
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
