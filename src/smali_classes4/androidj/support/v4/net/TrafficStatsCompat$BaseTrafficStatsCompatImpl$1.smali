.class Landroidj/support/v4/net/TrafficStatsCompat$BaseTrafficStatsCompatImpl$1;
.super Ljava/lang/ThreadLocal;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidj/support/v4/net/TrafficStatsCompat$BaseTrafficStatsCompatImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal",
        "<",
        "Landroidj/support/v4/net/TrafficStatsCompat$BaseTrafficStatsCompatImpl$SocketTags;",
        ">;"
    }
.end annotation


# instance fields
.field final this$0:Landroidj/support/v4/net/TrafficStatsCompat$BaseTrafficStatsCompatImpl;


# direct methods
.method constructor <init>(Landroidj/support/v4/net/TrafficStatsCompat$BaseTrafficStatsCompatImpl;)V
    .registers 2

    iput-object p1, p0, Landroidj/support/v4/net/TrafficStatsCompat$BaseTrafficStatsCompatImpl$1;->this$0:Landroidj/support/v4/net/TrafficStatsCompat$BaseTrafficStatsCompatImpl;

    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected initialValue()Landroidj/support/v4/net/TrafficStatsCompat$BaseTrafficStatsCompatImpl$SocketTags;
    .registers 2

    new-instance v0, Landroidj/support/v4/net/TrafficStatsCompat$BaseTrafficStatsCompatImpl$SocketTags;

    invoke-direct {v0}, Landroidj/support/v4/net/TrafficStatsCompat$BaseTrafficStatsCompatImpl$SocketTags;-><init>()V

    return-object v0
.end method

.method protected bridge synthetic initialValue()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Landroidj/support/v4/net/TrafficStatsCompat$BaseTrafficStatsCompatImpl$1;->initialValue()Landroidj/support/v4/net/TrafficStatsCompat$BaseTrafficStatsCompatImpl$SocketTags;

    move-result-object v0

    return-object v0
.end method
