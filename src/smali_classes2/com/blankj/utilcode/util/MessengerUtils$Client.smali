.class Lcom/blankj/utilcode/util/MessengerUtils$Client;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/blankj/utilcode/util/MessengerUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Client"
.end annotation


# instance fields
.field mCached:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field mClient:Landroid/os/Messenger;

.field mConn:Landroid/content/ServiceConnection;

.field mPkgName:Ljava/lang/String;

.field mReceiveServeMsgHandler:Landroid/os/Handler;

.field mServer:Landroid/os/Messenger;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/blankj/utilcode/util/MessengerUtils$Client;->mCached:Ljava/util/LinkedList;

    new-instance v0, Lcom/blankj/utilcode/util/MessengerUtils$Client$1;

    invoke-direct {v0, p0}, Lcom/blankj/utilcode/util/MessengerUtils$Client$1;-><init>(Lcom/blankj/utilcode/util/MessengerUtils$Client;)V

    iput-object v0, p0, Lcom/blankj/utilcode/util/MessengerUtils$Client;->mReceiveServeMsgHandler:Landroid/os/Handler;

    new-instance v0, Landroid/os/Messenger;

    iget-object v1, p0, Lcom/blankj/utilcode/util/MessengerUtils$Client;->mReceiveServeMsgHandler:Landroid/os/Handler;

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/blankj/utilcode/util/MessengerUtils$Client;->mClient:Landroid/os/Messenger;

    new-instance v0, Lcom/blankj/utilcode/util/MessengerUtils$Client$2;

    invoke-direct {v0, p0}, Lcom/blankj/utilcode/util/MessengerUtils$Client$2;-><init>(Lcom/blankj/utilcode/util/MessengerUtils$Client;)V

    iput-object v0, p0, Lcom/blankj/utilcode/util/MessengerUtils$Client;->mConn:Landroid/content/ServiceConnection;

    iput-object p1, p0, Lcom/blankj/utilcode/util/MessengerUtils$Client;->mPkgName:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$100(Lcom/blankj/utilcode/util/MessengerUtils$Client;)V
    .registers 1

    invoke-direct {p0}, Lcom/blankj/utilcode/util/MessengerUtils$Client;->sendCachedMsg2Server()V

    return-void
.end method

.method private send2Server(Landroid/os/Bundle;)Z
    .registers 4

    iget-object v0, p0, Lcom/blankj/utilcode/util/MessengerUtils$Client;->mReceiveServeMsgHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    const-class v1, Lcom/blankj/utilcode/util/MessengerUtils;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    invoke-virtual {v0, p1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v1, p0, Lcom/blankj/utilcode/util/MessengerUtils$Client;->mClient:Landroid/os/Messenger;

    iput-object v1, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    :try_start_0
    iget-object v1, p0, Lcom/blankj/utilcode/util/MessengerUtils$Client;->mServer:Landroid/os/Messenger;

    invoke-virtual {v1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private sendCachedMsg2Server()V
    .registers 3

    iget-object v0, p0, Lcom/blankj/utilcode/util/MessengerUtils$Client;->mCached:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/blankj/utilcode/util/MessengerUtils$Client;->mCached:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_0

    iget-object v0, p0, Lcom/blankj/utilcode/util/MessengerUtils$Client;->mCached:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    invoke-direct {p0, v0}, Lcom/blankj/utilcode/util/MessengerUtils$Client;->send2Server(Landroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/blankj/utilcode/util/MessengerUtils$Client;->mCached:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    :cond_2
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0
.end method


# virtual methods
.method bind()Z
    .registers 5

    const/4 v3, 0x1

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/blankj/utilcode/util/MessengerUtils$Client;->mPkgName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v1

    const-class v2, Lcom/blankj/utilcode/util/MessengerUtils$ServerService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v1

    iget-object v2, p0, Lcom/blankj/utilcode/util/MessengerUtils$Client;->mConn:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v0, v2, v3}, Landroid/app/Application;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/blankj/utilcode/util/MessengerUtils$Client;->mPkgName:Ljava/lang/String;

    invoke-static {v1}, Lcom/blankj/utilcode/util/UtilsBridge;->isAppInstalled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/blankj/utilcode/util/MessengerUtils$Client;->mPkgName:Ljava/lang/String;

    invoke-static {v1}, Lcom/blankj/utilcode/util/UtilsBridge;->isAppRunning(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/blankj/utilcode/util/MessengerUtils$Client;->mPkgName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".messenger"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Landroid/content/Intent;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/blankj/utilcode/util/MessengerUtils$Client;->mPkgName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    iget-object v2, p0, Lcom/blankj/utilcode/util/MessengerUtils$Client;->mConn:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/Application;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bind: the app is not running -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/blankj/utilcode/util/MessengerUtils$Client;->mPkgName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "MessengerUtils"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bind: the app is not installed -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/blankj/utilcode/util/MessengerUtils$Client;->mPkgName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "MessengerUtils"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method sendMsg2Server(Landroid/os/Bundle;)V
    .registers 4

    iget-object v0, p0, Lcom/blankj/utilcode/util/MessengerUtils$Client;->mServer:Landroid/os/Messenger;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/blankj/utilcode/util/MessengerUtils$Client;->mCached:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "save the bundle "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "MessengerUtils"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/blankj/utilcode/util/MessengerUtils$Client;->sendCachedMsg2Server()V

    invoke-direct {p0, p1}, Lcom/blankj/utilcode/util/MessengerUtils$Client;->send2Server(Landroid/os/Bundle;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/blankj/utilcode/util/MessengerUtils$Client;->mCached:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method unbind()V
    .registers 5

    invoke-static {}, Lcom/blankj/utilcode/util/UtilsBridge;->getCurrentProcessName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/blankj/utilcode/util/MessengerUtils$Client;->mReceiveServeMsgHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/blankj/utilcode/util/MessengerUtils$Client;->mClient:Landroid/os/Messenger;

    iput-object v1, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    :try_start_0
    iget-object v1, p0, Lcom/blankj/utilcode/util/MessengerUtils$Client;->mServer:Landroid/os/Messenger;

    invoke-virtual {v1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    :try_start_1
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    iget-object v1, p0, Lcom/blankj/utilcode/util/MessengerUtils$Client;->mConn:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/app/Application;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1
.end method
