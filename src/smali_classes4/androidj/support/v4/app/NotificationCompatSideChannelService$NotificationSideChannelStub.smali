.class Landroidj/support/v4/app/NotificationCompatSideChannelService$NotificationSideChannelStub;
.super Landroidj/support/v4/app/INotificationSideChannel$Stub;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidj/support/v4/app/NotificationCompatSideChannelService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NotificationSideChannelStub"
.end annotation


# instance fields
.field final this$0:Landroidj/support/v4/app/NotificationCompatSideChannelService;


# direct methods
.method constructor <init>(Landroidj/support/v4/app/NotificationCompatSideChannelService;)V
    .registers 2

    iput-object p1, p0, Landroidj/support/v4/app/NotificationCompatSideChannelService$NotificationSideChannelStub;->this$0:Landroidj/support/v4/app/NotificationCompatSideChannelService;

    invoke-direct {p0}, Landroidj/support/v4/app/INotificationSideChannel$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel(Ljava/lang/String;ILjava/lang/String;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroidj/support/v4/app/NotificationCompatSideChannelService$NotificationSideChannelStub;->this$0:Landroidj/support/v4/app/NotificationCompatSideChannelService;

    invoke-static {}, Landroidj/support/v4/app/NotificationCompatSideChannelService$NotificationSideChannelStub;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroidj/support/v4/app/NotificationCompatSideChannelService;->checkPermission(ILjava/lang/String;)V

    invoke-static {}, Landroidj/support/v4/app/NotificationCompatSideChannelService$NotificationSideChannelStub;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_d
    iget-object v0, p0, Landroidj/support/v4/app/NotificationCompatSideChannelService$NotificationSideChannelStub;->this$0:Landroidj/support/v4/app/NotificationCompatSideChannelService;

    invoke-virtual {v0, p1, p2, p3}, Landroidj/support/v4/app/NotificationCompatSideChannelService;->cancel(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_12
    .catchall {:try_start_d .. :try_end_12} :catchall_16

    invoke-static {v2, v3}, Landroidj/support/v4/app/NotificationCompatSideChannelService$NotificationSideChannelStub;->restoreCallingIdentity(J)V

    return-void

    :catchall_16
    move-exception v0

    invoke-static {v2, v3}, Landroidj/support/v4/app/NotificationCompatSideChannelService$NotificationSideChannelStub;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public cancelAll(Ljava/lang/String;)V
    .registers 6

    iget-object v0, p0, Landroidj/support/v4/app/NotificationCompatSideChannelService$NotificationSideChannelStub;->this$0:Landroidj/support/v4/app/NotificationCompatSideChannelService;

    invoke-static {}, Landroidj/support/v4/app/NotificationCompatSideChannelService$NotificationSideChannelStub;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroidj/support/v4/app/NotificationCompatSideChannelService;->checkPermission(ILjava/lang/String;)V

    invoke-static {}, Landroidj/support/v4/app/NotificationCompatSideChannelService$NotificationSideChannelStub;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_d
    iget-object v0, p0, Landroidj/support/v4/app/NotificationCompatSideChannelService$NotificationSideChannelStub;->this$0:Landroidj/support/v4/app/NotificationCompatSideChannelService;

    invoke-virtual {v0, p1}, Landroidj/support/v4/app/NotificationCompatSideChannelService;->cancelAll(Ljava/lang/String;)V
    :try_end_12
    .catchall {:try_start_d .. :try_end_12} :catchall_16

    invoke-static {v2, v3}, Landroidj/support/v4/app/NotificationCompatSideChannelService$NotificationSideChannelStub;->restoreCallingIdentity(J)V

    return-void

    :catchall_16
    move-exception v0

    invoke-static {v2, v3}, Landroidj/support/v4/app/NotificationCompatSideChannelService$NotificationSideChannelStub;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public notify(Ljava/lang/String;ILjava/lang/String;Landroid/app/Notification;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroidj/support/v4/app/NotificationCompatSideChannelService$NotificationSideChannelStub;->this$0:Landroidj/support/v4/app/NotificationCompatSideChannelService;

    invoke-static {}, Landroidj/support/v4/app/NotificationCompatSideChannelService$NotificationSideChannelStub;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroidj/support/v4/app/NotificationCompatSideChannelService;->checkPermission(ILjava/lang/String;)V

    invoke-static {}, Landroidj/support/v4/app/NotificationCompatSideChannelService$NotificationSideChannelStub;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_d
    iget-object v0, p0, Landroidj/support/v4/app/NotificationCompatSideChannelService$NotificationSideChannelStub;->this$0:Landroidj/support/v4/app/NotificationCompatSideChannelService;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroidj/support/v4/app/NotificationCompatSideChannelService;->notify(Ljava/lang/String;ILjava/lang/String;Landroid/app/Notification;)V
    :try_end_12
    .catchall {:try_start_d .. :try_end_12} :catchall_16

    invoke-static {v2, v3}, Landroidj/support/v4/app/NotificationCompatSideChannelService$NotificationSideChannelStub;->restoreCallingIdentity(J)V

    return-void

    :catchall_16
    move-exception v0

    invoke-static {v2, v3}, Landroidj/support/v4/app/NotificationCompatSideChannelService$NotificationSideChannelStub;->restoreCallingIdentity(J)V

    throw v0
.end method
