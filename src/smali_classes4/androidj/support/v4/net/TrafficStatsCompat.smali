.class public final Landroidj/support/v4/net/TrafficStatsCompat;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidj/support/v4/net/TrafficStatsCompat$Api24TrafficStatsCompatImpl;,
        Landroidj/support/v4/net/TrafficStatsCompat$BaseTrafficStatsCompatImpl;,
        Landroidj/support/v4/net/TrafficStatsCompat$BaseTrafficStatsCompatImpl$SocketTags;,
        Landroidj/support/v4/net/TrafficStatsCompat$IcsTrafficStatsCompatImpl;,
        Landroidj/support/v4/net/TrafficStatsCompat$TrafficStatsCompatImpl;
    }
.end annotation


# static fields
.field private static final IMPL:Landroidj/support/v4/net/TrafficStatsCompat$TrafficStatsCompatImpl;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-string v0, "N"

    sget-object v1, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    new-instance v0, Landroidj/support/v4/net/TrafficStatsCompat$Api24TrafficStatsCompatImpl;

    invoke-direct {v0}, Landroidj/support/v4/net/TrafficStatsCompat$Api24TrafficStatsCompatImpl;-><init>()V

    sput-object v0, Landroidj/support/v4/net/TrafficStatsCompat;->IMPL:Landroidj/support/v4/net/TrafficStatsCompat$TrafficStatsCompatImpl;

    :goto_11
    return-void

    :cond_12
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_20

    new-instance v0, Landroidj/support/v4/net/TrafficStatsCompat$IcsTrafficStatsCompatImpl;

    invoke-direct {v0}, Landroidj/support/v4/net/TrafficStatsCompat$IcsTrafficStatsCompatImpl;-><init>()V

    sput-object v0, Landroidj/support/v4/net/TrafficStatsCompat;->IMPL:Landroidj/support/v4/net/TrafficStatsCompat$TrafficStatsCompatImpl;

    goto :goto_11

    :cond_20
    new-instance v0, Landroidj/support/v4/net/TrafficStatsCompat$BaseTrafficStatsCompatImpl;

    invoke-direct {v0}, Landroidj/support/v4/net/TrafficStatsCompat$BaseTrafficStatsCompatImpl;-><init>()V

    sput-object v0, Landroidj/support/v4/net/TrafficStatsCompat;->IMPL:Landroidj/support/v4/net/TrafficStatsCompat$TrafficStatsCompatImpl;

    goto :goto_11
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearThreadStatsTag()V
    .registers 1

    sget-object v0, Landroidj/support/v4/net/TrafficStatsCompat;->IMPL:Landroidj/support/v4/net/TrafficStatsCompat$TrafficStatsCompatImpl;

    invoke-interface {v0}, Landroidj/support/v4/net/TrafficStatsCompat$TrafficStatsCompatImpl;->clearThreadStatsTag()V

    return-void
.end method

.method public static getThreadStatsTag()I
    .registers 1

    sget-object v0, Landroidj/support/v4/net/TrafficStatsCompat;->IMPL:Landroidj/support/v4/net/TrafficStatsCompat$TrafficStatsCompatImpl;

    invoke-interface {v0}, Landroidj/support/v4/net/TrafficStatsCompat$TrafficStatsCompatImpl;->getThreadStatsTag()I

    move-result v0

    return v0
.end method

.method public static incrementOperationCount(I)V
    .registers 2

    sget-object v0, Landroidj/support/v4/net/TrafficStatsCompat;->IMPL:Landroidj/support/v4/net/TrafficStatsCompat$TrafficStatsCompatImpl;

    invoke-interface {v0, p0}, Landroidj/support/v4/net/TrafficStatsCompat$TrafficStatsCompatImpl;->incrementOperationCount(I)V

    return-void
.end method

.method public static incrementOperationCount(II)V
    .registers 3

    sget-object v0, Landroidj/support/v4/net/TrafficStatsCompat;->IMPL:Landroidj/support/v4/net/TrafficStatsCompat$TrafficStatsCompatImpl;

    invoke-interface {v0, p0, p1}, Landroidj/support/v4/net/TrafficStatsCompat$TrafficStatsCompatImpl;->incrementOperationCount(II)V

    return-void
.end method

.method public static setThreadStatsTag(I)V
    .registers 2

    sget-object v0, Landroidj/support/v4/net/TrafficStatsCompat;->IMPL:Landroidj/support/v4/net/TrafficStatsCompat$TrafficStatsCompatImpl;

    invoke-interface {v0, p0}, Landroidj/support/v4/net/TrafficStatsCompat$TrafficStatsCompatImpl;->setThreadStatsTag(I)V

    return-void
.end method

.method public static tagDatagramSocket(Ljava/net/DatagramSocket;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    sget-object v0, Landroidj/support/v4/net/TrafficStatsCompat;->IMPL:Landroidj/support/v4/net/TrafficStatsCompat$TrafficStatsCompatImpl;

    invoke-interface {v0, p0}, Landroidj/support/v4/net/TrafficStatsCompat$TrafficStatsCompatImpl;->tagDatagramSocket(Ljava/net/DatagramSocket;)V

    return-void
.end method

.method public static tagSocket(Ljava/net/Socket;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    sget-object v0, Landroidj/support/v4/net/TrafficStatsCompat;->IMPL:Landroidj/support/v4/net/TrafficStatsCompat$TrafficStatsCompatImpl;

    invoke-interface {v0, p0}, Landroidj/support/v4/net/TrafficStatsCompat$TrafficStatsCompatImpl;->tagSocket(Ljava/net/Socket;)V

    return-void
.end method

.method public static untagDatagramSocket(Ljava/net/DatagramSocket;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    sget-object v0, Landroidj/support/v4/net/TrafficStatsCompat;->IMPL:Landroidj/support/v4/net/TrafficStatsCompat$TrafficStatsCompatImpl;

    invoke-interface {v0, p0}, Landroidj/support/v4/net/TrafficStatsCompat$TrafficStatsCompatImpl;->untagDatagramSocket(Ljava/net/DatagramSocket;)V

    return-void
.end method

.method public static untagSocket(Ljava/net/Socket;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    sget-object v0, Landroidj/support/v4/net/TrafficStatsCompat;->IMPL:Landroidj/support/v4/net/TrafficStatsCompat$TrafficStatsCompatImpl;

    invoke-interface {v0, p0}, Landroidj/support/v4/net/TrafficStatsCompat$TrafficStatsCompatImpl;->untagSocket(Ljava/net/Socket;)V

    return-void
.end method
