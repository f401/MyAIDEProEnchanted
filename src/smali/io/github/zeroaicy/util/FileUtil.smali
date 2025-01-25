.class public Lio/github/zeroaicy/util/FileUtil;
.super Ljava/lang/Object;
.source "FileUtil.java"


# static fields
.field public static CrashLogPath:Ljava/lang/String; = null

.field public static LogCatPath:Ljava/lang/String; = null

.field private static final LogDir:Ljava/lang/String; = "/AIDE_CrashLog/"

.field private static final data:Z = true


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 67
    const-string v0, "/AIDE_CrashLog/"

    invoke-static {v0}, Lio/github/zeroaicy/util/FileUtil;->getCrashLogPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/github/zeroaicy/util/FileUtil;->CrashLogPath:Ljava/lang/String;

    .line 68
    invoke-static {v0}, Lio/github/zeroaicy/util/FileUtil;->getLogCatPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/github/zeroaicy/util/FileUtil;->LogCatPath:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Files2Strings(Ljava/util/List;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 84
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    .line 85
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_1d
    return-object v0
.end method

.method public static copy(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 5

    .line 26
    const/4 v0, 0x0

    :try_start_1
    new-array v1, v0, [Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/s1243808733/util/Utils$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v1

    new-array v0, v0, [Ljava/nio/file/FileVisitOption;

    invoke-static {v1, v0}, Lcom/s1243808733/util/Utils$$ExternalSyntheticApiModelOutline0;->m(Ljava/nio/file/Path;[Ljava/nio/file/FileVisitOption;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lio/github/zeroaicy/util/FileUtil$1;

    invoke-direct {v1, p0, p1, p2}, Lio/github/zeroaicy/util/FileUtil$1;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {v0, v1}, Lcom/s1243808733/util/Utils$$ExternalSyntheticApiModelOutline0;->m(Ljava/util/stream/Stream;Ljava/util/function/Consumer;)V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_15} :catch_16

    goto :goto_17

    :catch_16
    move-exception p0

    :goto_17
    return-void
.end method

.method public static copyNotCover(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 50
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lio/github/zeroaicy/util/FileUtil;->copy(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public static findFile(Ljava/io/File;Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 99
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 100
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v1

    const-string v2, "."

    if-eqz v1, :cond_22

    .line 101
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    if-eqz p1, :cond_1f

    .line 102
    invoke-virtual {v1, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_22

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_22

    .line 103
    :cond_1f
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 106
    :cond_22
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_80

    .line 107
    new-instance v1, Ljava/util/Stack;

    invoke-direct {v1}, Ljava/util/Stack;-><init>()V

    .line 108
    invoke-virtual {v1, p0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    :cond_30
    invoke-virtual {v1}, Ljava/util/Stack;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_80

    .line 110
    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/io/File;

    .line 111
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    if-eqz p0, :cond_30

    .line 113
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result p0

    if-eqz p0, :cond_30

    if-eqz v3, :cond_30

    .line 114
    array-length p0, v3

    const/4 v4, 0x0

    :goto_4c
    if-ge v4, p0, :cond_30

    aget-object v5, v3, v4

    .line 116
    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_64

    .line 118
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_7d

    .line 119
    invoke-virtual {v1, v5}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7d

    .line 121
    :cond_64
    invoke-virtual {v5}, Ljava/io/File;->isFile()Z

    move-result v6

    if-eqz v6, :cond_7d

    if-eqz p1, :cond_7a

    .line 122
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7d

    .line 123
    :cond_7a
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7d
    :goto_7d
    add-int/lit8 v4, v4, 0x1

    goto :goto_4c

    :cond_80
    return-object v0
.end method

.method public static findJavaFile(Ljava/io/File;)Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 94
    const-string v0, ".java"

    invoke-static {p0, v0}, Lio/github/zeroaicy/util/FileUtil;->findFile(Ljava/io/File;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public static findJavaFile(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 91
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string p0, ".java"

    invoke-static {v0, p0}, Lio/github/zeroaicy/util/FileUtil;->findFile(Ljava/io/File;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method private static getCrashLogPath(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 74
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    .line 77
    invoke-static {}, Lio/github/zeroaicy/util/ContextUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v0

    .line 79
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lio/github/zeroaicy/util/ContextUtil;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getLogCatPath(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 55
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    sget-object p0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    invoke-static {}, Lio/github/zeroaicy/util/ContextUtil;->getProcessName()Ljava/lang/String;

    move-result-object p0

    .line 58
    const-string v1, ":"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 59
    const-string v2, "--"

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 61
    :cond_1f
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    const-string p0, ".txt"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
