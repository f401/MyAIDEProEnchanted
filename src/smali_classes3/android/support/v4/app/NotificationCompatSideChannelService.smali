.class public abstract Landroid/support/v4/app/NotificationCompatSideChannelService;
.super Landroid/app/Service;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/app/NotificationCompatSideChannelService$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method j6(ILjava/lang/String;)V
    .registers 7

    invoke-virtual {p0}, Landroid/app/Service;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v1, :cond_18

    aget-object v3, v0, v2

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    return-void

    :cond_15
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NotificationSideChannelService: Uid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is not authorized for package "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p1, Ljava/lang/SecurityException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    goto :goto_38

    :goto_37
    throw p1

    :goto_38
    goto :goto_37
.end method

.method public abstract j6(Ljava/lang/String;)V
.end method

.method public abstract j6(Ljava/lang/String;ILjava/lang/String;)V
.end method

.method public abstract j6(Ljava/lang/String;ILjava/lang/String;Landroid/app/Notification;)V
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 4

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.support.BIND_NOTIFICATION_SIDE_CHANNEL"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1a

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-le p1, v1, :cond_14

    return-object v0

    :cond_14
    new-instance p1, Landroid/support/v4/app/NotificationCompatSideChannelService$a;

    invoke-direct {p1, p0}, Landroid/support/v4/app/NotificationCompatSideChannelService$a;-><init>(Landroid/support/v4/app/NotificationCompatSideChannelService;)V

    return-object p1

    :cond_1a
    return-object v0
.end method
