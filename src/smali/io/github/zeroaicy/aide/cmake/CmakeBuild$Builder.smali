.class public Lio/github/zeroaicy/aide/cmake/CmakeBuild$Builder;
.super Ljava/lang/Object;
.source "CmakeBuild.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/github/zeroaicy/aide/cmake/CmakeBuild;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private ANDROID_ABI:Ljava/lang/String;

.field private ANDROID_SDK_PATH:Ljava/lang/String;

.field private CMAKE_BUILD_CACHE_PATH:Ljava/lang/String;

.field public CMAKE_BUILD_TYPE:Ljava/lang/String;

.field private CMAKE_LIBRARY_OUTPUT_DIRECTORY:Ljava/lang/String;

.field private CMAKE_LISTS_TXT_PATH:Ljava/lang/String;

.field private CMAKE_OUTPUT_DIRECTORY_PATH:Ljava/lang/String;

.field private CMAKE_RUNTIME_OUTPUT_DIRECTORY:Ljava/lang/String;

.field private CMAKE_VERSION:Ljava/lang/String;

.field private NDK_VERSION:Ljava/lang/String;

.field private PROJECT_PATH:Ljava/lang/String;

.field private SYSTEM_VERSION:Ljava/lang/String;

.field private cmakeBuild:Lio/github/zeroaicy/aide/cmake/CmakeBuild;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 160
    const-string v0, "19"

    iput-object v0, p0, Lio/github/zeroaicy/aide/cmake/CmakeBuild$Builder;->SYSTEM_VERSION:Ljava/lang/String;

    .line 201
    const-string v0, "Release"

    iput-object v0, p0, Lio/github/zeroaicy/aide/cmake/CmakeBuild$Builder;->CMAKE_BUILD_TYPE:Ljava/lang/String;

    .line 207
    new-instance v0, Lio/github/zeroaicy/aide/cmake/CmakeBuild;

    invoke-direct {v0}, Lio/github/zeroaicy/aide/cmake/CmakeBuild;-><init>()V

    iput-object v0, p0, Lio/github/zeroaicy/aide/cmake/CmakeBuild$Builder;->cmakeBuild:Lio/github/zeroaicy/aide/cmake/CmakeBuild;

    return-void
.end method

