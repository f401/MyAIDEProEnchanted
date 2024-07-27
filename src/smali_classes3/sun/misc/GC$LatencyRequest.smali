.class public Lsun/misc/GC$LatencyRequest;
.super Ljava/lang/Object;
.source "GC.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/misc/GC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LatencyRequest"
.end annotation


# static fields
.field private static counter:J

.field private static requests:Ljava/util/SortedSet;


# instance fields
.field private id:J

.field private latency:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 176
    const-wide/16 v0, 0x0

    sput-wide v0, Lsun/misc/GC$LatencyRequest;->counter:J

    .line 179
    const/4 v0, 0x0

    sput-object v0, Lsun/misc/GC$LatencyRequest;->requests:Ljava/util/SortedSet;

    return-void
.end method

.method private constructor <init>(J)V
    .registers 10

    .line 205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 206
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_1

    .line 210
    iput-wide p1, p0, Lsun/misc/GC$LatencyRequest;->latency:J

    .line 211
    invoke-static {}, Lsun/misc/GC;->access$100()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 212
    :try_start_0
    sget-wide v2, Lsun/misc/GC$LatencyRequest;->counter:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    sput-wide v2, Lsun/misc/GC$LatencyRequest;->counter:J

    iput-wide v2, p0, Lsun/misc/GC$LatencyRequest;->id:J

    .line 213
    sget-object v0, Lsun/misc/GC$LatencyRequest;->requests:Ljava/util/SortedSet;

    if-nez v0, :cond_0

    .line 214
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    sput-object v0, Lsun/misc/GC$LatencyRequest;->requests:Ljava/util/SortedSet;

    .line 216
    :cond_0
    sget-object v0, Lsun/misc/GC$LatencyRequest;->requests:Ljava/util/SortedSet;

    invoke-interface {v0, p0}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    .line 217
    invoke-static {}, Lsun/misc/GC$LatencyRequest;->adjustLatencyIfNeeded()V

    .line 218
    monitor-exit v1

    .line 219
    return-void

    .line 218
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 207
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Non-positive latency: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method synthetic constructor <init>(JLsun/misc/GC$1;)V
    .registers 5

    .line 173
    invoke-direct {p0, p1, p2}, Lsun/misc/GC$LatencyRequest;-><init>(J)V

    return-void
.end method

.method private static adjustLatencyIfNeeded()V
    .registers 6

    const-wide v2, 0x7fffffffffffffffL

    .line 185
    sget-object v0, Lsun/misc/GC$LatencyRequest;->requests:Ljava/util/SortedSet;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/SortedSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 186
    :cond_0
    invoke-static {}, Lsun/misc/GC;->access$200()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 187
    invoke-static {v2, v3}, Lsun/misc/GC;->access$500(J)V

    .line 195
    :cond_1
    :goto_0
    return-void

    .line 190
    :cond_2
    sget-object v0, Lsun/misc/GC$LatencyRequest;->requests:Ljava/util/SortedSet;

    invoke-interface {v0}, Ljava/util/SortedSet;->first()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/misc/GC$LatencyRequest;

    .line 191
    iget-wide v2, v0, Lsun/misc/GC$LatencyRequest;->latency:J

    invoke-static {}, Lsun/misc/GC;->access$200()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-eqz v1, :cond_1

    .line 192
    iget-wide v0, v0, Lsun/misc/GC$LatencyRequest;->latency:J

    invoke-static {v0, v1}, Lsun/misc/GC;->access$500(J)V

    goto :goto_0
.end method


# virtual methods
.method public cancel()V
    .registers 7

    const-wide v4, 0x7fffffffffffffffL

    .line 228
    invoke-static {}, Lsun/misc/GC;->access$100()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 229
    :try_start_0
    iget-wide v2, p0, Lsun/misc/GC$LatencyRequest;->latency:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_2

    .line 233
    sget-object v0, Lsun/misc/GC$LatencyRequest;->requests:Ljava/util/SortedSet;

    invoke-interface {v0, p0}, Ljava/util/SortedSet;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 237
    sget-object v0, Lsun/misc/GC$LatencyRequest;->requests:Ljava/util/SortedSet;

    invoke-interface {v0}, Ljava/util/SortedSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    sput-object v0, Lsun/misc/GC$LatencyRequest;->requests:Ljava/util/SortedSet;

    .line 238
    :cond_0
    const-wide v2, 0x7fffffffffffffffL

    iput-wide v2, p0, Lsun/misc/GC$LatencyRequest;->latency:J

    .line 239
    invoke-static {}, Lsun/misc/GC$LatencyRequest;->adjustLatencyIfNeeded()V

    .line 240
    monitor-exit v1

    .line 241
    return-void

    .line 234
    :cond_1
    new-instance v0, Ljava/lang/InternalError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Latency request "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " not found"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v0

    .line 240
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 230
    :cond_2
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Request already cancelled"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
.end method

.method public compareTo(Ljava/lang/Object;)I
    .registers 8

    const-wide/16 v4, 0x0

    .line 244
    check-cast p1, Lsun/misc/GC$LatencyRequest;

    .line 245
    iget-wide v0, p0, Lsun/misc/GC$LatencyRequest;->latency:J

    iget-wide v2, p1, Lsun/misc/GC$LatencyRequest;->latency:J

    sub-long/2addr v0, v2

    .line 246
    cmp-long v2, v0, v4

    if-nez v2, :cond_0

    iget-wide v0, p0, Lsun/misc/GC$LatencyRequest;->id:J

    iget-wide v2, p1, Lsun/misc/GC$LatencyRequest;->id:J

    sub-long/2addr v0, v2

    .line 247
    :cond_0
    cmp-long v2, v0, v4

    if-gez v2, :cond_1

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_1
    cmp-long v0, v0, v4

    if-lez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 251
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lsun/misc/GC$LatencyRequest;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lsun/misc/GC$LatencyRequest;->latency:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lsun/misc/GC$LatencyRequest;->id:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
