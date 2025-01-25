.class public final Lcom/s1243808733/util/CrashUtils;
.super Ljava/lang/Object;
.source "CrashUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/s1243808733/util/CrashUtils$CrashActiviy;
    }
.end annotation


# static fields
.field public static final DEFAULT_UNCAUGHT_EXCEPTION_HANDLER:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private static final FILE_SEP:Ljava/lang/String;

.field private static useTrex:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 35
    const-string v0, "file.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/s1243808733/util/CrashUtils;->FILE_SEP:Ljava/lang/String;

    .line 37
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    sput-object v0, Lcom/s1243808733/util/CrashUtils;->DEFAULT_UNCAUGHT_EXCEPTION_HANDLER:Ljava/lang/Thread$UncaughtExceptionHandler;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "u can\'t instantiate me..."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static getUncaughtExceptionHandler(Ljava/lang/String;Lcom/s1243808733/util/CrashUtils$OnCrashListener;)Ljava/lang/Thread$UncaughtExceptionHandler;
    .registers 3

    .line 113
    new-instance v0, Lcom/s1243808733/util/CrashUtils$1;

    invoke-direct {v0, p0, p1}, Lcom/s1243808733/util/CrashUtils$1;-><init>(Ljava/lang/String;Lcom/s1243808733/util/CrashUtils$OnCrashListener;)V

    return-object v0
.end method

.method public static init()V
    .registers 1

    .line 50
    const-string v0, ""

    invoke-static {v0}, Lcom/s1243808733/util/CrashUtils;->init(Ljava/lang/String;)V

    return-void
.end method

.method public static init(Lcom/s1243808733/util/CrashUtils$OnCrashListener;)V
    .registers 2

    .line 77
    const-string v0, ""

    invoke-static {v0, p0}, Lcom/s1243808733/util/CrashUtils;->init(Ljava/lang/String;Lcom/s1243808733/util/CrashUtils$OnCrashListener;)V

    return-void
.end method

.method public static init(Ljava/io/File;)V
    .registers 2

    .line 59
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/s1243808733/util/CrashUtils;->init(Ljava/lang/String;Lcom/s1243808733/util/CrashUtils$OnCrashListener;)V

    return-void
.end method

.method public static init(Ljava/io/File;Lcom/s1243808733/util/CrashUtils$OnCrashListener;)V
    .registers 2

    .line 87
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/s1243808733/util/CrashUtils;->init(Ljava/lang/String;Lcom/s1243808733/util/CrashUtils$OnCrashListener;)V

    return-void
.end method

.method public static init(Ljava/lang/String;)V
    .registers 2

    .line 68
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/s1243808733/util/CrashUtils;->init(Ljava/lang/String;Lcom/s1243808733/util/CrashUtils$OnCrashListener;)V

    return-void
.end method

.method public static init(Ljava/lang/String;Lcom/s1243808733/util/CrashUtils$OnCrashListener;)V
    .registers 5

    .line 98
    invoke-static {p0}, Lcom/blankj/utilcode/util/StringUtils;->isSpace(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_59

    .line 99
    invoke-static {}, Lcom/blankj/utilcode/util/SDCardUtils;->isSDCardEnableByEnvironment()Z

    move-result p0

    const-string v0, "crash"

    if-eqz p0, :cond_39

    .line 100
    invoke-static {}, Lcom/s1243808733/util/Utils;->getApp()Landroid/app/Application;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/app/Application;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_39

    .line 101
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/s1243808733/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/Application;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/s1243808733/util/CrashUtils;->FILE_SEP:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_71

    .line 103
    :cond_39
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/s1243808733/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/s1243808733/util/CrashUtils;->FILE_SEP:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_71

    .line 106
    :cond_59
    sget-object v0, Lcom/s1243808733/util/CrashUtils;->FILE_SEP:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_62

    goto :goto_71

    :cond_62
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 108
    :goto_71
    invoke-static {p0, p1}, Lcom/s1243808733/util/CrashUtils;->getUncaughtExceptionHandler(Ljava/lang/String;Lcom/s1243808733/util/CrashUtils$OnCrashListener;)Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    return-void
.end method
