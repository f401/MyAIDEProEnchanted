.class public final Lorg/xutils/common/util/ProcessLock;
.super Ljava/lang/Object;
.source "ProcessLock.java"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field private static final FORMAT:Ljava/text/DecimalFormat;

.field private static final LOCK_FILE_DIR:Ljava/lang/String; = "process_lock"

.field private static final LOCK_MAP:Lorg/xutils/common/util/DoubleKeyValueMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/xutils/common/util/DoubleKeyValueMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Lorg/xutils/common/util/ProcessLock;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mFile:Ljava/io/File;

.field private final mFileLock:Ljava/nio/channels/FileLock;

.field private final mLockName:Ljava/lang/String;

.field private final mStream:Ljava/io/Closeable;

.field private final mWriteMode:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 37
    new-instance v0, Lorg/xutils/common/util/DoubleKeyValueMap;

    invoke-direct {v0}, Lorg/xutils/common/util/DoubleKeyValueMap;-><init>()V

    sput-object v0, Lorg/xutils/common/util/ProcessLock;->LOCK_MAP:Lorg/xutils/common/util/DoubleKeyValueMap;

    .line 40
    invoke-static {}, Lorg/xutils/x;->app()Landroid/app/Application;

    move-result-object v0

    const-string v1, "process_lock"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Application;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    .line 41
    invoke-static {v0}, Lorg/xutils/common/util/IOUtil;->deleteFileOrDir(Ljava/io/File;)Z

    .line 146
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "0.##################"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/xutils/common/util/ProcessLock;->FORMAT:Ljava/text/DecimalFormat;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/io/File;Ljava/nio/channels/FileLock;Ljava/io/Closeable;Z)V
    .registers 6

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lorg/xutils/common/util/ProcessLock;->mLockName:Ljava/lang/String;

    .line 46
    iput-object p3, p0, Lorg/xutils/common/util/ProcessLock;->mFileLock:Ljava/nio/channels/FileLock;

    .line 47
    iput-object p2, p0, Lorg/xutils/common/util/ProcessLock;->mFile:Ljava/io/File;

    .line 48
    iput-object p4, p0, Lorg/xutils/common/util/ProcessLock;->mStream:Ljava/io/Closeable;

    .line 49
    iput-boolean p5, p0, Lorg/xutils/common/util/ProcessLock;->mWriteMode:Z

    .line 50
    return-void
.end method

