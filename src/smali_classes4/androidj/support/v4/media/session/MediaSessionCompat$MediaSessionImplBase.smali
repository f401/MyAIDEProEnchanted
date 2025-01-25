.class Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;
.super Ljava/lang/Object;

# interfaces
.implements Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidj/support/v4/media/session/MediaSessionCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MediaSessionImplBase"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$Command;,
        Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MediaSessionStub;,
        Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MessageHandler;
    }
.end annotation


# instance fields
.field final mAudioManager:Landroid/media/AudioManager;

.field volatile mCallback:Landroidj/support/v4/media/session/MediaSessionCompat$Callback;

.field mCaptioningEnabled:Z

.field private final mContext:Landroid/content/Context;

.field final mControllerCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Landroidj/support/v4/media/session/IMediaControllerCallback;",
            ">;"
        }
    .end annotation
.end field

.field mDestroyed:Z

.field mExtras:Landroid/os/Bundle;

.field mFlags:I

.field private mHandler:Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MessageHandler;

.field private mIsActive:Z

.field private mIsMbrRegistered:Z

.field private mIsRccRegistered:Z

.field mLocalStream:I

.field final mLock:Ljava/lang/Object;

.field private final mMediaButtonReceiverComponentName:Landroid/content/ComponentName;

.field private final mMediaButtonReceiverIntent:Landroid/app/PendingIntent;

.field mMetadata:Landroidj/support/v4/media/MediaMetadataCompat;

.field final mPackageName:Ljava/lang/String;

.field mQueue:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroidj/support/v4/media/session/MediaSessionCompat$QueueItem;",
            ">;"
        }
    .end annotation
.end field

.field mQueueTitle:Ljava/lang/CharSequence;

.field mRatingType:I

.field private final mRccObj:Ljava/lang/Object;

.field mRepeatMode:I

.field mSessionActivity:Landroid/app/PendingIntent;

.field mShuffleModeEnabled:Z

.field mState:Landroidj/support/v4/media/session/PlaybackStateCompat;

.field private final mStub:Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MediaSessionStub;

.field final mTag:Ljava/lang/String;

.field private final mToken:Landroidj/support/v4/media/session/MediaSessionCompat$Token;

.field private mVolumeCallback:Landroidj/support/v4/media/VolumeProviderCompat$Callback;

.field mVolumeProvider:Landroidj/support/v4/media/VolumeProviderCompat;

.field mVolumeType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/content/ComponentName;Landroid/app/PendingIntent;)V
    .registers 8

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mLock:Ljava/lang/Object;

    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mControllerCallbacks:Landroid/os/RemoteCallbackList;

    iput-boolean v2, p0, Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mDestroyed:Z

    iput-boolean v2, p0, Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mIsActive:Z

    iput-boolean v2, p0, Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mIsRccRegistered:Z

    iput-boolean v2, p0, Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mIsMbrRegistered:Z

    new-instance v0, Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$1;

    invoke-direct {v0, p0}, Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$1;-><init>(Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;)V

    iput-object v0, p0, Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mVolumeCallback:Landroidj/support/v4/media/VolumeProviderCompat$Callback;

    if-nez p3, :cond_2b

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "MediaButtonReceiver component may not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2b
    iput-object p1, p0, Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mPackageName:Ljava/lang/String;

    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mAudioManager:Landroid/media/AudioManager;

    iput-object p2, p0, Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mTag:Ljava/lang/String;

    iput-object p3, p0, Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mMediaButtonReceiverComponentName:Landroid/content/ComponentName;

    iput-object p4, p0, Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mMediaButtonReceiverIntent:Landroid/app/PendingIntent;

    new-instance v0, Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MediaSessionStub;

    invoke-direct {v0, p0}, Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MediaSessionStub;-><init>(Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;)V

    iput-object v0, p0, Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mStub:Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MediaSessionStub;

    new-instance v0, Landroidj/support/v4/media/session/MediaSessionCompat$Token;

    iget-object v1, p0, Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mStub:Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MediaSessionStub;

    invoke-direct {v0, v1}, Landroidj/support/v4/media/session/MediaSessionCompat$Token;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mToken:Landroidj/support/v4/media/session/MediaSessionCompat$Token;

    iput v2, p0, Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mRatingType:I

    const/4 v0, 0x1

    iput v0, p0, Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mVolumeType:I

    const/4 v0, 0x3

    iput v0, p0, Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mLocalStream:I

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_68

    invoke-static {p4}, Landroidj/support/v4/media/session/MediaSessionCompatApi14;->createRemoteControlClient(Landroid/app/PendingIntent;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mRccObj:Ljava/lang/Object;

    :goto_67
    return-void

    :cond_68
    const/4 v0, 0x0

    iput-object v0, p0, Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mRccObj:Ljava/lang/Object;

    goto :goto_67
.end method

.method private sendCaptioningEnabled(Z)V
    .registers 4

    iget-object v0, p0, Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mControllerCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_9
    if-ltz v1, :cond_1a

    iget-object v0, p0, Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mControllerCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroidj/support/v4/media/session/IMediaControllerCallback;

    :try_start_13
    invoke-interface {v0, p1}, Landroidj/support/v4/media/session/IMediaControllerCallback;->onCaptioningEnabledChanged(Z)V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_16} :catch_20

    :goto_16
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_9

    :cond_1a
    iget-object v0, p0, Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mControllerCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    return-void

    :catch_20
    move-exception v0

    goto :goto_16
