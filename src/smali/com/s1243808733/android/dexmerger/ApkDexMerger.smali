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
.method static bridge synthetic -$$Nest$fgetmContext(Lcom/s1243808733/android/dexmerger/ApkDexMerger;)Lcom/s1243808733/android/dx/command/dexer/DxContext;
    .registers 1

    iget-object p0, p0, Lcom/s1243808733/android/dexmerger/ApkDexMerger;->mContext:Lcom/s1243808733/android/dx/command/dexer/DxContext;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$misDexFileByName(Lcom/s1243808733/android/dexmerger/ApkDexMerger;Ljava/io/File;)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/s1243808733/android/dexmerger/ApkDexMerger;->isDexFileByName(Ljava/io/File;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Lcom/s1243808733/android/dx/command/dexer/DxContext;Ljava/io/File;)V
    .registers 4

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/s1243808733/android/dexmerger/ApkDexMerger;->mContext:Lcom/s1243808733/android/dx/command/dexer/DxContext;

    .line 29
    iput-object p2, p0, Lcom/s1243808733/android/dexmerger/ApkDexMerger;->mApkFile:Ljava/io/File;

    .line 30
    new-instance p1, Ljava/io/File;

    invoke-virtual {p2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p2

    const-string v0, ".dexmerger"

    invoke-direct {p1, p2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/s1243808733/android/dexmerger/ApkDexMerger;->mWorkDir:Ljava/io/File;

    .line 31
    new-instance p2, Ljava/io/File;

    const-string v0, "decompress"

    invoke-direct {p2, p1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/s1243808733/android/dexmerger/ApkDexMerger;->mDecompressDir:Ljava/io/File;

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

    .line 140
    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    .line 141
    :goto_b
    array-length v2, p0

    if-ge v1, v2, :cond_16

    .line 142
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

    .line 148
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_28

    .line 149
    :cond_9
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 150
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    :goto_14
    if-eqz v0, :cond_21

    .line 151
    array-length v2, v0

    if-ge v1, v2, :cond_21

    .line 152
    aget-object v2, v0, v1

    invoke-static {v2}, Lcom/s1243808733/android/dexmerger/ApkDexMerger;->delectAllFileInDir(Ljava/io/File;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    .line 154
    :cond_21
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    goto :goto_28

    .line 156
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

    .line 127
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 128
    invoke-static {p0}, Lcom/s1243808733/android/dexmerger/ZipUtils;->getFilesPath(Ljava/io/File;)Ljava/util/List;

    move-result-object p0

    .line 129
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

    .line 130
    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_22

    goto :goto_d

    .line 131
    :cond_22
    const-string v2, "classes"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    const-string v2, ".dex"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 132
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :cond_36
    return-object v0
.end method

.method private isDexFileByName(Ljava/io/File;)Z
    .registers 3

    .line 161
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 162
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result p1

    if-eqz p1, :cond_1c

    const-string p1, "classes"

    invoke-virtual {v0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1c

    .line 163
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
.method public clearWorkDir()V
    .registers 2

    .line 123
    iget-object v0, p0, Lcom/s1243808733/android/dexmerger/ApkDexMerger;->mWorkDir:Ljava/io/File;

    invoke-static {v0}, Lcom/s1243808733/android/dexmerger/ApkDexMerger;->delectAllFileInDir(Ljava/io/File;)V

    return-void
.end method

.method public merger(Ljava/io/File;)V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 35
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 36
    invoke-virtual {p0}, Lcom/s1243808733/android/dexmerger/ApkDexMerger;->clearWorkDir()V

    .line 37
    iget-object v2, p0, Lcom/s1243808733/android/dexmerger/ApkDexMerger;->mContext:Lcom/s1243808733/android/dx/command/dexer/DxContext;

    iget-object v2, v2, Lcom/s1243808733/android/dx/command/dexer/DxContext;->out:Ljava/io/PrintStream;

    const-string v3, "正在解压..."

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 39
    :try_start_10
    iget-object v2, p0, Lcom/s1243808733/android/dexmerger/ApkDexMerger;->mApkFile:Ljava/io/File;

    iget-object v3, p0, Lcom/s1243808733/android/dexmerger/ApkDexMerger;->mDecompressDir:Ljava/io/File;

    invoke-static {v2, v3}, Lcom/s1243808733/android/dexmerger/ZipUtils;->unzipFile(Ljava/io/File;Ljava/io/File;)Ljava/util/List;
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_17} :catch_18e

    .line 46
    iget-object v2, p0, Lcom/s1243808733/android/dexmerger/ApkDexMerger;->mContext:Lcom/s1243808733/android/dx/command/dexer/DxContext;

    iget-object v2, v2, Lcom/s1243808733/android/dx/command/dexer/DxContext;->out:Ljava/io/PrintStream;

    const-string v3, "获取Dex..."

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 47
    iget-object v2, p0, Lcom/s1243808733/android/dexmerger/ApkDexMerger;->mDecompressDir:Ljava/io/File;

    new-instance v3, Lcom/s1243808733/android/dexmerger/ApkDexMerger$DexFileFilter;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/s1243808733/android/dexmerger/ApkDexMerger$DexFileFilter;-><init>(Lcom/s1243808733/android/dexmerger/ApkDexMerger;Lcom/s1243808733/android/dexmerger/ApkDexMerger$DexFileFilter-IA;)V

    invoke-virtual {v2, v3}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v2

    invoke-static {v2}, Lcom/s1243808733/android/dexmerger/ApkDexMerger;->array2List([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_186

    .line 50
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_17e

    .line 53
    new-instance v3, Lcom/s1243808733/android/dexmerger/ApkDexMerger$DexFileComparator;

    invoke-direct {v3, p0, v4}, Lcom/s1243808733/android/dexmerger/ApkDexMerger$DexFileComparator;-><init>(Lcom/s1243808733/android/dexmerger/ApkDexMerger;Lcom/s1243808733/android/dexmerger/ApkDexMerger$DexFileComparator-IA;)V

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 55
    new-instance v3, Lcom/s1243808733/android/dexmerger/MultDexMerger$Builder;

    iget-object v4, p0, Lcom/s1243808733/android/dexmerger/ApkDexMerger;->mContext:Lcom/s1243808733/android/dx/command/dexer/DxContext;

    invoke-direct {v3, v4}, Lcom/s1243808733/android/dexmerger/MultDexMerger$Builder;-><init>(Lcom/s1243808733/android/dx/command/dexer/DxContext;)V

    .line 56
    const/4 v4, 0x0

    new-array v5, v4, [Ljava/io/File;

    invoke-interface {v2, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/io/File;

    invoke-virtual {v3, v5}, Lcom/s1243808733/android/dexmerger/MultDexMerger$Builder;->add([Ljava/io/File;)Lcom/s1243808733/android/dexmerger/MultDexMerger$Builder;

    const/4 v5, 0x0

    .line 59
    :goto_54
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    const-string v7, "] "

    const-string v8, "["

    if-ge v5, v6, :cond_84

    .line 60
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/io/File;

    .line 61
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    .line 62
    iget-object v9, p0, Lcom/s1243808733/android/dexmerger/ApkDexMerger;->mContext:Lcom/s1243808733/android/dx/command/dexer/DxContext;

    iget-object v9, v9, Lcom/s1243808733/android/dx/command/dexer/DxContext;->out:Ljava/io/PrintStream;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_54

    .line 66
    :cond_84
    iget-object v5, p0, Lcom/s1243808733/android/dexmerger/ApkDexMerger;->mContext:Lcom/s1243808733/android/dx/command/dexer/DxContext;

    iget-object v5, v5, Lcom/s1243808733/android/dx/command/dexer/DxContext;->out:Ljava/io/PrintStream;

    const-string v6, "开始合并Dex..."

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 70
    :try_start_8d
    invoke-virtual {v3}, Lcom/s1243808733/android/dexmerger/MultDexMerger$Builder;->create()Lcom/s1243808733/android/dexmerger/MultDexMerger;

    move-result-object v3

    .line 71
    invoke-virtual {v3}, Lcom/s1243808733/android/dexmerger/MultDexMerger;->merger()Ljava/util/List;

    move-result-object v3
    :try_end_95
    .catch Ljava/io/IOException; {:try_start_8d .. :try_end_95} :catch_173

    .line 78
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_99
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/io/File;

    .line 79
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    goto :goto_99

    :cond_a9
    const/4 v2, 0x0

    .line 83
    :goto_aa
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x1

    if-ge v2, v5, :cond_fb

    .line 84
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/s1243808733/android/dex/Dex;

    if-ge v2, v6, :cond_bc

    .line 85
    const-string v9, ""

    goto :goto_c2

    :cond_bc
    add-int/lit8 v9, v2, 0x1

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    :goto_c2
    new-array v6, v6, [Ljava/lang/Object;

    aput-object v9, v6, v4

    const-string v9, "classes%s.dex"

    invoke-static {v9, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 86
    iget-object v9, p0, Lcom/s1243808733/android/dexmerger/ApkDexMerger;->mContext:Lcom/s1243808733/android/dx/command/dexer/DxContext;

    iget-object v9, v9, Lcom/s1243808733/android/dx/command/dexer/DxContext;->out:Ljava/io/PrintStream;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 87
    iget-object v9, p0, Lcom/s1243808733/android/dexmerger/ApkDexMerger;->mDecompressDir:Ljava/io/File;

    .line 88
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_f0

    .line 89
    invoke-virtual {v9}, Ljava/io/File;->mkdirs()Z

    .line 91
    :cond_f0
    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v9, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 92
    invoke-virtual {v5, v10}, Lcom/s1243808733/android/dex/Dex;->writeTo(Ljava/io/File;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_aa

    .line 97
    :cond_fb
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/s1243808733/android/dexmerger/ApkDexMerger;->mWorkDir:Ljava/io/File;

    const-string v5, "build/apk"

    invoke-direct {v2, v3, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 98
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 100
    iget-object v3, p0, Lcom/s1243808733/android/dexmerger/ApkDexMerger;->mContext:Lcom/s1243808733/android/dx/command/dexer/DxContext;

    iget-object v3, v3, Lcom/s1243808733/android/dx/command/dexer/DxContext;->out:Ljava/io/PrintStream;

    const-string v5, "重新构建APK..."

    invoke-virtual {v3, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 101
    iget-object v3, p0, Lcom/s1243808733/android/dexmerger/ApkDexMerger;->mDecompressDir:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    invoke-static {v3}, Lcom/s1243808733/android/dexmerger/ApkDexMerger;->array2List([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_16b

    .line 102
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_16b

    .line 106
    :try_start_126
    invoke-static {v3, v2}, Lcom/s1243808733/android/dexmerger/ZipUtils;->zipFiles(Ljava/util/Collection;Ljava/io/File;)Z
    :try_end_129
    .catch Ljava/io/IOException; {:try_start_126 .. :try_end_129} :catch_160

    .line 111
    invoke-virtual {v2, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p1

    if-nez p1, :cond_138

    .line 112
    iget-object p1, p0, Lcom/s1243808733/android/dexmerger/ApkDexMerger;->mContext:Lcom/s1243808733/android/dx/command/dexer/DxContext;

    iget-object p1, p1, Lcom/s1243808733/android/dx/command/dexer/DxContext;->err:Ljava/io/PrintStream;

    const-string v2, "APK导出失败"

    invoke-virtual {p1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 116
    :cond_138
    iget-object p1, p0, Lcom/s1243808733/android/dexmerger/ApkDexMerger;->mContext:Lcom/s1243808733/android/dx/command/dexer/DxContext;

    iget-object p1, p1, Lcom/s1243808733/android/dx/command/dexer/DxContext;->out:Ljava/io/PrintStream;

    const-string v2, "清除缓存..."

    invoke-virtual {p1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 117
    invoke-virtual {p0}, Lcom/s1243808733/android/dexmerger/ApkDexMerger;->clearWorkDir()V

    .line 118
    iget-object p1, p0, Lcom/s1243808733/android/dexmerger/ApkDexMerger;->mContext:Lcom/s1243808733/android/dx/command/dexer/DxContext;

    iget-object p1, p1, Lcom/s1243808733/android/dx/command/dexer/DxContext;->out:Ljava/io/PrintStream;

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    sub-long/2addr v5, v0

    long-to-float v0, v5

    const v1, 0x4e6e6b28  # 1.0E9f

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v2, v4

    const-string v0, "完成/%.1fs"

    invoke-virtual {p1, v0, v2}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    return-void

    :catch_160
    move-exception p1

    .line 108
    iget-object v0, p0, Lcom/s1243808733/android/dexmerger/ApkDexMerger;->mContext:Lcom/s1243808733/android/dx/command/dexer/DxContext;

    iget-object v0, v0, Lcom/s1243808733/android/dx/command/dexer/DxContext;->err:Ljava/io/PrintStream;

    const-string v1, "APK构建失败"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 109
    throw p1

    .line 103
    :cond_16b
    new-instance p1, Ljava/io/IOException;

    const-string v0, "获取文件列表失败"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_173
    move-exception p1

    .line 73
    iget-object v0, p0, Lcom/s1243808733/android/dexmerger/ApkDexMerger;->mContext:Lcom/s1243808733/android/dx/command/dexer/DxContext;

    iget-object v0, v0, Lcom/s1243808733/android/dx/command/dexer/DxContext;->err:Ljava/io/PrintStream;

    const-string v1, "Dex合并失败"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 74
    throw p1

    .line 51
    :cond_17e
    new-instance p1, Ljava/io/IOException;

    const-string v0, "无dex文件"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 49
    :cond_186
    new-instance p1, Ljava/io/IOException;

    const-string v0, "获取dex列表失败"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_18e
    move-exception p1

    .line 41
    iget-object v0, p0, Lcom/s1243808733/android/dexmerger/ApkDexMerger;->mContext:Lcom/s1243808733/android/dx/command/dexer/DxContext;

    iget-object v0, v0, Lcom/s1243808733/android/dx/command/dexer/DxContext;->err:Ljava/io/PrintStream;

    const-string v1, "解压失败"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 42
    goto :goto_19a

    :goto_199
    throw p1

    :goto_19a
    goto :goto_199
.end method
