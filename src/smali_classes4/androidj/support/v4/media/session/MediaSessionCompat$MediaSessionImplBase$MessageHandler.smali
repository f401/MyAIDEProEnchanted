.class Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MessageHandler;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidj/support/v4/media/session/MediaSessionCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MessageHandler"
.end annotation


# static fields
.field private static final KEYCODE_MEDIA_PAUSE:I = 0x7f

.field private static final KEYCODE_MEDIA_PLAY:I = 0x7e

.field private static final MSG_ADD_QUEUE_ITEM:I = 0x19

.field private static final MSG_ADD_QUEUE_ITEM_AT:I = 0x1a

.field private static final MSG_ADJUST_VOLUME:I = 0x2

.field private static final MSG_COMMAND:I = 0x1

.field private static final MSG_CUSTOM_ACTION:I = 0x14

.field private static final MSG_FAST_FORWARD:I = 0x10

.field private static final MSG_MEDIA_BUTTON:I = 0x15

.field private static final MSG_NEXT:I = 0xe

.field private static final MSG_PAUSE:I = 0xc

.field private static final MSG_PLAY:I = 0x7

.field private static final MSG_PLAY_MEDIA_ID:I = 0x8

.field private static final MSG_PLAY_SEARCH:I = 0x9

.field private static final MSG_PLAY_URI:I = 0xa

.field private static final MSG_PREPARE:I = 0x3

.field private static final MSG_PREPARE_MEDIA_ID:I = 0x4

.field private static final MSG_PREPARE_SEARCH:I = 0x5

.field private static final MSG_PREPARE_URI:I = 0x6

.field private static final MSG_PREVIOUS:I = 0xf

.field private static final MSG_RATE:I = 0x13

.field private static final MSG_REMOVE_QUEUE_ITEM:I = 0x1b

.field private static final MSG_REMOVE_QUEUE_ITEM_AT:I = 0x1c

.field private static final MSG_REWIND:I = 0x11

.field private static final MSG_SEEK_TO:I = 0x12

.field private static final MSG_SET_CAPTIONING_ENABLED:I = 0x1d

.field private static final MSG_SET_REPEAT_MODE:I = 0x17

.field private static final MSG_SET_SHUFFLE_MODE_ENABLED:I = 0x18

.field private static final MSG_SET_VOLUME:I = 0x16

.field private static final MSG_SKIP_TO_ITEM:I = 0xb

.field private static final MSG_STOP:I = 0xd


# instance fields
.field final this$0:Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;


