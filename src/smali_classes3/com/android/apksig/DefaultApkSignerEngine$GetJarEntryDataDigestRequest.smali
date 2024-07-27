.class Lcom/android/apksig/DefaultApkSignerEngine$GetJarEntryDataDigestRequest;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/apksig/ApkSignerEngine$InspectJarEntryRequest;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/apksig/DefaultApkSignerEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GetJarEntryDataDigestRequest"
.end annotation


# instance fields
.field private mDataSink:Lcom/android/apksig/util/DataSink;

.field private mDigest:[B

.field private mDone:Z

.field private final mEntryName:Ljava/lang/String;

.field private final mJcaDigestAlgorithm:Ljava/lang/String;

.field private final mLock:Ljava/lang/Object;

.field private mMessageDigest:Ljava/security/MessageDigest;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/apksig/DefaultApkSignerEngine$GetJarEntryDataDigestRequest;->mLock:Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/apksig/DefaultApkSignerEngine$GetJarEntryDataDigestRequest;->mEntryName:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/apksig/DefaultApkSignerEngine$GetJarEntryDataDigestRequest;->mJcaDigestAlgorithm:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/apksig/DefaultApkSignerEngine$1;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/android/apksig/DefaultApkSignerEngine$GetJarEntryDataDigestRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/apksig/DefaultApkSignerEngine$GetJarEntryDataDigestRequest;)Z
    .registers 2

    invoke-direct {p0}, Lcom/android/apksig/DefaultApkSignerEngine$GetJarEntryDataDigestRequest;->isDone()Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/apksig/DefaultApkSignerEngine$GetJarEntryDataDigestRequest;)[B
    .registers 2

    invoke-direct {p0}, Lcom/android/apksig/DefaultApkSignerEngine$GetJarEntryDataDigestRequest;->getDigest()[B

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

    iget-object v1, p0, Lcom/android/apksig/DefaultApkSignerEngine$GetJarEntryDataDigestRequest;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/android/apksig/DefaultApkSignerEngine$GetJarEntryDataDigestRequest;->mDone:Z

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

.method private getDigest()[B
    .registers 4

    iget-object v1, p0, Lcom/android/apksig/DefaultApkSignerEngine$GetJarEntryDataDigestRequest;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/android/apksig/DefaultApkSignerEngine$GetJarEntryDataDigestRequest;->mDone:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/apksig/DefaultApkSignerEngine$GetJarEntryDataDigestRequest;->mDigest:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    monitor-exit v1

    return-object v0

    :cond_0
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

.method private getMessageDigest()Ljava/security/MessageDigest;
    .registers 6

    iget-object v1, p0, Lcom/android/apksig/DefaultApkSignerEngine$GetJarEntryDataDigestRequest;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/apksig/DefaultApkSignerEngine$GetJarEntryDataDigestRequest;->mMessageDigest:Ljava/security/MessageDigest;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    :try_start_1
    iget-object v0, p0, Lcom/android/apksig/DefaultApkSignerEngine$GetJarEntryDataDigestRequest;->mJcaDigestAlgorithm:Ljava/lang/String;

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    iput-object v0, p0, Lcom/android/apksig/DefaultApkSignerEngine$GetJarEntryDataDigestRequest;->mMessageDigest:Ljava/security/MessageDigest;
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :try_start_2
    iget-object v0, p0, Lcom/android/apksig/DefaultApkSignerEngine$GetJarEntryDataDigestRequest;->mMessageDigest:Ljava/security/MessageDigest;

    monitor-exit v1

    return-object v0

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/apksig/DefaultApkSignerEngine$GetJarEntryDataDigestRequest;->mJcaDigestAlgorithm:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " MessageDigest not available"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method private isDone()Z
    .registers 3

    iget-object v1, p0, Lcom/android/apksig/DefaultApkSignerEngine$GetJarEntryDataDigestRequest;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/android/apksig/DefaultApkSignerEngine$GetJarEntryDataDigestRequest;->mDone:Z

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

    iget-object v1, p0, Lcom/android/apksig/DefaultApkSignerEngine$GetJarEntryDataDigestRequest;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/android/apksig/DefaultApkSignerEngine$GetJarEntryDataDigestRequest;->mDone:Z

    if-eqz v0, :cond_0

    :goto_0
    monitor-exit v1

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/apksig/DefaultApkSignerEngine$GetJarEntryDataDigestRequest;->mDone:Z

    invoke-direct {p0}, Lcom/android/apksig/DefaultApkSignerEngine$GetJarEntryDataDigestRequest;->getMessageDigest()Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/apksig/DefaultApkSignerEngine$GetJarEntryDataDigestRequest;->mDigest:[B

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/apksig/DefaultApkSignerEngine$GetJarEntryDataDigestRequest;->mMessageDigest:Ljava/security/MessageDigest;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/apksig/DefaultApkSignerEngine$GetJarEntryDataDigestRequest;->mDataSink:Lcom/android/apksig/util/DataSink;

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getDataSink()Lcom/android/apksig/util/DataSink;
    .registers 5

    iget-object v1, p0, Lcom/android/apksig/DefaultApkSignerEngine$GetJarEntryDataDigestRequest;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0}, Lcom/android/apksig/DefaultApkSignerEngine$GetJarEntryDataDigestRequest;->checkNotDone()V

    iget-object v0, p0, Lcom/android/apksig/DefaultApkSignerEngine$GetJarEntryDataDigestRequest;->mDataSink:Lcom/android/apksig/util/DataSink;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/security/MessageDigest;

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/android/apksig/DefaultApkSignerEngine$GetJarEntryDataDigestRequest;->getMessageDigest()Ljava/security/MessageDigest;

    move-result-object v3

    aput-object v3, v0, v2

    invoke-static {v0}, Lcom/android/apksig/util/DataSinks;->asDataSink([Ljava/security/MessageDigest;)Lcom/android/apksig/util/DataSink;

    move-result-object v0

    iput-object v0, p0, Lcom/android/apksig/DefaultApkSignerEngine$GetJarEntryDataDigestRequest;->mDataSink:Lcom/android/apksig/util/DataSink;

    :cond_0
    iget-object v0, p0, Lcom/android/apksig/DefaultApkSignerEngine$GetJarEntryDataDigestRequest;->mDataSink:Lcom/android/apksig/util/DataSink;

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

    iget-object v0, p0, Lcom/android/apksig/DefaultApkSignerEngine$GetJarEntryDataDigestRequest;->mEntryName:Ljava/lang/String;

    return-object v0
.end method
