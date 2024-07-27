.class Landroidj/support/v4/media/session/MediaControllerCompat$Callback$StubCompat;
.super Landroidj/support/v4/media/session/IMediaControllerCallback$Stub;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidj/support/v4/media/session/MediaControllerCompat$Callback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StubCompat"
.end annotation


# instance fields
.field final this$0:Landroidj/support/v4/media/session/MediaControllerCompat$Callback;


# direct methods
.method constructor <init>(Landroidj/support/v4/media/session/MediaControllerCompat$Callback;)V
    .registers 2

    iput-object p1, p0, Landroidj/support/v4/media/session/MediaControllerCompat$Callback$StubCompat;->this$0:Landroidj/support/v4/media/session/MediaControllerCompat$Callback;

    invoke-direct {p0}, Landroidj/support/v4/media/session/IMediaControllerCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onCaptioningEnabledChanged(Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroidj/support/v4/media/session/MediaControllerCompat$Callback$StubCompat;->this$0:Landroidj/support/v4/media/session/MediaControllerCompat$Callback;

    iget-object v0, v0, Landroidj/support/v4/media/session/MediaControllerCompat$Callback;->mHandler:Landroidj/support/v4/media/session/MediaControllerCompat$Callback$MessageHandler;

    const/16 v1, 0xb

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroidj/support/v4/media/session/MediaControllerCompat$Callback$MessageHandler;->post(ILjava/lang/Object;Landroid/os/Bundle;)V

    return-void
.end method

.method public onEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroidj/support/v4/media/session/MediaControllerCompat$Callback$StubCompat;->this$0:Landroidj/support/v4/media/session/MediaControllerCompat$Callback;

    iget-object v0, v0, Landroidj/support/v4/media/session/MediaControllerCompat$Callback;->mHandler:Landroidj/support/v4/media/session/MediaControllerCompat$Callback$MessageHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1, p2}, Landroidj/support/v4/media/session/MediaControllerCompat$Callback$MessageHandler;->post(ILjava/lang/Object;Landroid/os/Bundle;)V

    return-void
.end method

