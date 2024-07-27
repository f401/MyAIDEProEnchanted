.class public Lcom/s1243808733/aide/application/App;
.super Lcom/aide/ui/AIDEApplication;
.source "App.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/s1243808733/aide/application/App$MyActivityLifecycleCallbacks;
    }
.end annotation


# static fields
.field private static sApp:Lcom/s1243808733/aide/application/App;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 247
    invoke-direct {p0}, Lcom/aide/ui/AIDEApplication;-><init>()V

    return-void
.end method

.method public static getApp()Lcom/s1243808733/aide/application/App;
    .registers 1

    .line 48
    sget-object v0, Lcom/s1243808733/aide/application/App;->sApp:Lcom/s1243808733/aide/application/App;

    return-object v0
.end method

.method public static getUpdateUrl()Ljava/lang/String;
    .registers 4

    const/4 v3, 0x1

    .line 197
    invoke-static {}, Lcom/s1243808733/util/Utils;->getSp()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "aidepro_update_channel"

    const-string v2, "release"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "beta"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-ne v1, v3, :cond_0

    .line 199
    sget-object v0, Lcom/s1243808733/aide/Constants$URL;->UPDATE_BETA:Ljava/lang/String;

    .line 202
    :goto_0
    return-object v0

    .line 199
    :cond_0
    const-string v1, "release"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-ne v0, v3, :cond_1

    .line 202
    :cond_1
    sget-object v0, Lcom/s1243808733/aide/Constants$URL;->UPDATE_RELEASE:Ljava/lang/String;

    goto :goto_0
.end method

.method private initMtj()V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    const/4 v1, 0x0

    .line 123
    const-string v0, "550e1bf115"

    invoke-static {v0}, Lcom/baidu/mobstat/StatService;->setAppKey(Ljava/lang/String;)V

    .line 124
    invoke-static {v1}, Lcom/baidu/mobstat/StatService;->setDebugOn(Z)V

    .line 125
    const/4 v0, 0x1

    invoke-static {p0, v0, v1}, Lcom/baidu/mobstat/StatService;->autoTrace(Landroid/content/Context;ZZ)V

    return-void
.end method

.method private initUtils()V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    const/4 v3, 0x1

    .line 129
    invoke-static {p0}, Lcom/blankj/utilcode/util/Utils;->init(Landroid/app/Application;)V

    .line 131
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/s1243808733/aide/application/App;->getExternalCacheDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "log"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 132
    invoke-static {}, Lcom/blankj/utilcode/util/LogUtils;->getConfig()Lcom/blankj/utilcode/util/LogUtils$Config;

    move-result-object v1

    .line 133
    invoke-virtual {v1, v3}, Lcom/blankj/utilcode/util/LogUtils$Config;->setLogSwitch(Z)Lcom/blankj/utilcode/util/LogUtils$Config;

    .line 134
    invoke-virtual {v1, v3}, Lcom/blankj/utilcode/util/LogUtils$Config;->setLog2FileSwitch(Z)Lcom/blankj/utilcode/util/LogUtils$Config;

    .line 135
    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Lcom/blankj/utilcode/util/LogUtils$Config;->setSaveDays(I)Lcom/blankj/utilcode/util/LogUtils$Config;

    .line 136
    invoke-virtual {v1, v0}, Lcom/blankj/utilcode/util/LogUtils$Config;->setDir(Ljava/io/File;)Lcom/blankj/utilcode/util/LogUtils$Config;

    .line 138
    new-instance v1, Ljava/io/File;

    const-string v2, "crash"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v0, Lcom/s1243808733/aide/application/App$100000001;

    invoke-direct {v0, p0}, Lcom/s1243808733/aide/application/App$100000001;-><init>(Lcom/s1243808733/aide/application/App;)V

    invoke-static {v1, v0}, Lcom/s1243808733/util/CrashUtils;->init(Ljava/io/File;Lcom/s1243808733/util/CrashUtils$OnCrashListener;)V

    return-void
.end method

.method private initX()V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 152
    invoke-static {p0}, Lorg/xutils/x$Ext;->init(Landroid/app/Application;)V

    .line 153
    const/4 v0, 0x0

    invoke-static {v0}, Lorg/xutils/x$Ext;->setDebug(Z)V

    .line 154
    new-instance v0, Lcom/s1243808733/aide/application/App$100000002;

    invoke-direct {v0, p0}, Lcom/s1243808733/aide/application/App$100000002;-><init>(Lcom/s1243808733/aide/application/App;)V

    invoke-static {v0}, Lorg/xutils/x$Ext;->setDefaultHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    return-void
.end method

