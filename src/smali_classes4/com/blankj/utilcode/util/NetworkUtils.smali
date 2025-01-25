.class public final Lcom/blankj/utilcode/util/NetworkUtils;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/blankj/utilcode/util/NetworkUtils$NetworkChangedReceiver;,
        Lcom/blankj/utilcode/util/NetworkUtils$NetworkChangedReceiver$LazyHolder;,
        Lcom/blankj/utilcode/util/NetworkUtils$NetworkType;,
        Lcom/blankj/utilcode/util/NetworkUtils$OnNetworkStatusChangedListener;,
        Lcom/blankj/utilcode/util/NetworkUtils$WifiScanResults;
    }
.end annotation


# static fields
.field private static final SCAN_PERIOD_MILLIS:J = 0xbb8L

.field private static final SCAN_RESULT_CONSUMERS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/blankj/utilcode/util/Utils$Consumer",
            "<",
            "Lcom/blankj/utilcode/util/NetworkUtils$WifiScanResults;",
            ">;>;"
        }
    .end annotation
.end field

.field private static sPreWifiScanResults:Lcom/blankj/utilcode/util/NetworkUtils$WifiScanResults;

.field private static sScanWifiTimer:Ljava/util/Timer;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    sput-object v0, Lcom/blankj/utilcode/util/NetworkUtils;->SCAN_RESULT_CONSUMERS:Ljava/util/Set;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "u can\'t instantiate me..."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic access$100()Ljava/util/Set;
    .registers 1

    sget-object v0, Lcom/blankj/utilcode/util/NetworkUtils;->SCAN_RESULT_CONSUMERS:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$200()V
    .registers 0

    invoke-static {}, Lcom/blankj/utilcode/util/NetworkUtils;->startScanWifi()V

    return-void
.end method

.method static synthetic access$300()Lcom/blankj/utilcode/util/NetworkUtils$WifiScanResults;
    .registers 1

    sget-object v0, Lcom/blankj/utilcode/util/NetworkUtils;->sPreWifiScanResults:Lcom/blankj/utilcode/util/NetworkUtils$WifiScanResults;

    return-object v0
.end method

.method static synthetic access$302(Lcom/blankj/utilcode/util/NetworkUtils$WifiScanResults;)Lcom/blankj/utilcode/util/NetworkUtils$WifiScanResults;
    .registers 1

    sput-object p0, Lcom/blankj/utilcode/util/NetworkUtils;->sPreWifiScanResults:Lcom/blankj/utilcode/util/NetworkUtils$WifiScanResults;

    return-object p0
.end method

.method static synthetic access$400()V
    .registers 0

    invoke-static {}, Lcom/blankj/utilcode/util/NetworkUtils;->startScanWifiIfEnabled()V

    return-void
.end method

