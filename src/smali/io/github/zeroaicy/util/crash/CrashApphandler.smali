.class public Lio/github/zeroaicy/util/crash/CrashApphandler;
.super Lio/github/zeroaicy/util/crash/CrashAppLog;
.source "CrashApphandler.java"


# static fields
.field public static final CrashActivityKey:Ljava/lang/String; = "crash_log"

.field public static mCrashApphandler:Lio/github/zeroaicy/util/crash/CrashApphandler;


# instance fields
.field public MainHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .line 26
    invoke-direct {p0}, Lio/github/zeroaicy/util/crash/CrashAppLog;-><init>()V

    .line 24
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lio/github/zeroaicy/util/crash/CrashApphandler;->MainHandler:Landroid/os/Handler;

    return-void
.end method

.method public static getInstance()Lio/github/zeroaicy/util/crash/CrashApphandler;
    .registers 1

    .line 29
    sget-object v0, Lio/github/zeroaicy/util/crash/CrashApphandler;->mCrashApphandler:Lio/github/zeroaicy/util/crash/CrashApphandler;

    if-nez v0, :cond_b

    .line 30
    new-instance v0, Lio/github/zeroaicy/util/crash/CrashApphandler;

    invoke-direct {v0}, Lio/github/zeroaicy/util/crash/CrashApphandler;-><init>()V

    sput-object v0, Lio/github/zeroaicy/util/crash/CrashApphandler;->mCrashApphandler:Lio/github/zeroaicy/util/crash/CrashApphandler;

    .line 31
    :cond_b
    sget-object v0, Lio/github/zeroaicy/util/crash/CrashApphandler;->mCrashApphandler:Lio/github/zeroaicy/util/crash/CrashApphandler;

    return-object v0
.end method


# virtual methods
.method public init(Landroid/content/Context;)V
    .registers 2

    .line 65
    invoke-super {p0, p1}, Lio/github/zeroaicy/util/crash/CrashAppLog;->init(Landroid/content/Context;)V

    return-void
.end method

.method public onCreated()V
    .registers 2

    .line 35
    iget-object v0, p0, Lio/github/zeroaicy/util/crash/CrashApphandler;->onCrashListener:Lio/github/zeroaicy/util/crash/CrashAppLog$OnCrashListener;

    if-nez v0, :cond_10

    iget-object v0, p0, Lio/github/zeroaicy/util/crash/CrashApphandler;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_10

    .line 36
    new-instance v0, Lio/github/zeroaicy/util/crash/CrashApphandler$1;

    invoke-direct {v0, p0}, Lio/github/zeroaicy/util/crash/CrashApphandler$1;-><init>(Lio/github/zeroaicy/util/crash/CrashApphandler;)V

    invoke-virtual {p0, v0}, Lio/github/zeroaicy/util/crash/CrashApphandler;->setOnCrashListener(Lio/github/zeroaicy/util/crash/CrashAppLog$OnCrashListener;)V

    :cond_10
    return-void
.end method

.method public sendCrashLogToServer(Ljava/io/File;Ljava/io/File;)V
    .registers 5

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "文件夹:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " - "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "*********"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