.end method

.method private sendEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 5

    iget-object v0, p0, Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mControllerCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_9
    if-ltz v1, :cond_1a

    iget-object v0, p0, Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mControllerCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroidj/support/v4/media/session/IMediaControllerCallback;

    :try_start_13
    invoke-interface {v0, p1, p2}, Landroidj/support/v4/media/session/IMediaControllerCallback;->onEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_16} :catch_20

    :goto_16
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_9

    :cond_1a
    iget-object v0, p0, Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mControllerCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    return-void

    :catch_20
    move-exception v0

    goto :goto_16
.end method

.method private sendExtras(Landroid/os/Bundle;)V
    .registers 4

    iget-object v0, p0, Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mControllerCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_9
    if-ltz v1, :cond_1a

    iget-object v0, p0, Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mControllerCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroidj/support/v4/media/session/IMediaControllerCallback;

    :try_start_13
    invoke-interface {v0, p1}, Landroidj/support/v4/media/session/IMediaControllerCallback;->onExtrasChanged(Landroid/os/Bundle;)V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_16} :catch_20

    :goto_16
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_9

    :cond_1a
    iget-object v0, p0, Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mControllerCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    return-void

    :catch_20
    move-exception v0

    goto :goto_16
.end method

.method private sendMetadata(Landroidj/support/v4/media/MediaMetadataCompat;)V
    .registers 4

    iget-object v0, p0, Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mControllerCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_9
    if-ltz v1, :cond_1a

    iget-object v0, p0, Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mControllerCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroidj/support/v4/media/session/IMediaControllerCallback;

    :try_start_13
    invoke-interface {v0, p1}, Landroidj/support/v4/media/session/IMediaControllerCallback;->onMetadataChanged(Landroidj/support/v4/media/MediaMetadataCompat;)V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_16} :catch_20

    :goto_16
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_9

    :cond_1a
    iget-object v0, p0, Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mControllerCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    return-void

    :catch_20
    move-exception v0

    goto :goto_16
.end method

.method private sendQueue(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroidj/support/v4/media/session/MediaSessionCompat$QueueItem;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mControllerCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_9
    if-ltz v1, :cond_1a

    iget-object v0, p0, Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mControllerCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroidj/support/v4/media/session/IMediaControllerCallback;

    :try_start_13
    invoke-interface {v0, p1}, Landroidj/support/v4/media/session/IMediaControllerCallback;->onQueueChanged(Ljava/util/List;)V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_16} :catch_20

    :goto_16
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_9

    :cond_1a
    iget-object v0, p0, Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mControllerCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    return-void

    :catch_20
    move-exception v0

    goto :goto_16
.end method

.method private sendQueueTitle(Ljava/lang/CharSequence;)V
    .registers 4

    iget-object v0, p0, Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mControllerCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_9
    if-ltz v1, :cond_1a

    iget-object v0, p0, Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mControllerCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroidj/support/v4/media/session/IMediaControllerCallback;

    :try_start_13
    invoke-interface {v0, p1}, Landroidj/support/v4/media/session/IMediaControllerCallback;->onQueueTitleChanged(Ljava/lang/CharSequence;)V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_16} :catch_20

    :goto_16
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_9

    :cond_1a
    iget-object v0, p0, Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mControllerCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    return-void

    :catch_20
    move-exception v0

    goto :goto_16
.end method

.method private sendRepeatMode(I)V
    .registers 4

    iget-object v0, p0, Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mControllerCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_9
    if-ltz v1, :cond_1a

    iget-object v0, p0, Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mControllerCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroidj/support/v4/media/session/IMediaControllerCallback;

    :try_start_13
    invoke-interface {v0, p1}, Landroidj/support/v4/media/session/IMediaControllerCallback;->onRepeatModeChanged(I)V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_16} :catch_20

    :goto_16
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_9

    :cond_1a
    iget-object v0, p0, Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mControllerCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    return-void

    :catch_20
    move-exception v0

    goto :goto_16
.end method

