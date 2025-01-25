.class Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi21;
.super Ljava/lang/Object;

# interfaces
.implements Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImpl;
.implements Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserServiceCallbackImpl;
.implements Landroidj/support/v4/media/MediaBrowserCompat$ConnectionCallback$ConnectionCallbackInternal;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidj/support/v4/media/MediaBrowserCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MediaBrowserImplApi21"
.end annotation


# instance fields
.field protected final mBrowserObj:Ljava/lang/Object;

.field protected mCallbacksMessenger:Landroid/os/Messenger;

.field protected final mHandler:Landroidj/support/v4/media/MediaBrowserCompat$CallbackHandler;

.field private mMediaSessionToken:Landroidj/support/v4/media/session/MediaSessionCompat$Token;

.field protected final mRootHints:Landroid/os/Bundle;

.field protected mServiceBinderWrapper:Landroidj/support/v4/media/MediaBrowserCompat$ServiceBinderWrapper;

.field private final mSubscriptions:Landroidj/support/v4/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidj/support/v4/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroidj/support/v4/media/MediaBrowserCompat$Subscription;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/ComponentName;Landroidj/support/v4/media/MediaBrowserCompat$ConnectionCallback;Landroid/os/Bundle;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidj/support/v4/media/MediaBrowserCompat$CallbackHandler;

    invoke-direct {v0, p0}, Landroidj/support/v4/media/MediaBrowserCompat$CallbackHandler;-><init>(Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserServiceCallbackImpl;)V

    iput-object v0, p0, Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi21;->mHandler:Landroidj/support/v4/media/MediaBrowserCompat$CallbackHandler;

    new-instance v0, Landroidj/support/v4/util/ArrayMap;

    invoke-direct {v0}, Landroidj/support/v4/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi21;->mSubscriptions:Landroidj/support/v4/util/ArrayMap;

    if-nez p4, :cond_18

    new-instance p4, Landroid/os/Bundle;

    invoke-direct {p4}, Landroid/os/Bundle;-><init>()V

    :cond_18
    const-string v0, "extra_client_version"

    const/4 v1, 0x1

    invoke-virtual {p4, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p4}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iput-object v0, p0, Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi21;->mRootHints:Landroid/os/Bundle;

    invoke-virtual {p3, p0}, Landroidj/support/v4/media/MediaBrowserCompat$ConnectionCallback;->setInternalConnectionCallback(Landroidj/support/v4/media/MediaBrowserCompat$ConnectionCallback$ConnectionCallbackInternal;)V

    iget-object v0, p3, Landroidj/support/v4/media/MediaBrowserCompat$ConnectionCallback;->mConnectionCallbackObj:Ljava/lang/Object;

    iget-object v1, p0, Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi21;->mRootHints:Landroid/os/Bundle;

    invoke-static {p1, p2, v0, v1}, Landroidj/support/v4/media/MediaBrowserCompatApi21;->createBrowser(Landroid/content/Context;Landroid/content/ComponentName;Ljava/lang/Object;Landroid/os/Bundle;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi21;->mBrowserObj:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public connect()V
    .registers 2

    iget-object v0, p0, Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi21;->mBrowserObj:Ljava/lang/Object;

    invoke-static {v0}, Landroidj/support/v4/media/MediaBrowserCompatApi21;->connect(Ljava/lang/Object;)V

    return-void
.end method

.method public disconnect()V
    .registers 3

    iget-object v0, p0, Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi21;->mServiceBinderWrapper:Landroidj/support/v4/media/MediaBrowserCompat$ServiceBinderWrapper;

    if-eqz v0, :cond_f

    iget-object v0, p0, Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi21;->mCallbacksMessenger:Landroid/os/Messenger;

    if-eqz v0, :cond_f

    :try_start_8
    iget-object v0, p0, Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi21;->mServiceBinderWrapper:Landroidj/support/v4/media/MediaBrowserCompat$ServiceBinderWrapper;

    iget-object v1, p0, Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi21;->mCallbacksMessenger:Landroid/os/Messenger;

    invoke-virtual {v0, v1}, Landroidj/support/v4/media/MediaBrowserCompat$ServiceBinderWrapper;->unregisterCallbackMessenger(Landroid/os/Messenger;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_f} :catch_15

    :cond_f
    :goto_f
    iget-object v0, p0, Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi21;->mBrowserObj:Ljava/lang/Object;

    invoke-static {v0}, Landroidj/support/v4/media/MediaBrowserCompatApi21;->disconnect(Ljava/lang/Object;)V

    return-void

    :catch_15
    move-exception v0

    const-string v0, "MediaBrowserCompat"

    const-string v1, "Remote error unregistering client messenger."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f
.end method

.method public getExtras()Landroid/os/Bundle;
    .registers 2
    .annotation build Landroidj/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi21;->mBrowserObj:Ljava/lang/Object;

    invoke-static {v0}, Landroidj/support/v4/media/MediaBrowserCompatApi21;->getExtras(Ljava/lang/Object;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getItem(Ljava/lang/String;Landroidj/support/v4/media/MediaBrowserCompat$ItemCallback;)V
    .registers 6
    .param p1  # Ljava/lang/String;
        .annotation build Landroidj/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Landroidj/support/v4/media/MediaBrowserCompat$ItemCallback;
        .annotation build Landroidj/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "mediaId is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    if-nez p2, :cond_18

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "cb is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_18
    iget-object v0, p0, Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi21;->mBrowserObj:Ljava/lang/Object;

    invoke-static {v0}, Landroidj/support/v4/media/MediaBrowserCompatApi21;->isConnected(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_32

    const-string v0, "MediaBrowserCompat"

    const-string v1, "Not connected, unable to retrieve the MediaItem."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi21;->mHandler:Landroidj/support/v4/media/MediaBrowserCompat$CallbackHandler;

    new-instance v1, Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi21$1;

    invoke-direct {v1, p0, p2, p1}, Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi21$1;-><init>(Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi21;Landroidj/support/v4/media/MediaBrowserCompat$ItemCallback;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroidj/support/v4/media/MediaBrowserCompat$CallbackHandler;->post(Ljava/lang/Runnable;)Z

    :goto_31
    return-void

    :cond_32
    iget-object v0, p0, Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi21;->mServiceBinderWrapper:Landroidj/support/v4/media/MediaBrowserCompat$ServiceBinderWrapper;

    if-nez v0, :cond_41

    iget-object v0, p0, Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi21;->mHandler:Landroidj/support/v4/media/MediaBrowserCompat$CallbackHandler;

    new-instance v1, Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi21$2;

    invoke-direct {v1, p0, p2, p1}, Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi21$2;-><init>(Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi21;Landroidj/support/v4/media/MediaBrowserCompat$ItemCallback;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroidj/support/v4/media/MediaBrowserCompat$CallbackHandler;->post(Ljava/lang/Runnable;)Z

    goto :goto_31

    :cond_41
    new-instance v0, Landroidj/support/v4/media/MediaBrowserCompat$ItemReceiver;

    iget-object v1, p0, Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi21;->mHandler:Landroidj/support/v4/media/MediaBrowserCompat$CallbackHandler;

    invoke-direct {v0, p1, p2, v1}, Landroidj/support/v4/media/MediaBrowserCompat$ItemReceiver;-><init>(Ljava/lang/String;Landroidj/support/v4/media/MediaBrowserCompat$ItemCallback;Landroid/os/Handler;)V

    :try_start_48
    iget-object v1, p0, Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi21;->mServiceBinderWrapper:Landroidj/support/v4/media/MediaBrowserCompat$ServiceBinderWrapper;

    iget-object v2, p0, Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi21;->mCallbacksMessenger:Landroid/os/Messenger;

    invoke-virtual {v1, p1, v0, v2}, Landroidj/support/v4/media/MediaBrowserCompat$ServiceBinderWrapper;->getMediaItem(Ljava/lang/String;Landroidj/support/v4/os/ResultReceiver;Landroid/os/Messenger;)V
    :try_end_4f
    .catch Landroid/os/RemoteException; {:try_start_48 .. :try_end_4f} :catch_50

    goto :goto_31

    :catch_50
    move-exception v0

    const-string v0, "MediaBrowserCompat"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Remote error getting media item: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi21;->mHandler:Landroidj/support/v4/media/MediaBrowserCompat$CallbackHandler;

    new-instance v1, Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi21$3;

    invoke-direct {v1, p0, p2, p1}, Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi21$3;-><init>(Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi21;Landroidj/support/v4/media/MediaBrowserCompat$ItemCallback;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroidj/support/v4/media/MediaBrowserCompat$CallbackHandler;->post(Ljava/lang/Runnable;)Z

    goto :goto_31
.end method

.method public getRoot()Ljava/lang/String;
    .registers 2
    .annotation build Landroidj/support/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi21;->mBrowserObj:Ljava/lang/Object;

    invoke-static {v0}, Landroidj/support/v4/media/MediaBrowserCompatApi21;->getRoot(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getServiceComponent()Landroid/content/ComponentName;
    .registers 2

    iget-object v0, p0, Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi21;->mBrowserObj:Ljava/lang/Object;

    invoke-static {v0}, Landroidj/support/v4/media/MediaBrowserCompatApi21;->getServiceComponent(Ljava/lang/Object;)Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method public getSessionToken()Landroidj/support/v4/media/session/MediaSessionCompat$Token;
    .registers 2
    .annotation build Landroidj/support/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi21;->mMediaSessionToken:Landroidj/support/v4/media/session/MediaSessionCompat$Token;

    if-nez v0, :cond_10

    iget-object v0, p0, Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi21;->mBrowserObj:Ljava/lang/Object;

    invoke-static {v0}, Landroidj/support/v4/media/MediaBrowserCompatApi21;->getSessionToken(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Landroidj/support/v4/media/session/MediaSessionCompat$Token;->fromToken(Ljava/lang/Object;)Landroidj/support/v4/media/session/MediaSessionCompat$Token;

    move-result-object v0

    iput-object v0, p0, Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi21;->mMediaSessionToken:Landroidj/support/v4/media/session/MediaSessionCompat$Token;

    :cond_10
    iget-object v0, p0, Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi21;->mMediaSessionToken:Landroidj/support/v4/media/session/MediaSessionCompat$Token;

    return-object v0
.end method

.method public isConnected()Z
    .registers 2

    iget-object v0, p0, Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi21;->mBrowserObj:Ljava/lang/Object;

    invoke-static {v0}, Landroidj/support/v4/media/MediaBrowserCompatApi21;->isConnected(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public onConnected()V
    .registers 5

    iget-object v0, p0, Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi21;->mBrowserObj:Ljava/lang/Object;

    invoke-static {v0}, Landroidj/support/v4/media/MediaBrowserCompatApi21;->getExtras(Ljava/lang/Object;)Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_9

    :cond_8
    :goto_8
    return-void

    :cond_9
    const-string v1, "extra_messenger"

    invoke-static {v0, v1}, Landroidj/support/v4/app/BundleCompat;->getBinder(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_31

    new-instance v2, Landroidj/support/v4/media/MediaBrowserCompat$ServiceBinderWrapper;

    iget-object v3, p0, Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi21;->mRootHints:Landroid/os/Bundle;

    invoke-direct {v2, v1, v3}, Landroidj/support/v4/media/MediaBrowserCompat$ServiceBinderWrapper;-><init>(Landroid/os/IBinder;Landroid/os/Bundle;)V

    iput-object v2, p0, Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi21;->mServiceBinderWrapper:Landroidj/support/v4/media/MediaBrowserCompat$ServiceBinderWrapper;

    new-instance v1, Landroid/os/Messenger;

    iget-object v2, p0, Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi21;->mHandler:Landroidj/support/v4/media/MediaBrowserCompat$CallbackHandler;

    invoke-direct {v1, v2}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v1, p0, Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi21;->mCallbacksMessenger:Landroid/os/Messenger;

    iget-object v1, p0, Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi21;->mHandler:Landroidj/support/v4/media/MediaBrowserCompat$CallbackHandler;

    iget-object v2, p0, Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi21;->mCallbacksMessenger:Landroid/os/Messenger;

    invoke-virtual {v1, v2}, Landroidj/support/v4/media/MediaBrowserCompat$CallbackHandler;->setCallbacksMessenger(Landroid/os/Messenger;)V

    :try_start_2a
    iget-object v1, p0, Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi21;->mServiceBinderWrapper:Landroidj/support/v4/media/MediaBrowserCompat$ServiceBinderWrapper;

    iget-object v2, p0, Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi21;->mCallbacksMessenger:Landroid/os/Messenger;

    invoke-virtual {v1, v2}, Landroidj/support/v4/media/MediaBrowserCompat$ServiceBinderWrapper;->registerCallbackMessenger(Landroid/os/Messenger;)V
    :try_end_31
    .catch Landroid/os/RemoteException; {:try_start_2a .. :try_end_31} :catch_4a

    :cond_31
    :goto_31
    const-string v1, "extra_session_binder"

    invoke-static {v0, v1}, Landroidj/support/v4/app/BundleCompat;->getBinder(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroidj/support/v4/media/session/IMediaSession$Stub;->asInterface(Landroid/os/IBinder;)Landroidj/support/v4/media/session/IMediaSession;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-object v1, p0, Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi21;->mBrowserObj:Ljava/lang/Object;

    invoke-static {v1}, Landroidj/support/v4/media/MediaBrowserCompatApi21;->getSessionToken(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, v0}, Landroidj/support/v4/media/session/MediaSessionCompat$Token;->fromToken(Ljava/lang/Object;Landroidj/support/v4/media/session/IMediaSession;)Landroidj/support/v4/media/session/MediaSessionCompat$Token;

    move-result-object v0

    iput-object v0, p0, Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi21;->mMediaSessionToken:Landroidj/support/v4/media/session/MediaSessionCompat$Token;

    goto :goto_8

    :catch_4a
    move-exception v1

    const-string v1, "MediaBrowserCompat"

    const-string v2, "Remote error registering client messenger."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_31
.end method

.method public onConnectionFailed()V
    .registers 1

    return-void
.end method

.method public onConnectionFailed(Landroid/os/Messenger;)V
    .registers 2

    return-void
.end method

.method public onConnectionSuspended()V
    .registers 3

    const/4 v1, 0x0

    iput-object v1, p0, Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi21;->mServiceBinderWrapper:Landroidj/support/v4/media/MediaBrowserCompat$ServiceBinderWrapper;

    iput-object v1, p0, Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi21;->mCallbacksMessenger:Landroid/os/Messenger;

    iput-object v1, p0, Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi21;->mMediaSessionToken:Landroidj/support/v4/media/session/MediaSessionCompat$Token;

    iget-object v0, p0, Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi21;->mHandler:Landroidj/support/v4/media/MediaBrowserCompat$CallbackHandler;

    invoke-virtual {v0, v1}, Landroidj/support/v4/media/MediaBrowserCompat$CallbackHandler;->setCallbacksMessenger(Landroid/os/Messenger;)V

    return-void
.end method

.method public onLoadChildren(Landroid/os/Messenger;Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;)V
    .registers 8

    iget-object v0, p0, Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi21;->mCallbacksMessenger:Landroid/os/Messenger;

    if-eq v0, p1, :cond_5

    :cond_4
    :goto_4
    return-void

    :cond_5
    iget-object v0, p0, Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi21;->mSubscriptions:Landroidj/support/v4/util/ArrayMap;

    invoke-virtual {v0, p2}, Landroidj/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidj/support/v4/media/MediaBrowserCompat$Subscription;

    if-nez v0, :cond_2c

    sget-boolean v0, Landroidj/support/v4/media/MediaBrowserCompat;->DEBUG:Z

    if-eqz v0, :cond_4

    const-string v0, "MediaBrowserCompat"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLoadChildren for id that isn\'t subscribed id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_2c
    invoke-virtual {v0, p4}, Landroidj/support/v4/media/MediaBrowserCompat$Subscription;->getCallback(Landroid/os/Bundle;)Landroidj/support/v4/media/MediaBrowserCompat$SubscriptionCallback;

    move-result-object v0

    if-eqz v0, :cond_4

    if-nez p4, :cond_3e

    if-nez p3, :cond_3a

    invoke-virtual {v0, p2}, Landroidj/support/v4/media/MediaBrowserCompat$SubscriptionCallback;->onError(Ljava/lang/String;)V

    goto :goto_4

    :cond_3a
    invoke-virtual {v0, p2, p3}, Landroidj/support/v4/media/MediaBrowserCompat$SubscriptionCallback;->onChildrenLoaded(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_4

    :cond_3e
    if-nez p3, :cond_44

    invoke-virtual {v0, p2, p4}, Landroidj/support/v4/media/MediaBrowserCompat$SubscriptionCallback;->onError(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_4

    :cond_44
    invoke-virtual {v0, p2, p3, p4}, Landroidj/support/v4/media/MediaBrowserCompat$SubscriptionCallback;->onChildrenLoaded(Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;)V

    goto :goto_4
.end method

.method public onServiceConnected(Landroid/os/Messenger;Ljava/lang/String;Landroidj/support/v4/media/session/MediaSessionCompat$Token;Landroid/os/Bundle;)V
    .registers 5

    return-void
.end method

.method public search(Ljava/lang/String;Landroid/os/Bundle;Landroidj/support/v4/media/MediaBrowserCompat$SearchCallback;)V
    .registers 8
    .param p1  # Ljava/lang/String;
        .annotation build Landroidj/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3  # Landroidj/support/v4/media/MediaBrowserCompat$SearchCallback;
        .annotation build Landroidj/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi21;->isConnected()Z

    move-result v0

    if-nez v0, :cond_e

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "search() called while not connected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    iget-object v0, p0, Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi21;->mServiceBinderWrapper:Landroidj/support/v4/media/MediaBrowserCompat$ServiceBinderWrapper;

    if-nez v0, :cond_24

    const-string v0, "MediaBrowserCompat"

    const-string v1, "The connected service doesn\'t support search."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi21;->mHandler:Landroidj/support/v4/media/MediaBrowserCompat$CallbackHandler;

    new-instance v1, Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi21$4;

    invoke-direct {v1, p0, p3, p1, p2}, Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi21$4;-><init>(Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi21;Landroidj/support/v4/media/MediaBrowserCompat$SearchCallback;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Landroidj/support/v4/media/MediaBrowserCompat$CallbackHandler;->post(Ljava/lang/Runnable;)Z

    :goto_23
    return-void

    :cond_24
    new-instance v0, Landroidj/support/v4/media/MediaBrowserCompat$SearchResultReceiver;

    iget-object v1, p0, Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi21;->mHandler:Landroidj/support/v4/media/MediaBrowserCompat$CallbackHandler;

    invoke-direct {v0, p1, p2, p3, v1}, Landroidj/support/v4/media/MediaBrowserCompat$SearchResultReceiver;-><init>(Ljava/lang/String;Landroid/os/Bundle;Landroidj/support/v4/media/MediaBrowserCompat$SearchCallback;Landroid/os/Handler;)V

    :try_start_2b
    iget-object v1, p0, Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi21;->mServiceBinderWrapper:Landroidj/support/v4/media/MediaBrowserCompat$ServiceBinderWrapper;

    iget-object v2, p0, Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi21;->mCallbacksMessenger:Landroid/os/Messenger;

    invoke-virtual {v1, p1, p2, v0, v2}, Landroidj/support/v4/media/MediaBrowserCompat$ServiceBinderWrapper;->search(Ljava/lang/String;Landroid/os/Bundle;Landroidj/support/v4/os/ResultReceiver;Landroid/os/Messenger;)V
    :try_end_32
    .catch Landroid/os/RemoteException; {:try_start_2b .. :try_end_32} :catch_33

    goto :goto_23

    :catch_33
    move-exception v0

    const-string v1, "MediaBrowserCompat"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Remote error searching items with query: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v0, p0, Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi21;->mHandler:Landroidj/support/v4/media/MediaBrowserCompat$CallbackHandler;

    new-instance v1, Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi21$5;

    invoke-direct {v1, p0, p3, p1, p2}, Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi21$5;-><init>(Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi21;Landroidj/support/v4/media/MediaBrowserCompat$SearchCallback;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Landroidj/support/v4/media/MediaBrowserCompat$CallbackHandler;->post(Ljava/lang/Runnable;)Z

    goto :goto_23
.end method

.method public sendCustomAction(Ljava/lang/String;Landroid/os/Bundle;Landroidj/support/v4/media/MediaBrowserCompat$CustomActionCallback;)V
    .registers 8

    invoke-virtual {p0}, Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi21;->isConnected()Z

    move-result v0

    if-nez v0, :cond_3b

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot send a custom action ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "extras "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " because the browser is not connected to the "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "service."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3b
    iget-object v0, p0, Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi21;->mServiceBinderWrapper:Landroidj/support/v4/media/MediaBrowserCompat$ServiceBinderWrapper;

    if-nez v0, :cond_50

    const-string v0, "MediaBrowserCompat"

    const-string v1, "The connected service doesn\'t support sendCustomAction."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi21;->mHandler:Landroidj/support/v4/media/MediaBrowserCompat$CallbackHandler;

    new-instance v1, Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi21$6;

    invoke-direct {v1, p0, p3, p1, p2}, Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi21$6;-><init>(Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi21;Landroidj/support/v4/media/MediaBrowserCompat$CustomActionCallback;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Landroidj/support/v4/media/MediaBrowserCompat$CallbackHandler;->post(Ljava/lang/Runnable;)Z

    :cond_50
    new-instance v0, Landroidj/support/v4/media/MediaBrowserCompat$CustomActionResultReceiver;

    iget-object v1, p0, Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi21;->mHandler:Landroidj/support/v4/media/MediaBrowserCompat$CallbackHandler;

    invoke-direct {v0, p1, p2, p3, v1}, Landroidj/support/v4/media/MediaBrowserCompat$CustomActionResultReceiver;-><init>(Ljava/lang/String;Landroid/os/Bundle;Landroidj/support/v4/media/MediaBrowserCompat$CustomActionCallback;Landroid/os/Handler;)V

    :try_start_57
    iget-object v1, p0, Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi21;->mServiceBinderWrapper:Landroidj/support/v4/media/MediaBrowserCompat$ServiceBinderWrapper;

    iget-object v2, p0, Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi21;->mCallbacksMessenger:Landroid/os/Messenger;

    invoke-virtual {v1, p1, p2, v0, v2}, Landroidj/support/v4/media/MediaBrowserCompat$ServiceBinderWrapper;->sendCustomAction(Ljava/lang/String;Landroid/os/Bundle;Landroidj/support/v4/os/ResultReceiver;Landroid/os/Messenger;)V
    :try_end_5e
    .catch Landroid/os/RemoteException; {:try_start_57 .. :try_end_5e} :catch_5f

    :goto_5e
    return-void

    :catch_5f
    move-exception v0

    const-string v1, "MediaBrowserCompat"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Remote error sending a custom action: action="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", extras="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v0, p0, Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi21;->mHandler:Landroidj/support/v4/media/MediaBrowserCompat$CallbackHandler;

    new-instance v1, Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi21$7;

    invoke-direct {v1, p0, p3, p1, p2}, Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi21$7;-><init>(Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi21;Landroidj/support/v4/media/MediaBrowserCompat$CustomActionCallback;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Landroidj/support/v4/media/MediaBrowserCompat$CallbackHandler;->post(Ljava/lang/Runnable;)Z

    goto :goto_5e
.end method

.method public subscribe(Ljava/lang/String;Landroid/os/Bundle;Landroidj/support/v4/media/MediaBrowserCompat$SubscriptionCallback;)V
    .registers 8
    .param p1  # Ljava/lang/String;
        .annotation build Landroidj/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3  # Landroidj/support/v4/media/MediaBrowserCompat$SubscriptionCallback;
        .annotation build Landroidj/support/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi21;->mSubscriptions:Landroidj/support/v4/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroidj/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidj/support/v4/media/MediaBrowserCompat$Subscription;

    if-nez v0, :cond_14

    new-instance v0, Landroidj/support/v4/media/MediaBrowserCompat$Subscription;

    invoke-direct {v0}, Landroidj/support/v4/media/MediaBrowserCompat$Subscription;-><init>()V

    iget-object v1, p0, Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi21;->mSubscriptions:Landroidj/support/v4/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroidj/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_14
    invoke-static {p3, v0}, Landroidj/support/v4/media/MediaBrowserCompat$SubscriptionCallback;->access$100(Landroidj/support/v4/media/MediaBrowserCompat$SubscriptionCallback;Landroidj/support/v4/media/MediaBrowserCompat$Subscription;)V

    if-nez p2, :cond_2b

    const/4 v1, 0x0

    :goto_1a
    invoke-virtual {v0, v1, p3}, Landroidj/support/v4/media/MediaBrowserCompat$Subscription;->putCallback(Landroid/os/Bundle;Landroidj/support/v4/media/MediaBrowserCompat$SubscriptionCallback;)V

    iget-object v0, p0, Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi21;->mServiceBinderWrapper:Landroidj/support/v4/media/MediaBrowserCompat$ServiceBinderWrapper;

    if-nez v0, :cond_31

    iget-object v0, p0, Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi21;->mBrowserObj:Ljava/lang/Object;

    invoke-static {p3}, Landroidj/support/v4/media/MediaBrowserCompat$SubscriptionCallback;->access$200(Landroidj/support/v4/media/MediaBrowserCompat$SubscriptionCallback;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, p1, v1}, Landroidj/support/v4/media/MediaBrowserCompatApi21;->subscribe(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_2a
    return-void

    :cond_2b
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1, p2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    goto :goto_1a

    :cond_31
    :try_start_31
    iget-object v0, p0, Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi21;->mServiceBinderWrapper:Landroidj/support/v4/media/MediaBrowserCompat$ServiceBinderWrapper;

    invoke-static {p3}, Landroidj/support/v4/media/MediaBrowserCompat$SubscriptionCallback;->access$000(Landroidj/support/v4/media/MediaBrowserCompat$SubscriptionCallback;)Landroid/os/IBinder;

    move-result-object v2

    iget-object v3, p0, Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi21;->mCallbacksMessenger:Landroid/os/Messenger;

    invoke-virtual {v0, p1, v2, v1, v3}, Landroidj/support/v4/media/MediaBrowserCompat$ServiceBinderWrapper;->addSubscription(Ljava/lang/String;Landroid/os/IBinder;Landroid/os/Bundle;Landroid/os/Messenger;)V
    :try_end_3c
    .catch Landroid/os/RemoteException; {:try_start_31 .. :try_end_3c} :catch_3d

    goto :goto_2a

    :catch_3d
    move-exception v0

    const-string v0, "MediaBrowserCompat"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Remote error subscribing media item: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2a
.end method

.method public unsubscribe(Ljava/lang/String;Landroidj/support/v4/media/MediaBrowserCompat$SubscriptionCallback;)V
    .registers 10
    .param p1  # Ljava/lang/String;
        .annotation build Landroidj/support/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi21;->mSubscriptions:Landroidj/support/v4/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroidj/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidj/support/v4/media/MediaBrowserCompat$Subscription;

    if-nez v0, :cond_b

    :cond_a
    :goto_a
    return-void

    :cond_b
    iget-object v1, p0, Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi21;->mServiceBinderWrapper:Landroidj/support/v4/media/MediaBrowserCompat$ServiceBinderWrapper;

    if-nez v1, :cond_4f

    if-nez p2, :cond_24

    iget-object v1, p0, Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi21;->mBrowserObj:Ljava/lang/Object;

    invoke-static {v1, p1}, Landroidj/support/v4/media/MediaBrowserCompatApi21;->unsubscribe(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_16
    :goto_16
    invoke-virtual {v0}, Landroidj/support/v4/media/MediaBrowserCompat$Subscription;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1e

    if-nez p2, :cond_a

    :cond_1e
    iget-object v0, p0, Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi21;->mSubscriptions:Landroidj/support/v4/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroidj/support/v4/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a

    :cond_24
    invoke-virtual {v0}, Landroidj/support/v4/media/MediaBrowserCompat$Subscription;->getCallbacks()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0}, Landroidj/support/v4/media/MediaBrowserCompat$Subscription;->getOptionsList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_32
    if-ltz v1, :cond_43

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, p2, :cond_40

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-interface {v3, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_40
    add-int/lit8 v1, v1, -0x1

    goto :goto_32

    :cond_43
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_16

    iget-object v1, p0, Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi21;->mBrowserObj:Ljava/lang/Object;

    invoke-static {v1, p1}, Landroidj/support/v4/media/MediaBrowserCompatApi21;->unsubscribe(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_16

    :cond_4f
    if-nez p2, :cond_74

    :try_start_51
    iget-object v1, p0, Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi21;->mServiceBinderWrapper:Landroidj/support/v4/media/MediaBrowserCompat$ServiceBinderWrapper;

    const/4 v2, 0x0

    iget-object v3, p0, Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi21;->mCallbacksMessenger:Landroid/os/Messenger;

    invoke-virtual {v1, p1, v2, v3}, Landroidj/support/v4/media/MediaBrowserCompat$ServiceBinderWrapper;->removeSubscription(Ljava/lang/String;Landroid/os/IBinder;Landroid/os/Messenger;)V
    :try_end_59
    .catch Landroid/os/RemoteException; {:try_start_51 .. :try_end_59} :catch_5a

    goto :goto_16

    :catch_5a
    move-exception v1

    const-string v1, "MediaBrowserCompat"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removeSubscription failed with RemoteException parentId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_16

    :cond_74
    :try_start_74
    invoke-virtual {v0}, Landroidj/support/v4/media/MediaBrowserCompat$Subscription;->getCallbacks()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0}, Landroidj/support/v4/media/MediaBrowserCompat$Subscription;->getOptionsList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_82
    if-ltz v1, :cond_16

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, p2, :cond_9b

    iget-object v4, p0, Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi21;->mServiceBinderWrapper:Landroidj/support/v4/media/MediaBrowserCompat$ServiceBinderWrapper;

    invoke-static {p2}, Landroidj/support/v4/media/MediaBrowserCompat$SubscriptionCallback;->access$000(Landroidj/support/v4/media/MediaBrowserCompat$SubscriptionCallback;)Landroid/os/IBinder;

    move-result-object v5

    iget-object v6, p0, Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi21;->mCallbacksMessenger:Landroid/os/Messenger;

    invoke-virtual {v4, p1, v5, v6}, Landroidj/support/v4/media/MediaBrowserCompat$ServiceBinderWrapper;->removeSubscription(Ljava/lang/String;Landroid/os/IBinder;Landroid/os/Messenger;)V

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-interface {v3, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_9b
    .catch Landroid/os/RemoteException; {:try_start_74 .. :try_end_9b} :catch_5a

    :cond_9b
    add-int/lit8 v1, v1, -0x1

    goto :goto_82
.end method
