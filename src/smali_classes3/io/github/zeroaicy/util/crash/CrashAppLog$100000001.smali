.class Lio/github/zeroaicy/util/crash/CrashAppLog$100000001;
.super Ljava/lang/Object;
.source "CrashAppLog.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# instance fields
.field private final this$0:Lio/github/zeroaicy/util/crash/CrashAppLog;


# direct methods
.method constructor <init>(Lio/github/zeroaicy/util/crash/CrashAppLog;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/github/zeroaicy/util/crash/CrashAppLog$100000001;->this$0:Lio/github/zeroaicy/util/crash/CrashAppLog;

    return-void
.end method

.method static access$0(Lio/github/zeroaicy/util/crash/CrashAppLog$100000001;)Lio/github/zeroaicy/util/crash/CrashAppLog;
    .registers 2

    iget-object v0, p0, Lio/github/zeroaicy/util/crash/CrashAppLog$100000001;->this$0:Lio/github/zeroaicy/util/crash/CrashAppLog;

    return-object v0
.end method


# virtual methods
.method public compare(Ljava/io/File;Ljava/io/File;)I
    .registers 7
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 224
    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    invoke-virtual {p2}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 225
    const/4 v0, 0x1

    .line 229
    :goto_0
    return v0

    .line 226
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    invoke-virtual {p2}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 227
    const/4 v0, -0x1

    goto :goto_0

    .line 229
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    check-cast p1, Ljava/io/File;

    check-cast p2, Ljava/io/File;

    invoke-virtual {p0, p1, p2}, Lio/github/zeroaicy/util/crash/CrashAppLog$100000001;->compare(Ljava/io/File;Ljava/io/File;)I

    move-result v0

    return v0
.end method
