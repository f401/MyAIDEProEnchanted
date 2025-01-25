.class public Lcom/baidu/android/common/util/InternalDeviceIdApis;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/android/common/util/InternalDeviceIdApis$TargetPackageCuidV270Info;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/Context;)Lcom/baidu/mobstat/bw;
    .registers 1

    invoke-static {p0}, Lcom/baidu/android/common/util/DeviceId;->getCUID(Landroid/content/Context;)Ljava/lang/String;

    invoke-static {p0}, Lcom/baidu/android/common/util/DeviceId;->a(Landroid/content/Context;)Lcom/baidu/android/common/util/DeviceId;

    move-result-object p0

    invoke-virtual {p0}, Lcom/baidu/android/common/util/DeviceId;->a()Lcom/baidu/mobstat/bw;

    move-result-object p0

    return-object p0
.end method

.method public static getSelfC270Ids(Landroid/content/Context;)Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Lcom/baidu/android/common/util/InternalDeviceIdApis;->a(Landroid/content/Context;)Lcom/baidu/mobstat/bw;

    move-result-object p0

    invoke-virtual {p0}, Lcom/baidu/mobstat/bw;->a()Lcom/baidu/mobstat/bw$a;

    move-result-object p0

    if-eqz p0, :cond_f

    invoke-virtual {p0}, Lcom/baidu/mobstat/bw$a;->k()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_f
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getTargetPackageCuid270Info(Landroid/content/Context;Ljava/lang/String;)Lcom/baidu/android/common/util/InternalDeviceIdApis$TargetPackageCuidV270Info;
    .registers 4

    invoke-static {p0}, Lcom/baidu/android/common/util/InternalDeviceIdApis;->a(Landroid/content/Context;)Lcom/baidu/mobstat/bw;

    move-result-object p0

    new-instance v0, Lcom/baidu/android/common/util/InternalDeviceIdApis$TargetPackageCuidV270Info;

    invoke-direct {v0}, Lcom/baidu/android/common/util/InternalDeviceIdApis$TargetPackageCuidV270Info;-><init>()V

    const-string v1, "upc"

    invoke-virtual {p0, p1, v1}, Lcom/baidu/mobstat/bw;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/mobstat/bw$a;

    move-result-object v1

    if-eqz v1, :cond_17

    invoke-virtual {v1}, Lcom/baidu/mobstat/bw$a;->k()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/android/common/util/InternalDeviceIdApis$TargetPackageCuidV270Info;->upcChannelCuid:Ljava/lang/String;

    :cond_17
    const-string v1, "isc"

    invoke-virtual {p0, p1, v1}, Lcom/baidu/mobstat/bw;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/mobstat/bw$a;

    move-result-object p0

    if-eqz p0, :cond_25

    invoke-virtual {p0}, Lcom/baidu/mobstat/bw$a;->k()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/baidu/android/common/util/InternalDeviceIdApis$TargetPackageCuidV270Info;->iscChannelCuid:Ljava/lang/String;

    :cond_25
    return-object v0
.end method
