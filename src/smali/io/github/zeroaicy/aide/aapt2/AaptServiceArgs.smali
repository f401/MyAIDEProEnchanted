.class public Lio/github/zeroaicy/aide/aapt2/AaptServiceArgs;
.super Ljava/lang/Object;
.source "AaptServiceArgs.java"


# static fields
.field public static final D8OutDir:Ljava/lang/String; = "/intermediates"


# instance fields
.field AaptService:Lcom/aide/ui/build/android/AaptService;

.field public final aManifestMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final allResourceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final androidJar:Ljava/lang/String;

.field public final assetsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final buildBin:Ljava/lang/String;

.field private final compileDirFile:Ljava/io/File;

.field public final defaultMinSdk:I

.field public final defaultTargetSdk:I

.field public final genPackageNameMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final genResDirsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public final injectedAManifestMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final isBuildRefresh:Z

.field public final log:Ljava/io/PrintStream;

.field private mAaptS$cRef:Lio/github/zeroaicy/util/reflect/ReflectPie;

.field public final mainProjectGenDir:Ljava/lang/String;

.field public final mergedAManifestMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final resCompiledSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final resourcesApPath:Ljava/lang/String;

.field public final subProjectGens:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 4

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lio/github/zeroaicy/aide/aapt2/AaptServiceArgs;->resCompiledSet:Ljava/util/Set;

    .line 50
    invoke-static {p1}, Lio/github/zeroaicy/util/reflect/ReflectPie;->on(Ljava/lang/Object;)Lio/github/zeroaicy/util/reflect/ReflectPie;

    move-result-object v0

    iput-object v0, p0, Lio/github/zeroaicy/aide/aapt2/AaptServiceArgs;->mAaptS$cRef:Lio/github/zeroaicy/util/reflect/ReflectPie;

    .line 58
    const/16 v0, 0xe

    :try_start_0
    invoke-static {}, Lcom/s1243808733/aide/util/ProjectUtils;->currentProject()Ljava/io/File;

    move-result-object v1

    .line 59
    new-instance v2, Lcom/s1243808733/aide/util/ProjectUtils$GradleInfo;

    const-string v3, "build.gradle"

    invoke-static {v1, v3}, Lcom/s1243808733/aide/util/ProjectUtils;->getProjectFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/s1243808733/aide/util/ProjectUtils$GradleInfo;-><init>(Ljava/io/File;)V

    .line 61
    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Lcom/s1243808733/aide/util/ProjectUtils$GradleInfo;->getMinSdkVersion(I)I

    move-result v0

    .line 62
    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Lcom/s1243808733/aide/util/ProjectUtils$GradleInfo;->getTargetSdkVersion(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 65
    :goto_0
    iput v0, p0, Lio/github/zeroaicy/aide/aapt2/AaptServiceArgs;->defaultMinSdk:I

    .line 66
    iput v1, p0, Lio/github/zeroaicy/aide/aapt2/AaptServiceArgs;->defaultTargetSdk:I

    .line 70
    iget-object v0, p0, Lio/github/zeroaicy/aide/aapt2/AaptServiceArgs;->mAaptS$cRef:Lio/github/zeroaicy/util/reflect/ReflectPie;

    const-string v1, "Mr"

    invoke-virtual {v0, v1}, Lio/github/zeroaicy/util/reflect/ReflectPie;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lio/github/zeroaicy/aide/aapt2/AaptServiceArgs;->isBuildRefresh:Z

    .line 73
    iget-object v0, p0, Lio/github/zeroaicy/aide/aapt2/AaptServiceArgs;->mAaptS$cRef:Lio/github/zeroaicy/util/reflect/ReflectPie;

    const-string v1, "Zo"

    invoke-virtual {v0, v1}, Lio/github/zeroaicy/util/reflect/ReflectPie;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lio/github/zeroaicy/aide/aapt2/AaptServiceArgs;->androidJar:Ljava/lang/String;

    .line 76
    iget-object v0, p0, Lio/github/zeroaicy/aide/aapt2/AaptServiceArgs;->mAaptS$cRef:Lio/github/zeroaicy/util/reflect/ReflectPie;

    const-string v1, "tp"

    invoke-virtual {v0, v1}, Lio/github/zeroaicy/util/reflect/ReflectPie;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lio/github/zeroaicy/aide/aapt2/AaptServiceArgs;->resourcesApPath:Ljava/lang/String;

    .line 79
    iget-object v1, p0, Lio/github/zeroaicy/aide/aapt2/AaptServiceArgs;->mAaptS$cRef:Lio/github/zeroaicy/util/reflect/ReflectPie;

    const-string v2, "gn"

    invoke-virtual {v1, v2}, Lio/github/zeroaicy/util/reflect/ReflectPie;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lio/github/zeroaicy/aide/aapt2/AaptServiceArgs;->mainProjectGenDir:Ljava/lang/String;

    .line 82
    iget-object v1, p0, Lio/github/zeroaicy/aide/aapt2/AaptServiceArgs;->mAaptS$cRef:Lio/github/zeroaicy/util/reflect/ReflectPie;

    const-string v2, "u7"

    invoke-virtual {v1, v2}, Lio/github/zeroaicy/util/reflect/ReflectPie;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    iput-object v1, p0, Lio/github/zeroaicy/aide/aapt2/AaptServiceArgs;->assetsList:Ljava/util/List;

    .line 85
    iget-object v1, p0, Lio/github/zeroaicy/aide/aapt2/AaptServiceArgs;->mAaptS$cRef:Lio/github/zeroaicy/util/reflect/ReflectPie;

    const-string v2, "J0"

    invoke-virtual {v1, v2}, Lio/github/zeroaicy/util/reflect/ReflectPie;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    iput-object v1, p0, Lio/github/zeroaicy/aide/aapt2/AaptServiceArgs;->genPackageNameMap:Ljava/util/Map;

    .line 87
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lio/github/zeroaicy/aide/aapt2/AaptServiceArgs;->buildBin:Ljava/lang/String;

    .line 89
    new-instance v0, Ljava/io/File;

    const-string v2, "/intermediates/res"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lio/github/zeroaicy/aide/aapt2/AaptServiceArgs;->compileDirFile:Ljava/io/File;

    .line 92
    iget-object v0, p0, Lio/github/zeroaicy/aide/aapt2/AaptServiceArgs;->mAaptS$cRef:Lio/github/zeroaicy/util/reflect/ReflectPie;

    const-string v2, "EQ"

    invoke-virtual {v0, v2}, Lio/github/zeroaicy/util/reflect/ReflectPie;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lio/github/zeroaicy/aide/aapt2/AaptServiceArgs;->allResourceMap:Ljava/util/Map;

    .line 95
    iget-object v0, p0, Lio/github/zeroaicy/aide/aapt2/AaptServiceArgs;->mAaptS$cRef:Lio/github/zeroaicy/util/reflect/ReflectPie;

    const-string v2, "we"

    invoke-virtual {v0, v2}, Lio/github/zeroaicy/util/reflect/ReflectPie;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lio/github/zeroaicy/aide/aapt2/AaptServiceArgs;->genResDirsMap:Ljava/util/Map;

    .line 98
    iget-object v0, p0, Lio/github/zeroaicy/aide/aapt2/AaptServiceArgs;->mAaptS$cRef:Lio/github/zeroaicy/util/reflect/ReflectPie;

    const-string v2, "J8"

    invoke-virtual {v0, v2}, Lio/github/zeroaicy/util/reflect/ReflectPie;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lio/github/zeroaicy/aide/aapt2/AaptServiceArgs;->subProjectGens:Ljava/util/List;

    .line 101
    iget-object v0, p0, Lio/github/zeroaicy/aide/aapt2/AaptServiceArgs;->mAaptS$cRef:Lio/github/zeroaicy/util/reflect/ReflectPie;

    const-string v2, "QX"

    invoke-virtual {v0, v2}, Lio/github/zeroaicy/util/reflect/ReflectPie;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lio/github/zeroaicy/aide/aapt2/AaptServiceArgs;->mergedAManifestMap:Ljava/util/Map;

    .line 104
    iget-object v0, p0, Lio/github/zeroaicy/aide/aapt2/AaptServiceArgs;->mAaptS$cRef:Lio/github/zeroaicy/util/reflect/ReflectPie;

    const-string v2, "aM"

    invoke-virtual {v0, v2}, Lio/github/zeroaicy/util/reflect/ReflectPie;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lio/github/zeroaicy/aide/aapt2/AaptServiceArgs;->injectedAManifestMap:Ljava/util/Map;

    .line 107
    iget-object v0, p0, Lio/github/zeroaicy/aide/aapt2/AaptServiceArgs;->mAaptS$cRef:Lio/github/zeroaicy/util/reflect/ReflectPie;

    const-string v2, "XL"

    invoke-virtual {v0, v2}, Lio/github/zeroaicy/util/reflect/ReflectPie;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lio/github/zeroaicy/aide/aapt2/AaptServiceArgs;->aManifestMap:Ljava/util/Map;

    .line 109
    new-instance v0, Ljava/io/File;

    const-string v2, "aapt2.log"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lio/github/zeroaicy/util/Log$AsyncOutputStreamHold;->createOutStream(Ljava/io/File;)Ljava/io/FileOutputStream;

    move-result-object v0

    .line 110
    new-instance v1, Ljava/io/PrintStream;

    invoke-direct {v1, v0}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v1, p0, Lio/github/zeroaicy/aide/aapt2/AaptServiceArgs;->log:Ljava/io/PrintStream;

    return-void

    .line 62
    :catchall_0
    move-exception v1

    const/16 v1, 0x1c

    goto/16 :goto_0
.end method

.method public static copyRJavaFile(Ljava/io/File;Ljava/io/File;)V
    .locals 0

    return-void
.end method

.method public static copyfile(Ljava/io/File;Ljava/io/File;)V
    .locals 5

    .line 270
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 298
    :cond_0
    :goto_0
    return-void

    .line 273
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 276
    invoke-virtual {p0}, Ljava/io/File;->canRead()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 279
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 280
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2

    .line 281
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 283
    :cond_2
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 284
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 287
    :cond_3
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 288
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 289
    const/16 v2, 0x1400

    new-array v2, v2, [B

    .line 291
    :goto_1
    invoke-virtual {v0, v2}, Ljava/io/FileInputStream;->read([B)I

    move-result v3

    if-lez v3, :cond_4

    .line 292
    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 301
    :catch_0
    move-exception v0

    .line 298
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 295
    :cond_4
    :try_start_1
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    .line 296
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    .line 301
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public static copyfile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 263
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lio/github/zeroaicy/aide/aapt2/AaptServiceArgs;->copyfile(Ljava/io/File;Ljava/io/File;)V

    return-void
.end method

.method public static getAapt2Path2()Ljava/lang/String;
    .locals 2

    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lio/github/zeroaicy/util/ContextUtil;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/libaapt2.so"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCurrentAppHome()Ljava/lang/String;
    .locals 3

    .line 46
    invoke-static {}, Lio/github/zeroaicy/aide/aapt2/AaptServiceArgs;->getProjectService()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "CurrentAppHome"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getProjectService()Landroid/content/SharedPreferences;
    .locals 3

    .line 43
    invoke-static {}, Lio/github/zeroaicy/util/ContextUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "ProjectService"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public static listLine(Ljava/io/File;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 225
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 227
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 228
    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 229
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 231
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 232
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 235
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_0
    return-object v1
.end method

.method public static writeLines(Ljava/io/File;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 241
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 242
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 243
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 246
    :cond_0
    :try_start_0
    new-instance v2, Ljava/io/PrintWriter;

    invoke-direct {v2, p0}, Ljava/io/PrintWriter;-><init>(Ljava/io/File;)V

    .line 247
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    .line 249
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 251
    :cond_1
    invoke-virtual {v2}, Ljava/io/PrintWriter;->flush()V

    .line 252
    invoke-virtual {v2}, Ljava/io/PrintWriter;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 254
    :goto_1
    return-void

    .line 252
    :catch_0
    move-exception v0

    .line 254
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method public buildRefresh()V
    .locals 2

    .line 142
    iget-object v0, p0, Lio/github/zeroaicy/aide/aapt2/AaptServiceArgs;->mAaptS$cRef:Lio/github/zeroaicy/util/reflect/ReflectPie;

    const-string v1, "FH"

    invoke-virtual {v0, v1}, Lio/github/zeroaicy/util/reflect/ReflectPie;->call(Ljava/lang/String;)Lio/github/zeroaicy/util/reflect/ReflectPie;

    return-void
.end method

.method public generateBuildConfigJava()V
    .locals 2

    .line 146
    iget-object v0, p0, Lio/github/zeroaicy/aide/aapt2/AaptServiceArgs;->mAaptS$cRef:Lio/github/zeroaicy/util/reflect/ReflectPie;

    const-string v1, "Hw"

    invoke-virtual {v0, v1}, Lio/github/zeroaicy/util/reflect/ReflectPie;->call(Ljava/lang/String;)Lio/github/zeroaicy/util/reflect/ReflectPie;

    return-void
.end method

.method public getAapt2Error(Labcd/Pl;)Ljava/lang/String;
    .locals 5

    .line 150
    iget-object v0, p0, Lio/github/zeroaicy/aide/aapt2/AaptServiceArgs;->mAaptS$cRef:Lio/github/zeroaicy/util/reflect/ReflectPie;

    const-string v1, "j6"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-interface {p1}, Labcd/Pl;->j6()[B

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-interface {p1}, Labcd/Pl;->DW()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lio/github/zeroaicy/util/reflect/ReflectPie;->call(Ljava/lang/String;[Ljava/lang/Object;)Lio/github/zeroaicy/util/reflect/ReflectPie;

    move-result-object v0

    invoke-virtual {v0}, Lio/github/zeroaicy/util/reflect/ReflectPie;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getCompileDirFile()Ljava/io/File;
    .locals 1

    .line 160
    iget-object v0, p0, Lio/github/zeroaicy/aide/aapt2/AaptServiceArgs;->compileDirFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 161
    iget-object v0, p0, Lio/github/zeroaicy/aide/aapt2/AaptServiceArgs;->compileDirFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 163
    :cond_0
    iget-object v0, p0, Lio/github/zeroaicy/aide/aapt2/AaptServiceArgs;->compileDirFile:Ljava/io/File;

    return-object v0
.end method

.method public getCompileDirPath()Ljava/lang/String;
    .locals 1

    .line 166
    invoke-virtual {p0}, Lio/github/zeroaicy/aide/aapt2/AaptServiceArgs;->getCompileDirFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public mergedAndroidManifestxml()Ljava/lang/Object;
    .locals 2

    .line 155
    iget-object v0, p0, Lio/github/zeroaicy/aide/aapt2/AaptServiceArgs;->mAaptS$cRef:Lio/github/zeroaicy/util/reflect/ReflectPie;

    const-string v1, "Zo"

    invoke-virtual {v0, v1}, Lio/github/zeroaicy/util/reflect/ReflectPie;->call(Ljava/lang/String;)Lio/github/zeroaicy/util/reflect/ReflectPie;

    move-result-object v0

    invoke-virtual {v0}, Lio/github/zeroaicy/util/reflect/ReflectPie;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
