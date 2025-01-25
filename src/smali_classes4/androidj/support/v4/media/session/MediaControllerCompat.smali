.class public final Landroidj/support/v4/media/session/MediaControllerCompat;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidj/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21;,
        Landroidj/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21$ExtraCallback;,
        Landroidj/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi23;,
        Landroidj/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi24;,
        Landroidj/support/v4/media/session/MediaControllerCompat$MediaControllerImplBase;,
        Landroidj/support/v4/media/session/MediaControllerCompat$PlaybackInfo;,
        Landroidj/support/v4/media/session/MediaControllerCompat$TransportControls;,
        Landroidj/support/v4/media/session/MediaControllerCompat$TransportControlsApi21;,
        Landroidj/support/v4/media/session/MediaControllerCompat$TransportControlsApi23;,
        Landroidj/support/v4/media/session/MediaControllerCompat$TransportControlsApi24;,
        Landroidj/support/v4/media/session/MediaControllerCompat$TransportControlsBase;
    }
.end annotation


# static fields
.field static final COMMAND_ADD_QUEUE_ITEM:Ljava/lang/String; = "androidj.support.v4.media.session.command.ADD_QUEUE_ITEM"

.field static final COMMAND_ADD_QUEUE_ITEM_AT:Ljava/lang/String; = "androidj.support.v4.media.session.command.ADD_QUEUE_ITEM_AT"

.field static final COMMAND_ARGUMENT_INDEX:Ljava/lang/String; = "androidj.support.v4.media.session.command.ARGUMENT_INDEX"

.field static final COMMAND_ARGUMENT_MEDIA_DESCRIPTION:Ljava/lang/String; = "androidj.support.v4.media.session.command.ARGUMENT_MEDIA_DESCRIPTION"

.field static final COMMAND_GET_EXTRA_BINDER:Ljava/lang/String; = "androidj.support.v4.media.session.command.GET_EXTRA_BINDER"

.field static final COMMAND_REMOVE_QUEUE_ITEM:Ljava/lang/String; = "androidj.support.v4.media.session.command.REMOVE_QUEUE_ITEM"

.field static final COMMAND_REMOVE_QUEUE_ITEM_AT:Ljava/lang/String; = "androidj.support.v4.media.session.command.REMOVE_QUEUE_ITEM_AT"

.field static final TAG:Ljava/lang/String; = "MediaControllerCompat"


# instance fields
.field private final mImpl:Landroidj/support/v4/media/session/MediaControllerCompat$MediaControllerImpl;

.field private final mToken:Landroidj/support/v4/media/session/MediaSessionCompat$Token;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidj/support/v4/media/session/MediaSessionCompat$Token;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p2, :cond_d

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "sessionToken must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    iput-object p2, p0, Landroidj/support/v4/media/session/MediaControllerCompat;->mToken:Landroidj/support/v4/media/session/MediaSessionCompat$Token;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_1d

    new-instance v0, Landroidj/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi24;

    invoke-direct {v0, p1, p2}, Landroidj/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi24;-><init>(Landroid/content/Context;Landroidj/support/v4/media/session/MediaSessionCompat$Token;)V

    iput-object v0, p0, Landroidj/support/v4/media/session/MediaControllerCompat;->mImpl:Landroidj/support/v4/media/session/MediaControllerCompat$MediaControllerImpl;

    :goto_1c
    return-void

    :cond_1d
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_2b

    new-instance v0, Landroidj/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi23;

    invoke-direct {v0, p1, p2}, Landroidj/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi23;-><init>(Landroid/content/Context;Landroidj/support/v4/media/session/MediaSessionCompat$Token;)V

    iput-object v0, p0, Landroidj/support/v4/media/session/MediaControllerCompat;->mImpl:Landroidj/support/v4/media/session/MediaControllerCompat$MediaControllerImpl;

    goto :goto_1c

    :cond_2b
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_39

    new-instance v0, Landroidj/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21;

    invoke-direct {v0, p1, p2}, Landroidj/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21;-><init>(Landroid/content/Context;Landroidj/support/v4/media/session/MediaSessionCompat$Token;)V

    iput-object v0, p0, Landroidj/support/v4/media/session/MediaControllerCompat;->mImpl:Landroidj/support/v4/media/session/MediaControllerCompat$MediaControllerImpl;

    goto :goto_1c

    :cond_39
    new-instance v0, Landroidj/support/v4/media/session/MediaControllerCompat$MediaControllerImplBase;

    iget-object v1, p0, Landroidj/support/v4/media/session/MediaControllerCompat;->mToken:Landroidj/support/v4/media/session/MediaSessionCompat$Token;

    invoke-direct {v0, v1}, Landroidj/support/v4/media/session/MediaControllerCompat$MediaControllerImplBase;-><init>(Landroidj/support/v4/media/session/MediaSessionCompat$Token;)V

    iput-object v0, p0, Landroidj/support/v4/media/session/MediaControllerCompat;->mImpl:Landroidj/support/v4/media/session/MediaControllerCompat$MediaControllerImpl;

    goto :goto_1c
