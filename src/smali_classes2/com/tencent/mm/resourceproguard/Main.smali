.class public Lcom/tencent/mm/resourceproguard/Main;
.super Ljava/lang/Object;


# static fields
.field public static final ERRNO_ERRORS:I = 0x1

.field public static final ERRNO_USAGE:I = 0x2

.field protected static mBeginTime:J

.field protected static mRawApkSize:J

.field protected static mRunningLocation:Ljava/lang/String;


# instance fields
.field protected config:Lcom/tencent/mm/resourceproguard/Configuration;

.field public m7zipPath:Ljava/lang/String;

.field public mFinalApkBackPath:Ljava/lang/String;

.field protected mOutDir:Ljava/io/File;

.field public mSetMappingThroughCmd:Z

.field public mSetSignThroughCmd:Z

.field public mZipalignPath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private buildApk(Lcom/tencent/mm/androlib/ApkDecoder;Ljava/io/File;Ljava/io/File;Lcom/tencent/mm/resourceproguard/InputParam$SignatureType;I)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/mm/androlib/ApkDecoder;",
            "Ljava/io/File;",
            "Ljava/io/File;",
            "Lcom/tencent/mm/resourceproguard/InputParam$SignatureType;",
            "I)V^",
            "Ljava/lang/Exception;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v4, 0x0

    new-instance v0, Lcom/tencent/mm/androlib/ResourceApkBuilder;

    iget-object v1, p0, Lcom/tencent/mm/resourceproguard/Main;->config:Lcom/tencent/mm/resourceproguard/Configuration;

    invoke-direct {v0, v1}, Lcom/tencent/mm/androlib/ResourceApkBuilder;-><init>(Lcom/tencent/mm/resourceproguard/Configuration;)V

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, ".apk"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/resourceproguard/Main;->mOutDir:Ljava/io/File;

    invoke-virtual {v0, v2, v1, p3}, Lcom/tencent/mm/androlib/ResourceApkBuilder;->setOutDir(Ljava/io/File;Ljava/lang/String;Ljava/io/File;)V

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "[AndResGuard] buildApk signatureType: %s\n"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p4, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    sget-object v1, Lcom/tencent/mm/resourceproguard/InputParam$SignatureType;->SchemaV1:Lcom/tencent/mm/resourceproguard/InputParam$SignatureType;

    if-ne p4, v1, :cond_1

    invoke-virtual {p1}, Lcom/tencent/mm/androlib/ApkDecoder;->getCompressData()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/androlib/ResourceApkBuilder;->buildApkWithV1sign(Ljava/util/HashMap;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v1, Lcom/tencent/mm/resourceproguard/InputParam$SignatureType;->SchemaV2:Lcom/tencent/mm/resourceproguard/InputParam$SignatureType;

    if-ne p4, v1, :cond_0

    invoke-virtual {p1}, Lcom/tencent/mm/androlib/ApkDecoder;->getCompressData()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v0, v1, p5}, Lcom/tencent/mm/androlib/ResourceApkBuilder;->buildApkWithV2sign(Ljava/util/HashMap;I)V

    goto :goto_0
.end method

