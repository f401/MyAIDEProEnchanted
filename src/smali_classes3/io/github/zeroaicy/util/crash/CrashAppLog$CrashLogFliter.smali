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
.field private final this$0:Lio/github/zeroaicy/util/crash/CrashAppLog;


# direct methods
.method public constructor <init>(Lio/github/zeroaicy/util/crash/CrashAppLog;)V
    .registers 2

    .line 244
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/github/zeroaicy/util/crash/CrashAppLog$CrashLogFliter;->this$0:Lio/github/zeroaicy/util/crash/CrashAppLog;

    return-void
.end method

.method static access$0(Lio/github/zeroaicy/util/crash/CrashAppLog$CrashLogFliter;)Lio/github/zeroaicy/util/crash/CrashAppLog;
    .registers 2

    iget-object v0, p0, Lio/github/zeroaicy/util/crash/CrashAppLog$CrashLogFliter;->this$0:Lio/github/zeroaicy/util/crash/CrashAppLog;

    return-object v0
.end method


# virtual methods
.method public accept(Ljava/io/File;)Z
    .registers 4
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 241
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".log"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 242
    const/4 v0, 0x1

    .line 243
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