.method public static cmakeBuild(Ljava/lang/String;)Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method private method()V
    .registers 4

    .line 301
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 303
    const-string v1, "ANDROID_SDK_PATH"

    iget-object v2, p0, Lio/github/zeroaicy/aide/cmake/CmakeBuild$Builder;->ANDROID_SDK_PATH:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    const-string v1, "CMAKE_VERSION"

    iget-object v2, p0, Lio/github/zeroaicy/aide/cmake/CmakeBuild$Builder;->CMAKE_VERSION:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    const-string v1, "PROJECT_PATH"

    iget-object v2, p0, Lio/github/zeroaicy/aide/cmake/CmakeBuild$Builder;->PROJECT_PATH:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    const-string v1, "CMAKE_LISTS_TXT_PATH"

    iget-object v2, p0, Lio/github/zeroaicy/aide/cmake/CmakeBuild$Builder;->CMAKE_LISTS_TXT_PATH:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    const-string v1, "SYSTEM_VERSION"

    iget-object v2, p0, Lio/github/zeroaicy/aide/cmake/CmakeBuild$Builder;->SYSTEM_VERSION:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    const-string v1, "ANDROID_ABI"

    iget-object v2, p0, Lio/github/zeroaicy/aide/cmake/CmakeBuild$Builder;->ANDROID_ABI:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    const-string v1, "NDK_VERSION"

    iget-object v2, p0, Lio/github/zeroaicy/aide/cmake/CmakeBuild$Builder;->NDK_VERSION:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    const-string v1, "CMAKE_OUTPUT_DIRECTORY_PATH"

    iget-object v2, p0, Lio/github/zeroaicy/aide/cmake/CmakeBuild$Builder;->CMAKE_OUTPUT_DIRECTORY_PATH:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    const-string v1, "CMAKE_BUILD_TYPE"

    iget-object v2, p0, Lio/github/zeroaicy/aide/cmake/CmakeBuild$Builder;->CMAKE_BUILD_TYPE:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    const-string v1, "CMAKE_BUILD_CACHE_PATH"

    iget-object v2, p0, Lio/github/zeroaicy/aide/cmake/CmakeBuild$Builder;->CMAKE_BUILD_CACHE_PATH:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private old(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 316
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lio/github/zeroaicy/aide/cmake/CmakeBuild$Builder;->ANDROID_SDK_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/cmake/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lio/github/zeroaicy/aide/cmake/CmakeBuild$Builder;->CMAKE_VERSION:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/bin/cmake"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 318
    const-string v0, "-DCMAKE_SYSTEM_NAME=Android"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 319
    const-string v0, "-DCMAKE_EXPORT_COMPILE_COMMANDS=ON"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 321
    const-string v0, "-H$PROJECT_PATH/$CMAKE_LISTS_TXT_PATH"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 324
    const-string v0, "-DCMAKE_SYSTEM_VERSION=$SYSTEM_VERSION"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 325
    const-string v0, "-DANDROID_PLATFORM=android-$SYSTEM_VERSION"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 327
    const-string v0, "-DANDROID_ABI=$ANDROID_ABI"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 328
    const-string v0, "-DCMAKE_ANDROID_ARCH_ABI=$ANDROID_ABI"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 330
    const-string v0, "-DANDROID_NDK=$ANDROID_SDK_PATH/ndk/$NDK_VERSION"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 331
    const-string v0, "-DCMAKE_ANDROID_NDK=$ANDROID_SDK_PATH/ndk/$NDK_VERSION"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 333
    const-string v0, "-DCMAKE_TOOLCHAIN_FILE=$ANDROID_SDK_PATH/ndk/$NDK_VERSION/build/cmake/android.toolchain.cmake"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 335
    const-string v0, "-DCMAKE_MAKE_PROGRAM=$ANDROID_SDK_PATH/cmake/$CMAKE_VERSION/bin/ninja"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 337
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "-DCMAKE_LIBRARY_OUTPUT_DIRECTORY=$PROJECT_PATH/"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lio/github/zeroaicy/aide/cmake/CmakeBuild$Builder;->CMAKE_OUTPUT_DIRECTORY_PATH:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/$ANDROID_ABI "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 338
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "-DCMAKE_RUNTIME_OUTPUT_DIRECTORY=$PROJECT_PATH/"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lio/github/zeroaicy/aide/cmake/CmakeBuild$Builder;->CMAKE_OUTPUT_DIRECTORY_PATH:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/$ANDROID_ABI"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 340
    const-string v0, "-DCMAKE_BUILD_TYPE=$CMAKE_BUILD_TYPE"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 342
    const-string v0, "-B$PROJECT_PATH/$CMAKE_BUILD_CACHE_PATH/$ANDROID_ABI"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 344
    const-string v0, "-GNinja"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 346
    const-string v0, "&&"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 349
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lio/github/zeroaicy/aide/cmake/CmakeBuild$Builder;->ANDROID_SDK_PATH:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/github/zeroaicy/aide/cmake/CmakeBuild$Builder;->CMAKE_VERSION:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/bin/ninja -C $PROJECT_PATH/$CMAKE_BUILD_CACHE_PATH/$ANDROID_ABI"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private setCmakeBuildCachePath(Ljava/lang/String;)Lio/github/zeroaicy/aide/cmake/CmakeBuild$Builder;
    .registers 2

    .line 176
    iput-object p1, p0, Lio/github/zeroaicy/aide/cmake/CmakeBuild$Builder;->CMAKE_BUILD_CACHE_PATH:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public build()Lio/github/zeroaicy/aide/cmake/CmakeBuild;
    .registers 9

    .line 210
    const-string v0, "arm64-v8a"

    iget-object v1, p0, Lio/github/zeroaicy/aide/cmake/CmakeBuild$Builder;->ANDROID_ABI:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 212
    const-string v0, "21"

    invoke-virtual {p0, v0}, Lio/github/zeroaicy/aide/cmake/CmakeBuild$Builder;->setSystemVersion(Ljava/lang/String;)Lio/github/zeroaicy/aide/cmake/CmakeBuild$Builder;

    .line 217
    :cond_f
    iget-object v0, p0, Lio/github/zeroaicy/aide/cmake/CmakeBuild$Builder;->ANDROID_ABI:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 218
    iget-object v0, p0, Lio/github/zeroaicy/aide/cmake/CmakeBuild$Builder;->cmakeBuild:Lio/github/zeroaicy/aide/cmake/CmakeBuild;

    const-string v1, "未设置ANDROID_ABI"

    invoke-virtual {v0, v1}, Lio/github/zeroaicy/aide/cmake/CmakeBuild;->addErrorInfo(Ljava/lang/String;)Lio/github/zeroaicy/aide/cmake/CmakeBuild;

    .line 221
    :cond_1e
    iget-object v0, p0, Lio/github/zeroaicy/aide/cmake/CmakeBuild$Builder;->PROJECT_PATH:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 222
    iget-object v0, p0, Lio/github/zeroaicy/aide/cmake/CmakeBuild$Builder;->cmakeBuild:Lio/github/zeroaicy/aide/cmake/CmakeBuild;

    const-string v1, "未设置PROJECT_PATH"

    invoke-virtual {v0, v1}, Lio/github/zeroaicy/aide/cmake/CmakeBuild;->addErrorInfo(Ljava/lang/String;)Lio/github/zeroaicy/aide/cmake/CmakeBuild;

    .line 225
    :cond_2d
    iget-object v0, p0, Lio/github/zeroaicy/aide/cmake/CmakeBuild$Builder;->CMAKE_LISTS_TXT_PATH:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 226
    iget-object v0, p0, Lio/github/zeroaicy/aide/cmake/CmakeBuild$Builder;->cmakeBuild:Lio/github/zeroaicy/aide/cmake/CmakeBuild;

    const-string v1, "未设置CMAKE_LISTS_TXT_PATH"

    invoke-virtual {v0, v1}, Lio/github/zeroaicy/aide/cmake/CmakeBuild;->addErrorInfo(Ljava/lang/String;)Lio/github/zeroaicy/aide/cmake/CmakeBuild;

    .line 229
    :cond_3c
    iget-object v0, p0, Lio/github/zeroaicy/aide/cmake/CmakeBuild$Builder;->CMAKE_OUTPUT_DIRECTORY_PATH:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 230
    iget-object v0, p0, Lio/github/zeroaicy/aide/cmake/CmakeBuild$Builder;->cmakeBuild:Lio/github/zeroaicy/aide/cmake/CmakeBuild;

    const-string v1, "未设置CMAKE_OUTPUT_DIRECTORY_PATH"

    invoke-virtual {v0, v1}, Lio/github/zeroaicy/aide/cmake/CmakeBuild;->addErrorInfo(Ljava/lang/String;)Lio/github/zeroaicy/aide/cmake/CmakeBuild;

    .line 233
    :cond_4b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lio/github/zeroaicy/aide/cmake/CmakeBuild$Builder;->CMAKE_OUTPUT_DIRECTORY_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lio/github/zeroaicy/aide/cmake/CmakeBuild$Builder;->ANDROID_ABI:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/github/zeroaicy/aide/cmake/CmakeBuild$Builder;->CMAKE_LIBRARY_OUTPUT_DIRECTORY:Ljava/lang/String;

    .line 235
    iget-object v0, p0, Lio/github/zeroaicy/aide/cmake/CmakeBuild$Builder;->CMAKE_RUNTIME_OUTPUT_DIRECTORY:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_71

    .line 237
    iget-object v0, p0, Lio/github/zeroaicy/aide/cmake/CmakeBuild$Builder;->CMAKE_LIBRARY_OUTPUT_DIRECTORY:Ljava/lang/String;

    iput-object v0, p0, Lio/github/zeroaicy/aide/cmake/CmakeBuild$Builder;->CMAKE_RUNTIME_OUTPUT_DIRECTORY:Ljava/lang/String;

    .line 241
    :cond_71
    iget-object v0, p0, Lio/github/zeroaicy/aide/cmake/CmakeBuild$Builder;->ANDROID_SDK_PATH:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_80

    .line 242
    iget-object v0, p0, Lio/github/zeroaicy/aide/cmake/CmakeBuild$Builder;->cmakeBuild:Lio/github/zeroaicy/aide/cmake/CmakeBuild;

    const-string v2, "未设置ANDROID_SDK_PATH"

    invoke-virtual {v0, v2}, Lio/github/zeroaicy/aide/cmake/CmakeBuild;->addErrorInfo(Ljava/lang/String;)Lio/github/zeroaicy/aide/cmake/CmakeBuild;

    .line 245
    :cond_80
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lio/github/zeroaicy/aide/cmake/CmakeBuild$Builder;->PROJECT_PATH:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 246
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lio/github/zeroaicy/aide/cmake/CmakeBuild$Builder;->CMAKE_BUILD_CACHE_PATH:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lio/github/zeroaicy/aide/cmake/CmakeBuild$Builder;->ANDROID_ABI:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/build.ninja"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/io/File;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 248
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lio/github/zeroaicy/aide/cmake/CmakeBuild$Builder;->CMAKE_LISTS_TXT_PATH:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/CMakeLists.txt"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Ljava/io/File;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    invoke-virtual {v3}, Ljava/io/File;->lastModified()J

    move-result-wide v6

    cmp-long v0, v4, v6

    if-lez v0, :cond_dc

    .line 249
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 250
    new-instance v0, Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    const-string v3, "CMakeCache.txt"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 253
    :cond_dc
    iget-object v0, p0, Lio/github/zeroaicy/aide/cmake/CmakeBuild$Builder;->cmakeBuild:Lio/github/zeroaicy/aide/cmake/CmakeBuild;

    invoke-virtual {v0}, Lio/github/zeroaicy/aide/cmake/CmakeBuild;->error()Z

    move-result v0

    if-eqz v0, :cond_e7

    .line 254
    iget-object v0, p0, Lio/github/zeroaicy/aide/cmake/CmakeBuild$Builder;->cmakeBuild:Lio/github/zeroaicy/aide/cmake/CmakeBuild;

    return-object v0

    .line 256
    :cond_e7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 257
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lio/github/zeroaicy/aide/cmake/CmakeBuild$Builder;->ANDROID_SDK_PATH:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/cmake/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lio/github/zeroaicy/aide/cmake/CmakeBuild$Builder;->CMAKE_VERSION:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/bin/cmake"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 258
    const-string v2, "-DCMAKE_SYSTEM_NAME=Android"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 260
    const-string v2, "-DCMAKE_EXPORT_COMPILE_COMMANDS=ON"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 262
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "-H"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lio/github/zeroaicy/aide/cmake/CmakeBuild$Builder;->PROJECT_PATH:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lio/github/zeroaicy/aide/cmake/CmakeBuild$Builder;->CMAKE_LISTS_TXT_PATH:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 265
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "-DCMAKE_SYSTEM_VERSION="

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lio/github/zeroaicy/aide/cmake/CmakeBuild$Builder;->SYSTEM_VERSION:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 266
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "-DANDROID_PLATFORM=android-"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lio/github/zeroaicy/aide/cmake/CmakeBuild$Builder;->SYSTEM_VERSION:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 268
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "-DANDROID_ABI="

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lio/github/zeroaicy/aide/cmake/CmakeBuild$Builder;->ANDROID_ABI:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 269
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "-DCMAKE_ANDROID_ARCH_ABI="

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lio/github/zeroaicy/aide/cmake/CmakeBuild$Builder;->ANDROID_ABI:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 271
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "-DANDROID_NDK="

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lio/github/zeroaicy/aide/cmake/CmakeBuild$Builder;->ANDROID_SDK_PATH:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/ndk/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lio/github/zeroaicy/aide/cmake/CmakeBuild$Builder;->NDK_VERSION:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 272
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "-DCMAKE_ANDROID_NDK="

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lio/github/zeroaicy/aide/cmake/CmakeBuild$Builder;->ANDROID_SDK_PATH:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lio/github/zeroaicy/aide/cmake/CmakeBuild$Builder;->NDK_VERSION:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 274
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "-DCMAKE_TOOLCHAIN_FILE="

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lio/github/zeroaicy/aide/cmake/CmakeBuild$Builder;->ANDROID_SDK_PATH:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lio/github/zeroaicy/aide/cmake/CmakeBuild$Builder;->NDK_VERSION:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/build/cmake/android.toolchain.cmake"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 276
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "-DCMAKE_MAKE_PROGRAM="

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lio/github/zeroaicy/aide/cmake/CmakeBuild$Builder;->ANDROID_SDK_PATH:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lio/github/zeroaicy/aide/cmake/CmakeBuild$Builder;->CMAKE_VERSION:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/bin/ninja"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 278
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "-DCMAKE_LIBRARY_OUTPUT_DIRECTORY="

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lio/github/zeroaicy/aide/cmake/CmakeBuild$Builder;->PROJECT_PATH:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lio/github/zeroaicy/aide/cmake/CmakeBuild$Builder;->CMAKE_LIBRARY_OUTPUT_DIRECTORY:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 279
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "-DCMAKE_RUNTIME_OUTPUT_DIRECTORY="

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lio/github/zeroaicy/aide/cmake/CmakeBuild$Builder;->PROJECT_PATH:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lio/github/zeroaicy/aide/cmake/CmakeBuild$Builder;->CMAKE_RUNTIME_OUTPUT_DIRECTORY:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 281
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "-DCMAKE_BUILD_TYPE="

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lio/github/zeroaicy/aide/cmake/CmakeBuild$Builder;->CMAKE_BUILD_TYPE:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 283
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "-B"

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lio/github/zeroaicy/aide/cmake/CmakeBuild$Builder;->PROJECT_PATH:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lio/github/zeroaicy/aide/cmake/CmakeBuild$Builder;->CMAKE_BUILD_CACHE_PATH:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lio/github/zeroaicy/aide/cmake/CmakeBuild$Builder;->ANDROID_ABI:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 285
    const-string v2, "-GNinja"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 287
    iget-object v2, p0, Lio/github/zeroaicy/aide/cmake/CmakeBuild$Builder;->cmakeBuild:Lio/github/zeroaicy/aide/cmake/CmakeBuild;

    invoke-virtual {v2, v0}, Lio/github/zeroaicy/aide/cmake/CmakeBuild;->setCmakeCommandList(Ljava/util/List;)V

    .line 291
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 292
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lio/github/zeroaicy/aide/cmake/CmakeBuild$Builder;->ANDROID_SDK_PATH:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lio/github/zeroaicy/aide/cmake/CmakeBuild$Builder;->CMAKE_VERSION:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 293
    const-string v2, "-C"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 294
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lio/github/zeroaicy/aide/cmake/CmakeBuild$Builder;->PROJECT_PATH:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lio/github/zeroaicy/aide/cmake/CmakeBuild$Builder;->CMAKE_BUILD_CACHE_PATH:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/github/zeroaicy/aide/cmake/CmakeBuild$Builder;->ANDROID_ABI:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 295
    iget-object v1, p0, Lio/github/zeroaicy/aide/cmake/CmakeBuild$Builder;->cmakeBuild:Lio/github/zeroaicy/aide/cmake/CmakeBuild;

    invoke-virtual {v1, v0}, Lio/github/zeroaicy/aide/cmake/CmakeBuild;->setNinjaCommandList(Ljava/util/List;)V

    .line 297
    iget-object v0, p0, Lio/github/zeroaicy/aide/cmake/CmakeBuild$Builder;->cmakeBuild:Lio/github/zeroaicy/aide/cmake/CmakeBuild;

    return-object v0
.end method

.method public setAndroidABI(Ljava/lang/String;)Lio/github/zeroaicy/aide/cmake/CmakeBuild$Builder;
    .registers 3

    .line 150
    iput-object p1, p0, Lio/github/zeroaicy/aide/cmake/CmakeBuild$Builder;->ANDROID_ABI:Ljava/lang/String;

    .line 152
    const-string v0, "arm64-v8a"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_f

    .line 154
    const-string p1, "21"

    invoke-virtual {p0, p1}, Lio/github/zeroaicy/aide/cmake/CmakeBuild$Builder;->setSystemVersion(Ljava/lang/String;)Lio/github/zeroaicy/aide/cmake/CmakeBuild$Builder;

    :cond_f
    return-object p0
.end method

.method public setAndroidSdkPath(Ljava/lang/String;)Lio/github/zeroaicy/aide/cmake/CmakeBuild$Builder;
    .registers 6

    .line 95
    iput-object p1, p0, Lio/github/zeroaicy/aide/cmake/CmakeBuild$Builder;->ANDROID_SDK_PATH:Ljava/lang/String;

    .line 97
    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Lio/github/zeroaicy/aide/cmake/CmakeBuild$Builder;->ANDROID_SDK_PATH:Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 98
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_25

    .line 99
    iget-object p1, p0, Lio/github/zeroaicy/aide/cmake/CmakeBuild$Builder;->cmakeBuild:Lio/github/zeroaicy/aide/cmake/CmakeBuild;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ANDROID_SDK不存在: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lio/github/zeroaicy/aide/cmake/CmakeBuild$Builder;->ANDROID_SDK_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/github/zeroaicy/aide/cmake/CmakeBuild;->addErrorInfo(Ljava/lang/String;)Lio/github/zeroaicy/aide/cmake/CmakeBuild;

    return-object p0

    .line 104
    :cond_25
    iget-object v0, p0, Lio/github/zeroaicy/aide/cmake/CmakeBuild$Builder;->CMAKE_VERSION:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_61

    .line 106
    new-instance v0, Ljava/io/File;

    const-string v1, "cmake"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 107
    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    .line 109
    invoke-static {v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    if-eqz v1, :cond_4a

    .line 111
    array-length v2, v1

    if-nez v2, :cond_41

    goto :goto_4a

    .line 114
    :cond_41
    array-length v0, v1

    add-int/lit8 v0, v0, -0x1

    aget-object v0, v1, v0

    invoke-virtual {p0, v0}, Lio/github/zeroaicy/aide/cmake/CmakeBuild$Builder;->setCmakeVersion(Ljava/lang/String;)Lio/github/zeroaicy/aide/cmake/CmakeBuild$Builder;

    goto :goto_61

    .line 112
    :cond_4a
    :goto_4a
    iget-object v1, p0, Lio/github/zeroaicy/aide/cmake/CmakeBuild$Builder;->cmakeBuild:Lio/github/zeroaicy/aide/cmake/CmakeBuild;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "未发现cmake可用版本: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lio/github/zeroaicy/aide/cmake/CmakeBuild;->addErrorInfo(Ljava/lang/String;)Lio/github/zeroaicy/aide/cmake/CmakeBuild;

    .line 118
    :cond_61
    :goto_61
    iget-object v0, p0, Lio/github/zeroaicy/aide/cmake/CmakeBuild$Builder;->NDK_VERSION:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9a

    .line 120
    new-instance v0, Ljava/io/File;

    const-string v1, "ndk"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 121
    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_83

    .line 122
    array-length v1, p1

    if-nez v1, :cond_7a

    goto :goto_83

    .line 126
    :cond_7a
    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    aget-object p1, p1, v0

    invoke-virtual {p0, p1}, Lio/github/zeroaicy/aide/cmake/CmakeBuild$Builder;->setNdkVersion(Ljava/lang/String;)Lio/github/zeroaicy/aide/cmake/CmakeBuild$Builder;

    goto :goto_9a

    .line 123
    :cond_83
    :goto_83
    iget-object p1, p0, Lio/github/zeroaicy/aide/cmake/CmakeBuild$Builder;->cmakeBuild:Lio/github/zeroaicy/aide/cmake/CmakeBuild;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "未发现ndk可用版本: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/github/zeroaicy/aide/cmake/CmakeBuild;->addErrorInfo(Ljava/lang/String;)Lio/github/zeroaicy/aide/cmake/CmakeBuild;

    :cond_9a
    :goto_9a
    return-object p0
.end method

.method public setCmakeBuildType(Ljava/lang/String;)Lio/github/zeroaicy/aide/cmake/CmakeBuild$Builder;
    .registers 2

    .line 203
    iput-object p1, p0, Lio/github/zeroaicy/aide/cmake/CmakeBuild$Builder;->CMAKE_BUILD_TYPE:Ljava/lang/String;

    return-object p0
.end method

.method public setCmakeListsTxtPath(Ljava/lang/String;)Lio/github/zeroaicy/aide/cmake/CmakeBuild$Builder;
    .registers 2

    .line 169
    iput-object p1, p0, Lio/github/zeroaicy/aide/cmake/CmakeBuild$Builder;->CMAKE_LISTS_TXT_PATH:Ljava/lang/String;

    return-object p0
.end method

.method public setCmakeOutputDirectoryPath(Ljava/lang/String;)Lio/github/zeroaicy/aide/cmake/CmakeBuild$Builder;
    .registers 3

    .line 184
    iput-object p1, p0, Lio/github/zeroaicy/aide/cmake/CmakeBuild$Builder;->CMAKE_OUTPUT_DIRECTORY_PATH:Ljava/lang/String;

    .line 186
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lio/github/zeroaicy/aide/cmake/CmakeBuild$Builder;->CMAKE_OUTPUT_DIRECTORY_PATH:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/../obj/cmake"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lio/github/zeroaicy/aide/cmake/CmakeBuild$Builder;->setCmakeBuildCachePath(Ljava/lang/String;)Lio/github/zeroaicy/aide/cmake/CmakeBuild$Builder;

    return-object p0
.end method

.method public setCmakeRuntimeOutputDirectoryPath(Ljava/lang/String;)Lio/github/zeroaicy/aide/cmake/CmakeBuild$Builder;
    .registers 2

    .line 195
    iput-object p1, p0, Lio/github/zeroaicy/aide/cmake/CmakeBuild$Builder;->CMAKE_RUNTIME_OUTPUT_DIRECTORY:Ljava/lang/String;

    return-object p0
.end method

.method public setCmakeVersion(Ljava/lang/String;)Lio/github/zeroaicy/aide/cmake/CmakeBuild$Builder;
    .registers 2

    .line 136
    iput-object p1, p0, Lio/github/zeroaicy/aide/cmake/CmakeBuild$Builder;->CMAKE_VERSION:Ljava/lang/String;

    return-object p0
.end method

.method public setNdkVersion(Ljava/lang/String;)Lio/github/zeroaicy/aide/cmake/CmakeBuild$Builder;
    .registers 2

    .line 142
    iput-object p1, p0, Lio/github/zeroaicy/aide/cmake/CmakeBuild$Builder;->NDK_VERSION:Ljava/lang/String;

    return-object p0
.end method

.method public setProjectPath(Ljava/lang/String;)Lio/github/zeroaicy/aide/cmake/CmakeBuild$Builder;
    .registers 2

    .line 87
    iput-object p1, p0, Lio/github/zeroaicy/aide/cmake/CmakeBuild$Builder;->PROJECT_PATH:Ljava/lang/String;

    return-object p0
.end method

.method public setSystemVersion(Ljava/lang/String;)Lio/github/zeroaicy/aide/cmake/CmakeBuild$Builder;
    .registers 2

    .line 162
    iput-object p1, p0, Lio/github/zeroaicy/aide/cmake/CmakeBuild$Builder;->SYSTEM_VERSION:Ljava/lang/String;

    return-object p0
.end method
