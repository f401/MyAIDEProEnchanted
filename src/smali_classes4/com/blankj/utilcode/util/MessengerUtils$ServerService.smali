.class public Lcom/blankj/utilcode/util/MessengerUtils$ServerService;
.super Landroid/app/Service;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/blankj/utilcode/util/MessengerUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ServerService"
.end annotation


# instance fields
.field private final mClientMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/os/Messenger;",
            ">;"
        }
    .end annotation
.end field

.field private final mReceiveClientMsgHandler:Landroid/os/Handler;

.field private final messenger:Landroid/os/Messenger;


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/blankj/utilcode/util/MessengerUtils$ServerService;->mClientMap:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Lcom/blankj/utilcode/util/MessengerUtils$ServerService$1;

    invoke-direct {v0, p0}, Lcom/blankj/utilcode/util/MessengerUtils$ServerService$1;-><init>(Lcom/blankj/utilcode/util/MessengerUtils$ServerService;)V

    iput-object v0, p0, Lcom/blankj/utilcode/util/MessengerUtils$ServerService;->mReceiveClientMsgHandler:Landroid/os/Handler;

    new-instance v0, Landroid/os/Messenger;

    iget-object v1, p0, Lcom/blankj/utilcode/util/MessengerUtils$ServerService;->mReceiveClientMsgHandler:Landroid/os/Handler;

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/blankj/utilcode/util/MessengerUtils$ServerService;->messenger:Landroid/os/Messenger;

    return-void
.end method

.method static synthetic access$200(Lcom/blankj/utilcode/util/MessengerUtils$ServerService;)Ljava/util/concurrent/ConcurrentHashMap;
    .registers 2

    iget-object v0, p0, Lcom/blankj/utilcode/util/MessengerUtils$ServerService;->mClientMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic access$300(Lcom/blankj/utilcode/util/MessengerUtils$ServerService;Landroid/os/Message;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/blankj/utilcode/util/MessengerUtils$ServerService;->sendMsg2Client(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$400(Lcom/blankj/utilcode/util/MessengerUtils$ServerService;Landroid/os/Message;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/blankj/utilcode/util/MessengerUtils$ServerService;->consumeServerProcessCallback(Landroid/os/Message;)V

    return-void
.end method

.method private consumeServerProcessCallback(Landroid/os/Message;)V
    .registers 5

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_1d

    const-string v0, "MESSENGER_UTILS"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1d

    invoke-static {}, Lcom/blankj/utilcode/util/MessengerUtils;->access$000()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/blankj/utilcode/util/MessengerUtils$MessageCallback;

    if-eqz v0, :cond_1d

    invoke-interface {v0, v1}, Lcom/blankj/utilcode/util/MessengerUtils$MessageCallback;->messageCall(Landroid/os/Bundle;)V

    :cond_1d
    return-void
.end method

.method private sendMsg2Client(Landroid/os/Message;)V
    .registers 4

    iget-object v0, p0, Lcom/blankj/utilcode/util/MessengerUtils$ServerService;->mClientMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_a
    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Messenger;

    if-eqz v0, :cond_a

    :try_start_18
    invoke-virtual {v0, p1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_1b} :catch_1c

    goto :goto_a

    :catch_1c
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_a

    :cond_21
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3

    iget-object v0, p0, Lcom/blankj/utilcode/util/MessengerUtils$ServerService;->messenger:Landroid/os/Messenger;

    invoke-virtual {v0}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 8

    const/4 v3, 0x2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_12

    const/4 v0, 0x1

    sget-object v1, Lcom/blankj/utilcode/util/NotificationUtils$ChannelConfig;->DEFAULT_CHANNEL_CONFIG:Lcom/blankj/utilcode/util/NotificationUtils$ChannelConfig;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/blankj/utilcode/util/UtilsBridge;->getNotification(Lcom/blankj/utilcode/util/NotificationUtils$ChannelConfig;Lcom/blankj/utilcode/util/Utils$Consumer;)Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/blankj/utilcode/util/MessengerUtils$ServerService;->startForeground(ILandroid/app/Notification;)V

    :cond_12
    if-eqz p1, :cond_2d

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_2d

    iget-object v1, p0, Lcom/blankj/utilcode/util/MessengerUtils$ServerService;->mReceiveClientMsgHandler:Landroid/os/Handler;

    invoke-static {v1, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lcom/blankj/utilcode/util/MessengerUtils$ServerService;->messenger:Landroid/os/Messenger;

    iput-object v2, v1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    invoke-direct {p0, v1}, Lcom/blankj/utilcode/util/MessengerUtils$ServerService;->sendMsg2Client(Landroid/os/Message;)V

    invoke-direct {p0, v1}, Lcom/blankj/utilcode/util/MessengerUtils$ServerService;->consumeServerProcessCallback(Landroid/os/Message;)V

    :cond_2d
    return v3
.end method
