.class public Lio/github/zeroaicy/aide/extend/DistributeEvents;
.super Ljava/lang/Object;
.source "DistributeEvents.java"


# static fields
.field private static final defaultAbiFilters:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 12
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "armeabi-v7a"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "arm64-v8a"

    aput-object v2, v0, v1

    sput-object v0, Lio/github/zeroaicy/aide/extend/DistributeEvents;->defaultAbiFilters:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static build(Ljava/lang/String;)Labcd/Pl;
    .locals 6

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 16
    const-string v2, "\u7f16\u8bd1"

    invoke-static {v2, p0}, Lio/github/zeroaicy/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    new-instance v2, Ljava/io/File;

    invoke-static {}, Lio/github/zeroaicy/util/ContextUtil;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    const-string v4, "framework/android-sdk"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 19
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 22
    invoke-static {p0}, Labcd/AccessProxy;->isGradle(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 23
    const/4 v3, 0x1

    invoke-static {p0, v3}, Lio/github/zeroaicy/aide/extend/DistributeEvents;->isCmakeProject(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_1

    .line 82
    :cond_0
    :goto_0
    return-object v0

    .line 26
    :cond_1
    const-string v3, "Gradle cmake\u9879\u76ee"

    invoke-static {v3, p0}, Lio/github/zeroaicy/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    new-instance v3, Lio/github/zeroaicy/aide/cmake/CmakeBuild$Builder;

    invoke-direct {v3}, Lio/github/zeroaicy/aide/cmake/CmakeBuild$Builder;-><init>()V

    .line 28
    invoke-virtual {v3, p0}, Lio/github/zeroaicy/aide/cmake/CmakeBuild$Builder;->setProjectPath(Ljava/lang/String;)Lio/github/zeroaicy/aide/cmake/CmakeBuild$Builder;

    move-result-object v3

    .line 29
    invoke-virtual {v3, v2}, Lio/github/zeroaicy/aide/cmake/CmakeBuild$Builder;->setAndroidSdkPath(Ljava/lang/String;)Lio/github/zeroaicy/aide/cmake/CmakeBuild$Builder;

    move-result-object v2

    .line 30
    const-string v3, "20"

    invoke-virtual {v2, v3}, Lio/github/zeroaicy/aide/cmake/CmakeBuild$Builder;->setSystemVersion(Ljava/lang/String;)Lio/github/zeroaicy/aide/cmake/CmakeBuild$Builder;

    move-result-object v2

    .line 31
    const-string v3, "src/main/jniLibs"

    invoke-virtual {v2, v3}, Lio/github/zeroaicy/aide/cmake/CmakeBuild$Builder;->setCmakeOutputDirectoryPath(Ljava/lang/String;)Lio/github/zeroaicy/aide/cmake/CmakeBuild$Builder;

    move-result-object v2

    .line 32
    const-string v3, "src/main/cpp"

    invoke-virtual {v2, v3}, Lio/github/zeroaicy/aide/cmake/CmakeBuild$Builder;->setCmakeListsTxtPath(Ljava/lang/String;)Lio/github/zeroaicy/aide/cmake/CmakeBuild$Builder;

    move-result-object v3

    .line 34
    sget-object v4, Lio/github/zeroaicy/aide/extend/DistributeEvents;->defaultAbiFilters:[Ljava/lang/String;

    array-length v5, v4

    move v2, v1

    :goto_1
    if-ge v2, v5, :cond_0

    aget-object v1, v4, v2

    .line 35
    invoke-virtual {v3, v1}, Lio/github/zeroaicy/aide/cmake/CmakeBuild$Builder;->setAndroidABI(Ljava/lang/String;)Lio/github/zeroaicy/aide/cmake/CmakeBuild$Builder;

    .line 37
    invoke-virtual {v3}, Lio/github/zeroaicy/aide/cmake/CmakeBuild$Builder;->build()Lio/github/zeroaicy/aide/cmake/CmakeBuild;

    move-result-object v1

    invoke-static {v1, p0}, Lio/github/zeroaicy/aide/extend/DistributeEvents;->runCmakeBuild(Lio/github/zeroaicy/aide/cmake/CmakeBuild;Ljava/lang/String;)Labcd/Pl;

    move-result-object v1

    if-eqz v1, :cond_2

    move-object v0, v1

    goto :goto_0

    :cond_2
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    .line 44
    :cond_3
    invoke-static {p0}, Lio/github/zeroaicy/aide/extend/DistributeEvents;->isAndroidProject(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 45
    invoke-static {p0, v1}, Lio/github/zeroaicy/aide/extend/DistributeEvents;->isCmakeProject(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 49
    const-string v3, "Android cmake\u9879\u76ee"

    invoke-static {v3, p0}, Lio/github/zeroaicy/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    new-instance v3, Lio/github/zeroaicy/aide/cmake/CmakeBuild$Builder;

    invoke-direct {v3}, Lio/github/zeroaicy/aide/cmake/CmakeBuild$Builder;-><init>()V

    .line 51
    invoke-virtual {v3, p0}, Lio/github/zeroaicy/aide/cmake/CmakeBuild$Builder;->setProjectPath(Ljava/lang/String;)Lio/github/zeroaicy/aide/cmake/CmakeBuild$Builder;

    move-result-object v3

    .line 52
    invoke-virtual {v3, v2}, Lio/github/zeroaicy/aide/cmake/CmakeBuild$Builder;->setAndroidSdkPath(Ljava/lang/String;)Lio/github/zeroaicy/aide/cmake/CmakeBuild$Builder;

    move-result-object v2

    .line 53
    const-string v3, "20"

    invoke-virtual {v2, v3}, Lio/github/zeroaicy/aide/cmake/CmakeBuild$Builder;->setSystemVersion(Ljava/lang/String;)Lio/github/zeroaicy/aide/cmake/CmakeBuild$Builder;

    move-result-object v2

    .line 54
    const-string v3, "libs"

    invoke-virtual {v2, v3}, Lio/github/zeroaicy/aide/cmake/CmakeBuild$Builder;->setCmakeOutputDirectoryPath(Ljava/lang/String;)Lio/github/zeroaicy/aide/cmake/CmakeBuild$Builder;

    move-result-object v2

    .line 55
    const-string v3, "cpp"

    invoke-virtual {v2, v3}, Lio/github/zeroaicy/aide/cmake/CmakeBuild$Builder;->setCmakeListsTxtPath(Ljava/lang/String;)Lio/github/zeroaicy/aide/cmake/CmakeBuild$Builder;

    move-result-object v3

    .line 57
    sget-object v4, Lio/github/zeroaicy/aide/extend/DistributeEvents;->defaultAbiFilters:[Ljava/lang/String;

    array-length v5, v4

    move v2, v1

    :goto_2
    if-ge v2, v5, :cond_5

    aget-object v1, v4, v2

    .line 58
    invoke-virtual {v3, v1}, Lio/github/zeroaicy/aide/cmake/CmakeBuild$Builder;->setAndroidABI(Ljava/lang/String;)Lio/github/zeroaicy/aide/cmake/CmakeBuild$Builder;

    .line 60
    invoke-virtual {v3}, Lio/github/zeroaicy/aide/cmake/CmakeBuild$Builder;->build()Lio/github/zeroaicy/aide/cmake/CmakeBuild;

    move-result-object v1

    invoke-static {v1, p0}, Lio/github/zeroaicy/aide/extend/DistributeEvents;->runCmakeBuild(Lio/github/zeroaicy/aide/cmake/CmakeBuild;Ljava/lang/String;)Labcd/Pl;

    move-result-object v1

    if-eqz v1, :cond_4

    move-object v0, v1

    goto/16 :goto_0

    :cond_4
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_2

    .line 66
    :cond_5
    const-string v1, "Android cmake\u9879\u76ee"

    invoke-static {v1, p0}, Lio/github/zeroaicy/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 70
    :cond_6
    const-string v0, "\u672c\u673a\u6267\u884c"

    invoke-static {v0, p0}, Lio/github/zeroaicy/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    new-instance v0, Lio/github/zeroaicy/aide/cmake/CmakeBuild$Builder;

    invoke-direct {v0}, Lio/github/zeroaicy/aide/cmake/CmakeBuild$Builder;-><init>()V

    .line 73
    invoke-virtual {v0, p0}, Lio/github/zeroaicy/aide/cmake/CmakeBuild$Builder;->setProjectPath(Ljava/lang/String;)Lio/github/zeroaicy/aide/cmake/CmakeBuild$Builder;

    move-result-object v0

    .line 74
    invoke-virtual {v0, v2}, Lio/github/zeroaicy/aide/cmake/CmakeBuild$Builder;->setAndroidSdkPath(Ljava/lang/String;)Lio/github/zeroaicy/aide/cmake/CmakeBuild$Builder;

    move-result-object v0

    .line 75
    const-string v1, "20"

    invoke-virtual {v0, v1}, Lio/github/zeroaicy/aide/cmake/CmakeBuild$Builder;->setSystemVersion(Ljava/lang/String;)Lio/github/zeroaicy/aide/cmake/CmakeBuild$Builder;

    move-result-object v0

    .line 76
    const-string v1, "arm64-v8a"

    invoke-virtual {v0, v1}, Lio/github/zeroaicy/aide/cmake/CmakeBuild$Builder;->setAndroidABI(Ljava/lang/String;)Lio/github/zeroaicy/aide/cmake/CmakeBuild$Builder;

    move-result-object v0

    .line 77
    const-string v1, "libs"

    invoke-virtual {v0, v1}, Lio/github/zeroaicy/aide/cmake/CmakeBuild$Builder;->setCmakeOutputDirectoryPath(Ljava/lang/String;)Lio/github/zeroaicy/aide/cmake/CmakeBuild$Builder;

    move-result-object v0

    .line 78
    const-string v1, "cpp"

    invoke-virtual {v0, v1}, Lio/github/zeroaicy/aide/cmake/CmakeBuild$Builder;->setCmakeListsTxtPath(Ljava/lang/String;)Lio/github/zeroaicy/aide/cmake/CmakeBuild$Builder;

    move-result-object v0

    .line 80
    const-string v1, "libs/armeabi-v7a"

    invoke-virtual {v0, v1}, Lio/github/zeroaicy/aide/cmake/CmakeBuild$Builder;->setCmakeRuntimeOutputDirectoryPath(Ljava/lang/String;)Lio/github/zeroaicy/aide/cmake/CmakeBuild$Builder;

    move-result-object v0

    .line 82
    invoke-virtual {v0}, Lio/github/zeroaicy/aide/cmake/CmakeBuild$Builder;->build()Lio/github/zeroaicy/aide/cmake/CmakeBuild;

    move-result-object v0

    invoke-static {v0, p0}, Lio/github/zeroaicy/aide/extend/DistributeEvents;->runCmakeBuild(Lio/github/zeroaicy/aide/cmake/CmakeBuild;Ljava/lang/String;)Labcd/Pl;

    move-result-object v0

    goto/16 :goto_0
.end method

.method private static isAndroidProject(Ljava/lang/String;)Z
    .locals 2

    .line 131
    new-instance v0, Ljava/io/File;

    const-string v1, "AndroidManifest.xml"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method public static isCmakeProject(Ljava/lang/String;)Z
    .locals 1

    .line 136
    invoke-static {p0}, Labcd/AccessProxy;->isGradle(Ljava/lang/String;)Z

    move-result v0

    invoke-static {p0, v0}, Lio/github/zeroaicy/aide/extend/DistributeEvents;->isCmakeProject(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isCmakeProject(Ljava/lang/String;Z)Z
    .locals 2

    .line 142
    if-eqz p1, :cond_0

    .line 145
    const-string v0, "src/main/cpp/CMakeLists.txt"

    .line 146
    :goto_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v0

    return v0

    .line 146
    :cond_0
    const-string v0, "cpp/CMakeLists.txt"

    goto :goto_0
.end method

.method public static isNativeExecutableCmakeProject(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    .line 121
    invoke-static {p0}, Lio/github/zeroaicy/aide/extend/DistributeEvents;->isAndroidProject(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 127
    :cond_0
    :goto_0
    return v0

    .line 124
    :cond_1
    invoke-static {p0}, Labcd/AccessProxy;->isGradle(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 127
    invoke-static {p0, v0}, Lio/github/zeroaicy/aide/extend/DistributeEvents;->isCmakeProject(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0
.end method

.method private static runCmakeBuild(Lio/github/zeroaicy/aide/cmake/CmakeBuild;Ljava/lang/String;)Labcd/Pl;
    .locals 6

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 89
    invoke-virtual {p0}, Lio/github/zeroaicy/aide/cmake/CmakeBuild;->error()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 90
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "\u6253\u5370\u9519\u8bef"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 91
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p0}, Lio/github/zeroaicy/aide/cmake/CmakeBuild;->getBuildInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 92
    new-instance v4, Lio/github/zeroaicy/aide/extend/DistributeEvents$1;

    invoke-direct {v4, p0}, Lio/github/zeroaicy/aide/extend/DistributeEvents$1;-><init>(Lio/github/zeroaicy/aide/cmake/CmakeBuild;)V

    .line 113
    :cond_0
    :goto_0
    return-object v4

    .line 104
    :cond_1
    invoke-virtual {p0}, Lio/github/zeroaicy/aide/cmake/CmakeBuild;->getCmakeCommandList()Ljava/util/List;

    move-result-object v0

    .line 106
    invoke-static {}, Ljava/lang/System;->getenv()Ljava/util/Map;

    move-result-object v2

    move-object v1, p1

    move-object v5, v4

    invoke-static/range {v0 .. v5}, Labcd/Rl;->j6(Ljava/util/List;Ljava/lang/String;Ljava/util/Map;ZLjava/io/OutputStream;[B)Labcd/Pl;

    move-result-object v0

    .line 107
    invoke-interface {v0}, Labcd/Pl;->DW()I

    move-result v1

    if-eqz v1, :cond_2

    move-object v4, v0

    goto :goto_0

    .line 112
    :cond_2
    invoke-virtual {p0}, Lio/github/zeroaicy/aide/cmake/CmakeBuild;->getNinjaCommandList()Ljava/util/List;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->getenv()Ljava/util/Map;

    move-result-object v2

    move-object v1, p1

    move-object v5, v4

    invoke-static/range {v0 .. v5}, Labcd/Rl;->j6(Ljava/util/List;Ljava/lang/String;Ljava/util/Map;ZLjava/io/OutputStream;[B)Labcd/Pl;

    move-result-object v0

    .line 113
    invoke-interface {v0}, Labcd/Pl;->DW()I

    move-result v1

    if-eqz v1, :cond_0

    move-object v4, v0

    goto :goto_0
.end method
