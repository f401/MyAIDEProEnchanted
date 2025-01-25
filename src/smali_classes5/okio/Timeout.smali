.class public Lokio/Timeout;
.super Ljava/lang/Object;
.source "Timeout.java"


# static fields
.field public static final NONE:Lokio/Timeout;


# instance fields
.field private deadlineNanoTime:J

.field private hasDeadline:Z

.field private timeoutNanos:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 48
    new-instance v0, Lokio/Timeout$1;

    invoke-direct {v0}, Lokio/Timeout$1;-><init>()V

    sput-object v0, Lokio/Timeout;->NONE:Lokio/Timeout;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    return-void
.end method

.method static minTimeout(JJ)J
    .registers 8

    const-wide/16 v2, 0x0

    .line 231
    cmp-long v0, p0, v2

    if-nez v0, :cond_7

    .line 234
    :cond_6
    :goto_6
    return-wide p2

    .line 232
    :cond_7
    cmp-long v0, p2, v2

    if-nez v0, :cond_d

    move-wide p2, p0

    goto :goto_6

    .line 233
    :cond_d
    cmp-long v0, p0, p2

    if-gez v0, :cond_6

    move-wide p2, p0

    goto :goto_6
.end method


# virtual methods
.method public clearDeadline()Lokio/Timeout;
    .registers 2

    .line 134
    const/4 v0, 0x0

    iput-boolean v0, p0, Lokio/Timeout;->hasDeadline:Z

    .line 135
    return-object p0
.end method

.method public clearTimeout()Lokio/Timeout;
    .registers 3

    .line 128
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lokio/Timeout;->timeoutNanos:J

    .line 129
    return-object p0
.end method

.method public final deadline(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;
    .registers 9

    .line 121
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_1e

    .line 122
    if-eqz p3, :cond_16

    .line 123
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v2

    add-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lokio/Timeout;->deadlineNanoTime(J)Lokio/Timeout;

    move-result-object v0

    return-object v0

    .line 122
    :cond_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unit == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 121
    :cond_1e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "duration <= 0: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public deadlineNanoTime()J
    .registers 3

    .line 104
    iget-boolean v0, p0, Lokio/Timeout;->hasDeadline:Z

    if-eqz v0, :cond_7

    .line 105
    iget-wide v0, p0, Lokio/Timeout;->deadlineNanoTime:J

    return-wide v0

    .line 104
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No deadline"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public deadlineNanoTime(J)Lokio/Timeout;
    .registers 4

    .line 114
    const/4 v0, 0x1

    iput-boolean v0, p0, Lokio/Timeout;->hasDeadline:Z

    .line 115
    iput-wide p1, p0, Lokio/Timeout;->deadlineNanoTime:J

    .line 116
    return-object p0
.end method

.method public hasDeadline()Z
    .registers 2

    .line 94
    iget-boolean v0, p0, Lokio/Timeout;->hasDeadline:Z

    return v0
.end method

.method public throwIfReached()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 144
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_20

    .line 149
    iget-boolean v0, p0, Lokio/Timeout;->hasDeadline:Z

    if-eqz v0, :cond_17

    iget-wide v0, p0, Lokio/Timeout;->deadlineNanoTime:J

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_18

    .line 152
    :cond_17
    return-void

    .line 150
    :cond_18
    new-instance v0, Ljava/io/InterruptedIOException;

    const-string v1, "deadline reached"

    invoke-direct {v0, v1}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 145
    :cond_20
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 146
    new-instance v0, Ljava/io/InterruptedIOException;

    const-string v1, "interrupted"

    invoke-direct {v0, v1}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;
    .registers 7

    .line 81
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_17

    .line 82
    if-eqz p3, :cond_f

    .line 83
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    iput-wide v0, p0, Lokio/Timeout;->timeoutNanos:J

    .line 84
    return-object p0

    .line 82
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unit == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 81
    :cond_17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "timeout < 0: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public timeoutNanos()J
    .registers 3

    .line 89
    iget-wide v0, p0, Lokio/Timeout;->timeoutNanos:J

    return-wide v0
.end method

.method public final waitUntilNotified(Ljava/lang/Object;)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InterruptedIOException;
        }
    .end annotation

    const-wide/32 v8, 0xf4240

    const-wide/16 v0, 0x0

    .line 192
    :try_start_5
    invoke-virtual {p0}, Lokio/Timeout;->hasDeadline()Z

    move-result v4

    .line 193
    invoke-virtual {p0}, Lokio/Timeout;->timeoutNanos()J

    move-result-wide v2

    .line 195
    if-nez v4, :cond_17

    cmp-long v5, v2, v0

    if-nez v5, :cond_17

    .line 196
    invoke-virtual {p1}, Ljava/lang/Object;->wait()V

    .line 227
    :cond_16
    return-void

    .line 202
    :cond_17
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    .line 203
    if-eqz v4, :cond_5f

    cmp-long v5, v2, v0

    if-eqz v5, :cond_5f

    .line 204
    invoke-virtual {p0}, Lokio/Timeout;->deadlineNanoTime()J

    move-result-wide v4

    .line 205
    sub-long/2addr v4, v6

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    .line 214
    :cond_2a
    :goto_2a
    cmp-long v4, v2, v0

    if-lez v4, :cond_43

    .line 215
    const-wide/32 v0, 0xf4240

    div-long v0, v2, v0
    :try_end_33
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_33} :catch_4f

    .line 216
    invoke-static {v0, v1}, Ljava/lang/Long;->signum(J)I

    mul-long v4, v8, v0

    sub-long v4, v2, v4

    long-to-int v4, v4

    :try_start_3b
    invoke-virtual {p1, v0, v1, v4}, Ljava/lang/Object;->wait(JI)V

    .line 217
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    sub-long/2addr v0, v6

    .line 221
    :cond_43
    cmp-long v0, v0, v2

    if-ltz v0, :cond_16

    .line 222
    new-instance v0, Ljava/io/InterruptedIOException;

    const-string v1, "timeout"

    invoke-direct {v0, v1}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4f
    .catch Ljava/lang/InterruptedException; {:try_start_3b .. :try_end_4f} :catch_4f

    .line 224
    :catch_4f
    move-exception v0

    .line 225
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 226
    new-instance v0, Ljava/io/InterruptedIOException;

    const-string v1, "interrupted"

    invoke-direct {v0, v1}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 206
    :cond_5f
    if-eqz v4, :cond_2a

    .line 207
    :try_start_61
    invoke-virtual {p0}, Lokio/Timeout;->deadlineNanoTime()J
    :try_end_64
    .catch Ljava/lang/InterruptedException; {:try_start_61 .. :try_end_64} :catch_4f

    move-result-wide v2

    sub-long/2addr v2, v6

    goto :goto_2a
.end method
