.class final Lokio/Timeout$1;
.super Lokio/Timeout;
.source "Timeout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokio/Timeout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 48
    invoke-direct {p0}, Lokio/Timeout;-><init>()V

    return-void
.end method


# virtual methods
.method public deadlineNanoTime(J)Lokio/Timeout;
    .registers 3

    .line 54
    return-object p0
.end method

.method public throwIfReached()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 58
    return-void
.end method

.method public timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;
    .registers 4

    .line 50
    return-object p0
.end method
