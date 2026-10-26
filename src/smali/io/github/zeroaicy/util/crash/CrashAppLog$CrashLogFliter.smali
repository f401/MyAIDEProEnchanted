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
    .locals 0

    .line 319
    iput-object p1, p0, Lio/github/zeroaicy/util/crash/CrashAppLog$CrashLogFliter;->this$0:Lio/github/zeroaicy/util/crash/CrashAppLog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;)Z
    .locals 2

    .line 322
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".log"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
