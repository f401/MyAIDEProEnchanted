.class public Lokio/ForwardingTimeout;
.super Lokio/Timeout;
.source "ForwardingTimeout.java"


# instance fields
.field private delegate:Lokio/Timeout;


# direct methods
.method public constructor <init>(Lokio/Timeout;)V
    .registers 4

    .line 25
    invoke-direct {p0}, Lokio/Timeout;-><init>()V

    .line 26
    if-eqz p1, :cond_8

    .line 27
    iput-object p1, p0, Lokio/ForwardingTimeout;->delegate:Lokio/Timeout;

    .line 28
    return-void

    .line 26
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "delegate == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public clearDeadline()Lokio/Timeout;
    .registers 2

    .line 66
    iget-object v0, p0, Lokio/ForwardingTimeout;->delegate:Lokio/Timeout;

    invoke-virtual {v0}, Lokio/Timeout;->clearDeadline()Lokio/Timeout;

    move-result-object v0

    return-object v0
.end method

.method public clearTimeout()Lokio/Timeout;
    .registers 2

    .line 62
    iget-object v0, p0, Lokio/ForwardingTimeout;->delegate:Lokio/Timeout;

    invoke-virtual {v0}, Lokio/Timeout;->clearTimeout()Lokio/Timeout;

    move-result-object v0

    return-object v0
.end method

.method public deadlineNanoTime()J
    .registers 3

    .line 54
    iget-object v0, p0, Lokio/ForwardingTimeout;->delegate:Lokio/Timeout;

    invoke-virtual {v0}, Lokio/Timeout;->deadlineNanoTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public deadlineNanoTime(J)Lokio/Timeout;
    .registers 4

    .line 58
    iget-object v0, p0, Lokio/ForwardingTimeout;->delegate:Lokio/Timeout;

    invoke-virtual {v0, p1, p2}, Lokio/Timeout;->deadlineNanoTime(J)Lokio/Timeout;

    move-result-object v0

    return-object v0
.end method

.method public final delegate()Lokio/Timeout;
    .registers 2

    .line 32
    iget-object v0, p0, Lokio/ForwardingTimeout;->delegate:Lokio/Timeout;

    return-object v0
.end method

.method public hasDeadline()Z
    .registers 2

    .line 50
    iget-object v0, p0, Lokio/ForwardingTimeout;->delegate:Lokio/Timeout;

    invoke-virtual {v0}, Lokio/Timeout;->hasDeadline()Z

    move-result v0

    return v0
.end method

.method public final setDelegate(Lokio/Timeout;)Lokio/ForwardingTimeout;
    .registers 4

    .line 36
    if-eqz p1, :cond_5

    .line 37
    iput-object p1, p0, Lokio/ForwardingTimeout;->delegate:Lokio/Timeout;

    .line 38
    return-object p0

    .line 36
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "delegate == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public throwIfReached()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 70
    iget-object v0, p0, Lokio/ForwardingTimeout;->delegate:Lokio/Timeout;

    invoke-virtual {v0}, Lokio/Timeout;->throwIfReached()V

    .line 71
    return-void
.end method

.method public timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;
    .registers 5

    .line 42
    iget-object v0, p0, Lokio/ForwardingTimeout;->delegate:Lokio/Timeout;

    invoke-virtual {v0, p1, p2, p3}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    move-result-object v0

    return-object v0
.end method

.method public timeoutNanos()J
    .registers 3

    .line 46
    iget-object v0, p0, Lokio/ForwardingTimeout;->delegate:Lokio/Timeout;

    invoke-virtual {v0}, Lokio/Timeout;->timeoutNanos()J

    move-result-wide v0

    return-wide v0
.end method
