.class Lsun/misc/PerformanceLogger$TimeData;
.super Ljava/lang/Object;
.source "PerformanceLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/misc/PerformanceLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TimeData"
.end annotation


# instance fields
.field message:Ljava/lang/String;

.field time:J


# direct methods
.method constructor <init>(Ljava/lang/String;J)V
    .registers 4

    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 156
    iput-object p1, p0, Lsun/misc/PerformanceLogger$TimeData;->message:Ljava/lang/String;

    .line 157
    iput-wide p2, p0, Lsun/misc/PerformanceLogger$TimeData;->time:J

    .line 158
    return-void
.end method


# virtual methods
.method getMessage()Ljava/lang/String;
    .registers 2

    .line 161
    iget-object v0, p0, Lsun/misc/PerformanceLogger$TimeData;->message:Ljava/lang/String;

    return-object v0
.end method

.method getTime()J
    .registers 3

    .line 165
    iget-wide v0, p0, Lsun/misc/PerformanceLogger$TimeData;->time:J

    return-wide v0
.end method
