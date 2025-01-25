.class public final Lcom/baidu/mobstat/NativeCrashHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Z

.field private static b:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 23
    :try_start_0
    const-string v0, "crash_analysis"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 24
    const/4 v0, 0x1

    sput-boolean v0, Lcom/baidu/mobstat/NativeCrashHandler;->a:Z
    :try_end_8
    .catchall {:try_start_0 .. :try_end_8} :catchall_9

    goto :goto_a

    :catchall_9
    move-exception v0

    :goto_a
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static doNativeCrash()V
    .registers 1

    .line 34
    sget-boolean v0, Lcom/baidu/mobstat/NativeCrashHandler;->a:Z

    if-eqz v0, :cond_9

    .line 36
    :try_start_4
    invoke-static {}, Lcom/baidu/mobstat/NativeCrashHandler;->nativeException()V
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_8

    goto :goto_9

    :catchall_8
    move-exception v0

    :cond_9
    :goto_9
    return-void
.end method

.method public static init(Landroid/content/Context;)V
    .registers 2

    if-nez p0, :cond_3

    return-void

    .line 48
    :cond_3
    sput-object p0, Lcom/baidu/mobstat/NativeCrashHandler;->b:Landroid/content/Context;

    .line 50
    sget-boolean v0, Lcom/baidu/mobstat/NativeCrashHandler;->a:Z

    if-eqz v0, :cond_22

    .line 51
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p0

    .line 53
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 55
    :try_start_19
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/baidu/mobstat/NativeCrashHandler;->nativeInit(Ljava/lang/String;)V
    :try_end_20
    .catchall {:try_start_19 .. :try_end_20} :catchall_21

    goto :goto_22

    :catchall_21
    move-exception p0

    :cond_22
    :goto_22
    return-void
.end method

.method private static native nativeException()V
.end method

.method private static native nativeInit(Ljava/lang/String;)V
.end method

.method private static native nativeProcess(Ljava/lang/String;)V
.end method

.method private static native nativeUnint()V
.end method

.method public static onCrashCallbackFromNative(Ljava/lang/String;)V
    .registers 9

    .line 95
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 96
    invoke-static {}, Lcom/baidu/mobstat/ExceptionAnalysis;->getInstance()Lcom/baidu/mobstat/ExceptionAnalysis;

    move-result-object v0

    sget-object v1, Lcom/baidu/mobstat/NativeCrashHandler;->b:Landroid/content/Context;

    const-string v5, "NativeException"

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v4, p0

    invoke-virtual/range {v0 .. v7}, Lcom/baidu/mobstat/ExceptionAnalysis;->saveCrashInfo(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;II)V

    return-void
.end method

.method public static process(Ljava/lang/String;)V
    .registers 3

    if-eqz p0, :cond_23

    .line 74
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_9

    goto :goto_23

    .line 78
    :cond_9
    sget-boolean v0, Lcom/baidu/mobstat/NativeCrashHandler;->a:Z

    if-eqz v0, :cond_23

    .line 79
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 81
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 83
    :try_start_1e
    invoke-static {p0}, Lcom/baidu/mobstat/NativeCrashHandler;->nativeProcess(Ljava/lang/String;)V
    :try_end_21
    .catchall {:try_start_1e .. :try_end_21} :catchall_22

    goto :goto_23

    :catchall_22
    move-exception p0

    :cond_23
    :goto_23
    return-void
.end method

.method public static uninit()V
    .registers 1

    .line 64
    sget-boolean v0, Lcom/baidu/mobstat/NativeCrashHandler;->a:Z

    if-eqz v0, :cond_9

    .line 66
    :try_start_4
    invoke-static {}, Lcom/baidu/mobstat/NativeCrashHandler;->nativeUnint()V
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_8

    goto :goto_9

    :catchall_8
    move-exception v0

    :cond_9
    :goto_9
    return-void
.end method
