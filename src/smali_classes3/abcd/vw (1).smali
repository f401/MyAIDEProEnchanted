.class public Labcd/vw;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Labcd/vw$a;
    }
.end annotation


# direct methods
.method public static DW()Z
    .registers 3

    invoke-static {}, Labcd/vw;->j6()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_24

    invoke-static {}, Labcd/ApplicationUtils;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v2, "connectivity"

    invoke-virtual {v0, v2}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-nez v0, :cond_16

    return v1

    :cond_16
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_23

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_23

    goto :goto_24

    :cond_23
    const/4 v1, 0x0

    :cond_24
    :goto_24
    return v1
.end method

.method private static j6(Landroid/content/Context;Ljava/lang/String;)I
    .registers 4

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result p0

    return p0
.end method

.method public static j6(Labcd/vw$b;)V
    .registers 4

    invoke-static {}, Labcd/vw;->j6()Z

    move-result v0

    if-eqz v0, :cond_1c

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-static {}, Labcd/ApplicationUtils;->getApplication()Landroid/app/Application;

    move-result-object v1

    new-instance v2, Labcd/vw$a;

    invoke-direct {v2, p0}, Labcd/vw$a;-><init>(Labcd/vw$b;)V

    invoke-virtual {v1, v2, v0}, Landroid/app/Application;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_1c
    return-void
.end method

.method public static j6()Z
    .registers 2

    invoke-static {}, Labcd/ApplicationUtils;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "android.permission.ACCESS_NETWORK_STATE"

    invoke-static {v0, v1}, Labcd/vw;->j6(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method
