.class Lcom/blankj/utilcode/util/MessengerUtils$Client$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/blankj/utilcode/util/MessengerUtils$Client;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Lcom/blankj/utilcode/util/MessengerUtils$Client;


# direct methods
.method constructor <init>(Lcom/blankj/utilcode/util/MessengerUtils$Client;)V
    .registers 2

    iput-object p1, p0, Lcom/blankj/utilcode/util/MessengerUtils$Client$2;->this$0:Lcom/blankj/utilcode/util/MessengerUtils$Client;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 6

    const/4 v2, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "client service connected "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "MessengerUtils"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/blankj/utilcode/util/MessengerUtils$Client$2;->this$0:Lcom/blankj/utilcode/util/MessengerUtils$Client;

    new-instance v1, Landroid/os/Messenger;

    invoke-direct {v1, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    iput-object v1, v0, Lcom/blankj/utilcode/util/MessengerUtils$Client;->mServer:Landroid/os/Messenger;

    invoke-static {}, Lcom/blankj/utilcode/util/UtilsBridge;->getCurrentProcessName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/blankj/utilcode/util/MessengerUtils$Client$2;->this$0:Lcom/blankj/utilcode/util/MessengerUtils$Client;

    iget-object v1, v1, Lcom/blankj/utilcode/util/MessengerUtils$Client;->mReceiveServeMsgHandler:Landroid/os/Handler;

    invoke-static {v1, v2, v0, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-class v2, Lcom/blankj/utilcode/util/MessengerUtils;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    iget-object v1, p0, Lcom/blankj/utilcode/util/MessengerUtils$Client$2;->this$0:Lcom/blankj/utilcode/util/MessengerUtils$Client;

    iget-object v1, v1, Lcom/blankj/utilcode/util/MessengerUtils$Client;->mClient:Landroid/os/Messenger;

    iput-object v1, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    :try_start_43
    iget-object v1, p0, Lcom/blankj/utilcode/util/MessengerUtils$Client$2;->this$0:Lcom/blankj/utilcode/util/MessengerUtils$Client;

    iget-object v1, v1, Lcom/blankj/utilcode/util/MessengerUtils$Client;->mServer:Landroid/os/Messenger;

    invoke-virtual {v1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_4a
    .catch Landroid/os/RemoteException; {:try_start_43 .. :try_end_4a} :catch_50

    :goto_4a
    iget-object v0, p0, Lcom/blankj/utilcode/util/MessengerUtils$Client$2;->this$0:Lcom/blankj/utilcode/util/MessengerUtils$Client;

    invoke-static {v0}, Lcom/blankj/utilcode/util/MessengerUtils$Client;->access$100(Lcom/blankj/utilcode/util/MessengerUtils$Client;)V

    return-void

    :catch_50
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_4a
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "client service disconnected:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "MessengerUtils"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/blankj/utilcode/util/MessengerUtils$Client$2;->this$0:Lcom/blankj/utilcode/util/MessengerUtils$Client;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/blankj/utilcode/util/MessengerUtils$Client;->mServer:Landroid/os/Messenger;

    iget-object v0, p0, Lcom/blankj/utilcode/util/MessengerUtils$Client$2;->this$0:Lcom/blankj/utilcode/util/MessengerUtils$Client;

    invoke-virtual {v0}, Lcom/blankj/utilcode/util/MessengerUtils$Client;->bind()Z

    move-result v0

    if-nez v0, :cond_39

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "client service rebind failed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "MessengerUtils"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_39
    return-void
.end method