.method private loadFunctions()V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    const/4 v5, 0x0

    .line 52
    invoke-static {p0}, Labcd/FileSystemUtils;->setContext(Landroid/content/Context;)V
    
    const-string v0, "functions/runtime/data.json"

    invoke-static {v0}, Lcom/s1243808733/util/Utils;->getAssetsDataFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/ResourceUtils;->readAssets2String(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 53
    const-string v1, "version"

    int-to-long v2, v5

    invoke-static {v0, v1, v2, v3}, Lcom/blankj/utilcode/util/JsonUtils;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v2

    .line 55
    invoke-static {}, Lcom/s1243808733/util/Utils;->getFunctionDir()Ljava/io/File;

    move-result-object v4

    .line 56
    new-instance v0, Ljava/io/File;

    const-string v1, "runtime/data.json"

    invoke-direct {v0, v4, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/blankj/utilcode/util/FileIOUtils;->readFile2String(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    .line 57
    if-nez v0, :cond_1

    int-to-long v0, v5

    .line 59
    :goto_0
    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 60
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "/runtime"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 61
    invoke-static {v0}, Lcom/blankj/utilcode/util/FileUtils;->deleteAllInDir(Ljava/lang/String;)Z

    .line 62
    const-string v1, "functions/runtime"

    invoke-static {v1}, Lcom/s1243808733/util/Utils;->getAssetsDataFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/blankj/utilcode/util/ResourceUtils;->copyFileFromAssets(Ljava/lang/String;Ljava/lang/String;)Z

    .line 65
    :cond_0
    new-instance v0, Ljava/io/File;

    const-string v1, "runtime"

    invoke-direct {v0, v4, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v1, Lcom/s1243808733/aide/application/App$100000000;

    invoke-direct {v1, p0}, Lcom/s1243808733/aide/application/App$100000000;-><init>(Lcom/s1243808733/aide/application/App;)V

    invoke-static {v0, v1}, Lcom/s1243808733/util/FindFile;->find(Ljava/io/File;Ljava/io/FileFilter;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 72
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    .line 57
    :cond_1
    const-string v1, "version"

    int-to-long v6, v5

    invoke-static {v0, v1, v6, v7}, Lcom/blankj/utilcode/util/JsonUtils;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    goto :goto_0

    .line 65
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 72
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v5

    invoke-static {v2}, Lcom/s1243808733/util/Utils;->installFunctions([Ljava/lang/String;)V

    goto :goto_1
.end method

.method private loadLang()V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    const/4 v5, 0x1

    .line 78
    const-string v0, "en"

    .line 79
    invoke-static {}, Lcom/s1243808733/util/Utils;->getSp()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "app_language"

    const-string v3, "default"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 80
    const-string v2, "zh"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-ne v2, v5, :cond_1

    .line 82
    const-string v0, "zh"

    .line 90
    :cond_0
    :goto_0
    new-instance v1, Ljava/io/File;

    invoke-static {}, Lcom/s1243808733/util/Utils;->getFunctionDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    const-string v3, "lang/current.jar"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "functions/lang/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, ".jar"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/s1243808733/util/Utils;->getAssetsDataFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/blankj/utilcode/util/ResourceUtils;->copyFileFromAssets(Ljava/lang/String;Ljava/lang/String;)Z

    .line 92
    new-array v0, v5, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/s1243808733/util/Utils;->installFunctions([Ljava/lang/String;)V

    return-void

    .line 83
    :cond_1
    const-string v2, "default"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-ne v1, v5, :cond_0

    .line 85
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {v1}, Lcom/s1243808733/util/Utils;->isCN(Ljava/util/Locale;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 86
    const-string v0, "zh"

    goto :goto_0
.end method

.method private useMtj()Z
    .registers 4

    .line 119
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/s1243808733/util/Utils;->SDCARD_DATA_DIR:Ljava/io/File;

    const-string v2, "disable_mtj"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/blankj/utilcode/util/FileUtils;->isFileExists(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 167
    invoke-super {p0, p1}, Landroid/support/multidex/MultiDexApplication;->attachBaseContext(Landroid/content/Context;)V

    .line 168
    invoke-static {}, Lio/github/zeroaicy/util/reflect/ReflectPie;->reflectAll()Z

    return-void
.end method

.method protected init()V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 97
    :try_start_0
    invoke-static {p0}, Lcom/s1243808733/util/Utils;->setApp(Landroid/app/Application;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    .line 98
    invoke-static {}, Lcom/s1243808733/aide/application/AppConfigured;->init()V

    .line 99
    invoke-direct {p0}, Lcom/s1243808733/aide/application/App;->initUtils()V

    .line 100
    invoke-direct {p0}, Lcom/s1243808733/aide/application/App;->initX()V

    .line 101
    new-instance v0, Lcom/s1243808733/aide/application/App$MyActivityLifecycleCallbacks;

    invoke-direct {v0, p0}, Lcom/s1243808733/aide/application/App$MyActivityLifecycleCallbacks;-><init>(Lcom/s1243808733/aide/application/App;)V

    invoke-virtual {p0, v0}, Lcom/s1243808733/aide/application/App;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 102
    invoke-direct {p0}, Lcom/s1243808733/aide/application/App;->loadLang()V

    .line 103
    invoke-direct {p0}, Lcom/s1243808733/aide/application/App;->loadFunctions()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    :goto_0
    :try_start_1
    invoke-direct {p0}, Lcom/s1243808733/aide/application/App;->useMtj()Z

    move-result v0

    if-nez v0, :cond_0

    .line 110
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "disable_mtj"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/blankj/utilcode/util/LogUtils;->i([Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 112
    :goto_1
    return-void

    .line 103
    :catch_0
    move-exception v0

    .line 105
    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/s1243808733/util/Toasty;->toast(Ljava/lang/CharSequence;)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 112
    :cond_0
    :try_start_2
    invoke-direct {p0}, Lcom/s1243808733/aide/application/App;->initMtj()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Configuration;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 191
    invoke-super {p0, p1}, Landroid/app/Application;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreate()V
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 42
    invoke-super {p0}, Lcom/aide/ui/AIDEApplication;->onCreate()V

    .line 43
    sput-object p0, Lcom/s1243808733/aide/application/App;->sApp:Lcom/s1243808733/aide/application/App;

    .line 44
    invoke-virtual {p0}, Lcom/s1243808733/aide/application/App;->init()V

    return-void
.end method

.method public onLowMemory()V
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 179
    invoke-super {p0}, Landroid/app/Application;->onLowMemory()V

    return-void
.end method

.method public onTerminate()V
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 185
    invoke-super {p0}, Landroid/app/Application;->onTerminate()V

    return-void
.end method

.method public onTrimMemory(I)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 173
    invoke-super {p0, p1}, Landroid/app/Application;->onTrimMemory(I)V

    return-void
.end method