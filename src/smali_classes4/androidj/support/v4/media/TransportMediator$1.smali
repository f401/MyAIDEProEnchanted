.class Landroidj/support/v4/media/TransportMediator$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroidj/support/v4/media/TransportMediatorCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidj/support/v4/media/TransportMediator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Landroidj/support/v4/media/TransportMediator;


# direct methods
.method constructor <init>(Landroidj/support/v4/media/TransportMediator;)V
    .registers 2

    iput-object p1, p0, Landroidj/support/v4/media/TransportMediator$1;->this$0:Landroidj/support/v4/media/TransportMediator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPlaybackPosition()J
    .registers 3

    iget-object v0, p0, Landroidj/support/v4/media/TransportMediator$1;->this$0:Landroidj/support/v4/media/TransportMediator;

    iget-object v0, v0, Landroidj/support/v4/media/TransportMediator;->mCallbacks:Landroidj/support/v4/media/TransportPerformer;

    invoke-virtual {v0}, Landroidj/support/v4/media/TransportPerformer;->onGetCurrentPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public handleAudioFocusChange(I)V
    .registers 3

    iget-object v0, p0, Landroidj/support/v4/media/TransportMediator$1;->this$0:Landroidj/support/v4/media/TransportMediator;

    iget-object v0, v0, Landroidj/support/v4/media/TransportMediator;->mCallbacks:Landroidj/support/v4/media/TransportPerformer;

    invoke-virtual {v0, p1}, Landroidj/support/v4/media/TransportPerformer;->onAudioFocusChange(I)V

    return-void
.end method

.method public handleKey(Landroid/view/KeyEvent;)V
    .registers 3

    iget-object v0, p0, Landroidj/support/v4/media/TransportMediator$1;->this$0:Landroidj/support/v4/media/TransportMediator;

    iget-object v0, v0, Landroidj/support/v4/media/TransportMediator;->mKeyEventCallback:Landroid/view/KeyEvent$Callback;

    invoke-virtual {p1, v0}, Landroid/view/KeyEvent;->dispatch(Landroid/view/KeyEvent$Callback;)Z

    return-void
.end method

.method public playbackPositionUpdate(J)V
    .registers 4

    iget-object v0, p0, Landroidj/support/v4/media/TransportMediator$1;->this$0:Landroidj/support/v4/media/TransportMediator;

    iget-object v0, v0, Landroidj/support/v4/media/TransportMediator;->mCallbacks:Landroidj/support/v4/media/TransportPerformer;

    invoke-virtual {v0, p1, p2}, Landroidj/support/v4/media/TransportPerformer;->onSeekTo(J)V

    return-void
.end method
