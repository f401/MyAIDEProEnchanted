.class Landroidj/support/v4/media/session/MediaSessionCompatApi21$CallbackProxy;
.super Landroid/media/session/MediaSession$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidj/support/v4/media/session/MediaSessionCompatApi21;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CallbackProxy"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroidj/support/v4/media/session/MediaSessionCompatApi21$Callback;",
        ">",
        "Landroid/media/session/MediaSession$Callback;"
    }
.end annotation


# instance fields
.field protected final mCallback:Landroidj/support/v4/media/session/MediaSessionCompatApi21$Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidj/support/v4/media/session/MediaSessionCompatApi21$Callback;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/media/session/MediaSession$Callback;-><init>()V

    iput-object p1, p0, Landroidj/support/v4/media/session/MediaSessionCompatApi21$CallbackProxy;->mCallback:Landroidj/support/v4/media/session/MediaSessionCompatApi21$Callback;

    return-void
.end method


# virtual methods
.method public onCommand(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V
    .registers 5

    iget-object v0, p0, Landroidj/support/v4/media/session/MediaSessionCompatApi21$CallbackProxy;->mCallback:Landroidj/support/v4/media/session/MediaSessionCompatApi21$Callback;

    invoke-interface {v0, p1, p2, p3}, Landroidj/support/v4/media/session/MediaSessionCompatApi21$Callback;->onCommand(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V

    return-void
.end method

.method public onCustomAction(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 4

    iget-object v0, p0, Landroidj/support/v4/media/session/MediaSessionCompatApi21$CallbackProxy;->mCallback:Landroidj/support/v4/media/session/MediaSessionCompatApi21$Callback;

    invoke-interface {v0, p1, p2}, Landroidj/support/v4/media/session/MediaSessionCompatApi21$Callback;->onCustomAction(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public onFastForward()V
    .registers 2

    iget-object v0, p0, Landroidj/support/v4/media/session/MediaSessionCompatApi21$CallbackProxy;->mCallback:Landroidj/support/v4/media/session/MediaSessionCompatApi21$Callback;

    invoke-interface {v0}, Landroidj/support/v4/media/session/MediaSessionCompatApi21$Callback;->onFastForward()V

    return-void
.end method

.method public onMediaButtonEvent(Landroid/content/Intent;)Z
    .registers 3

    iget-object v0, p0, Landroidj/support/v4/media/session/MediaSessionCompatApi21$CallbackProxy;->mCallback:Landroidj/support/v4/media/session/MediaSessionCompatApi21$Callback;

    invoke-interface {v0, p1}, Landroidj/support/v4/media/session/MediaSessionCompatApi21$Callback;->onMediaButtonEvent(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_e

    invoke-super {p0, p1}, Landroid/media/session/MediaSession$Callback;->onMediaButtonEvent(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_10

    :cond_e
    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public onPause()V
    .registers 2

    iget-object v0, p0, Landroidj/support/v4/media/session/MediaSessionCompatApi21$CallbackProxy;->mCallback:Landroidj/support/v4/media/session/MediaSessionCompatApi21$Callback;

    invoke-interface {v0}, Landroidj/support/v4/media/session/MediaSessionCompatApi21$Callback;->onPause()V

    return-void
.end method

.method public onPlay()V
    .registers 2

    iget-object v0, p0, Landroidj/support/v4/media/session/MediaSessionCompatApi21$CallbackProxy;->mCallback:Landroidj/support/v4/media/session/MediaSessionCompatApi21$Callback;

    invoke-interface {v0}, Landroidj/support/v4/media/session/MediaSessionCompatApi21$Callback;->onPlay()V

    return-void
.end method

.method public onPlayFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 4

    iget-object v0, p0, Landroidj/support/v4/media/session/MediaSessionCompatApi21$CallbackProxy;->mCallback:Landroidj/support/v4/media/session/MediaSessionCompatApi21$Callback;

    invoke-interface {v0, p1, p2}, Landroidj/support/v4/media/session/MediaSessionCompatApi21$Callback;->onPlayFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public onPlayFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 4

    iget-object v0, p0, Landroidj/support/v4/media/session/MediaSessionCompatApi21$CallbackProxy;->mCallback:Landroidj/support/v4/media/session/MediaSessionCompatApi21$Callback;

    invoke-interface {v0, p1, p2}, Landroidj/support/v4/media/session/MediaSessionCompatApi21$Callback;->onPlayFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public onRewind()V
    .registers 2

    iget-object v0, p0, Landroidj/support/v4/media/session/MediaSessionCompatApi21$CallbackProxy;->mCallback:Landroidj/support/v4/media/session/MediaSessionCompatApi21$Callback;

    invoke-interface {v0}, Landroidj/support/v4/media/session/MediaSessionCompatApi21$Callback;->onRewind()V

    return-void
.end method

.method public onSeekTo(J)V
    .registers 4

    iget-object v0, p0, Landroidj/support/v4/media/session/MediaSessionCompatApi21$CallbackProxy;->mCallback:Landroidj/support/v4/media/session/MediaSessionCompatApi21$Callback;

    invoke-interface {v0, p1, p2}, Landroidj/support/v4/media/session/MediaSessionCompatApi21$Callback;->onSeekTo(J)V

    return-void
.end method

.method public onSetRating(Landroid/media/Rating;)V
    .registers 3

    iget-object v0, p0, Landroidj/support/v4/media/session/MediaSessionCompatApi21$CallbackProxy;->mCallback:Landroidj/support/v4/media/session/MediaSessionCompatApi21$Callback;

    invoke-interface {v0, p1}, Landroidj/support/v4/media/session/MediaSessionCompatApi21$Callback;->onSetRating(Ljava/lang/Object;)V

    return-void
.end method

.method public onSkipToNext()V
    .registers 2

    iget-object v0, p0, Landroidj/support/v4/media/session/MediaSessionCompatApi21$CallbackProxy;->mCallback:Landroidj/support/v4/media/session/MediaSessionCompatApi21$Callback;

    invoke-interface {v0}, Landroidj/support/v4/media/session/MediaSessionCompatApi21$Callback;->onSkipToNext()V

    return-void
.end method

.method public onSkipToPrevious()V
    .registers 2

    iget-object v0, p0, Landroidj/support/v4/media/session/MediaSessionCompatApi21$CallbackProxy;->mCallback:Landroidj/support/v4/media/session/MediaSessionCompatApi21$Callback;

    invoke-interface {v0}, Landroidj/support/v4/media/session/MediaSessionCompatApi21$Callback;->onSkipToPrevious()V

    return-void
.end method

.method public onSkipToQueueItem(J)V
    .registers 4

    iget-object v0, p0, Landroidj/support/v4/media/session/MediaSessionCompatApi21$CallbackProxy;->mCallback:Landroidj/support/v4/media/session/MediaSessionCompatApi21$Callback;

    invoke-interface {v0, p1, p2}, Landroidj/support/v4/media/session/MediaSessionCompatApi21$Callback;->onSkipToQueueItem(J)V

    return-void
.end method

.method public onStop()V
    .registers 2

    iget-object v0, p0, Landroidj/support/v4/media/session/MediaSessionCompatApi21$CallbackProxy;->mCallback:Landroidj/support/v4/media/session/MediaSessionCompatApi21$Callback;

    invoke-interface {v0}, Landroidj/support/v4/media/session/MediaSessionCompatApi21$Callback;->onStop()V

    return-void
.end method