.method static synthetic access$600(Ljava/util/List;Ljava/util/List;)Z
    .registers 3

    invoke-static {p0, p1}, Lcom/blankj/utilcode/util/NetworkUtils;->isSameScanResults(Ljava/util/List;Ljava/util/List;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700()V
    .registers 0

    invoke-static {}, Lcom/blankj/utilcode/util/NetworkUtils;->stopScanWifi()V

    return-void
.end method

.method public static addOnWifiChangedConsumer(Lcom/blankj/utilcode/util/Utils$Consumer;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/blankj/utilcode/util/Utils$Consumer",
            "<",
            "Lcom/blankj/utilcode/util/NetworkUtils$WifiScanResults;",
            ">;)V"
        }
    .end annotation

    if-nez p0, :cond_3

    :goto_2
    return-void

    :cond_3
    new-instance v0, Lcom/blankj/utilcode/util/NetworkUtils$7;

    invoke-direct {v0, p0}, Lcom/blankj/utilcode/util/NetworkUtils$7;-><init>(Lcom/blankj/utilcode/util/Utils$Consumer;)V

    invoke-static {v0}, Lcom/blankj/utilcode/util/UtilsBridge;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_2
.end method

.method private static getActiveNetworkInfo()Landroid/net/NetworkInfo;
    .registers 2

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-nez v0, :cond_10

    const/4 v0, 0x0

    :goto_f
    return-object v0

    :cond_10
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    goto :goto_f
.end method

.method public static getBroadcastIpAddress()Ljava/lang/String;
    .registers 5

    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v2

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    :cond_9
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_46

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/NetworkInterface;

    invoke-virtual {v0}, Ljava/net/NetworkInterface;->isUp()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual {v0}, Ljava/net/NetworkInterface;->isLoopback()Z

    move-result v1

    if-nez v1, :cond_9

    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getInterfaceAddresses()Ljava/util/List;

    move-result-object v3

    const/4 v0, 0x0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    move v1, v0

    :goto_2b
    if-ge v1, v4, :cond_9

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InterfaceAddress;

    invoke-virtual {v0}, Ljava/net/InterfaceAddress;->getBroadcast()Ljava/net/InetAddress;

    move-result-object v0

    if-eqz v0, :cond_3e

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;
    :try_end_3c
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_3c} :catch_42

    move-result-object v0

    :goto_3d
    return-object v0

    :cond_3e
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2b

    :catch_42
    move-exception v0

    invoke-virtual {v0}, Ljava/net/SocketException;->printStackTrace()V

    :cond_46
    const-string v0, ""

    goto :goto_3d
.end method