.method private sendSessionDestroyed()V
    .registers 3

    iget-object v0, p0, Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mControllerCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_9
    if-ltz v1, :cond_1a

    iget-object v0, p0, Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mControllerCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroidj/support/v4/media/session/IMediaControllerCallback;

    :try_start_13
    invoke-interface {v0}, Landroidj/support/v4/media/session/IMediaControllerCallback;->onSessionDestroyed()V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_16} :catch_25

    :goto_16
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_9

    :cond_1a
    iget-object v0, p0, Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mControllerCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    iget-object v0, p0, Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mControllerCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->kill()V

    return-void

    :catch_25
    move-exception v0

    goto :goto_16
.end method

.method private sendShuffleModeEnabled(Z)V
    .registers 4

    iget-object v0, p0, Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mControllerCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_9
    if-ltz v1, :cond_1a

    iget-object v0, p0, Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mControllerCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroidj/support/v4/media/session/IMediaControllerCallback;

    :try_start_13
    invoke-interface {v0, p1}, Landroidj/support/v4/media/session/IMediaControllerCallback;->onShuffleModeChanged(Z)V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_16} :catch_20

    :goto_16
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_9

    :cond_1a
    iget-object v0, p0, Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mControllerCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    return-void

    :catch_20
    move-exception v0

    goto :goto_16
.end method

.method private sendState(Landroidj/support/v4/media/session/PlaybackStateCompat;)V
    .registers 4

    iget-object v0, p0, Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mControllerCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_9
    if-ltz v1, :cond_1a

    iget-object v0, p0, Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mControllerCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroidj/support/v4/media/session/IMediaControllerCallback;

    :try_start_13
    invoke-interface {v0, p1}, Landroidj/support/v4/media/session/IMediaControllerCallback;->onPlaybackStateChanged(Landroidj/support/v4/media/session/PlaybackStateCompat;)V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_16} :catch_20

    :goto_16
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_9

    :cond_1a
    iget-object v0, p0, Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mControllerCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    return-void

    :catch_20
    move-exception v0

    goto :goto_16
.end method

.method private update()Z
    .registers 6

    const/16 v3, 0x12

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-boolean v0, p0, Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mIsActive:Z

    if-eqz v0, :cond_90

    iget-boolean v0, p0, Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mIsMbrRegistered:Z

    if-nez v0, :cond_4c

    iget v0, p0, Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mFlags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_4c

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v3, :cond_3c

    iget-object v0, p0, Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mContext:Landroid/content/Context;

    iget-object v3, p0, Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mMediaButtonReceiverIntent:Landroid/app/PendingIntent;

    iget-object v4, p0, Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mMediaButtonReceiverComponentName:Landroid/content/ComponentName;

    invoke-static {v0, v3, v4}, Landroidj/support/v4/media/session/MediaSessionCompatApi18;->registerMediaButtonEventReceiver(Landroid/content/Context;Landroid/app/PendingIntent;Landroid/content/ComponentName;)V

    :goto_1f
    iput-boolean v1, p0, Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mIsMbrRegistered:Z

    :cond_21
    :goto_21
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xe

    if-lt v0, v3, :cond_b5

    iget-boolean v0, p0, Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mIsRccRegistered:Z

    if-nez v0, :cond_76

    iget v0, p0, Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_76

    iget-object v0, p0, Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mRccObj:Ljava/lang/Object;

    invoke-static {v0, v2}, Landroidj/support/v4/media/session/MediaSessionCompatApi14;->registerRemoteControlClient(Landroid/content/Context;Ljava/lang/Object;)V

    iput-boolean v1, p0, Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mIsRccRegistered:Z

    move v0, v1

    :goto_3b
    return v0

    :cond_3c
    iget-object v0, p0, Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mContext:Landroid/content/Context;

    const-string v3, "audio"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iget-object v3, p0, Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mMediaButtonReceiverComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->registerMediaButtonEventReceiver(Landroid/content/ComponentName;)V

    goto :goto_1f

    :cond_4c
    iget-boolean v0, p0, Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mIsMbrRegistered:Z

    if-eqz v0, :cond_21

    iget v0, p0, Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mFlags:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_21

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v3, :cond_66

    iget-object v0, p0, Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mContext:Landroid/content/Context;

    iget-object v3, p0, Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mMediaButtonReceiverIntent:Landroid/app/PendingIntent;

    iget-object v4, p0, Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mMediaButtonReceiverComponentName:Landroid/content/ComponentName;

    invoke-static {v0, v3, v4}, Landroidj/support/v4/media/session/MediaSessionCompatApi18;->unregisterMediaButtonEventReceiver(Landroid/content/Context;Landroid/app/PendingIntent;Landroid/content/ComponentName;)V

    :goto_63
    iput-boolean v2, p0, Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mIsMbrRegistered:Z

    goto :goto_21

    :cond_66
    iget-object v0, p0, Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mContext:Landroid/content/Context;

    const-string v3, "audio"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iget-object v3, p0, Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mMediaButtonReceiverComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->unregisterMediaButtonEventReceiver(Landroid/content/ComponentName;)V

    goto :goto_63

    :cond_76
    iget-boolean v0, p0, Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mIsRccRegistered:Z

    if-eqz v0, :cond_b5

    iget v0, p0, Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mFlags:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_b5

    iget-object v0, p0, Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mRccObj:Ljava/lang/Object;

    invoke-static {v0, v2}, Landroidj/support/v4/media/session/MediaSessionCompatApi14;->setState(Ljava/lang/Object;I)V

    iget-object v0, p0, Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mRccObj:Ljava/lang/Object;

    invoke-static {v0, v1}, Landroidj/support/v4/media/session/MediaSessionCompatApi14;->unregisterRemoteControlClient(Landroid/content/Context;Ljava/lang/Object;)V

    iput-boolean v2, p0, Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mIsRccRegistered:Z

    move v0, v2

    goto :goto_3b

    :cond_90
    iget-boolean v0, p0, Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mIsMbrRegistered:Z

    if-eqz v0, :cond_a3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v3, :cond_b7

    iget-object v0, p0, Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mMediaButtonReceiverIntent:Landroid/app/PendingIntent;

    iget-object v3, p0, Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mMediaButtonReceiverComponentName:Landroid/content/ComponentName;

    invoke-static {v0, v1, v3}, Landroidj/support/v4/media/session/MediaSessionCompatApi18;->unregisterMediaButtonEventReceiver(Landroid/content/Context;Landroid/app/PendingIntent;Landroid/content/ComponentName;)V

    :goto_a1
    iput-boolean v2, p0, Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mIsMbrRegistered:Z

    :cond_a3
    iget-boolean v0, p0, Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mIsRccRegistered:Z

    if-eqz v0, :cond_b5

    iget-object v0, p0, Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mRccObj:Ljava/lang/Object;

    invoke-static {v0, v2}, Landroidj/support/v4/media/session/MediaSessionCompatApi14;->setState(Ljava/lang/Object;I)V

    iget-object v0, p0, Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mRccObj:Ljava/lang/Object;

    invoke-static {v0, v1}, Landroidj/support/v4/media/session/MediaSessionCompatApi14;->unregisterRemoteControlClient(Landroid/content/Context;Ljava/lang/Object;)V

    iput-boolean v2, p0, Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mIsRccRegistered:Z

    :cond_b5
    move v0, v2

    goto :goto_3b

    :cond_b7
    iget-object v0, p0, Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iget-object v1, p0, Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mMediaButtonReceiverComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->unregisterMediaButtonEventReceiver(Landroid/content/ComponentName;)V

    goto :goto_a1
