.class Lcom/android/apksig/DefaultApkSignerEngine$CompoundInspectJarEntryRequest;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/apksig/ApkSignerEngine$InspectJarEntryRequest;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/apksig/DefaultApkSignerEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CompoundInspectJarEntryRequest"
.end annotation


# instance fields
.field private final mEntryName:Ljava/lang/String;

.field private final mLock:Ljava/lang/Object;

.field private final mRequests:[Lcom/android/apksig/ApkSignerEngine$InspectJarEntryRequest;

.field private mSink:Lcom/android/apksig/util/DataSink;


# direct methods
.method private varargs constructor <init>(Ljava/lang/String;[Lcom/android/apksig/ApkSignerEngine$InspectJarEntryRequest;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/apksig/DefaultApkSignerEngine$CompoundInspectJarEntryRequest;->mLock:Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/apksig/DefaultApkSignerEngine$CompoundInspectJarEntryRequest;->mEntryName:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/apksig/DefaultApkSignerEngine$CompoundInspectJarEntryRequest;->mRequests:[Lcom/android/apksig/ApkSignerEngine$InspectJarEntryRequest;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;[Lcom/android/apksig/ApkSignerEngine$InspectJarEntryRequest;Lcom/android/apksig/DefaultApkSignerEngine$1;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/android/apksig/DefaultApkSignerEngine$CompoundInspectJarEntryRequest;-><init>(Ljava/lang/String;[Lcom/android/apksig/ApkSignerEngine$InspectJarEntryRequest;)V

    return-void
.end method


# virtual methods
.method public done()V
    .registers 5

    iget-object v1, p0, Lcom/android/apksig/DefaultApkSignerEngine$CompoundInspectJarEntryRequest;->mRequests:[Lcom/android/apksig/ApkSignerEngine$InspectJarEntryRequest;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_4
    if-ge v0, v2, :cond_e

    aget-object v3, v1, v0

    invoke-interface {v3}, Lcom/android/apksig/ApkSignerEngine$InspectJarEntryRequest;->done()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_e
    return-void
.end method

.method public getDataSink()Lcom/android/apksig/util/DataSink;
    .registers 6

    iget-object v1, p0, Lcom/android/apksig/DefaultApkSignerEngine$CompoundInspectJarEntryRequest;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/android/apksig/DefaultApkSignerEngine$CompoundInspectJarEntryRequest;->mSink:Lcom/android/apksig/util/DataSink;

    if-nez v0, :cond_23

    iget-object v0, p0, Lcom/android/apksig/DefaultApkSignerEngine$CompoundInspectJarEntryRequest;->mRequests:[Lcom/android/apksig/ApkSignerEngine$InspectJarEntryRequest;

    array-length v2, v0

    new-array v3, v2, [Lcom/android/apksig/util/DataSink;

    const/4 v0, 0x0

    :goto_d
    if-ge v0, v2, :cond_1c

    iget-object v4, p0, Lcom/android/apksig/DefaultApkSignerEngine$CompoundInspectJarEntryRequest;->mRequests:[Lcom/android/apksig/ApkSignerEngine$InspectJarEntryRequest;

    aget-object v4, v4, v0

    invoke-interface {v4}, Lcom/android/apksig/ApkSignerEngine$InspectJarEntryRequest;->getDataSink()Lcom/android/apksig/util/DataSink;

    move-result-object v4

    aput-object v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :cond_1c
    new-instance v0, Lcom/android/apksig/internal/util/TeeDataSink;

    invoke-direct {v0, v3}, Lcom/android/apksig/internal/util/TeeDataSink;-><init>([Lcom/android/apksig/util/DataSink;)V

    iput-object v0, p0, Lcom/android/apksig/DefaultApkSignerEngine$CompoundInspectJarEntryRequest;->mSink:Lcom/android/apksig/util/DataSink;

    :cond_23
    iget-object v0, p0, Lcom/android/apksig/DefaultApkSignerEngine$CompoundInspectJarEntryRequest;->mSink:Lcom/android/apksig/util/DataSink;

    monitor-exit v1

    return-object v0

    :catchall_27
    move-exception v0

    monitor-exit v1
    :try_end_29
    .catchall {:try_start_3 .. :try_end_29} :catchall_27

    throw v0
.end method

.method public getEntryName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/apksig/DefaultApkSignerEngine$CompoundInspectJarEntryRequest;->mEntryName:Ljava/lang/String;

    return-object v0
.end method
