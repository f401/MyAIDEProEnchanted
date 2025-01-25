.class Landroidj/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi21;
.super Ljava/lang/Object;

# interfaces
.implements Landroidj/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImpl;
.implements Landroidj/support/v4/media/MediaBrowserServiceCompatApi21$ServiceCompatProxy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidj/support/v4/media/MediaBrowserServiceCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MediaBrowserServiceImplApi21"
.end annotation


# instance fields
.field mMessenger:Landroid/os/Messenger;

.field mServiceObj:Ljava/lang/Object;

.field final this$0:Landroidj/support/v4/media/MediaBrowserServiceCompat;


# direct methods
.method constructor <init>(Landroidj/support/v4/media/MediaBrowserServiceCompat;)V
    .registers 2

    iput-object p1, p0, Landroidj/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi21;->this$0:Landroidj/support/v4/media/MediaBrowserServiceCompat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBrowserRootHints()Landroid/os/Bundle;
    .registers 3

    const/4 v0, 0x0

    iget-object v1, p0, Landroidj/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi21;->mMessenger:Landroid/os/Messenger;

    if-nez v1, :cond_6

    :cond_5
    :goto_5
    return-object v0

    :cond_6
    iget-object v1, p0, Landroidj/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi21;->this$0:Landroidj/support/v4/media/MediaBrowserServiceCompat;

    iget-object v1, v1, Landroidj/support/v4/media/MediaBrowserServiceCompat;->mCurConnection:Landroidj/support/v4/media/MediaBrowserServiceCompat$ConnectionRecord;

    if-nez v1, :cond_14

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This should be called inside of onLoadChildren, onLoadItem or onSearch methods"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_14
    iget-object v1, p0, Landroidj/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi21;->this$0:Landroidj/support/v4/media/MediaBrowserServiceCompat;

    iget-object v1, v1, Landroidj/support/v4/media/MediaBrowserServiceCompat;->mCurConnection:Landroidj/support/v4/media/MediaBrowserServiceCompat$ConnectionRecord;

    iget-object v1, v1, Landroidj/support/v4/media/MediaBrowserServiceCompat$ConnectionRecord;->rootHints:Landroid/os/Bundle;

    if-eqz v1, :cond_5

    new-instance v0, Landroid/os/Bundle;

    iget-object v1, p0, Landroidj/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi21;->this$0:Landroidj/support/v4/media/MediaBrowserServiceCompat;

    iget-object v1, v1, Landroidj/support/v4/media/MediaBrowserServiceCompat;->mCurConnection:Landroidj/support/v4/media/MediaBrowserServiceCompat$ConnectionRecord;

    iget-object v1, v1, Landroidj/support/v4/media/MediaBrowserServiceCompat$ConnectionRecord;->rootHints:Landroid/os/Bundle;

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    goto :goto_5
.end method

