.class interface abstract Landroidj/support/v4/media/session/MediaControllerCompat$MediaControllerImpl;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidj/support/v4/media/session/MediaControllerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "MediaControllerImpl"
.end annotation


# virtual methods
.method public abstract addQueueItem(Landroidj/support/v4/media/MediaDescriptionCompat;)V
.end method

.method public abstract addQueueItem(Landroidj/support/v4/media/MediaDescriptionCompat;I)V
.end method

.method public abstract adjustVolume(II)V
.end method

.method public abstract dispatchMediaButtonEvent(Landroid/view/KeyEvent;)Z
.end method

.method public abstract getExtras()Landroid/os/Bundle;
.end method

.method public abstract getFlags()J
.end method

.method public abstract getMediaController()Ljava/lang/Object;
.end method

.method public abstract getMetadata()Landroidj/support/v4/media/MediaMetadataCompat;
.end method

.method public abstract getPackageName()Ljava/lang/String;
.end method

.method public abstract getPlaybackInfo()Landroidj/support/v4/media/session/MediaControllerCompat$PlaybackInfo;
.end method

.method public abstract getPlaybackState()Landroidj/support/v4/media/session/PlaybackStateCompat;
.end method

.method public abstract getQueue()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroidj/support/v4/media/session/MediaSessionCompat$QueueItem;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getQueueTitle()Ljava/lang/CharSequence;
.end method

.method public abstract getRatingType()I
.end method

.method public abstract getRepeatMode()I
.end method

.method public abstract getSessionActivity()Landroid/app/PendingIntent;
.end method

.method public abstract getTransportControls()Landroidj/support/v4/media/session/MediaControllerCompat$TransportControls;
.end method

.method public abstract isCaptioningEnabled()Z
.end method

.method public abstract isShuffleModeEnabled()Z
.end method

.method public abstract registerCallback(Landroidj/support/v4/media/session/MediaControllerCompat$Callback;Landroid/os/Handler;)V
.end method

.method public abstract removeQueueItem(Landroidj/support/v4/media/MediaDescriptionCompat;)V
.end method

.method public abstract removeQueueItemAt(I)V
.end method

.method public abstract sendCommand(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V
.end method

.method public abstract setVolumeTo(II)V
.end method

.method public abstract unregisterCallback(Landroidj/support/v4/media/session/MediaControllerCompat$Callback;)V
.end method
