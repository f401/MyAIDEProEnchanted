.class final Lokio/SegmentPool;
.super Ljava/lang/Object;
.source "SegmentPool.java"


# static fields
.field static final MAX_SIZE:J = 0x10000L

.field static byteCount:J

.field static next:Lokio/Segment;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    return-void
.end method

.method static recycle(Lokio/Segment;)V
    .registers 9

    const-wide/16 v6, 0x2000

    .line 52
    iget-object v0, p0, Lokio/Segment;->next:Lokio/Segment;

    if-nez v0, :cond_39

    iget-object v0, p0, Lokio/Segment;->prev:Lokio/Segment;

    if-nez v0, :cond_39

    .line 53
    iget-boolean v0, p0, Lokio/Segment;->shared:Z

    if-eqz v0, :cond_f

    .line 61
    :goto_e
    return-void

    .line 54
    :cond_f
    const-class v0, Lokio/SegmentPool;

    monitor-enter v0

    .line 55
    :try_start_12
    sget-wide v0, Lokio/SegmentPool;->byteCount:J

    add-long v2, v0, v6

    const-wide/32 v4, 0x10000

    cmp-long v2, v2, v4

    if-lez v2, :cond_26

    const-class v0, Lokio/SegmentPool;

    monitor-exit v0

    goto :goto_e

    .line 60
    :catchall_21
    move-exception v0

    const-class v1, Lokio/SegmentPool;

    monitor-exit v1
    :try_end_25
    .catchall {:try_start_12 .. :try_end_25} :catchall_21

    throw v0

    .line 56
    :cond_26
    add-long/2addr v0, v6

    :try_start_27
    sput-wide v0, Lokio/SegmentPool;->byteCount:J

    .line 57
    sget-object v0, Lokio/SegmentPool;->next:Lokio/Segment;

    iput-object v0, p0, Lokio/Segment;->next:Lokio/Segment;

    .line 58
    const/4 v0, 0x0

    iput v0, p0, Lokio/Segment;->limit:I

    const/4 v0, 0x0

    iput v0, p0, Lokio/Segment;->pos:I

    .line 59
    sput-object p0, Lokio/SegmentPool;->next:Lokio/Segment;

    .line 60
    const-class v0, Lokio/SegmentPool;

    monitor-exit v0
    :try_end_38
    .catchall {:try_start_27 .. :try_end_38} :catchall_21

    goto :goto_e

    .line 52
    :cond_39
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method static take()Lokio/Segment;
    .registers 6

    .line 39
    const-class v0, Lokio/SegmentPool;

    monitor-enter v0

    .line 40
    :try_start_3
    sget-object v0, Lokio/SegmentPool;->next:Lokio/Segment;

    if-eqz v0, :cond_19

    .line 41
    iget-object v1, v0, Lokio/Segment;->next:Lokio/Segment;

    sput-object v1, Lokio/SegmentPool;->next:Lokio/Segment;

    .line 43
    const/4 v1, 0x0

    iput-object v1, v0, Lokio/Segment;->next:Lokio/Segment;

    .line 44
    sget-wide v2, Lokio/SegmentPool;->byteCount:J

    const-wide/16 v4, 0x2000

    sub-long/2addr v2, v4

    sput-wide v2, Lokio/SegmentPool;->byteCount:J

    .line 45
    const-class v1, Lokio/SegmentPool;

    monitor-exit v1

    .line 48
    :goto_18
    return-object v0

    .line 47
    :cond_19
    const-class v0, Lokio/SegmentPool;

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_22

    .line 48
    new-instance v0, Lokio/Segment;

    invoke-direct {v0}, Lokio/Segment;-><init>()V

    goto :goto_18

    .line 47
    :catchall_22
    move-exception v0

    :try_start_23
    const-class v1, Lokio/SegmentPool;

    monitor-exit v1
    :try_end_26
    .catchall {:try_start_23 .. :try_end_26} :catchall_22

    throw v0
.end method