.end method


# virtual methods
.method adjustVolume(II)V
    .registers 5

    iget v0, p0, Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mVolumeType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_f

    iget-object v0, p0, Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mVolumeProvider:Landroidj/support/v4/media/VolumeProviderCompat;

    if-eqz v0, :cond_e

    iget-object v0, p0, Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mVolumeProvider:Landroidj/support/v4/media/VolumeProviderCompat;

    invoke-virtual {v0, p1}, Landroidj/support/v4/media/VolumeProviderCompat;->onAdjustVolume(I)V

    :cond_e
    :goto_e
    return-void

    :cond_f
    iget-object v0, p0, Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p0, Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mLocalStream:I

    invoke-virtual {v0, v1, p1, p2}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    goto :goto_e
.end method

.method public getCallingPackage()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getMediaSession()Ljava/lang/Object;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getRemoteControlClient()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mRccObj:Ljava/lang/Object;

    return-object v0
.end method

.method public getSessionToken()Landroidj/support/v4/media/session/MediaSessionCompat$Token;
    .registers 2

    iget-object v0, p0, Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mToken:Landroidj/support/v4/media/session/MediaSessionCompat$Token;

    return-object v0
.end method

.method public isActive()Z
    .registers 2

    iget-boolean v0, p0, Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mIsActive:Z

    return v0
.end method

.method postToHandler(I)V
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->postToHandler(ILjava/lang/Object;)V

    return-void
.end method

.method postToHandler(II)V
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->postToHandler(ILjava/lang/Object;I)V

    return-void
.end method

.method postToHandler(ILjava/lang/Object;)V
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->postToHandler(ILjava/lang/Object;Landroid/os/Bundle;)V

    return-void
.end method

.method postToHandler(ILjava/lang/Object;I)V
    .registers 6

    iget-object v1, p0, Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mHandler:Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MessageHandler;

    if-eqz v0, :cond_c

    iget-object v0, p0, Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mHandler:Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MessageHandler;

    invoke-virtual {v0, p1, p2, p3}, Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MessageHandler;->post(ILjava/lang/Object;I)V

    :cond_c
    monitor-exit v1

    return-void

    :catchall_e
    move-exception v0

    monitor-exit v1
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v0
.end method

