.class public Lorg/apache/tools/ant/util/LoaderUtils;
.super Ljava/lang/Object;
.source "LoaderUtils.java"


# static fields
.field private static final FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 34
    invoke-static {}, Lorg/apache/tools/ant/util/FileUtils;->getFileUtils()Lorg/apache/tools/ant/util/FileUtils;

    move-result-object v0

    sput-object v0, Lorg/apache/tools/ant/util/LoaderUtils;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static classExists(Ljava/lang/ClassLoader;Ljava/lang/String;)Z
    .registers 3

    .line 137
    invoke-static {p1}, Lorg/apache/tools/ant/util/LoaderUtils;->classNameToResource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public static classNameToResource(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x2e

    const/16 v2, 0x2f

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".class"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getClassSource(Ljava/lang/Class;)Ljava/io/File;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/io/File;"
        }
    .end annotation

    .line 98
    invoke-static {p0}, Lorg/apache/tools/ant/launch/Locator;->getClassSource(Ljava/lang/Class;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/tools/ant/util/LoaderUtils;->normalizeSource(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static getContextClassLoader()Ljava/lang/ClassLoader;
    .registers 1

    .line 55
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 56
    invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method

.method public static getResourceSource(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/io/File;
    .registers 3

    .line 113
    if-nez p0, :cond_8

    .line 114
    const-class v0, Lorg/apache/tools/ant/util/LoaderUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    .line 116
    :cond_8
    invoke-static {p0, p1}, Lorg/apache/tools/ant/launch/Locator;->getResourceSource(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/tools/ant/util/LoaderUtils;->normalizeSource(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static isContextLoaderAvailable()Z
    .registers 1

    .line 66
    const/4 v0, 0x1

    return v0
.end method

.method private static normalizeSource(Ljava/io/File;)Ljava/io/File;
    .registers 3

    .line 77
    if-eqz p0, :cond_c

    .line 79
    :try_start_2
    sget-object v0, Lorg/apache/tools/ant/util/LoaderUtils;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/util/FileUtils;->normalize(Ljava/lang/String;)Ljava/io/File;
    :try_end_b
    .catch Lorg/apache/tools/ant/BuildException; {:try_start_2 .. :try_end_b} :catch_d

    move-result-object p0

    .line 85
    :cond_c
    :goto_c
    return-object p0

    .line 80
    :catch_d
    move-exception v0

    goto :goto_c
.end method

.method public static setContextClassLoader(Ljava/lang/ClassLoader;)V
    .registers 2

    .line 43
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 44
    invoke-virtual {v0, p0}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    .line 45
    return-void
.end method
