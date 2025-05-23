.class public Landroidj/support/v4/media/TransportMediator;
.super Landroidj/support/v4/media/TransportController;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final FLAG_KEY_MEDIA_FAST_FORWARD:I = 0x40
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final FLAG_KEY_MEDIA_NEXT:I = 0x80
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final FLAG_KEY_MEDIA_PAUSE:I = 0x10
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final FLAG_KEY_MEDIA_PLAY:I = 0x4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final FLAG_KEY_MEDIA_PLAY_PAUSE:I = 0x8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final FLAG_KEY_MEDIA_PREVIOUS:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final FLAG_KEY_MEDIA_REWIND:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final FLAG_KEY_MEDIA_STOP:I = 0x20
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final KEYCODE_MEDIA_PAUSE:I = 0x7f
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final KEYCODE_MEDIA_PLAY:I = 0x7e
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final KEYCODE_MEDIA_RECORD:I = 0x82
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field final mAudioManager:Landroid/media/AudioManager;

.field final mCallbacks:Landroidj/support/v4/media/TransportPerformer;

.field final mContext:Landroid/content/Context;

.field final mController:Landroidj/support/v4/media/TransportMediatorJellybeanMR2;

.field final mDispatcherState:Ljava/lang/Object;

.field final mKeyEventCallback:Landroid/view/KeyEvent$Callback;

.field final mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroidj/support/v4/media/TransportStateListener;",
            ">;"
        }
    .end annotation
.end field

.field final mTransportKeyCallback:Landroidj/support/v4/media/TransportMediatorCallback;

.field final mView:Landroid/view/View;


# direct methods
.method private constructor <init>(Landroid/app/Activity;Landroid/view/View;Landroidj/support/v4/media/TransportPerformer;)V
    .registers 9

    invoke-direct {p0}, Landroidj/support/v4/media/TransportController;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidj/support/v4/media/TransportMediator;->mListeners:Ljava/util/ArrayList;

    new-instance v0, Landroidj/support/v4/media/TransportMediator$1;

    invoke-direct {v0, p0}, Landroidj/support/v4/media/TransportMediator$1;-><init>(Landroidj/support/v4/media/TransportMediator;)V

    iput-object v0, p0, Landroidj/support/v4/media/TransportMediator;->mTransportKeyCallback:Landroidj/support/v4/media/TransportMediatorCallback;

    new-instance v0, Landroidj/support/v4/media/TransportMediator$2;

    invoke-direct {v0, p0}, Landroidj/support/v4/media/TransportMediator$2;-><init>(Landroidj/support/v4/media/TransportMediator;)V

    iput-object v0, p0, Landroidj/support/v4/media/TransportMediator;->mKeyEventCallback:Landroid/view/KeyEvent$Callback;

    if-eqz p1, :cond_55

    move-object v0, p1

    :goto_1b
    iput-object v0, p0, Landroidj/support/v4/media/TransportMediator;->mContext:Landroid/content/Context;

    iput-object p3, p0, Landroidj/support/v4/media/TransportMediator;->mCallbacks:Landroidj/support/v4/media/TransportPerformer;

    iget-object v0, p0, Landroidj/support/v4/media/TransportMediator;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Landroidj/support/v4/media/TransportMediator;->mAudioManager:Landroid/media/AudioManager;

    if-eqz p1, :cond_35

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p2

    :cond_35
    iput-object p2, p0, Landroidj/support/v4/media/TransportMediator;->mView:Landroid/view/View;

    iget-object v0, p0, Landroidj/support/v4/media/TransportMediator;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v0

    iput-object v0, p0, Landroidj/support/v4/media/TransportMediator;->mDispatcherState:Ljava/lang/Object;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_5a

    new-instance v0, Landroidj/support/v4/media/TransportMediatorJellybeanMR2;

    iget-object v1, p0, Landroidj/support/v4/media/TransportMediator;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroidj/support/v4/media/TransportMediator;->mAudioManager:Landroid/media/AudioManager;

    iget-object v3, p0, Landroidj/support/v4/media/TransportMediator;->mView:Landroid/view/View;

    iget-object v4, p0, Landroidj/support/v4/media/TransportMediator;->mTransportKeyCallback:Landroidj/support/v4/media/TransportMediatorCallback;

    invoke-direct {v0, v1, v2, v3, v4}, Landroidj/support/v4/media/TransportMediatorJellybeanMR2;-><init>(Landroid/content/Context;Landroid/media/AudioManager;Landroid/view/View;Landroidj/support/v4/media/TransportMediatorCallback;)V

    iput-object v0, p0, Landroidj/support/v4/media/TransportMediator;->mController:Landroidj/support/v4/media/TransportMediatorJellybeanMR2;

    :goto_54
    return-void

    :cond_55
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_1b

    :cond_5a
    const/4 v0, 0x0

    iput-object v0, p0, Landroidj/support/v4/media/TransportMediator;->mController:Landroidj/support/v4/media/TransportMediatorJellybeanMR2;

    goto :goto_54
