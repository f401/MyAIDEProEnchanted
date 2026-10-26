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
.method static constructor <clinit>()V
    .locals 0

    .line 45
    invoke-static {}, Lio/github/zeroaicy/util/DebugUtil;->notDebug()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/aide/ui/AIDEApplication;-><init>()V

    return-void
.end method

.method public static getApp()Lcom/s1243808733/aide/application/App;
    .locals 1

    .line 61
    sget-object v0, Lcom/s1243808733/aide/application/App;->sApp:Lcom/s1243808733/aide/application/App;

    return-object v0
.end method

.method private initMtj()V
    .locals 2

    const/4 v1, 0x0

    .line 135
    const-string v0, "550e1bf115"

    invoke-static {v0}, Lcom/baidu/mobstat/StatService;->setAppKey(Ljava/lang/String;)V

    .line 136
    invoke-static {v1}, Lcom/baidu/mobstat/StatService;->setDebugOn(Z)V

    .line 137
    const/4 v0, 0x1

    invoke-static {p0, v0, v1}, Lcom/baidu/mobstat/StatService;->autoTrace(Landroid/content/Context;ZZ)V

    return-void
.end method

.method private initUtils()V
    .locals 4

    const/4 v3, 0x1

    .line 141
    invoke-static {p0}, Lcom/blankj/utilcode/util/Utils;->init(Landroid/app/Application;)V

    .line 143
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/s1243808733/aide/application/App;->getExternalCacheDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "log"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 144
    invoke-static {}, Lcom/blankj/utilcode/util/LogUtils;->getConfig()Lcom/blankj/utilcode/util/LogUtils$Config;

    move-result-object v1

    .line 145
    invoke-virtual {v1, v3}, Lcom/blankj/utilcode/util/LogUtils$Config;->setLogSwitch(Z)Lcom/blankj/utilcode/util/LogUtils$Config;

    .line 146
    invoke-virtual {v1, v3}, Lcom/blankj/utilcode/util/LogUtils$Config;->setLog2FileSwitch(Z)Lcom/blankj/utilcode/util/LogUtils$Config;

    .line 147
    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Lcom/blankj/utilcode/util/LogUtils$Config;->setSaveDays(I)Lcom/blankj/utilcode/util/LogUtils$Config;

    .line 148
    invoke-virtual {v1, v0}, Lcom/blankj/utilcode/util/LogUtils$Config;->setDir(Ljava/io/File;)Lcom/blankj/utilcode/util/LogUtils$Config;

    .line 150
    new-instance v1, Ljava/io/File;

    const-string v2, "crash"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v0, Lcom/s1243808733/aide/application/App$2;

    invoke-direct {v0, p0}, Lcom/s1243808733/aide/application/App$2;-><init>(Lcom/s1243808733/aide/application/App;)V

    invoke-static {v1, v0}, Lcom/s1243808733/util/CrashUtils;->init(Ljava/io/File;Lcom/s1243808733/util/CrashUtils$OnCrashListener;)V

    return-void
.end method

.method private initX()V
    .locals 1

    .line 164
    invoke-static {p0}, Lorg/xutils/x$Ext;->init(Landroid/app/Application;)V

    .line 165
    const/4 v0, 0x0

    invoke-static {v0}, Lorg/xutils/x$Ext;->setDebug(Z)V

    .line 166
    new-instance v0, Lcom/s1243808733/aide/application/App$3;

    invoke-direct {v0, p0}, Lcom/s1243808733/aide/application/App$3;-><init>(Lcom/s1243808733/aide/application/App;)V

    invoke-static {v0}, Lorg/xutils/x$Ext;->setDefaultHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    return-void
.end method

