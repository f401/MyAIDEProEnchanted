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
    .registers 2

    invoke-static {p0}, Lcom/baidu/android/common/util/DeviceId;->getCUID(Landroid/content/Context;)Ljava/lang/String;

    invoke-static {p0}, Lcom/baidu/android/common/util/DeviceId;->a(Landroid/content/Context;)Lcom/baidu/android/common/util/DeviceId;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/android/common/util/DeviceId;->a()Lcom/baidu/mobstat/bw;

    move-result-object v0

    return-object v0
.end method

.method public static getSelfC270Ids(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    invoke-static {p0}, Lcom/baidu/android/common/util/InternalDeviceIdApis;->a(Landroid/content/Context;)Lcom/baidu/mobstat/bw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/bw;->a()Lcom/baidu/mobstat/bw$a;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/baidu/mobstat/bw$a;->k()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getTargetPackageCuid270Info(Landroid/content/Context;Ljava/lang/String;)Lcom/baidu/android/common/util/InternalDeviceIdApis$TargetPackageCuidV270Info;
    .registers 5

    invoke-static {p0}, Lcom/baidu/android/common/util/InternalDeviceIdApis;->a(Landroid/content/Context;)Lcom/baidu/mobstat/bw;

    move-result-object v0

    new-instance v1, Lcom/baidu/android/common/util/InternalDeviceIdApis$TargetPackageCuidV270Info;

    invoke-direct {v1}, Lcom/baidu/android/common/util/InternalDeviceIdApis$TargetPackageCuidV270Info;-><init>()V

    const-string v2, "upc"

    invoke-virtual {v0, p1, v2}, Lcom/baidu/mobstat/bw;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/mobstat/bw$a;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/baidu/mobstat/bw$a;->k()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/baidu/android/common/util/InternalDeviceIdApis$TargetPackageCuidV270Info;->upcChannelCuid:Ljava/lang/String;

    :cond_0
    const-string v2, "isc"

    invoke-virtual {v0, p1, v2}, Lcom/baidu/mobstat/bw;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/mobstat/bw$a;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/baidu/mobstat/bw$a;->k()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/baidu/android/common/util/InternalDeviceIdApis$TargetPackageCuidV270Info;->iscChannelCuid:Ljava/lang/String;

    :cond_1
    return-object v1
.end method
