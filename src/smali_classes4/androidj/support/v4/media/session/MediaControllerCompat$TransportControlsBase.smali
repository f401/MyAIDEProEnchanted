.class Landroidj/support/v4/media/session/MediaControllerCompat$TransportControlsBase;
.super Landroidj/support/v4/media/session/MediaControllerCompat$TransportControls;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidj/support/v4/media/session/MediaControllerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TransportControlsBase"
.end annotation


# instance fields
.field private mBinder:Landroidj/support/v4/media/session/IMediaSession;


# direct methods
.method public constructor <init>(Landroidj/support/v4/media/session/IMediaSession;)V
    .registers 2

    invoke-direct {p0}, Landroidj/support/v4/media/session/MediaControllerCompat$TransportControls;-><init>()V

    iput-object p1, p0, Landroidj/support/v4/media/session/MediaControllerCompat$TransportControlsBase;->mBinder:Landroidj/support/v4/media/session/IMediaSession;

    return-void
.end method


# virtual methods
.method public fastForward()V
    .registers 4

    :try_start_0
    iget-object v0, p0, Landroidj/support/v4/media/session/MediaControllerCompat$TransportControlsBase;->mBinder:Landroidj/support/v4/media/session/IMediaSession;

    invoke-interface {v0}, Landroidj/support/v4/media/session/IMediaSession;->fastForward()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    :goto_5
    return-void

    :catch_6
    move-exception v0

    const-string v1, "MediaControllerCompat"

    const-string v2, "Dead object in fastForward."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5
.end method

.method public pause()V
    .registers 4

    :try_start_0
    iget-object v0, p0, Landroidj/support/v4/media/session/MediaControllerCompat$TransportControlsBase;->mBinder:Landroidj/support/v4/media/session/IMediaSession;

    invoke-interface {v0}, Landroidj/support/v4/media/session/IMediaSession;->pause()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    :goto_5
    return-void

    :catch_6
    move-exception v0

    const-string v1, "MediaControllerCompat"

    const-string v2, "Dead object in pause."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5
.end method

.method public play()V
    .registers 4

    :try_start_0
    iget-object v0, p0, Landroidj/support/v4/media/session/MediaControllerCompat$TransportControlsBase;->mBinder:Landroidj/support/v4/media/session/IMediaSession;

    invoke-interface {v0}, Landroidj/support/v4/media/session/IMediaSession;->play()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    :goto_5
    return-void

    :catch_6
    move-exception v0

    const-string v1, "MediaControllerCompat"

    const-string v2, "Dead object in play."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5
.end method

.method public playFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 6

    :try_start_0
    iget-object v0, p0, Landroidj/support/v4/media/session/MediaControllerCompat$TransportControlsBase;->mBinder:Landroidj/support/v4/media/session/IMediaSession;

    invoke-interface {v0, p1, p2}, Landroidj/support/v4/media/session/IMediaSession;->playFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    :goto_5
    return-void

    :catch_6
    move-exception v0

    const-string v1, "MediaControllerCompat"

    const-string v2, "Dead object in playFromMediaId."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5
.end method

.method public playFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 6

    :try_start_0
    iget-object v0, p0, Landroidj/support/v4/media/session/MediaControllerCompat$TransportControlsBase;->mBinder:Landroidj/support/v4/media/session/IMediaSession;

    invoke-interface {v0, p1, p2}, Landroidj/support/v4/media/session/IMediaSession;->playFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    :goto_5
    return-void

    :catch_6
    move-exception v0

    const-string v1, "MediaControllerCompat"

    const-string v2, "Dead object in playFromSearch."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5
.end method

