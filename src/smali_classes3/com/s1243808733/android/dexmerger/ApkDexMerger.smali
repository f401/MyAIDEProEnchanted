.class public Lcom/s1243808733/android/dexmerger/ApkDexMerger;
.super Ljava/lang/Object;
.source "ApkDexMerger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/s1243808733/android/dexmerger/ApkDexMerger$DexFileComparator;,
        Lcom/s1243808733/android/dexmerger/ApkDexMerger$DexFileFilter;
    }
.end annotation


# instance fields
.field private final mApkFile:Ljava/io/File;

.field private final mContext:Lcom/s1243808733/android/dx/command/dexer/DxContext;

.field private final mDecompressDir:Ljava/io/File;

.field private final mWorkDir:Ljava/io/File;


# direct methods
.method public constructor <init>(Lcom/s1243808733/android/dx/command/dexer/DxContext;Ljava/io/File;)V
    .registers 6

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/s1243808733/android/dexmerger/ApkDexMerger;->mContext:Lcom/s1243808733/android/dx/command/dexer/DxContext;

    .line 29
    iput-object p2, p0, Lcom/s1243808733/android/dexmerger/ApkDexMerger;->mApkFile:Ljava/io/File;

    .line 30
    new-instance v0, Ljava/io/File;

    invoke-virtual {p2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    const-string v2, ".dexmerger"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/s1243808733/android/dexmerger/ApkDexMerger;->mWorkDir:Ljava/io/File;

    .line 31
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/s1243808733/android/dexmerger/ApkDexMerger;->mWorkDir:Ljava/io/File;

    const-string v2, "decompress"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/s1243808733/android/dexmerger/ApkDexMerger;->mDecompressDir:Ljava/io/File;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .registers 3

    .line 24
    new-instance v0, Lcom/s1243808733/android/dx/command/dexer/DxContext;

    invoke-direct {v0}, Lcom/s1243808733/android/dx/command/dexer/DxContext;-><init>()V

    invoke-direct {p0, v0, p1}, Lcom/s1243808733/android/dexmerger/ApkDexMerger;-><init>(Lcom/s1243808733/android/dx/command/dexer/DxContext;Ljava/io/File;)V

    return-void
.end method

.method static synthetic access$1000006(Lcom/s1243808733/android/dexmerger/ApkDexMerger;Ljava/io/File;)Z
    .registers 3

    invoke-direct {p0, p1}, Lcom/s1243808733/android/dexmerger/ApkDexMerger;->isDexFileByName(Ljava/io/File;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$L1000000(Lcom/s1243808733/android/dexmerger/ApkDexMerger;)Lcom/s1243808733/android/dx/command/dexer/DxContext;
    .registers 2

    iget-object v0, p0, Lcom/s1243808733/android/dexmerger/ApkDexMerger;->mContext:Lcom/s1243808733/android/dx/command/dexer/DxContext;

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

    .line 139
    if-nez p0, :cond_0

    const/4 v0, 0x0

    check-cast v0, Ljava/util/List;

    .line 144
    :goto_0
    return-object v0

    .line 140
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    array-length v0, p0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 141
    const/4 v0, 0x0

    :goto_1
    array-length v2, p0

    if-lt v0, v2, :cond_1

    move-object v0, v1

    .line 144
    goto :goto_0

    .line 142
    :cond_1
    aget-object v2, p0, v0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 141
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

    .line 148
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 156
    :cond_0
    :goto_0
    return-void

    .line 149
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 150
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 151
    const/4 v0, 0x0

    :goto_1
    if-eqz v1, :cond_2

    array-length v2, v1

    if-lt v0, v2, :cond_3

    .line 154
    :cond_2
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 152
    :cond_3
    aget-object v2, v1, v0

    invoke-static {v2}, Lcom/s1243808733/android/dexmerger/ApkDexMerger;->delectAllFileInDir(Ljava/io/File;)V

    .line 151
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 156
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

    .line 127
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 128
    invoke-static {p0}, Lcom/s1243808733/android/dexmerger/ZipUtils;->getFilesPath(Ljava/io/File;)Ljava/util/List;

    move-result-object v0

    .line 129
    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 132
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 135
    return-object v1

    .line 129
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 130
    const-string v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 131
    const-string v3, "classes"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, ".dex"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 132
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private isDexFileByName(Ljava/io/File;)Z
    .registers 4

    .line 161
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 162
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
.method public clearWorkDir()V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 123
    iget-object v0, p0, Lcom/s1243808733/android/dexmerger/ApkDexMerger;->mWorkDir:Ljava/io/File;

    invoke-static {v0}, Lcom/s1243808733/android/dexmerger/ApkDexMerger;->delectAllFileInDir(Ljava/io/File;)V

    return-void
.end method

.method public merger(Ljava/io/File;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")V^",
            "Ljava/io/IOException;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v12, 0x1

    const/4 v3, 0x0

    .line 35
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 36
    invoke-virtual {p0}, Lcom/s1243808733/android/dexmerger/ApkDexMerger;->clearWorkDir()V

    .line 37
    iget-object v0, p0, Lcom/s1243808733/android/dexmerger/ApkDexMerger;->mContext:Lcom/s1243808733/android/dx/command/dexer/DxContext;

    iget-object v0, v0, Lcom/s1243808733/android/dx/command/dexer/DxContext;->out:Ljava/io/PrintStream;

    const-string/jumbo v1, "\u6b63\u5728\u89e3\u538b..."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 39
    :try_start_0
    iget-object v0, p0, Lcom/s1243808733/android/dexmerger/ApkDexMerger;->mApkFile:Ljava/io/File;

    iget-object v1, p0, Lcom/s1243808733/android/dexmerger/ApkDexMerger;->mDecompressDir:Ljava/io/File;

    invoke-static {v0, v1}, Lcom/s1243808733/android/dexmerger/ZipUtils;->unzipFile(Ljava/io/File;Ljava/io/File;)Ljava/util/List;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    iget-object v0, p0, Lcom/s1243808733/android/dexmerger/ApkDexMerger;->mContext:Lcom/s1243808733/android/dx/command/dexer/DxContext;

    iget-object v0, v0, Lcom/s1243808733/android/dx/command/dexer/DxContext;->out:Ljava/io/PrintStream;

    const-string/jumbo v1, "\u83b7\u53d6Dex..."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 47
    iget-object v0, p0, Lcom/s1243808733/android/dexmerger/ApkDexMerger;->mDecompressDir:Ljava/io/File;

    new-instance v1, Lcom/s1243808733/android/dexmerger/ApkDexMerger$DexFileFilter;

    invoke-direct {v1, p0}, Lcom/s1243808733/android/dexmerger/ApkDexMerger$DexFileFilter;-><init>(Lcom/s1243808733/android/dexmerger/ApkDexMerger;)V

    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/s1243808733/android/dexmerger/ApkDexMerger;->array2List([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 48
    if-nez v1, :cond_0

    .line 49
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "\u83b7\u53d6dex\u5217\u8868\u5931\u8d25"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 39
    :catch_0
    move-exception v0

    .line 41
    iget-object v1, p0, Lcom/s1243808733/android/dexmerger/ApkDexMerger;->mContext:Lcom/s1243808733/android/dx/command/dexer/DxContext;

    iget-object v1, v1, Lcom/s1243808733/android/dx/command/dexer/DxContext;->err:Ljava/io/PrintStream;

    const-string/jumbo v2, "\u89e3\u538b\u5931\u8d25"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 42
    throw v0

    .line 50
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 51
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "\u65e0dex\u6587\u4ef6"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 53
    :cond_1
    new-instance v0, Lcom/s1243808733/android/dexmerger/ApkDexMerger$DexFileComparator;

    invoke-direct {v0, p0}, Lcom/s1243808733/android/dexmerger/ApkDexMerger$DexFileComparator;-><init>(Lcom/s1243808733/android/dexmerger/ApkDexMerger;)V

    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 55
    new-instance v6, Lcom/s1243808733/android/dexmerger/MultDexMerger$Builder;

    iget-object v0, p0, Lcom/s1243808733/android/dexmerger/ApkDexMerger;->mContext:Lcom/s1243808733/android/dx/command/dexer/DxContext;

    invoke-direct {v6, v0}, Lcom/s1243808733/android/dexmerger/MultDexMerger$Builder;-><init>(Lcom/s1243808733/android/dx/command/dexer/DxContext;)V

    .line 56
    new-array v0, v3, [Ljava/io/File;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/io/File;

    invoke-virtual {v6, v0}, Lcom/s1243808733/android/dexmerger/MultDexMerger$Builder;->add([Ljava/io/File;)Lcom/s1243808733/android/dexmerger/MultDexMerger$Builder;

    move v2, v3

    .line 59
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-lt v2, v0, :cond_3

    .line 66
    iget-object v0, p0, Lcom/s1243808733/android/dexmerger/ApkDexMerger;->mContext:Lcom/s1243808733/android/dx/command/dexer/DxContext;

    iget-object v0, v0, Lcom/s1243808733/android/dx/command/dexer/DxContext;->out:Ljava/io/PrintStream;

    const-string v2, "\u5f00\u59cb\u5408\u5e76Dex..."

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 68
    :try_start_1
    invoke-virtual {v6}, Lcom/s1243808733/android/dexmerger/MultDexMerger$Builder;->create()Lcom/s1243808733/android/dexmerger/MultDexMerger;

    move-result-object v0

    .line 71
    invoke-virtual {v0}, Lcom/s1243808733/android/dexmerger/MultDexMerger;->merger()Ljava/util/List;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v6

    move-object v0, v1

    .line 78
    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 79
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_4

    move v1, v3

    .line 83
    :goto_2
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_5

    .line 97
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/s1243808733/android/dexmerger/ApkDexMerger;->mWorkDir:Ljava/io/File;

    const-string v2, "build/apk"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 98
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 100
    iget-object v1, p0, Lcom/s1243808733/android/dexmerger/ApkDexMerger;->mContext:Lcom/s1243808733/android/dx/command/dexer/DxContext;

    iget-object v1, v1, Lcom/s1243808733/android/dx/command/dexer/DxContext;->out:Ljava/io/PrintStream;

    const-string/jumbo v2, "\u91cd\u65b0\u6784\u5efaAPK..."

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 101
    iget-object v1, p0, Lcom/s1243808733/android/dexmerger/ApkDexMerger;->mDecompressDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    invoke-static {v1}, Lcom/s1243808733/android/dexmerger/ApkDexMerger;->array2List([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 102
    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 103
    :cond_2
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "\u83b7\u53d6\u6587\u4ef6\u5217\u8868\u5931\u8d25"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 60
    :cond_3
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 61
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 62
    iget-object v7, p0, Lcom/s1243808733/android/dexmerger/ApkDexMerger;->mContext:Lcom/s1243808733/android/dx/command/dexer/DxContext;

    iget-object v7, v7, Lcom/s1243808733/android/dx/command/dexer/DxContext;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    const-string v11, "["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    const-string v10, "] "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 59
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_0

    .line 71
    :catch_1
    move-exception v0

    .line 73
    iget-object v1, p0, Lcom/s1243808733/android/dexmerger/ApkDexMerger;->mContext:Lcom/s1243808733/android/dx/command/dexer/DxContext;

    iget-object v1, v1, Lcom/s1243808733/android/dx/command/dexer/DxContext;->err:Ljava/io/PrintStream;

    const-string v2, "Dex\u5408\u5e76\u5931\u8d25"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 74
    throw v0

    .line 78
    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 79
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto/16 :goto_1

    .line 84
    :cond_5
    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dex/Dex;

    .line 85
    if-ge v1, v12, :cond_7

    const-string v2, ""

    :goto_3
    const-string v7, "classes%s.dex"

    new-array v8, v12, [Ljava/lang/Object;

    aput-object v2, v8, v3

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 86
    iget-object v7, p0, Lcom/s1243808733/android/dexmerger/ApkDexMerger;->mContext:Lcom/s1243808733/android/dx/command/dexer/DxContext;

    iget-object v7, v7, Lcom/s1243808733/android/dx/command/dexer/DxContext;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    const-string v11, "["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    const-string v10, "] "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 87
    iget-object v7, p0, Lcom/s1243808733/android/dexmerger/ApkDexMerger;->mDecompressDir:Ljava/io/File;

    .line 88
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_6

    .line 89
    invoke-virtual {v7}, Ljava/io/File;->mkdirs()Z

    .line 91
    :cond_6
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v7, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 92
    invoke-virtual {v0, v8}, Lcom/s1243808733/android/dex/Dex;->writeTo(Ljava/io/File;)V

    .line 83
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_2

    .line 85
    :cond_7
    add-int/lit8 v2, v1, 0x1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    .line 106
    :cond_8
    :try_start_2
    invoke-static {v1, v0}, Lcom/s1243808733/android/dexmerger/ZipUtils;->zipFiles(Ljava/util/Collection;Ljava/io/File;)Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 111
    invoke-virtual {v0, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 112
    iget-object v0, p0, Lcom/s1243808733/android/dexmerger/ApkDexMerger;->mContext:Lcom/s1243808733/android/dx/command/dexer/DxContext;

    iget-object v0, v0, Lcom/s1243808733/android/dx/command/dexer/DxContext;->err:Ljava/io/PrintStream;

    const-string v1, "APK\u5bfc\u51fa\u5931\u8d25"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 116
    :cond_9
    iget-object v0, p0, Lcom/s1243808733/android/dexmerger/ApkDexMerger;->mContext:Lcom/s1243808733/android/dx/command/dexer/DxContext;

    iget-object v0, v0, Lcom/s1243808733/android/dx/command/dexer/DxContext;->out:Ljava/io/PrintStream;

    const-string/jumbo v1, "\u6e05\u9664\u7f13\u5b58..."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 117
    invoke-virtual {p0}, Lcom/s1243808733/android/dexmerger/ApkDexMerger;->clearWorkDir()V

    .line 118
    iget-object v0, p0, Lcom/s1243808733/android/dexmerger/ApkDexMerger;->mContext:Lcom/s1243808733/android/dx/command/dexer/DxContext;

    iget-object v0, v0, Lcom/s1243808733/android/dx/command/dexer/DxContext;->out:Ljava/io/PrintStream;

    const-string v1, "\u5b8c\u6210/%.1fs"

    new-array v2, v12, [Ljava/lang/Object;

    new-instance v6, Ljava/lang/Float;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    sub-long v4, v8, v4

    long-to-float v4, v4

    const v5, 0x4e6e6b28    # 1.0E9f

    div-float/2addr v4, v5

    invoke-direct {v6, v4}, Ljava/lang/Float;-><init>(F)V

    aput-object v6, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    return-void

    .line 106
    :catch_2
    move-exception v0

    .line 108
    iget-object v1, p0, Lcom/s1243808733/android/dexmerger/ApkDexMerger;->mContext:Lcom/s1243808733/android/dx/command/dexer/DxContext;

    iget-object v1, v1, Lcom/s1243808733/android/dx/command/dexer/DxContext;->err:Ljava/io/PrintStream;

    const-string v2, "APK\u6784\u5efa\u5931\u8d25"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 109
    throw v0
.end method
