.class Landroidj/support/v4/media/session/MediaControllerCompat$Callback$MessageHandler;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidj/support/v4/media/session/MediaControllerCompat$Callback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MessageHandler"
.end annotation


# static fields
.field private static final MSG_DESTROYED:I = 0x8

.field private static final MSG_EVENT:I = 0x1

.field private static final MSG_UPDATE_CAPTIONING_ENABLED:I = 0xb

.field private static final MSG_UPDATE_EXTRAS:I = 0x7

.field private static final MSG_UPDATE_METADATA:I = 0x3

.field private static final MSG_UPDATE_PLAYBACK_STATE:I = 0x2

.field private static final MSG_UPDATE_QUEUE:I = 0x5

.field private static final MSG_UPDATE_QUEUE_TITLE:I = 0x6

.field private static final MSG_UPDATE_REPEAT_MODE:I = 0x9

.field private static final MSG_UPDATE_SHUFFLE_MODE:I = 0xa

.field private static final MSG_UPDATE_VOLUME:I = 0x4


# instance fields
.field final this$0:Landroidj/support/v4/media/session/MediaControllerCompat$Callback;


# direct methods
.method public constructor <init>(Landroidj/support/v4/media/session/MediaControllerCompat$Callback;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Landroidj/support/v4/media/session/MediaControllerCompat$Callback$MessageHandler;->this$0:Landroidj/support/v4/media/session/MediaControllerCompat$Callback;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    iget-object v0, p0, Landroidj/support/v4/media/session/MediaControllerCompat$Callback$MessageHandler;->this$0:Landroidj/support/v4/media/session/MediaControllerCompat$Callback;

    iget-boolean v0, v0, Landroidj/support/v4/media/session/MediaControllerCompat$Callback;->mRegistered:Z

    if-nez v0, :cond_7

    :goto_6
    return-void

    :cond_7
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_88

    goto :goto_6

    :pswitch_d  #0x1
    iget-object v1, p0, Landroidj/support/v4/media/session/MediaControllerCompat$Callback$MessageHandler;->this$0:Landroidj/support/v4/media/session/MediaControllerCompat$Callback;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroidj/support/v4/media/session/MediaControllerCompat$Callback;->onSessionEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_6

    :pswitch_1b  #0x2
    iget-object v1, p0, Landroidj/support/v4/media/session/MediaControllerCompat$Callback$MessageHandler;->this$0:Landroidj/support/v4/media/session/MediaControllerCompat$Callback;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroidj/support/v4/media/session/PlaybackStateCompat;

    invoke-virtual {v1, v0}, Landroidj/support/v4/media/session/MediaControllerCompat$Callback;->onPlaybackStateChanged(Landroidj/support/v4/media/session/PlaybackStateCompat;)V

    goto :goto_6

    :pswitch_25  #0x3
    iget-object v1, p0, Landroidj/support/v4/media/session/MediaControllerCompat$Callback$MessageHandler;->this$0:Landroidj/support/v4/media/session/MediaControllerCompat$Callback;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroidj/support/v4/media/MediaMetadataCompat;

    invoke-virtual {v1, v0}, Landroidj/support/v4/media/session/MediaControllerCompat$Callback;->onMetadataChanged(Landroidj/support/v4/media/MediaMetadataCompat;)V

    goto :goto_6

    :pswitch_2f  #0x5
    iget-object v1, p0, Landroidj/support/v4/media/session/MediaControllerCompat$Callback$MessageHandler;->this$0:Landroidj/support/v4/media/session/MediaControllerCompat$Callback;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-virtual {v1, v0}, Landroidj/support/v4/media/session/MediaControllerCompat$Callback;->onQueueChanged(Ljava/util/List;)V

    goto :goto_6

    :pswitch_39  #0x6
    iget-object v1, p0, Landroidj/support/v4/media/session/MediaControllerCompat$Callback$MessageHandler;->this$0:Landroidj/support/v4/media/session/MediaControllerCompat$Callback;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroidj/support/v4/media/session/MediaControllerCompat$Callback;->onQueueTitleChanged(Ljava/lang/CharSequence;)V

    goto :goto_6

    :pswitch_43  #0xb
    iget-object v1, p0, Landroidj/support/v4/media/session/MediaControllerCompat$Callback$MessageHandler;->this$0:Landroidj/support/v4/media/session/MediaControllerCompat$Callback;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v1, v0}, Landroidj/support/v4/media/session/MediaControllerCompat$Callback;->onCaptioningEnabledChanged(Z)V

    goto :goto_6

    :pswitch_51  #0x9
    iget-object v1, p0, Landroidj/support/v4/media/session/MediaControllerCompat$Callback$MessageHandler;->this$0:Landroidj/support/v4/media/session/MediaControllerCompat$Callback;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroidj/support/v4/media/session/MediaControllerCompat$Callback;->onRepeatModeChanged(I)V

    goto :goto_6

    :pswitch_5f  #0xa
    iget-object v1, p0, Landroidj/support/v4/media/session/MediaControllerCompat$Callback$MessageHandler;->this$0:Landroidj/support/v4/media/session/MediaControllerCompat$Callback;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v1, v0}, Landroidj/support/v4/media/session/MediaControllerCompat$Callback;->onShuffleModeChanged(Z)V

    goto :goto_6

    :pswitch_6d  #0x7
    iget-object v1, p0, Landroidj/support/v4/media/session/MediaControllerCompat$Callback$MessageHandler;->this$0:Landroidj/support/v4/media/session/MediaControllerCompat$Callback;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    invoke-virtual {v1, v0}, Landroidj/support/v4/media/session/MediaControllerCompat$Callback;->onExtrasChanged(Landroid/os/Bundle;)V

    goto :goto_6

    :pswitch_77  #0x4
    iget-object v1, p0, Landroidj/support/v4/media/session/MediaControllerCompat$Callback$MessageHandler;->this$0:Landroidj/support/v4/media/session/MediaControllerCompat$Callback;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroidj/support/v4/media/session/MediaControllerCompat$PlaybackInfo;

    invoke-virtual {v1, v0}, Landroidj/support/v4/media/session/MediaControllerCompat$Callback;->onAudioInfoChanged(Landroidj/support/v4/media/session/MediaControllerCompat$PlaybackInfo;)V

    goto :goto_6

    :pswitch_81  #0x8
    iget-object v0, p0, Landroidj/support/v4/media/session/MediaControllerCompat$Callback$MessageHandler;->this$0:Landroidj/support/v4/media/session/MediaControllerCompat$Callback;

    invoke-virtual {v0}, Landroidj/support/v4/media/session/MediaControllerCompat$Callback;->onSessionDestroyed()V

    goto :goto_6

    nop

    :pswitch_data_88
    .packed-switch 0x1
        :pswitch_d  #00000001
        :pswitch_1b  #00000002
        :pswitch_25  #00000003
        :pswitch_77  #00000004
        :pswitch_2f  #00000005
        :pswitch_39  #00000006
        :pswitch_6d  #00000007
        :pswitch_81  #00000008
        :pswitch_51  #00000009
        :pswitch_5f  #0000000a
        :pswitch_43  #0000000b
    .end packed-switch
.end method

.method public post(ILjava/lang/Object;Landroid/os/Bundle;)V
    .registers 5

    invoke-virtual {p0, p1, p2}, Landroidj/support/v4/media/session/MediaControllerCompat$Callback$MessageHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
