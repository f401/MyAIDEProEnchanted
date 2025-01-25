.class Lio/github/zeroaicy/util/crash/CrashAppLog$1;
.super Ljava/lang/Object;
.source "CrashAppLog.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/github/zeroaicy/util/crash/CrashAppLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# instance fields
.field final this$0:Lio/github/zeroaicy/util/crash/CrashAppLog;


# direct methods
.method constructor <init>(Lio/github/zeroaicy/util/crash/CrashAppLog;)V
    .registers 2

    .line 303
    iput-object p1, p0, Lio/github/zeroaicy/util/crash/CrashAppLog$1;->this$0:Lio/github/zeroaicy/util/crash/CrashAppLog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/io/File;Ljava/io/File;)I
    .registers 8

    .line 307
    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    invoke-virtual {p2}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-lez v4, :cond_e

    const/4 p1, 0x1

    return p1

    .line 309
    :cond_e
    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    invoke-virtual {p2}, Ljava/io/File;->lastModified()J

    move-result-wide p1

    cmp-long v2, v0, p1

    if-gez v2, :cond_1c

    const/4 p1, -0x1

    return p1

    :cond_1c
    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 303
    check-cast p1, Ljava/io/File;

    check-cast p2, Ljava/io/File;

    invoke-virtual {p0, p1, p2}, Lio/github/zeroaicy/util/crash/CrashAppLog$1;->compare(Ljava/io/File;Ljava/io/File;)I

    move-result p1

    return p1
.end method
