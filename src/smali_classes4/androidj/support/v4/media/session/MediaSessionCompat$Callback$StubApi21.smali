.class Landroidj/support/v4/media/session/MediaSessionCompat$Callback$StubApi21;
.super Ljava/lang/Object;

# interfaces
.implements Landroidj/support/v4/media/session/MediaSessionCompatApi21$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidj/support/v4/media/session/MediaSessionCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StubApi21"
.end annotation


# instance fields
.field final this$0:Landroidj/support/v4/media/session/MediaSessionCompat$Callback;


# direct methods
.method constructor <init>(Landroidj/support/v4/media/session/MediaSessionCompat$Callback;)V
    .registers 2

    iput-object p1, p0, Landroidj/support/v4/media/session/MediaSessionCompat$Callback$StubApi21;->this$0:Landroidj/support/v4/media/session/MediaSessionCompat$Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCommand(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V
    .registers 7

    const-string v0, "androidj.support.v4.media.session.command.GET_EXTRA_BINDER"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    iget-object v0, p0, Landroidj/support/v4/media/session/MediaSessionCompat$Callback$StubApi21;->this$0:Landroidj/support/v4/media/session/MediaSessionCompat$Callback;

    iget-object v0, v0, Landroidj/support/v4/media/session/MediaSessionCompat$Callback;->mSessionImpl:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;

    if-eqz v0, :cond_2d

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v0}, Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;->getSessionToken()Landroidj/support/v4/media/session/MediaSessionCompat$Token;

    move-result-object v0

    invoke-virtual {v0}, Landroidj/support/v4/media/session/MediaSessionCompat$Token;->getExtraBinder()Landroidj/support/v4/media/session/IMediaSession;

    move-result-object v0

    if-nez v0, :cond_2e

    const/4 v0, 0x0

    :goto_24
    const-string v2, "androidj.support.v4.media.session.EXTRA_BINDER"

    invoke-static {v1, v2, v0}, Landroidj/support/v4/app/BundleCompat;->putBinder(Landroid/os/Bundle;Ljava/lang/String;Landroid/os/IBinder;)V

    const/4 v0, 0x0

    invoke-virtual {p3, v0, v1}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    :cond_2d
    :goto_2d
    return-void

    :cond_2e
    invoke-interface {v0}, Landroidj/support/v4/media/session/IMediaSession;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    goto :goto_24

    :cond_33
    const-string v0, "androidj.support.v4.media.session.command.ADD_QUEUE_ITEM"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_52

    const-class v0, Landroidj/support/v4/media/MediaDescriptionCompat;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    iget-object v1, p0, Landroidj/support/v4/media/session/MediaSessionCompat$Callback$StubApi21;->this$0:Landroidj/support/v4/media/session/MediaSessionCompat$Callback;

    const-string v0, "androidj.support.v4.media.session.command.ARGUMENT_MEDIA_DESCRIPTION"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroidj/support/v4/media/MediaDescriptionCompat;

    invoke-virtual {v1, v0}, Landroidj/support/v4/media/session/MediaSessionCompat$Callback;->onAddQueueItem(Landroidj/support/v4/media/MediaDescriptionCompat;)V

    goto :goto_2d

    :cond_52
    const-string v0, "androidj.support.v4.media.session.command.ADD_QUEUE_ITEM_AT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_77

    const-class v0, Landroidj/support/v4/media/MediaDescriptionCompat;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    iget-object v1, p0, Landroidj/support/v4/media/session/MediaSessionCompat$Callback$StubApi21;->this$0:Landroidj/support/v4/media/session/MediaSessionCompat$Callback;

    const-string v0, "androidj.support.v4.media.session.command.ARGUMENT_MEDIA_DESCRIPTION"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroidj/support/v4/media/MediaDescriptionCompat;

    const-string v2, "androidj.support.v4.media.session.command.ARGUMENT_INDEX"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroidj/support/v4/media/session/MediaSessionCompat$Callback;->onAddQueueItem(Landroidj/support/v4/media/MediaDescriptionCompat;I)V

    goto :goto_2d

    :cond_77
    const-string v0, "androidj.support.v4.media.session.command.REMOVE_QUEUE_ITEM"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_96

    const-class v0, Landroidj/support/v4/media/MediaDescriptionCompat;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    iget-object v1, p0, Landroidj/support/v4/media/session/MediaSessionCompat$Callback$StubApi21;->this$0:Landroidj/support/v4/media/session/MediaSessionCompat$Callback;

    const-string v0, "androidj.support.v4.media.session.command.ARGUMENT_MEDIA_DESCRIPTION"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroidj/support/v4/media/MediaDescriptionCompat;

    invoke-virtual {v1, v0}, Landroidj/support/v4/media/session/MediaSessionCompat$Callback;->onRemoveQueueItem(Landroidj/support/v4/media/MediaDescriptionCompat;)V

    goto :goto_2d

    :cond_96
    const-string v0, "androidj.support.v4.media.session.command.REMOVE_QUEUE_ITEM_AT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_aa

    iget-object v0, p0, Landroidj/support/v4/media/session/MediaSessionCompat$Callback$StubApi21;->this$0:Landroidj/support/v4/media/session/MediaSessionCompat$Callback;

    const-string v1, "androidj.support.v4.media.session.command.ARGUMENT_INDEX"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroidj/support/v4/media/session/MediaSessionCompat$Callback;->onRemoveQueueItemAt(I)V

    goto :goto_2d

    :cond_aa
    iget-object v0, p0, Landroidj/support/v4/media/session/MediaSessionCompat$Callback$StubApi21;->this$0:Landroidj/support/v4/media/session/MediaSessionCompat$Callback;

    invoke-virtual {v0, p1, p2, p3}, Landroidj/support/v4/media/session/MediaSessionCompat$Callback;->onCommand(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V

    goto/16 :goto_2d
.end method

.method public onCustomAction(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 6

    const-string v0, "androidj.support.v4.media.session.action.PLAY_FROM_URI"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    const-string v0, "androidj.support.v4.media.session.action.ARGUMENT_URI"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    const-string v1, "androidj.support.v4.media.session.action.ARGUMENT_EXTRAS"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    iget-object v2, p0, Landroidj/support/v4/media/session/MediaSessionCompat$Callback$StubApi21;->this$0:Landroidj/support/v4/media/session/MediaSessionCompat$Callback;

    invoke-virtual {v2, v0, v1}, Landroidj/support/v4/media/session/MediaSessionCompat$Callback;->onPlayFromUri(Landroid/net/Uri;Landroid/os/Bundle;)V

    :goto_1d
    return-void

    :cond_1e
    const-string v0, "androidj.support.v4.media.session.action.PREPARE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    iget-object v0, p0, Landroidj/support/v4/media/session/MediaSessionCompat$Callback$StubApi21;->this$0:Landroidj/support/v4/media/session/MediaSessionCompat$Callback;

    invoke-virtual {v0}, Landroidj/support/v4/media/session/MediaSessionCompat$Callback;->onPrepare()V

    goto :goto_1d

    :cond_2c
    const-string v0, "androidj.support.v4.media.session.action.PREPARE_FROM_MEDIA_ID"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_46

    const-string v0, "androidj.support.v4.media.session.action.ARGUMENT_MEDIA_ID"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "androidj.support.v4.media.session.action.ARGUMENT_EXTRAS"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    iget-object v2, p0, Landroidj/support/v4/media/session/MediaSessionCompat$Callback$StubApi21;->this$0:Landroidj/support/v4/media/session/MediaSessionCompat$Callback;

    invoke-virtual {v2, v0, v1}, Landroidj/support/v4/media/session/MediaSessionCompat$Callback;->onPrepareFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_1d

    :cond_46
    const-string v0, "androidj.support.v4.media.session.action.PREPARE_FROM_SEARCH"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_60

    const-string v0, "androidj.support.v4.media.session.action.ARGUMENT_QUERY"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "androidj.support.v4.media.session.action.ARGUMENT_EXTRAS"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    iget-object v2, p0, Landroidj/support/v4/media/session/MediaSessionCompat$Callback$StubApi21;->this$0:Landroidj/support/v4/media/session/MediaSessionCompat$Callback;

    invoke-virtual {v2, v0, v1}, Landroidj/support/v4/media/session/MediaSessionCompat$Callback;->onPrepareFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_1d

    :cond_60
    const-string v0, "androidj.support.v4.media.session.action.PREPARE_FROM_URI"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7c

    const-string v0, "androidj.support.v4.media.session.action.ARGUMENT_URI"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    const-string v1, "androidj.support.v4.media.session.action.ARGUMENT_EXTRAS"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    iget-object v2, p0, Landroidj/support/v4/media/session/MediaSessionCompat$Callback$StubApi21;->this$0:Landroidj/support/v4/media/session/MediaSessionCompat$Callback;

    invoke-virtual {v2, v0, v1}, Landroidj/support/v4/media/session/MediaSessionCompat$Callback;->onPrepareFromUri(Landroid/net/Uri;Landroid/os/Bundle;)V

    goto :goto_1d

    :cond_7c
    const-string v0, "androidj.support.v4.media.session.action.SET_CAPTIONING_ENABLED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_90

    const-string v0, "androidj.support.v4.media.session.action.ARGUMENT_CAPTIONING_ENABLED"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iget-object v1, p0, Landroidj/support/v4/media/session/MediaSessionCompat$Callback$StubApi21;->this$0:Landroidj/support/v4/media/session/MediaSessionCompat$Callback;

    invoke-virtual {v1, v0}, Landroidj/support/v4/media/session/MediaSessionCompat$Callback;->onSetCaptioningEnabled(Z)V

    goto :goto_1d

    :cond_90
    const-string v0, "androidj.support.v4.media.session.action.SET_REPEAT_MODE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a5

    const-string v0, "androidj.support.v4.media.session.action.ARGUMENT_REPEAT_MODE"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Landroidj/support/v4/media/session/MediaSessionCompat$Callback$StubApi21;->this$0:Landroidj/support/v4/media/session/MediaSessionCompat$Callback;

    invoke-virtual {v1, v0}, Landroidj/support/v4/media/session/MediaSessionCompat$Callback;->onSetRepeatMode(I)V

    goto/16 :goto_1d

    :cond_a5
    const-string v0, "androidj.support.v4.media.session.action.SET_SHUFFLE_MODE_ENABLED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ba

    const-string v0, "androidj.support.v4.media.session.action.ARGUMENT_SHUFFLE_MODE_ENABLED"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iget-object v1, p0, Landroidj/support/v4/media/session/MediaSessionCompat$Callback$StubApi21;->this$0:Landroidj/support/v4/media/session/MediaSessionCompat$Callback;

    invoke-virtual {v1, v0}, Landroidj/support/v4/media/session/MediaSessionCompat$Callback;->onSetShuffleModeEnabled(Z)V

    goto/16 :goto_1d

    :cond_ba
    iget-object v0, p0, Landroidj/support/v4/media/session/MediaSessionCompat$Callback$StubApi21;->this$0:Landroidj/support/v4/media/session/MediaSessionCompat$Callback;

    invoke-virtual {v0, p1, p2}, Landroidj/support/v4/media/session/MediaSessionCompat$Callback;->onCustomAction(Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_1d
.end method

.method public onFastForward()V
    .registers 2

    iget-object v0, p0, Landroidj/support/v4/media/session/MediaSessionCompat$Callback$StubApi21;->this$0:Landroidj/support/v4/media/session/MediaSessionCompat$Callback;

    invoke-virtual {v0}, Landroidj/support/v4/media/session/MediaSessionCompat$Callback;->onFastForward()V

    return-void
.end method

.method public onMediaButtonEvent(Landroid/content/Intent;)Z
    .registers 3

    iget-object v0, p0, Landroidj/support/v4/media/session/MediaSessionCompat$Callback$StubApi21;->this$0:Landroidj/support/v4/media/session/MediaSessionCompat$Callback;

    invoke-virtual {v0, p1}, Landroidj/support/v4/media/session/MediaSessionCompat$Callback;->onMediaButtonEvent(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method public onPause()V
    .registers 2

    iget-object v0, p0, Landroidj/support/v4/media/session/MediaSessionCompat$Callback$StubApi21;->this$0:Landroidj/support/v4/media/session/MediaSessionCompat$Callback;

    invoke-virtual {v0}, Landroidj/support/v4/media/session/MediaSessionCompat$Callback;->onPause()V

    return-void
.end method

.method public onPlay()V
    .registers 2

    iget-object v0, p0, Landroidj/support/v4/media/session/MediaSessionCompat$Callback$StubApi21;->this$0:Landroidj/support/v4/media/session/MediaSessionCompat$Callback;

    invoke-virtual {v0}, Landroidj/support/v4/media/session/MediaSessionCompat$Callback;->onPlay()V

    return-void
.end method

.method public onPlayFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 4

    iget-object v0, p0, Landroidj/support/v4/media/session/MediaSessionCompat$Callback$StubApi21;->this$0:Landroidj/support/v4/media/session/MediaSessionCompat$Callback;

    invoke-virtual {v0, p1, p2}, Landroidj/support/v4/media/session/MediaSessionCompat$Callback;->onPlayFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public onPlayFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 4

    iget-object v0, p0, Landroidj/support/v4/media/session/MediaSessionCompat$Callback$StubApi21;->this$0:Landroidj/support/v4/media/session/MediaSessionCompat$Callback;

    invoke-virtual {v0, p1, p2}, Landroidj/support/v4/media/session/MediaSessionCompat$Callback;->onPlayFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public onRewind()V
    .registers 2

    iget-object v0, p0, Landroidj/support/v4/media/session/MediaSessionCompat$Callback$StubApi21;->this$0:Landroidj/support/v4/media/session/MediaSessionCompat$Callback;

    invoke-virtual {v0}, Landroidj/support/v4/media/session/MediaSessionCompat$Callback;->onRewind()V

    return-void
.end method

.method public onSeekTo(J)V
    .registers 4

    iget-object v0, p0, Landroidj/support/v4/media/session/MediaSessionCompat$Callback$StubApi21;->this$0:Landroidj/support/v4/media/session/MediaSessionCompat$Callback;

    invoke-virtual {v0, p1, p2}, Landroidj/support/v4/media/session/MediaSessionCompat$Callback;->onSeekTo(J)V

    return-void
.end method

.method public onSetRating(Ljava/lang/Object;)V
    .registers 4

    iget-object v0, p0, Landroidj/support/v4/media/session/MediaSessionCompat$Callback$StubApi21;->this$0:Landroidj/support/v4/media/session/MediaSessionCompat$Callback;

    invoke-static {p1}, Landroidj/support/v4/media/RatingCompat;->fromRating(Ljava/lang/Object;)Landroidj/support/v4/media/RatingCompat;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidj/support/v4/media/session/MediaSessionCompat$Callback;->onSetRating(Landroidj/support/v4/media/RatingCompat;)V

    return-void
.end method

.method public onSkipToNext()V
    .registers 2

    iget-object v0, p0, Landroidj/support/v4/media/session/MediaSessionCompat$Callback$StubApi21;->this$0:Landroidj/support/v4/media/session/MediaSessionCompat$Callback;

    invoke-virtual {v0}, Landroidj/support/v4/media/session/MediaSessionCompat$Callback;->onSkipToNext()V

    return-void
.end method

.method public onSkipToPrevious()V
    .registers 2

    iget-object v0, p0, Landroidj/support/v4/media/session/MediaSessionCompat$Callback$StubApi21;->this$0:Landroidj/support/v4/media/session/MediaSessionCompat$Callback;

    invoke-virtual {v0}, Landroidj/support/v4/media/session/MediaSessionCompat$Callback;->onSkipToPrevious()V

    return-void
.end method

.method public onSkipToQueueItem(J)V
    .registers 4

    iget-object v0, p0, Landroidj/support/v4/media/session/MediaSessionCompat$Callback$StubApi21;->this$0:Landroidj/support/v4/media/session/MediaSessionCompat$Callback;

    invoke-virtual {v0, p1, p2}, Landroidj/support/v4/media/session/MediaSessionCompat$Callback;->onSkipToQueueItem(J)V

    return-void
.end method

.method public onStop()V
    .registers 2

    iget-object v0, p0, Landroidj/support/v4/media/session/MediaSessionCompat$Callback$StubApi21;->this$0:Landroidj/support/v4/media/session/MediaSessionCompat$Callback;

    invoke-virtual {v0}, Landroidj/support/v4/media/session/MediaSessionCompat$Callback;->onStop()V

    return-void
.end method
