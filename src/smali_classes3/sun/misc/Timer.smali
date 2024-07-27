.class public Lsun/misc/Timer;
.super Ljava/lang/Object;
.source "Timer.java"


# static fields
.field static timerThread:Lsun/misc/TimerThread;


# instance fields
.field interval:J

.field next:Lsun/misc/Timer;

.field public owner:Lsun/misc/Timeable;

.field regular:Z

.field remainingTime:J

.field sleepUntil:J

.field stopped:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 148
    const/4 v0, 0x0

    sput-object v0, Lsun/misc/Timer;->timerThread:Lsun/misc/TimerThread;

    return-void
.end method

.method public constructor <init>(Lsun/misc/Timeable;J)V
    .registers 8

    const/4 v2, 0x1

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 160
    iput-object p1, p0, Lsun/misc/Timer;->owner:Lsun/misc/Timeable;

    .line 161
    iput-wide p2, p0, Lsun/misc/Timer;->interval:J

    .line 162
    iput-wide p2, p0, Lsun/misc/Timer;->remainingTime:J

    .line 163
    iput-boolean v2, p0, Lsun/misc/Timer;->regular:Z

    .line 164
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lsun/misc/Timer;->sleepUntil:J

    .line 165
    iput-boolean v2, p0, Lsun/misc/Timer;->stopped:Z

    .line 166
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    monitor-enter v1

    .line 167
    :try_start_0
    sget-object v0, Lsun/misc/Timer;->timerThread:Lsun/misc/TimerThread;

    if-nez v0, :cond_0

    .line 168
    new-instance v0, Lsun/misc/TimerThread;

    invoke-direct {v0}, Lsun/misc/TimerThread;-><init>()V

    sput-object v0, Lsun/misc/Timer;->timerThread:Lsun/misc/TimerThread;

    .line 170
    :cond_0
    monitor-exit v1

    .line 171
    return-void

    .line 170
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public cont()V
    .registers 11

    .line 214
    sget-object v1, Lsun/misc/Timer;->timerThread:Lsun/misc/TimerThread;

    monitor-enter v1

    .line 215
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 216
    :try_start_1
    iget-boolean v0, p0, Lsun/misc/Timer;->stopped:Z

    if-eqz v0, :cond_0

    .line 223
    iget-wide v2, p0, Lsun/misc/Timer;->sleepUntil:J

    .line 224
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lsun/misc/Timer;->remainingTime:J

    .line 223
    const-wide/16 v8, 0x1

    add-long/2addr v2, v8

    add-long/2addr v4, v6

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    iput-wide v2, p0, Lsun/misc/Timer;->sleepUntil:J

    .line 225
    invoke-static {p0}, Lsun/misc/TimerThread;->enqueue(Lsun/misc/Timer;)V

    .line 226
    const/4 v0, 0x0

    iput-boolean v0, p0, Lsun/misc/Timer;->stopped:Z

    .line 228
    :cond_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 229
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 230
    return-void

    .line 228
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0

    .line 229
    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method

.method public getInterval()J
    .registers 3

    monitor-enter p0

    .line 256
    :try_start_0
    iget-wide v0, p0, Lsun/misc/Timer;->interval:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getRemainingTime()J
    .registers 3

    monitor-enter p0

    .line 275
    :try_start_0
    iget-wide v0, p0, Lsun/misc/Timer;->remainingTime:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getStopTime()J
    .registers 3

    monitor-enter p0

    .line 249
    :try_start_0
    iget-wide v0, p0, Lsun/misc/Timer;->sleepUntil:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected getTimerThread()Ljava/lang/Thread;
    .registers 2

    .line 319
    sget-object v0, Lsun/misc/TimerThread;->timerThread:Lsun/misc/TimerThread;

    return-object v0
.end method

.method public isStopped()Z
    .registers 2

    monitor-enter p0

    .line 177
    :try_start_0
    iget-boolean v0, p0, Lsun/misc/Timer;->stopped:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public reset()V
    .registers 5

    .line 237
    sget-object v1, Lsun/misc/Timer;->timerThread:Lsun/misc/TimerThread;

    monitor-enter v1

    .line 238
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 239
    :try_start_1
    iget-wide v2, p0, Lsun/misc/Timer;->interval:J

    invoke-virtual {p0, v2, v3}, Lsun/misc/Timer;->setRemainingTime(J)V

    .line 240
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 241
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 242
    return-void

    .line 240
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0

    .line 241
    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method

.method public setInterval(J)V
    .registers 4

    monitor-enter p0

    .line 267
    :try_start_0
    iput-wide p1, p0, Lsun/misc/Timer;->interval:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 268
    monitor-exit p0

    return-void

    .line 266
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setRegular(Z)V
    .registers 3

    monitor-enter p0

    .line 312
    :try_start_0
    iput-boolean p1, p0, Lsun/misc/Timer;->regular:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 313
    monitor-exit p0

    return-void

    .line 311
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setRemainingTime(J)V
    .registers 6

    .line 287
    sget-object v1, Lsun/misc/Timer;->timerThread:Lsun/misc/TimerThread;

    monitor-enter v1

    .line 288
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 289
    :try_start_1
    iget-boolean v0, p0, Lsun/misc/Timer;->stopped:Z

    if-eqz v0, :cond_0

    .line 290
    iput-wide p1, p0, Lsun/misc/Timer;->remainingTime:J

    .line 296
    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 297
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 298
    return-void

    .line 292
    :cond_0
    :try_start_3
    invoke-virtual {p0}, Lsun/misc/Timer;->stop()V

    .line 293
    iput-wide p1, p0, Lsun/misc/Timer;->remainingTime:J

    .line 294
    invoke-virtual {p0}, Lsun/misc/Timer;->cont()V

    goto :goto_0

    .line 296
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0

    .line 297
    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method

.method public stop()V
    .registers 9

    .line 191
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 193
    sget-object v2, Lsun/misc/Timer;->timerThread:Lsun/misc/TimerThread;

    monitor-enter v2

    .line 194
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 195
    :try_start_1
    iget-boolean v3, p0, Lsun/misc/Timer;->stopped:Z

    if-nez v3, :cond_0

    .line 196
    invoke-static {p0}, Lsun/misc/TimerThread;->dequeue(Lsun/misc/Timer;)Z

    .line 197
    const-wide/16 v4, 0x0

    iget-wide v6, p0, Lsun/misc/Timer;->sleepUntil:J

    sub-long/2addr v6, v0

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    iput-wide v4, p0, Lsun/misc/Timer;->remainingTime:J

    .line 198
    iput-wide v0, p0, Lsun/misc/Timer;->sleepUntil:J

    .line 199
    const/4 v0, 0x1

    iput-boolean v0, p0, Lsun/misc/Timer;->stopped:Z

    .line 201
    :cond_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 202
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 203
    return-void

    .line 201
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0

    .line 202
    :catchall_1
    move-exception v0

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method
