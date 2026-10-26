.class public Lcom/s1243808733/aide/functions/r8merger/ApkDexMerger;
.super Ljava/lang/Object;
.source "ApkDexMerger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/s1243808733/aide/functions/r8merger/ApkDexMerger$DexFileComparator;,
        Lcom/s1243808733/aide/functions/r8merger/ApkDexMerger$DexFileFilter;
    }
.end annotation


# instance fields
.field private final mApkFile:Ljava/io/File;

.field private final mContext:Lcom/s1243808733/aide/functions/r8merger/R8Log;

.field private final mDecompressDir:Ljava/io/File;

.field private final mOutDexFile:Ljava/io/File;

.field private final mWorkDir:Ljava/io/File;


# direct methods
.method static bridge synthetic -$$Nest$fgetmContext(Lcom/s1243808733/aide/functions/r8merger/ApkDexMerger;)Lcom/s1243808733/aide/functions/r8merger/R8Log;
    .locals 1

    iget-object v0, p0, Lcom/s1243808733/aide/functions/r8merger/ApkDexMerger;->mContext:Lcom/s1243808733/aide/functions/r8merger/R8Log;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$misDexFileByName(Lcom/s1243808733/aide/functions/r8merger/ApkDexMerger;Ljava/io/File;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/s1243808733/aide/functions/r8merger/ApkDexMerger;->isDexFileByName(Ljava/io/File;)Z

    move-result v0

    return v0
.end method

.method public constructor <init>(Lcom/s1243808733/aide/functions/r8merger/R8Log;Ljava/io/File;)V
    .locals 3

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/s1243808733/aide/functions/r8merger/ApkDexMerger;->mContext:Lcom/s1243808733/aide/functions/r8merger/R8Log;

    .line 37
    iput-object p2, p0, Lcom/s1243808733/aide/functions/r8merger/ApkDexMerger;->mApkFile:Ljava/io/File;

    .line 38
    new-instance v0, Ljava/io/File;

    invoke-virtual {p2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    const-string v2, "dexmerger"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/s1243808733/aide/functions/r8merger/ApkDexMerger;->mWorkDir:Ljava/io/File;

    .line 39
    new-instance v1, Ljava/io/File;

    const-string v2, "decompress"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/s1243808733/aide/functions/r8merger/ApkDexMerger;->mDecompressDir:Ljava/io/File;

    .line 40
    new-instance v1, Ljava/io/File;

    const-string v2, "output.zip"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/s1243808733/aide/functions/r8merger/ApkDexMerger;->mOutDexFile:Ljava/io/File;

    return-void
.end method

.method private MergeDexs(Ljava/util/List;Ljava/io/File;)V
    .locals 3
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 194
    invoke-static {}, Lcom/android/tools/r8/D8Command;->builder()Lcom/android/tools/r8/D8Command$Builder;

    move-result-object v0

    .line 195
    invoke-virtual {p0, p1}, Lcom/s1243808733/aide/functions/r8merger/ApkDexMerger;->FiletoPath(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/D8Command$Builder;->addProgramFiles(Ljava/util/Collection;)Lcom/android/tools/r8/BaseCommand$Builder;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/D8Command$Builder;

    .line 197
    invoke-static {}, Lcom/s1243808733/aide/builder/D8Dex;->getMinVersion()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/D8Command$Builder;->setMinApiLevel(I)Lcom/android/tools/r8/BaseCompilerCommand$Builder;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/D8Command$Builder;

    iget-object v1, p0, Lcom/s1243808733/aide/functions/r8merger/ApkDexMerger;->mOutDexFile:Ljava/io/File;

    .line 199
    invoke-static {v1}, Lcom/s1243808733/util/Utils$$ExternalSyntheticApiModelOutline0;->m(Ljava/io/File;)Ljava/nio/file/Path;

    move-result-object v1

    sget-object v2, Lcom/android/tools/r8/OutputMode;->DexIndexed:Lcom/android/tools/r8/OutputMode;

    invoke-virtual {v0, v1, v2}, Lcom/android/tools/r8/D8Command$Builder;->setOutput(Ljava/nio/file/Path;Lcom/android/tools/r8/OutputMode;)Lcom/android/tools/r8/BaseCompilerCommand$Builder;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/D8Command$Builder;

    .line 201
    sget v1, Lcom/s1243808733/aide/BuildVariant;->RELEASE:I

    invoke-static {}, Lcom/s1243808733/aide/util/ProjectUtils;->currentProject()Ljava/io/File;

    move-result-object v2

    invoke-static {v2}, Lcom/s1243808733/aide/BuildVariant;->getBuildVariant(Ljava/io/File;)I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 202
    sget-object v1, Lcom/android/tools/r8/CompilationMode;->RELEASE:Lcom/android/tools/r8/CompilationMode;

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/D8Command$Builder;->setMode(Lcom/android/tools/r8/CompilationMode;)Lcom/android/tools/r8/BaseCompilerCommand$Builder;

    .line 207
    :goto_0
    invoke-virtual {v0}, Lcom/android/tools/r8/D8Command$Builder;->build()Lcom/android/tools/r8/BaseCommand;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/D8Command;

    invoke-static {v0}, Lcom/android/tools/r8/D8;->run(Lcom/android/tools/r8/D8Command;)V

    return-void

    .line 204
    :cond_0
    sget-object v1, Lcom/android/tools/r8/CompilationMode;->DEBUG:Lcom/android/tools/r8/CompilationMode;

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/D8Command$Builder;->setMode(Lcom/android/tools/r8/CompilationMode;)Lcom/android/tools/r8/BaseCompilerCommand$Builder;

    goto :goto_0
.end method

.method private static array2List([Ljava/lang/Object;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 238
    :goto_0
    return-object v0

    .line 236
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    array-length v0, p0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v0, 0x0

    .line 237
    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_1

    .line 238
    aget-object v2, p0, v0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method private static delectAllFileInDir(Ljava/io/File;)V
    .locals 3

    if-eqz p0, :cond_0

    .line 244
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 252
    :cond_0
    :goto_0
    return-void

    .line 245
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 246
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    const/4 v0, 0x0

    :goto_1
    if-eqz v1, :cond_2

    .line 247
    array-length v2, v1

    if-ge v0, v2, :cond_2

    .line 248
    aget-object v2, v1, v0

    invoke-static {v2}, Lcom/s1243808733/aide/functions/r8merger/ApkDexMerger;->delectAllFileInDir(Ljava/io/File;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 250
    :cond_2
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 252
    :cond_3
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    goto :goto_0
.end method

.method public static getClassesDexPathsFormApk(Ljava/io/File;)Ljava/util/List;
    .locals 4
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 223
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 224
    invoke-static {p0}, Lcom/s1243808733/android/dexmerger/ZipUtils;->getFilesPath(Ljava/io/File;)Ljava/util/List;

    move-result-object v0

    .line 225
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 226
    const-string v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 227
    const-string v3, "classes"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, ".dex"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 228
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method private isDexFileByName(Ljava/io/File;)Z
    .locals 2

    .line 257
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 258
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "classes"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, ".dex"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public FiletoPath(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/nio/file/Path;",
            ">;"
        }
    .end annotation

    .line 211
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 212
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 213
    invoke-static {v0}, Lcom/s1243808733/util/Utils$$ExternalSyntheticApiModelOutline0;->m(Ljava/io/File;)Ljava/nio/file/Path;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public clearWorkDir()V
    .locals 1

    .line 219
    iget-object v0, p0, Lcom/s1243808733/aide/functions/r8merger/ApkDexMerger;->mWorkDir:Ljava/io/File;

    invoke-static {v0}, Lcom/s1243808733/aide/functions/r8merger/ApkDexMerger;->delectAllFileInDir(Ljava/io/File;)V

    return-void
.end method

.method public merger(Ljava/io/File;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v6, 0x0

    .line 44
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 45
    invoke-virtual {p0}, Lcom/s1243808733/aide/functions/r8merger/ApkDexMerger;->clearWorkDir()V

    .line 46
    iget-object v0, p0, Lcom/s1243808733/aide/functions/r8merger/ApkDexMerger;->mContext:Lcom/s1243808733/aide/functions/r8merger/R8Log;

    const-string v1, "\u6b63\u5728\u89e3\u538b..."

    invoke-virtual {v0, v1}, Lcom/s1243808733/aide/functions/r8merger/R8Log;->println(Ljava/lang/String;)V

    .line 48
    :try_start_0
    iget-object v0, p0, Lcom/s1243808733/aide/functions/r8merger/ApkDexMerger;->mApkFile:Ljava/io/File;

    iget-object v1, p0, Lcom/s1243808733/aide/functions/r8merger/ApkDexMerger;->mDecompressDir:Ljava/io/File;

    invoke-static {v0, v1}, Lcom/s1243808733/android/dexmerger/ZipUtils;->unzipFile(Ljava/io/File;Ljava/io/File;)Ljava/util/List;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 55
    iget-object v0, p0, Lcom/s1243808733/aide/functions/r8merger/ApkDexMerger;->mContext:Lcom/s1243808733/aide/functions/r8merger/R8Log;

    const-string v1, "\u83b7\u53d6Dex..."

    invoke-virtual {v0, v1}, Lcom/s1243808733/aide/functions/r8merger/R8Log;->println(Ljava/lang/String;)V

    .line 56
    iget-object v0, p0, Lcom/s1243808733/aide/functions/r8merger/ApkDexMerger;->mDecompressDir:Ljava/io/File;

    new-instance v1, Lcom/s1243808733/aide/functions/r8merger/ApkDexMerger$DexFileFilter;

    invoke-direct {v1, p0, v6}, Lcom/s1243808733/aide/functions/r8merger/ApkDexMerger$DexFileFilter;-><init>(Lcom/s1243808733/aide/functions/r8merger/ApkDexMerger;Lcom/s1243808733/aide/functions/r8merger/ApkDexMerger$DexFileFilter-IA;)V

    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/s1243808733/aide/functions/r8merger/ApkDexMerger;->array2List([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 59
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 62
    new-instance v0, Lcom/s1243808733/aide/functions/r8merger/ApkDexMerger$DexFileComparator;

    invoke-direct {v0, p0, v6}, Lcom/s1243808733/aide/functions/r8merger/ApkDexMerger$DexFileComparator;-><init>(Lcom/s1243808733/aide/functions/r8merger/ApkDexMerger;Lcom/s1243808733/aide/functions/r8merger/ApkDexMerger$DexFileComparator-IA;)V

    invoke-static {v3, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    move v1, v2

    .line 65
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 66
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 67
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    .line 68
    iget-object v7, p0, Lcom/s1243808733/aide/functions/r8merger/ApkDexMerger;->mContext:Lcom/s1243808733/aide/functions/r8merger/R8Log;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "["

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "] "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Lcom/s1243808733/aide/functions/r8merger/R8Log;->println(Ljava/lang/String;)V

    .line 69
    new-instance v6, Lcom/s1243808733/aide/functions/r8merger/DexHeader;

    invoke-direct {v6, v0}, Lcom/s1243808733/aide/functions/r8merger/DexHeader;-><init>(Ljava/io/File;)V

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v7, "magic = "

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, v6, Lcom/s1243808733/aide/functions/r8merger/DexHeader;->magic:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "  \u6821\u9a8c\u7801 = "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v6, Lcom/s1243808733/aide/functions/r8merger/DexHeader;->checksum:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "  sha-1\u7b7e\u540d = "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v6, Lcom/s1243808733/aide/functions/r8merger/DexHeader;->signature:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "  dex\u6587\u4ef6\u603b\u957f\u5ea6 = "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v6, Lcom/s1243808733/aide/functions/r8merger/DexHeader;->fileSize:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "  \u6587\u4ef6\u5934\u957f\u5ea6 = "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v6, Lcom/s1243808733/aide/functions/r8merger/DexHeader;->headerSize:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "  \u5b57\u8282\u987a\u5e8f\u5e38\u91cf = "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v6, Lcom/s1243808733/aide/functions/r8merger/DexHeader;->endianTag:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "  \u8fde\u63a5\u6bb5\u5927\u5c0f = "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v6, Lcom/s1243808733/aide/functions/r8merger/DexHeader;->linkSize:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "  \u8fde\u63a5\u6bb5\u8d77\u59cb\u4f4d\u7f6e = "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v6, Lcom/s1243808733/aide/functions/r8merger/DexHeader;->linkOff:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "  map\u6570\u636e\u57fa\u5740 = "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v6, Lcom/s1243808733/aide/functions/r8merger/DexHeader;->mapOff:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "  \u5b57\u7b26\u4e32\u4e2a\u6570 = "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v6, Lcom/s1243808733/aide/functions/r8merger/DexHeader;->stringIdsSize:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "  \u5b57\u7b26\u4e32\u57fa\u5740 = "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v6, Lcom/s1243808733/aide/functions/r8merger/DexHeader;->stringIdsOff:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "  \u7c7b\u578b\u4e2a\u6570 = "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v6, Lcom/s1243808733/aide/functions/r8merger/DexHeader;->typeIdsSize:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "  \u7c7b\u578b\u57fa\u5740 = "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v6, Lcom/s1243808733/aide/functions/r8merger/DexHeader;->typeIdsOff:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "  \u539f\u578b\u4e2a\u6570 = "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v6, Lcom/s1243808733/aide/functions/r8merger/DexHeader;->protoIdsSize:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "  \u539f\u578b\u57fa\u5740 = "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v6, Lcom/s1243808733/aide/functions/r8merger/DexHeader;->protoIdsOff:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "  \u5b57\u6bb5\u4e2a\u6570 = "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v6, Lcom/s1243808733/aide/functions/r8merger/DexHeader;->fieldIdsSize:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "  \u5b57\u6bb5\u57fa\u5740 = "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v6, Lcom/s1243808733/aide/functions/r8merger/DexHeader;->fieldIdsOff:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "  \u65b9\u6cd5\u4e2a\u6570 = "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v6, Lcom/s1243808733/aide/functions/r8merger/DexHeader;->methodIdsSize:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "  \u65b9\u6cd5\u57fa\u5740 = "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v6, Lcom/s1243808733/aide/functions/r8merger/DexHeader;->methodIdsOff:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "  \u7c7b\u4e2a\u6570 = "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v6, Lcom/s1243808733/aide/functions/r8merger/DexHeader;->classDefsSize:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "  \u7c7b\u57fa\u5740 = "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v6, Lcom/s1243808733/aide/functions/r8merger/DexHeader;->classDefsOff:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "  \u6570\u636e\u5927\u5c0f = "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v6, Lcom/s1243808733/aide/functions/r8merger/DexHeader;->dataSize:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "  \u6570\u636e\u6bb5\u57fa\u5740 = "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v6, Lcom/s1243808733/aide/functions/r8merger/DexHeader;->dataOff:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 139
    iget-object v6, p0, Lcom/s1243808733/aide/functions/r8merger/ApkDexMerger;->mContext:Lcom/s1243808733/aide/functions/r8merger/R8Log;

    invoke-virtual {v6, v0}, Lcom/s1243808733/aide/functions/r8merger/R8Log;->println(Ljava/lang/String;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_0

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/s1243808733/aide/functions/r8merger/ApkDexMerger;->mContext:Lcom/s1243808733/aide/functions/r8merger/R8Log;

    const-string v1, "\u5f00\u59cb\u5408\u5e76Dex..."

    invoke-virtual {v0, v1}, Lcom/s1243808733/aide/functions/r8merger/R8Log;->println(Ljava/lang/String;)V

    .line 145
    :try_start_1
    iget-object v0, p0, Lcom/s1243808733/aide/functions/r8merger/ApkDexMerger;->mOutDexFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 146
    iget-object v0, p0, Lcom/s1243808733/aide/functions/r8merger/ApkDexMerger;->mOutDexFile:Ljava/io/File;

    invoke-direct {p0, v3, v0}, Lcom/s1243808733/aide/functions/r8merger/ApkDexMerger;->MergeDexs(Ljava/util/List;Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 154
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 155
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_1

    .line 160
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/s1243808733/aide/functions/r8merger/ApkDexMerger;->mOutDexFile:Ljava/io/File;

    iget-object v1, p0, Lcom/s1243808733/aide/functions/r8merger/ApkDexMerger;->mDecompressDir:Ljava/io/File;

    invoke-static {v0, v1}, Lcom/s1243808733/android/dexmerger/ZipUtils;->unzipFile(Ljava/io/File;Ljava/io/File;)Ljava/util/List;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 168
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/s1243808733/aide/functions/r8merger/ApkDexMerger;->mWorkDir:Ljava/io/File;

    const-string v3, "build/apk"

    invoke-direct {v0, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 169
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 171
    iget-object v1, p0, Lcom/s1243808733/aide/functions/r8merger/ApkDexMerger;->mContext:Lcom/s1243808733/aide/functions/r8merger/R8Log;

    const-string v3, "\u91cd\u65b0\u6784\u5efaAPK..."

    invoke-virtual {v1, v3}, Lcom/s1243808733/aide/functions/r8merger/R8Log;->println(Ljava/lang/String;)V

    .line 172
    iget-object v1, p0, Lcom/s1243808733/aide/functions/r8merger/ApkDexMerger;->mDecompressDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    invoke-static {v1}, Lcom/s1243808733/aide/functions/r8merger/ApkDexMerger;->array2List([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 173
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    .line 177
    :try_start_3
    invoke-static {v1, v0}, Lcom/s1243808733/android/dexmerger/ZipUtils;->zipFiles(Ljava/util/Collection;Ljava/io/File;)Z
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 182
    invoke-virtual {v0, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 183
    iget-object v0, p0, Lcom/s1243808733/aide/functions/r8merger/ApkDexMerger;->mContext:Lcom/s1243808733/aide/functions/r8merger/R8Log;

    const-string v1, "APK\u5bfc\u51fa\u5931\u8d25"

    invoke-virtual {v0, v1}, Lcom/s1243808733/aide/functions/r8merger/R8Log;->println(Ljava/lang/String;)V

    .line 187
    :cond_2
    iget-object v0, p0, Lcom/s1243808733/aide/functions/r8merger/ApkDexMerger;->mContext:Lcom/s1243808733/aide/functions/r8merger/R8Log;

    const-string v1, "\u6e05\u9664\u7f13\u5b58..."

    invoke-virtual {v0, v1}, Lcom/s1243808733/aide/functions/r8merger/R8Log;->println(Ljava/lang/String;)V

    .line 188
    invoke-virtual {p0}, Lcom/s1243808733/aide/functions/r8merger/ApkDexMerger;->clearWorkDir()V

    .line 189
    iget-object v0, p0, Lcom/s1243808733/aide/functions/r8merger/ApkDexMerger;->mContext:Lcom/s1243808733/aide/functions/r8merger/R8Log;

    const-string v1, "\u5b8c\u6210/%.1fs"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    sub-long v4, v6, v4

    long-to-float v4, v4

    const v5, 0x4e6e6b28    # 1.0E9f

    div-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-virtual {v0, v1, v3}, Lcom/s1243808733/aide/functions/r8merger/R8Log;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    return-void

    :catch_0
    move-exception v0

    .line 179
    iget-object v1, p0, Lcom/s1243808733/aide/functions/r8merger/ApkDexMerger;->mContext:Lcom/s1243808733/aide/functions/r8merger/R8Log;

    const-string v2, "APK\u6784\u5efa\u5931\u8d25"

    invoke-virtual {v1, v2}, Lcom/s1243808733/aide/functions/r8merger/R8Log;->println(Ljava/lang/String;)V

    .line 180
    throw v0

    .line 174
    :cond_3
    new-instance v0, Ljava/io/IOException;

    const-string v1, "\u83b7\u53d6\u6587\u4ef6\u5217\u8868\u5931\u8d25"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_1
    move-exception v0

    .line 162
    iget-object v1, p0, Lcom/s1243808733/aide/functions/r8merger/ApkDexMerger;->mContext:Lcom/s1243808733/aide/functions/r8merger/R8Log;

    const-string v2, "\u5408\u5e76Dex\u89e3\u538b\u5931\u8d25"

    invoke-virtual {v1, v2}, Lcom/s1243808733/aide/functions/r8merger/R8Log;->println(Ljava/lang/String;)V

    .line 163
    iget-object v1, p0, Lcom/s1243808733/aide/functions/r8merger/ApkDexMerger;->mContext:Lcom/s1243808733/aide/functions/r8merger/R8Log;

    invoke-static {v0}, Lcom/blankj/utilcode/util/ThrowableUtils;->getFullStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/s1243808733/aide/functions/r8merger/R8Log;->println(Ljava/lang/String;)V

    .line 165
    throw v0

    :catchall_0
    move-exception v0

    .line 148
    iget-object v1, p0, Lcom/s1243808733/aide/functions/r8merger/ApkDexMerger;->mContext:Lcom/s1243808733/aide/functions/r8merger/R8Log;

    const-string v2, "\u5408\u5e76\u5931\u8d25"

    invoke-virtual {v1, v2}, Lcom/s1243808733/aide/functions/r8merger/R8Log;->println(Ljava/lang/String;)V

    .line 149
    iget-object v1, p0, Lcom/s1243808733/aide/functions/r8merger/ApkDexMerger;->mContext:Lcom/s1243808733/aide/functions/r8merger/R8Log;

    invoke-static {v0}, Lcom/blankj/utilcode/util/ThrowableUtils;->getFullStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/s1243808733/aide/functions/r8merger/R8Log;->println(Ljava/lang/String;)V

    .line 150
    throw v0

    .line 60
    :cond_4
    new-instance v0, Ljava/io/IOException;

    const-string v1, "\u65e0dex\u6587\u4ef6"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 58
    :cond_5
    new-instance v0, Ljava/io/IOException;

    const-string v1, "\u83b7\u53d6dex\u5217\u8868\u5931\u8d25"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_2
    move-exception v0

    .line 50
    iget-object v1, p0, Lcom/s1243808733/aide/functions/r8merger/ApkDexMerger;->mContext:Lcom/s1243808733/aide/functions/r8merger/R8Log;

    const-string v2, "\u89e3\u538b\u5931\u8d25"

    invoke-virtual {v1, v2}, Lcom/s1243808733/aide/functions/r8merger/R8Log;->println(Ljava/lang/String;)V

    .line 51
    throw v0
.end method
