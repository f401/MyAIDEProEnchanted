.class Landroidj/support/v4/net/TrafficStatsCompat$BaseTrafficStatsCompatImpl$SocketTags;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidj/support/v4/net/TrafficStatsCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SocketTags"
.end annotation


# instance fields
.field public statsTag:I


# direct methods
.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroidj/support/v4/net/TrafficStatsCompat$BaseTrafficStatsCompatImpl$SocketTags;->statsTag:I

    return-void
.end method
