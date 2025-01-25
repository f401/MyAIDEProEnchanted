.class public final Lcom/baidu/android/common/util/Util;
.super Ljava/lang/Object;


# static fields
.field private static final a:Z = false

.field private static final b:Ljava/lang/String; = "Util"


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static hasOtherServiceRuninMyPid(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 5

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_16
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_38

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningServiceInfo;

    iget v1, v0, Landroid/app/ActivityManager$RunningServiceInfo;->pid:I

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    if-ne v1, v2, :cond_16

    iget-object v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_16

    const/4 p0, 0x1

    return p0

    :cond_38
    const/4 p0, 0x0

    return p0
.end method

.method public static toHexString([BLjava/lang/String;Z)Ljava/lang/String;
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/baidu/mobstat/bn;->a([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toMd5([BZ)Ljava/lang/String;
    .registers 2

    invoke-static {p0, p1}, Lcom/baidu/mobstat/bn;->a([BZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
