.class Landroidj/support/v4/media/session/MediaControllerCompat$Callback$StubApi21;
.super Ljava/lang/Object;

# interfaces
.implements Landroidj/support/v4/media/session/MediaControllerCompatApi21$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidj/support/v4/media/session/MediaControllerCompat$Callback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StubApi21"
.end annotation


# instance fields
.field final this$0:Landroidj/support/v4/media/session/MediaControllerCompat$Callback;


# direct methods
.method constructor <init>(Landroidj/support/v4/media/session/MediaControllerCompat$Callback;)V
    .registers 2

    iput-object p1, p0, Landroidj/support/v4/media/session/MediaControllerCompat$Callback$StubApi21;->this$0:Landroidj/support/v4/media/session/MediaControllerCompat$Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioInfoChanged(IIIII)V
    .registers 13

    iget-object v6, p0, Landroidj/support/v4/media/session/MediaControllerCompat$Callback$StubApi21;->this$0:Landroidj/support/v4/media/session/MediaControllerCompat$Callback;

    new-instance v0, Landroidj/support/v4/media/session/MediaControllerCompat$PlaybackInfo;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Landroidj/support/v4/media/session/MediaControllerCompat$PlaybackInfo;-><init>(IIIII)V

    invoke-virtual {v6, v0}, Landroidj/support/v4/media/session/MediaControllerCompat$Callback;->onAudioInfoChanged(Landroidj/support/v4/media/session/MediaControllerCompat$PlaybackInfo;)V

    return-void
.end method

.method public onExtrasChanged(Landroid/os/Bundle;)V
    .registers 3

    iget-object v0, p0, Landroidj/support/v4/media/session/MediaControllerCompat$Callback$StubApi21;->this$0:Landroidj/support/v4/media/session/MediaControllerCompat$Callback;

    invoke-virtual {v0, p1}, Landroidj/support/v4/media/session/MediaControllerCompat$Callback;->onExtrasChanged(Landroid/os/Bundle;)V

    return-void
.end method

.method public onMetadataChanged(Ljava/lang/Object;)V
    .registers 4

    iget-object v0, p0, Landroidj/support/v4/media/session/MediaControllerCompat$Callback$StubApi21;->this$0:Landroidj/support/v4/media/session/MediaControllerCompat$Callback;

    invoke-static {p1}, Landroidj/support/v4/media/MediaMetadataCompat;->fromMediaMetadata(Ljava/lang/Object;)Landroidj/support/v4/media/MediaMetadataCompat;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidj/support/v4/media/session/MediaControllerCompat$Callback;->onMetadataChanged(Landroidj/support/v4/media/MediaMetadataCompat;)V

    return-void
.end method

.method public onPlaybackStateChanged(Ljava/lang/Object;)V
    .registers 4

    iget-object v0, p0, Landroidj/support/v4/media/session/MediaControllerCompat$Callback$StubApi21;->this$0:Landroidj/support/v4/media/session/MediaControllerCompat$Callback;

    iget-boolean v0, v0, Landroidj/support/v4/media/session/MediaControllerCompat$Callback;->mHasExtraCallback:Z

    if-eqz v0, :cond_7

    :goto_6
    return-void

    :cond_7
    iget-object v0, p0, Landroidj/support/v4/media/session/MediaControllerCompat$Callback$StubApi21;->this$0:Landroidj/support/v4/media/session/MediaControllerCompat$Callback;

    invoke-static {p1}, Landroidj/support/v4/media/session/PlaybackStateCompat;->fromPlaybackState(Ljava/lang/Object;)Landroidj/support/v4/media/session/PlaybackStateCompat;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidj/support/v4/media/session/MediaControllerCompat$Callback;->onPlaybackStateChanged(Landroidj/support/v4/media/session/PlaybackStateCompat;)V

    goto :goto_6
.end method

.method public onQueueChanged(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<*>;)V"
        }
    .end annotation

    iget-object v0, p0, Landroidj/support/v4/media/session/MediaControllerCompat$Callback$StubApi21;->this$0:Landroidj/support/v4/media/session/MediaControllerCompat$Callback;

    invoke-static {p1}, Landroidj/support/v4/media/session/MediaSessionCompat$QueueItem;->fromQueueItemList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidj/support/v4/media/session/MediaControllerCompat$Callback;->onQueueChanged(Ljava/util/List;)V

    return-void
.end method

.method public onQueueTitleChanged(Ljava/lang/CharSequence;)V
    .registers 3

    iget-object v0, p0, Landroidj/support/v4/media/session/MediaControllerCompat$Callback$StubApi21;->this$0:Landroidj/support/v4/media/session/MediaControllerCompat$Callback;

    invoke-virtual {v0, p1}, Landroidj/support/v4/media/session/MediaControllerCompat$Callback;->onQueueTitleChanged(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onSessionDestroyed()V
    .registers 2

    iget-object v0, p0, Landroidj/support/v4/media/session/MediaControllerCompat$Callback$StubApi21;->this$0:Landroidj/support/v4/media/session/MediaControllerCompat$Callback;

    invoke-virtual {v0}, Landroidj/support/v4/media/session/MediaControllerCompat$Callback;->onSessionDestroyed()V

    return-void
.end method

.method public onSessionEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 5

    iget-object v0, p0, Landroidj/support/v4/media/session/MediaControllerCompat$Callback$StubApi21;->this$0:Landroidj/support/v4/media/session/MediaControllerCompat$Callback;

    iget-boolean v0, v0, Landroidj/support/v4/media/session/MediaControllerCompat$Callback;->mHasExtraCallback:Z

    if-eqz v0, :cond_d

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_d

    :goto_c
    return-void

    :cond_d
    iget-object v0, p0, Landroidj/support/v4/media/session/MediaControllerCompat$Callback$StubApi21;->this$0:Landroidj/support/v4/media/session/MediaControllerCompat$Callback;

    invoke-virtual {v0, p1, p2}, Landroidj/support/v4/media/session/MediaControllerCompat$Callback;->onSessionEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_c
.end method
