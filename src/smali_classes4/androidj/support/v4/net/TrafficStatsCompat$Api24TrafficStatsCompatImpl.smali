.class Landroidj/support/v4/net/TrafficStatsCompat$Api24TrafficStatsCompatImpl;
.super Landroidj/support/v4/net/TrafficStatsCompat$IcsTrafficStatsCompatImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidj/support/v4/net/TrafficStatsCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api24TrafficStatsCompatImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroidj/support/v4/net/TrafficStatsCompat$IcsTrafficStatsCompatImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public tagDatagramSocket(Ljava/net/DatagramSocket;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    invoke-static {p1}, Landroidj/support/v4/net/TrafficStatsCompatApi24;->tagDatagramSocket(Ljava/net/DatagramSocket;)V

    return-void
.end method

.method public untagDatagramSocket(Ljava/net/DatagramSocket;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    invoke-static {p1}, Landroidj/support/v4/net/TrafficStatsCompatApi24;->untagDatagramSocket(Ljava/net/DatagramSocket;)V

    return-void
.end method
