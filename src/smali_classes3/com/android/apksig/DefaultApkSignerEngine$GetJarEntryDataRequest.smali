.class Lcom/android/apksig/DefaultApkSignerEngine$GetJarEntryDataRequest;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/apksig/ApkSignerEngine$InspectJarEntryRequest;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/apksig/DefaultApkSignerEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GetJarEntryDataRequest"
.end annotation


# instance fields
.field private mDataSink:Lcom/android/apksig/util/DataSink;

.field private mDataSinkBuf:Ljava/io/ByteArrayOutputStream;

.field private mDone:Z

.field private final mEntryName:Ljava/lang/String;

.field private final mLock:Ljava/lang/Object;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/apksig/DefaultApkSignerEngine$GetJarEntryDataRequest;->mLock:Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/apksig/DefaultApkSignerEngine$GetJarEntryDataRequest;->mEntryName:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/android/apksig/DefaultApkSignerEngine$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/apksig/DefaultApkSignerEngine$GetJarEntryDataRequest;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/apksig/DefaultApkSignerEngine$GetJarEntryDataRequest;)Z
    .registers 2

    invoke-direct {p0}, Lcom/android/apksig/DefaultApkSignerEngine$GetJarEntryDataRequest;->isDone()Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/apksig/DefaultApkSignerEngine$GetJarEntryDataRequest;)[B
    .registers 2

    invoke-direct {p0}, Lcom/android/apksig/DefaultApkSignerEngine$GetJarEntryDataRequest;->getData()[B

    move-result-object v0

    return-object v0
.end method

.method private checkNotDone()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    iget-object v1, p0, Lcom/android/apksig/DefaultApkSignerEngine$GetJarEntryDataRequest;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/android/apksig/DefaultApkSignerEngine$GetJarEntryDataRequest;->mDone:Z

    if-nez v0, :cond_0

    monitor-exit v1

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Already done"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private getData()[B
    .registers 4

    iget-object v1, p0, Lcom/android/apksig/DefaultApkSignerEngine$GetJarEntryDataRequest;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/android/apksig/DefaultApkSignerEngine$GetJarEntryDataRequest;->mDone:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/apksig/DefaultApkSignerEngine$GetJarEntryDataRequest;->mDataSinkBuf:Ljava/io/ByteArrayOutputStream;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    :goto_0
    monitor-exit v1

    return-object v0

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [B

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Not yet done"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private isDone()Z
    .registers 3

    iget-object v1, p0, Lcom/android/apksig/DefaultApkSignerEngine$GetJarEntryDataRequest;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/android/apksig/DefaultApkSignerEngine$GetJarEntryDataRequest;->mDone:Z

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public done()V
    .registers 3

    iget-object v1, p0, Lcom/android/apksig/DefaultApkSignerEngine$GetJarEntryDataRequest;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/android/apksig/DefaultApkSignerEngine$GetJarEntryDataRequest;->mDone:Z

    if-eqz v0, :cond_0

    :goto_0
    monitor-exit v1

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/apksig/DefaultApkSignerEngine$GetJarEntryDataRequest;->mDone:Z

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getDataSink()Lcom/android/apksig/util/DataSink;
    .registers 3

    iget-object v1, p0, Lcom/android/apksig/DefaultApkSignerEngine$GetJarEntryDataRequest;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0}, Lcom/android/apksig/DefaultApkSignerEngine$GetJarEntryDataRequest;->checkNotDone()V

    iget-object v0, p0, Lcom/android/apksig/DefaultApkSignerEngine$GetJarEntryDataRequest;->mDataSinkBuf:Ljava/io/ByteArrayOutputStream;

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lcom/android/apksig/DefaultApkSignerEngine$GetJarEntryDataRequest;->mDataSinkBuf:Ljava/io/ByteArrayOutputStream;

    :cond_0
    iget-object v0, p0, Lcom/android/apksig/DefaultApkSignerEngine$GetJarEntryDataRequest;->mDataSink:Lcom/android/apksig/util/DataSink;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/apksig/DefaultApkSignerEngine$GetJarEntryDataRequest;->mDataSinkBuf:Ljava/io/ByteArrayOutputStream;

    invoke-static {v0}, Lcom/android/apksig/util/DataSinks;->asDataSink(Ljava/io/OutputStream;)Lcom/android/apksig/util/DataSink;

    move-result-object v0

    iput-object v0, p0, Lcom/android/apksig/DefaultApkSignerEngine$GetJarEntryDataRequest;->mDataSink:Lcom/android/apksig/util/DataSink;

    :cond_1
    iget-object v0, p0, Lcom/android/apksig/DefaultApkSignerEngine$GetJarEntryDataRequest;->mDataSink:Lcom/android/apksig/util/DataSink;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getEntryName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/apksig/DefaultApkSignerEngine$GetJarEntryDataRequest;->mEntryName:Ljava/lang/String;

    return-object v0
.end method
