.class public Lcom/s1243808733/aide/functions/r8merger/ApkDexMerger;
.super Ljava/lang/Object;
.source "ApkDexMerger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
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
    .registers 1

    iget-object p0, p0, Lcom/s1243808733/aide/functions/r8merger/ApkDexMerger;->mContext:Lcom/s1243808733/aide/functions/r8merger/R8Log;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$misDexFileByName(Lcom/s1243808733/aide/functions/r8merger/ApkDexMerger;Ljava/io/File;)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/s1243808733/aide/functions/r8merger/ApkDexMerger;->isDexFileByName(Ljava/io/File;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Lcom/s1243808733/aide/functions/r8merger/R8Log;Ljava/io/File;)V
    .registers 4

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/s1243808733/aide/functions/r8merger/ApkDexMerger;->mContext:Lcom/s1243808733/aide/functions/r8merger/R8Log;

    .line 37
    iput-object p2, p0, Lcom/s1243808733/aide/functions/r8merger/ApkDexMerger;->mApkFile:Ljava/io/File;

    .line 38
    new-instance p1, Ljava/io/File;

    invoke-virtual {p2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p2

    const-string v0, "dexmerger"

    invoke-direct {p1, p2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/s1243808733/aide/functions/r8merger/ApkDexMerger;->mWorkDir:Ljava/io/File;

    .line 39
    new-instance p2, Ljava/io/File;

    const-string v0, "decompress"

    invoke-direct {p2, p1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/s1243808733/aide/functions/r8merger/ApkDexMerger;->mDecompressDir:Ljava/io/File;

    .line 40
    new-instance p2, Ljava/io/File;

    const-string v0, "output.zip"

    invoke-direct {p2, p1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/s1243808733/aide/functions/r8merger/ApkDexMerger;->mOutDexFile:Ljava/io/File;

    return-void
.end method

.method private MergeDexs(Ljava/util/List;Ljava/io/File;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
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

    move-result-object p2

    .line 195
    invoke-virtual {p0, p1}, Lcom/s1243808733/aide/functions/r8merger/ApkDexMerger;->FiletoPath(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/android/tools/r8/D8Command$Builder;->addProgramFiles(Ljava/util/Collection;)Lcom/android/tools/r8/BaseCommand$Builder;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/D8Command$Builder;

    .line 197
    invoke-static {}, Lcom/s1243808733/aide/builder/D8Dex;->getMinVersion()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/android/tools/r8/D8Command$Builder;->setMinApiLevel(I)Lcom/android/tools/r8/BaseCompilerCommand$Builder;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/D8Command$Builder;

    iget-object p2, p0, Lcom/s1243808733/aide/functions/r8merger/ApkDexMerger;->mOutDexFile:Ljava/io/File;

    .line 199
    invoke-static {p2}, Lcom/s1243808733/util/Utils$$ExternalSyntheticApiModelOutline0;->m(Ljava/io/File;)Ljava/nio/file/Path;

    move-result-object p2

    sget-object v0, Lcom/android/tools/r8/OutputMode;->DexIndexed:Lcom/android/tools/r8/OutputMode;

    invoke-virtual {p1, p2, v0}, Lcom/android/tools/r8/D8Command$Builder;->setOutput(Ljava/nio/file/Path;Lcom/android/tools/r8/OutputMode;)Lcom/android/tools/r8/BaseCompilerCommand$Builder;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/D8Command$Builder;

    .line 201
    sget p2, Lcom/s1243808733/aide/BuildVariant;->RELEASE:I

    invoke-static {}, Lcom/s1243808733/aide/util/ProjectUtils;->currentProject()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/s1243808733/aide/BuildVariant;->getBuildVariant(Ljava/io/File;)I

    move-result v0

    if-ne p2, v0, :cond_38

    .line 202
    sget-object p2, Lcom/android/tools/r8/CompilationMode;->RELEASE:Lcom/android/tools/r8/CompilationMode;

    invoke-virtual {p1, p2}, Lcom/android/tools/r8/D8Command$Builder;->setMode(Lcom/android/tools/r8/CompilationMode;)Lcom/android/tools/r8/BaseCompilerCommand$Builder;

    goto :goto_3d

    .line 204
    :cond_38
    sget-object p2, Lcom/android/tools/r8/CompilationMode;->DEBUG:Lcom/android/tools/r8/CompilationMode;

    invoke-virtual {p1, p2}, Lcom/android/tools/r8/D8Command$Builder;->setMode(Lcom/android/tools/r8/CompilationMode;)Lcom/android/tools/r8/BaseCompilerCommand$Builder;

    .line 207
    :goto_3d
    invoke-virtual {p1}, Lcom/android/tools/r8/D8Command$Builder;->build()Lcom/android/tools/r8/BaseCommand;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/D8Command;

    invoke-static {p1}, Lcom/android/tools/r8/D8;->run(Lcom/android/tools/r8/D8Command;)V

    return-void
.end method

.method private static array2List([Ljava/lang/Object;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 236
    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    .line 237
    :goto_b
    array-length v2, p0

    if-ge v1, v2, :cond_16

    .line 238
    aget-object v2, p0, v1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_16
    return-object v0
.end method

.method private static delectAllFileInDir(Ljava/io/File;)V
    .registers 4

    if-eqz p0, :cond_28

    .line 244
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_28

    .line 245
    :cond_9
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 246
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    :goto_14
    if-eqz v0, :cond_21

    .line 247
    array-length v2, v0

    if-ge v1, v2, :cond_21

    .line 248
    aget-object v2, v0, v1

    invoke-static {v2}, Lcom/s1243808733/aide/functions/r8merger/ApkDexMerger;->delectAllFileInDir(Ljava/io/File;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    .line 250
    :cond_21
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    goto :goto_28

    .line 252
    :cond_25
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    :cond_28
    :goto_28
    return-void
.end method

.method public static getClassesDexPathsFormApk(Ljava/io/File;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/List<",
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
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 224
    invoke-static {p0}, Lcom/s1243808733/android/dexmerger/ZipUtils;->getFilesPath(Ljava/io/File;)Ljava/util/List;

    move-result-object p0

    .line 225
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_d
    :goto_d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_36

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 226
    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_22

    goto :goto_d

    .line 227
    :cond_22
    const-string v2, "classes"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    const-string v2, ".dex"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 228
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :cond_36
    return-object v0
.end method

.method private isDexFileByName(Ljava/io/File;)Z
    .registers 3

    .line 257
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 258
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result p1

    if-eqz p1, :cond_1c

    const-string p1, "classes"

    invoke-virtual {v0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1c

    const-string p1, ".dex"

    invoke-virtual {v0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1c

    const/4 p1, 0x1

    goto :goto_1d

    :cond_1c
    const/4 p1, 0x0

    :goto_1d
    return p1
.end method


# virtual methods
.method public FiletoPath(Ljava/util/List;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/nio/file/Path;",
            ">;"
        }
    .end annotation

    .line 211
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 212
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    .line 213
    invoke-static {v1}, Lcom/s1243808733/util/Utils$$ExternalSyntheticApiModelOutline0;->m(Ljava/io/File;)Ljava/nio/file/Path;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_1d
    return-object v0
.end method

.method public clearWorkDir()V
    .registers 2

    .line 219
    iget-object v0, p0, Lcom/s1243808733/aide/functions/r8merger/ApkDexMerger;->mWorkDir:Ljava/io/File;

    invoke-static {v0}, Lcom/s1243808733/aide/functions/r8merger/ApkDexMerger;->delectAllFileInDir(Ljava/io/File;)V

    return-void
.end method

.method public merger(Ljava/io/File;)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 44
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 45
    invoke-virtual {p0}, Lcom/s1243808733/aide/functions/r8merger/ApkDexMerger;->clearWorkDir()V

    .line 46
    iget-object v2, p0, Lcom/s1243808733/aide/functions/r8merger/ApkDexMerger;->mContext:Lcom/s1243808733/aide/functions/r8merger/R8Log;

    const-string v3, "正在解压..."

    invoke-virtual {v2, v3}, Lcom/s1243808733/aide/functions/r8merger/R8Log;->println(Ljava/lang/String;)V

    .line 48
    :try_start_e
    iget-object v2, p0, Lcom/s1243808733/aide/functions/r8merger/ApkDexMerger;->mApkFile:Ljava/io/File;

    iget-object v3, p0, Lcom/s1243808733/aide/functions/r8merger/ApkDexMerger;->mDecompressDir:Ljava/io/File;

    invoke-static {v2, v3}, Lcom/s1243808733/android/dexmerger/ZipUtils;->unzipFile(Ljava/io/File;Ljava/io/File;)Ljava/util/List;
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_15} :catch_232

    .line 55
    iget-object v2, p0, Lcom/s1243808733/aide/functions/r8merger/ApkDexMerger;->mContext:Lcom/s1243808733/aide/functions/r8merger/R8Log;

    const-string v3, "获取Dex..."

    invoke-virtual {v2, v3}, Lcom/s1243808733/aide/functions/r8merger/R8Log;->println(Ljava/lang/String;)V

    .line 56
    iget-object v2, p0, Lcom/s1243808733/aide/functions/r8merger/ApkDexMerger;->mDecompressDir:Ljava/io/File;

    new-instance v3, Lcom/s1243808733/aide/functions/r8merger/ApkDexMerger$DexFileFilter;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/s1243808733/aide/functions/r8merger/ApkDexMerger$DexFileFilter;-><init>(Lcom/s1243808733/aide/functions/r8merger/ApkDexMerger;Lcom/s1243808733/aide/functions/r8merger/ApkDexMerger$DexFileFilter-IA;)V

    invoke-virtual {v2, v3}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v2

    invoke-static {v2}, Lcom/s1243808733/aide/functions/r8merger/ApkDexMerger;->array2List([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_22a

    .line 59
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_222

    .line 62
    new-instance v3, Lcom/s1243808733/aide/functions/r8merger/ApkDexMerger$DexFileComparator;

    invoke-direct {v3, p0, v4}, Lcom/s1243808733/aide/functions/r8merger/ApkDexMerger$DexFileComparator;-><init>(Lcom/s1243808733/aide/functions/r8merger/ApkDexMerger;Lcom/s1243808733/aide/functions/r8merger/ApkDexMerger$DexFileComparator-IA;)V

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 65
    :goto_3e
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_163

    .line 66
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/io/File;

    .line 67
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    .line 68
    iget-object v7, p0, Lcom/s1243808733/aide/functions/r8merger/ApkDexMerger;->mContext:Lcom/s1243808733/aide/functions/r8merger/R8Log;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "["

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "] "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Lcom/s1243808733/aide/functions/r8merger/R8Log;->println(Ljava/lang/String;)V

    .line 69
    new-instance v6, Lcom/s1243808733/aide/functions/r8merger/DexHeader;

    invoke-direct {v6, v5}, Lcom/s1243808733/aide/functions/r8merger/DexHeader;-><init>(Ljava/io/File;)V

    .line 70
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "magic = "

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, v6, Lcom/s1243808733/aide/functions/r8merger/DexHeader;->magic:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "  校验码 = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v6, Lcom/s1243808733/aide/functions/r8merger/DexHeader;->checksum:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "  sha-1签名 = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v6, Lcom/s1243808733/aide/functions/r8merger/DexHeader;->signature:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "  dex文件总长度 = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v6, Lcom/s1243808733/aide/functions/r8merger/DexHeader;->fileSize:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "  文件头长度 = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v6, Lcom/s1243808733/aide/functions/r8merger/DexHeader;->headerSize:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "  字节顺序常量 = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v6, Lcom/s1243808733/aide/functions/r8merger/DexHeader;->endianTag:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "  连接段大小 = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v6, Lcom/s1243808733/aide/functions/r8merger/DexHeader;->linkSize:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "  连接段起始位置 = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v6, Lcom/s1243808733/aide/functions/r8merger/DexHeader;->linkOff:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "  map数据基址 = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v6, Lcom/s1243808733/aide/functions/r8merger/DexHeader;->mapOff:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "  字符串个数 = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v6, Lcom/s1243808733/aide/functions/r8merger/DexHeader;->stringIdsSize:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "  字符串基址 = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v6, Lcom/s1243808733/aide/functions/r8merger/DexHeader;->stringIdsOff:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "  类型个数 = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v6, Lcom/s1243808733/aide/functions/r8merger/DexHeader;->typeIdsSize:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "  类型基址 = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v6, Lcom/s1243808733/aide/functions/r8merger/DexHeader;->typeIdsOff:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "  原型个数 = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v6, Lcom/s1243808733/aide/functions/r8merger/DexHeader;->protoIdsSize:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "  原型基址 = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v6, Lcom/s1243808733/aide/functions/r8merger/DexHeader;->protoIdsOff:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "  字段个数 = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v6, Lcom/s1243808733/aide/functions/r8merger/DexHeader;->fieldIdsSize:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "  字段基址 = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v6, Lcom/s1243808733/aide/functions/r8merger/DexHeader;->fieldIdsOff:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "  方法个数 = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v6, Lcom/s1243808733/aide/functions/r8merger/DexHeader;->methodIdsSize:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "  方法基址 = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v6, Lcom/s1243808733/aide/functions/r8merger/DexHeader;->methodIdsOff:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "  类个数 = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v6, Lcom/s1243808733/aide/functions/r8merger/DexHeader;->classDefsSize:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "  类基址 = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v6, Lcom/s1243808733/aide/functions/r8merger/DexHeader;->classDefsOff:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "  数据大小 = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v6, Lcom/s1243808733/aide/functions/r8merger/DexHeader;->dataSize:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "  数据段基址 = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v6, Lcom/s1243808733/aide/functions/r8merger/DexHeader;->dataOff:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 139
    iget-object v6, p0, Lcom/s1243808733/aide/functions/r8merger/ApkDexMerger;->mContext:Lcom/s1243808733/aide/functions/r8merger/R8Log;

    invoke-virtual {v6, v5}, Lcom/s1243808733/aide/functions/r8merger/R8Log;->println(Ljava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_3e

    .line 143
    :cond_163
    iget-object v4, p0, Lcom/s1243808733/aide/functions/r8merger/ApkDexMerger;->mContext:Lcom/s1243808733/aide/functions/r8merger/R8Log;

    const-string v5, "开始合并Dex..."

    invoke-virtual {v4, v5}, Lcom/s1243808733/aide/functions/r8merger/R8Log;->println(Ljava/lang/String;)V

    .line 145
    :try_start_16a
    iget-object v4, p0, Lcom/s1243808733/aide/functions/r8merger/ApkDexMerger;->mOutDexFile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 146
    iget-object v4, p0, Lcom/s1243808733/aide/functions/r8merger/ApkDexMerger;->mOutDexFile:Ljava/io/File;

    invoke-direct {p0, v2, v4}, Lcom/s1243808733/aide/functions/r8merger/ApkDexMerger;->MergeDexs(Ljava/util/List;Ljava/io/File;)V
    :try_end_174
    .catchall {:try_start_16a .. :try_end_174} :catchall_210

    .line 154
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_178
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_188

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/io/File;

    .line 155
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    goto :goto_178

    .line 160
    :cond_188
    :try_start_188
    iget-object v2, p0, Lcom/s1243808733/aide/functions/r8merger/ApkDexMerger;->mOutDexFile:Ljava/io/File;

    iget-object v4, p0, Lcom/s1243808733/aide/functions/r8merger/ApkDexMerger;->mDecompressDir:Ljava/io/File;

    invoke-static {v2, v4}, Lcom/s1243808733/android/dexmerger/ZipUtils;->unzipFile(Ljava/io/File;Ljava/io/File;)Ljava/util/List;
    :try_end_18f
    .catch Ljava/io/IOException; {:try_start_188 .. :try_end_18f} :catch_1fe

    .line 168
    new-instance v2, Ljava/io/File;

    iget-object v4, p0, Lcom/s1243808733/aide/functions/r8merger/ApkDexMerger;->mWorkDir:Ljava/io/File;

    const-string v5, "build/apk"

    invoke-direct {v2, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 169
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 171
    iget-object v4, p0, Lcom/s1243808733/aide/functions/r8merger/ApkDexMerger;->mContext:Lcom/s1243808733/aide/functions/r8merger/R8Log;

    const-string v5, "重新构建APK..."

    invoke-virtual {v4, v5}, Lcom/s1243808733/aide/functions/r8merger/R8Log;->println(Ljava/lang/String;)V

    .line 172
    iget-object v4, p0, Lcom/s1243808733/aide/functions/r8merger/ApkDexMerger;->mDecompressDir:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    invoke-static {v4}, Lcom/s1243808733/aide/functions/r8merger/ApkDexMerger;->array2List([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_1f6

    .line 173
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1f6

    .line 177
    :try_start_1b8
    invoke-static {v4, v2}, Lcom/s1243808733/android/dexmerger/ZipUtils;->zipFiles(Ljava/util/Collection;Ljava/io/File;)Z
    :try_end_1bb
    .catch Ljava/io/IOException; {:try_start_1b8 .. :try_end_1bb} :catch_1ed

    .line 182
    invoke-virtual {v2, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p1

    if-nez p1, :cond_1c8

    .line 183
    iget-object p1, p0, Lcom/s1243808733/aide/functions/r8merger/ApkDexMerger;->mContext:Lcom/s1243808733/aide/functions/r8merger/R8Log;

    const-string v2, "APK导出失败"

    invoke-virtual {p1, v2}, Lcom/s1243808733/aide/functions/r8merger/R8Log;->println(Ljava/lang/String;)V

    .line 187
    :cond_1c8
    iget-object p1, p0, Lcom/s1243808733/aide/functions/r8merger/ApkDexMerger;->mContext:Lcom/s1243808733/aide/functions/r8merger/R8Log;

    const-string v2, "清除缓存..."

    invoke-virtual {p1, v2}, Lcom/s1243808733/aide/functions/r8merger/R8Log;->println(Ljava/lang/String;)V

    .line 188
    invoke-virtual {p0}, Lcom/s1243808733/aide/functions/r8merger/ApkDexMerger;->clearWorkDir()V

    .line 189
    iget-object p1, p0, Lcom/s1243808733/aide/functions/r8merger/ApkDexMerger;->mContext:Lcom/s1243808733/aide/functions/r8merger/R8Log;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    sub-long/2addr v4, v0

    long-to-float v0, v4

    const v1, 0x4e6e6b28  # 1.0E9f

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v2, v3

    const-string v0, "完成/%.1fs"

    invoke-virtual {p1, v0, v2}, Lcom/s1243808733/aide/functions/r8merger/R8Log;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    return-void

    :catch_1ed
    move-exception p1

    .line 179
    iget-object v0, p0, Lcom/s1243808733/aide/functions/r8merger/ApkDexMerger;->mContext:Lcom/s1243808733/aide/functions/r8merger/R8Log;

    const-string v1, "APK构建失败"

    invoke-virtual {v0, v1}, Lcom/s1243808733/aide/functions/r8merger/R8Log;->println(Ljava/lang/String;)V

    .line 180
    throw p1

    .line 174
    :cond_1f6
    new-instance p1, Ljava/io/IOException;

    const-string v0, "获取文件列表失败"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_1fe
    move-exception p1

    .line 162
    iget-object v0, p0, Lcom/s1243808733/aide/functions/r8merger/ApkDexMerger;->mContext:Lcom/s1243808733/aide/functions/r8merger/R8Log;

    const-string v1, "合并Dex解压失败"

    invoke-virtual {v0, v1}, Lcom/s1243808733/aide/functions/r8merger/R8Log;->println(Ljava/lang/String;)V

    .line 163
    iget-object v0, p0, Lcom/s1243808733/aide/functions/r8merger/ApkDexMerger;->mContext:Lcom/s1243808733/aide/functions/r8merger/R8Log;

    invoke-static {p1}, Lcom/blankj/utilcode/util/ThrowableUtils;->getFullStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/s1243808733/aide/functions/r8merger/R8Log;->println(Ljava/lang/String;)V

    .line 165
    throw p1

    :catchall_210
    move-exception p1

    .line 148
    iget-object v0, p0, Lcom/s1243808733/aide/functions/r8merger/ApkDexMerger;->mContext:Lcom/s1243808733/aide/functions/r8merger/R8Log;

    const-string v1, "合并失败"

    invoke-virtual {v0, v1}, Lcom/s1243808733/aide/functions/r8merger/R8Log;->println(Ljava/lang/String;)V

    .line 149
    iget-object v0, p0, Lcom/s1243808733/aide/functions/r8merger/ApkDexMerger;->mContext:Lcom/s1243808733/aide/functions/r8merger/R8Log;

    invoke-static {p1}, Lcom/blankj/utilcode/util/ThrowableUtils;->getFullStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/s1243808733/aide/functions/r8merger/R8Log;->println(Ljava/lang/String;)V

    .line 150
    throw p1

    .line 60
    :cond_222
    new-instance p1, Ljava/io/IOException;

    const-string v0, "无dex文件"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 58
    :cond_22a
    new-instance p1, Ljava/io/IOException;

    const-string v0, "获取dex列表失败"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_232
    move-exception p1

    .line 50
    iget-object v0, p0, Lcom/s1243808733/aide/functions/r8merger/ApkDexMerger;->mContext:Lcom/s1243808733/aide/functions/r8merger/R8Log;

    const-string v1, "解压失败"

    invoke-virtual {v0, v1}, Lcom/s1243808733/aide/functions/r8merger/R8Log;->println(Ljava/lang/String;)V

    .line 51
    goto :goto_23c

    :goto_23b
    throw p1

    :goto_23c
    goto :goto_23b
.end method
