.class Landroidj/support/v4/net/ConnectivityManagerCompat$BaseConnectivityManagerCompatImpl;
.super Ljava/lang/Object;

# interfaces
.implements Landroidj/support/v4/net/ConnectivityManagerCompat$ConnectivityManagerCompatImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidj/support/v4/net/ConnectivityManagerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BaseConnectivityManagerCompatImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getRestrictBackgroundStatus(Landroid/net/ConnectivityManager;)I
    .registers 3

    const/4 v0, 0x3

    return v0
.end method

.method public isActiveNetworkMetered(Landroid/net/ConnectivityManager;)Z
    .registers 4

    const/4 v0, 0x1

    invoke-virtual {p1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    if-nez v1, :cond_8

    :goto_7
    :pswitch_7  #0x0, 0x2, 0x3, 0x4, 0x5, 0x6
    return v0

    :cond_8
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    packed-switch v1, :pswitch_data_12

    goto :goto_7

    :pswitch_10  #0x1
    const/4 v0, 0x0

    goto :goto_7

    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_7  #00000000
        :pswitch_10  #00000001
        :pswitch_7  #00000002
        :pswitch_7  #00000003
        :pswitch_7  #00000004
        :pswitch_7  #00000005
        :pswitch_7  #00000006
    .end packed-switch
.end method
