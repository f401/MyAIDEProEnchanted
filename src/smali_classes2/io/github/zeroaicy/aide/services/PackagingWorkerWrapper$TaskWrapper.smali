.class public abstract Lio/github/zeroaicy/aide/services/PackagingWorkerWrapper$TaskWrapper;
.super Lcom/aide/ui/build/packagingservice/ExternalPackagingService$b$b;
.source "PackagingWorkerWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/github/zeroaicy/aide/services/PackagingWorkerWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "TaskWrapper"
.end annotation


# instance fields
.field private aAptResourcePath:Ljava/lang/String;

.field private allClassFileRootDirs:[Ljava/lang/String;

.field private androidFxtractNativeLibs:Z

.field private buildRefresh:Z

.field private final defaultClassDexCacheDirPath:Ljava/lang/String;

.field private final defaultIntermediatesDirPath:Ljava/lang/String;

.field private defaultJarDexDirPath:Ljava/lang/String;

.field private final defaultM2repositoriesDirPath:Ljava/lang/String;

.field private dependencyLibs:[Ljava/lang/String;

.field private final mainClassCacheDir:Ljava/lang/String;

.field private minSdk:I

.field private nativeLibDirs:[Ljava/lang/String;

.field private outDirPath:Ljava/lang/String;

.field private outFilePath:Ljava/lang/String;

.field private final signatureAlias:Ljava/lang/String;

.field private final signatureAliasPassword:Ljava/lang/String;

.field private final signaturePassword:Ljava/lang/String;

.field private final signaturePath:Ljava/lang/String;

.field private sourceDirs:[Ljava/lang/String;

.field private final this$0:Lio/github/zeroaicy/aide/services/PackagingWorkerWrapper;

.field private final zipalignPath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lio/github/zeroaicy/aide/services/PackagingWorkerWrapper;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)V
    .registers 25

    .line 116
    move-object v1, p0

    move-object v0, p2

    invoke-direct/range {p0 .. p17}, Lcom/aide/ui/build/packagingservice/ExternalPackagingService$b$b;-><init>(Lcom/aide/ui/build/packagingservice/ExternalPackagingService$b;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)V

    move-object v2, p1

    iput-object v2, v1, Lio/github/zeroaicy/aide/services/PackagingWorkerWrapper$TaskWrapper;->this$0:Lio/github/zeroaicy/aide/services/PackagingWorkerWrapper;

    const/4 v3, 0x1

    iput-boolean v3, v1, Lio/github/zeroaicy/aide/services/PackagingWorkerWrapper$TaskWrapper;->androidFxtractNativeLibs:Z

    const/16 v4, 0x15

    iput v4, v1, Lio/github/zeroaicy/aide/services/PackagingWorkerWrapper$TaskWrapper;->minSdk:I

    .line 118
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p1}, Lio/github/zeroaicy/aide/services/PackagingWorkerWrapper;->getNoBackupFilesDirPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v5, "/.aide/maven"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lio/github/zeroaicy/aide/services/PackagingWorkerWrapper$TaskWrapper;->defaultM2repositoriesDirPath:Ljava/lang/String;

    .line 121
    iput-object v0, v1, Lio/github/zeroaicy/aide/services/PackagingWorkerWrapper$TaskWrapper;->mainClassCacheDir:Ljava/lang/String;

    .line 122
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 123
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 124
    new-instance v5, Ljava/io/File;

    const-string v6, "intermediates"

    invoke-direct {v5, v0, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lio/github/zeroaicy/aide/services/PackagingWorkerWrapper$TaskWrapper;->defaultIntermediatesDirPath:Ljava/lang/String;

    .line 125
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/github/zeroaicy/aide/services/PackagingWorkerWrapper$TaskWrapper;->getIntermediatesChildDirPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lio/github/zeroaicy/aide/services/PackagingWorkerWrapper$TaskWrapper;->defaultClassDexCacheDirPath:Ljava/lang/String;

    .line 127
    move-object v0, p3

    iput-object v0, v1, Lio/github/zeroaicy/aide/services/PackagingWorkerWrapper$TaskWrapper;->allClassFileRootDirs:[Ljava/lang/String;

    .line 128
    move-object v0, p4

    iput-object v0, v1, Lio/github/zeroaicy/aide/services/PackagingWorkerWrapper$TaskWrapper;->sourceDirs:[Ljava/lang/String;

    .line 129
    move-object v0, p5

    iput-object v0, v1, Lio/github/zeroaicy/aide/services/PackagingWorkerWrapper$TaskWrapper;->dependencyLibs:[Ljava/lang/String;

    .line 131
    move-object v0, p6

    iput-object v0, v1, Lio/github/zeroaicy/aide/services/PackagingWorkerWrapper$TaskWrapper;->outDirPath:Ljava/lang/String;

    .line 134
    const-string v0, "jardex"

    invoke-virtual {p0, v0}, Lio/github/zeroaicy/aide/services/PackagingWorkerWrapper$TaskWrapper;->getIntermediatesChildDirPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lio/github/zeroaicy/aide/services/PackagingWorkerWrapper$TaskWrapper;->defaultJarDexDirPath:Ljava/lang/String;

    .line 135
    move-object v0, p8

    iput-object v0, v1, Lio/github/zeroaicy/aide/services/PackagingWorkerWrapper$TaskWrapper;->aAptResourcePath:Ljava/lang/String;

    .line 136
    move-object/from16 v0, p9

    iput-object v0, v1, Lio/github/zeroaicy/aide/services/PackagingWorkerWrapper$TaskWrapper;->nativeLibDirs:[Ljava/lang/String;

    .line 137
    move-object/from16 v0, p10

    iput-object v0, v1, Lio/github/zeroaicy/aide/services/PackagingWorkerWrapper$TaskWrapper;->outFilePath:Ljava/lang/String;

    .line 139
    move-object/from16 v0, p11

    iput-object v0, v1, Lio/github/zeroaicy/aide/services/PackagingWorkerWrapper$TaskWrapper;->signaturePath:Ljava/lang/String;

    .line 140
    move-object/from16 v0, p12

    iput-object v0, v1, Lio/github/zeroaicy/aide/services/PackagingWorkerWrapper$TaskWrapper;->signaturePassword:Ljava/lang/String;

    .line 141
    move-object/from16 v0, p13

    iput-object v0, v1, Lio/github/zeroaicy/aide/services/PackagingWorkerWrapper$TaskWrapper;->signatureAlias:Ljava/lang/String;

    .line 142
    move-object/from16 v0, p14

    iput-object v0, v1, Lio/github/zeroaicy/aide/services/PackagingWorkerWrapper$TaskWrapper;->signatureAliasPassword:Ljava/lang/String;

    .line 144
    move/from16 v0, p15

    iput-boolean v0, v1, Lio/github/zeroaicy/aide/services/PackagingWorkerWrapper$TaskWrapper;->buildRefresh:Z

    .line 147
    :try_start_7d
    invoke-direct {p0}, Lio/github/zeroaicy/aide/services/PackagingWorkerWrapper$TaskWrapper;->isAndroidProject()Z

    move-result v0

    if-eqz v0, :cond_131

    .line 148
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Lio/github/zeroaicy/aide/services/PackagingWorkerWrapper$TaskWrapper;->getBuildOutDirPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v5, "/injected/AndroidManifest.xml"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 149
    nop

    .line 150
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_b0

    .line 151
    new-instance v2, Lcom/s1243808733/aide/util/AndroidManifestRead;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/s1243808733/aide/util/AndroidManifestRead;-><init>(Ljava/lang/String;)V

    goto :goto_10c

    .line 152
    :cond_b0
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Lio/github/zeroaicy/aide/services/PackagingWorkerWrapper$TaskWrapper;->getBuildOutDirPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v5, "/merged/AndroidManifest.xml"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_dc

    .line 153
    new-instance v2, Lcom/s1243808733/aide/util/AndroidManifestRead;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/s1243808733/aide/util/AndroidManifestRead;-><init>(Ljava/lang/String;)V

    goto :goto_10c

    .line 154
    :cond_dc
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Lio/github/zeroaicy/aide/services/PackagingWorkerWrapper$TaskWrapper;->getBuildOutDirPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v5, "/../AndroidManifest.xml"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_108

    .line 155
    new-instance v2, Lcom/s1243808733/aide/util/AndroidManifestRead;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/s1243808733/aide/util/AndroidManifestRead;-><init>(Ljava/lang/String;)V

    goto :goto_10c

    .line 157
    :cond_108
    const/4 v2, 0x0

    move-object v0, v2

    check-cast v0, Lcom/s1243808733/aide/util/AndroidManifestRead;

    .line 159
    :goto_10c
    if-eqz v2, :cond_129

    .line 160
    invoke-virtual {v2}, Lcom/s1243808733/aide/util/AndroidManifestRead;->getAndroidFxtractNativeLibs()Z

    move-result v0

    iput-boolean v0, v1, Lio/github/zeroaicy/aide/services/PackagingWorkerWrapper$TaskWrapper;->androidFxtractNativeLibs:Z

    .line 161
    new-instance v5, Ljava/lang/Boolean;

    invoke-direct {v5, v0}, Ljava/lang/Boolean;-><init>(Z)V

    const-string v0, "androidFxtractNativeLibs"

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v5, v3, v6

    invoke-static {v0, v3}, Lio/github/zeroaicy/util/Log;->d(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 162
    invoke-virtual {v2}, Lcom/s1243808733/aide/util/AndroidManifestRead;->getMiniSdk()I

    move-result v0

    iput v0, v1, Lio/github/zeroaicy/aide/services/PackagingWorkerWrapper$TaskWrapper;->minSdk:I

    .line 164
    :cond_129
    iget v0, v1, Lio/github/zeroaicy/aide/services/PackagingWorkerWrapper$TaskWrapper;->minSdk:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_130

    .line 165
    iput v4, v1, Lio/github/zeroaicy/aide/services/PackagingWorkerWrapper$TaskWrapper;->minSdk:I

    :cond_130
    goto :goto_137

    .line 169
    :cond_131
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    iput v0, v1, Lio/github/zeroaicy/aide/services/PackagingWorkerWrapper$TaskWrapper;->minSdk:I
    :try_end_135
    .catch Ljava/lang/Exception; {:try_start_7d .. :try_end_135} :catch_136

    goto :goto_137

    :catch_136
    move-exception v0

    .line 173
    :goto_137
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, v1, Lio/github/zeroaicy/aide/services/PackagingWorkerWrapper$TaskWrapper;->this$0:Lio/github/zeroaicy/aide/services/PackagingWorkerWrapper;

    iget-object v2, v2, Lio/github/zeroaicy/aide/services/PackagingWorkerWrapper;->externalPackagingService:Lcom/aide/ui/build/packagingservice/ExternalPackagingService;

    invoke-virtual {v2}, Lcom/aide/ui/build/packagingservice/ExternalPackagingService;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, "/libzipalign.so"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lio/github/zeroaicy/aide/services/PackagingWorkerWrapper$TaskWrapper;->zipalignPath:Ljava/lang/String;

    return-void
.end method

.method static access$0(Lio/github/zeroaicy/aide/services/PackagingWorkerWrapper$TaskWrapper;)Lio/github/zeroaicy/aide/services/PackagingWorkerWrapper;
    .registers 1

    iget-object p0, p0, Lio/github/zeroaicy/aide/services/PackagingWorkerWrapper$TaskWrapper;->this$0:Lio/github/zeroaicy/aide/services/PackagingWorkerWrapper;

    return-object p0
.end method

.method private isAndroidProject()Z
    .registers 3

    .line 177
    invoke-virtual {p0}, Lio/github/zeroaicy/aide/services/PackagingWorkerWrapper$TaskWrapper;->getOutFilePath()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".apk"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public getAAptResourceFilePath()Ljava/lang/String;
    .registers 2

    .line 347
    iget-object v0, p0, Lio/github/zeroaicy/aide/services/PackagingWorkerWrapper$TaskWrapper;->aAptResourcePath:Ljava/lang/String;

    return-object v0
.end method

.method public getAllClassFileRootDirs()[Ljava/lang/String;
    .registers 2

    .line 253
    iget-object v0, p0, Lio/github/zeroaicy/aide/services/PackagingWorkerWrapper$TaskWrapper;->allClassFileRootDirs:[Ljava/lang/String;

    return-object v0
.end method

.method public getAllDependencyLibs()[Ljava/lang/String;
    .registers 2

    .line 317
    iget-object v0, p0, Lio/github/zeroaicy/aide/services/PackagingWorkerWrapper$TaskWrapper;->dependencyLibs:[Ljava/lang/String;

    return-object v0
.end method

.method public getAndroidFxtractNativeLibs()Z
    .registers 2

    .line 220
    iget-boolean v0, p0, Lio/github/zeroaicy/aide/services/PackagingWorkerWrapper$TaskWrapper;->androidFxtractNativeLibs:Z

    return v0
.end method

.method public getBuildOutDirPath()Ljava/lang/String;
    .registers 2

    .line 334
    iget-object v0, p0, Lio/github/zeroaicy/aide/services/PackagingWorkerWrapper$TaskWrapper;->outDirPath:Ljava/lang/String;

    return-object v0
.end method

.method public getClassDexFileCache(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 272
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Lio/github/zeroaicy/aide/services/PackagingWorkerWrapper$TaskWrapper;->getDefaultClassDexCacheDirPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const-string v3, ".class"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v2, v3

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string v0, ".dex"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public abstract getClassesDexZipList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;^",
            "Ljava/lang/Throwable;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method

.method public getDefaultClassDexCacheDirPath()Ljava/lang/String;
    .registers 2

    .line 265
    iget-object v0, p0, Lio/github/zeroaicy/aide/services/PackagingWorkerWrapper$TaskWrapper;->defaultClassDexCacheDirPath:Ljava/lang/String;

    return-object v0
.end method

.method public getDefaultIntermediatesDirPath()Ljava/lang/String;
    .registers 2

    .line 182
    iget-object v0, p0, Lio/github/zeroaicy/aide/services/PackagingWorkerWrapper$TaskWrapper;->defaultIntermediatesDirPath:Ljava/lang/String;

    return-object v0
.end method

.method public getDefaultJarDexDirPath()Ljava/lang/String;
    .registers 2

    .line 321
    iget-object v0, p0, Lio/github/zeroaicy/aide/services/PackagingWorkerWrapper$TaskWrapper;->defaultJarDexDirPath:Ljava/lang/String;

    return-object v0
.end method

.method public getIntermediatesChildDirPath(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 186
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lio/github/zeroaicy/aide/services/PackagingWorkerWrapper$TaskWrapper;->getDefaultIntermediatesDirPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_2e

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result p1

    if-nez p1, :cond_2e

    .line 188
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "Could not create dir: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, v1}, Lio/github/zeroaicy/util/Log;->d(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 190
    :cond_2e
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getJarDexCacheDirPath(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 292
    invoke-static {}, Lcom/s1243808733/util/Utils;->getSp()Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    check-cast v2, Ljava/lang/String;

    const-string v2, "user_m2repositories"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 293
    nop

    .line 297
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_24

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 300
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_36

    .line 305
    :cond_24
    iget-object v0, p0, Lio/github/zeroaicy/aide/services/PackagingWorkerWrapper$TaskWrapper;->defaultM2repositoriesDirPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 306
    iget-object v0, p0, Lio/github/zeroaicy/aide/services/PackagingWorkerWrapper$TaskWrapper;->defaultM2repositoriesDirPath:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 308
    :cond_36
    :goto_36
    nop

    .line 311
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "jardex/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-static {p1}, Lio/github/zeroaicy/util/MD5Util;->stringMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/github/zeroaicy/aide/services/PackagingWorkerWrapper$TaskWrapper;->getIntermediatesChildDirPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getJarDexCachePath(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 278
    invoke-virtual {p0, p1}, Lio/github/zeroaicy/aide/services/PackagingWorkerWrapper$TaskWrapper;->getJarDexCacheDirPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 279
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string v1, ".dex.zip"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    .line 282
    if-nez v0, :cond_26

    .line 283
    invoke-virtual {p0}, Lio/github/zeroaicy/aide/services/PackagingWorkerWrapper$TaskWrapper;->getDefaultJarDexDirPath()Ljava/lang/String;

    move-result-object v0

    .line 285
    :cond_26
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getMainClassCacheDir()Ljava/lang/String;
    .registers 2

    .line 259
    iget-object v0, p0, Lio/github/zeroaicy/aide/services/PackagingWorkerWrapper$TaskWrapper;->mainClassCacheDir:Ljava/lang/String;

    return-object v0
.end method

.method public getMinSdk()I
    .registers 2

    .line 108
    iget v0, p0, Lio/github/zeroaicy/aide/services/PackagingWorkerWrapper$TaskWrapper;->minSdk:I

    return v0
.end method

.method public getNativeLibDirs()[Ljava/lang/String;
    .registers 2

    .line 328
    iget-object v0, p0, Lio/github/zeroaicy/aide/services/PackagingWorkerWrapper$TaskWrapper;->nativeLibDirs:[Ljava/lang/String;

    return-object v0
.end method

.method public getOutFilePath()Ljava/lang/String;
    .registers 2

    .line 342
    iget-object v0, p0, Lio/github/zeroaicy/aide/services/PackagingWorkerWrapper$TaskWrapper;->outFilePath:Ljava/lang/String;

    return-object v0
.end method

.method public getSignatureAlias()Ljava/lang/String;
    .registers 2

    .line 238
    iget-object v0, p0, Lio/github/zeroaicy/aide/services/PackagingWorkerWrapper$TaskWrapper;->signatureAlias:Ljava/lang/String;

    return-object v0
.end method

.method public getSignatureAliasPassword()Ljava/lang/String;
    .registers 2

    .line 242
    iget-object v0, p0, Lio/github/zeroaicy/aide/services/PackagingWorkerWrapper$TaskWrapper;->signatureAliasPassword:Ljava/lang/String;

    return-object v0
.end method

.method public getSignaturePassword()Ljava/lang/String;
    .registers 2

    .line 234
    iget-object v0, p0, Lio/github/zeroaicy/aide/services/PackagingWorkerWrapper$TaskWrapper;->signaturePassword:Ljava/lang/String;

    return-object v0
.end method

.method public getSignaturePath()Ljava/lang/String;
    .registers 2

    .line 230
    iget-object v0, p0, Lio/github/zeroaicy/aide/services/PackagingWorkerWrapper$TaskWrapper;->signaturePath:Ljava/lang/String;

    return-object v0
.end method

.method public getSourceDirs()[Ljava/lang/String;
    .registers 2

    .line 325
    iget-object v0, p0, Lio/github/zeroaicy/aide/services/PackagingWorkerWrapper$TaskWrapper;->sourceDirs:[Ljava/lang/String;

    return-object v0
.end method

.method public getZipalignPath()Ljava/lang/String;
    .registers 2

    .line 112
    iget-object v0, p0, Lio/github/zeroaicy/aide/services/PackagingWorkerWrapper$TaskWrapper;->zipalignPath:Ljava/lang/String;

    return-object v0
.end method

.method public isBuildRefresh()Z
    .registers 2

    .line 249
    iget-boolean v0, p0, Lio/github/zeroaicy/aide/services/PackagingWorkerWrapper$TaskWrapper;->buildRefresh:Z

    return v0
.end method

.method public final j6()V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 196
    :try_start_0
    invoke-virtual {p0}, Lio/github/zeroaicy/aide/services/PackagingWorkerWrapper$TaskWrapper;->packaging()V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_4

    .line 199
    return-void

    .line 196
    :catchall_4
    move-exception v0

    .line 198
    const-string v1, "打包错误"

    const-string v2, "堆栈 -> "

    invoke-static {v1, v2, v0}, Lio/github/zeroaicy/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 199
    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public abstract packaging()V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V^",
            "Ljava/lang/Throwable;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method

.method public abstract packagingAndroidProject(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V^",
            "Ljava/lang/Throwable;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method

.method public abstract packagingJavaProject(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V^",
            "Ljava/lang/Throwable;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method

.method public showProgress(Ljava/lang/String;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 354
    iget-object v0, p0, Lio/github/zeroaicy/aide/services/PackagingWorkerWrapper$TaskWrapper;->this$0:Lio/github/zeroaicy/aide/services/PackagingWorkerWrapper;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string v1, "..."

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p2}, Lcom/aide/ui/build/packagingservice/ExternalPackagingService$b;->j6(Lcom/aide/ui/build/packagingservice/ExternalPackagingService$b;Ljava/lang/String;I)V

    return-void
.end method
