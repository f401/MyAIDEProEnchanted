.class public final Lcom/blankj/utilcode/util/DeviceUtils;
.super Ljava/lang/Object;


# static fields
.field private static final KEY_UDID:Ljava/lang/String; = "KEY_UDID"

.field private static volatile udid:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "u can\'t instantiate me..."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getABIs()[Ljava/lang/String;
    .registers 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_b

    sget-object v0, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    :goto_a
    return-object v0

    :cond_b
    sget-object v0, Landroid/os/Build;->CPU_ABI2:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1f

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    sget-object v1, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    aput-object v1, v0, v2

    sget-object v1, Landroid/os/Build;->CPU_ABI2:Ljava/lang/String;

    aput-object v1, v0, v3

    goto :goto_a

    :cond_1f
    new-array v0, v3, [Ljava/lang/String;

    sget-object v1, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    aput-object v1, v0, v2

    goto :goto_a
.end method

.method public static getAndroidID()Ljava/lang/String;
    .registers 2

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "9774d56d682e549c"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    const-string v0, ""

    :cond_18
    :goto_18
    return-object v0

    :cond_19
    if-nez v0, :cond_18

    const-string v0, ""

    goto :goto_18
.end method

.method private static getInetAddress()Ljava/net/InetAddress;
    .registers 5

    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v1

    :cond_4
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_3d

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/NetworkInterface;

    invoke-virtual {v0}, Ljava/net/NetworkInterface;->isUp()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v2

    :cond_1a
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    invoke-virtual {v0}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v3

    if-nez v3, :cond_1a

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x3a

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I
    :try_end_35
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_35} :catch_39

    move-result v3

    if-gez v3, :cond_1a

    :goto_38
    return-object v0

    :catch_39
    move-exception v0

    invoke-virtual {v0}, Ljava/net/SocketException;->printStackTrace()V

    :cond_3d
    const/4 v0, 0x0

    goto :goto_38
.end method

.method public static getMacAddress()Ljava/lang/String;
    .registers 3

    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/String;

    invoke-static {v0}, Lcom/blankj/utilcode/util/DeviceUtils;->getMacAddress([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_13

    invoke-static {}, Lcom/blankj/utilcode/util/DeviceUtils;->getWifiEnabled()Z

    move-result v2

    if-eqz v2, :cond_15

    :cond_13
    move-object v0, v1

    :goto_14
    return-object v0

    :cond_15
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/blankj/utilcode/util/DeviceUtils;->setWifiEnabled(Z)V

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/blankj/utilcode/util/DeviceUtils;->setWifiEnabled(Z)V

    invoke-static {v0}, Lcom/blankj/utilcode/util/DeviceUtils;->getMacAddress([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_14
.end method

.method public static varargs getMacAddress([Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    invoke-static {}, Lcom/blankj/utilcode/util/DeviceUtils;->getMacAddressByNetworkInterface()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/blankj/utilcode/util/DeviceUtils;->isAddressNotInExcepts(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    :cond_a
    :goto_a
    return-object v0

    :cond_b
    invoke-static {}, Lcom/blankj/utilcode/util/DeviceUtils;->getMacAddressByInetAddress()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/blankj/utilcode/util/DeviceUtils;->isAddressNotInExcepts(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_a

    invoke-static {}, Lcom/blankj/utilcode/util/DeviceUtils;->getMacAddressByWifiInfo()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/blankj/utilcode/util/DeviceUtils;->isAddressNotInExcepts(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_a

    invoke-static {}, Lcom/blankj/utilcode/util/DeviceUtils;->getMacAddressByFile()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/blankj/utilcode/util/DeviceUtils;->isAddressNotInExcepts(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_a

    const-string v0, ""

    goto :goto_a
.end method

.method private static getMacAddressByFile()Ljava/lang/String;
    .registers 4

    const/4 v3, 0x0

    const-string v0, "getprop wifi.interface"

    invoke-static {v0, v3}, Lcom/blankj/utilcode/util/UtilsBridge;->execCmd(Ljava/lang/String;Z)Lcom/blankj/utilcode/util/ShellUtils$CommandResult;

    move-result-object v0

    iget v1, v0, Lcom/blankj/utilcode/util/ShellUtils$CommandResult;->result:I

    if-nez v1, :cond_38

    iget-object v0, v0, Lcom/blankj/utilcode/util/ShellUtils$CommandResult;->successMsg:Ljava/lang/String;

    if-eqz v0, :cond_38

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cat /sys/class/net/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/address"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/blankj/utilcode/util/UtilsBridge;->execCmd(Ljava/lang/String;Z)Lcom/blankj/utilcode/util/ShellUtils$CommandResult;

    move-result-object v0

    iget v1, v0, Lcom/blankj/utilcode/util/ShellUtils$CommandResult;->result:I

    if-nez v1, :cond_38

    iget-object v0, v0, Lcom/blankj/utilcode/util/ShellUtils$CommandResult;->successMsg:Ljava/lang/String;

    if-eqz v0, :cond_38

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_38

    :goto_37
    return-object v0

    :cond_38
    const-string v0, "02:00:00:00:00:00"

    goto :goto_37
.end method

.method private static getMacAddressByInetAddress()Ljava/lang/String;
    .registers 8

    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Lcom/blankj/utilcode/util/DeviceUtils;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v1

    if-eqz v1, :cond_46

    invoke-static {v1}, Ljava/net/NetworkInterface;->getByInetAddress(Ljava/net/InetAddress;)Ljava/net/NetworkInterface;

    move-result-object v1

    if-eqz v1, :cond_46

    invoke-virtual {v1}, Ljava/net/NetworkInterface;->getHardwareAddress()[B

    move-result-object v1

    if-eqz v1, :cond_46

    array-length v2, v1

    if-lez v2, :cond_46

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    array-length v3, v1

    :goto_1c
    if-ge v0, v3, :cond_36

    const-string v4, "%02x:"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aget-byte v7, v1, v0

    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1c

    :cond_36
    const/4 v0, 0x0

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_40} :catch_42

    move-result-object v0

    :goto_41
    return-object v0

    :catch_42
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_46
    const-string v0, "02:00:00:00:00:00"

    goto :goto_41
.end method

.method private static getMacAddressByNetworkInterface()Ljava/lang/String;
    .registers 8

    const/4 v1, 0x0

    :try_start_1
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v2

    :cond_5
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_59

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/NetworkInterface;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "wlan0"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getHardwareAddress()[B

    move-result-object v3

    if-eqz v3, :cond_5

    array-length v0, v3

    if-lez v0, :cond_5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    array-length v4, v3

    move v0, v1

    :goto_2f
    if-ge v0, v4, :cond_49

    const-string v1, "%02x:"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aget-byte v7, v3, v0

    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_2f

    :cond_49
    const/4 v0, 0x0

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_53} :catch_55

    move-result-object v0

    :goto_54
    return-object v0

    :catch_55
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_59
    const-string v0, "02:00:00:00:00:00"

    goto :goto_54
.end method

.method private static getMacAddressByWifiInfo()Ljava/lang/String;
    .registers 2

    :try_start_0
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_27

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    if-eqz v0, :cond_27

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1f} :catch_23

    move-result v1

    if-nez v1, :cond_27

    :goto_22
    return-object v0

    :catch_23
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_27
    const-string v0, "02:00:00:00:00:00"

    goto :goto_22
.end method

.method public static getManufacturer()Ljava/lang/String;
    .registers 1

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    return-object v0
.end method

.method public static getModel()Ljava/lang/String;
    .registers 3

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v0, ""

    if-eqz v1, :cond_12

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\s*"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_12
    return-object v0
.end method

.method public static getSDKVersionCode()I
    .registers 1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    return v0
.end method

.method public static getSDKVersionName()Ljava/lang/String;
    .registers 1

    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    return-object v0
.end method

.method private static getUdid(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "-"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_27
    return-object v0

    :cond_28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1}, Ljava/util/UUID;->nameUUIDFromBytes([B)Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "-"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_27
.end method

.method public static getUniqueDeviceId()Ljava/lang/String;
    .registers 2

    const-string v0, ""

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/DeviceUtils;->getUniqueDeviceId(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getUniqueDeviceId(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/blankj/utilcode/util/DeviceUtils;->getUniqueDeviceId(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getUniqueDeviceId(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 5

    if-nez p1, :cond_7

    invoke-static {p0}, Lcom/blankj/utilcode/util/DeviceUtils;->getUniqueDeviceIdReal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_6
    return-object v0

    :cond_7
    sget-object v0, Lcom/blankj/utilcode/util/DeviceUtils;->udid:Ljava/lang/String;

    if-nez v0, :cond_37

    const-class v0, Lcom/blankj/utilcode/util/DeviceUtils;

    monitor-enter v0

    :try_start_e
    sget-object v0, Lcom/blankj/utilcode/util/DeviceUtils;->udid:Ljava/lang/String;

    if-nez v0, :cond_34

    invoke-static {}, Lcom/blankj/utilcode/util/UtilsBridge;->getSpUtils4Utils()Lcom/blankj/utilcode/util/SPUtils;

    move-result-object v0

    const-string v1, "KEY_UDID"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/blankj/utilcode/util/SPUtils;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2c

    sput-object v0, Lcom/blankj/utilcode/util/DeviceUtils;->udid:Ljava/lang/String;

    sget-object v0, Lcom/blankj/utilcode/util/DeviceUtils;->udid:Ljava/lang/String;

    const-class v1, Lcom/blankj/utilcode/util/DeviceUtils;

    monitor-exit v1

    goto :goto_6

    :catchall_27
    move-exception v0

    const-class v1, Lcom/blankj/utilcode/util/DeviceUtils;

    monitor-exit v1
    :try_end_2b
    .catchall {:try_start_e .. :try_end_2b} :catchall_27

    throw v0

    :cond_2c
    :try_start_2c
    invoke-static {p0}, Lcom/blankj/utilcode/util/DeviceUtils;->getUniqueDeviceIdReal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/blankj/utilcode/util/DeviceUtils;

    monitor-exit v1

    goto :goto_6

    :cond_34
    const-class v0, Lcom/blankj/utilcode/util/DeviceUtils;

    monitor-exit v0
    :try_end_37
    .catchall {:try_start_2c .. :try_end_37} :catchall_27

    :cond_37
    sget-object v0, Lcom/blankj/utilcode/util/DeviceUtils;->udid:Ljava/lang/String;

    goto :goto_6
.end method

.method public static getUniqueDeviceId(Z)Ljava/lang/String;
    .registers 2

    const-string v0, ""

    invoke-static {v0, p0}, Lcom/blankj/utilcode/util/DeviceUtils;->getUniqueDeviceId(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getUniqueDeviceIdReal(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    :try_start_0
    invoke-static {}, Lcom/blankj/utilcode/util/DeviceUtils;->getAndroidID()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_20

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/blankj/utilcode/util/DeviceUtils;->saveUdid(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1d} :catch_1f

    move-result-object v0

    :goto_1e
    return-object v0

    :catch_1f
    move-exception v0

    :cond_20
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/DeviceUtils;->saveUdid(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1e
.end method

.method private static getWifiEnabled()Z
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

.method public static isAdbEnabled()Z
    .registers 3

    const/4 v0, 0x0

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "adb_enabled"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_12

    const/4 v0, 0x1

    :cond_12
    return v0
.end method

.method private static varargs isAddressNotInExcepts(Ljava/lang/String;[Ljava/lang/String;)Z
    .registers 6

    const/4 v0, 0x0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    :cond_7
    :goto_7
    return v0

    :cond_8
    const-string v1, "02:00:00:00:00:00"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    if-eqz p1, :cond_15

    array-length v1, p1

    if-nez v1, :cond_17

    :cond_15
    const/4 v0, 0x1

    goto :goto_7

    :cond_17
    array-length v2, p1

    move v1, v0

    :goto_19
    if-ge v1, v2, :cond_15

    aget-object v3, p1, v1

    if-eqz v3, :cond_25

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    :cond_25
    add-int/lit8 v1, v1, 0x1

    goto :goto_19
.end method

.method public static isDevelopmentSettingsEnabled()Z
    .registers 3

    const/4 v0, 0x0

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "development_settings_enabled"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_12

    const/4 v0, 0x1

    :cond_12
    return v0
.end method

.method public static isDeviceRooted()Z
    .registers 7

    const/16 v6, 0xb

    const/4 v0, 0x1

    const/4 v1, 0x0

    move v2, v1

    :goto_5
    if-ge v2, v6, :cond_63

    new-array v3, v6, [Ljava/lang/String;

    const-string v4, "/system/bin/"

    aput-object v4, v3, v1

    const-string v4, "/system/xbin/"

    aput-object v4, v3, v0

    const/4 v4, 0x2

    const-string v5, "/sbin/"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const-string v5, "/system/sd/xbin/"

    aput-object v5, v3, v4

    const/4 v4, 0x4

    const-string v5, "/system/bin/failsafe/"

    aput-object v5, v3, v4

    const/4 v4, 0x5

    const-string v5, "/data/local/xbin/"

    aput-object v5, v3, v4

    const/4 v4, 0x6

    const-string v5, "/data/local/bin/"

    aput-object v5, v3, v4

    const/4 v4, 0x7

    const-string v5, "/data/local/"

    aput-object v5, v3, v4

    const/16 v4, 0x8

    const-string v5, "/system/sbin/"

    aput-object v5, v3, v4

    const/16 v4, 0x9

    const-string v5, "/usr/bin/"

    aput-object v5, v3, v4

    const/16 v4, 0xa

    const-string v5, "/vendor/bin/"

    aput-object v5, v3, v4

    aget-object v3, v3, v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "su"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/io/File;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_60

    :goto_5f
    return v0

    :cond_60
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_63
    move v0, v1

    goto :goto_5f
.end method

.method public static isEmulator()Z
    .registers 4

    const/4 v2, 0x0

    const/4 v1, 0x1

    sget-object v0, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    const-string v3, "generic"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6e

    sget-object v0, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v3, "vbox"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6e

    sget-object v0, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v3, "test-keys"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6e

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v3, "google_sdk"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6e

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v3, "Emulator"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6e

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v3, "Android SDK built for x86"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6e

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v3, "Genymotion"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6e

    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    const-string v3, "generic"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_64

    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v3, "generic"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6e

    :cond_64
    const-string v0, "google_sdk"

    sget-object v3, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_73

    :cond_6e
    move v0, v1

    :goto_6f
    if-eqz v0, :cond_75

    move v0, v1

    :goto_72
    return v0

    :cond_73
    move v0, v2

    goto :goto_6f

    :cond_75
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    const-string v3, "phone"

    invoke-virtual {v0, v3}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_97

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_97

    :goto_89
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v3, "android"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9a

    move v0, v1

    goto :goto_72

    :cond_97
    const-string v0, ""

    goto :goto_89

    :cond_9a
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v3, "tel:123456"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string v3, "android.intent.action.DIAL"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_c0

    move v0, v1

    :goto_bc
    if-eqz v0, :cond_c2

    move v0, v1

    goto :goto_72

    :cond_c0
    move v0, v2

    goto :goto_bc

    :cond_c2
    move v0, v2

    goto :goto_72
.end method

.method public static isSameDevice(Ljava/lang/String;)Z
    .registers 6

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x21

    if-ge v2, v3, :cond_11

    :cond_10
    :goto_10
    return v0

    :cond_11
    sget-object v2, Lcom/blankj/utilcode/util/DeviceUtils;->udid:Ljava/lang/String;

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    move v0, v1

    goto :goto_10

    :cond_1b
    invoke-static {}, Lcom/blankj/utilcode/util/UtilsBridge;->getSpUtils4Utils()Lcom/blankj/utilcode/util/SPUtils;

    move-result-object v2

    const-string v3, "KEY_UDID"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/blankj/utilcode/util/SPUtils;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e

    move v0, v1

    goto :goto_10

    :cond_2e
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x21

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string v3, "1"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5d

    invoke-static {}, Lcom/blankj/utilcode/util/DeviceUtils;->getMacAddress()Ljava/lang/String;

    move-result-object v1

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_10

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    invoke-static {v2, v1}, Lcom/blankj/utilcode/util/DeviceUtils;->getUdid(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_10

    :cond_5d
    const-string v3, "2"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-static {}, Lcom/blankj/utilcode/util/DeviceUtils;->getAndroidID()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_10

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    invoke-static {v2, v1}, Lcom/blankj/utilcode/util/DeviceUtils;->getUdid(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_10
.end method

.method public static isTablet()Z
    .registers 2

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v0, v0, 0xf

    const/4 v1, 0x3

    if-lt v0, v1, :cond_11

    const/4 v0, 0x1

    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method private static saveUdid(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    invoke-static {p0, p1}, Lcom/blankj/utilcode/util/DeviceUtils;->getUdid(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/blankj/utilcode/util/DeviceUtils;->udid:Ljava/lang/String;

    invoke-static {}, Lcom/blankj/utilcode/util/UtilsBridge;->getSpUtils4Utils()Lcom/blankj/utilcode/util/SPUtils;

    move-result-object v0

    const-string v1, "KEY_UDID"

    sget-object v2, Lcom/blankj/utilcode/util/DeviceUtils;->udid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/blankj/utilcode/util/SPUtils;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/blankj/utilcode/util/DeviceUtils;->udid:Ljava/lang/String;

    return-object v0
.end method

.method private static setWifiEnabled(Z)V
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
