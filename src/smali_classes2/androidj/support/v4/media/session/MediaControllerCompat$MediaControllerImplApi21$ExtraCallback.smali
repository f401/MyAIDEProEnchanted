.class Landroidj/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21$ExtraCallback;
.super Landroidj/support/v4/media/session/IMediaControllerCallback$Stub;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidj/support/v4/media/session/MediaControllerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ExtraCallback"
.end annotation


# instance fields
.field private mCallback:Landroidj/support/v4/media/session/MediaControllerCompat$Callback;

.field final this$0:Landroidj/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21;


# direct methods
.method constructor <init>(Landroidj/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21;Landroidj/support/v4/media/session/MediaControllerCompat$Callback;)V
    .registers 3

    iput-object p1, p0, Landroidj/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21$ExtraCallback;->this$0:Landroidj/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21;

    invoke-direct {p0}, Landroidj/support/v4/media/session/IMediaControllerCallback$Stub;-><init>()V

    iput-object p2, p0, Landroidj/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21$ExtraCallback;->mCallback:Landroidj/support/v4/media/session/MediaControllerCompat$Callback;

    return-void
.end method

.method static synthetic access$400(Landroidj/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21$ExtraCallback;)Landroidj/support/v4/media/session/MediaControllerCompat$Callback;
    .registers 2

    iget-object v0, p0, Landroidj/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21$ExtraCallback;->mCallback:Landroidj/support/v4/media/session/MediaControllerCompat$Callback;

    return-object v0
.end method


# virtual methods
.method public onCaptioningEnabledChanged(Z)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroidj/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21$ExtraCallback;->mCallback:Landroidj/support/v4/media/session/MediaControllerCompat$Callback;

    iget-object v0, v0, Landroidj/support/v4/media/session/MediaControllerCompat$Callback;->mHandler:Landroidj/support/v4/media/session/MediaControllerCompat$Callback$MessageHandler;

    new-instance v1, Landroidj/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21$ExtraCallback$3;

    invoke-direct {v1, p0, p1}, Landroidj/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21$ExtraCallback$3;-><init>(Landroidj/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21$ExtraCallback;Z)V

    invoke-virtual {v0, v1}, Landroidj/support/v4/media/session/MediaControllerCompat$Callback$MessageHandler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroidj/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21$ExtraCallback;->mCallback:Landroidj/support/v4/media/session/MediaControllerCompat$Callback;

    iget-object v0, v0, Landroidj/support/v4/media/session/MediaControllerCompat$Callback;->mHandler:Landroidj/support/v4/media/session/MediaControllerCompat$Callback$MessageHandler;

    new-instance v1, Landroidj/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21$ExtraCallback$1;

    invoke-direct {v1, p0, p1, p2}, Landroidj/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21$ExtraCallback$1;-><init>(Landroidj/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21$ExtraCallback;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Landroidj/support/v4/media/session/MediaControllerCompat$Callback$MessageHandler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onExtrasChanged(Landroid/os/Bundle;)V
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

.method public onMetadataChanged(Landroidj/support/v4/media/MediaMetadataCompat;)V
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

.method public onPlaybackStateChanged(Landroidj/support/v4/media/session/PlaybackStateCompat;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroidj/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21$ExtraCallback;->mCallback:Landroidj/support/v4/media/session/MediaControllerCompat$Callback;

    iget-object v0, v0, Landroidj/support/v4/media/session/MediaControllerCompat$Callback;->mHandler:Landroidj/support/v4/media/session/MediaControllerCompat$Callback$MessageHandler;

    new-instance v1, Landroidj/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21$ExtraCallback$2;

    invoke-direct {v1, p0, p1}, Landroidj/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21$ExtraCallback$2;-><init>(Landroidj/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21$ExtraCallback;Landroidj/support/v4/media/session/PlaybackStateCompat;)V

    invoke-virtual {v0, v1}, Landroidj/support/v4/media/session/MediaControllerCompat$Callback$MessageHandler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onQueueChanged(Ljava/util/List;)V
    .registers 3
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

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public onQueueTitleChanged(Ljava/lang/CharSequence;)V
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

.method public onRepeatModeChanged(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroidj/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21$ExtraCallback;->mCallback:Landroidj/support/v4/media/session/MediaControllerCompat$Callback;

    iget-object v0, v0, Landroidj/support/v4/media/session/MediaControllerCompat$Callback;->mHandler:Landroidj/support/v4/media/session/MediaControllerCompat$Callback$MessageHandler;

    new-instance v1, Landroidj/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21$ExtraCallback$4;

    invoke-direct {v1, p0, p1}, Landroidj/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21$ExtraCallback$4;-><init>(Landroidj/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21$ExtraCallback;I)V

    invoke-virtual {v0, v1}, Landroidj/support/v4/media/session/MediaControllerCompat$Callback$MessageHandler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onSessionDestroyed()V
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

.method public onShuffleModeChanged(Z)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroidj/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21$ExtraCallback;->mCallback:Landroidj/support/v4/media/session/MediaControllerCompat$Callback;

    iget-object v0, v0, Landroidj/support/v4/media/session/MediaControllerCompat$Callback;->mHandler:Landroidj/support/v4/media/session/MediaControllerCompat$Callback$MessageHandler;

    new-instance v1, Landroidj/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21$ExtraCallback$5;

    invoke-direct {v1, p0, p1}, Landroidj/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21$ExtraCallback$5;-><init>(Landroidj/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21$ExtraCallback;Z)V

    invoke-virtual {v0, v1}, Landroidj/support/v4/media/session/MediaControllerCompat$Callback$MessageHandler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onVolumeInfoChanged(Landroidj/support/v4/media/session/ParcelableVolumeInfo;)V
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
