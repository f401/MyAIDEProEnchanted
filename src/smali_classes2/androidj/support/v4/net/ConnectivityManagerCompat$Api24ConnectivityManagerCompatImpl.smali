.class Landroidj/support/v4/net/ConnectivityManagerCompat$Api24ConnectivityManagerCompatImpl;
.super Landroidj/support/v4/net/ConnectivityManagerCompat$JellyBeanConnectivityManagerCompatImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidj/support/v4/net/ConnectivityManagerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api24ConnectivityManagerCompatImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroidj/support/v4/net/ConnectivityManagerCompat$JellyBeanConnectivityManagerCompatImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public getRestrictBackgroundStatus(Landroid/net/ConnectivityManager;)I
    .registers 3

    invoke-static {p1}, Landroidj/support/v4/net/ConnectivityManagerCompatApi24;->getRestrictBackgroundStatus(Landroid/net/ConnectivityManager;)I

    move-result v0

    return v0
.end method