.end method

.method public constructor <init>(Landroid/content/Context;Landroidj/support/v4/media/session/MediaSessionCompat;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p2, :cond_d

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "session must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    invoke-virtual {p2}, Landroidj/support/v4/media/session/MediaSessionCompat;->getSessionToken()Landroidj/support/v4/media/session/MediaSessionCompat$Token;

    move-result-object v0

    iput-object v0, p0, Landroidj/support/v4/media/session/MediaControllerCompat;->mToken:Landroidj/support/v4/media/session/MediaSessionCompat$Token;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_21

    new-instance v0, Landroidj/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi24;

    invoke-direct {v0, p1, p2}, Landroidj/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi24;-><init>(Landroid/content/Context;Landroidj/support/v4/media/session/MediaSessionCompat;)V

    iput-object v0, p0, Landroidj/support/v4/media/session/MediaControllerCompat;->mImpl:Landroidj/support/v4/media/session/MediaControllerCompat$MediaControllerImpl;

    :goto_20
    return-void

    :cond_21
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_2f

    new-instance v0, Landroidj/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi23;

    invoke-direct {v0, p1, p2}, Landroidj/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi23;-><init>(Landroid/content/Context;Landroidj/support/v4/media/session/MediaSessionCompat;)V

    iput-object v0, p0, Landroidj/support/v4/media/session/MediaControllerCompat;->mImpl:Landroidj/support/v4/media/session/MediaControllerCompat$MediaControllerImpl;

    goto :goto_20

    :cond_2f
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_3d

    new-instance v0, Landroidj/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21;

    invoke-direct {v0, p1, p2}, Landroidj/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21;-><init>(Landroid/content/Context;Landroidj/support/v4/media/session/MediaSessionCompat;)V

    iput-object v0, p0, Landroidj/support/v4/media/session/MediaControllerCompat;->mImpl:Landroidj/support/v4/media/session/MediaControllerCompat$MediaControllerImpl;

    goto :goto_20

    :cond_3d
    new-instance v0, Landroidj/support/v4/media/session/MediaControllerCompat$MediaControllerImplBase;

    iget-object v1, p0, Landroidj/support/v4/media/session/MediaControllerCompat;->mToken:Landroidj/support/v4/media/session/MediaSessionCompat$Token;

    invoke-direct {v0, v1}, Landroidj/support/v4/media/session/MediaControllerCompat$MediaControllerImplBase;-><init>(Landroidj/support/v4/media/session/MediaSessionCompat$Token;)V

    iput-object v0, p0, Landroidj/support/v4/media/session/MediaControllerCompat;->mImpl:Landroidj/support/v4/media/session/MediaControllerCompat$MediaControllerImpl;

    goto :goto_20
.end method

.method public static getMediaController(Landroid/app/Activity;)Landroidj/support/v4/media/session/MediaControllerCompat;
    .registers 5

    const/4 v1, 0x0

    instance-of v0, p0, Landroidj/support/v4/app/SupportActivity;

    if-eqz v0, :cond_19

    check-cast p0, Landroidj/support/v4/app/SupportActivity;

    const-class v0, Landroidj/support/v4/media/session/MediaControllerCompat$MediaControllerExtraData;

    invoke-virtual {p0, v0}, Landroidj/support/v4/app/SupportActivity;->getExtraData(Ljava/lang/Class;)Landroidj/support/v4/app/SupportActivity$ExtraData;

    move-result-object v0

    check-cast v0, Landroidj/support/v4/media/session/MediaControllerCompat$MediaControllerExtraData;

    if-eqz v0, :cond_17

    invoke-virtual {v0}, Landroidj/support/v4/media/session/MediaControllerCompat$MediaControllerExtraData;->getMediaController()Landroidj/support/v4/media/session/MediaControllerCompat;

    move-result-object v0

    :goto_15
    move-object v1, v0

    :cond_16
    :goto_16
    return-object v1

    :cond_17
    move-object v0, v1

    goto :goto_15

    :cond_19
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v0, v2, :cond_16

    invoke-static {p0}, Landroidj/support/v4/media/session/MediaControllerCompatApi21;->getMediaController(Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_16

    invoke-static {v0}, Landroidj/support/v4/media/session/MediaControllerCompatApi21;->getSessionToken(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    :try_start_29
    new-instance v0, Landroidj/support/v4/media/session/MediaControllerCompat;

    invoke-static {v2}, Landroidj/support/v4/media/session/MediaSessionCompat$Token;->fromToken(Ljava/lang/Object;)Landroidj/support/v4/media/session/MediaSessionCompat$Token;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Landroidj/support/v4/media/session/MediaControllerCompat;-><init>(Landroid/content/Context;Landroidj/support/v4/media/session/MediaSessionCompat$Token;)V
    :try_end_32
    .catch Landroid/os/RemoteException; {:try_start_29 .. :try_end_32} :catch_34

    move-object v1, v0

    goto :goto_16

    :catch_34
    move-exception v0

    const-string v2, "MediaControllerCompat"

    const-string v3, "Dead object in getMediaController."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_16
.end method

.method public static setMediaController(Landroid/app/Activity;Landroidj/support/v4/media/session/MediaControllerCompat;)V
    .registers 4

    instance-of v0, p0, Landroidj/support/v4/app/SupportActivity;

    if-eqz v0, :cond_f

    move-object v0, p0

    check-cast v0, Landroidj/support/v4/app/SupportActivity;

    new-instance v1, Landroidj/support/v4/media/session/MediaControllerCompat$MediaControllerExtraData;

    invoke-direct {v1, p1}, Landroidj/support/v4/media/session/MediaControllerCompat$MediaControllerExtraData;-><init>(Landroidj/support/v4/media/session/MediaControllerCompat;)V

    invoke-virtual {v0, v1}, Landroidj/support/v4/app/SupportActivity;->putExtraData(Landroidj/support/v4/app/SupportActivity$ExtraData;)V

    :cond_f
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_27

    const/4 v0, 0x0

    if-eqz p1, :cond_24

    invoke-virtual {p1}, Landroidj/support/v4/media/session/MediaControllerCompat;->getSessionToken()Landroidj/support/v4/media/session/MediaSessionCompat$Token;

    move-result-object v0

    invoke-virtual {v0}, Landroidj/support/v4/media/session/MediaSessionCompat$Token;->getToken()Ljava/lang/Object;

    move-result-object v0

    invoke-static {p0, v0}, Landroidj/support/v4/media/session/MediaControllerCompatApi21;->fromToken(Landroid/content/Context;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :cond_24
    invoke-static {p0, v0}, Landroidj/support/v4/media/session/MediaControllerCompatApi21;->setMediaController(Landroid/app/Activity;Ljava/lang/Object;)V

    :cond_27
    return-void
.end method


# virtual methods
.method public addQueueItem(Landroidj/support/v4/media/MediaDescriptionCompat;)V
    .registers 3

    iget-object v0, p0, Landroidj/support/v4/media/session/MediaControllerCompat;->mImpl:Landroidj/support/v4/media/session/MediaControllerCompat$MediaControllerImpl;

    invoke-interface {v0, p1}, Landroidj/support/v4/media/session/MediaControllerCompat$MediaControllerImpl;->addQueueItem(Landroidj/support/v4/media/MediaDescriptionCompat;)V

    return-void
.end method

.method public addQueueItem(Landroidj/support/v4/media/MediaDescriptionCompat;I)V
    .registers 4

    iget-object v0, p0, Landroidj/support/v4/media/session/MediaControllerCompat;->mImpl:Landroidj/support/v4/media/session/MediaControllerCompat$MediaControllerImpl;

    invoke-interface {v0, p1, p2}, Landroidj/support/v4/media/session/MediaControllerCompat$MediaControllerImpl;->addQueueItem(Landroidj/support/v4/media/MediaDescriptionCompat;I)V

    return-void
.end method

.method public adjustVolume(II)V
    .registers 4

    iget-object v0, p0, Landroidj/support/v4/media/session/MediaControllerCompat;->mImpl:Landroidj/support/v4/media/session/MediaControllerCompat$MediaControllerImpl;

    invoke-interface {v0, p1, p2}, Landroidj/support/v4/media/session/MediaControllerCompat$MediaControllerImpl;->adjustVolume(II)V

    return-void
.end method

.method public dispatchMediaButtonEvent(Landroid/view/KeyEvent;)Z
    .registers 4

    if-nez p1, :cond_a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "KeyEvent may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    iget-object v0, p0, Landroidj/support/v4/media/session/MediaControllerCompat;->mImpl:Landroidj/support/v4/media/session/MediaControllerCompat$MediaControllerImpl;

    invoke-interface {v0, p1}, Landroidj/support/v4/media/session/MediaControllerCompat$MediaControllerImpl;->dispatchMediaButtonEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .registers 2

    iget-object v0, p0, Landroidj/support/v4/media/session/MediaControllerCompat;->mImpl:Landroidj/support/v4/media/session/MediaControllerCompat$MediaControllerImpl;

    invoke-interface {v0}, Landroidj/support/v4/media/session/MediaControllerCompat$MediaControllerImpl;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getFlags()J
    .registers 3

    iget-object v0, p0, Landroidj/support/v4/media/session/MediaControllerCompat;->mImpl:Landroidj/support/v4/media/session/MediaControllerCompat$MediaControllerImpl;

    invoke-interface {v0}, Landroidj/support/v4/media/session/MediaControllerCompat$MediaControllerImpl;->getFlags()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMediaController()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Landroidj/support/v4/media/session/MediaControllerCompat;->mImpl:Landroidj/support/v4/media/session/MediaControllerCompat$MediaControllerImpl;

    invoke-interface {v0}, Landroidj/support/v4/media/session/MediaControllerCompat$MediaControllerImpl;->getMediaController()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getMetadata()Landroidj/support/v4/media/MediaMetadataCompat;
    .registers 2

    iget-object v0, p0, Landroidj/support/v4/media/session/MediaControllerCompat;->mImpl:Landroidj/support/v4/media/session/MediaControllerCompat$MediaControllerImpl;

    invoke-interface {v0}, Landroidj/support/v4/media/session/MediaControllerCompat$MediaControllerImpl;->getMetadata()Landroidj/support/v4/media/MediaMetadataCompat;

    move-result-object v0

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroidj/support/v4/media/session/MediaControllerCompat;->mImpl:Landroidj/support/v4/media/session/MediaControllerCompat$MediaControllerImpl;

    invoke-interface {v0}, Landroidj/support/v4/media/session/MediaControllerCompat$MediaControllerImpl;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPlaybackInfo()Landroidj/support/v4/media/session/MediaControllerCompat$PlaybackInfo;
    .registers 2

    iget-object v0, p0, Landroidj/support/v4/media/session/MediaControllerCompat;->mImpl:Landroidj/support/v4/media/session/MediaControllerCompat$MediaControllerImpl;

    invoke-interface {v0}, Landroidj/support/v4/media/session/MediaControllerCompat$MediaControllerImpl;->getPlaybackInfo()Landroidj/support/v4/media/session/MediaControllerCompat$PlaybackInfo;

    move-result-object v0

    return-object v0
.end method

.method public getPlaybackState()Landroidj/support/v4/media/session/PlaybackStateCompat;
    .registers 2

    iget-object v0, p0, Landroidj/support/v4/media/session/MediaControllerCompat;->mImpl:Landroidj/support/v4/media/session/MediaControllerCompat$MediaControllerImpl;

    invoke-interface {v0}, Landroidj/support/v4/media/session/MediaControllerCompat$MediaControllerImpl;->getPlaybackState()Landroidj/support/v4/media/session/PlaybackStateCompat;

    move-result-object v0

    return-object v0
.end method

.method public getQueue()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroidj/support/v4/media/session/MediaSessionCompat$QueueItem;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroidj/support/v4/media/session/MediaControllerCompat;->mImpl:Landroidj/support/v4/media/session/MediaControllerCompat$MediaControllerImpl;

    invoke-interface {v0}, Landroidj/support/v4/media/session/MediaControllerCompat$MediaControllerImpl;->getQueue()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getQueueTitle()Ljava/lang/CharSequence;
    .registers 2

    iget-object v0, p0, Landroidj/support/v4/media/session/MediaControllerCompat;->mImpl:Landroidj/support/v4/media/session/MediaControllerCompat$MediaControllerImpl;

    invoke-interface {v0}, Landroidj/support/v4/media/session/MediaControllerCompat$MediaControllerImpl;->getQueueTitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getRatingType()I
    .registers 2

    iget-object v0, p0, Landroidj/support/v4/media/session/MediaControllerCompat;->mImpl:Landroidj/support/v4/media/session/MediaControllerCompat$MediaControllerImpl;

    invoke-interface {v0}, Landroidj/support/v4/media/session/MediaControllerCompat$MediaControllerImpl;->getRatingType()I

    move-result v0

    return v0
.end method

.method public getRepeatMode()I
    .registers 2

    iget-object v0, p0, Landroidj/support/v4/media/session/MediaControllerCompat;->mImpl:Landroidj/support/v4/media/session/MediaControllerCompat$MediaControllerImpl;

    invoke-interface {v0}, Landroidj/support/v4/media/session/MediaControllerCompat$MediaControllerImpl;->getRepeatMode()I

    move-result v0

    return v0
.end method

.method public getSessionActivity()Landroid/app/PendingIntent;
    .registers 2

    iget-object v0, p0, Landroidj/support/v4/media/session/MediaControllerCompat;->mImpl:Landroidj/support/v4/media/session/MediaControllerCompat$MediaControllerImpl;

    invoke-interface {v0}, Landroidj/support/v4/media/session/MediaControllerCompat$MediaControllerImpl;->getSessionActivity()Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method public getSessionToken()Landroidj/support/v4/media/session/MediaSessionCompat$Token;
    .registers 2

    iget-object v0, p0, Landroidj/support/v4/media/session/MediaControllerCompat;->mToken:Landroidj/support/v4/media/session/MediaSessionCompat$Token;

    return-object v0
.end method

.method public getTransportControls()Landroidj/support/v4/media/session/MediaControllerCompat$TransportControls;
    .registers 2

    iget-object v0, p0, Landroidj/support/v4/media/session/MediaControllerCompat;->mImpl:Landroidj/support/v4/media/session/MediaControllerCompat$MediaControllerImpl;

    invoke-interface {v0}, Landroidj/support/v4/media/session/MediaControllerCompat$MediaControllerImpl;->getTransportControls()Landroidj/support/v4/media/session/MediaControllerCompat$TransportControls;

    move-result-object v0

    return-object v0
.end method

.method public isCaptioningEnabled()Z
    .registers 2

    iget-object v0, p0, Landroidj/support/v4/media/session/MediaControllerCompat;->mImpl:Landroidj/support/v4/media/session/MediaControllerCompat$MediaControllerImpl;

    invoke-interface {v0}, Landroidj/support/v4/media/session/MediaControllerCompat$MediaControllerImpl;->isCaptioningEnabled()Z

    move-result v0

    return v0
.end method

.method public isShuffleModeEnabled()Z
    .registers 2

    iget-object v0, p0, Landroidj/support/v4/media/session/MediaControllerCompat;->mImpl:Landroidj/support/v4/media/session/MediaControllerCompat$MediaControllerImpl;

    invoke-interface {v0}, Landroidj/support/v4/media/session/MediaControllerCompat$MediaControllerImpl;->isShuffleModeEnabled()Z

    move-result v0

    return v0
.end method

.method public registerCallback(Landroidj/support/v4/media/session/MediaControllerCompat$Callback;)V
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroidj/support/v4/media/session/MediaControllerCompat;->registerCallback(Landroidj/support/v4/media/session/MediaControllerCompat$Callback;Landroid/os/Handler;)V

    return-void
.end method

.method public registerCallback(Landroidj/support/v4/media/session/MediaControllerCompat$Callback;Landroid/os/Handler;)V
    .registers 5

    if-nez p1, :cond_a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "callback cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    if-nez p2, :cond_11

    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    :cond_11
    iget-object v0, p0, Landroidj/support/v4/media/session/MediaControllerCompat;->mImpl:Landroidj/support/v4/media/session/MediaControllerCompat$MediaControllerImpl;

    invoke-interface {v0, p1, p2}, Landroidj/support/v4/media/session/MediaControllerCompat$MediaControllerImpl;->registerCallback(Landroidj/support/v4/media/session/MediaControllerCompat$Callback;Landroid/os/Handler;)V

    return-void
.end method

.method public removeQueueItem(Landroidj/support/v4/media/MediaDescriptionCompat;)V
    .registers 3

    iget-object v0, p0, Landroidj/support/v4/media/session/MediaControllerCompat;->mImpl:Landroidj/support/v4/media/session/MediaControllerCompat$MediaControllerImpl;

    invoke-interface {v0, p1}, Landroidj/support/v4/media/session/MediaControllerCompat$MediaControllerImpl;->removeQueueItem(Landroidj/support/v4/media/MediaDescriptionCompat;)V

    return-void
.end method

.method public removeQueueItemAt(I)V
    .registers 3

    iget-object v0, p0, Landroidj/support/v4/media/session/MediaControllerCompat;->mImpl:Landroidj/support/v4/media/session/MediaControllerCompat$MediaControllerImpl;

    invoke-interface {v0, p1}, Landroidj/support/v4/media/session/MediaControllerCompat$MediaControllerImpl;->removeQueueItemAt(I)V

    return-void
.end method

.method public sendCommand(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V
    .registers 6

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "command cannot be null or empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    iget-object v0, p0, Landroidj/support/v4/media/session/MediaControllerCompat;->mImpl:Landroidj/support/v4/media/session/MediaControllerCompat$MediaControllerImpl;

    invoke-interface {v0, p1, p2, p3}, Landroidj/support/v4/media/session/MediaControllerCompat$MediaControllerImpl;->sendCommand(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V

    return-void
.end method

.method public setVolumeTo(II)V
    .registers 4

    iget-object v0, p0, Landroidj/support/v4/media/session/MediaControllerCompat;->mImpl:Landroidj/support/v4/media/session/MediaControllerCompat$MediaControllerImpl;

    invoke-interface {v0, p1, p2}, Landroidj/support/v4/media/session/MediaControllerCompat$MediaControllerImpl;->setVolumeTo(II)V

    return-void
.end method

.method public unregisterCallback(Landroidj/support/v4/media/session/MediaControllerCompat$Callback;)V
    .registers 4

    if-nez p1, :cond_a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "callback cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    iget-object v0, p0, Landroidj/support/v4/media/session/MediaControllerCompat;->mImpl:Landroidj/support/v4/media/session/MediaControllerCompat$MediaControllerImpl;

    invoke-interface {v0, p1}, Landroidj/support/v4/media/session/MediaControllerCompat$MediaControllerImpl;->unregisterCallback(Landroidj/support/v4/media/session/MediaControllerCompat$Callback;)V

    return-void
.end method
