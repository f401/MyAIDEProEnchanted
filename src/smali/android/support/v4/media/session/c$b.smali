.class Landroid/support/v4/media/session/c$b;
.super Landroid/media/session/MediaController$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/session/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroid/support/v4/media/session/c$a;",
        ">",
        "Landroid/media/session/MediaController$Callback;"
    }
.end annotation


# instance fields
.field protected final j6:Landroid/support/v4/media/session/c$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/support/v4/media/session/c$a;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/media/session/MediaController$Callback;-><init>()V

    iput-object p1, p0, Landroid/support/v4/media/session/c$b;->j6:Landroid/support/v4/media/session/c$a;

    return-void
.end method


# virtual methods
.method public onAudioInfoChanged(Landroid/media/session/MediaController$PlaybackInfo;)V
    .registers 8

    iget-object v0, p0, Landroid/support/v4/media/session/c$b;->j6:Landroid/support/v4/media/session/c$a;

    invoke-virtual {p1}, Landroid/media/session/MediaController$PlaybackInfo;->getPlaybackType()I

    move-result v1

    invoke-static {p1}, Landroid/support/v4/media/session/c$c;->DW(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {p1}, Landroid/media/session/MediaController$PlaybackInfo;->getVolumeControl()I

    move-result v3

    invoke-virtual {p1}, Landroid/media/session/MediaController$PlaybackInfo;->getMaxVolume()I

    move-result v4

    invoke-virtual {p1}, Landroid/media/session/MediaController$PlaybackInfo;->getCurrentVolume()I

    move-result v5

    invoke-interface/range {v0 .. v5}, Landroid/support/v4/media/session/c$a;->j6(IIIII)V

    return-void
.end method

.method public onExtrasChanged(Landroid/os/Bundle;)V
    .registers 3

    iget-object v0, p0, Landroid/support/v4/media/session/c$b;->j6:Landroid/support/v4/media/session/c$a;

    invoke-interface {v0, p1}, Landroid/support/v4/media/session/c$a;->v5(Landroid/os/Bundle;)V

    return-void
.end method

.method public onMetadataChanged(Landroid/media/MediaMetadata;)V
    .registers 3

    iget-object v0, p0, Landroid/support/v4/media/session/c$b;->j6:Landroid/support/v4/media/session/c$a;

    invoke-interface {v0, p1}, Landroid/support/v4/media/session/c$a;->j6(Ljava/lang/Object;)V

    return-void
.end method

.method public onPlaybackStateChanged(Landroid/media/session/PlaybackState;)V
    .registers 3

    iget-object v0, p0, Landroid/support/v4/media/session/c$b;->j6:Landroid/support/v4/media/session/c$a;

    invoke-interface {v0, p1}, Landroid/support/v4/media/session/c$a;->DW(Ljava/lang/Object;)V

    return-void
.end method

.method public onQueueChanged(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/media/session/MediaSession$QueueItem;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Landroid/support/v4/media/session/c$b;->j6:Landroid/support/v4/media/session/c$a;

    invoke-interface {v0, p1}, Landroid/support/v4/media/session/c$a;->DW(Ljava/util/List;)V

    return-void
.end method

.method public onQueueTitleChanged(Ljava/lang/CharSequence;)V
    .registers 3

    iget-object v0, p0, Landroid/support/v4/media/session/c$b;->j6:Landroid/support/v4/media/session/c$a;

    invoke-interface {v0, p1}, Landroid/support/v4/media/session/c$a;->j6(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onSessionDestroyed()V
    .registers 2

    iget-object v0, p0, Landroid/support/v4/media/session/c$b;->j6:Landroid/support/v4/media/session/c$a;

    invoke-interface {v0}, Landroid/support/v4/media/session/c$a;->XG()V

    return-void
.end method

.method public onSessionEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 4

    iget-object v0, p0, Landroid/support/v4/media/session/c$b;->j6:Landroid/support/v4/media/session/c$a;

    invoke-interface {v0, p1, p2}, Landroid/support/v4/media/session/c$a;->j6(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method
