.class public Lio/github/zeroaicy/aide/aapt2/AaptServiceArgs;
.super Ljava/lang/Object;
.source "AaptServiceArgs.java"


# static fields
.field public static final D8OutDir:Ljava/lang/String; = "/classesd8"


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
    .registers 6

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lio/github/zeroaicy/aide/aapt2/AaptServiceArgs;->resCompiledSet:Ljava/util/Set;

    .line 51
    invoke-static {p1}, Lio/github/zeroaicy/util/reflect/ReflectPie;->on(Ljava/lang/Object;)Lio/github/zeroaicy/util/reflect/ReflectPie;

    move-result-object v0

    iput-object v0, p0, Lio/github/zeroaicy/aide/aapt2/AaptServiceArgs;->mAaptS$cRef:Lio/github/zeroaicy/util/reflect/ReflectPie;

    .line 57
    :try_start_0
    invoke-static {}, Lcom/s1243808733/aide/util/ProjectUtils;->currentProject()Ljava/io/File;

    move-result-object v0

    .line 58
    new-instance v1, Lcom/s1243808733/aide/util/ProjectUtils$GradleInfo;

    const-string v2, "build.gradle"

    invoke-static {v0, v2}, Lcom/s1243808733/aide/util/ProjectUtils;->getProjectFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/s1243808733/aide/util/ProjectUtils$GradleInfo;-><init>(Ljava/io/File;)V

    .line 60
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/s1243808733/aide/util/ProjectUtils$GradleInfo;->getMinSdkVersion(I)I

    move-result v0

    iput v0, p0, Lio/github/zeroaicy/aide/aapt2/AaptServiceArgs;->defaultMinSdk:I

    .line 61
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/s1243808733/aide/util/ProjectUtils$GradleInfo;->getTargetSdkVersion(I)I

    move-result v0

    iput v0, p0, Lio/github/zeroaicy/aide/aapt2/AaptServiceArgs;->defaultTargetSdk:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    :goto_0
    iget-object v0, p0, Lio/github/zeroaicy/aide/aapt2/AaptServiceArgs;->mAaptS$cRef:Lio/github/zeroaicy/util/reflect/ReflectPie;

    const-string v1, "Mr"

    invoke-virtual {v0, v1}, Lio/github/zeroaicy/util/reflect/ReflectPie;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lio/github/zeroaicy/aide/aapt2/AaptServiceArgs;->isBuildRefresh:Z

    .line 72
    iget-object v0, p0, Lio/github/zeroaicy/aide/aapt2/AaptServiceArgs;->mAaptS$cRef:Lio/github/zeroaicy/util/reflect/ReflectPie;

    const-string v1, "Zo"

    invoke-virtual {v0, v1}, Lio/github/zeroaicy/util/reflect/ReflectPie;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lio/github/zeroaicy/aide/aapt2/AaptServiceArgs;->androidJar:Ljava/lang/String;

    .line 75
    iget-object v0, p0, Lio/github/zeroaicy/aide/aapt2/AaptServiceArgs;->mAaptS$cRef:Lio/github/zeroaicy/util/reflect/ReflectPie;

    const-string v1, "tp"

    invoke-virtual {v0, v1}, Lio/github/zeroaicy/util/reflect/ReflectPie;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lio/github/zeroaicy/aide/aapt2/AaptServiceArgs;->resourcesApPath:Ljava/lang/String;

    .line 78
    iget-object v0, p0, Lio/github/zeroaicy/aide/aapt2/AaptServiceArgs;->mAaptS$cRef:Lio/github/zeroaicy/util/reflect/ReflectPie;

    const-string v1, "gn"

    invoke-virtual {v0, v1}, Lio/github/zeroaicy/util/reflect/ReflectPie;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lio/github/zeroaicy/aide/aapt2/AaptServiceArgs;->mainProjectGenDir:Ljava/lang/String;

    .line 81
    iget-object v0, p0, Lio/github/zeroaicy/aide/aapt2/AaptServiceArgs;->mAaptS$cRef:Lio/github/zeroaicy/util/reflect/ReflectPie;

    const-string v1, "u7"

    invoke-virtual {v0, v1}, Lio/github/zeroaicy/util/reflect/ReflectPie;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lio/github/zeroaicy/aide/aapt2/AaptServiceArgs;->assetsList:Ljava/util/List;

    .line 84
    iget-object v0, p0, Lio/github/zeroaicy/aide/aapt2/AaptServiceArgs;->mAaptS$cRef:Lio/github/zeroaicy/util/reflect/ReflectPie;

    const-string v1, "J0"

    invoke-virtual {v0, v1}, Lio/github/zeroaicy/util/reflect/ReflectPie;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lio/github/zeroaicy/aide/aapt2/AaptServiceArgs;->genPackageNameMap:Ljava/util/Map;

    .line 86
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lio/github/zeroaicy/aide/aapt2/AaptServiceArgs;->resourcesApPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/github/zeroaicy/aide/aapt2/AaptServiceArgs;->buildBin:Ljava/lang/String;

    .line 88
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lio/github/zeroaicy/aide/aapt2/AaptServiceArgs;->buildBin:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "/classesd8"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "/resource"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lio/github/zeroaicy/aide/aapt2/AaptServiceArgs;->compileDirFile:Ljava/io/File;

    .line 91
    iget-object v0, p0, Lio/github/zeroaicy/aide/aapt2/AaptServiceArgs;->mAaptS$cRef:Lio/github/zeroaicy/util/reflect/ReflectPie;

    const-string v1, "EQ"

    invoke-virtual {v0, v1}, Lio/github/zeroaicy/util/reflect/ReflectPie;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lio/github/zeroaicy/aide/aapt2/AaptServiceArgs;->allResourceMap:Ljava/util/Map;

    .line 94
    iget-object v0, p0, Lio/github/zeroaicy/aide/aapt2/AaptServiceArgs;->mAaptS$cRef:Lio/github/zeroaicy/util/reflect/ReflectPie;

    const-string v1, "we"

    invoke-virtual {v0, v1}, Lio/github/zeroaicy/util/reflect/ReflectPie;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lio/github/zeroaicy/aide/aapt2/AaptServiceArgs;->genResDirsMap:Ljava/util/Map;

    .line 97
    iget-object v0, p0, Lio/github/zeroaicy/aide/aapt2/AaptServiceArgs;->mAaptS$cRef:Lio/github/zeroaicy/util/reflect/ReflectPie;

    const-string v1, "J8"

    invoke-virtual {v0, v1}, Lio/github/zeroaicy/util/reflect/ReflectPie;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lio/github/zeroaicy/aide/aapt2/AaptServiceArgs;->subProjectGens:Ljava/util/List;

    .line 100
    iget-object v0, p0, Lio/github/zeroaicy/aide/aapt2/AaptServiceArgs;->mAaptS$cRef:Lio/github/zeroaicy/util/reflect/ReflectPie;

    const-string v1, "QX"

    invoke-virtual {v0, v1}, Lio/github/zeroaicy/util/reflect/ReflectPie;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lio/github/zeroaicy/aide/aapt2/AaptServiceArgs;->mergedAManifestMap:Ljava/util/Map;

    .line 103
    iget-object v0, p0, Lio/github/zeroaicy/aide/aapt2/AaptServiceArgs;->mAaptS$cRef:Lio/github/zeroaicy/util/reflect/ReflectPie;

    const-string v1, "aM"

    invoke-virtual {v0, v1}, Lio/github/zeroaicy/util/reflect/ReflectPie;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lio/github/zeroaicy/aide/aapt2/AaptServiceArgs;->injectedAManifestMap:Ljava/util/Map;

    .line 106
    iget-object v0, p0, Lio/github/zeroaicy/aide/aapt2/AaptServiceArgs;->mAaptS$cRef:Lio/github/zeroaicy/util/reflect/ReflectPie;

    const-string v1, "XL"

    invoke-virtual {v0, v1}, Lio/github/zeroaicy/util/reflect/ReflectPie;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lio/github/zeroaicy/aide/aapt2/AaptServiceArgs;->aManifestMap:Ljava/util/Map;

    .line 108
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lio/github/zeroaicy/aide/aapt2/AaptServiceArgs;->buildBin:Ljava/lang/String;

    const-string v2, "aapt2.log"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lio/github/zeroaicy/util/Log$AsyncOutputStreamHold;->createOutStream(Ljava/io/File;)Ljava/io/FileOutputStream;

    move-result-object v0

    .line 109
    new-instance v1, Ljava/io/PrintStream;

    invoke-direct {v1, v0}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v1, p0, Lio/github/zeroaicy/aide/aapt2/AaptServiceArgs;->log:Ljava/io/PrintStream;

    return-void

    .line 61
    :catch_0
    move-exception v0

    .line 63
    const/16 v0, 0xe

    iput v0, p0, Lio/github/zeroaicy/aide/aapt2/AaptServiceArgs;->defaultMinSdk:I

    .line 64
    const/16 v0, 0x1c

    iput v0, p0, Lio/github/zeroaicy/aide/aapt2/AaptServiceArgs;->defaultTargetSdk:I

    goto/16 :goto_0