.method public static getDomainAddress(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    :try_start_0
    invoke-static {p0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;
    :try_end_7
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_7} :catch_9

    move-result-object v0

    :goto_8
    return-object v0

    :catch_9
    move-exception v0

    invoke-virtual {v0}, Ljava/net/UnknownHostException;->printStackTrace()V

    const-string v0, ""

    goto :goto_8
.end method

.method public static getDomainAddressAsync(Ljava/lang/String;Lcom/blankj/utilcode/util/Utils$Consumer;)Lcom/blankj/utilcode/util/Utils$Task;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/blankj/utilcode/util/Utils$Consumer",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/blankj/utilcode/util/Utils$Task",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/blankj/utilcode/util/NetworkUtils$6;

    invoke-direct {v0, p1, p0}, Lcom/blankj/utilcode/util/NetworkUtils$6;-><init>(Lcom/blankj/utilcode/util/Utils$Consumer;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/blankj/utilcode/util/UtilsBridge;->doAsync(Lcom/blankj/utilcode/util/Utils$Task;)Lcom/blankj/utilcode/util/Utils$Task;

    move-result-object v0

    return-object v0
.end method

.method public static getGatewayByWifi()Ljava/lang/String;
    .registers 2

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_11

    const-string v0, ""

    :goto_10
    return-object v0

    :cond_11
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getDhcpInfo()Landroid/net/DhcpInfo;

    move-result-object v0

    iget v0, v0, Landroid/net/DhcpInfo;->gateway:I

    invoke-static {v0}, Landroid/text/format/Formatter;->formatIpAddress(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_10
.end method

.method public static getIPAddress(Z)Ljava/lang/String;
    .registers 6

    const/4 v2, 0x0

    :try_start_1
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v1

    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    :cond_a
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_3b

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/NetworkInterface;

    invoke-virtual {v0}, Ljava/net/NetworkInterface;->isUp()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-virtual {v0}, Ljava/net/NetworkInterface;->isLoopback()Z

    move-result v4

    if-nez v4, :cond_a

    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v0

    :goto_26
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V
    :try_end_33
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_33} :catch_34

    goto :goto_26

    :catch_34
    move-exception v0

    invoke-virtual {v0}, Ljava/net/SocketException;->printStackTrace()V

    :cond_38
    const-string v0, ""

    :goto_3a
    return-object v0

    :cond_3b
    :try_start_3b
    invoke-virtual {v3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_38

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    invoke-virtual {v0}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v1

    if-nez v1, :cond_3f

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-gez v1, :cond_63

    const/4 v1, 0x1

    :goto_5e
    if-eqz p0, :cond_65

    if-eqz v1, :cond_3f

    goto :goto_3a

    :cond_63
    move v1, v2

    goto :goto_5e

    :cond_65
    if-nez v1, :cond_3f

    const/16 v1, 0x25

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-gez v1, :cond_74

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    goto :goto_3a

    :cond_74
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;
    :try_end_7c
    .catch Ljava/net/SocketException; {:try_start_3b .. :try_end_7c} :catch_34

    move-result-object v0

    goto :goto_3a
.end method

.method public static getIPAddressAsync(ZLcom/blankj/utilcode/util/Utils$Consumer;)Lcom/blankj/utilcode/util/Utils$Task;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/blankj/utilcode/util/Utils$Consumer",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/blankj/utilcode/util/Utils$Task",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/blankj/utilcode/util/NetworkUtils$5;

    invoke-direct {v0, p1, p0}, Lcom/blankj/utilcode/util/NetworkUtils$5;-><init>(Lcom/blankj/utilcode/util/Utils$Consumer;Z)V

    invoke-static {v0}, Lcom/blankj/utilcode/util/UtilsBridge;->doAsync(Lcom/blankj/utilcode/util/Utils$Task;)Lcom/blankj/utilcode/util/Utils$Task;

    move-result-object v0

    return-object v0
.end method

.method public static getIpAddressByWifi()Ljava/lang/String;
    .registers 2

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_11

    const-string v0, ""

    :goto_10
    return-object v0

    :cond_11
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getDhcpInfo()Landroid/net/DhcpInfo;

    move-result-object v0

    iget v0, v0, Landroid/net/DhcpInfo;->ipAddress:I

    invoke-static {v0}, Landroid/text/format/Formatter;->formatIpAddress(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_10
.end method

.method public static getMobileDataEnabled()Z
    .registers 5

    const/4 v1, 0x0

    :try_start_1
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    const-string v2, "phone"

    invoke-virtual {v0, v2}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_11

    move v0, v1

    :goto_10
    return v0

    :cond_11
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-lt v2, v3, :cond_1c

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isDataEnabled()Z

    move-result v0

    goto :goto_10

    :cond_1c
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "getDataEnabled"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    if-eqz v2, :cond_3d

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_37} :catch_39

    move-result v0

    goto :goto_10

    :catch_39
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3d
    move v0, v1

    goto :goto_10
.end method

.method public static getNetMaskByWifi()Ljava/lang/String;
    .registers 2

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_11

    const-string v0, ""

    :goto_10
    return-object v0

    :cond_11
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getDhcpInfo()Landroid/net/DhcpInfo;

    move-result-object v0

    iget v0, v0, Landroid/net/DhcpInfo;->netmask:I

    invoke-static {v0}, Landroid/text/format/Formatter;->formatIpAddress(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_10
.end method

.method public static getNetworkOperatorName()Ljava/lang/String;
    .registers 2

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_11

    const-string v0, ""

    :goto_10
    return-object v0

    :cond_11
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v0

    goto :goto_10
.end method

.method public static getNetworkType()Lcom/blankj/utilcode/util/NetworkUtils$NetworkType;
    .registers 3

    invoke-static {}, Lcom/blankj/utilcode/util/NetworkUtils;->isEthernet()Z

    move-result v0

    if-eqz v0, :cond_9

    sget-object v0, Lcom/blankj/utilcode/util/NetworkUtils$NetworkType;->NETWORK_ETHERNET:Lcom/blankj/utilcode/util/NetworkUtils$NetworkType;

    :goto_8
    return-object v0

    :cond_9
    invoke-static {}, Lcom/blankj/utilcode/util/NetworkUtils;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_5d

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_5d

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1f

    sget-object v0, Lcom/blankj/utilcode/util/NetworkUtils$NetworkType;->NETWORK_WIFI:Lcom/blankj/utilcode/util/NetworkUtils$NetworkType;

    goto :goto_8

    :cond_1f
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    if-nez v1, :cond_5a

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v1

    packed-switch v1, :pswitch_data_60

    :pswitch_2c  #0x13
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TD-SCDMA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_48

    const-string v1, "WCDMA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_48

    const-string v1, "CDMA2000"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_57

    :cond_48
    sget-object v0, Lcom/blankj/utilcode/util/NetworkUtils$NetworkType;->NETWORK_3G:Lcom/blankj/utilcode/util/NetworkUtils$NetworkType;

    goto :goto_8

    :pswitch_4b  #0x14
    sget-object v0, Lcom/blankj/utilcode/util/NetworkUtils$NetworkType;->NETWORK_5G:Lcom/blankj/utilcode/util/NetworkUtils$NetworkType;

    goto :goto_8

    :pswitch_4e  #0xd, 0x12
    sget-object v0, Lcom/blankj/utilcode/util/NetworkUtils$NetworkType;->NETWORK_4G:Lcom/blankj/utilcode/util/NetworkUtils$NetworkType;

    goto :goto_8

    :pswitch_51  #0x3, 0x5, 0x6, 0x8, 0x9, 0xa, 0xc, 0xe, 0xf, 0x11
    sget-object v0, Lcom/blankj/utilcode/util/NetworkUtils$NetworkType;->NETWORK_3G:Lcom/blankj/utilcode/util/NetworkUtils$NetworkType;

    goto :goto_8

    :pswitch_54  #0x1, 0x2, 0x4, 0x7, 0xb, 0x10
    sget-object v0, Lcom/blankj/utilcode/util/NetworkUtils$NetworkType;->NETWORK_2G:Lcom/blankj/utilcode/util/NetworkUtils$NetworkType;

    goto :goto_8

    :cond_57
    sget-object v0, Lcom/blankj/utilcode/util/NetworkUtils$NetworkType;->NETWORK_UNKNOWN:Lcom/blankj/utilcode/util/NetworkUtils$NetworkType;

    goto :goto_8

    :cond_5a
    sget-object v0, Lcom/blankj/utilcode/util/NetworkUtils$NetworkType;->NETWORK_UNKNOWN:Lcom/blankj/utilcode/util/NetworkUtils$NetworkType;

    goto :goto_8

    :cond_5d
    sget-object v0, Lcom/blankj/utilcode/util/NetworkUtils$NetworkType;->NETWORK_NO:Lcom/blankj/utilcode/util/NetworkUtils$NetworkType;

    goto :goto_8

    :pswitch_data_60
    .packed-switch 0x1
        :pswitch_54  #00000001
        :pswitch_54  #00000002
        :pswitch_51  #00000003
        :pswitch_54  #00000004
        :pswitch_51  #00000005
        :pswitch_51  #00000006
        :pswitch_54  #00000007
        :pswitch_51  #00000008
        :pswitch_51  #00000009
        :pswitch_51  #0000000a
        :pswitch_54  #0000000b
        :pswitch_51  #0000000c
        :pswitch_4e  #0000000d
        :pswitch_51  #0000000e
        :pswitch_51  #0000000f
        :pswitch_54  #00000010
        :pswitch_51  #00000011
        :pswitch_4e  #00000012
        :pswitch_2c  #00000013
        :pswitch_4b  #00000014
    .end packed-switch
.end method

.method public static getSSID()Ljava/lang/String;
    .registers 4

    const/16 v3, 0x22

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_17

    const-string v0, ""

    :cond_16
    :goto_16
    return-object v0

    :cond_17
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    if-nez v0, :cond_20

    const-string v0, ""

    goto :goto_16

    :cond_20
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2d

    const-string v0, ""

    goto :goto_16

    :cond_2d
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x2

    if-le v1, v2, :cond_16

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_16

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_16

    const/4 v1, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_16
.end method

.method public static getServerAddressByWifi()Ljava/lang/String;
    .registers 2

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_11

    const-string v0, ""

    :goto_10
    return-object v0

    :cond_11
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getDhcpInfo()Landroid/net/DhcpInfo;

    move-result-object v0

    iget v0, v0, Landroid/net/DhcpInfo;->serverAddress:I

    invoke-static {v0}, Landroid/text/format/Formatter;->formatIpAddress(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_10
.end method

.method public static getWifiEnabled()Z
    .registers 2

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_10

    const/4 v0, 0x0

    :goto_f
    return v0

    :cond_10
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    goto :goto_f
.end method

.method public static getWifiScanResult()Lcom/blankj/utilcode/util/NetworkUtils$WifiScanResults;
    .registers 3

    new-instance v1, Lcom/blankj/utilcode/util/NetworkUtils$WifiScanResults;

    invoke-direct {v1}, Lcom/blankj/utilcode/util/NetworkUtils$WifiScanResults;-><init>()V

    invoke-static {}, Lcom/blankj/utilcode/util/NetworkUtils;->getWifiEnabled()Z

    move-result v0

    if-nez v0, :cond_d

    move-object v0, v1

    :goto_c
    return-object v0

    :cond_d
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    const-string v2, "wifi"

    invoke-virtual {v0, v2}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_22

    invoke-virtual {v1, v0}, Lcom/blankj/utilcode/util/NetworkUtils$WifiScanResults;->setAllResults(Ljava/util/List;)V

    :cond_22
    move-object v0, v1

    goto :goto_c
.end method

.method public static is4G()Z
    .registers 2

    invoke-static {}, Lcom/blankj/utilcode/util/NetworkUtils;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_16

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_16

    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public static is5G()Z
    .registers 2

    invoke-static {}, Lcom/blankj/utilcode/util/NetworkUtils;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_16

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v0

    const/16 v1, 0x14

    if-ne v0, v1, :cond_16

    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public static isAvailable()Z
    .registers 1

    invoke-static {}, Lcom/blankj/utilcode/util/NetworkUtils;->isAvailableByDns()Z

    move-result v0

    if-nez v0, :cond_d

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/blankj/utilcode/util/NetworkUtils;->isAvailableByPing(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    :cond_d
    const/4 v0, 0x1

    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public static isAvailableAsync(Lcom/blankj/utilcode/util/Utils$Consumer;)Lcom/blankj/utilcode/util/Utils$Task;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/blankj/utilcode/util/Utils$Consumer",
            "<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lcom/blankj/utilcode/util/Utils$Task",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/blankj/utilcode/util/NetworkUtils$1;

    invoke-direct {v0, p0}, Lcom/blankj/utilcode/util/NetworkUtils$1;-><init>(Lcom/blankj/utilcode/util/Utils$Consumer;)V

    invoke-static {v0}, Lcom/blankj/utilcode/util/UtilsBridge;->doAsync(Lcom/blankj/utilcode/util/Utils$Task;)Lcom/blankj/utilcode/util/Utils$Task;

    move-result-object v0

    return-object v0
.end method

.method public static isAvailableByDns()Z
    .registers 1

    const-string v0, ""

    invoke-static {v0}, Lcom/blankj/utilcode/util/NetworkUtils;->isAvailableByDns(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isAvailableByDns(Ljava/lang/String;)Z
    .registers 3

    const/4 v0, 0x0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_9

    const-string p0, "www.baidu.com"

    :cond_9
    :try_start_9
    invoke-static {p0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_c
    .catch Ljava/net/UnknownHostException; {:try_start_9 .. :try_end_c} :catch_11

    move-result-object v1

    if-eqz v1, :cond_10

    const/4 v0, 0x1

    :cond_10
    :goto_10
    return v0

    :catch_11
    move-exception v1

    invoke-virtual {v1}, Ljava/net/UnknownHostException;->printStackTrace()V

    goto :goto_10
.end method

.method public static isAvailableByDnsAsync(Ljava/lang/String;Lcom/blankj/utilcode/util/Utils$Consumer;)Lcom/blankj/utilcode/util/Utils$Task;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/blankj/utilcode/util/Utils$Consumer",
            "<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lcom/blankj/utilcode/util/Utils$Task;"
        }
    .end annotation

    new-instance v0, Lcom/blankj/utilcode/util/NetworkUtils$3;

    invoke-direct {v0, p1, p0}, Lcom/blankj/utilcode/util/NetworkUtils$3;-><init>(Lcom/blankj/utilcode/util/Utils$Consumer;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/blankj/utilcode/util/UtilsBridge;->doAsync(Lcom/blankj/utilcode/util/Utils$Task;)Lcom/blankj/utilcode/util/Utils$Task;

    move-result-object v0

    return-object v0
.end method

.method public static isAvailableByDnsAsync(Lcom/blankj/utilcode/util/Utils$Consumer;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/blankj/utilcode/util/Utils$Consumer",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const-string v0, ""

    invoke-static {v0, p0}, Lcom/blankj/utilcode/util/NetworkUtils;->isAvailableByDnsAsync(Ljava/lang/String;Lcom/blankj/utilcode/util/Utils$Consumer;)Lcom/blankj/utilcode/util/Utils$Task;

    return-void
.end method

.method public static isAvailableByPing()Z
    .registers 1

    const-string v0, ""

    invoke-static {v0}, Lcom/blankj/utilcode/util/NetworkUtils;->isAvailableByPing(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isAvailableByPing(Ljava/lang/String;)Z
    .registers 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_a

    const-string p0, "223.5.5.5"

    :cond_a
    const-string v2, "ping -c 1 %s"

    new-array v3, v0, [Ljava/lang/Object;

    aput-object p0, v3, v1

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/blankj/utilcode/util/ShellUtils;->execCmd(Ljava/lang/String;Z)Lcom/blankj/utilcode/util/ShellUtils$CommandResult;

    move-result-object v2

    iget v2, v2, Lcom/blankj/utilcode/util/ShellUtils$CommandResult;->result:I

    if-nez v2, :cond_1d

    :goto_1c
    return v0

    :cond_1d
    move v0, v1

    goto :goto_1c
.end method

.method public static isAvailableByPingAsync(Ljava/lang/String;Lcom/blankj/utilcode/util/Utils$Consumer;)Lcom/blankj/utilcode/util/Utils$Task;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/blankj/utilcode/util/Utils$Consumer",
            "<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lcom/blankj/utilcode/util/Utils$Task",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/blankj/utilcode/util/NetworkUtils$2;

    invoke-direct {v0, p1, p0}, Lcom/blankj/utilcode/util/NetworkUtils$2;-><init>(Lcom/blankj/utilcode/util/Utils$Consumer;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/blankj/utilcode/util/UtilsBridge;->doAsync(Lcom/blankj/utilcode/util/Utils$Task;)Lcom/blankj/utilcode/util/Utils$Task;

    move-result-object v0

    return-object v0
.end method

.method public static isAvailableByPingAsync(Lcom/blankj/utilcode/util/Utils$Consumer;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/blankj/utilcode/util/Utils$Consumer",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const-string v0, ""

    invoke-static {v0, p0}, Lcom/blankj/utilcode/util/NetworkUtils;->isAvailableByPingAsync(Ljava/lang/String;Lcom/blankj/utilcode/util/Utils$Consumer;)Lcom/blankj/utilcode/util/Utils$Task;

    return-void
.end method

.method public static isConnected()Z
    .registers 1

    invoke-static {}, Lcom/blankj/utilcode/util/NetworkUtils;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private static isEthernet()Z
    .registers 3

    const/4 v1, 0x0

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    const-string v2, "connectivity"

    invoke-virtual {v0, v2}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-nez v0, :cond_10

    :cond_f
    :goto_f
    return v1

    :cond_10
    const/16 v2, 0x9

    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v0

    if-eqz v0, :cond_f

    sget-object v2, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v0, v2, :cond_26

    sget-object v2, Landroid/net/NetworkInfo$State;->CONNECTING:Landroid/net/NetworkInfo$State;

    if-ne v0, v2, :cond_29

    :cond_26
    const/4 v0, 0x1

    :goto_27
    move v1, v0

    goto :goto_f

    :cond_29
    move v0, v1

    goto :goto_27
.end method

.method public static isMobileData()Z
    .registers 2

    invoke-static {}, Lcom/blankj/utilcode/util/NetworkUtils;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_14

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    if-nez v0, :cond_14

    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public static isRegisteredNetworkStatusChangedListener(Lcom/blankj/utilcode/util/NetworkUtils$OnNetworkStatusChangedListener;)Z
    .registers 2

    invoke-static {}, Lcom/blankj/utilcode/util/NetworkUtils$NetworkChangedReceiver;->access$000()Lcom/blankj/utilcode/util/NetworkUtils$NetworkChangedReceiver;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/blankj/utilcode/util/NetworkUtils$NetworkChangedReceiver;->isRegistered(Lcom/blankj/utilcode/util/NetworkUtils$OnNetworkStatusChangedListener;)Z

    move-result v0

    return v0
.end method

.method private static isSameScanResultContent(Landroid/net/wifi/ScanResult;Landroid/net/wifi/ScanResult;)Z
    .registers 4

    if-eqz p0, :cond_2a

    if-eqz p1, :cond_2a

    iget-object v0, p0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    iget-object v1, p1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/UtilsBridge;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2a

    iget-object v0, p0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    iget-object v1, p1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/UtilsBridge;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2a

    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    iget-object v1, p1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/UtilsBridge;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2a

    iget v0, p0, Landroid/net/wifi/ScanResult;->level:I

    iget v1, p1, Landroid/net/wifi/ScanResult;->level:I

    if-ne v0, v1, :cond_2a

    const/4 v0, 0x1

    :goto_29
    return v0

    :cond_2a
    const/4 v0, 0x0

    goto :goto_29
.end method

.method private static isSameScanResults(Ljava/util/List;Ljava/util/List;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;)Z"
        }
    .end annotation

    const/4 v4, 0x1

    const/4 v3, 0x0

    if-nez p0, :cond_8

    if-nez p1, :cond_8

    move v3, v4

    :cond_7
    :goto_7
    return v3

    :cond_8
    if-eqz p0, :cond_7

    if-eqz p1, :cond_7

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_7

    move v2, v3

    :goto_17
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_33

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/ScanResult;

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/NetworkUtils;->isSameScanResultContent(Landroid/net/wifi/ScanResult;Landroid/net/wifi/ScanResult;)Z

    move-result v0

    if-eqz v0, :cond_7

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_17

    :cond_33
    move v3, v4

    goto :goto_7
.end method

.method public static isWifiAvailable()Z
    .registers 1

    invoke-static {}, Lcom/blankj/utilcode/util/NetworkUtils;->getWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-static {}, Lcom/blankj/utilcode/util/NetworkUtils;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public static isWifiAvailableAsync(Lcom/blankj/utilcode/util/Utils$Consumer;)Lcom/blankj/utilcode/util/Utils$Task;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/blankj/utilcode/util/Utils$Consumer",
            "<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lcom/blankj/utilcode/util/Utils$Task",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/blankj/utilcode/util/NetworkUtils$4;

    invoke-direct {v0, p0}, Lcom/blankj/utilcode/util/NetworkUtils$4;-><init>(Lcom/blankj/utilcode/util/Utils$Consumer;)V

    invoke-static {v0}, Lcom/blankj/utilcode/util/UtilsBridge;->doAsync(Lcom/blankj/utilcode/util/Utils$Task;)Lcom/blankj/utilcode/util/Utils$Task;

    move-result-object v0

    return-object v0
.end method

.method public static isWifiConnected()Z
    .registers 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    const-string v3, "connectivity"

    invoke-virtual {v0, v3}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-nez v0, :cond_11

    :goto_10
    return v2

    :cond_11
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_20

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    if-ne v0, v1, :cond_20

    move v0, v1

    :goto_1e
    move v2, v0

    goto :goto_10

    :cond_20
    move v0, v2

    goto :goto_1e
.end method

.method public static openWirelessSettings()V
    .registers 3

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.WIRELESS_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Application;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static registerNetworkStatusChangedListener(Lcom/blankj/utilcode/util/NetworkUtils$OnNetworkStatusChangedListener;)V
    .registers 2

    invoke-static {}, Lcom/blankj/utilcode/util/NetworkUtils$NetworkChangedReceiver;->access$000()Lcom/blankj/utilcode/util/NetworkUtils$NetworkChangedReceiver;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/blankj/utilcode/util/NetworkUtils$NetworkChangedReceiver;->registerListener(Lcom/blankj/utilcode/util/NetworkUtils$OnNetworkStatusChangedListener;)V

    return-void
.end method

.method public static removeOnWifiChangedConsumer(Lcom/blankj/utilcode/util/Utils$Consumer;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/blankj/utilcode/util/Utils$Consumer",
            "<",
            "Lcom/blankj/utilcode/util/NetworkUtils$WifiScanResults;",
            ">;)V"
        }
    .end annotation

    if-nez p0, :cond_3

    :goto_2
    return-void

    :cond_3
    new-instance v0, Lcom/blankj/utilcode/util/NetworkUtils$9;

    invoke-direct {v0, p0}, Lcom/blankj/utilcode/util/NetworkUtils$9;-><init>(Lcom/blankj/utilcode/util/Utils$Consumer;)V

    invoke-static {v0}, Lcom/blankj/utilcode/util/UtilsBridge;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_2
.end method

.method public static setWifiEnabled(Z)V
    .registers 3

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_f

    :cond_e
    :goto_e
    return-void

    :cond_f
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    if-eq p0, v1, :cond_e

    invoke-virtual {v0, p0}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    goto :goto_e
.end method

.method private static startScanWifi()V
    .registers 6

    new-instance v0, Lcom/blankj/utilcode/util/NetworkUtils$WifiScanResults;

    invoke-direct {v0}, Lcom/blankj/utilcode/util/NetworkUtils$WifiScanResults;-><init>()V

    sput-object v0, Lcom/blankj/utilcode/util/NetworkUtils;->sPreWifiScanResults:Lcom/blankj/utilcode/util/NetworkUtils$WifiScanResults;

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    sput-object v0, Lcom/blankj/utilcode/util/NetworkUtils;->sScanWifiTimer:Ljava/util/Timer;

    new-instance v1, Lcom/blankj/utilcode/util/NetworkUtils$8;

    invoke-direct {v1}, Lcom/blankj/utilcode/util/NetworkUtils$8;-><init>()V

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0xbb8

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    return-void
.end method

.method private static startScanWifiIfEnabled()V
    .registers 2

    invoke-static {}, Lcom/blankj/utilcode/util/NetworkUtils;->getWifiEnabled()Z

    move-result v0

    if-nez v0, :cond_7

    :goto_6
    return-void

    :cond_7
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->startScan()Z

    goto :goto_6
.end method

.method private static stopScanWifi()V
    .registers 1

    sget-object v0, Lcom/blankj/utilcode/util/NetworkUtils;->sScanWifiTimer:Ljava/util/Timer;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    const/4 v0, 0x0

    sput-object v0, Lcom/blankj/utilcode/util/NetworkUtils;->sScanWifiTimer:Ljava/util/Timer;

    :cond_a
    return-void
.end method

.method public static unregisterNetworkStatusChangedListener(Lcom/blankj/utilcode/util/NetworkUtils$OnNetworkStatusChangedListener;)V
    .registers 2

    invoke-static {}, Lcom/blankj/utilcode/util/NetworkUtils$NetworkChangedReceiver;->access$000()Lcom/blankj/utilcode/util/NetworkUtils$NetworkChangedReceiver;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/blankj/utilcode/util/NetworkUtils$NetworkChangedReceiver;->unregisterListener(Lcom/blankj/utilcode/util/NetworkUtils$OnNetworkStatusChangedListener;)V

    return-void
.end method
