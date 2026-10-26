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
    .locals 1

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
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private method()V
    .locals 3

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
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
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

    iget-object v1, p0, Lio/github/zeroaicy/aide/cmake/CmakeBuild$Builder;->CMAKE_VERSION:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/bin/cmake"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    const-string v1, "-DCMAKE_LIBRARY_OUTPUT_DIRECTORY=$PROJECT_PATH/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lio/github/zeroaicy/aide/cmake/CmakeBuild$Builder;->CMAKE_OUTPUT_DIRECTORY_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/$ANDROID_ABI "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 338
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "-DCMAKE_RUNTIME_OUTPUT_DIRECTORY=$PROJECT_PATH/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lio/github/zeroaicy/aide/cmake/CmakeBuild$Builder;->CMAKE_OUTPUT_DIRECTORY_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/$ANDROID_ABI"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    iget-object v1, p0, Lio/github/zeroaicy/aide/cmake/CmakeBuild$Builder;->ANDROID_SDK_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/cmake/"

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
    .locals 0

    .line 176
    iput-object p1, p0, Lio/github/zeroaicy/aide/cmake/CmakeBuild$Builder;->CMAKE_BUILD_CACHE_PATH:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public build()Lio/github/zeroaicy/aide/cmake/CmakeBuild;
    .locals 6

    .line 210
    const-string v0, "arm64-v8a"

    iget-object v1, p0, Lio/github/zeroaicy/aide/cmake/CmakeBuild$Builder;->ANDROID_ABI:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 212
    const-string v0, "21"

    invoke-virtual {p0, v0}, Lio/github/zeroaicy/aide/cmake/CmakeBuild$Builder;->setSystemVersion(Ljava/lang/String;)Lio/github/zeroaicy/aide/cmake/CmakeBuild$Builder;

    .line 217
    :cond_0
    iget-object v0, p0, Lio/github/zeroaicy/aide/cmake/CmakeBuild$Builder;->ANDROID_ABI:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 218
    iget-object v0, p0, Lio/github/zeroaicy/aide/cmake/CmakeBuild$Builder;->cmakeBuild:Lio/github/zeroaicy/aide/cmake/CmakeBuild;

    const-string v1, "\u672a\u8bbe\u7f6eANDROID_ABI"

    invoke-virtual {v0, v1}, Lio/github/zeroaicy/aide/cmake/CmakeBuild;->addErrorInfo(Ljava/lang/String;)Lio/github/zeroaicy/aide/cmake/CmakeBuild;

    .line 221
    :cond_1
    iget-object v0, p0, Lio/github/zeroaicy/aide/cmake/CmakeBuild$Builder;->PROJECT_PATH:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 222
    iget-object v0, p0, Lio/github/zeroaicy/aide/cmake/CmakeBuild$Builder;->cmakeBuild:Lio/github/zeroaicy/aide/cmake/CmakeBuild;

    const-string v1, "\u672a\u8bbe\u7f6ePROJECT_PATH"

    invoke-virtual {v0, v1}, Lio/github/zeroaicy/aide/cmake/CmakeBuild;->addErrorInfo(Ljava/lang/String;)Lio/github/zeroaicy/aide/cmake/CmakeBuild;

    .line 225
    :cond_2
    iget-object v0, p0, Lio/github/zeroaicy/aide/cmake/CmakeBuild$Builder;->CMAKE_LISTS_TXT_PATH:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 226
    iget-object v0, p0, Lio/github/zeroaicy/aide/cmake/CmakeBuild$Builder;->cmakeBuild:Lio/github/zeroaicy/aide/cmake/CmakeBuild;

    const-string v1, "\u672a\u8bbe\u7f6eCMAKE_LISTS_TXT_PATH"

    invoke-virtual {v0, v1}, Lio/github/zeroaicy/aide/cmake/CmakeBuild;->addErrorInfo(Ljava/lang/String;)Lio/github/zeroaicy/aide/cmake/CmakeBuild;

    .line 229
    :cond_3
    iget-object v0, p0, Lio/github/zeroaicy/aide/cmake/CmakeBuild$Builder;->CMAKE_OUTPUT_DIRECTORY_PATH:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 230
    iget-object v0, p0, Lio/github/zeroaicy/aide/cmake/CmakeBuild$Builder;->cmakeBuild:Lio/github/zeroaicy/aide/cmake/CmakeBuild;

    const-string v1, "\u672a\u8bbe\u7f6eCMAKE_OUTPUT_DIRECTORY_PATH"

    invoke-virtual {v0, v1}, Lio/github/zeroaicy/aide/cmake/CmakeBuild;->addErrorInfo(Ljava/lang/String;)Lio/github/zeroaicy/aide/cmake/CmakeBuild;

    .line 233
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lio/github/zeroaicy/aide/cmake/CmakeBuild$Builder;->CMAKE_OUTPUT_DIRECTORY_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/github/zeroaicy/aide/cmake/CmakeBuild$Builder;->ANDROID_ABI:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/github/zeroaicy/aide/cmake/CmakeBuild$Builder;->CMAKE_LIBRARY_OUTPUT_DIRECTORY:Ljava/lang/String;

    .line 235
    iget-object v0, p0, Lio/github/zeroaicy/aide/cmake/CmakeBuild$Builder;->CMAKE_RUNTIME_OUTPUT_DIRECTORY:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 237
    iget-object v0, p0, Lio/github/zeroaicy/aide/cmake/CmakeBuild$Builder;->CMAKE_LIBRARY_OUTPUT_DIRECTORY:Ljava/lang/String;

    iput-object v0, p0, Lio/github/zeroaicy/aide/cmake/CmakeBuild$Builder;->CMAKE_RUNTIME_OUTPUT_DIRECTORY:Ljava/lang/String;

    .line 241
    :cond_5
    iget-object v0, p0, Lio/github/zeroaicy/aide/cmake/CmakeBuild$Builder;->ANDROID_SDK_PATH:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 242
    iget-object v0, p0, Lio/github/zeroaicy/aide/cmake/CmakeBuild$Builder;->cmakeBuild:Lio/github/zeroaicy/aide/cmake/CmakeBuild;

    const-string v1, "\u672a\u8bbe\u7f6eANDROID_SDK_PATH"

    invoke-virtual {v0, v1}, Lio/github/zeroaicy/aide/cmake/CmakeBuild;->addErrorInfo(Ljava/lang/String;)Lio/github/zeroaicy/aide/cmake/CmakeBuild;

    .line 245
    :cond_6
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lio/github/zeroaicy/aide/cmake/CmakeBuild$Builder;->PROJECT_PATH:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 246
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lio/github/zeroaicy/aide/cmake/CmakeBuild$Builder;->CMAKE_BUILD_CACHE_PATH:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lio/github/zeroaicy/aide/cmake/CmakeBuild$Builder;->ANDROID_ABI:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/build.ninja"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/io/File;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 248
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lio/github/zeroaicy/aide/cmake/CmakeBuild$Builder;->CMAKE_LISTS_TXT_PATH:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/CMakeLists.txt"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/io/File;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    invoke-virtual {v2}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    cmp-long v0, v0, v4

    if-lez v0, :cond_7

    .line 249
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 250
    new-instance v0, Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    const-string v2, "CMakeCache.txt"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 253
    :cond_7
    iget-object v0, p0, Lio/github/zeroaicy/aide/cmake/CmakeBuild$Builder;->cmakeBuild:Lio/github/zeroaicy/aide/cmake/CmakeBuild;

    invoke-virtual {v0}, Lio/github/zeroaicy/aide/cmake/CmakeBuild;->error()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 254
    iget-object v0, p0, Lio/github/zeroaicy/aide/cmake/CmakeBuild$Builder;->cmakeBuild:Lio/github/zeroaicy/aide/cmake/CmakeBuild;

    .line 297
    :goto_0
    return-object v0

    .line 256
    :cond_8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 257
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lio/github/zeroaicy/aide/cmake/CmakeBuild$Builder;->ANDROID_SDK_PATH:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/cmake/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lio/github/zeroaicy/aide/cmake/CmakeBuild$Builder;->CMAKE_VERSION:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/bin/cmake"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 258
    const-string v1, "-DCMAKE_SYSTEM_NAME=Android"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 260
    const-string v1, "-DCMAKE_EXPORT_COMPILE_COMMANDS=ON"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 262
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "-H"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lio/github/zeroaicy/aide/cmake/CmakeBuild$Builder;->PROJECT_PATH:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lio/github/zeroaicy/aide/cmake/CmakeBuild$Builder;->CMAKE_LISTS_TXT_PATH:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 265
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "-DCMAKE_SYSTEM_VERSION="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lio/github/zeroaicy/aide/cmake/CmakeBuild$Builder;->SYSTEM_VERSION:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 266
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "-DANDROID_PLATFORM=android-"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lio/github/zeroaicy/aide/cmake/CmakeBuild$Builder;->SYSTEM_VERSION:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 268
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "-DANDROID_ABI="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lio/github/zeroaicy/aide/cmake/CmakeBuild$Builder;->ANDROID_ABI:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 269
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "-DCMAKE_ANDROID_ARCH_ABI="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lio/github/zeroaicy/aide/cmake/CmakeBuild$Builder;->ANDROID_ABI:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 271
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "-DANDROID_NDK="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lio/github/zeroaicy/aide/cmake/CmakeBuild$Builder;->ANDROID_SDK_PATH:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/ndk/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lio/github/zeroaicy/aide/cmake/CmakeBuild$Builder;->NDK_VERSION:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 272
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "-DCMAKE_ANDROID_NDK="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lio/github/zeroaicy/aide/cmake/CmakeBuild$Builder;->ANDROID_SDK_PATH:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/ndk/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lio/github/zeroaicy/aide/cmake/CmakeBuild$Builder;->NDK_VERSION:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 274
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "-DCMAKE_TOOLCHAIN_FILE="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lio/github/zeroaicy/aide/cmake/CmakeBuild$Builder;->ANDROID_SDK_PATH:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/ndk/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lio/github/zeroaicy/aide/cmake/CmakeBuild$Builder;->NDK_VERSION:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/build/cmake/android.toolchain.cmake"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 276
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "-DCMAKE_MAKE_PROGRAM="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lio/github/zeroaicy/aide/cmake/CmakeBuild$Builder;->ANDROID_SDK_PATH:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/cmake/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lio/github/zeroaicy/aide/cmake/CmakeBuild$Builder;->CMAKE_VERSION:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/bin/ninja"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 278
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "-DCMAKE_LIBRARY_OUTPUT_DIRECTORY="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lio/github/zeroaicy/aide/cmake/CmakeBuild$Builder;->PROJECT_PATH:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lio/github/zeroaicy/aide/cmake/CmakeBuild$Builder;->CMAKE_LIBRARY_OUTPUT_DIRECTORY:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 279
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "-DCMAKE_RUNTIME_OUTPUT_DIRECTORY="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lio/github/zeroaicy/aide/cmake/CmakeBuild$Builder;->PROJECT_PATH:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lio/github/zeroaicy/aide/cmake/CmakeBuild$Builder;->CMAKE_RUNTIME_OUTPUT_DIRECTORY:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 281
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "-DCMAKE_BUILD_TYPE="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lio/github/zeroaicy/aide/cmake/CmakeBuild$Builder;->CMAKE_BUILD_TYPE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 283
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "-B"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lio/github/zeroaicy/aide/cmake/CmakeBuild$Builder;->PROJECT_PATH:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lio/github/zeroaicy/aide/cmake/CmakeBuild$Builder;->CMAKE_BUILD_CACHE_PATH:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lio/github/zeroaicy/aide/cmake/CmakeBuild$Builder;->ANDROID_ABI:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 285
    const-string v1, "-GNinja"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 287
    iget-object v1, p0, Lio/github/zeroaicy/aide/cmake/CmakeBuild$Builder;->cmakeBuild:Lio/github/zeroaicy/aide/cmake/CmakeBuild;

    invoke-virtual {v1, v0}, Lio/github/zeroaicy/aide/cmake/CmakeBuild;->setCmakeCommandList(Ljava/util/List;)V

    .line 291
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 292
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lio/github/zeroaicy/aide/cmake/CmakeBuild$Builder;->ANDROID_SDK_PATH:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/cmake/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lio/github/zeroaicy/aide/cmake/CmakeBuild$Builder;->CMAKE_VERSION:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/bin/ninja"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 293
    const-string v1, "-C"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 294
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lio/github/zeroaicy/aide/cmake/CmakeBuild$Builder;->PROJECT_PATH:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lio/github/zeroaicy/aide/cmake/CmakeBuild$Builder;->CMAKE_BUILD_CACHE_PATH:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lio/github/zeroaicy/aide/cmake/CmakeBuild$Builder;->ANDROID_ABI:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 295
    iget-object v1, p0, Lio/github/zeroaicy/aide/cmake/CmakeBuild$Builder;->cmakeBuild:Lio/github/zeroaicy/aide/cmake/CmakeBuild;

    invoke-virtual {v1, v0}, Lio/github/zeroaicy/aide/cmake/CmakeBuild;->setNinjaCommandList(Ljava/util/List;)V

    .line 297
    iget-object v0, p0, Lio/github/zeroaicy/aide/cmake/CmakeBuild$Builder;->cmakeBuild:Lio/github/zeroaicy/aide/cmake/CmakeBuild;

    goto/16 :goto_0
