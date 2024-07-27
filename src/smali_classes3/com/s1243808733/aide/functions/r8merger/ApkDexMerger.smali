
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
.method public constructor <init>(Lcom/s1243808733/aide/functions/r8merger/R8Log;Ljava/io/File;)V
    .registers 6

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
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/s1243808733/aide/functions/r8merger/ApkDexMerger;->mWorkDir:Ljava/io/File;

    const-string v2, "decompress"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/s1243808733/aide/functions/r8merger/ApkDexMerger;->mDecompressDir:Ljava/io/File;

    .line 40
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/s1243808733/aide/functions/r8merger/ApkDexMerger;->mWorkDir:Ljava/io/File;

    const-string v2, "output.zip"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/s1243808733/aide/functions/r8merger/ApkDexMerger;->mOutDexFile:Ljava/io/File;

    return-void
.end method

.method private MergeDexs(Ljava/util/List;Ljava/io/File;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;",
            "Ljava/io/File;",
            ")V^",
            "Ljava/lang/Exception;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 194
    invoke-static {p1, p2}, Lnet/f401/aide/D8MergerProxy;->performMerge(Ljava/util/List;Ljava/io/File;)V
    
    return-void
.end method

.method static synthetic access$1000008(Lcom/s1243808733/aide/functions/r8merger/ApkDexMerger;Ljava/io/File;)Z
    .registers 3

    invoke-direct {p0, p1}, Lcom/s1243808733/aide/functions/r8merger/ApkDexMerger;->isDexFileByName(Ljava/io/File;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$L1000000(Lcom/s1243808733/aide/functions/r8merger/ApkDexMerger;)Lcom/s1243808733/aide/functions/r8merger/R8Log;
    .registers 2

    iget-object v0, p0, Lcom/s1243808733/aide/functions/r8merger/ApkDexMerger;->mContext:Lcom/s1243808733/aide/functions/r8merger/R8Log;

    return-object v0
.end method

.method private static array2List([Ljava/lang/Object;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .line 235
    if-nez p0, :cond_0

    const/4 v0, 0x0

    check-cast v0, Ljava/util/List;

    .line 240
    :goto_0
    return-object v0

    .line 236
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    array-length v0, p0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 237
    const/4 v0, 0x0

    :goto_1
    array-length v2, p0

    if-lt v0, v2, :cond_1

    move-object v0, v1

    .line 240
    goto :goto_0

    .line 238
    :cond_1
    aget-object v2, p0, v0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 237
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private static delectAllFileInDir(Ljava/io/File;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")V"
        }
    .end annotation

    .line 244
    if-eqz p0, :cond_0

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

    if-eqz v0, :cond_4

    .line 246
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 247
    const/4 v0, 0x0

    :goto_1
    if-eqz v1, :cond_2

    array-length v2, v1

    if-lt v0, v2, :cond_3

    .line 250
    :cond_2
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 248
    :cond_3
    aget-object v2, v1, v0

    invoke-static {v2}, Lcom/s1243808733/aide/functions/r8merger/ApkDexMerger;->delectAllFileInDir(Ljava/io/File;)V

    .line 247
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 252
    :cond_4
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    goto :goto_0
.end method

.method public static getClassesDexPathsFormApk(Ljava/io/File;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;^",
            "Ljava/io/IOException;"
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
    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 228
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 231
    return-object v1

    .line 225
    :cond_1
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
.end method

.method private isDexFileByName(Ljava/io/File;)Z
    .registers 4

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

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public FiletoPath(Ljava/util/List;)Ljava/util/List;
    .registers 5
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
    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 213
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 215
    return-object v1

    .line 212
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 213
    invoke-virtual {v0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public clearWorkDir()V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 219
    iget-object v0, p0, Lcom/s1243808733/aide/functions/r8merger/ApkDexMerger;->mWorkDir:Ljava/io/File;

    invoke-static {v0}, Lcom/s1243808733/aide/functions/r8merger/ApkDexMerger;->delectAllFileInDir(Ljava/io/File;)V

    return-void
.end method

.method public merger(Ljava/io/File;)V
    .registers 77
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")V^",
            "Ljava/lang/Throwable;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 44
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    .line 45
    invoke-virtual/range {p0 .. p0}, Lcom/s1243808733/aide/functions/r8merger/ApkDexMerger;->clearWorkDir()V

    .line 46
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/s1243808733/aide/functions/r8merger/ApkDexMerger;->mContext:Lcom/s1243808733/aide/functions/r8merger/R8Log;

    const-string/jumbo v3, "\u6b63\u5728\u89e3\u538b..."

    invoke-virtual {v2, v3}, Lcom/s1243808733/aide/functions/r8merger/R8Log;->println(Ljava/lang/String;)V

    .line 48
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/s1243808733/aide/functions/r8merger/ApkDexMerger;->mApkFile:Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/s1243808733/aide/functions/r8merger/ApkDexMerger;->mDecompressDir:Ljava/io/File;

    invoke-static {v2, v3}, Lcom/s1243808733/android/dexmerger/ZipUtils;->unzipFile(Ljava/io/File;Ljava/io/File;)Ljava/util/List;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/s1243808733/aide/functions/r8merger/ApkDexMerger;->mContext:Lcom/s1243808733/aide/functions/r8merger/R8Log;

    const-string/jumbo v3, "\u83b7\u53d6Dex..."

    invoke-virtual {v2, v3}, Lcom/s1243808733/aide/functions/r8merger/R8Log;->println(Ljava/lang/String;)V

    .line 56
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/s1243808733/aide/functions/r8merger/ApkDexMerger;->mDecompressDir:Ljava/io/File;

    new-instance v3, Lcom/s1243808733/aide/functions/r8merger/ApkDexMerger$DexFileFilter;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/s1243808733/aide/functions/r8merger/ApkDexMerger$DexFileFilter;-><init>(Lcom/s1243808733/aide/functions/r8merger/ApkDexMerger;)V

    invoke-virtual {v2, v3}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v2

    invoke-static {v2}, Lcom/s1243808733/aide/functions/r8merger/ApkDexMerger;->array2List([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 57
    if-nez v2, :cond_0

    .line 58
    new-instance v2, Ljava/io/IOException;

    const-string/jumbo v3, "\u83b7\u53d6dex\u5217\u8868\u5931\u8d25"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 48
    :catch_0
    move-exception v2

    .line 50
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/s1243808733/aide/functions/r8merger/ApkDexMerger;->mContext:Lcom/s1243808733/aide/functions/r8merger/R8Log;

    const-string/jumbo v4, "\u89e3\u538b\u5931\u8d25"

    invoke-virtual {v3, v4}, Lcom/s1243808733/aide/functions/r8merger/R8Log;->println(Ljava/lang/String;)V

    .line 51
    throw v2

    .line 59
    :cond_0
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 60
    new-instance v2, Ljava/io/IOException;

    const-string/jumbo v3, "\u65e0dex\u6587\u4ef6"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 62
    :cond_1
    new-instance v3, Lcom/s1243808733/aide/functions/r8merger/ApkDexMerger$DexFileComparator;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/s1243808733/aide/functions/r8merger/ApkDexMerger$DexFileComparator;-><init>(Lcom/s1243808733/aide/functions/r8merger/ApkDexMerger;)V

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 65
    const/4 v3, 0x0

    move v4, v3

    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lt v4, v3, :cond_3

    .line 143
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/s1243808733/aide/functions/r8merger/ApkDexMerger;->mContext:Lcom/s1243808733/aide/functions/r8merger/R8Log;

    const-string v4, "\u5f00\u59cb\u5408\u5e76Dex..."

    invoke-virtual {v3, v4}, Lcom/s1243808733/aide/functions/r8merger/R8Log;->println(Ljava/lang/String;)V

    .line 145
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/s1243808733/aide/functions/r8merger/ApkDexMerger;->mOutDexFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 146
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/s1243808733/aide/functions/r8merger/ApkDexMerger;->mOutDexFile:Ljava/io/File;

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/s1243808733/aide/functions/r8merger/ApkDexMerger;->MergeDexs(Ljava/util/List;Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 154
    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 155
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_4

    .line 160
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/s1243808733/aide/functions/r8merger/ApkDexMerger;->mOutDexFile:Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/s1243808733/aide/functions/r8merger/ApkDexMerger;->mDecompressDir:Ljava/io/File;

    invoke-static {v2, v3}, Lcom/s1243808733/android/dexmerger/ZipUtils;->unzipFile(Ljava/io/File;Ljava/io/File;)Ljava/util/List;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 168
    new-instance v2, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/s1243808733/aide/functions/r8merger/ApkDexMerger;->mWorkDir:Ljava/io/File;

    const-string v4, "build/apk"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 169
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 171
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/s1243808733/aide/functions/r8merger/ApkDexMerger;->mContext:Lcom/s1243808733/aide/functions/r8merger/R8Log;

    const-string/jumbo v4, "\u91cd\u65b0\u6784\u5efaAPK..."

    invoke-virtual {v3, v4}, Lcom/s1243808733/aide/functions/r8merger/R8Log;->println(Ljava/lang/String;)V

    .line 172
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/s1243808733/aide/functions/r8merger/ApkDexMerger;->mDecompressDir:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    invoke-static {v3}, Lcom/s1243808733/aide/functions/r8merger/ApkDexMerger;->array2List([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 173
    if-eqz v3, :cond_2

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 174
    :cond_2
    new-instance v2, Ljava/io/IOException;

    const-string/jumbo v3, "\u83b7\u53d6\u6587\u4ef6\u5217\u8868\u5931\u8d25"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 66
    :cond_3
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/File;

    .line 67
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    .line 68
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/s1243808733/aide/functions/r8merger/ApkDexMerger;->mContext:Lcom/s1243808733/aide/functions/r8merger/R8Log;

    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v11, Ljava/lang/StringBuffer;

    invoke-direct {v11}, Ljava/lang/StringBuffer;-><init>()V

    const-string v12, "["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    const-string v11, "] "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Lcom/s1243808733/aide/functions/r8merger/R8Log;->println(Ljava/lang/String;)V

    .line 69
    new-instance v5, Lcom/s1243808733/aide/functions/r8merger/DexHeader;

    invoke-direct {v5, v3}, Lcom/s1243808733/aide/functions/r8merger/DexHeader;-><init>(Ljava/io/File;)V

    .line 70
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v11, Ljava/lang/StringBuffer;

    invoke-direct {v11}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v12, Ljava/lang/StringBuffer;

    invoke-direct {v12}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v13, Ljava/lang/StringBuffer;

    invoke-direct {v13}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v14, Ljava/lang/StringBuffer;

    invoke-direct {v14}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v15, Ljava/lang/StringBuffer;

    invoke-direct {v15}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v16, Ljava/lang/StringBuffer;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v17, Ljava/lang/StringBuffer;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v18, Ljava/lang/StringBuffer;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v19, Ljava/lang/StringBuffer;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v20, Ljava/lang/StringBuffer;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v21, Ljava/lang/StringBuffer;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v22, Ljava/lang/StringBuffer;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v23, Ljava/lang/StringBuffer;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v24, Ljava/lang/StringBuffer;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v25, Ljava/lang/StringBuffer;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v26, Ljava/lang/StringBuffer;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v27, Ljava/lang/StringBuffer;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v28, Ljava/lang/StringBuffer;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v29, Ljava/lang/StringBuffer;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v30, Ljava/lang/StringBuffer;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v31, Ljava/lang/StringBuffer;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v32, Ljava/lang/StringBuffer;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v33, Ljava/lang/StringBuffer;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v34, Ljava/lang/StringBuffer;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v35, Ljava/lang/StringBuffer;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v36, Ljava/lang/StringBuffer;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v37, Ljava/lang/StringBuffer;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v38, Ljava/lang/StringBuffer;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v39, Ljava/lang/StringBuffer;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v40, Ljava/lang/StringBuffer;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v41, Ljava/lang/StringBuffer;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v42, Ljava/lang/StringBuffer;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v43, Ljava/lang/StringBuffer;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v44, Ljava/lang/StringBuffer;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v45, Ljava/lang/StringBuffer;

    invoke-direct/range {v45 .. v45}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v46, Ljava/lang/StringBuffer;

    invoke-direct/range {v46 .. v46}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v47, Ljava/lang/StringBuffer;

    invoke-direct/range {v47 .. v47}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v48, Ljava/lang/StringBuffer;

    invoke-direct/range {v48 .. v48}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v49, Ljava/lang/StringBuffer;

    invoke-direct/range {v49 .. v49}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v50, Ljava/lang/StringBuffer;

    invoke-direct/range {v50 .. v50}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v51, Ljava/lang/StringBuffer;

    invoke-direct/range {v51 .. v51}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v52, Ljava/lang/StringBuffer;

    invoke-direct/range {v52 .. v52}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v53, Ljava/lang/StringBuffer;

    invoke-direct/range {v53 .. v53}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v54, Ljava/lang/StringBuffer;

    invoke-direct/range {v54 .. v54}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v55, Ljava/lang/StringBuffer;

    invoke-direct/range {v55 .. v55}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v56, Ljava/lang/StringBuffer;

    invoke-direct/range {v56 .. v56}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v57, Ljava/lang/StringBuffer;

    invoke-direct/range {v57 .. v57}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v58, Ljava/lang/StringBuffer;

    invoke-direct/range {v58 .. v58}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v59, Ljava/lang/StringBuffer;

    invoke-direct/range {v59 .. v59}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v60, Ljava/lang/StringBuffer;

    invoke-direct/range {v60 .. v60}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v61, Ljava/lang/StringBuffer;

    invoke-direct/range {v61 .. v61}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v62, Ljava/lang/StringBuffer;

    invoke-direct/range {v62 .. v62}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v63, Ljava/lang/StringBuffer;

    invoke-direct/range {v63 .. v63}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v64, Ljava/lang/StringBuffer;

    invoke-direct/range {v64 .. v64}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v65, Ljava/lang/StringBuffer;

    invoke-direct/range {v65 .. v65}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v66, Ljava/lang/StringBuffer;

    invoke-direct/range {v66 .. v66}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v67, Ljava/lang/StringBuffer;

    invoke-direct/range {v67 .. v67}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v68, Ljava/lang/StringBuffer;

    invoke-direct/range {v68 .. v68}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v69, Ljava/lang/StringBuffer;

    invoke-direct/range {v69 .. v69}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v70, Ljava/lang/StringBuffer;

    invoke-direct/range {v70 .. v70}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v71, Ljava/lang/StringBuffer;

    invoke-direct/range {v71 .. v71}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v72, Ljava/lang/StringBuffer;

    invoke-direct/range {v72 .. v72}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v73, Ljava/lang/StringBuffer;

    invoke-direct/range {v73 .. v73}, Ljava/lang/StringBuffer;-><init>()V

    const-string v74, "magic = "

    invoke-virtual/range {v73 .. v74}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v73

    iget-object v0, v5, Lcom/s1243808733/aide/functions/r8merger/DexHeader;->magic:Ljava/lang/String;

    move-object/from16 v74, v0

    invoke-virtual/range {v73 .. v74}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v73

    invoke-virtual/range {v73 .. v73}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v73

    invoke-virtual/range {v72 .. v73}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v72

    const-string v73, "  "

    invoke-virtual/range {v72 .. v73}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v72

    invoke-virtual/range {v72 .. v72}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v72

    invoke-virtual/range {v71 .. v72}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v71

    const-string/jumbo v72, "\u6821\u9a8c\u7801 = "

    invoke-virtual/range {v71 .. v72}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v71

    invoke-virtual/range {v71 .. v71}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v71

    invoke-virtual/range {v70 .. v71}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v70

    iget-object v0, v5, Lcom/s1243808733/aide/functions/r8merger/DexHeader;->checksum:Ljava/lang/String;

    move-object/from16 v71, v0

    invoke-virtual/range {v70 .. v71}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v70

    invoke-virtual/range {v70 .. v70}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v70

    invoke-virtual/range {v69 .. v70}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v69

    const-string v70, "  "

    invoke-virtual/range {v69 .. v70}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v69

    invoke-virtual/range {v69 .. v69}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v69

    invoke-virtual/range {v68 .. v69}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v68

    const-string v69, "sha-1\u7b7e\u540d = "

    invoke-virtual/range {v68 .. v69}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v68

    invoke-virtual/range {v68 .. v68}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v68

    invoke-virtual/range {v67 .. v68}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v67

    iget-object v0, v5, Lcom/s1243808733/aide/functions/r8merger/DexHeader;->signature:Ljava/lang/String;

    move-object/from16 v68, v0

    invoke-virtual/range {v67 .. v68}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v67

    invoke-virtual/range {v67 .. v67}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v67

    invoke-virtual/range {v66 .. v67}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v66

    const-string v67, "  "

    invoke-virtual/range {v66 .. v67}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v66

    invoke-virtual/range {v66 .. v66}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v66

    invoke-virtual/range {v65 .. v66}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v65

    const-string v66, "dex\u6587\u4ef6\u603b\u957f\u5ea6 = "

    invoke-virtual/range {v65 .. v66}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v65

    invoke-virtual/range {v65 .. v65}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v65

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v64

    iget-object v0, v5, Lcom/s1243808733/aide/functions/r8merger/DexHeader;->fileSize:Ljava/lang/String;

    move-object/from16 v65, v0

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v64

    invoke-virtual/range {v63 .. v64}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v63

    const-string v64, "  "

    invoke-virtual/range {v63 .. v64}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v63

    invoke-virtual/range {v63 .. v63}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v63

    invoke-virtual/range {v62 .. v63}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v62

    const-string/jumbo v63, "\u6587\u4ef6\u5934\u957f\u5ea6 = "

    invoke-virtual/range {v62 .. v63}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v62

    invoke-virtual/range {v62 .. v62}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v62

    invoke-virtual/range {v61 .. v62}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v61

    iget-object v0, v5, Lcom/s1243808733/aide/functions/r8merger/DexHeader;->headerSize:Ljava/lang/String;

    move-object/from16 v62, v0

    invoke-virtual/range {v61 .. v62}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v61

    invoke-virtual/range {v61 .. v61}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v61

    invoke-virtual/range {v60 .. v61}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v60

    const-string v61, "  "

    invoke-virtual/range {v60 .. v61}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v60

    invoke-virtual/range {v60 .. v60}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v60

    invoke-virtual/range {v59 .. v60}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v59

    const-string v60, "\u5b57\u8282\u987a\u5e8f\u5e38\u91cf = "

    invoke-virtual/range {v59 .. v60}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v59

    invoke-virtual/range {v59 .. v59}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v59

    invoke-virtual/range {v58 .. v59}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v58

    iget-object v0, v5, Lcom/s1243808733/aide/functions/r8merger/DexHeader;->endianTag:Ljava/lang/String;

    move-object/from16 v59, v0

    invoke-virtual/range {v58 .. v59}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v58

    invoke-virtual/range {v58 .. v58}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v58

    invoke-virtual/range {v57 .. v58}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v57

    const-string v58, "  "

    invoke-virtual/range {v57 .. v58}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v57

    invoke-virtual/range {v57 .. v57}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v57

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v56

    const-string/jumbo v57, "\u8fde\u63a5\u6bb5\u5927\u5c0f = "

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v56

    invoke-virtual/range {v56 .. v56}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v56

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v55

    iget-object v0, v5, Lcom/s1243808733/aide/functions/r8merger/DexHeader;->linkSize:Ljava/lang/String;

    move-object/from16 v56, v0

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v55

    invoke-virtual/range {v55 .. v55}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v55

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v54

    const-string v55, "  "

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v54

    invoke-virtual/range {v54 .. v54}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v54

    invoke-virtual/range {v53 .. v54}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v53

    const-string/jumbo v54, "\u8fde\u63a5\u6bb5\u8d77\u59cb\u4f4d\u7f6e = "

    invoke-virtual/range {v53 .. v54}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v53

    invoke-virtual/range {v53 .. v53}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v53

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v52

    iget-object v0, v5, Lcom/s1243808733/aide/functions/r8merger/DexHeader;->linkOff:Ljava/lang/String;

    move-object/from16 v53, v0

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v52

    invoke-virtual/range {v52 .. v52}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v52

    invoke-virtual/range {v51 .. v52}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v51

    const-string v52, "  "

    invoke-virtual/range {v51 .. v52}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v51

    invoke-virtual/range {v51 .. v51}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v51

    invoke-virtual/range {v50 .. v51}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v50

    const-string v51, "map\u6570\u636e\u57fa\u5740 = "

    invoke-virtual/range {v50 .. v51}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v50

    invoke-virtual/range {v50 .. v50}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v50

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v49

    iget-object v0, v5, Lcom/s1243808733/aide/functions/r8merger/DexHeader;->mapOff:Ljava/lang/String;

    move-object/from16 v50, v0

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v49

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v48

    const-string v49, "  "

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v48

    invoke-virtual/range {v48 .. v48}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v48

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v47

    const-string v48, "\u5b57\u7b26\u4e32\u4e2a\u6570 = "

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v47

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v46

    iget-object v0, v5, Lcom/s1243808733/aide/functions/r8merger/DexHeader;->stringIdsSize:Ljava/lang/String;

    move-object/from16 v47, v0

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v46

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v45

    const-string v46, "  "

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v45

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v44

    const-string v45, "\u5b57\u7b26\u4e32\u57fa\u5740 = "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v44

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v43

    iget-object v0, v5, Lcom/s1243808733/aide/functions/r8merger/DexHeader;->stringIdsOff:Ljava/lang/String;

    move-object/from16 v44, v0

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v43

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v42

    const-string v43, "  "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v41

    const-string/jumbo v42, "\u7c7b\u578b\u4e2a\u6570 = "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v40

    iget-object v0, v5, Lcom/s1243808733/aide/functions/r8merger/DexHeader;->typeIdsSize:Ljava/lang/String;

    move-object/from16 v41, v0

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v40

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v39

    const-string v40, "  "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v38

    const-string/jumbo v39, "\u7c7b\u578b\u57fa\u5740 = "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v37

    iget-object v0, v5, Lcom/s1243808733/aide/functions/r8merger/DexHeader;->typeIdsOff:Ljava/lang/String;

    move-object/from16 v38, v0

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v37

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v36

    const-string v37, "  "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v35

    const-string v36, "\u539f\u578b\u4e2a\u6570 = "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v34

    iget-object v0, v5, Lcom/s1243808733/aide/functions/r8merger/DexHeader;->protoIdsSize:Ljava/lang/String;

    move-object/from16 v35, v0

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v33

    const-string v34, "  "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v32

    const-string v33, "\u539f\u578b\u57fa\u5740 = "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v31

    iget-object v0, v5, Lcom/s1243808733/aide/functions/r8merger/DexHeader;->protoIdsOff:Ljava/lang/String;

    move-object/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v30

    const-string v31, "  "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v29

    const-string v30, "\u5b57\u6bb5\u4e2a\u6570 = "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v28

    iget-object v0, v5, Lcom/s1243808733/aide/functions/r8merger/DexHeader;->fieldIdsSize:Ljava/lang/String;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v27

    const-string v28, "  "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v26

    const-string v27, "\u5b57\u6bb5\u57fa\u5740 = "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v25

    iget-object v0, v5, Lcom/s1243808733/aide/functions/r8merger/DexHeader;->fieldIdsOff:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    const-string v25, "  "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v23

    const-string/jumbo v24, "\u65b9\u6cd5\u4e2a\u6570 = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v22

    iget-object v0, v5, Lcom/s1243808733/aide/functions/r8merger/DexHeader;->methodIdsSize:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v21

    const-string v22, "  "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v20

    const-string/jumbo v21, "\u65b9\u6cd5\u57fa\u5740 = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v19

    iget-object v0, v5, Lcom/s1243808733/aide/functions/r8merger/DexHeader;->methodIdsOff:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v18

    const-string v19, "  "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v17

    const-string/jumbo v18, "\u7c7b\u4e2a\u6570 = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v16

    iget-object v0, v5, Lcom/s1243808733/aide/functions/r8merger/DexHeader;->classDefsSize:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v15

    const-string v16, "  "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v14

    const-string/jumbo v15, "\u7c7b\u57fa\u5740 = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v13

    iget-object v14, v5, Lcom/s1243808733/aide/functions/r8merger/DexHeader;->classDefsOff:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    const-string v13, "  "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    const-string/jumbo v12, "\u6570\u636e\u5927\u5c0f = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    iget-object v11, v5, Lcom/s1243808733/aide/functions/r8merger/DexHeader;->dataSize:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    const-string v10, "  "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    const-string/jumbo v9, "\u6570\u636e\u6bb5\u57fa\u5740 = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v5, v5, Lcom/s1243808733/aide/functions/r8merger/DexHeader;->dataOff:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    .line 139
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/s1243808733/aide/functions/r8merger/ApkDexMerger;->mContext:Lcom/s1243808733/aide/functions/r8merger/R8Log;

    invoke-virtual {v5, v3}, Lcom/s1243808733/aide/functions/r8merger/R8Log;->println(Ljava/lang/String;)V

    .line 65
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto/16 :goto_0

    .line 146
    :catch_1
    move-exception v2

    .line 148
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/s1243808733/aide/functions/r8merger/ApkDexMerger;->mContext:Lcom/s1243808733/aide/functions/r8merger/R8Log;

    const-string v4, "\u5408\u5e76\u5931\u8d25"

    invoke-virtual {v3, v4}, Lcom/s1243808733/aide/functions/r8merger/R8Log;->println(Ljava/lang/String;)V

    .line 149
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/s1243808733/aide/functions/r8merger/ApkDexMerger;->mContext:Lcom/s1243808733/aide/functions/r8merger/R8Log;

    invoke-static {v2}, Lcom/blankj/utilcode/util/ThrowableUtils;->getFullStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/s1243808733/aide/functions/r8merger/R8Log;->println(Ljava/lang/String;)V

    .line 150
    throw v2

    .line 154
    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    .line 155
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    goto/16 :goto_1

    .line 160
    :catch_2
    move-exception v2

    .line 162
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/s1243808733/aide/functions/r8merger/ApkDexMerger;->mContext:Lcom/s1243808733/aide/functions/r8merger/R8Log;

    const-string v4, "\u5408\u5e76Dex\u89e3\u538b\u5931\u8d25"

    invoke-virtual {v3, v4}, Lcom/s1243808733/aide/functions/r8merger/R8Log;->println(Ljava/lang/String;)V

    .line 163
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/s1243808733/aide/functions/r8merger/ApkDexMerger;->mContext:Lcom/s1243808733/aide/functions/r8merger/R8Log;

    invoke-static {v2}, Lcom/blankj/utilcode/util/ThrowableUtils;->getFullStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/s1243808733/aide/functions/r8merger/R8Log;->println(Ljava/lang/String;)V

    .line 165
    throw v2

    .line 177
    :cond_5
    :try_start_3
    invoke-static {v3, v2}, Lcom/s1243808733/android/dexmerger/ZipUtils;->zipFiles(Ljava/util/Collection;Ljava/io/File;)Z
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 182
    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 183
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/s1243808733/aide/functions/r8merger/ApkDexMerger;->mContext:Lcom/s1243808733/aide/functions/r8merger/R8Log;

    const-string v3, "APK\u5bfc\u51fa\u5931\u8d25"

    invoke-virtual {v2, v3}, Lcom/s1243808733/aide/functions/r8merger/R8Log;->println(Ljava/lang/String;)V

    .line 187
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/s1243808733/aide/functions/r8merger/ApkDexMerger;->mContext:Lcom/s1243808733/aide/functions/r8merger/R8Log;

    const-string/jumbo v3, "\u6e05\u9664\u7f13\u5b58..."

    invoke-virtual {v2, v3}, Lcom/s1243808733/aide/functions/r8merger/R8Log;->println(Ljava/lang/String;)V

    .line 188
    invoke-virtual/range {p0 .. p0}, Lcom/s1243808733/aide/functions/r8merger/ApkDexMerger;->clearWorkDir()V

    .line 189
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/s1243808733/aide/functions/r8merger/ApkDexMerger;->mContext:Lcom/s1243808733/aide/functions/r8merger/R8Log;

    const-string v3, "\u5b8c\u6210/%.1fs"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    new-instance v8, Ljava/lang/Float;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v10

    sub-long v6, v10, v6

    long-to-float v6, v6

    const v7, 0x4e6e6b28    # 1.0E9f

    div-float/2addr v6, v7

    invoke-direct {v8, v6}, Ljava/lang/Float;-><init>(F)V

    aput-object v8, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/s1243808733/aide/functions/r8merger/R8Log;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    return-void

    .line 177
    :catch_3
    move-exception v2

    .line 179
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/s1243808733/aide/functions/r8merger/ApkDexMerger;->mContext:Lcom/s1243808733/aide/functions/r8merger/R8Log;

    const-string v4, "APK\u6784\u5efa\u5931\u8d25"

    invoke-virtual {v3, v4}, Lcom/s1243808733/aide/functions/r8merger/R8Log;->println(Ljava/lang/String;)V

    .line 180
    throw v2
.end method