.method private decodeResource(Ljava/io/File;Lcom/tencent/mm/androlib/ApkDecoder;Ljava/io/File;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Lcom/tencent/mm/androlib/ApkDecoder;",
            "Ljava/io/File;",
            ")V^",
            "Lcom/tencent/mm/androlib/AndrolibException;",
            "^",
            "Ljava/io/IOException;",
            "^",
            "Lcom/tencent/mm/directory/DirectoryException;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/mm/androlib/AndrolibException;,
            Ljava/io/IOException;,
            Lcom/tencent/mm/directory/DirectoryException;
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/tencent/mm/resourceproguard/Main;->mRunningLocation:Ljava/lang/String;

    invoke-virtual {p3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, ".apk"

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tencent/mm/resourceproguard/Main;->mOutDir:Ljava/io/File;

    :goto_0
    iget-object v0, p0, Lcom/tencent/mm/resourceproguard/Main;->mOutDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/tencent/mm/androlib/ApkDecoder;->setOutDir(Ljava/io/File;)V

    invoke-virtual {p2}, Lcom/tencent/mm/androlib/ApkDecoder;->decode()V

    return-void

    :cond_0
    iput-object p1, p0, Lcom/tencent/mm/resourceproguard/Main;->mOutDir:Ljava/io/File;

    goto :goto_0
.end method

.method public static gradleRun(Lcom/tencent/mm/resourceproguard/InputParam;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/mm/resourceproguard/InputParam;",
            ")V"
        }
    .end annotation

    new-instance v0, Lcom/tencent/mm/resourceproguard/Main;

    invoke-direct {v0}, Lcom/tencent/mm/resourceproguard/Main;-><init>()V

    invoke-direct {v0, p0}, Lcom/tencent/mm/resourceproguard/Main;->run(Lcom/tencent/mm/resourceproguard/InputParam;)V

    return-void
.end method

.method private loadConfigFromGradle(Lcom/tencent/mm/resourceproguard/InputParam;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/mm/resourceproguard/InputParam;",
            ")V"
        }
    .end annotation

    :try_start_0
    new-instance v0, Lcom/tencent/mm/resourceproguard/Configuration;

    invoke-direct {v0, p1}, Lcom/tencent/mm/resourceproguard/Configuration;-><init>(Lcom/tencent/mm/resourceproguard/InputParam;)V

    iput-object v0, p0, Lcom/tencent/mm/resourceproguard/Main;->config:Lcom/tencent/mm/resourceproguard/Configuration;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private run(Lcom/tencent/mm/resourceproguard/InputParam;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/mm/resourceproguard/InputParam;",
            ")V"
        }
    .end annotation

    :try_start_0
    const-string v0, "com.tencent.mm.resourceproguard.Main"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    monitor-enter v6

    :try_start_1
    invoke-direct {p0, p1}, Lcom/tencent/mm/resourceproguard/Main;->loadConfigFromGradle(Lcom/tencent/mm/resourceproguard/InputParam;)V

    iget-object v0, p1, Lcom/tencent/mm/resourceproguard/InputParam;->finalApkBackupPath:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/mm/resourceproguard/Main;->mFinalApkBackPath:Ljava/lang/String;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    new-instance v4, Ljava/lang/Long;

    invoke-direct {v4, v2, v3}, Ljava/lang/Long;-><init>(J)V

    const-string v2, "\n-->AndResGuard starting! Current thread# id: %d, name: %s\n"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v4, 0x1

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    iget-object v0, p1, Lcom/tencent/mm/resourceproguard/InputParam;->finalApkBackupPath:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/androlib/res/util/StringUtil;->isPresent(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v2, Ljava/io/File;

    iget-object v0, p1, Lcom/tencent/mm/resourceproguard/InputParam;->finalApkBackupPath:Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :goto_0
    new-instance v1, Ljava/io/File;

    iget-object v0, p1, Lcom/tencent/mm/resourceproguard/InputParam;->outFolder:Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v3, p1, Lcom/tencent/mm/resourceproguard/InputParam;->apkPath:Ljava/lang/String;

    iget-object v4, p1, Lcom/tencent/mm/resourceproguard/InputParam;->signatureType:Lcom/tencent/mm/resourceproguard/InputParam$SignatureType;

    iget v5, p1, Lcom/tencent/mm/resourceproguard/InputParam;->minSDKVersion:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/tencent/mm/resourceproguard/Main;->resourceProguard(Ljava/io/File;Ljava/io/File;Ljava/lang/String;Lcom/tencent/mm/resourceproguard/InputParam$SignatureType;I)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "<--AndResGuard Done! You can find the output in %s\n"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/tencent/mm/resourceproguard/Main;->mOutDir:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    invoke-virtual {p0}, Lcom/tencent/mm/resourceproguard/Main;->clean()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v6

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    const/4 v0, 0x0

    :try_start_2
    check-cast v0, Ljava/io/File;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v2, v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v6

    throw v0
.end method


# virtual methods
.method protected clean()V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    const/4 v0, 0x0

    check-cast v0, Lcom/tencent/mm/resourceproguard/Configuration;

    iput-object v0, p0, Lcom/tencent/mm/resourceproguard/Main;->config:Lcom/tencent/mm/resourceproguard/Configuration;

    sget-object v0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mTableStringsResguard:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    const/4 v0, 0x0

    sput v0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mMergeDuplicatedResCount:I

    return-void
.end method

.method protected resourceProguard(Ljava/io/File;Ljava/io/File;Ljava/lang/String;Lcom/tencent/mm/resourceproguard/InputParam$SignatureType;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            "Lcom/tencent/mm/resourceproguard/InputParam$SignatureType;",
            ")V"
        }
    .end annotation

    const/16 v5, 0xe

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/tencent/mm/resourceproguard/Main;->resourceProguard(Ljava/io/File;Ljava/io/File;Ljava/lang/String;Lcom/tencent/mm/resourceproguard/InputParam$SignatureType;I)V

    return-void
.end method

.method protected resourceProguard(Ljava/io/File;Ljava/io/File;Ljava/lang/String;Lcom/tencent/mm/resourceproguard/InputParam$SignatureType;I)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            "Lcom/tencent/mm/resourceproguard/InputParam$SignatureType;",
            "I)V"
        }
    .end annotation

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "The input apk %s does not exist"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {v2}, Lcom/tencent/mm/util/FileOperation;->getFileSizes(Ljava/io/File;)J

    move-result-wide v0

    sput-wide v0, Lcom/tencent/mm/resourceproguard/Main;->mRawApkSize:J

    :try_start_0
    new-instance v1, Lcom/tencent/mm/androlib/ApkDecoder;

    iget-object v0, p0, Lcom/tencent/mm/resourceproguard/Main;->config:Lcom/tencent/mm/resourceproguard/Configuration;

    invoke-direct {v1, v0, v2}, Lcom/tencent/mm/androlib/ApkDecoder;-><init>(Lcom/tencent/mm/resourceproguard/Configuration;Ljava/io/File;)V

    invoke-direct {p0, p1, v1, v2}, Lcom/tencent/mm/resourceproguard/Main;->decodeResource(Ljava/io/File;Lcom/tencent/mm/androlib/ApkDecoder;Ljava/io/File;)V

    move-object v0, p0

    move-object v3, p2

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/tencent/mm/resourceproguard/Main;->buildApk(Lcom/tencent/mm/androlib/ApkDecoder;Ljava/io/File;Ljava/io/File;Lcom/tencent/mm/resourceproguard/InputParam$SignatureType;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