.method public notifyChildrenChanged(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 5

    iget-object v0, p0, Landroidj/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi21;->mMessenger:Landroid/os/Messenger;

    if-nez v0, :cond_a

    iget-object v0, p0, Landroidj/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi21;->mServiceObj:Ljava/lang/Object;

    invoke-static {v0, p1}, Landroidj/support/v4/media/MediaBrowserServiceCompatApi21;->notifyChildrenChanged(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_9
    return-void

    :cond_a
    iget-object v0, p0, Landroidj/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi21;->this$0:Landroidj/support/v4/media/MediaBrowserServiceCompat;

    iget-object v0, v0, Landroidj/support/v4/media/MediaBrowserServiceCompat;->mHandler:Landroidj/support/v4/media/MediaBrowserServiceCompat$ServiceHandler;

    new-instance v1, Landroidj/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi21$1;

    invoke-direct {v1, p0, p1, p2}, Landroidj/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi21$1;-><init>(Landroidj/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi21;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Landroidj/support/v4/media/MediaBrowserServiceCompat$ServiceHandler;->post(Ljava/lang/Runnable;)Z

    goto :goto_9
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3

    iget-object v0, p0, Landroidj/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi21;->mServiceObj:Ljava/lang/Object;

    invoke-static {v0, p1}, Landroidj/support/v4/media/MediaBrowserServiceCompatApi21;->onBind(Ljava/lang/Object;Landroid/content/Intent;)Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public onCreate()V
    .registers 2

    iget-object v0, p0, Landroidj/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi21;->this$0:Landroidj/support/v4/media/MediaBrowserServiceCompat;

    invoke-static {v0, p0}, Landroidj/support/v4/media/MediaBrowserServiceCompatApi21;->createService(Landroid/content/Context;Landroidj/support/v4/media/MediaBrowserServiceCompatApi21$ServiceCompatProxy;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroidj/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi21;->mServiceObj:Ljava/lang/Object;

    iget-object v0, p0, Landroidj/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi21;->mServiceObj:Ljava/lang/Object;

    invoke-static {v0}, Landroidj/support/v4/media/MediaBrowserServiceCompatApi21;->onCreate(Ljava/lang/Object;)V

    return-void
.end method

.method public onGetRoot(Ljava/lang/String;ILandroid/os/Bundle;)Landroidj/support/v4/media/MediaBrowserServiceCompatApi21$BrowserRoot;
    .registers 8

    const/4 v1, 0x0

    if-eqz p3, :cond_75

    const-string v0, "extra_client_version"

    const/4 v2, 0x0

    invoke-virtual {p3, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_75

    const-string v0, "extra_client_version"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    new-instance v0, Landroid/os/Messenger;

    iget-object v2, p0, Landroidj/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi21;->this$0:Landroidj/support/v4/media/MediaBrowserServiceCompat;

    iget-object v2, v2, Landroidj/support/v4/media/MediaBrowserServiceCompat;->mHandler:Landroidj/support/v4/media/MediaBrowserServiceCompat$ServiceHandler;

    invoke-direct {v0, v2}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Landroidj/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi21;->mMessenger:Landroid/os/Messenger;

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v0, "extra_service_version"

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "extra_messenger"

    iget-object v3, p0, Landroidj/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi21;->mMessenger:Landroid/os/Messenger;

    invoke-virtual {v3}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v2, v0, v3}, Landroidj/support/v4/app/BundleCompat;->putBinder(Landroid/os/Bundle;Ljava/lang/String;Landroid/os/IBinder;)V

    iget-object v0, p0, Landroidj/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi21;->this$0:Landroidj/support/v4/media/MediaBrowserServiceCompat;

    iget-object v0, v0, Landroidj/support/v4/media/MediaBrowserServiceCompat;->mSession:Landroidj/support/v4/media/session/MediaSessionCompat$Token;

    if-eqz v0, :cond_48

    iget-object v0, p0, Landroidj/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi21;->this$0:Landroidj/support/v4/media/MediaBrowserServiceCompat;

    iget-object v0, v0, Landroidj/support/v4/media/MediaBrowserServiceCompat;->mSession:Landroidj/support/v4/media/session/MediaSessionCompat$Token;

    invoke-virtual {v0}, Landroidj/support/v4/media/session/MediaSessionCompat$Token;->getExtraBinder()Landroidj/support/v4/media/session/IMediaSession;

    move-result-object v0

    if-nez v0, :cond_52

    move-object v0, v1

    :goto_43
    const-string v3, "extra_session_binder"

    invoke-static {v2, v3, v0}, Landroidj/support/v4/app/BundleCompat;->putBinder(Landroid/os/Bundle;Ljava/lang/String;Landroid/os/IBinder;)V

    :cond_48
    move-object v0, v2

    :goto_49
    iget-object v2, p0, Landroidj/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi21;->this$0:Landroidj/support/v4/media/MediaBrowserServiceCompat;

    invoke-virtual {v2, p1, p2, p3}, Landroidj/support/v4/media/MediaBrowserServiceCompat;->onGetRoot(Ljava/lang/String;ILandroid/os/Bundle;)Landroidj/support/v4/media/MediaBrowserServiceCompat$BrowserRoot;

    move-result-object v2

    if-nez v2, :cond_57

    :goto_51
    return-object v1

    :cond_52
    invoke-interface {v0}, Landroidj/support/v4/media/session/IMediaSession;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    goto :goto_43

    :cond_57
    if-nez v0, :cond_67

    invoke-virtual {v2}, Landroidj/support/v4/media/MediaBrowserServiceCompat$BrowserRoot;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    :cond_5d
    :goto_5d
    new-instance v1, Landroidj/support/v4/media/MediaBrowserServiceCompatApi21$BrowserRoot;

    invoke-virtual {v2}, Landroidj/support/v4/media/MediaBrowserServiceCompat$BrowserRoot;->getRootId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroidj/support/v4/media/MediaBrowserServiceCompatApi21$BrowserRoot;-><init>(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_51

    :cond_67
    invoke-virtual {v2}, Landroidj/support/v4/media/MediaBrowserServiceCompat$BrowserRoot;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_5d

    invoke-virtual {v2}, Landroidj/support/v4/media/MediaBrowserServiceCompat$BrowserRoot;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    goto :goto_5d

    :cond_75
    move-object v0, v1

    goto :goto_49
.end method

.method public onLoadChildren(Ljava/lang/String;Landroidj/support/v4/media/MediaBrowserServiceCompatApi21$ResultWrapper;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroidj/support/v4/media/MediaBrowserServiceCompatApi21$ResultWrapper",
            "<",
            "Ljava/util/List",
            "<",
            "Landroid/os/Parcel;",
            ">;>;)V"
        }
    .end annotation

    new-instance v0, Landroidj/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi21$2;

    invoke-direct {v0, p0, p1, p2}, Landroidj/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi21$2;-><init>(Landroidj/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi21;Ljava/lang/Object;Landroidj/support/v4/media/MediaBrowserServiceCompatApi21$ResultWrapper;)V

    iget-object v1, p0, Landroidj/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi21;->this$0:Landroidj/support/v4/media/MediaBrowserServiceCompat;

    invoke-virtual {v1, p1, v0}, Landroidj/support/v4/media/MediaBrowserServiceCompat;->onLoadChildren(Ljava/lang/String;Landroidj/support/v4/media/MediaBrowserServiceCompat$Result;)V

    return-void
.end method

.method public setSessionToken(Landroidj/support/v4/media/session/MediaSessionCompat$Token;)V
    .registers 4

    iget-object v0, p0, Landroidj/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi21;->mServiceObj:Ljava/lang/Object;

    invoke-virtual {p1}, Landroidj/support/v4/media/session/MediaSessionCompat$Token;->getToken()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Landroidj/support/v4/media/MediaBrowserServiceCompatApi21;->setSessionToken(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
