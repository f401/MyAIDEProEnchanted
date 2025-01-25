.class public Lio/github/zeroaicy/aide/extend/DistributeEvents;
.super Ljava/lang/Object;
.source "DistributeEvents.java"


# static fields
.field private static final defaultAbiFilters:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

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
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static build(Ljava/lang/String;)Labcd/Pl;
    .registers 9

    .line 16
    const-string v0, "编译"

    invoke-static {v0, p0}, Lio/github/zeroaicy/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    nop

    .line 18
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lio/github/zeroaicy/util/ContextUtil;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "framework/android-sdk"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 19
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 22
    invoke-static {p0}, Labcd/AccessProxy;->isGradle(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    const-string v3, "20"

    const/4 v4, 0x0

    if-eqz v1, :cond_65

    .line 23
    const/4 v1, 0x1

    invoke-static {p0, v1}, Lio/github/zeroaicy/aide/extend/DistributeEvents;->isCmakeProject(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_2b

    return-object v2

    .line 26
    :cond_2b
    const-string v1, "Gradle cmake项目"

    invoke-static {v1, p0}, Lio/github/zeroaicy/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    new-instance v1, Lio/github/zeroaicy/aide/cmake/CmakeBuild$Builder;

    invoke-direct {v1}, Lio/github/zeroaicy/aide/cmake/CmakeBuild$Builder;-><init>()V

    .line 28
    invoke-virtual {v1, p0}, Lio/github/zeroaicy/aide/cmake/CmakeBuild$Builder;->setProjectPath(Ljava/lang/String;)Lio/github/zeroaicy/aide/cmake/CmakeBuild$Builder;

    move-result-object v1

    .line 29
    invoke-virtual {v1, v0}, Lio/github/zeroaicy/aide/cmake/CmakeBuild$Builder;->setAndroidSdkPath(Ljava/lang/String;)Lio/github/zeroaicy/aide/cmake/CmakeBuild$Builder;

    move-result-object v0

    .line 30
    invoke-virtual {v0, v3}, Lio/github/zeroaicy/aide/cmake/CmakeBuild$Builder;->setSystemVersion(Ljava/lang/String;)Lio/github/zeroaicy/aide/cmake/CmakeBuild$Builder;

    move-result-object v0

    .line 31
    const-string v1, "src/main/jniLibs"

    invoke-virtual {v0, v1}, Lio/github/zeroaicy/aide/cmake/CmakeBuild$Builder;->setCmakeOutputDirectoryPath(Ljava/lang/String;)Lio/github/zeroaicy/aide/cmake/CmakeBuild$Builder;

    move-result-object v0

    .line 32
    const-string v1, "src/main/cpp"

    invoke-virtual {v0, v1}, Lio/github/zeroaicy/aide/cmake/CmakeBuild$Builder;->setCmakeListsTxtPath(Ljava/lang/String;)Lio/github/zeroaicy/aide/cmake/CmakeBuild$Builder;

    move-result-object v0

    .line 34
    sget-object v1, Lio/github/zeroaicy/aide/extend/DistributeEvents;->defaultAbiFilters:[Ljava/lang/String;

    array-length v3, v1

    :goto_50
    if-ge v4, v3, :cond_af

    aget-object v5, v1, v4

    .line 35
    invoke-virtual {v0, v5}, Lio/github/zeroaicy/aide/cmake/CmakeBuild$Builder;->setAndroidABI(Ljava/lang/String;)Lio/github/zeroaicy/aide/cmake/CmakeBuild$Builder;

    .line 37
    invoke-virtual {v0}, Lio/github/zeroaicy/aide/cmake/CmakeBuild$Builder;->build()Lio/github/zeroaicy/aide/cmake/CmakeBuild;

    move-result-object v5

    invoke-static {v5, p0}, Lio/github/zeroaicy/aide/extend/DistributeEvents;->runCmakeBuild(Lio/github/zeroaicy/aide/cmake/CmakeBuild;Ljava/lang/String;)Labcd/Pl;

    move-result-object v5

    if-eqz v5, :cond_62

    return-object v5

    :cond_62
    add-int/lit8 v4, v4, 0x1

    goto :goto_50

    .line 44
    :cond_65
    invoke-static {p0}, Lio/github/zeroaicy/aide/extend/DistributeEvents;->isAndroidProject(Ljava/lang/String;)Z

    move-result v1

    const-string v5, "cpp"

    const-string v6, "libs"

    if-eqz v1, :cond_b0

    .line 45
    invoke-static {p0, v4}, Lio/github/zeroaicy/aide/extend/DistributeEvents;->isCmakeProject(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_76

    return-object v2

    .line 49
    :cond_76
    const-string v1, "Android cmake项目"

    invoke-static {v1, p0}, Lio/github/zeroaicy/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    new-instance v7, Lio/github/zeroaicy/aide/cmake/CmakeBuild$Builder;

    invoke-direct {v7}, Lio/github/zeroaicy/aide/cmake/CmakeBuild$Builder;-><init>()V

    .line 51
    invoke-virtual {v7, p0}, Lio/github/zeroaicy/aide/cmake/CmakeBuild$Builder;->setProjectPath(Ljava/lang/String;)Lio/github/zeroaicy/aide/cmake/CmakeBuild$Builder;

    move-result-object v7

    .line 52
    invoke-virtual {v7, v0}, Lio/github/zeroaicy/aide/cmake/CmakeBuild$Builder;->setAndroidSdkPath(Ljava/lang/String;)Lio/github/zeroaicy/aide/cmake/CmakeBuild$Builder;

    move-result-object v0

    .line 53
    invoke-virtual {v0, v3}, Lio/github/zeroaicy/aide/cmake/CmakeBuild$Builder;->setSystemVersion(Ljava/lang/String;)Lio/github/zeroaicy/aide/cmake/CmakeBuild$Builder;

    move-result-object v0

    .line 54
    invoke-virtual {v0, v6}, Lio/github/zeroaicy/aide/cmake/CmakeBuild$Builder;->setCmakeOutputDirectoryPath(Ljava/lang/String;)Lio/github/zeroaicy/aide/cmake/CmakeBuild$Builder;

    move-result-object v0

    .line 55
    invoke-virtual {v0, v5}, Lio/github/zeroaicy/aide/cmake/CmakeBuild$Builder;->setCmakeListsTxtPath(Ljava/lang/String;)Lio/github/zeroaicy/aide/cmake/CmakeBuild$Builder;

    move-result-object v0

    .line 57
    sget-object v3, Lio/github/zeroaicy/aide/extend/DistributeEvents;->defaultAbiFilters:[Ljava/lang/String;

    array-length v5, v3

    :goto_97
    if-ge v4, v5, :cond_ac

    aget-object v6, v3, v4

    .line 58
    invoke-virtual {v0, v6}, Lio/github/zeroaicy/aide/cmake/CmakeBuild$Builder;->setAndroidABI(Ljava/lang/String;)Lio/github/zeroaicy/aide/cmake/CmakeBuild$Builder;

    .line 60
    invoke-virtual {v0}, Lio/github/zeroaicy/aide/cmake/CmakeBuild$Builder;->build()Lio/github/zeroaicy/aide/cmake/CmakeBuild;

    move-result-object v6

    invoke-static {v6, p0}, Lio/github/zeroaicy/aide/extend/DistributeEvents;->runCmakeBuild(Lio/github/zeroaicy/aide/cmake/CmakeBuild;Ljava/lang/String;)Labcd/Pl;

    move-result-object v6

    if-eqz v6, :cond_a9

    return-object v6

    :cond_a9
    add-int/lit8 v4, v4, 0x1

    goto :goto_97

    .line 66
    :cond_ac
    invoke-static {v1, p0}, Lio/github/zeroaicy/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_af
    return-object v2

    .line 70
    :cond_b0
    const-string v1, "本机执行"

    invoke-static {v1, p0}, Lio/github/zeroaicy/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    new-instance v1, Lio/github/zeroaicy/aide/cmake/CmakeBuild$Builder;

    invoke-direct {v1}, Lio/github/zeroaicy/aide/cmake/CmakeBuild$Builder;-><init>()V

    .line 73
    invoke-virtual {v1, p0}, Lio/github/zeroaicy/aide/cmake/CmakeBuild$Builder;->setProjectPath(Ljava/lang/String;)Lio/github/zeroaicy/aide/cmake/CmakeBuild$Builder;

    move-result-object v1

    .line 74
    invoke-virtual {v1, v0}, Lio/github/zeroaicy/aide/cmake/CmakeBuild$Builder;->setAndroidSdkPath(Ljava/lang/String;)Lio/github/zeroaicy/aide/cmake/CmakeBuild$Builder;

    move-result-object v0

    .line 75
    invoke-virtual {v0, v3}, Lio/github/zeroaicy/aide/cmake/CmakeBuild$Builder;->setSystemVersion(Ljava/lang/String;)Lio/github/zeroaicy/aide/cmake/CmakeBuild$Builder;

    move-result-object v0

    .line 76
    const-string v1, "arm64-v8a"

    invoke-virtual {v0, v1}, Lio/github/zeroaicy/aide/cmake/CmakeBuild$Builder;->setAndroidABI(Ljava/lang/String;)Lio/github/zeroaicy/aide/cmake/CmakeBuild$Builder;

    move-result-object v0

    .line 77
    invoke-virtual {v0, v6}, Lio/github/zeroaicy/aide/cmake/CmakeBuild$Builder;->setCmakeOutputDirectoryPath(Ljava/lang/String;)Lio/github/zeroaicy/aide/cmake/CmakeBuild$Builder;

    move-result-object v0

    .line 78
    invoke-virtual {v0, v5}, Lio/github/zeroaicy/aide/cmake/CmakeBuild$Builder;->setCmakeListsTxtPath(Ljava/lang/String;)Lio/github/zeroaicy/aide/cmake/CmakeBuild$Builder;

    move-result-object v0

    .line 80
    const-string v1, "libs/armeabi-v7a"

    invoke-virtual {v0, v1}, Lio/github/zeroaicy/aide/cmake/CmakeBuild$Builder;->setCmakeRuntimeOutputDirectoryPath(Ljava/lang/String;)Lio/github/zeroaicy/aide/cmake/CmakeBuild$Builder;

    move-result-object v0

    .line 82
    invoke-virtual {v0}, Lio/github/zeroaicy/aide/cmake/CmakeBuild$Builder;->build()Lio/github/zeroaicy/aide/cmake/CmakeBuild;

    move-result-object v0

    invoke-static {v0, p0}, Lio/github/zeroaicy/aide/extend/DistributeEvents;->runCmakeBuild(Lio/github/zeroaicy/aide/cmake/CmakeBuild;Ljava/lang/String;)Labcd/Pl;

    move-result-object p0

    return-object p0
.end method

.method private static isAndroidProject(Ljava/lang/String;)Z
    .registers 3

    .line 131
    new-instance v0, Ljava/io/File;

    const-string v1, "AndroidManifest.xml"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    return p0
.end method

.method public static isCmakeProject(Ljava/lang/String;)Z
    .registers 2

    .line 136
    invoke-static {p0}, Labcd/AccessProxy;->isGradle(Ljava/lang/String;)Z

    move-result v0

    invoke-static {p0, v0}, Lio/github/zeroaicy/aide/extend/DistributeEvents;->isCmakeProject(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static isCmakeProject(Ljava/lang/String;Z)Z
    .registers 3

    .line 142
    if-eqz p1, :cond_5

    .line 145
    const-string p1, "src/main/cpp/CMakeLists.txt"

    goto :goto_7

    .line 146
    :cond_5
    const-string p1, "cpp/CMakeLists.txt"

    :goto_7
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result p0

    return p0
.end method

.method public static isNativeExecutableCmakeProject(Ljava/lang/String;)Z
    .registers 3

    .line 121
    invoke-static {p0}, Lio/github/zeroaicy/aide/extend/DistributeEvents;->isAndroidProject(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    .line 124
    :cond_8
    invoke-static {p0}, Labcd/AccessProxy;->isGradle(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    return v1

    .line 127
    :cond_f
    invoke-static {p0, v1}, Lio/github/zeroaicy/aide/extend/DistributeEvents;->isCmakeProject(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method private static runCmakeBuild(Lio/github/zeroaicy/aide/cmake/CmakeBuild;Ljava/lang/String;)Labcd/Pl;
    .registers 10

    .line 89
    invoke-virtual {p0}, Lio/github/zeroaicy/aide/cmake/CmakeBuild;->error()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 90
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "打印错误"

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 91
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p0}, Lio/github/zeroaicy/aide/cmake/CmakeBuild;->getBuildInfo()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 92
    new-instance p1, Lio/github/zeroaicy/aide/extend/DistributeEvents$1;

    invoke-direct {p1, p0}, Lio/github/zeroaicy/aide/extend/DistributeEvents$1;-><init>(Lio/github/zeroaicy/aide/cmake/CmakeBuild;)V

    return-object p1

    .line 104
    :cond_1c
    invoke-virtual {p0}, Lio/github/zeroaicy/aide/cmake/CmakeBuild;->getCmakeCommandList()Ljava/util/List;

    move-result-object v0

    .line 106
    invoke-static {}, Ljava/lang/System;->getenv()Ljava/util/Map;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Labcd/Rl;->j6(Ljava/util/List;Ljava/lang/String;Ljava/util/Map;ZLjava/io/OutputStream;[B)Labcd/Pl;

    move-result-object v0

    .line 107
    invoke-interface {v0}, Labcd/Pl;->DW()I

    move-result v1

    if-eqz v1, :cond_33

    return-object v0

    .line 112
    :cond_33
    invoke-virtual {p0}, Lio/github/zeroaicy/aide/cmake/CmakeBuild;->getNinjaCommandList()Ljava/util/List;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->getenv()Ljava/util/Map;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, p1

    invoke-static/range {v2 .. v7}, Labcd/Rl;->j6(Ljava/util/List;Ljava/lang/String;Ljava/util/Map;ZLjava/io/OutputStream;[B)Labcd/Pl;

    move-result-object p0

    .line 113
    invoke-interface {p0}, Labcd/Pl;->DW()I

    move-result p1

    if-eqz p1, :cond_4a

    return-object p0

    :cond_4a
    const/4 p0, 0x0

    return-object p0
.end method
