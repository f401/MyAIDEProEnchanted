.class public Lio/github/zeroaicy/util/DebugUtil;
.super Ljava/lang/Object;
.source "DebugUtil.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static debug()V
    .registers 1

    .line 9
    const/4 v0, 0x1

    invoke-static {v0}, Lio/github/zeroaicy/util/Log;->SetSystemOut(Z)V

    .line 10
    sget-object v0, Lio/github/zeroaicy/util/FileUtil;->LogCatPath:Ljava/lang/String;

    invoke-static {v0}, Lio/github/zeroaicy/util/Log;->enable(Ljava/lang/String;)V

    .line 11
    invoke-static {}, Lio/github/zeroaicy/util/crash/CrashApplication;->CrashInit()V

    return-void
.end method

.method public static debug(Landroid/content/Context;)V
    .registers 2

    .line 15
    const/4 v0, 0x1

    invoke-static {v0}, Lio/github/zeroaicy/util/Log;->SetSystemOut(Z)V

    .line 16
    sget-object v0, Lio/github/zeroaicy/util/FileUtil;->LogCatPath:Ljava/lang/String;

    invoke-static {v0}, Lio/github/zeroaicy/util/Log;->enable(Ljava/lang/String;)V

    .line 17
    invoke-static {p0}, Lio/github/zeroaicy/util/crash/CrashApplication;->CrashInit(Landroid/content/Context;)V

    return-void
.end method

.method public static notDebug()V
    .registers 0

    .line 23
    invoke-static {}, Lio/github/zeroaicy/util/Log;->disable()V

    return-void
.end method
