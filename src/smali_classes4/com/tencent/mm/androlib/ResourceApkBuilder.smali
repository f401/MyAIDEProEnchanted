.class public Lcom/tencent/mm/androlib/ResourceApkBuilder;
.super Ljava/lang/Object;


# static fields
.field private static $assertionsDisabled:Z


# instance fields
.field private final config:Lcom/tencent/mm/resourceproguard/Configuration;

.field private finalApkFile:Ljava/io/File;

.field private m7ZipApk:Ljava/io/File;

.field private m7zipOutPutDir:Ljava/io/File;

.field private mAlignedApk:Ljava/io/File;

.field private mAlignedWith7ZipApk:Ljava/io/File;

.field private mApkName:Ljava/lang/String;

.field private mOutDir:Ljava/io/File;

.field private mSignedApk:Ljava/io/File;

.field private mSignedWith7ZipApk:Ljava/io/File;

.field private mUnSignedApk:Ljava/io/File;


# direct methods
.method static final constructor <clinit>()V
    .registers 2

    :try_start_0
    const-string v0, "com.tencent.mm.androlib.ResourceApkBuilder"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_5} :catch_10

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_1b

    const/4 v0, 0x1

    :goto_d
    sput-boolean v0, Lcom/tencent/mm/androlib/ResourceApkBuilder;->$assertionsDisabled:Z

    return-void

    :catch_10
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1b
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public constructor <init>(Lcom/tencent/mm/resourceproguard/Configuration;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tencent/mm/androlib/ResourceApkBuilder;->config:Lcom/tencent/mm/resourceproguard/Configuration;

    return-void
.end method

.method private addNonSignatureFiles(Ljava/util/List;Ljava/io/File;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;",
            "Ljava/io/File;",
            ")V"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-virtual {p2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_b

    move v0, v1

    :goto_8
    array-length v3, v2

    if-lt v0, v3, :cond_c

    :cond_b
    return-void

    :cond_c
    aget-object v3, v2, v0

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, ".MF"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_41

    const-string v5, ".RSA"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_41

    const-string v5, ".SF"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_41

    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, "add meta file %s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v1

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_41
    add-int/lit8 v0, v0, 0x1

    goto :goto_8
.end method

.method private addStoredFileIn7Zip(Ljava/util/ArrayList;Ljava/io/File;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/io/File;",
            ")V^",
            "Ljava/io/IOException;",
            "^",
            "Ljava/lang/InterruptedException;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const/4 v8, 0x1

    const/4 v7, 0x0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "[addStoredFileIn7Zip]rewrite the stored file into the 7zip, file count: %d\n"

    new-array v2, v8, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v7

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1d

    :goto_1c
    return-void

    :cond_1d
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v3, p0, Lcom/tencent/mm/androlib/ResourceApkBuilder;->mOutDir:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "storefiles"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p0, Lcom/tencent/mm/androlib/ResourceApkBuilder;->m7zipOutPutDir:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_7b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_d7

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "*"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/tencent/mm/androlib/ResourceApkBuilder;->config:Lcom/tencent/mm/resourceproguard/Configuration;

    iget-object v0, v0, Lcom/tencent/mm/resourceproguard/Configuration;->m7zipPath:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/util/Utils;->isPresent(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10e

    iget-object v0, p0, Lcom/tencent/mm/androlib/ResourceApkBuilder;->config:Lcom/tencent/mm/resourceproguard/Configuration;

    iget-object v0, v0, Lcom/tencent/mm/resourceproguard/Configuration;->m7zipPath:Ljava/lang/String;

    :goto_b5
    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    aput-object v0, v2, v7

    const-string v0, "a"

    aput-object v0, v2, v8

    const/4 v0, 0x2

    const-string v3, "-tzip"

    aput-object v3, v2, v0

    const/4 v0, 0x3

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const/4 v0, 0x5

    const-string v1, "-mx0"

    aput-object v1, v2, v0

    invoke-static {v2}, Lcom/tencent/mm/util/Utils;->runCmd([Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_1c

    :cond_d7
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v4, v5}, Lcom/tencent/mm/util/FileOperation;->copyFileUsingStream(Ljava/io/File;Ljava/io/File;)V

    goto/16 :goto_7b

    :cond_10e
    const-string v0, "7za"

    goto :goto_b5
.end method

.method private alignApk(Ljava/io/File;Ljava/io/File;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/io/File;",
            ")V^",
            "Ljava/io/IOException;",
            "^",
            "Ljava/lang/InterruptedException;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "zipaligning apk: %s, exists:%b\n"

    new-array v2, v7, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v4

    invoke-direct {v3, v4}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v3, v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_37

    new-instance v0, Ljava/io/IOException;

    const-string v1, "can not found the raw apk file to zipalign, path=%s"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_37
    iget-object v0, p0, Lcom/tencent/mm/androlib/ResourceApkBuilder;->config:Lcom/tencent/mm/resourceproguard/Configuration;

    iget-object v0, v0, Lcom/tencent/mm/resourceproguard/Configuration;->mZipalignPath:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/util/Utils;->isPresent(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7a

    iget-object v0, p0, Lcom/tencent/mm/androlib/ResourceApkBuilder;->config:Lcom/tencent/mm/resourceproguard/Configuration;

    iget-object v0, v0, Lcom/tencent/mm/resourceproguard/Configuration;->mZipalignPath:Ljava/lang/String;

    :goto_45
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    aput-object v0, v1, v5

    const-string v0, "4"

    aput-object v0, v1, v6

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v7

    const/4 v0, 0x3

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    invoke-static {v1}, Lcom/tencent/mm/util/Utils;->runCmd([Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_7d

    new-instance v0, Ljava/io/IOException;

    const-string v1, "can not found the aligned apk file, the ZipAlign path is correct? path=%s"

    new-array v2, v6, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/tencent/mm/androlib/ResourceApkBuilder;->mAlignedApk:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7a
    const-string v0, "zipalign"

    goto :goto_45

    :cond_7d
    return-void
.end method

.method private alignApks()V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V^",
            "Ljava/io/IOException;",
            "^",
            "Ljava/lang/InterruptedException;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/mm/androlib/ResourceApkBuilder;->config:Lcom/tencent/mm/resourceproguard/Configuration;

    iget-boolean v0, v0, Lcom/tencent/mm/resourceproguard/Configuration;->mUseSignAPK:Z

    if-nez v0, :cond_7

    :cond_6
    :goto_6
    return-void

    :cond_7
    iget-object v0, p0, Lcom/tencent/mm/androlib/ResourceApkBuilder;->mSignedApk:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1f

    iget-object v0, p0, Lcom/tencent/mm/androlib/ResourceApkBuilder;->mSignedWith7ZipApk:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1f

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Can not found any signed apk file"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1f
    iget-object v0, p0, Lcom/tencent/mm/androlib/ResourceApkBuilder;->mSignedApk:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcom/tencent/mm/androlib/ResourceApkBuilder;->mSignedApk:Ljava/io/File;

    iget-object v1, p0, Lcom/tencent/mm/androlib/ResourceApkBuilder;->mAlignedApk:Ljava/io/File;

    invoke-direct {p0, v0, v1}, Lcom/tencent/mm/androlib/ResourceApkBuilder;->alignApk(Ljava/io/File;Ljava/io/File;)V

    :cond_2e
    iget-object v0, p0, Lcom/tencent/mm/androlib/ResourceApkBuilder;->mSignedWith7ZipApk:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/tencent/mm/androlib/ResourceApkBuilder;->mSignedWith7ZipApk:Ljava/io/File;

    iget-object v1, p0, Lcom/tencent/mm/androlib/ResourceApkBuilder;->mAlignedWith7ZipApk:Ljava/io/File;

    invoke-direct {p0, v0, v1}, Lcom/tencent/mm/androlib/ResourceApkBuilder;->alignApk(Ljava/io/File;Ljava/io/File;)V

    goto :goto_6
.end method

.method private copyFinalApkV1()V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V^",
            "Ljava/io/IOException;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/mm/androlib/ResourceApkBuilder;->finalApkFile:Ljava/io/File;

    if-eqz v0, :cond_26

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Backup Final APk(V1) to %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/tencent/mm/androlib/ResourceApkBuilder;->finalApkFile:Ljava/io/File;

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/androlib/ResourceApkBuilder;->mSignedWith7ZipApk:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/tencent/mm/androlib/ResourceApkBuilder;->mAlignedWith7ZipApk:Ljava/io/File;

    iget-object v1, p0, Lcom/tencent/mm/androlib/ResourceApkBuilder;->finalApkFile:Ljava/io/File;

    invoke-static {v0, v1}, Lcom/tencent/mm/util/FileOperation;->copyFileUsingStream(Ljava/io/File;Ljava/io/File;)V

    :cond_26
    :goto_26
    return-void

    :cond_27
    iget-object v0, p0, Lcom/tencent/mm/androlib/ResourceApkBuilder;->mSignedApk:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/tencent/mm/androlib/ResourceApkBuilder;->mAlignedApk:Ljava/io/File;

    iget-object v1, p0, Lcom/tencent/mm/androlib/ResourceApkBuilder;->finalApkFile:Ljava/io/File;

    invoke-static {v0, v1}, Lcom/tencent/mm/util/FileOperation;->copyFileUsingStream(Ljava/io/File;Ljava/io/File;)V

    goto :goto_26
.end method

.method private copyFinalApkV2()V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V^",
            "Ljava/io/IOException;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/mm/androlib/ResourceApkBuilder;->mSignedApk:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/tencent/mm/androlib/ResourceApkBuilder;->finalApkFile:Ljava/io/File;

    if-eqz v0, :cond_26

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Backup Final APk(V2) to %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/tencent/mm/androlib/ResourceApkBuilder;->finalApkFile:Ljava/io/File;

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/androlib/ResourceApkBuilder;->mSignedApk:Ljava/io/File;

    iget-object v1, p0, Lcom/tencent/mm/androlib/ResourceApkBuilder;->finalApkFile:Ljava/io/File;

    invoke-static {v0, v1}, Lcom/tencent/mm/util/FileOperation;->copyFileUsingStream(Ljava/io/File;Ljava/io/File;)V

    :cond_26
    return-void
.end method

.method private formatHashAlgorithName(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const-string v0, "-"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private generalRaw7zip(Ljava/io/File;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")V^",
            "Ljava/io/IOException;",
            "^",
            "Ljava/lang/InterruptedException;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/mm/androlib/ResourceApkBuilder;->m7zipOutPutDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "*"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/tencent/mm/androlib/ResourceApkBuilder;->config:Lcom/tencent/mm/resourceproguard/Configuration;

    iget-object v0, v0, Lcom/tencent/mm/resourceproguard/Configuration;->m7zipPath:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/util/Utils;->isPresent(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_61

    iget-object v0, p0, Lcom/tencent/mm/androlib/ResourceApkBuilder;->config:Lcom/tencent/mm/resourceproguard/Configuration;

    iget-object v0, v0, Lcom/tencent/mm/resourceproguard/Configuration;->m7zipPath:Ljava/lang/String;

    :goto_3e
    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    const-string v3, "a"

    aput-object v3, v2, v0

    const/4 v0, 0x2

    const-string v3, "-tzip"

    aput-object v3, v2, v0

    const/4 v0, 0x3

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const/4 v0, 0x5

    const-string v1, "-mx9"

    aput-object v1, v2, v0

    invoke-static {v2}, Lcom/tencent/mm/util/Utils;->runCmd([Ljava/lang/String;)Ljava/lang/String;

    return-void

    :cond_61
    const-string v0, "7za"

    goto :goto_3e
.end method

.method private generalUnsignApk(Ljava/util/HashMap;)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V^",
            "Ljava/io/IOException;",
            "^",
            "Ljava/lang/InterruptedException;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const/4 v13, 0x2

    const/4 v12, 0x1

    const/4 v1, 0x0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "General unsigned apk: %s\n"

    new-array v3, v12, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/tencent/mm/androlib/ResourceApkBuilder;->mUnSignedApk:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-virtual {v0, v2, v3}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    new-instance v2, Ljava/io/File;

    iget-object v0, p0, Lcom/tencent/mm/androlib/ResourceApkBuilder;->mOutDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const-string v3, "temp"

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_53

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v3, "Missing apk unzip files, path=%s\n"

    new-array v4, v12, [Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-virtual {v0, v3, v4}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Missing apk unzip files, path=%s\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_53
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    sget-boolean v0, Lcom/tencent/mm/androlib/ResourceApkBuilder;->$assertionsDisabled:Z

    if-nez v0, :cond_63

    if-nez v3, :cond_63

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_63
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move v0, v1

    :goto_69
    array-length v5, v3

    if-lt v0, v5, :cond_10d

    new-instance v0, Ljava/io/File;

    iget-object v3, p0, Lcom/tencent/mm/androlib/ResourceApkBuilder;->mOutDir:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    const-string v5, "res"

    invoke-direct {v0, v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/tencent/mm/androlib/ResourceApkBuilder;->config:Lcom/tencent/mm/resourceproguard/Configuration;

    iget-boolean v3, v3, Lcom/tencent/mm/resourceproguard/Configuration;->mKeepRoot:Z

    if-nez v3, :cond_95

    invoke-static {v0}, Lcom/tencent/mm/util/FileOperation;->getlist(Ljava/io/File;)J

    move-result-wide v6

    int-to-long v8, v1

    cmp-long v3, v6, v8

    if-nez v3, :cond_95

    new-instance v0, Ljava/io/File;

    iget-object v3, p0, Lcom/tencent/mm/androlib/ResourceApkBuilder;->mOutDir:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    const-string v5, "r"

    invoke-direct {v0, v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :cond_95
    new-instance v3, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "res"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v6, "DestResDir %d rawResDir %d\n"

    new-array v7, v13, [Ljava/lang/Object;

    new-instance v8, Ljava/lang/Long;

    invoke-static {v0}, Lcom/tencent/mm/util/FileOperation;->getlist(Ljava/io/File;)J

    move-result-wide v10

    invoke-direct {v8, v10, v11}, Ljava/lang/Long;-><init>(J)V

    aput-object v8, v7, v1

    new-instance v8, Ljava/lang/Long;

    invoke-static {v3}, Lcom/tencent/mm/util/FileOperation;->getlist(Ljava/io/File;)J

    move-result-wide v10

    invoke-direct {v8, v10, v11}, Ljava/lang/Long;-><init>(J)V

    aput-object v8, v7, v12

    invoke-virtual {v5, v6, v7}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    invoke-static {v0}, Lcom/tencent/mm/util/FileOperation;->getlist(Ljava/io/File;)J

    move-result-wide v6

    invoke-static {v3}, Lcom/tencent/mm/util/FileOperation;->getlist(Ljava/io/File;)J

    move-result-wide v8

    sget v5, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mMergeDuplicatedResCount:I

    int-to-long v10, v5

    sub-long/2addr v8, v10

    cmp-long v5, v6, v8

    if-eqz v5, :cond_139

    new-instance v2, Ljava/io/IOException;

    const-string v4, "the file count of %s, and the file count of %s is not equal, there must be some problem\n"

    new-array v5, v13, [Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v1

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v12

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_10d
    aget-object v5, v3, v0

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "res"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_123

    const-string v7, "resources.arsc"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_127

    :cond_123
    :goto_123
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_69

    :cond_127
    iget-object v7, p0, Lcom/tencent/mm/androlib/ResourceApkBuilder;->config:Lcom/tencent/mm/resourceproguard/Configuration;

    iget-object v7, v7, Lcom/tencent/mm/resourceproguard/Configuration;->mMetaName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_135

    invoke-direct {p0, v4, v5}, Lcom/tencent/mm/androlib/ResourceApkBuilder;->addNonSignatureFiles(Ljava/util/List;Ljava/io/File;)V

    goto :goto_123

    :cond_135
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_123

    :cond_139
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_15c

    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Missing res files, path=%s\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_15c
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v6, p0, Lcom/tencent/mm/androlib/ResourceApkBuilder;->mOutDir:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v5, "resources.arsc"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1b3

    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Missing resources.arsc files, path=%s\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1b3
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/tencent/mm/androlib/ResourceApkBuilder;->mUnSignedApk:Ljava/io/File;

    invoke-static {v4, v2, v0, p1}, Lcom/tencent/mm/util/FileOperation;->zipFiles(Ljava/util/Collection;Ljava/io/File;Ljava/io/File;Ljava/util/HashMap;)V

    iget-object v0, p0, Lcom/tencent/mm/androlib/ResourceApkBuilder;->mUnSignedApk:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1d9

    new-instance v0, Ljava/io/IOException;

    const-string v2, "can not found the unsign apk file path=%s"

    new-array v3, v12, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/tencent/mm/androlib/ResourceApkBuilder;->mUnSignedApk:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1d9
    return-void
.end method

.method private getSignatureAlgorithm(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0

    new-instance v1, Ljava/io/FileInputStream;

    iget-object v2, p0, Lcom/tencent/mm/androlib/ResourceApkBuilder;->config:Lcom/tencent/mm/resourceproguard/Configuration;

    iget-object v2, v2, Lcom/tencent/mm/resourceproguard/Configuration;->mSignatureFile:Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    iget-object v2, p0, Lcom/tencent/mm/androlib/ResourceApkBuilder;->config:Lcom/tencent/mm/resourceproguard/Configuration;

    iget-object v2, v2, Lcom/tencent/mm/resourceproguard/Configuration;->mStorePass:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    iget-object v1, p0, Lcom/tencent/mm/androlib/ResourceApkBuilder;->config:Lcom/tencent/mm/resourceproguard/Configuration;

    iget-object v1, v1, Lcom/tencent/mm/resourceproguard/Configuration;->mStoreAlias:Ljava/lang/String;

    iget-object v2, p0, Lcom/tencent/mm/androlib/ResourceApkBuilder;->config:Lcom/tencent/mm/resourceproguard/Configuration;

    iget-object v2, v2, Lcom/tencent/mm/resourceproguard/Configuration;->mKeyPass:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/security/KeyStore;->getKey(Ljava/lang/String;[C)Ljava/security/Key;

    move-result-object v0

    if-nez v0, :cond_36

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Can\'t get private key, please check if storepass storealias and keypass are correct"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_36
    invoke-interface {v0}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/tencent/mm/androlib/ResourceApkBuilder;->formatHashAlgorithName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "DSA"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_58

    const-string v0, "DSA"

    :goto_48
    const-string v2, "%swith%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v1, 0x1

    aput-object v0, v3, v1

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_58
    const-string v2, "RSA"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_63

    const-string v0, "RSA"

    goto :goto_48

    :cond_63
    const-string v2, "EC"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6e

    const-string v0, "ECDSA"

    goto :goto_48

    :cond_6e
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "private key is not a DSA or RSA key"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private insureFileNameV1()V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/tencent/mm/androlib/ResourceApkBuilder;->mOutDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v3, p0, Lcom/tencent/mm/androlib/ResourceApkBuilder;->mApkName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "_unsigned.apk"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tencent/mm/androlib/ResourceApkBuilder;->mUnSignedApk:Ljava/io/File;

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/tencent/mm/androlib/ResourceApkBuilder;->mOutDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v3, p0, Lcom/tencent/mm/androlib/ResourceApkBuilder;->mApkName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "_signed_7zip.apk"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tencent/mm/androlib/ResourceApkBuilder;->mSignedWith7ZipApk:Ljava/io/File;

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/tencent/mm/androlib/ResourceApkBuilder;->mOutDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v3, p0, Lcom/tencent/mm/androlib/ResourceApkBuilder;->mApkName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "_signed.apk"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tencent/mm/androlib/ResourceApkBuilder;->mSignedApk:Ljava/io/File;

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/tencent/mm/androlib/ResourceApkBuilder;->mOutDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v3, p0, Lcom/tencent/mm/androlib/ResourceApkBuilder;->mApkName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "_signed_aligned.apk"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tencent/mm/androlib/ResourceApkBuilder;->mAlignedApk:Ljava/io/File;

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/tencent/mm/androlib/ResourceApkBuilder;->mOutDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v3, p0, Lcom/tencent/mm/androlib/ResourceApkBuilder;->mApkName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "_signed_7zip_aligned.apk"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tencent/mm/androlib/ResourceApkBuilder;->mAlignedWith7ZipApk:Ljava/io/File;

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/tencent/mm/androlib/ResourceApkBuilder;->mOutDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "out_7zip"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tencent/mm/androlib/ResourceApkBuilder;->m7zipOutPutDir:Ljava/io/File;

    return-void
.end method

.method private insureFileNameV2()V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/tencent/mm/androlib/ResourceApkBuilder;->mOutDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v3, p0, Lcom/tencent/mm/androlib/ResourceApkBuilder;->mApkName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "_unsigned.apk"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tencent/mm/androlib/ResourceApkBuilder;->mUnSignedApk:Ljava/io/File;

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/tencent/mm/androlib/ResourceApkBuilder;->mOutDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v3, p0, Lcom/tencent/mm/androlib/ResourceApkBuilder;->mApkName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "_7zip_unsigned.apk"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tencent/mm/androlib/ResourceApkBuilder;->m7ZipApk:Ljava/io/File;

    iget-object v0, p0, Lcom/tencent/mm/androlib/ResourceApkBuilder;->config:Lcom/tencent/mm/resourceproguard/Configuration;

    iget-boolean v0, v0, Lcom/tencent/mm/resourceproguard/Configuration;->mUse7zip:Z

    if-eqz v0, :cond_9e

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/tencent/mm/androlib/ResourceApkBuilder;->mOutDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v3, p0, Lcom/tencent/mm/androlib/ResourceApkBuilder;->mApkName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "_7zip_aligned_unsigned.apk"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tencent/mm/androlib/ResourceApkBuilder;->mAlignedApk:Ljava/io/File;

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/tencent/mm/androlib/ResourceApkBuilder;->mOutDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v3, p0, Lcom/tencent/mm/androlib/ResourceApkBuilder;->mApkName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "_7zip_aligned_signed.apk"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tencent/mm/androlib/ResourceApkBuilder;->mSignedApk:Ljava/io/File;

    :goto_8e
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/tencent/mm/androlib/ResourceApkBuilder;->mOutDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "out_7zip"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tencent/mm/androlib/ResourceApkBuilder;->m7zipOutPutDir:Ljava/io/File;

    return-void

    :cond_9e
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/tencent/mm/androlib/ResourceApkBuilder;->mOutDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v3, p0, Lcom/tencent/mm/androlib/ResourceApkBuilder;->mApkName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "_aligned_unsigned.apk"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tencent/mm/androlib/ResourceApkBuilder;->mAlignedApk:Ljava/io/File;

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/tencent/mm/androlib/ResourceApkBuilder;->mOutDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v3, p0, Lcom/tencent/mm/androlib/ResourceApkBuilder;->mApkName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "_aligned_signed.apk"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tencent/mm/androlib/ResourceApkBuilder;->mSignedApk:Ljava/io/File;

    goto :goto_8e
.end method

.method private signApkV1(Ljava/io/File;Ljava/io/File;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/io/File;",
            ")V^",
            "Ljava/io/IOException;",
            "^",
            "Ljava/lang/InterruptedException;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/mm/androlib/ResourceApkBuilder;->config:Lcom/tencent/mm/resourceproguard/Configuration;

    iget-boolean v0, v0, Lcom/tencent/mm/resourceproguard/Configuration;->mUseSignAPK:Z

    if-eqz v0, :cond_31

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "signing apk: %s\n"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    :cond_20
    invoke-direct {p0, p1, p2}, Lcom/tencent/mm/androlib/ResourceApkBuilder;->signWithV1sign(Ljava/io/File;Ljava/io/File;)V

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_31

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Can\'t Generate signed APK. Plz check your v1sign info is correct."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_31
    return-void
.end method

.method private signApkV2(Ljava/io/File;Ljava/io/File;I)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/io/File;",
            "I)V^",
            "Ljava/lang/Exception;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/mm/androlib/ResourceApkBuilder;->config:Lcom/tencent/mm/resourceproguard/Configuration;

    iget-boolean v0, v0, Lcom/tencent/mm/resourceproguard/Configuration;->mUseSignAPK:Z

    if-eqz v0, :cond_28

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "signing apk: %s\n"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/mm/androlib/ResourceApkBuilder;->signWithV2sign(Ljava/io/File;Ljava/io/File;I)V

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_28

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Can\'t Generate signed APK v2. Plz check your v2sign info is correct."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_28
    return-void
.end method

.method private signWithV1sign(Ljava/io/File;Ljava/io/File;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/io/File;",
            ")V^",
            "Ljava/io/IOException;",
            "^",
            "Ljava/lang/InterruptedException;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const-string v0, "MD5withRSA"

    :try_start_2
    iget-object v1, p0, Lcom/tencent/mm/androlib/ResourceApkBuilder;->config:Lcom/tencent/mm/resourceproguard/Configuration;

    iget-object v1, v1, Lcom/tencent/mm/resourceproguard/Configuration;->digestAlg:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/tencent/mm/androlib/ResourceApkBuilder;->getSignatureAlgorithm(Ljava/lang/String;)Ljava/lang/String;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_9} :catch_74

    move-result-object v0

    :goto_a
    const/16 v1, 0xf

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "jarsigner"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "-sigalg"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object v0, v1, v2

    const/4 v0, 0x3

    const-string v2, "-digestalg"

    aput-object v2, v1, v0

    const/4 v0, 0x4

    iget-object v2, p0, Lcom/tencent/mm/androlib/ResourceApkBuilder;->config:Lcom/tencent/mm/resourceproguard/Configuration;

    iget-object v2, v2, Lcom/tencent/mm/resourceproguard/Configuration;->digestAlg:Ljava/lang/String;

    aput-object v2, v1, v0

    const/4 v0, 0x5

    const-string v2, "-keystore"

    aput-object v2, v1, v0

    const/4 v0, 0x6

    iget-object v2, p0, Lcom/tencent/mm/androlib/ResourceApkBuilder;->config:Lcom/tencent/mm/resourceproguard/Configuration;

    iget-object v2, v2, Lcom/tencent/mm/resourceproguard/Configuration;->mSignatureFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    const/4 v0, 0x7

    const-string v2, "-storepass"

    aput-object v2, v1, v0

    const/16 v0, 0x8

    iget-object v2, p0, Lcom/tencent/mm/androlib/ResourceApkBuilder;->config:Lcom/tencent/mm/resourceproguard/Configuration;

    iget-object v2, v2, Lcom/tencent/mm/resourceproguard/Configuration;->mStorePass:Ljava/lang/String;

    aput-object v2, v1, v0

    const/16 v0, 0x9

    const-string v2, "-keypass"

    aput-object v2, v1, v0

    const/16 v0, 0xa

    iget-object v2, p0, Lcom/tencent/mm/androlib/ResourceApkBuilder;->config:Lcom/tencent/mm/resourceproguard/Configuration;

    iget-object v2, v2, Lcom/tencent/mm/resourceproguard/Configuration;->mKeyPass:Ljava/lang/String;

    aput-object v2, v1, v0

    const/16 v0, 0xb

    const-string v2, "-signedjar"

    aput-object v2, v1, v0

    const/16 v0, 0xc

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    const/16 v0, 0xd

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    const/16 v0, 0xe

    iget-object v2, p0, Lcom/tencent/mm/androlib/ResourceApkBuilder;->config:Lcom/tencent/mm/resourceproguard/Configuration;

    iget-object v2, v2, Lcom/tencent/mm/resourceproguard/Configuration;->mStoreAlias:Ljava/lang/String;

    aput-object v2, v1, v0

    invoke-static {v1}, Lcom/tencent/mm/util/Utils;->runExec([Ljava/lang/String;)Ljava/lang/String;

    return-void

    :catch_74
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_a
.end method

.method private signWithV2sign(Ljava/io/File;Ljava/io/File;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/io/File;",
            "I)V^",
            "Ljava/lang/Exception;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/mm/androlib/ResourceApkBuilder;->config:Lcom/tencent/mm/resourceproguard/Configuration;

    iget-object v0, v0, Lcom/tencent/mm/resourceproguard/Configuration;->mSignatureFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "pass:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/androlib/ResourceApkBuilder;->config:Lcom/tencent/mm/resourceproguard/Configuration;

    iget-object v1, v1, Lcom/tencent/mm/resourceproguard/Configuration;->mStorePass:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    iget-object v0, p0, Lcom/tencent/mm/androlib/ResourceApkBuilder;->config:Lcom/tencent/mm/resourceproguard/Configuration;

    iget-object v0, v0, Lcom/tencent/mm/resourceproguard/Configuration;->mStoreAlias:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "pass:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/androlib/ResourceApkBuilder;->config:Lcom/tencent/mm/resourceproguard/Configuration;

    iget-object v1, v1, Lcom/tencent/mm/resourceproguard/Configuration;->mKeyPass:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    return-void
.end method

.method private use7zApk(Ljava/util/HashMap;Ljava/io/File;Ljava/io/File;)Z
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/io/File;",
            "Ljava/io/File;",
            ")Z^",
            "Ljava/io/IOException;",
            "^",
            "Ljava/lang/InterruptedException;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/tencent/mm/androlib/ResourceApkBuilder;->config:Lcom/tencent/mm/resourceproguard/Configuration;

    iget-boolean v0, v0, Lcom/tencent/mm/resourceproguard/Configuration;->mUse7zip:Z

    if-nez v0, :cond_a

    move v0, v2

    :goto_9
    return v0

    :cond_a
    iget-object v0, p0, Lcom/tencent/mm/androlib/ResourceApkBuilder;->config:Lcom/tencent/mm/resourceproguard/Configuration;

    iget-boolean v0, v0, Lcom/tencent/mm/resourceproguard/Configuration;->mUseSignAPK:Z

    if-nez v0, :cond_18

    new-instance v0, Ljava/io/IOException;

    const-string v1, "if you want to use 7z, you must enable useSign in the config file first"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_18
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_45

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "can not found the signed apk file to 7z, if you want to use 7z, "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v4, "you must fill the sign data in the config file path=%s"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_45
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "use 7zip to repackage: %s, will cost much more time\n"

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {p3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-virtual {v0, v1, v4}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/androlib/ResourceApkBuilder;->m7zipOutPutDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/util/FileOperation;->unZipAPk(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    invoke-direct {p0, p3}, Lcom/tencent/mm/androlib/ResourceApkBuilder;->generalRaw7zip(Ljava/io/File;)V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_73
    :goto_73
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_98

    invoke-direct {p0, v4, p3}, Lcom/tencent/mm/androlib/ResourceApkBuilder;->addStoredFileIn7Zip(Ljava/util/ArrayList;Ljava/io/File;)V

    invoke-virtual {p3}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_bf

    new-instance v0, Ljava/io/IOException;

    const-string v1, "[use7zApk]7z repackage signed apk fail,you must install 7z command line version first, linux: p7zip, window: 7za, path=%s"

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/tencent/mm/androlib/ResourceApkBuilder;->mSignedWith7ZipApk:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_98
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v1, Ljava/io/File;

    iget-object v6, p0, Lcom/tencent/mm/androlib/ResourceApkBuilder;->m7zipOutPutDir:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_73

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_73

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_73

    :cond_bf
    move v0, v3

    goto/16 :goto_9
.end method


# virtual methods
.method public buildApkWithV1sign(Ljava/util/HashMap;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V^",
            "Ljava/io/IOException;",
            "^",
            "Ljava/lang/InterruptedException;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/tencent/mm/androlib/ResourceApkBuilder;->insureFileNameV1()V

    invoke-direct {p0, p1}, Lcom/tencent/mm/androlib/ResourceApkBuilder;->generalUnsignApk(Ljava/util/HashMap;)V

    iget-object v0, p0, Lcom/tencent/mm/androlib/ResourceApkBuilder;->mUnSignedApk:Ljava/io/File;

    iget-object v1, p0, Lcom/tencent/mm/androlib/ResourceApkBuilder;->mSignedApk:Ljava/io/File;

    invoke-direct {p0, v0, v1}, Lcom/tencent/mm/androlib/ResourceApkBuilder;->signApkV1(Ljava/io/File;Ljava/io/File;)V

    iget-object v0, p0, Lcom/tencent/mm/androlib/ResourceApkBuilder;->mSignedApk:Ljava/io/File;

    iget-object v1, p0, Lcom/tencent/mm/androlib/ResourceApkBuilder;->mSignedWith7ZipApk:Ljava/io/File;

    invoke-direct {p0, p1, v0, v1}, Lcom/tencent/mm/androlib/ResourceApkBuilder;->use7zApk(Ljava/util/HashMap;Ljava/io/File;Ljava/io/File;)Z

    invoke-direct {p0}, Lcom/tencent/mm/androlib/ResourceApkBuilder;->alignApks()V

    invoke-direct {p0}, Lcom/tencent/mm/androlib/ResourceApkBuilder;->copyFinalApkV1()V

    return-void
.end method

.method public buildApkWithV2sign(Ljava/util/HashMap;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;I)V^",
            "Ljava/lang/Exception;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-direct {p0}, Lcom/tencent/mm/androlib/ResourceApkBuilder;->insureFileNameV2()V

    invoke-direct {p0, p1}, Lcom/tencent/mm/androlib/ResourceApkBuilder;->generalUnsignApk(Ljava/util/HashMap;)V

    iget-object v0, p0, Lcom/tencent/mm/androlib/ResourceApkBuilder;->mUnSignedApk:Ljava/io/File;

    iget-object v1, p0, Lcom/tencent/mm/androlib/ResourceApkBuilder;->m7ZipApk:Ljava/io/File;

    invoke-direct {p0, p1, v0, v1}, Lcom/tencent/mm/androlib/ResourceApkBuilder;->use7zApk(Ljava/util/HashMap;Ljava/io/File;Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/tencent/mm/androlib/ResourceApkBuilder;->m7ZipApk:Ljava/io/File;

    iget-object v1, p0, Lcom/tencent/mm/androlib/ResourceApkBuilder;->mAlignedApk:Ljava/io/File;

    invoke-direct {p0, v0, v1}, Lcom/tencent/mm/androlib/ResourceApkBuilder;->alignApk(Ljava/io/File;Ljava/io/File;)V

    :goto_17
    iget-object v0, p0, Lcom/tencent/mm/androlib/ResourceApkBuilder;->mAlignedApk:Ljava/io/File;

    iget-object v1, p0, Lcom/tencent/mm/androlib/ResourceApkBuilder;->mSignedApk:Ljava/io/File;

    invoke-direct {p0, v0, v1, p2}, Lcom/tencent/mm/androlib/ResourceApkBuilder;->signApkV2(Ljava/io/File;Ljava/io/File;I)V

    invoke-direct {p0}, Lcom/tencent/mm/androlib/ResourceApkBuilder;->copyFinalApkV2()V

    return-void

    :cond_22
    iget-object v0, p0, Lcom/tencent/mm/androlib/ResourceApkBuilder;->mUnSignedApk:Ljava/io/File;

    iget-object v1, p0, Lcom/tencent/mm/androlib/ResourceApkBuilder;->mAlignedApk:Ljava/io/File;

    invoke-direct {p0, v0, v1}, Lcom/tencent/mm/androlib/ResourceApkBuilder;->alignApk(Ljava/io/File;Ljava/io/File;)V

    goto :goto_17
.end method

.method public setOutDir(Ljava/io/File;Ljava/lang/String;Ljava/io/File;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ")V^",
            "Lcom/tencent/mm/androlib/AndrolibException;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/mm/androlib/AndrolibException;
        }
    .end annotation

    iput-object p1, p0, Lcom/tencent/mm/androlib/ResourceApkBuilder;->mOutDir:Ljava/io/File;

    iput-object p2, p0, Lcom/tencent/mm/androlib/ResourceApkBuilder;->mApkName:Ljava/lang/String;

    iput-object p3, p0, Lcom/tencent/mm/androlib/ResourceApkBuilder;->finalApkFile:Ljava/io/File;

    return-void
.end method
