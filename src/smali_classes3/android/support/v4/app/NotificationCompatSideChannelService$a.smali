.class Landroid/support/v4/app/NotificationCompatSideChannelService$a;
.super Landroid/support/v4/app/S$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/NotificationCompatSideChannelService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final j6:Landroid/support/v4/app/NotificationCompatSideChannelService;


# direct methods
.method constructor <init>(Landroid/support/v4/app/NotificationCompatSideChannelService;)V
    .registers 2

    iput-object p1, p0, Landroid/support/v4/app/NotificationCompatSideChannelService$a;->j6:Landroid/support/v4/app/NotificationCompatSideChannelService;

    invoke-direct {p0}, Landroid/support/v4/app/S$a;-><init>()V

    return-void
.end method


# virtual methods
.method public J8(Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Landroid/support/v4/app/NotificationCompatSideChannelService$a;->j6:Landroid/support/v4/app/NotificationCompatSideChannelService;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/support/v4/app/NotificationCompatSideChannelService;->j6(ILjava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_d
    iget-object v2, p0, Landroid/support/v4/app/NotificationCompatSideChannelService$a;->j6:Landroid/support/v4/app/NotificationCompatSideChannelService;

    invoke-virtual {v2, p1}, Landroid/support/v4/app/NotificationCompatSideChannelService;->j6(Ljava/lang/String;)V
    :try_end_12
    .catchall {:try_start_d .. :try_end_12} :catchall_16

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_16
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public j6(Ljava/lang/String;ILjava/lang/String;)V
    .registers 7

    iget-object v0, p0, Landroid/support/v4/app/NotificationCompatSideChannelService$a;->j6:Landroid/support/v4/app/NotificationCompatSideChannelService;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/support/v4/app/NotificationCompatSideChannelService;->j6(ILjava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_d
    iget-object v2, p0, Landroid/support/v4/app/NotificationCompatSideChannelService$a;->j6:Landroid/support/v4/app/NotificationCompatSideChannelService;

    invoke-virtual {v2, p1, p2, p3}, Landroid/support/v4/app/NotificationCompatSideChannelService;->j6(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_12
    .catchall {:try_start_d .. :try_end_12} :catchall_16

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_16
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public j6(Ljava/lang/String;ILjava/lang/String;Landroid/app/Notification;)V
    .registers 8

    iget-object v0, p0, Landroid/support/v4/app/NotificationCompatSideChannelService$a;->j6:Landroid/support/v4/app/NotificationCompatSideChannelService;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/support/v4/app/NotificationCompatSideChannelService;->j6(ILjava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_d
    iget-object v2, p0, Landroid/support/v4/app/NotificationCompatSideChannelService$a;->j6:Landroid/support/v4/app/NotificationCompatSideChannelService;

    invoke-virtual {v2, p1, p2, p3, p4}, Landroid/support/v4/app/NotificationCompatSideChannelService;->j6(Ljava/lang/String;ILjava/lang/String;Landroid/app/Notification;)V
    :try_end_12
    .catchall {:try_start_d .. :try_end_12} :catchall_16

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_16
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method
