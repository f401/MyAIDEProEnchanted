.class Landroidj/support/v4/net/ConnectivityManagerCompat$HoneycombMR2ConnectivityManagerCompatImpl;
.super Landroidj/support/v4/net/ConnectivityManagerCompat$BaseConnectivityManagerCompatImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidj/support/v4/net/ConnectivityManagerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "HoneycombMR2ConnectivityManagerCompatImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidj/support/v4/net/ConnectivityManagerCompat$BaseConnectivityManagerCompatImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public isActiveNetworkMetered(Landroid/net/ConnectivityManager;)Z
    .locals 1

    invoke-static {p1}, Landroidj/support/v4/net/ConnectivityManagerCompatHoneycombMR2;->isActiveNetworkMetered(Landroid/net/ConnectivityManager;)Z

    move-result v0

    return v0
.end method
