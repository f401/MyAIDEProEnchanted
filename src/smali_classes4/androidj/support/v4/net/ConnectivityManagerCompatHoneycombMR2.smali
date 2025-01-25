.class Landroidj/support/v4/net/ConnectivityManagerCompatHoneycombMR2;
.super Ljava/lang/Object;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xd
.end annotation

.annotation build Landroidj/support/annotation/RequiresApi;
    value = 0xd
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isActiveNetworkMetered(Landroid/net/ConnectivityManager;)Z
    .registers 3

    const/4 v0, 0x1

    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    if-nez v1, :cond_8

    :goto_7
    :pswitch_7  #0x0, 0x2, 0x3, 0x4, 0x5, 0x6
    return v0

    :cond_8
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    packed-switch v1, :pswitch_data_12

    :pswitch_f  #0x8
    goto :goto_7

    :pswitch_10  #0x1, 0x7, 0x9
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
        :pswitch_10  #00000007
        :pswitch_f  #00000008
        :pswitch_10  #00000009
    .end packed-switch
.end method
