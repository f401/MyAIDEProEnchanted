.class final Lcom/google/common/util/concurrent/TimeoutFuture$TimeoutFutureException;
.super Ljava/util/concurrent/TimeoutException;
.source "TimeoutFuture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/TimeoutFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TimeoutFutureException"
.end annotation


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 138
    invoke-direct {p0, p1}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    .line 139
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/google/common/util/concurrent/TimeoutFuture$1;)V
    .registers 3

    .line 136
    invoke-direct {p0, p1}, Lcom/google/common/util/concurrent/TimeoutFuture$TimeoutFutureException;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public fillInStackTrace()Ljava/lang/Throwable;
    .registers 2

    monitor-enter p0

    .line 143
    const/4 v0, 0x0

    :try_start_2
    new-array v0, v0, [Ljava/lang/StackTraceElement;

    invoke-virtual {p0, v0}, Lcom/google/common/util/concurrent/TimeoutFuture$TimeoutFutureException;->setStackTrace([Ljava/lang/StackTraceElement;)V
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_9

    .line 144
    monitor-exit p0

    return-object p0

    .line 142
    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method
