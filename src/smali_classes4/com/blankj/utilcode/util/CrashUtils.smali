.class public final Lcom/blankj/utilcode/util/CrashUtils;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/blankj/utilcode/util/CrashUtils$CrashInfo;,
        Lcom/blankj/utilcode/util/CrashUtils$OnCrashListener;
    }
.end annotation


# static fields
.field private static final DEFAULT_UNCAUGHT_EXCEPTION_HANDLER:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private static final FILE_SEP:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "file.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/blankj/utilcode/util/CrashUtils;->FILE_SEP:Ljava/lang/String;

    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    sput-object v0, Lcom/blankj/utilcode/util/CrashUtils;->DEFAULT_UNCAUGHT_EXCEPTION_HANDLER:Ljava/lang/Thread$UncaughtExceptionHandler;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "u can\'t instantiate me..."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic access$100()Ljava/lang/Thread$UncaughtExceptionHandler;
    .registers 1

    sget-object v0, Lcom/blankj/utilcode/util/CrashUtils;->DEFAULT_UNCAUGHT_EXCEPTION_HANDLER:Ljava/lang/Thread$UncaughtExceptionHandler;

    return-object v0
.end method

.method private static getUncaughtExceptionHandler(Ljava/lang/String;Lcom/blankj/utilcode/util/CrashUtils$OnCrashListener;)Ljava/lang/Thread$UncaughtExceptionHandler;
    .registers 3

    new-instance v0, Lcom/blankj/utilcode/util/CrashUtils$1;

    invoke-direct {v0, p1, p0}, Lcom/blankj/utilcode/util/CrashUtils$1;-><init>(Lcom/blankj/utilcode/util/CrashUtils$OnCrashListener;Ljava/lang/String;)V

    return-object v0
.end method

.method public static init()V
    .registers 1

    const-string v0, ""

    invoke-static {v0}, Lcom/blankj/utilcode/util/CrashUtils;->init(Ljava/lang/String;)V

    return-void
.end method

.method public static init(Lcom/blankj/utilcode/util/CrashUtils$OnCrashListener;)V
    .registers 2

    const-string v0, ""

    invoke-static {v0, p0}, Lcom/blankj/utilcode/util/CrashUtils;->init(Ljava/lang/String;Lcom/blankj/utilcode/util/CrashUtils$OnCrashListener;)V

    return-void
.end method

.method public static init(Ljava/io/File;)V
    .registers 3

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/CrashUtils;->init(Ljava/lang/String;Lcom/blankj/utilcode/util/CrashUtils$OnCrashListener;)V

    return-void
.end method

.method public static init(Ljava/io/File;Lcom/blankj/utilcode/util/CrashUtils$OnCrashListener;)V
    .registers 3

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/blankj/utilcode/util/CrashUtils;->init(Ljava/lang/String;Lcom/blankj/utilcode/util/CrashUtils$OnCrashListener;)V

    return-void
.end method

.method public static init(Ljava/lang/String;)V
    .registers 2

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/blankj/utilcode/util/CrashUtils;->init(Ljava/lang/String;Lcom/blankj/utilcode/util/CrashUtils$OnCrashListener;)V

    return-void
.end method

.method public static init(Ljava/lang/String;Lcom/blankj/utilcode/util/CrashUtils$OnCrashListener;)V
    .registers 5

    const/4 v2, 0x0

    invoke-static {p0}, Lcom/blankj/utilcode/util/UtilsBridge;->isSpace(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_66

    invoke-static {}, Lcom/blankj/utilcode/util/UtilsBridge;->isSDCardEnableByEnvironment()Z

    move-result v0

    if-eqz v0, :cond_42

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/Application;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_42

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/app/Application;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/blankj/utilcode/util/CrashUtils;->FILE_SEP:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "crash"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/blankj/utilcode/util/CrashUtils;->FILE_SEP:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_3a
    :goto_3a
    invoke-static {p0, p1}, Lcom/blankj/utilcode/util/CrashUtils;->getUncaughtExceptionHandler(Ljava/lang/String;Lcom/blankj/utilcode/util/CrashUtils$OnCrashListener;)Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    return-void

    :cond_42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/blankj/utilcode/util/CrashUtils;->FILE_SEP:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "crash"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/blankj/utilcode/util/CrashUtils;->FILE_SEP:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_3a

    :cond_66
    sget-object v0, Lcom/blankj/utilcode/util/CrashUtils;->FILE_SEP:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/blankj/utilcode/util/CrashUtils;->FILE_SEP:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_3a
.end method
