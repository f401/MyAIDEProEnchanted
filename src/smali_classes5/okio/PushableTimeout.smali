.class final Lokio/PushableTimeout;
.super Lokio/Timeout;
.source "PushableTimeout.java"


# instance fields
.field private originalDeadlineNanoTime:J

.field private originalHasDeadline:Z

.field private originalTimeoutNanos:J

.field private pushed:Lokio/Timeout;


# direct methods
.method constructor <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Lokio/Timeout;-><init>()V

    return-void
.end method


# virtual methods
.method pop()V
    .registers 5

    .line 48
    iget-object v0, p0, Lokio/PushableTimeout;->pushed:Lokio/Timeout;

    iget-wide v2, p0, Lokio/PushableTimeout;->originalTimeoutNanos:J

    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    .line 50
    iget-boolean v0, p0, Lokio/PushableTimeout;->originalHasDeadline:Z

    if-eqz v0, :cond_15

    .line 51
    iget-object v0, p0, Lokio/PushableTimeout;->pushed:Lokio/Timeout;

    iget-wide v2, p0, Lokio/PushableTimeout;->originalDeadlineNanoTime:J

    invoke-virtual {v0, v2, v3}, Lokio/Timeout;->deadlineNanoTime(J)Lokio/Timeout;

    .line 55
    :goto_14
    return-void

    .line 53
    :cond_15
    iget-object v0, p0, Lokio/PushableTimeout;->pushed:Lokio/Timeout;

    invoke-virtual {v0}, Lokio/Timeout;->clearDeadline()Lokio/Timeout;

    goto :goto_14
.end method

.method push(Lokio/Timeout;)V
    .registers 6

    .line 33
    iput-object p1, p0, Lokio/PushableTimeout;->pushed:Lokio/Timeout;

    .line 34
    invoke-virtual {p1}, Lokio/Timeout;->hasDeadline()Z

    move-result v0

    iput-boolean v0, p0, Lokio/PushableTimeout;->originalHasDeadline:Z

    .line 35
    if-eqz v0, :cond_3b

    invoke-virtual {p1}, Lokio/Timeout;->deadlineNanoTime()J

    move-result-wide v0

    :goto_e
    iput-wide v0, p0, Lokio/PushableTimeout;->originalDeadlineNanoTime:J

    .line 36
    invoke-virtual {p1}, Lokio/Timeout;->timeoutNanos()J

    move-result-wide v0

    iput-wide v0, p0, Lokio/PushableTimeout;->originalTimeoutNanos:J

    .line 38
    invoke-virtual {p0}, Lokio/PushableTimeout;->timeoutNanos()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lokio/PushableTimeout;->minTimeout(JJ)J

    move-result-wide v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    .line 40
    iget-boolean v0, p0, Lokio/PushableTimeout;->originalHasDeadline:Z

    if-eqz v0, :cond_3e

    invoke-virtual {p0}, Lokio/PushableTimeout;->hasDeadline()Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 41
    invoke-virtual {p0}, Lokio/PushableTimeout;->deadlineNanoTime()J

    move-result-wide v0

    iget-wide v2, p0, Lokio/PushableTimeout;->originalDeadlineNanoTime:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lokio/Timeout;->deadlineNanoTime(J)Lokio/Timeout;

    .line 45
    :cond_3a
    :goto_3a
    return-void

    .line 35
    :cond_3b
    const-wide/16 v0, -0x1

    goto :goto_e

    .line 42
    :cond_3e
    invoke-virtual {p0}, Lokio/PushableTimeout;->hasDeadline()Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 43
    invoke-virtual {p0}, Lokio/PushableTimeout;->deadlineNanoTime()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lokio/Timeout;->deadlineNanoTime(J)Lokio/Timeout;

    goto :goto_3a
.end method