.method public playFromUri(Landroid/net/Uri;Landroid/os/Bundle;)V
    .registers 6

    :try_start_0
    iget-object v0, p0, Landroidj/support/v4/media/session/MediaControllerCompat$TransportControlsBase;->mBinder:Landroidj/support/v4/media/session/IMediaSession;

    invoke-interface {v0, p1, p2}, Landroidj/support/v4/media/session/IMediaSession;->playFromUri(Landroid/net/Uri;Landroid/os/Bundle;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    :goto_5
    return-void

    :catch_6
    move-exception v0

    const-string v1, "MediaControllerCompat"

    const-string v2, "Dead object in playFromUri."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5
.end method

.method public prepare()V
    .registers 4

    :try_start_0
    iget-object v0, p0, Landroidj/support/v4/media/session/MediaControllerCompat$TransportControlsBase;->mBinder:Landroidj/support/v4/media/session/IMediaSession;

    invoke-interface {v0}, Landroidj/support/v4/media/session/IMediaSession;->prepare()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    :goto_5
    return-void

    :catch_6
    move-exception v0

    const-string v1, "MediaControllerCompat"

    const-string v2, "Dead object in prepare."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5
.end method

.method public prepareFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 6

    :try_start_0
    iget-object v0, p0, Landroidj/support/v4/media/session/MediaControllerCompat$TransportControlsBase;->mBinder:Landroidj/support/v4/media/session/IMediaSession;

    invoke-interface {v0, p1, p2}, Landroidj/support/v4/media/session/IMediaSession;->prepareFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    :goto_5
    return-void

    :catch_6
    move-exception v0

    const-string v1, "MediaControllerCompat"

    const-string v2, "Dead object in prepareFromMediaId."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5
.end method

.method public prepareFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 6

    :try_start_0
    iget-object v0, p0, Landroidj/support/v4/media/session/MediaControllerCompat$TransportControlsBase;->mBinder:Landroidj/support/v4/media/session/IMediaSession;

    invoke-interface {v0, p1, p2}, Landroidj/support/v4/media/session/IMediaSession;->prepareFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    :goto_5
    return-void

    :catch_6
    move-exception v0

    const-string v1, "MediaControllerCompat"

    const-string v2, "Dead object in prepareFromSearch."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5
.end method

.method public prepareFromUri(Landroid/net/Uri;Landroid/os/Bundle;)V
    .registers 6

    :try_start_0
    iget-object v0, p0, Landroidj/support/v4/media/session/MediaControllerCompat$TransportControlsBase;->mBinder:Landroidj/support/v4/media/session/IMediaSession;

    invoke-interface {v0, p1, p2}, Landroidj/support/v4/media/session/IMediaSession;->prepareFromUri(Landroid/net/Uri;Landroid/os/Bundle;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    :goto_5
    return-void

    :catch_6
    move-exception v0

    const-string v1, "MediaControllerCompat"

    const-string v2, "Dead object in prepareFromUri."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5
.end method

.method public rewind()V
    .registers 4

    :try_start_0
    iget-object v0, p0, Landroidj/support/v4/media/session/MediaControllerCompat$TransportControlsBase;->mBinder:Landroidj/support/v4/media/session/IMediaSession;

    invoke-interface {v0}, Landroidj/support/v4/media/session/IMediaSession;->rewind()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    :goto_5
    return-void

    :catch_6
    move-exception v0

    const-string v1, "MediaControllerCompat"

    const-string v2, "Dead object in rewind."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5
.end method

.method public seekTo(J)V
    .registers 6

    :try_start_0
    iget-object v0, p0, Landroidj/support/v4/media/session/MediaControllerCompat$TransportControlsBase;->mBinder:Landroidj/support/v4/media/session/IMediaSession;

    invoke-interface {v0, p1, p2}, Landroidj/support/v4/media/session/IMediaSession;->seekTo(J)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    :goto_5
    return-void

    :catch_6
    move-exception v0

    const-string v1, "MediaControllerCompat"

    const-string v2, "Dead object in seekTo."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5
.end method

.method public sendCustomAction(Landroidj/support/v4/media/session/PlaybackStateCompat$CustomAction;Landroid/os/Bundle;)V
    .registers 4

    invoke-virtual {p1}, Landroidj/support/v4/media/session/PlaybackStateCompat$CustomAction;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Landroidj/support/v4/media/session/MediaControllerCompat$TransportControlsBase;->sendCustomAction(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public sendCustomAction(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 6

    :try_start_0
    iget-object v0, p0, Landroidj/support/v4/media/session/MediaControllerCompat$TransportControlsBase;->mBinder:Landroidj/support/v4/media/session/IMediaSession;

    invoke-interface {v0, p1, p2}, Landroidj/support/v4/media/session/IMediaSession;->sendCustomAction(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    :goto_5
    return-void

    :catch_6
    move-exception v0

    const-string v1, "MediaControllerCompat"

    const-string v2, "Dead object in sendCustomAction."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5
.end method

.method public setCaptioningEnabled(Z)V
    .registers 5

    :try_start_0
    iget-object v0, p0, Landroidj/support/v4/media/session/MediaControllerCompat$TransportControlsBase;->mBinder:Landroidj/support/v4/media/session/IMediaSession;

    invoke-interface {v0, p1}, Landroidj/support/v4/media/session/IMediaSession;->setCaptioningEnabled(Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    :goto_5
    return-void

    :catch_6
    move-exception v0

    const-string v1, "MediaControllerCompat"

    const-string v2, "Dead object in setCaptioningEnabled."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5
.end method

.method public setRating(Landroidj/support/v4/media/RatingCompat;)V
    .registers 5

    :try_start_0
    iget-object v0, p0, Landroidj/support/v4/media/session/MediaControllerCompat$TransportControlsBase;->mBinder:Landroidj/support/v4/media/session/IMediaSession;

    invoke-interface {v0, p1}, Landroidj/support/v4/media/session/IMediaSession;->rate(Landroidj/support/v4/media/RatingCompat;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    :goto_5
    return-void

    :catch_6
    move-exception v0

    const-string v1, "MediaControllerCompat"

    const-string v2, "Dead object in setRating."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5
.end method

.method public setRepeatMode(I)V
    .registers 5

    :try_start_0
    iget-object v0, p0, Landroidj/support/v4/media/session/MediaControllerCompat$TransportControlsBase;->mBinder:Landroidj/support/v4/media/session/IMediaSession;

    invoke-interface {v0, p1}, Landroidj/support/v4/media/session/IMediaSession;->setRepeatMode(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    :goto_5
    return-void

    :catch_6
    move-exception v0

    const-string v1, "MediaControllerCompat"

    const-string v2, "Dead object in setRepeatMode."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5
.end method

.method public setShuffleModeEnabled(Z)V
    .registers 5

    :try_start_0
    iget-object v0, p0, Landroidj/support/v4/media/session/MediaControllerCompat$TransportControlsBase;->mBinder:Landroidj/support/v4/media/session/IMediaSession;

    invoke-interface {v0, p1}, Landroidj/support/v4/media/session/IMediaSession;->setShuffleModeEnabled(Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    :goto_5
    return-void

    :catch_6
    move-exception v0

    const-string v1, "MediaControllerCompat"

    const-string v2, "Dead object in setShuffleModeEnabled."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5
.end method

.method public skipToNext()V
    .registers 4

    :try_start_0
    iget-object v0, p0, Landroidj/support/v4/media/session/MediaControllerCompat$TransportControlsBase;->mBinder:Landroidj/support/v4/media/session/IMediaSession;

    invoke-interface {v0}, Landroidj/support/v4/media/session/IMediaSession;->next()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    :goto_5
    return-void

    :catch_6
    move-exception v0

    const-string v1, "MediaControllerCompat"

    const-string v2, "Dead object in skipToNext."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5
.end method

.method public skipToPrevious()V
    .registers 4

    :try_start_0
    iget-object v0, p0, Landroidj/support/v4/media/session/MediaControllerCompat$TransportControlsBase;->mBinder:Landroidj/support/v4/media/session/IMediaSession;

    invoke-interface {v0}, Landroidj/support/v4/media/session/IMediaSession;->previous()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    :goto_5
    return-void

    :catch_6
    move-exception v0

    const-string v1, "MediaControllerCompat"

    const-string v2, "Dead object in skipToPrevious."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5
.end method

.method public skipToQueueItem(J)V
    .registers 6

    :try_start_0
    iget-object v0, p0, Landroidj/support/v4/media/session/MediaControllerCompat$TransportControlsBase;->mBinder:Landroidj/support/v4/media/session/IMediaSession;

    invoke-interface {v0, p1, p2}, Landroidj/support/v4/media/session/IMediaSession;->skipToQueueItem(J)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    :goto_5
    return-void

    :catch_6
    move-exception v0

    const-string v1, "MediaControllerCompat"

    const-string v2, "Dead object in skipToQueueItem."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5
.end method

.method public stop()V
    .registers 4

    :try_start_0
    iget-object v0, p0, Landroidj/support/v4/media/session/MediaControllerCompat$TransportControlsBase;->mBinder:Landroidj/support/v4/media/session/IMediaSession;

    invoke-interface {v0}, Landroidj/support/v4/media/session/IMediaSession;->stop()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    :goto_5
    return-void

    :catch_6
    move-exception v0

    const-string v1, "MediaControllerCompat"

    const-string v2, "Dead object in stop."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5
.end method