# direct methods
.method public constructor <init>(Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MessageHandler;->this$0:Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method private onMediaButtonEvent(Landroid/view/KeyEvent;Landroidj/support/v4/media/session/MediaSessionCompat$Callback;)V
    .registers 13

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-wide/16 v2, 0x0

    if-eqz p1, :cond_c

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_d

    :cond_c
    :goto_c
    return-void

    :cond_d
    iget-object v0, p0, Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MessageHandler;->this$0:Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;

    iget-object v0, v0, Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mState:Landroidj/support/v4/media/session/PlaybackStateCompat;

    if-nez v0, :cond_46

    move-wide v0, v2

    :goto_14
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_ae

    goto :goto_c

    :sswitch_1c
    iget-object v6, p0, Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MessageHandler;->this$0:Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;

    iget-object v6, v6, Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mState:Landroidj/support/v4/media/session/PlaybackStateCompat;

    if-eqz v6, :cond_9e

    iget-object v6, p0, Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MessageHandler;->this$0:Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;

    iget-object v6, v6, Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mState:Landroidj/support/v4/media/session/PlaybackStateCompat;

    invoke-virtual {v6}, Landroidj/support/v4/media/session/PlaybackStateCompat;->getState()I

    move-result v6

    const/4 v7, 0x3

    if-ne v6, v7, :cond_9e

    move v7, v4

    :goto_2e
    const-wide/16 v8, 0x204

    and-long/2addr v8, v0

    cmp-long v6, v8, v2

    if-eqz v6, :cond_a0

    move v6, v4

    :goto_36
    const-wide/16 v8, 0x202

    and-long/2addr v0, v8

    cmp-long v0, v0, v2

    if-eqz v0, :cond_a2

    move v0, v4

    :goto_3e
    if-eqz v7, :cond_a4

    if-eqz v0, :cond_a4

    invoke-virtual {p2}, Landroidj/support/v4/media/session/MediaSessionCompat$Callback;->onPause()V

    goto :goto_c

    :cond_46
    iget-object v0, p0, Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MessageHandler;->this$0:Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;

    iget-object v0, v0, Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mState:Landroidj/support/v4/media/session/PlaybackStateCompat;

    invoke-virtual {v0}, Landroidj/support/v4/media/session/PlaybackStateCompat;->getActions()J

    move-result-wide v0

    goto :goto_14

    :sswitch_4f
    const-wide/16 v4, 0x4

    and-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-eqz v0, :cond_c

    invoke-virtual {p2}, Landroidj/support/v4/media/session/MediaSessionCompat$Callback;->onPlay()V

    goto :goto_c

    :sswitch_5a
    const-wide/16 v4, 0x2

    and-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-eqz v0, :cond_c

    invoke-virtual {p2}, Landroidj/support/v4/media/session/MediaSessionCompat$Callback;->onPause()V

    goto :goto_c

    :sswitch_65
    const-wide/16 v4, 0x20

    and-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-eqz v0, :cond_c

    invoke-virtual {p2}, Landroidj/support/v4/media/session/MediaSessionCompat$Callback;->onSkipToNext()V

    goto :goto_c

    :sswitch_70
    const-wide/16 v4, 0x10

    and-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-eqz v0, :cond_c

    invoke-virtual {p2}, Landroidj/support/v4/media/session/MediaSessionCompat$Callback;->onSkipToPrevious()V

    goto :goto_c

    :sswitch_7b
    const-wide/16 v4, 0x1

    and-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-eqz v0, :cond_c

    invoke-virtual {p2}, Landroidj/support/v4/media/session/MediaSessionCompat$Callback;->onStop()V

    goto :goto_c

    :sswitch_86
    const-wide/16 v4, 0x40

    and-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-eqz v0, :cond_c

    invoke-virtual {p2}, Landroidj/support/v4/media/session/MediaSessionCompat$Callback;->onFastForward()V

    goto/16 :goto_c

    :sswitch_92
    const-wide/16 v4, 0x8

    and-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-eqz v0, :cond_c

    invoke-virtual {p2}, Landroidj/support/v4/media/session/MediaSessionCompat$Callback;->onRewind()V

    goto/16 :goto_c

    :cond_9e
    move v7, v5

    goto :goto_2e

    :cond_a0
    move v6, v5

    goto :goto_36

    :cond_a2
    move v0, v5

    goto :goto_3e

    :cond_a4
    if-nez v7, :cond_c

    if-eqz v6, :cond_c

    invoke-virtual {p2}, Landroidj/support/v4/media/session/MediaSessionCompat$Callback;->onPlay()V

    goto/16 :goto_c

    nop

    :sswitch_data_ae
    .sparse-switch
        0x4f -> :sswitch_1c
        0x55 -> :sswitch_1c
        0x56 -> :sswitch_7b
        0x57 -> :sswitch_65
        0x58 -> :sswitch_70
        0x59 -> :sswitch_92
        0x5a -> :sswitch_86
        0x7e -> :sswitch_4f
        0x7f -> :sswitch_5a
    .end sparse-switch
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6

    const/4 v2, 0x0

    iget-object v0, p0, Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MessageHandler;->this$0:Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;

    iget-object v1, v0, Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mCallback:Landroidj/support/v4/media/session/MediaSessionCompat$Callback;

    if-nez v1, :cond_8

    :cond_7
    :goto_7
    return-void

    :cond_8
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_12c

    goto :goto_7

    :pswitch_e  #0x1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$Command;

    iget-object v2, v0, Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$Command;->command:Ljava/lang/String;

    iget-object v3, v0, Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$Command;->extras:Landroid/os/Bundle;

    iget-object v0, v0, Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$Command;->stub:Landroid/os/ResultReceiver;

    invoke-virtual {v1, v2, v3, v0}, Landroidj/support/v4/media/session/MediaSessionCompat$Callback;->onCommand(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V

    goto :goto_7

    :pswitch_1c  #0x15
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/view/KeyEvent;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MEDIA_BUTTON"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "android.intent.extra.KEY_EVENT"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-virtual {v1, v2}, Landroidj/support/v4/media/session/MediaSessionCompat$Callback;->onMediaButtonEvent(Landroid/content/Intent;)Z

    move-result v2

    if-nez v2, :cond_7

    invoke-direct {p0, v0, v1}, Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MessageHandler;->onMediaButtonEvent(Landroid/view/KeyEvent;Landroidj/support/v4/media/session/MediaSessionCompat$Callback;)V

    goto :goto_7

    :pswitch_36  #0x3
    invoke-virtual {v1}, Landroidj/support/v4/media/session/MediaSessionCompat$Callback;->onPrepare()V

    goto :goto_7

    :pswitch_3a  #0x4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroidj/support/v4/media/session/MediaSessionCompat$Callback;->onPrepareFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_7

    :pswitch_46  #0x5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroidj/support/v4/media/session/MediaSessionCompat$Callback;->onPrepareFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_7

    :pswitch_52  #0x6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroidj/support/v4/media/session/MediaSessionCompat$Callback;->onPrepareFromUri(Landroid/net/Uri;Landroid/os/Bundle;)V

    goto :goto_7

    :pswitch_5e  #0x7
    invoke-virtual {v1}, Landroidj/support/v4/media/session/MediaSessionCompat$Callback;->onPlay()V

    goto :goto_7

    :pswitch_62  #0x8
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroidj/support/v4/media/session/MediaSessionCompat$Callback;->onPlayFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_7

    :pswitch_6e  #0x9
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroidj/support/v4/media/session/MediaSessionCompat$Callback;->onPlayFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_7

    :pswitch_7a  #0xa
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroidj/support/v4/media/session/MediaSessionCompat$Callback;->onPlayFromUri(Landroid/net/Uri;Landroid/os/Bundle;)V

    goto :goto_7

    :pswitch_86  #0xb
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroidj/support/v4/media/session/MediaSessionCompat$Callback;->onSkipToQueueItem(J)V

    goto/16 :goto_7

    :pswitch_93  #0xc
    invoke-virtual {v1}, Landroidj/support/v4/media/session/MediaSessionCompat$Callback;->onPause()V

    goto/16 :goto_7

    :pswitch_98  #0xd
    invoke-virtual {v1}, Landroidj/support/v4/media/session/MediaSessionCompat$Callback;->onStop()V

    goto/16 :goto_7

    :pswitch_9d  #0xe
    invoke-virtual {v1}, Landroidj/support/v4/media/session/MediaSessionCompat$Callback;->onSkipToNext()V

    goto/16 :goto_7

    :pswitch_a2  #0xf
    invoke-virtual {v1}, Landroidj/support/v4/media/session/MediaSessionCompat$Callback;->onSkipToPrevious()V

    goto/16 :goto_7

    :pswitch_a7  #0x10
    invoke-virtual {v1}, Landroidj/support/v4/media/session/MediaSessionCompat$Callback;->onFastForward()V

    goto/16 :goto_7

    :pswitch_ac  #0x11
    invoke-virtual {v1}, Landroidj/support/v4/media/session/MediaSessionCompat$Callback;->onRewind()V

    goto/16 :goto_7

    :pswitch_b1  #0x12
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroidj/support/v4/media/session/MediaSessionCompat$Callback;->onSeekTo(J)V

    goto/16 :goto_7

    :pswitch_be  #0x13
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroidj/support/v4/media/RatingCompat;

    invoke-virtual {v1, v0}, Landroidj/support/v4/media/session/MediaSessionCompat$Callback;->onSetRating(Landroidj/support/v4/media/RatingCompat;)V

    goto/16 :goto_7

    :pswitch_c7  #0x14
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroidj/support/v4/media/session/MediaSessionCompat$Callback;->onCustomAction(Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_7

    :pswitch_d4  #0x19
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroidj/support/v4/media/MediaDescriptionCompat;

    invoke-virtual {v1, v0}, Landroidj/support/v4/media/session/MediaSessionCompat$Callback;->onAddQueueItem(Landroidj/support/v4/media/MediaDescriptionCompat;)V

    goto/16 :goto_7

    :pswitch_dd  #0x1a
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroidj/support/v4/media/MediaDescriptionCompat;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v0, v2}, Landroidj/support/v4/media/session/MediaSessionCompat$Callback;->onAddQueueItem(Landroidj/support/v4/media/MediaDescriptionCompat;I)V

    goto/16 :goto_7

    :pswitch_e8  #0x1b
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroidj/support/v4/media/MediaDescriptionCompat;

    invoke-virtual {v1, v0}, Landroidj/support/v4/media/session/MediaSessionCompat$Callback;->onRemoveQueueItem(Landroidj/support/v4/media/MediaDescriptionCompat;)V

    goto/16 :goto_7

    :pswitch_f1  #0x1c
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v0}, Landroidj/support/v4/media/session/MediaSessionCompat$Callback;->onRemoveQueueItemAt(I)V

    goto/16 :goto_7

    :pswitch_f8  #0x2
    iget-object v0, p0, Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MessageHandler;->this$0:Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1, v2}, Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->adjustVolume(II)V

    goto/16 :goto_7

    :pswitch_101  #0x16
    iget-object v0, p0, Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MessageHandler;->this$0:Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1, v2}, Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->setVolumeTo(II)V

    goto/16 :goto_7

    :pswitch_10a  #0x1d
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v1, v0}, Landroidj/support/v4/media/session/MediaSessionCompat$Callback;->onSetCaptioningEnabled(Z)V

    goto/16 :goto_7

    :pswitch_117  #0x17
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v0}, Landroidj/support/v4/media/session/MediaSessionCompat$Callback;->onSetRepeatMode(I)V

    goto/16 :goto_7

    :pswitch_11e  #0x18
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v1, v0}, Landroidj/support/v4/media/session/MediaSessionCompat$Callback;->onSetShuffleModeEnabled(Z)V

    goto/16 :goto_7

    nop

    :pswitch_data_12c
    .packed-switch 0x1
        :pswitch_e  #00000001
        :pswitch_f8  #00000002
        :pswitch_36  #00000003
        :pswitch_3a  #00000004
        :pswitch_46  #00000005
        :pswitch_52  #00000006
        :pswitch_5e  #00000007
        :pswitch_62  #00000008
        :pswitch_6e  #00000009
        :pswitch_7a  #0000000a
        :pswitch_86  #0000000b
        :pswitch_93  #0000000c
        :pswitch_98  #0000000d
        :pswitch_9d  #0000000e
        :pswitch_a2  #0000000f
        :pswitch_a7  #00000010
        :pswitch_ac  #00000011
        :pswitch_b1  #00000012
        :pswitch_be  #00000013
        :pswitch_c7  #00000014
        :pswitch_1c  #00000015
        :pswitch_101  #00000016
        :pswitch_117  #00000017
        :pswitch_11e  #00000018
        :pswitch_d4  #00000019
        :pswitch_dd  #0000001a
        :pswitch_e8  #0000001b
        :pswitch_f1  #0000001c
        :pswitch_10a  #0000001d
    .end packed-switch
.end method

.method public post(I)V
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MessageHandler;->post(ILjava/lang/Object;)V

    return-void
.end method

.method public post(ILjava/lang/Object;)V
    .registers 4

    invoke-virtual {p0, p1, p2}, Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MessageHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public post(ILjava/lang/Object;I)V
    .registers 5

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p3, v0, p2}, Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MessageHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public post(ILjava/lang/Object;Landroid/os/Bundle;)V
    .registers 5

    invoke-virtual {p0, p1, p2}, Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MessageHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
