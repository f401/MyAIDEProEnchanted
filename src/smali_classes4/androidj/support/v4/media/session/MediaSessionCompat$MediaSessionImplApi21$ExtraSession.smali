.class Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21$ExtraSession;
.super Landroidj/support/v4/media/session/IMediaSession$Stub;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidj/support/v4/media/session/MediaSessionCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ExtraSession"
.end annotation


# instance fields
.field final this$0:Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;


# direct methods
.method constructor <init>(Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;)V
    .registers 2

    iput-object p1, p0, Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21$ExtraSession;->this$0:Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;

    invoke-direct {p0}, Landroidj/support/v4/media/session/IMediaSession$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public addQueueItem(Landroidj/support/v4/media/MediaDescriptionCompat;)V
    .registers 3

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public addQueueItemAt(Landroidj/support/v4/media/MediaDescriptionCompat;I)V
    .registers 4

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public adjustVolume(IILjava/lang/String;)V
    .registers 5

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public fastForward()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .registers 2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public getFlags()J
    .registers 2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public getLaunchPendingIntent()Landroid/app/PendingIntent;
    .registers 2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public getMetadata()Landroidj/support/v4/media/MediaMetadataCompat;
    .registers 2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public getPlaybackState()Landroidj/support/v4/media/session/PlaybackStateCompat;
    .registers 3

    iget-object v0, p0, Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21$ExtraSession;->this$0:Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;

    invoke-static {v0}, Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;->access$400(Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;)Landroidj/support/v4/media/session/PlaybackStateCompat;

    move-result-object v0

    iget-object v1, p0, Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21$ExtraSession;->this$0:Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;

    invoke-static {v1}, Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;->access$500(Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;)Landroidj/support/v4/media/MediaMetadataCompat;

    move-result-object v1

    invoke-static {v0, v1}, Landroidj/support/v4/media/session/MediaSessionCompat;->access$100(Landroidj/support/v4/media/session/PlaybackStateCompat;Landroidj/support/v4/media/MediaMetadataCompat;)Landroidj/support/v4/media/session/PlaybackStateCompat;

    move-result-object v0

    return-object v0
.end method

.method public getQueue()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroidj/support/v4/media/session/MediaSessionCompat$QueueItem;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getQueueTitle()Ljava/lang/CharSequence;
    .registers 2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public getRatingType()I
    .registers 2

    iget-object v0, p0, Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21$ExtraSession;->this$0:Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;

    iget v0, v0, Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;->mRatingType:I

    return v0
.end method

.method public getRepeatMode()I
    .registers 2

    iget-object v0, p0, Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21$ExtraSession;->this$0:Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;

    iget v0, v0, Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;->mRepeatMode:I

    return v0
.end method

.method public getTag()Ljava/lang/String;
    .registers 2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public getVolumeAttributes()Landroidj/support/v4/media/session/ParcelableVolumeInfo;
    .registers 2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public isCaptioningEnabled()Z
    .registers 2

    iget-object v0, p0, Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21$ExtraSession;->this$0:Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;

    iget-boolean v0, v0, Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;->mCaptioningEnabled:Z

    return v0
.end method

.method public isShuffleModeEnabled()Z
    .registers 2

    iget-object v0, p0, Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21$ExtraSession;->this$0:Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;

    iget-boolean v0, v0, Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;->mShuffleModeEnabled:Z

    return v0
.end method

.method public isTransportControlEnabled()Z
    .registers 2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public next()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public pause()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public play()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public playFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public playFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public playFromUri(Landroid/net/Uri;Landroid/os/Bundle;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public prepare()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public prepareFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public prepareFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public prepareFromUri(Landroid/net/Uri;Landroid/os/Bundle;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public previous()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public rate(Landroidj/support/v4/media/RatingCompat;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public registerCallbackListener(Landroidj/support/v4/media/session/IMediaControllerCallback;)V
    .registers 3

    iget-object v0, p0, Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21$ExtraSession;->this$0:Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;

    invoke-static {v0}, Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;->access$200(Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;)Z

    move-result v0

    if-nez v0, :cond_11

    iget-object v0, p0, Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21$ExtraSession;->this$0:Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;

    invoke-static {v0}, Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;->access$300(Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    :cond_11
    return-void
.end method

.method public removeQueueItem(Landroidj/support/v4/media/MediaDescriptionCompat;)V
    .registers 3

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public removeQueueItemAt(I)V
    .registers 3

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public rewind()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public seekTo(J)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public sendCommand(Ljava/lang/String;Landroid/os/Bundle;Landroidj/support/v4/media/session/MediaSessionCompat$ResultReceiverWrapper;)V
    .registers 5

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public sendCustomAction(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public sendMediaButton(Landroid/view/KeyEvent;)Z
    .registers 3

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public setCaptioningEnabled(Z)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public setRepeatMode(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public setShuffleModeEnabled(Z)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public setVolumeTo(IILjava/lang/String;)V
    .registers 5

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public skipToQueueItem(J)V
    .registers 4

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public stop()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public unregisterCallbackListener(Landroidj/support/v4/media/session/IMediaControllerCallback;)V
    .registers 3

    iget-object v0, p0, Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21$ExtraSession;->this$0:Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;

    invoke-static {v0}, Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;->access$300(Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    return-void
.end method