.end method

.method public setAndroidABI(Ljava/lang/String;)Lio/github/zeroaicy/aide/cmake/CmakeBuild$Builder;
    .locals 1

    .line 150
    iput-object p1, p0, Lio/github/zeroaicy/aide/cmake/CmakeBuild$Builder;->ANDROID_ABI:Ljava/lang/String;

    .line 152
    const-string v0, "arm64-v8a"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 154
    const-string v0, "21"

    invoke-virtual {p0, v0}, Lio/github/zeroaicy/aide/cmake/CmakeBuild$Builder;->setSystemVersion(Ljava/lang/String;)Lio/github/zeroaicy/aide/cmake/CmakeBuild$Builder;

    :cond_0
    return-object p0
.end method

.method public setAndroidSdkPath(Ljava/lang/String;)Lio/github/zeroaicy/aide/cmake/CmakeBuild$Builder;
    .locals 5

    .line 95
    iput-object p1, p0, Lio/github/zeroaicy/aide/cmake/CmakeBuild$Builder;->ANDROID_SDK_PATH:Ljava/lang/String;

    .line 97
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lio/github/zeroaicy/aide/cmake/CmakeBuild$Builder;->ANDROID_SDK_PATH:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 98
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 99
    iget-object v0, p0, Lio/github/zeroaicy/aide/cmake/CmakeBuild$Builder;->cmakeBuild:Lio/github/zeroaicy/aide/cmake/CmakeBuild;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ANDROID_SDK\u4e0d\u5b58\u5728: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lio/github/zeroaicy/aide/cmake/CmakeBuild$Builder;->ANDROID_SDK_PATH:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/github/zeroaicy/aide/cmake/CmakeBuild;->addErrorInfo(Ljava/lang/String;)Lio/github/zeroaicy/aide/cmake/CmakeBuild;

    .line 123
    :cond_0
    :goto_0
    return-object p0

    .line 104
    :cond_1
    iget-object v1, p0, Lio/github/zeroaicy/aide/cmake/CmakeBuild$Builder;->CMAKE_VERSION:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 106
    new-instance v1, Ljava/io/File;

    const-string v2, "cmake"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 107
    invoke-virtual {v1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v2

    .line 109
    invoke-static {v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    if-eqz v2, :cond_2

    .line 111
    array-length v3, v2

    if-nez v3, :cond_5

    .line 112
    :cond_2
    iget-object v2, p0, Lio/github/zeroaicy/aide/cmake/CmakeBuild$Builder;->cmakeBuild:Lio/github/zeroaicy/aide/cmake/CmakeBuild;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u672a\u53d1\u73b0cmake\u53ef\u7528\u7248\u672c: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lio/github/zeroaicy/aide/cmake/CmakeBuild;->addErrorInfo(Ljava/lang/String;)Lio/github/zeroaicy/aide/cmake/CmakeBuild;

    .line 118
    :cond_3
    :goto_1
    iget-object v1, p0, Lio/github/zeroaicy/aide/cmake/CmakeBuild$Builder;->NDK_VERSION:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 120
    new-instance v1, Ljava/io/File;

    const-string v2, "ndk"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 121
    invoke-virtual {v1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 122
    array-length v2, v0

    if-nez v2, :cond_6

    .line 123
    :cond_4
    iget-object v0, p0, Lio/github/zeroaicy/aide/cmake/CmakeBuild$Builder;->cmakeBuild:Lio/github/zeroaicy/aide/cmake/CmakeBuild;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u672a\u53d1\u73b0ndk\u53ef\u7528\u7248\u672c: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/github/zeroaicy/aide/cmake/CmakeBuild;->addErrorInfo(Ljava/lang/String;)Lio/github/zeroaicy/aide/cmake/CmakeBuild;

    goto :goto_0

    .line 114
    :cond_5
    array-length v1, v2

    add-int/lit8 v1, v1, -0x1

    aget-object v1, v2, v1

    invoke-virtual {p0, v1}, Lio/github/zeroaicy/aide/cmake/CmakeBuild$Builder;->setCmakeVersion(Ljava/lang/String;)Lio/github/zeroaicy/aide/cmake/CmakeBuild$Builder;

    goto :goto_1

    .line 126
    :cond_6
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lio/github/zeroaicy/aide/cmake/CmakeBuild$Builder;->setNdkVersion(Ljava/lang/String;)Lio/github/zeroaicy/aide/cmake/CmakeBuild$Builder;

    goto :goto_0
.end method

.method public setCmakeBuildType(Ljava/lang/String;)Lio/github/zeroaicy/aide/cmake/CmakeBuild$Builder;
    .locals 0

    .line 203
    iput-object p1, p0, Lio/github/zeroaicy/aide/cmake/CmakeBuild$Builder;->CMAKE_BUILD_TYPE:Ljava/lang/String;

    return-object p0
.end method

.method public setCmakeListsTxtPath(Ljava/lang/String;)Lio/github/zeroaicy/aide/cmake/CmakeBuild$Builder;
    .locals 0

    .line 169
    iput-object p1, p0, Lio/github/zeroaicy/aide/cmake/CmakeBuild$Builder;->CMAKE_LISTS_TXT_PATH:Ljava/lang/String;

    return-object p0
.end method

.method public setCmakeOutputDirectoryPath(Ljava/lang/String;)Lio/github/zeroaicy/aide/cmake/CmakeBuild$Builder;
    .locals 2

    .line 184
    iput-object p1, p0, Lio/github/zeroaicy/aide/cmake/CmakeBuild$Builder;->CMAKE_OUTPUT_DIRECTORY_PATH:Ljava/lang/String;

    .line 186
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lio/github/zeroaicy/aide/cmake/CmakeBuild$Builder;->CMAKE_OUTPUT_DIRECTORY_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/../obj/cmake"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/github/zeroaicy/aide/cmake/CmakeBuild$Builder;->setCmakeBuildCachePath(Ljava/lang/String;)Lio/github/zeroaicy/aide/cmake/CmakeBuild$Builder;

    return-object p0
.end method

.method public setCmakeRuntimeOutputDirectoryPath(Ljava/lang/String;)Lio/github/zeroaicy/aide/cmake/CmakeBuild$Builder;
    .locals 0

    .line 195
    iput-object p1, p0, Lio/github/zeroaicy/aide/cmake/CmakeBuild$Builder;->CMAKE_RUNTIME_OUTPUT_DIRECTORY:Ljava/lang/String;

    return-object p0
.end method

.method public setCmakeVersion(Ljava/lang/String;)Lio/github/zeroaicy/aide/cmake/CmakeBuild$Builder;
    .locals 0

    .line 136
    iput-object p1, p0, Lio/github/zeroaicy/aide/cmake/CmakeBuild$Builder;->CMAKE_VERSION:Ljava/lang/String;

    return-object p0
.end method

.method public setNdkVersion(Ljava/lang/String;)Lio/github/zeroaicy/aide/cmake/CmakeBuild$Builder;
    .locals 0

    .line 142
    iput-object p1, p0, Lio/github/zeroaicy/aide/cmake/CmakeBuild$Builder;->NDK_VERSION:Ljava/lang/String;

    return-object p0
.end method

.method public setProjectPath(Ljava/lang/String;)Lio/github/zeroaicy/aide/cmake/CmakeBuild$Builder;
    .locals 0

    .line 87
    iput-object p1, p0, Lio/github/zeroaicy/aide/cmake/CmakeBuild$Builder;->PROJECT_PATH:Ljava/lang/String;

    return-object p0
.end method

.method public setSystemVersion(Ljava/lang/String;)Lio/github/zeroaicy/aide/cmake/CmakeBuild$Builder;
    .locals 0

    .line 162
    iput-object p1, p0, Lio/github/zeroaicy/aide/cmake/CmakeBuild$Builder;->SYSTEM_VERSION:Ljava/lang/String;

    return-object p0
.end method
