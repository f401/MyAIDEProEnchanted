.class public Lio/github/zeroaicy/util/crash/CrashApplication;
.super Landroid/app/Application;
.source "CrashApplication.java"


# static fields
.field protected static isDebug:Z = true

.field static mCrashApplication:Landroid/app/Application;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method public static CrashInit()V
    .registers 2

    .line 36
    invoke-static {}, Lio/github/zeroaicy/util/crash/CrashApphandler;->getInstance()Lio/github/zeroaicy/util/crash/CrashApphandler;

    move-result-object v0

    .line 37
    sget-object v1, Lio/github/zeroaicy/util/FileUtil;->CrashLogPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lio/github/zeroaicy/util/crash/CrashApphandler;->setCAHCE_CRASH_LOG(Ljava/lang/String;)V

    .line 38
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lio/github/zeroaicy/util/crash/CrashApphandler;->setLIMIT_LOG_COUNT(I)V

    .line 39
    invoke-virtual {v0}, Lio/github/zeroaicy/util/crash/CrashApphandler;->init()V

    return-void
.end method

.method public static CrashInit(Landroid/content/Context;)V
    .registers 3

    .line 42
    invoke-static {}, Lio/github/zeroaicy/util/crash/CrashApphandler;->getInstance()Lio/github/zeroaicy/util/crash/CrashApphandler;

    move-result-object v0

    .line 43
    sget-object v1, Lio/github/zeroaicy/util/FileUtil;->CrashLogPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lio/github/zeroaicy/util/crash/CrashApphandler;->setCAHCE_CRASH_LOG(Ljava/lang/String;)V

    .line 44
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lio/github/zeroaicy/util/crash/CrashApphandler;->setLIMIT_LOG_COUNT(I)V

    .line 45
    invoke-virtual {v0, p0}, Lio/github/zeroaicy/util/crash/CrashApphandler;->init(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .registers 3

    .line 27
    sget-boolean v0, Lio/github/zeroaicy/util/crash/CrashApplication;->isDebug:Z

    if-eqz v0, :cond_7

    .line 28
    invoke-static {p1}, Lio/github/zeroaicy/util/DebugUtil;->debug(Landroid/content/Context;)V

    .line 30
    :cond_7
    invoke-static {}, Lio/github/zeroaicy/util/crash/CrashApphandler;->getInstance()Lio/github/zeroaicy/util/crash/CrashApphandler;

    move-result-object v0

    invoke-virtual {v0}, Lio/github/zeroaicy/util/crash/CrashApphandler;->onCreated()V

    .line 31
    invoke-super {p0, p1}, Landroid/app/Application;->attachBaseContext(Landroid/content/Context;)V

    return-void
.end method

.method public onCreate()V
    .registers 2

    .line 18
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 20
    sput-object p0, Lio/github/zeroaicy/util/crash/CrashApplication;->mCrashApplication:Landroid/app/Application;

    .line 22
    invoke-static {}, Lio/github/zeroaicy/util/crash/CrashApphandler;->getInstance()Lio/github/zeroaicy/util/crash/CrashApphandler;

    move-result-object v0

    invoke-virtual {v0}, Lio/github/zeroaicy/util/crash/CrashApphandler;->onCreated()V

    return-void
.end method