.method postToHandler(ILjava/lang/Object;Landroid/os/Bundle;)V
    .registers 6

    iget-object v1, p0, Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mHandler:Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MessageHandler;

    if-eqz v0, :cond_c

    iget-object v0, p0, Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mHandler:Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MessageHandler;

    invoke-virtual {v0, p1, p2, p3}, Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MessageHandler;->post(ILjava/lang/Object;Landroid/os/Bundle;)V

    :cond_c
    monitor-exit v1

    return-void

    :catchall_e
    move-exception v0

    monitor-exit v1
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v0
.end method

.method public release()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mIsActive:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mDestroyed:Z

    invoke-direct {p0}, Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->update()Z

    invoke-direct {p0}, Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->sendSessionDestroyed()V

    return-void
.end method

.method public sendSessionEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->sendEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method sendVolumeInfoChanged(Landroidj/support/v4/media/session/ParcelableVolumeInfo;)V
    .registers 4

    iget-object v0, p0, Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mControllerCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_9
    if-ltz v1, :cond_1a

    iget-object v0, p0, Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mControllerCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroidj/support/v4/media/session/IMediaControllerCallback;

    :try_start_13
    invoke-interface {v0, p1}, Landroidj/support/v4/media/session/IMediaControllerCallback;->onVolumeInfoChanged(Landroidj/support/v4/media/session/ParcelableVolumeInfo;)V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_16} :catch_20

    :goto_16
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_9

    :cond_1a
    iget-object v0, p0, Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mControllerCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    return-void

    :catch_20
    move-exception v0

    goto :goto_16
.end method

.method public setActive(Z)V
    .registers 3

    iget-boolean v0, p0, Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mIsActive:Z

    if-ne p1, v0, :cond_5

    :cond_4
    :goto_4
    return-void

    :cond_5
    iput-boolean p1, p0, Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mIsActive:Z

    invoke-direct {p0}, Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->update()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mMetadata:Landroidj/support/v4/media/MediaMetadataCompat;

    invoke-virtual {p0, v0}, Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->setMetadata(Landroidj/support/v4/media/MediaMetadataCompat;)V

    iget-object v0, p0, Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mState:Landroidj/support/v4/media/session/PlaybackStateCompat;

    invoke-virtual {p0, v0}, Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->setPlaybackState(Landroidj/support/v4/media/session/PlaybackStateCompat;)V

    goto :goto_4
.end method