.method public onExtrasChanged(Landroid/os/Bundle;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroidj/support/v4/media/session/MediaControllerCompat$Callback$StubCompat;->this$0:Landroidj/support/v4/media/session/MediaControllerCompat$Callback;

    iget-object v0, v0, Landroidj/support/v4/media/session/MediaControllerCompat$Callback;->mHandler:Landroidj/support/v4/media/session/MediaControllerCompat$Callback$MessageHandler;

    const/4 v1, 0x7

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroidj/support/v4/media/session/MediaControllerCompat$Callback$MessageHandler;->post(ILjava/lang/Object;Landroid/os/Bundle;)V

    return-void
.end method

.method public onMetadataChanged(Landroidj/support/v4/media/MediaMetadataCompat;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroidj/support/v4/media/session/MediaControllerCompat$Callback$StubCompat;->this$0:Landroidj/support/v4/media/session/MediaControllerCompat$Callback;

    iget-object v0, v0, Landroidj/support/v4/media/session/MediaControllerCompat$Callback;->mHandler:Landroidj/support/v4/media/session/MediaControllerCompat$Callback$MessageHandler;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroidj/support/v4/media/session/MediaControllerCompat$Callback$MessageHandler;->post(ILjava/lang/Object;Landroid/os/Bundle;)V

    return-void
.end method

.method public onPlaybackStateChanged(Landroidj/support/v4/media/session/PlaybackStateCompat;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroidj/support/v4/media/session/MediaControllerCompat$Callback$StubCompat;->this$0:Landroidj/support/v4/media/session/MediaControllerCompat$Callback;

    iget-object v0, v0, Landroidj/support/v4/media/session/MediaControllerCompat$Callback;->mHandler:Landroidj/support/v4/media/session/MediaControllerCompat$Callback$MessageHandler;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroidj/support/v4/media/session/MediaControllerCompat$Callback$MessageHandler;->post(ILjava/lang/Object;Landroid/os/Bundle;)V

    return-void
.end method

.method public onQueueChanged(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroidj/support/v4/media/session/MediaSessionCompat$QueueItem;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroidj/support/v4/media/session/MediaControllerCompat$Callback$StubCompat;->this$0:Landroidj/support/v4/media/session/MediaControllerCompat$Callback;

    iget-object v0, v0, Landroidj/support/v4/media/session/MediaControllerCompat$Callback;->mHandler:Landroidj/support/v4/media/session/MediaControllerCompat$Callback$MessageHandler;

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroidj/support/v4/media/session/MediaControllerCompat$Callback$MessageHandler;->post(ILjava/lang/Object;Landroid/os/Bundle;)V

    return-void
.end method

.method public onQueueTitleChanged(Ljava/lang/CharSequence;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroidj/support/v4/media/session/MediaControllerCompat$Callback$StubCompat;->this$0:Landroidj/support/v4/media/session/MediaControllerCompat$Callback;

    iget-object v0, v0, Landroidj/support/v4/media/session/MediaControllerCompat$Callback;->mHandler:Landroidj/support/v4/media/session/MediaControllerCompat$Callback$MessageHandler;

    const/4 v1, 0x6

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroidj/support/v4/media/session/MediaControllerCompat$Callback$MessageHandler;->post(ILjava/lang/Object;Landroid/os/Bundle;)V

    return-void
.end method

.method public onRepeatModeChanged(I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroidj/support/v4/media/session/MediaControllerCompat$Callback$StubCompat;->this$0:Landroidj/support/v4/media/session/MediaControllerCompat$Callback;

    iget-object v0, v0, Landroidj/support/v4/media/session/MediaControllerCompat$Callback;->mHandler:Landroidj/support/v4/media/session/MediaControllerCompat$Callback$MessageHandler;

    const/16 v1, 0x9

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroidj/support/v4/media/session/MediaControllerCompat$Callback$MessageHandler;->post(ILjava/lang/Object;Landroid/os/Bundle;)V

    return-void
.end method

.method public onSessionDestroyed()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v2, 0x0

    iget-object v0, p0, Landroidj/support/v4/media/session/MediaControllerCompat$Callback$StubCompat;->this$0:Landroidj/support/v4/media/session/MediaControllerCompat$Callback;

    iget-object v0, v0, Landroidj/support/v4/media/session/MediaControllerCompat$Callback;->mHandler:Landroidj/support/v4/media/session/MediaControllerCompat$Callback$MessageHandler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1, v2, v2}, Landroidj/support/v4/media/session/MediaControllerCompat$Callback$MessageHandler;->post(ILjava/lang/Object;Landroid/os/Bundle;)V

    return-void
.end method

.method public onShuffleModeChanged(Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroidj/support/v4/media/session/MediaControllerCompat$Callback$StubCompat;->this$0:Landroidj/support/v4/media/session/MediaControllerCompat$Callback;

    iget-object v0, v0, Landroidj/support/v4/media/session/MediaControllerCompat$Callback;->mHandler:Landroidj/support/v4/media/session/MediaControllerCompat$Callback$MessageHandler;

    const/16 v1, 0xa

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroidj/support/v4/media/session/MediaControllerCompat$Callback$MessageHandler;->post(ILjava/lang/Object;Landroid/os/Bundle;)V

    return-void
.end method

.method public onVolumeInfoChanged(Landroidj/support/v4/media/session/ParcelableVolumeInfo;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v6, 0x0

    if-eqz p1, :cond_0

    new-instance v0, Landroidj/support/v4/media/session/MediaControllerCompat$PlaybackInfo;

    iget v1, p1, Landroidj/support/v4/media/session/ParcelableVolumeInfo;->volumeType:I

    iget v2, p1, Landroidj/support/v4/media/session/ParcelableVolumeInfo;->audioStream:I

    iget v3, p1, Landroidj/support/v4/media/session/ParcelableVolumeInfo;->controlType:I

    iget v4, p1, Landroidj/support/v4/media/session/ParcelableVolumeInfo;->maxVolume:I

    iget v5, p1, Landroidj/support/v4/media/session/ParcelableVolumeInfo;->currentVolume:I

    invoke-direct/range {v0 .. v5}, Landroidj/support/v4/media/session/MediaControllerCompat$PlaybackInfo;-><init>(IIIII)V

    :goto_0
    iget-object v1, p0, Landroidj/support/v4/media/session/MediaControllerCompat$Callback$StubCompat;->this$0:Landroidj/support/v4/media/session/MediaControllerCompat$Callback;

    iget-object v1, v1, Landroidj/support/v4/media/session/MediaControllerCompat$Callback;->mHandler:Landroidj/support/v4/media/session/MediaControllerCompat$Callback$MessageHandler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2, v0, v6}, Landroidj/support/v4/media/session/MediaControllerCompat$Callback$MessageHandler;->post(ILjava/lang/Object;Landroid/os/Bundle;)V

    return-void

    :cond_0
    move-object v0, v6

    goto :goto_0
.end method
