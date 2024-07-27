.class public Lio/github/zeroaicy/util/crash/CrashApplication;
.super Landroid/app/Application;
.source "CrashApplication.java"


# static fields
.field protected static isDebug:Z


# instance fields
.field private mCrashApplication:Lio/github/zeroaicy/util/crash/CrashApplication;


# direct methods
.method static final constructor <clinit>()V
    .registers 1

    const/4 v0, 0x1

    sput-boolean v0, Lio/github/zeroaicy/util/crash/CrashApplication;->isDebug:Z

    .line 16
    invoke-static {}, Lio/github/zeroaicy/util/crash/CrashApplication;->CrashInit()V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 40
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method public static CrashInit()V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 30
    invoke-static {}, Lio/github/zeroaicy/util/crash/CrashApphandler;->getInstance()Lio/github/zeroaicy/util/crash/CrashApphandler;

    move-result-object v0

    .line 31
    sget-object v1, Lio/github/zeroaicy/util/FileUtil;->CrashLogPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lio/github/zeroaicy/util/crash/CrashApphandler;->setCAHCE_CRASH_LOG(Ljava/lang/String;)V

    .line 32
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lio/github/zeroaicy/util/crash/CrashApphandler;->setLIMIT_LOG_COUNT(I)V

    .line 33
    invoke-virtual {v0}, Lio/github/zeroaicy/util/crash/CrashApphandler;->init()V

    return-void
.end method

.method public static CrashInit(Landroid/content/Context;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

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
    invoke-virtual {v0, p0}, Lio/github/zeroaicy/util/crash/CrashApphandler;->init(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 20
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 22
    iput-object p0, p0, Lio/github/zeroaicy/util/crash/CrashApplication;->mCrashApplication:Lio/github/zeroaicy/util/crash/CrashApplication;

    .line 23
    invoke-static {}, Lio/github/zeroaicy/util/crash/CrashApplication;->CrashInit()V

    .line 24
    sget-boolean v0, Lio/github/zeroaicy/util/crash/CrashApplication;->isDebug:Z

    if-eqz v0, :cond_0

    .line 25
    invoke-static {}, Lio/github/zeroaicy/util/DebugUtil;->debug()V

    :cond_0
    return-void
.end method