.method public setCallback(Landroidj/support/v4/media/session/MediaSessionCompat$Callback;Landroid/os/Handler;)V
    .registers 8

    const/16 v4, 0x13

    const/16 v3, 0x12

    const/4 v1, 0x0

    iput-object p1, p0, Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mCallback:Landroidj/support/v4/media/session/MediaSessionCompat$Callback;

    if-nez p1, :cond_1c

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v3, :cond_12

    iget-object v0, p0, Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mRccObj:Ljava/lang/Object;

    invoke-static {v0, v1}, Landroidj/support/v4/media/session/MediaSessionCompatApi18;->setOnPlaybackPositionUpdateListener(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_12
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v4, :cond_1b

    iget-object v0, p0, Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mRccObj:Ljava/lang/Object;

    invoke-static {v0, v1}, Landroidj/support/v4/media/session/MediaSessionCompatApi19;->setOnMetadataUpdateListener(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1b
    :goto_1b
    return-void

    :cond_1c
    if-nez p2, :cond_23

    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    :cond_23
    iget-object v1, p0, Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_26
    new-instance v0, Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MessageHandler;

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MessageHandler;-><init>(Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;Landroid/os/Looper;)V

    iput-object v0, p0, Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mHandler:Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MessageHandler;

    monitor-exit v1
    :try_end_32
    .catchall {:try_start_26 .. :try_end_32} :catchall_52

    new-instance v0, Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$2;

    invoke-direct {v0, p0}, Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$2;-><init>(Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v3, :cond_44

    invoke-static {v0}, Landroidj/support/v4/media/session/MediaSessionCompatApi18;->createPlaybackPositionUpdateListener(Landroidj/support/v4/media/session/MediaSessionCompatApi18$Callback;)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mRccObj:Ljava/lang/Object;

    invoke-static {v2, v1}, Landroidj/support/v4/media/session/MediaSessionCompatApi18;->setOnPlaybackPositionUpdateListener(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_44
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v4, :cond_1b

    invoke-static {v0}, Landroidj/support/v4/media/session/MediaSessionCompatApi19;->createMetadataUpdateListener(Landroidj/support/v4/media/session/MediaSessionCompatApi19$Callback;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mRccObj:Ljava/lang/Object;

    invoke-static {v1, v0}, Landroidj/support/v4/media/session/MediaSessionCompatApi19;->setOnMetadataUpdateListener(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1b

    :catchall_52
    move-exception v0

    :try_start_53
    monitor-exit v1
    :try_end_54
    .catchall {:try_start_53 .. :try_end_54} :catchall_52

    throw v0
.end method

.method public setCaptioningEnabled(Z)V
    .registers 3

    iget-boolean v0, p0, Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mCaptioningEnabled:Z

    if-eq v0, p1, :cond_9

    iput-boolean p1, p0, Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mCaptioningEnabled:Z

    invoke-direct {p0, p1}, Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->sendCaptioningEnabled(Z)V

    :cond_9
    return-void
.end method

.method public setExtras(Landroid/os/Bundle;)V
    .registers 2

    iput-object p1, p0, Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mExtras:Landroid/os/Bundle;

    invoke-direct {p0, p1}, Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->sendExtras(Landroid/os/Bundle;)V

    return-void
.end method

.method public setFlags(I)V
    .registers 4

    iget-object v1, p0, Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iput p1, p0, Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mFlags:I

    monitor-exit v1
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_a

    invoke-direct {p0}, Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->update()Z

    return-void

    :catchall_a
    move-exception v0

    :try_start_b
    monitor-exit v1
    :try_end_c
    .catchall {:try_start_b .. :try_end_c} :catchall_a

    throw v0
.end method

.method public setMediaButtonReceiver(Landroid/app/PendingIntent;)V
    .registers 2

    return-void
.end method

.method public setMetadata(Landroidj/support/v4/media/MediaMetadataCompat;)V
    .registers 6

    const/4 v0, 0x0

    if-eqz p1, :cond_e

    new-instance v1, Landroidj/support/v4/media/MediaMetadataCompat$Builder;

    sget v2, Landroidj/support/v4/media/session/MediaSessionCompat;->sMaxBitmapSize:I

    invoke-direct {v1, p1, v2}, Landroidj/support/v4/media/MediaMetadataCompat$Builder;-><init>(Landroidj/support/v4/media/MediaMetadataCompat;I)V

    invoke-virtual {v1}, Landroidj/support/v4/media/MediaMetadataCompat$Builder;->build()Landroidj/support/v4/media/MediaMetadataCompat;

    move-result-object p1

    :cond_e
    iget-object v1, p0, Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_11
    iput-object p1, p0, Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mMetadata:Landroidj/support/v4/media/MediaMetadataCompat;

    monitor-exit v1
    :try_end_14
    .catchall {:try_start_11 .. :try_end_14} :catchall_1c

    invoke-direct {p0, p1}, Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->sendMetadata(Landroidj/support/v4/media/MediaMetadataCompat;)V

    iget-boolean v1, p0, Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mIsActive:Z

    if-nez v1, :cond_1f

    :cond_1b
    :goto_1b
    return-void

    :catchall_1c
    move-exception v0

    :try_start_1d
    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1c

    throw v0

    :cond_1f
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_3f

    iget-object v1, p0, Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mRccObj:Ljava/lang/Object;

    if-nez p1, :cond_33

    :goto_29
    iget-object v2, p0, Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mState:Landroidj/support/v4/media/session/PlaybackStateCompat;

    if-nez v2, :cond_38

    const-wide/16 v2, 0x0

    :goto_2f
    invoke-static {v1, v0, v2, v3}, Landroidj/support/v4/media/session/MediaSessionCompatApi19;->setMetadata(Ljava/lang/Object;Landroid/os/Bundle;J)V

    goto :goto_1b

    :cond_33
    invoke-virtual {p1}, Landroidj/support/v4/media/MediaMetadataCompat;->getBundle()Landroid/os/Bundle;

    move-result-object v0

    goto :goto_29

    :cond_38
    iget-object v2, p0, Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mState:Landroidj/support/v4/media/session/PlaybackStateCompat;

    invoke-virtual {v2}, Landroidj/support/v4/media/session/PlaybackStateCompat;->getActions()J

    move-result-wide v2

    goto :goto_2f

    :cond_3f
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v1, v2, :cond_1b

    iget-object v1, p0, Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mRccObj:Ljava/lang/Object;

    if-nez p1, :cond_4d

    :goto_49
    invoke-static {v1, v0}, Landroidj/support/v4/media/session/MediaSessionCompatApi14;->setMetadata(Ljava/lang/Object;Landroid/os/Bundle;)V

    goto :goto_1b

    :cond_4d
    invoke-virtual {p1}, Landroidj/support/v4/media/MediaMetadataCompat;->getBundle()Landroid/os/Bundle;

    move-result-object v0

    goto :goto_49
.end method

.method public setPlaybackState(Landroidj/support/v4/media/session/PlaybackStateCompat;)V
    .registers 11

    const/16 v8, 0x12

    const/16 v7, 0xe

    iget-object v1, p0, Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_7
    iput-object p1, p0, Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mState:Landroidj/support/v4/media/session/PlaybackStateCompat;

    monitor-exit v1
    :try_end_a
    .catchall {:try_start_7 .. :try_end_a} :catchall_12

    invoke-direct {p0, p1}, Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->sendState(Landroidj/support/v4/media/session/PlaybackStateCompat;)V

    iget-boolean v0, p0, Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mIsActive:Z

    if-nez v0, :cond_15

    :cond_11
    :goto_11
    return-void

    :catchall_12
    move-exception v0

    :try_start_13
    monitor-exit v1
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    throw v0

    :cond_15
    if-nez p1, :cond_29

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v7, :cond_11

    iget-object v0, p0, Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mRccObj:Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroidj/support/v4/media/session/MediaSessionCompatApi14;->setState(Ljava/lang/Object;I)V

    iget-object v0, p0, Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mRccObj:Ljava/lang/Object;

    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Landroidj/support/v4/media/session/MediaSessionCompatApi14;->setTransportControlFlags(Ljava/lang/Object;J)V

    goto :goto_11

    :cond_29
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v8, :cond_52

    iget-object v0, p0, Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mRccObj:Ljava/lang/Object;

    invoke-virtual {p1}, Landroidj/support/v4/media/session/PlaybackStateCompat;->getState()I

    move-result v1

    invoke-virtual {p1}, Landroidj/support/v4/media/session/PlaybackStateCompat;->getPosition()J

    move-result-wide v2

    invoke-virtual {p1}, Landroidj/support/v4/media/session/PlaybackStateCompat;->getPlaybackSpeed()F

    move-result v4

    invoke-virtual {p1}, Landroidj/support/v4/media/session/PlaybackStateCompat;->getLastPositionUpdateTime()J

    move-result-wide v5

    invoke-static/range {v0 .. v6}, Landroidj/support/v4/media/session/MediaSessionCompatApi18;->setState(Ljava/lang/Object;IJFJ)V

    :cond_42
    :goto_42
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_60

    iget-object v0, p0, Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mRccObj:Ljava/lang/Object;

    invoke-virtual {p1}, Landroidj/support/v4/media/session/PlaybackStateCompat;->getActions()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Landroidj/support/v4/media/session/MediaSessionCompatApi19;->setTransportControlFlags(Ljava/lang/Object;J)V

    goto :goto_11

    :cond_52
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v7, :cond_42

    iget-object v0, p0, Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mRccObj:Ljava/lang/Object;

    invoke-virtual {p1}, Landroidj/support/v4/media/session/PlaybackStateCompat;->getState()I

    move-result v1

    invoke-static {v0, v1}, Landroidj/support/v4/media/session/MediaSessionCompatApi14;->setState(Ljava/lang/Object;I)V

    goto :goto_42

    :cond_60
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v8, :cond_6e

    iget-object v0, p0, Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mRccObj:Ljava/lang/Object;

    invoke-virtual {p1}, Landroidj/support/v4/media/session/PlaybackStateCompat;->getActions()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Landroidj/support/v4/media/session/MediaSessionCompatApi18;->setTransportControlFlags(Ljava/lang/Object;J)V

    goto :goto_11

    :cond_6e
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v7, :cond_11

    iget-object v0, p0, Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mRccObj:Ljava/lang/Object;

    invoke-virtual {p1}, Landroidj/support/v4/media/session/PlaybackStateCompat;->getActions()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Landroidj/support/v4/media/session/MediaSessionCompatApi14;->setTransportControlFlags(Ljava/lang/Object;J)V

    goto :goto_11
.end method

.method public setPlaybackToLocal(I)V
    .registers 9

    iget-object v0, p0, Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mVolumeProvider:Landroidj/support/v4/media/VolumeProviderCompat;

    if-eqz v0, :cond_a

    iget-object v0, p0, Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mVolumeProvider:Landroidj/support/v4/media/VolumeProviderCompat;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidj/support/v4/media/VolumeProviderCompat;->setCallback(Landroidj/support/v4/media/VolumeProviderCompat$Callback;)V

    :cond_a
    const/4 v0, 0x1

    iput v0, p0, Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mVolumeType:I

    new-instance v0, Landroidj/support/v4/media/session/ParcelableVolumeInfo;

    iget v1, p0, Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mVolumeType:I

    iget v2, p0, Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mLocalStream:I

    const/4 v3, 0x2

    iget-object v4, p0, Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mAudioManager:Landroid/media/AudioManager;

    iget v5, p0, Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mLocalStream:I

    invoke-virtual {v4, v5}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v4

    iget-object v5, p0, Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mAudioManager:Landroid/media/AudioManager;

    iget v6, p0, Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mLocalStream:I

    invoke-virtual {v5, v6}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v5

    invoke-direct/range {v0 .. v5}, Landroidj/support/v4/media/session/ParcelableVolumeInfo;-><init>(IIIII)V

    invoke-virtual {p0, v0}, Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->sendVolumeInfoChanged(Landroidj/support/v4/media/session/ParcelableVolumeInfo;)V

    return-void
.end method

.method public setPlaybackToRemote(Landroidj/support/v4/media/VolumeProviderCompat;)V
    .registers 8

    if-nez p1, :cond_a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "volumeProvider may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    iget-object v0, p0, Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mVolumeProvider:Landroidj/support/v4/media/VolumeProviderCompat;

    if-eqz v0, :cond_14

    iget-object v0, p0, Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mVolumeProvider:Landroidj/support/v4/media/VolumeProviderCompat;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidj/support/v4/media/VolumeProviderCompat;->setCallback(Landroidj/support/v4/media/VolumeProviderCompat$Callback;)V

    :cond_14
    const/4 v0, 0x2

    iput v0, p0, Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mVolumeType:I

    iput-object p1, p0, Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mVolumeProvider:Landroidj/support/v4/media/VolumeProviderCompat;

    new-instance v0, Landroidj/support/v4/media/session/ParcelableVolumeInfo;

    iget v1, p0, Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mVolumeType:I

    iget v2, p0, Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mLocalStream:I

    iget-object v3, p0, Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mVolumeProvider:Landroidj/support/v4/media/VolumeProviderCompat;

    invoke-virtual {v3}, Landroidj/support/v4/media/VolumeProviderCompat;->getVolumeControl()I

    move-result v3

    iget-object v4, p0, Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mVolumeProvider:Landroidj/support/v4/media/VolumeProviderCompat;

    invoke-virtual {v4}, Landroidj/support/v4/media/VolumeProviderCompat;->getMaxVolume()I

    move-result v4

    iget-object v5, p0, Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mVolumeProvider:Landroidj/support/v4/media/VolumeProviderCompat;

    invoke-virtual {v5}, Landroidj/support/v4/media/VolumeProviderCompat;->getCurrentVolume()I

    move-result v5

    invoke-direct/range {v0 .. v5}, Landroidj/support/v4/media/session/ParcelableVolumeInfo;-><init>(IIIII)V

    invoke-virtual {p0, v0}, Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->sendVolumeInfoChanged(Landroidj/support/v4/media/session/ParcelableVolumeInfo;)V

    iget-object v0, p0, Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mVolumeCallback:Landroidj/support/v4/media/VolumeProviderCompat$Callback;

    invoke-virtual {p1, v0}, Landroidj/support/v4/media/VolumeProviderCompat;->setCallback(Landroidj/support/v4/media/VolumeProviderCompat$Callback;)V

    return-void
.end method

.method public setQueue(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroidj/support/v4/media/session/MediaSessionCompat$QueueItem;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mQueue:Ljava/util/List;

    invoke-direct {p0, p1}, Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->sendQueue(Ljava/util/List;)V

    return-void
.end method

.method public setQueueTitle(Ljava/lang/CharSequence;)V
    .registers 2

    iput-object p1, p0, Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mQueueTitle:Ljava/lang/CharSequence;

    invoke-direct {p0, p1}, Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->sendQueueTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setRatingType(I)V
    .registers 2

    iput p1, p0, Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mRatingType:I

    return-void
.end method

.method public setRepeatMode(I)V
    .registers 3

    iget v0, p0, Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mRepeatMode:I

    if-eq v0, p1, :cond_9

    iput p1, p0, Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mRepeatMode:I

    invoke-direct {p0, p1}, Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->sendRepeatMode(I)V

    :cond_9
    return-void
.end method

.method public setSessionActivity(Landroid/app/PendingIntent;)V
    .registers 4

    iget-object v1, p0, Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iput-object p1, p0, Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mSessionActivity:Landroid/app/PendingIntent;

    monitor-exit v1

    return-void

    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public setShuffleModeEnabled(Z)V
    .registers 3

    iget-boolean v0, p0, Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mShuffleModeEnabled:Z

    if-eq v0, p1, :cond_9

    iput-boolean p1, p0, Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mShuffleModeEnabled:Z

    invoke-direct {p0, p1}, Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->sendShuffleModeEnabled(Z)V

    :cond_9
    return-void
.end method

.method setVolumeTo(II)V
    .registers 5

    iget v0, p0, Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mVolumeType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_f

    iget-object v0, p0, Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mVolumeProvider:Landroidj/support/v4/media/VolumeProviderCompat;

    if-eqz v0, :cond_e

    iget-object v0, p0, Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mVolumeProvider:Landroidj/support/v4/media/VolumeProviderCompat;

    invoke-virtual {v0, p1}, Landroidj/support/v4/media/VolumeProviderCompat;->onSetVolumeTo(I)V

    :cond_e
    :goto_e
    return-void

    :cond_f
    iget-object v0, p0, Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p0, Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mLocalStream:I

    invoke-virtual {v0, v1, p1, p2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto :goto_e
.end method