.method private static loadFunctions()V
    .locals 7

    const-wide/16 v0, 0x0

    .line 65
    const-string v2, "functions/runtime/data.json"

    invoke-static {v2}, Lcom/s1243808733/util/Utils;->getAssetsDataFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/blankj/utilcode/util/ResourceUtils;->readAssets2String(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 66
    const-string v3, "version"

    invoke-static {v2, v3, v0, v1}, Lcom/blankj/utilcode/util/JsonUtils;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v2

    .line 68
    invoke-static {}, Lcom/s1243808733/util/Utils;->getFunctionDir()Ljava/io/File;

    move-result-object v4

    .line 69
    new-instance v5, Ljava/io/File;

    const-string v6, "runtime/data.json"

    invoke-direct {v5, v4, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v5}, Lcom/blankj/utilcode/util/FileIOUtils;->readFile2String(Ljava/io/File;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_1

    .line 70
    :goto_0
    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/runtime"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 74
    invoke-static {v0}, Lcom/blankj/utilcode/util/FileUtils;->deleteAllInDir(Ljava/lang/String;)Z

    .line 75
    const-string v1, "functions/runtime"

    invoke-static {v1}, Lcom/s1243808733/util/Utils;->getAssetsDataFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/blankj/utilcode/util/ResourceUtils;->copyFileFromAssets(Ljava/lang/String;Ljava/lang/String;)Z

    .line 78
    :cond_0
    new-instance v0, Ljava/io/File;

    const-string v1, "runtime"

    invoke-direct {v0, v4, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v1, Lcom/s1243808733/aide/application/App$1;

    invoke-direct {v1}, Lcom/s1243808733/aide/application/App$1;-><init>()V

    invoke-static {v0, v1}, Lcom/s1243808733/util/FindFile;->find(Ljava/io/File;Ljava/io/FileFilter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 84
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v2}, Lcom/s1243808733/util/Utils;->installFunctions([Ljava/lang/String;)V

    goto :goto_1

    .line 70
    :cond_1
    const-string v6, "version"

    invoke-static {v5, v6, v0, v1}, Lcom/blankj/utilcode/util/JsonUtils;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    goto :goto_0

    .line 84
    :cond_2
    return-void
.end method

.method private static loadLang()V
    .locals 4

    .line 91
    invoke-static {}, Lcom/s1243808733/util/Utils;->getSp()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "app_language"

    const-string v2, "default"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 92
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    const-string v0, "zh"

    const-string v2, "zh"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "default"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 102
    :cond_0
    const-string v0, "en"

    :cond_1
    :goto_0
    new-instance v1, Ljava/io/File;

    invoke-static {}, Lcom/s1243808733/util/Utils;->getFunctionDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    const-string v3, "lang/current.jar"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "functions/lang/"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".jar"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/s1243808733/util/Utils;->getAssetsDataFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/blankj/utilcode/util/ResourceUtils;->copyFileFromAssets(Ljava/lang/String;Ljava/lang/String;)Z

    .line 104
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/s1243808733/util/Utils;->installFunctions([Ljava/lang/String;)V

    return-void

    .line 97
    :cond_2
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {v1}, Lcom/s1243808733/util/Utils;->isCN(Ljava/util/Locale;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0
.end method

.method private useMtj()Z
    .locals 3

    .line 131
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/s1243808733/util/Utils;->SDCARD_DATA_DIR:Ljava/io/File;

    const-string v2, "disable_mtj"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/blankj/utilcode/util/FileUtils;->isFileExists(Ljava/io/File;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 0

    .line 179
    invoke-super {p0, p1}, Lcom/aide/ui/AIDEApplication;->attachBaseContext(Landroid/content/Context;)V

    .line 180
    invoke-static {}, Lio/github/zeroaicy/util/reflect/ReflectPie;->reflectAll()Z

    return-void
.end method

.method protected init()V
    .locals 3

    .line 109
    :try_start_0
    invoke-static {p0}, Lcom/s1243808733/util/Utils;->setApp(Landroid/app/Application;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    .line 110
    invoke-static {}, Lcom/s1243808733/aide/application/AppConfigured;->init()V

    .line 111
    invoke-direct {p0}, Lcom/s1243808733/aide/application/App;->initUtils()V

    .line 112
    invoke-direct {p0}, Lcom/s1243808733/aide/application/App;->initX()V

    .line 113
    new-instance v0, Lcom/s1243808733/aide/application/App$MyActivityLifecycleCallbacks;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/s1243808733/aide/application/App$MyActivityLifecycleCallbacks;-><init>(Lcom/s1243808733/aide/application/App;Lcom/s1243808733/aide/application/App$MyActivityLifecycleCallbacks-IA;)V

    invoke-virtual {p0, v0}, Lcom/s1243808733/aide/application/App;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 114
    invoke-static {}, Lcom/s1243808733/aide/application/App;->loadLang()V

    .line 115
    invoke-static {}, Lcom/s1243808733/aide/application/App;->loadFunctions()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    :goto_0
    :try_start_1
    invoke-direct {p0}, Lcom/s1243808733/aide/application/App;->useMtj()Z

    move-result v0

    if-nez v0, :cond_0

    .line 122
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "disable_mtj"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/blankj/utilcode/util/LogUtils;->i([Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 124
    :goto_1
    return-void

    .line 115
    :catchall_0
    move-exception v0

    .line 117
    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/s1243808733/util/Toasty;->toast(Ljava/lang/CharSequence;)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 124
    :cond_0
    :try_start_2
    invoke-direct {p0}, Lcom/s1243808733/aide/application/App;->initMtj()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    goto :goto_1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 203
    invoke-super {p0, p1}, Lcom/aide/ui/AIDEApplication;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreate()V
    .locals 0

    .line 54
    invoke-super {p0}, Lcom/aide/ui/AIDEApplication;->onCreate()V

    .line 55
    sput-object p0, Lcom/s1243808733/aide/application/App;->sApp:Lcom/s1243808733/aide/application/App;

    .line 56
    invoke-virtual {p0}, Lcom/s1243808733/aide/application/App;->init()V

    return-void
.end method

.method public onLowMemory()V
    .locals 0

    .line 191
    invoke-super {p0}, Lcom/aide/ui/AIDEApplication;->onLowMemory()V

    return-void
.end method

.method public onTerminate()V
    .locals 0

    .line 197
    invoke-super {p0}, Lcom/aide/ui/AIDEApplication;->onTerminate()V

    return-void
.end method

.method public onTrimMemory(I)V
    .locals 0

    .line 185
    invoke-super {p0, p1}, Lcom/aide/ui/AIDEApplication;->onTrimMemory(I)V

    return-void
.end method