.method private static customHash(Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    .line 150
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "0"

    .line 156
    :goto_8
    return-object v0

    .line 151
    :cond_9
    const-wide/16 v2, 0x0

    .line 152
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 153
    const/4 v0, 0x0

    :goto_10
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v0, v4, :cond_2c

    .line 154
    aget-byte v4, v1, v0

    int-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    const-wide v6, 0x406fe00000000000L  # 255.0

    mul-double/2addr v2, v6

    add-double/2addr v2, v4

    const-wide v4, 0x3f747ae147ae147bL  # 0.005

    mul-double/2addr v2, v4

    .line 153
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 156
    :cond_2c
    sget-object v0, Lorg/xutils/common/util/ProcessLock;->FORMAT:Ljava/text/DecimalFormat;

    invoke-virtual {v0, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    goto :goto_8
.end method

.method private static isValid(Ljava/nio/channels/FileLock;)Z
    .registers 2

    .line 117
    if-eqz p0, :cond_a

    invoke-virtual {p0}, Ljava/nio/channels/FileLock;->isValid()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private static release(Ljava/lang/String;Ljava/nio/channels/FileLock;Ljava/io/File;Ljava/io/Closeable;)V
    .registers 7

    .line 121
    sget-object v1, Lorg/xutils/common/util/ProcessLock;->LOCK_MAP:Lorg/xutils/common/util/DoubleKeyValueMap;

    monitor-enter v1

    .line 122
    if-eqz p1, :cond_33

    .line 124
    :try_start_5
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, p0, v0}, Lorg/xutils/common/util/DoubleKeyValueMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 125
    invoke-virtual {v1, p0}, Lorg/xutils/common/util/DoubleKeyValueMap;->get(Ljava/lang/Object;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    .line 126
    if-eqz v0, :cond_1c

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 127
    :cond_1c
    invoke-static {p2}, Lorg/xutils/common/util/IOUtil;->deleteFileOrDir(Ljava/io/File;)Z

    .line 130
    :cond_1f
    invoke-virtual {p1}, Ljava/nio/channels/FileLock;->channel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 131
    invoke-virtual {p1}, Ljava/nio/channels/FileLock;->release()V
    :try_end_2c
    .catchall {:try_start_5 .. :try_end_2c} :catchall_3d

    .line 136
    :cond_2c
    :try_start_2c
    invoke-virtual {p1}, Ljava/nio/channels/FileLock;->channel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    :goto_30
    invoke-static {v0}, Lorg/xutils/common/util/IOUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 140
    :cond_33
    invoke-static {p3}, Lorg/xutils/common/util/IOUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 142
    sget-object v0, Lorg/xutils/common/util/ProcessLock;->LOCK_MAP:Lorg/xutils/common/util/DoubleKeyValueMap;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 143
    monitor-exit v1
    :try_end_3c
    .catchall {:try_start_2c .. :try_end_3c} :catchall_53

    .line 144
    return-void

    .line 133
    :catchall_3d
    move-exception v0

    .line 134
    :try_start_3e
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_45
    .catchall {:try_start_3e .. :try_end_45} :catchall_4a

    .line 136
    :try_start_45
    invoke-virtual {p1}, Ljava/nio/channels/FileLock;->channel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    goto :goto_30

    :catchall_4a
    move-exception v0

    invoke-virtual {p1}, Ljava/nio/channels/FileLock;->channel()Ljava/nio/channels/FileChannel;

    move-result-object v2

    invoke-static {v2}, Lorg/xutils/common/util/IOUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 137
    throw v0

    .line 143
    :catchall_53
    move-exception v0

    monitor-exit v1
    :try_end_55
    .catchall {:try_start_45 .. :try_end_55} :catchall_53

    throw v0
.end method

.method public static tryLock(Ljava/lang/String;Z)Lorg/xutils/common/util/ProcessLock;
    .registers 3

    .line 60
    invoke-static {p0}, Lorg/xutils/common/util/ProcessLock;->customHash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lorg/xutils/common/util/ProcessLock;->tryLockInternal(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xutils/common/util/ProcessLock;

    move-result-object v0

    return-object v0
.end method

.method public static tryLock(Ljava/lang/String;ZJ)Lorg/xutils/common/util/ProcessLock;
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 72
    const/4 v0, 0x0

    .line 73
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 74
    invoke-static {p0}, Lorg/xutils/common/util/ProcessLock;->customHash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 75
    sget-object v4, Lorg/xutils/common/util/ProcessLock;->LOCK_MAP:Lorg/xutils/common/util/DoubleKeyValueMap;

    monitor-enter v4

    .line 76
    :goto_c
    :try_start_c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    add-long v8, v2, p2

    cmp-long v5, v6, v8

    if-gez v5, :cond_1c

    .line 77
    invoke-static {p0, v1, p1}, Lorg/xutils/common/util/ProcessLock;->tryLockInternal(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xutils/common/util/ProcessLock;

    move-result-object v0

    .line 78
    if-eqz v0, :cond_1e

    .line 89
    :cond_1c
    monitor-exit v4
    :try_end_1d
    .catchall {:try_start_c .. :try_end_1d} :catchall_28

    .line 91
    return-object v0

    .line 82
    :cond_1e
    :try_start_1e
    sget-object v5, Lorg/xutils/common/util/ProcessLock;->LOCK_MAP:Lorg/xutils/common/util/DoubleKeyValueMap;

    const-wide/16 v6, 0xa

    invoke-virtual {v5, v6, v7}, Ljava/lang/Object;->wait(J)V
    :try_end_25
    .catch Ljava/lang/InterruptedException; {:try_start_1e .. :try_end_25} :catch_26
    .catchall {:try_start_1e .. :try_end_25} :catchall_2b

    goto :goto_c

    .line 83
    :catch_26
    move-exception v0

    .line 84
    :try_start_27
    throw v0

    .line 89
    :catchall_28
    move-exception v0

    monitor-exit v4
    :try_end_2a
    .catchall {:try_start_27 .. :try_end_2a} :catchall_28

    throw v0

    .line 85
    :catchall_2b
    move-exception v5

    goto :goto_c
.end method

.method private static tryLockInternal(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xutils/common/util/ProcessLock;
    .registers 14

    const/4 v6, 0x0

    const/4 v8, 0x0

    .line 160
    sget-object v10, Lorg/xutils/common/util/ProcessLock;->LOCK_MAP:Lorg/xutils/common/util/DoubleKeyValueMap;

    monitor-enter v10

    .line 162
    :try_start_5
    invoke-virtual {v10, p0}, Lorg/xutils/common/util/DoubleKeyValueMap;->get(Ljava/lang/Object;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    .line 163
    if-eqz v0, :cond_4a

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4a

    .line 164
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 165
    :cond_19
    :goto_19
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 166
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 167
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xutils/common/util/ProcessLock;

    .line 168
    if-eqz v0, :cond_46

    .line 169
    invoke-virtual {v0}, Lorg/xutils/common/util/ProcessLock;->isValid()Z

    move-result v2

    if-nez v2, :cond_3a

    .line 170
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V
    :try_end_36
    .catchall {:try_start_5 .. :try_end_36} :catchall_37

    goto :goto_19

    .line 219
    :catchall_37
    move-exception v0

    :goto_38
    :try_start_38
    monitor-exit v10
    :try_end_39
    .catchall {:try_start_38 .. :try_end_39} :catchall_a0

    throw v0

    .line 171
    :cond_3a
    if-eqz p2, :cond_3f

    .line 172
    :try_start_3c
    monitor-exit v10

    move-object v2, v8

    .line 221
    :goto_3e
    return-object v2

    .line 173
    :cond_3f
    iget-boolean v0, v0, Lorg/xutils/common/util/ProcessLock;->mWriteMode:Z

    if-eqz v0, :cond_19

    .line 174
    monitor-exit v10

    move-object v2, v8

    goto :goto_3e

    .line 177
    :cond_46
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V
    :try_end_49
    .catchall {:try_start_3c .. :try_end_49} :catchall_37

    goto :goto_19

    .line 185
    :cond_4a
    :try_start_4a
    new-instance v0, Ljava/io/File;

    .line 186
    invoke-static {}, Lorg/xutils/x;->app()Landroid/app/Application;

    move-result-object v1

    const-string v2, "process_lock"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/Application;->getDir(Ljava/lang/String;I)Ljava/io/File;
    :try_end_56
    .catchall {:try_start_4a .. :try_end_56} :catchall_102

    move-result-object v1

    :try_start_57
    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 188
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_66

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    move-result v1

    if-eqz v1, :cond_af

    .line 190
    :cond_66
    if-eqz p2, :cond_a2

    .line 191
    new-instance v9, Ljava/io/FileOutputStream;

    const/4 v1, 0x0

    invoke-direct {v9, v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 192
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;
    :try_end_71
    .catchall {:try_start_57 .. :try_end_71} :catchall_fe

    move-result-object v1

    .line 199
    :goto_72
    if-eqz v1, :cond_e0

    .line 200
    if-nez p2, :cond_77

    const/4 v6, 0x1

    :cond_77
    const-wide/16 v2, 0x0

    const-wide v4, 0x7fffffffffffffffL

    :try_start_7e
    invoke-virtual/range {v1 .. v6}, Ljava/nio/channels/FileChannel;->tryLock(JJZ)Ljava/nio/channels/FileLock;

    move-result-object v5

    .line 201
    invoke-static {v5}, Lorg/xutils/common/util/ProcessLock;->isValid(Ljava/nio/channels/FileLock;)Z

    move-result v2

    if-eqz v2, :cond_ac

    .line 202
    new-instance v2, Lorg/xutils/common/util/ProcessLock;
    :try_end_8a
    .catchall {:try_start_7e .. :try_end_8a} :catchall_b7

    move-object v3, p0

    move-object v4, v0

    move-object v6, v9

    move v7, p2

    :try_start_8e
    invoke-direct/range {v2 .. v7}, Lorg/xutils/common/util/ProcessLock;-><init>(Ljava/lang/String;Ljava/io/File;Ljava/nio/channels/FileLock;Ljava/io/Closeable;Z)V

    .line 203
    sget-object v0, Lorg/xutils/common/util/ProcessLock;->LOCK_MAP:Lorg/xutils/common/util/DoubleKeyValueMap;

    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, p0, v3, v2}, Lorg/xutils/common/util/DoubleKeyValueMap;->put(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_9e
    .catchall {:try_start_8e .. :try_end_9e} :catchall_fb

    .line 204
    :try_start_9e
    monitor-exit v10
    :try_end_9f
    .catchall {:try_start_9e .. :try_end_9f} :catchall_a0

    goto :goto_3e

    .line 219
    :catchall_a0
    move-exception v0

    goto :goto_38

    .line 195
    :cond_a2
    :try_start_a2
    new-instance v9, Ljava/io/FileInputStream;

    invoke-direct {v9, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 196
    invoke-virtual {v9}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;
    :try_end_aa
    .catchall {:try_start_a2 .. :try_end_aa} :catchall_fe

    move-result-object v1

    goto :goto_72

    .line 206
    :cond_ac
    :try_start_ac
    invoke-static {p0, v5, v0, v9}, Lorg/xutils/common/util/ProcessLock;->release(Ljava/lang/String;Ljava/nio/channels/FileLock;Ljava/io/File;Ljava/io/Closeable;)V
    :try_end_af
    .catchall {:try_start_ac .. :try_end_af} :catchall_fb

    .line 218
    :cond_af
    :goto_af
    :try_start_af
    sget-object v0, Lorg/xutils/common/util/ProcessLock;->LOCK_MAP:Lorg/xutils/common/util/DoubleKeyValueMap;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 219
    monitor-exit v10

    move-object v2, v8

    .line 221
    goto :goto_3e

    .line 212
    :catchall_b7
    move-exception v0

    move-object v2, v9

    .line 213
    :goto_b9
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "tryLock: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/xutils/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 214
    invoke-static {v2}, Lorg/xutils/common/util/IOUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 215
    invoke-static {v1}, Lorg/xutils/common/util/IOUtil;->closeQuietly(Ljava/io/Closeable;)V
    :try_end_df
    .catchall {:try_start_af .. :try_end_df} :catchall_a0

    goto :goto_af

    .line 209
    :cond_e0
    :try_start_e0
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "can not get file channel:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_fb
    .catchall {:try_start_e0 .. :try_end_fb} :catchall_fb

    .line 212
    :catchall_fb
    move-exception v0

    move-object v2, v9

    goto :goto_b9

    :catchall_fe
    move-exception v0

    move-object v2, v8

    move-object v1, v8

    goto :goto_b9

    :catchall_102
    move-exception v0

    move-object v2, v8

    move-object v1, v8

    goto :goto_b9
.end method


# virtual methods
.method public close()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 113
    invoke-virtual {p0}, Lorg/xutils/common/util/ProcessLock;->release()V

    .line 114
    return-void
.end method

.method protected finalize()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 231
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 232
    invoke-virtual {p0}, Lorg/xutils/common/util/ProcessLock;->release()V

    .line 233
    return-void
.end method

.method public isValid()Z
    .registers 2

    .line 98
    iget-object v0, p0, Lorg/xutils/common/util/ProcessLock;->mFileLock:Ljava/nio/channels/FileLock;

    invoke-static {v0}, Lorg/xutils/common/util/ProcessLock;->isValid(Ljava/nio/channels/FileLock;)Z

    move-result v0

    return v0
.end method

.method public release()V
    .registers 5

    .line 105
    iget-object v0, p0, Lorg/xutils/common/util/ProcessLock;->mLockName:Ljava/lang/String;

    iget-object v1, p0, Lorg/xutils/common/util/ProcessLock;->mFileLock:Ljava/nio/channels/FileLock;

    iget-object v2, p0, Lorg/xutils/common/util/ProcessLock;->mFile:Ljava/io/File;

    iget-object v3, p0, Lorg/xutils/common/util/ProcessLock;->mStream:Ljava/io/Closeable;

    invoke-static {v0, v1, v2, v3}, Lorg/xutils/common/util/ProcessLock;->release(Ljava/lang/String;Ljava/nio/channels/FileLock;Ljava/io/File;Ljava/io/Closeable;)V

    .line 106
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 226
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/xutils/common/util/ProcessLock;->mLockName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/xutils/common/util/ProcessLock;->mFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
