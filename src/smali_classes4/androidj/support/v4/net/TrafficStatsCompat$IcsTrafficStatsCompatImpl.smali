.class Landroidj/support/v4/net/TrafficStatsCompat$IcsTrafficStatsCompatImpl;
.super Ljava/lang/Object;

# interfaces
.implements Landroidj/support/v4/net/TrafficStatsCompat$TrafficStatsCompatImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidj/support/v4/net/TrafficStatsCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "IcsTrafficStatsCompatImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clearThreadStatsTag()V
    .registers 1

    invoke-static {}, Landroidj/support/v4/net/TrafficStatsCompatIcs;->clearThreadStatsTag()V

    return-void
.end method

.method public getThreadStatsTag()I
    .registers 2

    invoke-static {}, Landroidj/support/v4/net/TrafficStatsCompatIcs;->getThreadStatsTag()I

    move-result v0

    return v0
.end method

.method public incrementOperationCount(I)V
    .registers 2

    invoke-static {p1}, Landroidj/support/v4/net/TrafficStatsCompatIcs;->incrementOperationCount(I)V

    return-void
.end method

.method public incrementOperationCount(II)V
    .registers 3

    invoke-static {p1, p2}, Landroidj/support/v4/net/TrafficStatsCompatIcs;->incrementOperationCount(II)V

    return-void
.end method

.method public setThreadStatsTag(I)V
    .registers 2

    invoke-static {p1}, Landroidj/support/v4/net/TrafficStatsCompatIcs;->setThreadStatsTag(I)V

    return-void
.end method

.method public tagDatagramSocket(Ljava/net/DatagramSocket;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    invoke-static {p1}, Landroidj/support/v4/net/TrafficStatsCompatIcs;->tagDatagramSocket(Ljava/net/DatagramSocket;)V

    return-void
.end method

.method public tagSocket(Ljava/net/Socket;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    invoke-static {p1}, Landroidj/support/v4/net/TrafficStatsCompatIcs;->tagSocket(Ljava/net/Socket;)V

    return-void
.end method

.method public untagDatagramSocket(Ljava/net/DatagramSocket;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    invoke-static {p1}, Landroidj/support/v4/net/TrafficStatsCompatIcs;->untagDatagramSocket(Ljava/net/DatagramSocket;)V

    return-void
.end method

.method public untagSocket(Ljava/net/Socket;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    invoke-static {p1}, Landroidj/support/v4/net/TrafficStatsCompatIcs;->untagSocket(Ljava/net/Socket;)V

    return-void
.end method
