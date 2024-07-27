.class Landroidj/support/v4/media/session/MediaControllerCompat$MediaControllerImplBase;
.super Ljava/lang/Object;

# interfaces
.implements Landroidj/support/v4/media/session/MediaControllerCompat$MediaControllerImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidj/support/v4/media/session/MediaControllerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MediaControllerImplBase"
.end annotation


# instance fields
.field private mBinder:Landroidj/support/v4/media/session/IMediaSession;

.field private mTransportControls:Landroidj/support/v4/media/session/MediaControllerCompat$TransportControls;


# direct methods
.method public constructor <init>(Landroidj/support/v4/media/session/MediaSessionCompat$Token;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroidj/support/v4/media/session/MediaSessionCompat$Token;->getToken()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    invoke-static {v0}, Landroidj/support/v4/media/session/IMediaSession$Stub;->asInterface(Landroid/os/IBinder;)Landroidj/support/v4/media/session/IMediaSession;

    move-result-object v0

    iput-object v0, p0, Landroidj/support/v4/media/session/MediaControllerCompat$MediaControllerImplBase;->mBinder:Landroidj/support/v4/media/session/IMediaSession;

    return-void
.end method


# virtual methods
.method public addQueueItem(Landroidj/support/v4/media/MediaDescriptionCompat;)V
    .registers 6

    :try_start_0
    iget-object v0, p0, Landroidj/support/v4/media/session/MediaControllerCompat$MediaControllerImplBase;->mBinder:Landroidj/support/v4/media/session/IMediaSession;

    invoke-interface {v0}, Landroidj/support/v4/media/session/IMediaSession;->getFlags()J

    move-result-wide v0

    const-wide/16 v2, 0x4

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This session doesn\'t support queue management operations"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    const-string v1, "MediaControllerCompat"

    const-string v2, "Dead object in addQueueItem."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Landroidj/support/v4/media/session/MediaControllerCompat$MediaControllerImplBase;->mBinder:Landroidj/support/v4/media/session/IMediaSession;

    invoke-interface {v0, p1}, Landroidj/support/v4/media/session/IMediaSession;->addQueueItem(Landroidj/support/v4/media/MediaDescriptionCompat;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public addQueueItem(Landroidj/support/v4/media/MediaDescriptionCompat;I)V
    .registers 7

    :try_start_0
    iget-object v0, p0, Landroidj/support/v4/media/session/MediaControllerCompat$MediaControllerImplBase;->mBinder:Landroidj/support/v4/media/session/IMediaSession;

    invoke-interface {v0}, Landroidj/support/v4/media/session/IMediaSession;->getFlags()J

    move-result-wide v0

    const-wide/16 v2, 0x4

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This session doesn\'t support queue management operations"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    const-string v1, "MediaControllerCompat"

    const-string v2, "Dead object in addQueueItemAt."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Landroidj/support/v4/media/session/MediaControllerCompat$MediaControllerImplBase;->mBinder:Landroidj/support/v4/media/session/IMediaSession;

    invoke-interface {v0, p1, p2}, Landroidj/support/v4/media/session/IMediaSession;->addQueueItemAt(Landroidj/support/v4/media/MediaDescriptionCompat;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public adjustVolume(II)V
    .registers 6

    :try_start_0
    iget-object v0, p0, Landroidj/support/v4/media/session/MediaControllerCompat$MediaControllerImplBase;->mBinder:Landroidj/support/v4/media/session/IMediaSession;

    const/4 v1, 0x0

    invoke-interface {v0, p1, p2, v1}, Landroidj/support/v4/media/session/IMediaSession;->adjustVolume(IILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "MediaControllerCompat"

    const-string v2, "Dead object in adjustVolume."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public dispatchMediaButtonEvent(Landroid/view/KeyEvent;)Z
    .registers 5

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "event may not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    :try_start_0
    iget-object v0, p0, Landroidj/support/v4/media/session/MediaControllerCompat$MediaControllerImplBase;->mBinder:Landroidj/support/v4/media/session/IMediaSession;

    invoke-interface {v0, p1}, Landroidj/support/v4/media/session/IMediaSession;->sendMediaButton(Landroid/view/KeyEvent;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v0, 0x0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "MediaControllerCompat"

    const-string v2, "Dead object in dispatchMediaButtonEvent."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getExtras()Landroid/os/Bundle;
    .registers 4

    :try_start_0
    iget-object v0, p0, Landroidj/support/v4/media/session/MediaControllerCompat$MediaControllerImplBase;->mBinder:Landroidj/support/v4/media/session/IMediaSession;

    invoke-interface {v0}, Landroidj/support/v4/media/session/IMediaSession;->getExtras()Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "MediaControllerCompat"

    const-string v2, "Dead object in getExtras."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFlags()J
    .registers 4

    :try_start_0
    iget-object v0, p0, Landroidj/support/v4/media/session/MediaControllerCompat$MediaControllerImplBase;->mBinder:Landroidj/support/v4/media/session/IMediaSession;

    invoke-interface {v0}, Landroidj/support/v4/media/session/IMediaSession;->getFlags()J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    :goto_0
    return-wide v0

    :catch_0
    move-exception v0

    const-string v1, "MediaControllerCompat"

    const-string v2, "Dead object in getFlags."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public getMediaController()Ljava/lang/Object;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getMetadata()Landroidj/support/v4/media/MediaMetadataCompat;
    .registers 4

    :try_start_0
    iget-object v0, p0, Landroidj/support/v4/media/session/MediaControllerCompat$MediaControllerImplBase;->mBinder:Landroidj/support/v4/media/session/IMediaSession;

    invoke-interface {v0}, Landroidj/support/v4/media/session/IMediaSession;->getMetadata()Landroidj/support/v4/media/MediaMetadataCompat;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "MediaControllerCompat"

    const-string v2, "Dead object in getMetadata."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 4

    :try_start_0
    iget-object v0, p0, Landroidj/support/v4/media/session/MediaControllerCompat$MediaControllerImplBase;->mBinder:Landroidj/support/v4/media/session/IMediaSession;

    invoke-interface {v0}, Landroidj/support/v4/media/session/IMediaSession;->getPackageName()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "MediaControllerCompat"

    const-string v2, "Dead object in getPackageName."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPlaybackInfo()Landroidj/support/v4/media/session/MediaControllerCompat$PlaybackInfo;
    .registers 7

    :try_start_0
    iget-object v0, p0, Landroidj/support/v4/media/session/MediaControllerCompat$MediaControllerImplBase;->mBinder:Landroidj/support/v4/media/session/IMediaSession;

    invoke-interface {v0}, Landroidj/support/v4/media/session/IMediaSession;->getVolumeAttributes()Landroidj/support/v4/media/session/ParcelableVolumeInfo;

    move-result-object v5

    new-instance v0, Landroidj/support/v4/media/session/MediaControllerCompat$PlaybackInfo;

    iget v1, v5, Landroidj/support/v4/media/session/ParcelableVolumeInfo;->volumeType:I

    iget v2, v5, Landroidj/support/v4/media/session/ParcelableVolumeInfo;->audioStream:I

    iget v3, v5, Landroidj/support/v4/media/session/ParcelableVolumeInfo;->controlType:I

    iget v4, v5, Landroidj/support/v4/media/session/ParcelableVolumeInfo;->maxVolume:I

    iget v5, v5, Landroidj/support/v4/media/session/ParcelableVolumeInfo;->currentVolume:I

    invoke-direct/range {v0 .. v5}, Landroidj/support/v4/media/session/MediaControllerCompat$PlaybackInfo;-><init>(IIIII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "MediaControllerCompat"

    const-string v2, "Dead object in getPlaybackInfo."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPlaybackState()Landroidj/support/v4/media/session/PlaybackStateCompat;
    .registers 4

    :try_start_0
    iget-object v0, p0, Landroidj/support/v4/media/session/MediaControllerCompat$MediaControllerImplBase;->mBinder:Landroidj/support/v4/media/session/IMediaSession;

    invoke-interface {v0}, Landroidj/support/v4/media/session/IMediaSession;->getPlaybackState()Landroidj/support/v4/media/session/PlaybackStateCompat;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "MediaControllerCompat"

    const-string v2, "Dead object in getPlaybackState."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getQueue()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroidj/support/v4/media/session/MediaSessionCompat$QueueItem;",
            ">;"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroidj/support/v4/media/session/MediaControllerCompat$MediaControllerImplBase;->mBinder:Landroidj/support/v4/media/session/IMediaSession;

    invoke-interface {v0}, Landroidj/support/v4/media/session/IMediaSession;->getQueue()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "MediaControllerCompat"

    const-string v2, "Dead object in getQueue."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getQueueTitle()Ljava/lang/CharSequence;
    .registers 4

    :try_start_0
    iget-object v0, p0, Landroidj/support/v4/media/session/MediaControllerCompat$MediaControllerImplBase;->mBinder:Landroidj/support/v4/media/session/IMediaSession;

    invoke-interface {v0}, Landroidj/support/v4/media/session/IMediaSession;->getQueueTitle()Ljava/lang/CharSequence;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "MediaControllerCompat"

    const-string v2, "Dead object in getQueueTitle."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getRatingType()I
    .registers 4

    :try_start_0
    iget-object v0, p0, Landroidj/support/v4/media/session/MediaControllerCompat$MediaControllerImplBase;->mBinder:Landroidj/support/v4/media/session/IMediaSession;

    invoke-interface {v0}, Landroidj/support/v4/media/session/IMediaSession;->getRatingType()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const-string v1, "MediaControllerCompat"

    const-string v2, "Dead object in getRatingType."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getRepeatMode()I
    .registers 4

    :try_start_0
    iget-object v0, p0, Landroidj/support/v4/media/session/MediaControllerCompat$MediaControllerImplBase;->mBinder:Landroidj/support/v4/media/session/IMediaSession;

    invoke-interface {v0}, Landroidj/support/v4/media/session/IMediaSession;->getRepeatMode()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const-string v1, "MediaControllerCompat"

    const-string v2, "Dead object in getRepeatMode."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSessionActivity()Landroid/app/PendingIntent;
    .registers 4

    :try_start_0
    iget-object v0, p0, Landroidj/support/v4/media/session/MediaControllerCompat$MediaControllerImplBase;->mBinder:Landroidj/support/v4/media/session/IMediaSession;

    invoke-interface {v0}, Landroidj/support/v4/media/session/IMediaSession;->getLaunchPendingIntent()Landroid/app/PendingIntent;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "MediaControllerCompat"

    const-string v2, "Dead object in getSessionActivity."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTransportControls()Landroidj/support/v4/media/session/MediaControllerCompat$TransportControls;
    .registers 3

    iget-object v0, p0, Landroidj/support/v4/media/session/MediaControllerCompat$MediaControllerImplBase;->mTransportControls:Landroidj/support/v4/media/session/MediaControllerCompat$TransportControls;

    if-nez v0, :cond_0

    new-instance v0, Landroidj/support/v4/media/session/MediaControllerCompat$TransportControlsBase;

    iget-object v1, p0, Landroidj/support/v4/media/session/MediaControllerCompat$MediaControllerImplBase;->mBinder:Landroidj/support/v4/media/session/IMediaSession;

    invoke-direct {v0, v1}, Landroidj/support/v4/media/session/MediaControllerCompat$TransportControlsBase;-><init>(Landroidj/support/v4/media/session/IMediaSession;)V

    iput-object v0, p0, Landroidj/support/v4/media/session/MediaControllerCompat$MediaControllerImplBase;->mTransportControls:Landroidj/support/v4/media/session/MediaControllerCompat$TransportControls;

    :cond_0
    iget-object v0, p0, Landroidj/support/v4/media/session/MediaControllerCompat$MediaControllerImplBase;->mTransportControls:Landroidj/support/v4/media/session/MediaControllerCompat$TransportControls;

    return-object v0
.end method

.method public isCaptioningEnabled()Z
    .registers 4

    :try_start_0
    iget-object v0, p0, Landroidj/support/v4/media/session/MediaControllerCompat$MediaControllerImplBase;->mBinder:Landroidj/support/v4/media/session/IMediaSession;

    invoke-interface {v0}, Landroidj/support/v4/media/session/IMediaSession;->isCaptioningEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const-string v1, "MediaControllerCompat"

    const-string v2, "Dead object in isCaptioningEnabled."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isShuffleModeEnabled()Z
    .registers 4

    :try_start_0
    iget-object v0, p0, Landroidj/support/v4/media/session/MediaControllerCompat$MediaControllerImplBase;->mBinder:Landroidj/support/v4/media/session/IMediaSession;

    invoke-interface {v0}, Landroidj/support/v4/media/session/IMediaSession;->isShuffleModeEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const-string v1, "MediaControllerCompat"

    const-string v2, "Dead object in isShuffleModeEnabled."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public registerCallback(Landroidj/support/v4/media/session/MediaControllerCompat$Callback;Landroid/os/Handler;)V
    .registers 6

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "callback may not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    :try_start_0
    iget-object v0, p0, Landroidj/support/v4/media/session/MediaControllerCompat$MediaControllerImplBase;->mBinder:Landroidj/support/v4/media/session/IMediaSession;

    invoke-interface {v0}, Landroidj/support/v4/media/session/IMediaSession;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    iget-object v1, p0, Landroidj/support/v4/media/session/MediaControllerCompat$MediaControllerImplBase;->mBinder:Landroidj/support/v4/media/session/IMediaSession;

    invoke-static {p1}, Landroidj/support/v4/media/session/MediaControllerCompat$Callback;->access$000(Landroidj/support/v4/media/session/MediaControllerCompat$Callback;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidj/support/v4/media/session/IMediaControllerCallback;

    invoke-interface {v1, v0}, Landroidj/support/v4/media/session/IMediaSession;->registerCallbackListener(Landroidj/support/v4/media/session/IMediaControllerCallback;)V

    invoke-static {p1, p2}, Landroidj/support/v4/media/session/MediaControllerCompat$Callback;->access$100(Landroidj/support/v4/media/session/MediaControllerCompat$Callback;Landroid/os/Handler;)V

    const/4 v0, 0x1

    iput-boolean v0, p1, Landroidj/support/v4/media/session/MediaControllerCompat$Callback;->mRegistered:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "MediaControllerCompat"

    const-string v2, "Dead object in registerCallback."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {p1}, Landroidj/support/v4/media/session/MediaControllerCompat$Callback;->onSessionDestroyed()V

    goto :goto_0
.end method

.method public removeQueueItem(Landroidj/support/v4/media/MediaDescriptionCompat;)V
    .registers 6

    :try_start_0
    iget-object v0, p0, Landroidj/support/v4/media/session/MediaControllerCompat$MediaControllerImplBase;->mBinder:Landroidj/support/v4/media/session/IMediaSession;

    invoke-interface {v0}, Landroidj/support/v4/media/session/IMediaSession;->getFlags()J

    move-result-wide v0

    const-wide/16 v2, 0x4

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This session doesn\'t support queue management operations"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    const-string v1, "MediaControllerCompat"

    const-string v2, "Dead object in removeQueueItem."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Landroidj/support/v4/media/session/MediaControllerCompat$MediaControllerImplBase;->mBinder:Landroidj/support/v4/media/session/IMediaSession;

    invoke-interface {v0, p1}, Landroidj/support/v4/media/session/IMediaSession;->removeQueueItem(Landroidj/support/v4/media/MediaDescriptionCompat;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public removeQueueItemAt(I)V
    .registers 6

    :try_start_0
    iget-object v0, p0, Landroidj/support/v4/media/session/MediaControllerCompat$MediaControllerImplBase;->mBinder:Landroidj/support/v4/media/session/IMediaSession;

    invoke-interface {v0}, Landroidj/support/v4/media/session/IMediaSession;->getFlags()J

    move-result-wide v0

    const-wide/16 v2, 0x4

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This session doesn\'t support queue management operations"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    const-string v1, "MediaControllerCompat"

    const-string v2, "Dead object in removeQueueItemAt."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Landroidj/support/v4/media/session/MediaControllerCompat$MediaControllerImplBase;->mBinder:Landroidj/support/v4/media/session/IMediaSession;

    invoke-interface {v0, p1}, Landroidj/support/v4/media/session/IMediaSession;->removeQueueItemAt(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public sendCommand(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V
    .registers 7

    :try_start_0
    iget-object v0, p0, Landroidj/support/v4/media/session/MediaControllerCompat$MediaControllerImplBase;->mBinder:Landroidj/support/v4/media/session/IMediaSession;

    new-instance v1, Landroidj/support/v4/media/session/MediaSessionCompat$ResultReceiverWrapper;

    invoke-direct {v1, p3}, Landroidj/support/v4/media/session/MediaSessionCompat$ResultReceiverWrapper;-><init>(Landroid/os/ResultReceiver;)V

    invoke-interface {v0, p1, p2, v1}, Landroidj/support/v4/media/session/IMediaSession;->sendCommand(Ljava/lang/String;Landroid/os/Bundle;Landroidj/support/v4/media/session/MediaSessionCompat$ResultReceiverWrapper;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "MediaControllerCompat"

    const-string v2, "Dead object in sendCommand."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setVolumeTo(II)V
    .registers 6

    :try_start_0
    iget-object v0, p0, Landroidj/support/v4/media/session/MediaControllerCompat$MediaControllerImplBase;->mBinder:Landroidj/support/v4/media/session/IMediaSession;

    const/4 v1, 0x0

    invoke-interface {v0, p1, p2, v1}, Landroidj/support/v4/media/session/IMediaSession;->setVolumeTo(IILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "MediaControllerCompat"

    const-string v2, "Dead object in setVolumeTo."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public unregisterCallback(Landroidj/support/v4/media/session/MediaControllerCompat$Callback;)V
    .registers 5

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "callback may not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    :try_start_0
    iget-object v1, p0, Landroidj/support/v4/media/session/MediaControllerCompat$MediaControllerImplBase;->mBinder:Landroidj/support/v4/media/session/IMediaSession;

    invoke-static {p1}, Landroidj/support/v4/media/session/MediaControllerCompat$Callback;->access$000(Landroidj/support/v4/media/session/MediaControllerCompat$Callback;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidj/support/v4/media/session/IMediaControllerCallback;

    invoke-interface {v1, v0}, Landroidj/support/v4/media/session/IMediaSession;->unregisterCallbackListener(Landroidj/support/v4/media/session/IMediaControllerCallback;)V

    iget-object v0, p0, Landroidj/support/v4/media/session/MediaControllerCompat$MediaControllerImplBase;->mBinder:Landroidj/support/v4/media/session/IMediaSession;

    invoke-interface {v0}, Landroidj/support/v4/media/session/IMediaSession;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    const/4 v0, 0x0

    iput-boolean v0, p1, Landroidj/support/v4/media/session/MediaControllerCompat$Callback;->mRegistered:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "MediaControllerCompat"

    const-string v2, "Dead object in unregisterCallback."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
