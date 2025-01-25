.class public Lio/github/zeroaicy/util/crash/CrashAppLog$CrashLogFliter;
.super Ljava/lang/Object;
.source "CrashAppLog.java"

# interfaces
.implements Ljava/io/FileFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/github/zeroaicy/util/crash/CrashAppLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CrashLogFliter"
.end annotation


# instance fields
.field final this$0:Lio/github/zeroaicy/util/crash/CrashAppLog;


# direct methods
.method public constructor <init>(Lio/github/zeroaicy/util/crash/CrashAppLog;)V
    .registers 2

    .line 319
    iput-object p1, p0, Lio/github/zeroaicy/util/crash/CrashAppLog$CrashLogFliter;->this$0:Lio/github/zeroaicy/util/crash/CrashAppLog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;)Z
    .registers 3

    .line 322
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, ".log"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_e

    const/4 p1, 0x1

    return p1

    :cond_e
    const/4 p1, 0x0

    return p1
.end method
