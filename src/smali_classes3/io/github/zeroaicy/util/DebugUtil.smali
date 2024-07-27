.class public Lio/github/zeroaicy/util/DebugUtil;
.super Ljava/lang/Object;
.source "DebugUtil.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static debug()V
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 6
    invoke-static {}, Lio/github/zeroaicy/util/crash/CrashApplication;->CrashInit()V

    .line 7
    const/4 v0, 0x1

    invoke-static {v0}, Lio/github/zeroaicy/util/Log;->SetSystemOut(Z)V

    .line 8
    sget-object v0, Lio/github/zeroaicy/util/FileUtil;->LogCatPath:Ljava/lang/String;

    invoke-static {v0}, Lio/github/zeroaicy/util/Log;->enable(Ljava/lang/String;)V

    return-void
.end method

.method public static notDebug()V
    .registers 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 13
    invoke-static {}, Lio/github/zeroaicy/util/Log;->disable()V

    return-void
.end method
