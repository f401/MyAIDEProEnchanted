.class Lorg/apache/commons/lang3/concurrent/EventCountCircuitBreaker$CheckIntervalData;
.super Ljava/lang/Object;
.source "EventCountCircuitBreaker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/lang3/concurrent/EventCountCircuitBreaker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CheckIntervalData"
.end annotation


# instance fields
.field private final checkIntervalStart:J

.field private final eventCount:I


# direct methods
.method constructor <init>(IJ)V
    .registers 4

    .line 440
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 441
    iput p1, p0, Lorg/apache/commons/lang3/concurrent/EventCountCircuitBreaker$CheckIntervalData;->eventCount:I

    .line 442
    iput-wide p2, p0, Lorg/apache/commons/lang3/concurrent/EventCountCircuitBreaker$CheckIntervalData;->checkIntervalStart:J

    .line 443
    return-void
.end method


# virtual methods
.method public getCheckIntervalStart()J
    .registers 3

    .line 460
    iget-wide v0, p0, Lorg/apache/commons/lang3/concurrent/EventCountCircuitBreaker$CheckIntervalData;->checkIntervalStart:J

    return-wide v0
.end method

.method public getEventCount()I
    .registers 2

    .line 451
    iget v0, p0, Lorg/apache/commons/lang3/concurrent/EventCountCircuitBreaker$CheckIntervalData;->eventCount:I

    return v0
.end method

.method public increment(I)Lorg/apache/commons/lang3/concurrent/EventCountCircuitBreaker$CheckIntervalData;
    .registers 6

    .line 471
    if-nez p1, :cond_3

    :goto_2
    return-object p0

    :cond_3
    invoke-virtual {p0}, Lorg/apache/commons/lang3/concurrent/EventCountCircuitBreaker$CheckIntervalData;->getEventCount()I

    move-result v1

    .line 472
    new-instance v0, Lorg/apache/commons/lang3/concurrent/EventCountCircuitBreaker$CheckIntervalData;

    add-int/2addr v1, p1

    invoke-virtual {p0}, Lorg/apache/commons/lang3/concurrent/EventCountCircuitBreaker$CheckIntervalData;->getCheckIntervalStart()J

    move-result-wide v2

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/commons/lang3/concurrent/EventCountCircuitBreaker$CheckIntervalData;-><init>(IJ)V

    move-object p0, v0

    goto :goto_2
.end method
