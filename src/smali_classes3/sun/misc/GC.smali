.class public Lsun/misc/GC;
.super Ljava/lang/Object;
.source "GC.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/misc/GC$Daemon;,
        Lsun/misc/GC$LatencyLock;,
        Lsun/misc/GC$LatencyRequest;
    }
.end annotation


# static fields
.field private static final NO_TARGET:J = 0x7fffffffffffffffL

.field private static daemon:Ljava/lang/Thread;

.field private static latencyTarget:J

.field private static lock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v2, 0x0

    .line 52
    const-wide v0, 0x7fffffffffffffffL

    sput-wide v0, Lsun/misc/GC;->latencyTarget:J

    .line 57
    sput-object v2, Lsun/misc/GC;->daemon:Ljava/lang/Thread;

    .line 64
    new-instance v0, Lsun/misc/GC$LatencyLock;

    invoke-direct {v0, v2}, Lsun/misc/GC$LatencyLock;-><init>(Lsun/misc/GC$1;)V

    sput-object v0, Lsun/misc/GC;->lock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Ljava/lang/Object;
    .registers 1

    .line 41
    sget-object v0, Lsun/misc/GC;->lock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$200()J
    .registers 2

    .line 41
    sget-wide v0, Lsun/misc/GC;->latencyTarget:J

    return-wide v0
.end method

.method static synthetic access$302(Ljava/lang/Thread;)Ljava/lang/Thread;
    .registers 1

    .line 41
    sput-object p0, Lsun/misc/GC;->daemon:Ljava/lang/Thread;

    return-object p0
.end method

.method static synthetic access$500(J)V
    .registers 2

    .line 41
    invoke-static {p0, p1}, Lsun/misc/GC;->setLatencyTarget(J)V

    return-void
.end method

.method public static currentLatencyTarget()J
    .registers 4

    .line 280
    sget-wide v0, Lsun/misc/GC;->latencyTarget:J

    .line 281
    const-wide v2, 0x7fffffffffffffffL

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const-wide/16 v0, 0x0

    :cond_0
    return-wide v0
.end method

.method public static native maxObjectInspectionAge()J
.end method

.method public static requestLatency(J)Lsun/misc/GC$LatencyRequest;
    .registers 4

    .line 271
    new-instance v0, Lsun/misc/GC$LatencyRequest;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lsun/misc/GC$LatencyRequest;-><init>(JLsun/misc/GC$1;)V

    return-object v0
.end method

.method private static setLatencyTarget(J)V
    .registers 4

    .line 154
    sput-wide p0, Lsun/misc/GC;->latencyTarget:J

    .line 155
    sget-object v0, Lsun/misc/GC;->daemon:Ljava/lang/Thread;

    if-nez v0, :cond_0

    .line 157
    invoke-static {}, Lsun/misc/GC$Daemon;->create()V

    .line 164
    :goto_0
    return-void

    .line 162
    :cond_0
    sget-object v0, Lsun/misc/GC;->lock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    goto :goto_0
.end method