.end method

.method public constructor <init>(Landroid/app/Activity;Landroidj/support/v4/media/TransportPerformer;)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Landroidj/support/v4/media/TransportMediator;-><init>(Landroid/app/Activity;Landroid/view/View;Landroidj/support/v4/media/TransportPerformer;)V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Landroidj/support/v4/media/TransportPerformer;)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Landroidj/support/v4/media/TransportMediator;-><init>(Landroid/app/Activity;Landroid/view/View;Landroidj/support/v4/media/TransportPerformer;)V

    return-void
.end method

.method private getListeners()[Landroidj/support/v4/media/TransportStateListener;
    .registers 3

    iget-object v0, p0, Landroidj/support/v4/media/TransportMediator;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_a

    const/4 v0, 0x0

    :goto_9
    return-object v0

    :cond_a
    iget-object v0, p0, Landroidj/support/v4/media/TransportMediator;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Landroidj/support/v4/media/TransportStateListener;

    iget-object v1, p0, Landroidj/support/v4/media/TransportMediator;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    goto :goto_9
.end method

.method static isMediaKey(I)Z
    .registers 2

    sparse-switch p0, :sswitch_data_8

    const/4 v0, 0x0

    :goto_4
    return v0

    :sswitch_5
    const/4 v0, 0x1

    goto :goto_4

    nop

    :sswitch_data_8
    .sparse-switch
        0x4f -> :sswitch_5
        0x55 -> :sswitch_5
        0x56 -> :sswitch_5
        0x57 -> :sswitch_5
        0x58 -> :sswitch_5
        0x59 -> :sswitch_5
        0x5a -> :sswitch_5
        0x5b -> :sswitch_5
        0x7e -> :sswitch_5
        0x7f -> :sswitch_5
        0x82 -> :sswitch_5
    .end sparse-switch
.end method

.method private pushControllerState()V
    .registers 6

    iget-object v0, p0, Landroidj/support/v4/media/TransportMediator;->mController:Landroidj/support/v4/media/TransportMediatorJellybeanMR2;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Landroidj/support/v4/media/TransportMediator;->mController:Landroidj/support/v4/media/TransportMediatorJellybeanMR2;

    iget-object v1, p0, Landroidj/support/v4/media/TransportMediator;->mCallbacks:Landroidj/support/v4/media/TransportPerformer;

    invoke-virtual {v1}, Landroidj/support/v4/media/TransportPerformer;->onIsPlaying()Z

    move-result v1

    iget-object v2, p0, Landroidj/support/v4/media/TransportMediator;->mCallbacks:Landroidj/support/v4/media/TransportPerformer;

    invoke-virtual {v2}, Landroidj/support/v4/media/TransportPerformer;->onGetCurrentPosition()J

    move-result-wide v2

    iget-object v4, p0, Landroidj/support/v4/media/TransportMediator;->mCallbacks:Landroidj/support/v4/media/TransportPerformer;

    invoke-virtual {v4}, Landroidj/support/v4/media/TransportPerformer;->onGetTransportControlFlags()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroidj/support/v4/media/TransportMediatorJellybeanMR2;->refreshState(ZJI)V

    :cond_1b
    return-void
.end method

.method private reportPlayingChanged()V
    .registers 5

    invoke-direct {p0}, Landroidj/support/v4/media/TransportMediator;->getListeners()[Landroidj/support/v4/media/TransportStateListener;

    move-result-object v1

    if-eqz v1, :cond_12

    array-length v2, v1

    const/4 v0, 0x0

    :goto_8
    if-ge v0, v2, :cond_12

    aget-object v3, v1, v0

    invoke-virtual {v3, p0}, Landroidj/support/v4/media/TransportStateListener;->onPlayingChanged(Landroidj/support/v4/media/TransportController;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_12
    return-void
.end method

.method private reportTransportControlsChanged()V
    .registers 5

    invoke-direct {p0}, Landroidj/support/v4/media/TransportMediator;->getListeners()[Landroidj/support/v4/media/TransportStateListener;

    move-result-object v1

    if-eqz v1, :cond_12

    array-length v2, v1

    const/4 v0, 0x0

    :goto_8
    if-ge v0, v2, :cond_12

    aget-object v3, v1, v0

    invoke-virtual {v3, p0}, Landroidj/support/v4/media/TransportStateListener;->onTransportControlsChanged(Landroidj/support/v4/media/TransportController;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_12
    return-void
.end method


# virtual methods
.method public destroy()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroidj/support/v4/media/TransportMediator;->mController:Landroidj/support/v4/media/TransportMediatorJellybeanMR2;

    invoke-virtual {v0}, Landroidj/support/v4/media/TransportMediatorJellybeanMR2;->destroy()V

    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v1, p0, Landroidj/support/v4/media/TransportMediator;->mKeyEventCallback:Landroid/view/KeyEvent$Callback;

    iget-object v0, p0, Landroidj/support/v4/media/TransportMediator;->mDispatcherState:Ljava/lang/Object;

    check-cast v0, Landroid/view/KeyEvent$DispatcherState;

    invoke-virtual {p1, v1, v0, p0}, Landroid/view/KeyEvent;->dispatch(Landroid/view/KeyEvent$Callback;Landroid/view/KeyEvent$DispatcherState;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getBufferPercentage()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroidj/support/v4/media/TransportMediator;->mCallbacks:Landroidj/support/v4/media/TransportPerformer;

    invoke-virtual {v0}, Landroidj/support/v4/media/TransportPerformer;->onGetBufferPercentage()I

    move-result v0

    return v0
.end method

.method public getCurrentPosition()J
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroidj/support/v4/media/TransportMediator;->mCallbacks:Landroidj/support/v4/media/TransportPerformer;

    invoke-virtual {v0}, Landroidj/support/v4/media/TransportPerformer;->onGetCurrentPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public getDuration()J
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroidj/support/v4/media/TransportMediator;->mCallbacks:Landroidj/support/v4/media/TransportPerformer;

    invoke-virtual {v0}, Landroidj/support/v4/media/TransportPerformer;->onGetDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method public getRemoteControlClient()Ljava/lang/Object;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroidj/support/v4/media/TransportMediator;->mController:Landroidj/support/v4/media/TransportMediatorJellybeanMR2;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroidj/support/v4/media/TransportMediator;->mController:Landroidj/support/v4/media/TransportMediatorJellybeanMR2;

    invoke-virtual {v0}, Landroidj/support/v4/media/TransportMediatorJellybeanMR2;->getRemoteControlClient()Ljava/lang/Object;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getTransportControlFlags()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroidj/support/v4/media/TransportMediator;->mCallbacks:Landroidj/support/v4/media/TransportPerformer;

    invoke-virtual {v0}, Landroidj/support/v4/media/TransportPerformer;->onGetTransportControlFlags()I

    move-result v0

    return v0
.end method

.method public isPlaying()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroidj/support/v4/media/TransportMediator;->mCallbacks:Landroidj/support/v4/media/TransportPerformer;

    invoke-virtual {v0}, Landroidj/support/v4/media/TransportPerformer;->onIsPlaying()Z

    move-result v0

    return v0
.end method

.method public pausePlaying()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroidj/support/v4/media/TransportMediator;->mController:Landroidj/support/v4/media/TransportMediatorJellybeanMR2;

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroidj/support/v4/media/TransportMediator;->mController:Landroidj/support/v4/media/TransportMediatorJellybeanMR2;

    invoke-virtual {v0}, Landroidj/support/v4/media/TransportMediatorJellybeanMR2;->pausePlaying()V

    :cond_9
    iget-object v0, p0, Landroidj/support/v4/media/TransportMediator;->mCallbacks:Landroidj/support/v4/media/TransportPerformer;

    invoke-virtual {v0}, Landroidj/support/v4/media/TransportPerformer;->onPause()V

    invoke-direct {p0}, Landroidj/support/v4/media/TransportMediator;->pushControllerState()V

    invoke-direct {p0}, Landroidj/support/v4/media/TransportMediator;->reportPlayingChanged()V

    return-void
.end method

.method public refreshState()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Landroidj/support/v4/media/TransportMediator;->pushControllerState()V

    invoke-direct {p0}, Landroidj/support/v4/media/TransportMediator;->reportPlayingChanged()V

    invoke-direct {p0}, Landroidj/support/v4/media/TransportMediator;->reportTransportControlsChanged()V

    return-void
.end method

.method public registerStateListener(Landroidj/support/v4/media/TransportStateListener;)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroidj/support/v4/media/TransportMediator;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public seekTo(J)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroidj/support/v4/media/TransportMediator;->mCallbacks:Landroidj/support/v4/media/TransportPerformer;

    invoke-virtual {v0, p1, p2}, Landroidj/support/v4/media/TransportPerformer;->onSeekTo(J)V

    return-void
.end method

.method public startPlaying()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroidj/support/v4/media/TransportMediator;->mController:Landroidj/support/v4/media/TransportMediatorJellybeanMR2;

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroidj/support/v4/media/TransportMediator;->mController:Landroidj/support/v4/media/TransportMediatorJellybeanMR2;

    invoke-virtual {v0}, Landroidj/support/v4/media/TransportMediatorJellybeanMR2;->startPlaying()V

    :cond_9
    iget-object v0, p0, Landroidj/support/v4/media/TransportMediator;->mCallbacks:Landroidj/support/v4/media/TransportPerformer;

    invoke-virtual {v0}, Landroidj/support/v4/media/TransportPerformer;->onStart()V

    invoke-direct {p0}, Landroidj/support/v4/media/TransportMediator;->pushControllerState()V

    invoke-direct {p0}, Landroidj/support/v4/media/TransportMediator;->reportPlayingChanged()V

    return-void
.end method

.method public stopPlaying()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroidj/support/v4/media/TransportMediator;->mController:Landroidj/support/v4/media/TransportMediatorJellybeanMR2;

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroidj/support/v4/media/TransportMediator;->mController:Landroidj/support/v4/media/TransportMediatorJellybeanMR2;

    invoke-virtual {v0}, Landroidj/support/v4/media/TransportMediatorJellybeanMR2;->stopPlaying()V

    :cond_9
    iget-object v0, p0, Landroidj/support/v4/media/TransportMediator;->mCallbacks:Landroidj/support/v4/media/TransportPerformer;

    invoke-virtual {v0}, Landroidj/support/v4/media/TransportPerformer;->onStop()V

    invoke-direct {p0}, Landroidj/support/v4/media/TransportMediator;->pushControllerState()V

    invoke-direct {p0}, Landroidj/support/v4/media/TransportMediator;->reportPlayingChanged()V

    return-void
.end method

.method public unregisterStateListener(Landroidj/support/v4/media/TransportStateListener;)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroidj/support/v4/media/TransportMediator;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method
