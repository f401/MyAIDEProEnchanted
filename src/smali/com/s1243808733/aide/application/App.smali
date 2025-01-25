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
    .registers 0

    .line 45
    invoke-static {}, Lio/github/zeroaicy/util/DebugUtil;->notDebug()V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 42
    invoke-direct {p0}, Lcom/aide/ui/AIDEApplication;-><init>()V

    return-void
.end method

.method public static getApp()Lcom/s1243808733/aide/application/App;
    .registers 1

    .line 61
    sget-object v0, Lcom/s1243808733/aide/application/App;->sApp:Lcom/s1243808733/aide/application/App;

    return-object v0
.end method

.method private initMtj()V
    .registers 3

    .line 135
    const-string v0, "550e1bf115"

    invoke-static {v0}, Lcom/baidu/mobstat/StatService;->setAppKey(Ljava/lang/String;)V

    .line 136
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/baidu/mobstat/StatService;->setDebugOn(Z)V

    .line 137
    const/4 v1, 0x1

    invoke-static {p0, v1, v0}, Lcom/baidu/mobstat/StatService;->autoTrace(Landroid/content/Context;ZZ)V

    return-void
.end method

.method private initUtils()V
    .registers 4

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
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/blankj/utilcode/util/LogUtils$Config;->setLogSwitch(Z)Lcom/blankj/utilcode/util/LogUtils$Config;

    .line 146
    invoke-virtual {v1, v2}, Lcom/blankj/utilcode/util/LogUtils$Config;->setLog2FileSwitch(Z)Lcom/blankj/utilcode/util/LogUtils$Config;

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
    .registers 2

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
    .registers 8

    .line 65
    const-string v0, "functions/runtime/data.json"

    invoke-static {v0}, Lcom/s1243808733/util/Utils;->getAssetsDataFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/ResourceUtils;->readAssets2String(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 66
    const-string v1, "version"

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/blankj/utilcode/util/JsonUtils;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v4

    .line 68
    invoke-static {}, Lcom/s1243808733/util/Utils;->getFunctionDir()Ljava/io/File;

    move-result-object v0

    .line 69
    new-instance v6, Ljava/io/File;

    const-string v7, "runtime/data.json"

    invoke-direct {v6, v0, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v6}, Lcom/blankj/utilcode/util/FileIOUtils;->readFile2String(Ljava/io/File;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_24

    goto :goto_28

    .line 70
    :cond_24
    invoke-static {v6, v1, v2, v3}, Lcom/blankj/utilcode/util/JsonUtils;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v2

    :goto_28
    cmp-long v1, v2, v4

    if-gez v1, :cond_4d

    .line 73
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/runtime"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 74
    invoke-static {v1}, Lcom/blankj/utilcode/util/FileUtils;->deleteAllInDir(Ljava/lang/String;)Z

    .line 75
    const-string v2, "functions/runtime"

    invoke-static {v2}, Lcom/s1243808733/util/Utils;->getAssetsDataFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/blankj/utilcode/util/ResourceUtils;->copyFileFromAssets(Ljava/lang/String;Ljava/lang/String;)Z

    .line 78
    :cond_4d
    new-instance v1, Ljava/io/File;

    const-string v2, "runtime"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v0, Lcom/s1243808733/aide/application/App$1;

    invoke-direct {v0}, Lcom/s1243808733/aide/application/App$1;-><init>()V

    invoke-static {v1, v0}, Lcom/s1243808733/util/FindFile;->find(Ljava/io/File;Ljava/io/FileFilter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_61
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    .line 84
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v3

    invoke-static {v2}, Lcom/s1243808733/util/Utils;->installFunctions([Ljava/lang/String;)V

    goto :goto_61

    :cond_7b
    return-void
.end method

.method private static loadLang()V
    .registers 4

    .line 91
    invoke-static {}, Lcom/s1243808733/util/Utils;->getSp()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "app_language"

    const-string v2, "default"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 92
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    const-string v1, "zh"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2b

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    goto :goto_29

    .line 97
    :cond_1e
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Lcom/s1243808733/util/Utils;->isCN(Ljava/util/Locale;)Z

    move-result v0

    if-eqz v0, :cond_29

    goto :goto_2b

    .line 102
    :cond_29
    :goto_29
    const-string v1, "en"

    :cond_2b
    :goto_2b
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/s1243808733/util/Utils;->getFunctionDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    const-string v3, "lang/current.jar"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "functions/lang/"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".jar"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/s1243808733/util/Utils;->getAssetsDataFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/blankj/utilcode/util/ResourceUtils;->copyFileFromAssets(Ljava/lang/String;Ljava/lang/String;)Z

    .line 104
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    invoke-static {v1}, Lcom/s1243808733/util/Utils;->installFunctions([Ljava/lang/String;)V

    return-void
.end method

.method private useMtj()Z
    .registers 4

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
    .registers 2

    .line 179
    invoke-super {p0, p1}, Lcom/aide/ui/AIDEApplication;->attachBaseContext(Landroid/content/Context;)V

    .line 180
    invoke-static {}, Lio/github/zeroaicy/util/reflect/ReflectPie;->reflectAll()Z

    return-void
.end method

.method protected init()V
    .registers 4

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
    :try_end_1b
    .catchall {:try_start_0 .. :try_end_1b} :catchall_1c

    goto :goto_28

    :catchall_1c
    move-exception v0

    .line 117
    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/s1243808733/util/Toasty;->toast(Ljava/lang/CharSequence;)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 121
    :goto_28
    :try_start_28
    invoke-direct {p0}, Lcom/s1243808733/aide/application/App;->useMtj()Z

    move-result v0

    if-nez v0, :cond_3a

    .line 122
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "disable_mtj"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/blankj/utilcode/util/LogUtils;->i([Ljava/lang/Object;)V

    goto :goto_3f

    .line 124
    :cond_3a
    invoke-direct {p0}, Lcom/s1243808733/aide/application/App;->initMtj()V
    :try_end_3d
    .catchall {:try_start_28 .. :try_end_3d} :catchall_3e

    goto :goto_3f

    :catchall_3e
    move-exception v0

    :goto_3f
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2

    .line 203
    invoke-super {p0, p1}, Lcom/aide/ui/AIDEApplication;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreate()V
    .registers 1

    .line 54
    invoke-super {p0}, Lcom/aide/ui/AIDEApplication;->onCreate()V

    .line 55
    sput-object p0, Lcom/s1243808733/aide/application/App;->sApp:Lcom/s1243808733/aide/application/App;

    .line 56
    invoke-virtual {p0}, Lcom/s1243808733/aide/application/App;->init()V

    return-void
.end method

.method public onLowMemory()V
    .registers 1

    .line 191
    invoke-super {p0}, Lcom/aide/ui/AIDEApplication;->onLowMemory()V

    return-void
.end method

.method public onTerminate()V
    .registers 1

    .line 197
    invoke-super {p0}, Lcom/aide/ui/AIDEApplication;->onTerminate()V

    return-void
.end method

.method public onTrimMemory(I)V
    .registers 2

    .line 185
    invoke-super {p0, p1}, Lcom/aide/ui/AIDEApplication;->onTrimMemory(I)V

    return-void
.end method
