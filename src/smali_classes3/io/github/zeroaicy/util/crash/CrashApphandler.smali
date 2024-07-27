.class public Lio/github/zeroaicy/util/crash/CrashApphandler;
.super Lio/github/zeroaicy/util/crash/CrashAppLog;
.source "CrashApphandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/github/zeroaicy/util/crash/CrashApphandler$ku;
    }
.end annotation


# static fields
.field public static mCrashApphandler:Lio/github/zeroaicy/util/crash/CrashApphandler;


# direct methods
.method static final constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    check-cast v0, Lio/github/zeroaicy/util/crash/CrashApphandler;

    sput-object v0, Lio/github/zeroaicy/util/crash/CrashApphandler;->mCrashApphandler:Lio/github/zeroaicy/util/crash/CrashApphandler;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Lio/github/zeroaicy/util/crash/CrashAppLog;-><init>()V

    return-void
.end method

.method public static getInstance()Lio/github/zeroaicy/util/crash/CrashApphandler;
    .registers 1

    .line 21
    sget-object v0, Lio/github/zeroaicy/util/crash/CrashApphandler;->mCrashApphandler:Lio/github/zeroaicy/util/crash/CrashApphandler;

    if-nez v0, :cond_0

    .line 22
    new-instance v0, Lio/github/zeroaicy/util/crash/CrashApphandler;

    invoke-direct {v0}, Lio/github/zeroaicy/util/crash/CrashApphandler;-><init>()V

    sput-object v0, Lio/github/zeroaicy/util/crash/CrashApphandler;->mCrashApphandler:Lio/github/zeroaicy/util/crash/CrashApphandler;

    .line 23
    :cond_0
    sget-object v0, Lio/github/zeroaicy/util/crash/CrashApphandler;->mCrashApphandler:Lio/github/zeroaicy/util/crash/CrashApphandler;

    return-object v0
.end method


# virtual methods
.method public sendCrashLogToServer(Ljava/io/File;Ljava/io/File;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/io/File;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 31
    const-string v0, "*********"

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v5, "\u6587\u4ef6\u5939:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, " - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
