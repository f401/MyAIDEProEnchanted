.class final Lokio/AsyncTimeout$Watchdog;
.super Ljava/lang/Thread;
.source "AsyncTimeout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokio/AsyncTimeout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Watchdog"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 2

    .line 304
    const-string v0, "Okio Watchdog"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 305
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lokio/AsyncTimeout$Watchdog;->setDaemon(Z)V

    .line 306
    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 312
    :goto_0
    :try_start_0
    const-class v0, Lokio/AsyncTimeout;

    monitor-enter v0
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_3} :catch_12

    .line 313
    :try_start_3
    invoke-static {}, Lokio/AsyncTimeout;->awaitTimeout()Lokio/AsyncTimeout;

    move-result-object v0

    .line 316
    if-nez v0, :cond_14

    const-class v0, Lokio/AsyncTimeout;

    monitor-exit v0

    goto :goto_0

    .line 324
    :catchall_d
    move-exception v0

    const-class v1, Lokio/AsyncTimeout;

    monitor-exit v1
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_d

    :try_start_11
    throw v0
    :try_end_12
    .catch Ljava/lang/InterruptedException; {:try_start_11 .. :try_end_12} :catch_12

    .line 328
    :catch_12
    move-exception v0

    goto :goto_0

    .line 320
    :cond_14
    :try_start_14
    sget-object v1, Lokio/AsyncTimeout;->head:Lokio/AsyncTimeout;

    if-ne v0, v1, :cond_1f

    .line 321
    const/4 v0, 0x0

    sput-object v0, Lokio/AsyncTimeout;->head:Lokio/AsyncTimeout;

    .line 322
    const-class v0, Lokio/AsyncTimeout;

    monitor-exit v0

    return-void

    .line 324
    :cond_1f
    const-class v1, Lokio/AsyncTimeout;

    monitor-exit v1
    :try_end_22
    .catchall {:try_start_14 .. :try_end_22} :catchall_d

    .line 327
    :try_start_22
    invoke-virtual {v0}, Lokio/AsyncTimeout;->timedOut()V
    :try_end_25
    .catch Ljava/lang/InterruptedException; {:try_start_22 .. :try_end_25} :catch_12

    goto :goto_0
.end method