.end method

.method public static copyRJavaFile(Ljava/io/File;Ljava/io/File;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/io/File;",
            ")V"
        }
    .end annotation

    return-void
.end method

.method public static copyfile(Ljava/io/File;Ljava/io/File;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/io/File;",
            ")V"
        }
    .end annotation

    .line 269
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 300
    :cond_0
    :goto_0
    return-void

    .line 272
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 275
    invoke-virtual {p0}, Ljava/io/File;->canRead()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 278
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 279
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2

    .line 280
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 282
    :cond_2
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 283
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 286
    :cond_3
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 287
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 288
    const/16 v2, 0x1400

    new-array v2, v2, [B

    .line 290
    :goto_1
    invoke-virtual {v0, v2}, Ljava/io/FileInputStream;->read([B)I

    move-result v3

    if-gtz v3, :cond_4

    .line 294
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    .line 295
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    .line 297
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 291
    :cond_4
    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {v1, v2, v4, v3}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 297
    :catch_1
    move-exception v0

    .line 300
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public static copyfile(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 262
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lio/github/zeroaicy/aide/aapt2/AaptServiceArgs;->copyfile(Ljava/io/File;Ljava/io/File;)V

    return-void
.end method

.method public static getAapt2Path2()Ljava/lang/String;
    .registers 2

    .line 181
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-static {}, Lio/github/zeroaicy/util/ContextUtil;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "/libaapt2.so"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCurrentAppHome()Ljava/lang/String;
    .registers 3

    .line 47
    invoke-static {}, Lio/github/zeroaicy/aide/aapt2/AaptServiceArgs;->getProjectService()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "CurrentAppHome"

    const/4 v0, 0x0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getProjectService()Landroid/content/SharedPreferences;
    .registers 3

    .line 44
    invoke-static {}, Lio/github/zeroaicy/util/ContextUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "ProjectService"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public static listLine(Ljava/io/File;)Ljava/util/List;
    .registers 4
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

    .line 224
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 226
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 227
    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 228
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 230
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    .line 236
    :goto_1
    return-object v1

    .line 231
    :cond_0
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 230
    :catch_0
    move-exception v0

    .line 234
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method public static writeLines(Ljava/io/File;Ljava/util/List;)V
    .registers 6
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

    .line 240
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 241
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 242
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 245
    :cond_0
    :try_start_0
    new-instance v2, Ljava/io/PrintWriter;

    invoke-direct {v2, p0}, Ljava/io/PrintWriter;-><init>(Ljava/io/File;)V

    .line 246
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    .line 247
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-lt v1, v3, :cond_1

    .line 250
    invoke-virtual {v2}, Ljava/io/PrintWriter;->flush()V

    .line 251
    invoke-virtual {v2}, Ljava/io/PrintWriter;->close()V

    .line 253
    :goto_1
    return-void

    .line 248
    :cond_1
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 247
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 251
    :catch_0
    move-exception v0

    .line 253
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method public buildRefresh()V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 141
    iget-object v0, p0, Lio/github/zeroaicy/aide/aapt2/AaptServiceArgs;->mAaptS$cRef:Lio/github/zeroaicy/util/reflect/ReflectPie;

    const-string v1, "FH"

    invoke-virtual {v0, v1}, Lio/github/zeroaicy/util/reflect/ReflectPie;->call(Ljava/lang/String;)Lio/github/zeroaicy/util/reflect/ReflectPie;

    return-void
.end method

.method public generateBuildConfigJava()V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 145
    iget-object v0, p0, Lio/github/zeroaicy/aide/aapt2/AaptServiceArgs;->mAaptS$cRef:Lio/github/zeroaicy/util/reflect/ReflectPie;

    const-string v1, "Hw"

    invoke-virtual {v0, v1}, Lio/github/zeroaicy/util/reflect/ReflectPie;->call(Ljava/lang/String;)Lio/github/zeroaicy/util/reflect/ReflectPie;

    return-void
.end method

.method public getAapt2Error(Labcd/Pl;)Ljava/lang/String;
    .registers 8

    .line 149
    iget-object v0, p0, Lio/github/zeroaicy/aide/aapt2/AaptServiceArgs;->mAaptS$cRef:Lio/github/zeroaicy/util/reflect/ReflectPie;

    const-string v1, "j6"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-interface {p1}, Labcd/Pl;->j6()[B

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    new-instance v4, Ljava/lang/Integer;

    invoke-interface {p1}, Labcd/Pl;->DW()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/lang/Integer;-><init>(I)V

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lio/github/zeroaicy/util/reflect/ReflectPie;->call(Ljava/lang/String;[Ljava/lang/Object;)Lio/github/zeroaicy/util/reflect/ReflectPie;

    move-result-object v0

    invoke-virtual {v0}, Lio/github/zeroaicy/util/reflect/ReflectPie;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getCompileDirFile()Ljava/io/File;
    .registers 2

    .line 159
    iget-object v0, p0, Lio/github/zeroaicy/aide/aapt2/AaptServiceArgs;->compileDirFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 160
    iget-object v0, p0, Lio/github/zeroaicy/aide/aapt2/AaptServiceArgs;->compileDirFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 162
    :cond_0
    iget-object v0, p0, Lio/github/zeroaicy/aide/aapt2/AaptServiceArgs;->compileDirFile:Ljava/io/File;

    return-object v0
.end method

.method public getCompileDirPath()Ljava/lang/String;
    .registers 2

    .line 165
    invoke-virtual {p0}, Lio/github/zeroaicy/aide/aapt2/AaptServiceArgs;->getCompileDirFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public mergedAndroidManifestxml()Ljava/lang/Object;
    .registers 3

    .line 154
    iget-object v0, p0, Lio/github/zeroaicy/aide/aapt2/AaptServiceArgs;->mAaptS$cRef:Lio/github/zeroaicy/util/reflect/ReflectPie;

    const-string v1, "Zo"

    invoke-virtual {v0, v1}, Lio/github/zeroaicy/util/reflect/ReflectPie;->call(Ljava/lang/String;)Lio/github/zeroaicy/util/reflect/ReflectPie;

    move-result-object v0

    invoke-virtual {v0}, Lio/github/zeroaicy/util/reflect/ReflectPie;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
