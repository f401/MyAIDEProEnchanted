.class Landroidj/support/v4/media/session/MediaSessionCompatApi21;
.super Ljava/lang/Object;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation

.annotation build Landroidj/support/annotation/RequiresApi;
    value = 0x15
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidj/support/v4/media/session/MediaSessionCompatApi21$Callback;,
        Landroidj/support/v4/media/session/MediaSessionCompatApi21$CallbackProxy;,
        Landroidj/support/v4/media/session/MediaSessionCompatApi21$QueueItem;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createCallback(Landroidj/support/v4/media/session/MediaSessionCompatApi21$Callback;)Ljava/lang/Object;
    .registers 2

    new-instance v0, Landroidj/support/v4/media/session/MediaSessionCompatApi21$CallbackProxy;

    invoke-direct {v0, p0}, Landroidj/support/v4/media/session/MediaSessionCompatApi21$CallbackProxy;-><init>(Landroidj/support/v4/media/session/MediaSessionCompatApi21$Callback;)V

    return-object v0
.end method

.method public static createSession(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;
    .registers 3

    new-instance v0, Landroid/media/session/MediaSession;

    invoke-direct {v0, p0, p1}, Landroid/media/session/MediaSession;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getSessionToken(Ljava/lang/Object;)Landroid/os/Parcelable;
    .registers 2

    check-cast p0, Landroid/media/session/MediaSession;

    invoke-virtual {p0}, Landroid/media/session/MediaSession;->getSessionToken()Landroid/media/session/MediaSession$Token;

    move-result-object v0

    return-object v0
.end method

.method public static isActive(Ljava/lang/Object;)Z
    .registers 2

    check-cast p0, Landroid/media/session/MediaSession;

    invoke-virtual {p0}, Landroid/media/session/MediaSession;->isActive()Z

    move-result v0

    return v0
.end method

.method public static release(Ljava/lang/Object;)V
    .registers 1

    check-cast p0, Landroid/media/session/MediaSession;

    invoke-virtual {p0}, Landroid/media/session/MediaSession;->release()V

    return-void
.end method

.method public static sendSessionEvent(Ljava/lang/Object;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 3

    check-cast p0, Landroid/media/session/MediaSession;

    invoke-virtual {p0, p1, p2}, Landroid/media/session/MediaSession;->sendSessionEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public static setActive(Ljava/lang/Object;Z)V
    .registers 2

    check-cast p0, Landroid/media/session/MediaSession;

    invoke-virtual {p0, p1}, Landroid/media/session/MediaSession;->setActive(Z)V

    return-void
.end method

.method public static setCallback(Ljava/lang/Object;Ljava/lang/Object;Landroid/os/Handler;)V
    .registers 3

    check-cast p0, Landroid/media/session/MediaSession;

    check-cast p1, Landroid/media/session/MediaSession$Callback;

    invoke-virtual {p0, p1, p2}, Landroid/media/session/MediaSession;->setCallback(Landroid/media/session/MediaSession$Callback;Landroid/os/Handler;)V

    return-void
.end method

.method public static setExtras(Ljava/lang/Object;Landroid/os/Bundle;)V
    .registers 2

    check-cast p0, Landroid/media/session/MediaSession;

    invoke-virtual {p0, p1}, Landroid/media/session/MediaSession;->setExtras(Landroid/os/Bundle;)V

    return-void
.end method

.method public static setFlags(Ljava/lang/Object;I)V
    .registers 2

    check-cast p0, Landroid/media/session/MediaSession;

    invoke-virtual {p0, p1}, Landroid/media/session/MediaSession;->setFlags(I)V

    return-void
.end method

.method public static setMediaButtonReceiver(Ljava/lang/Object;Landroid/app/PendingIntent;)V
    .registers 2

    check-cast p0, Landroid/media/session/MediaSession;

    invoke-virtual {p0, p1}, Landroid/media/session/MediaSession;->setMediaButtonReceiver(Landroid/app/PendingIntent;)V

    return-void
.end method

.method public static setMetadata(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 2

    check-cast p0, Landroid/media/session/MediaSession;

    check-cast p1, Landroid/media/MediaMetadata;

    invoke-virtual {p0, p1}, Landroid/media/session/MediaSession;->setMetadata(Landroid/media/MediaMetadata;)V

    return-void
.end method

.method public static setPlaybackState(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 2

    check-cast p0, Landroid/media/session/MediaSession;

    check-cast p1, Landroid/media/session/PlaybackState;

    invoke-virtual {p0, p1}, Landroid/media/session/MediaSession;->setPlaybackState(Landroid/media/session/PlaybackState;)V

    return-void
.end method

.method public static setPlaybackToLocal(Ljava/lang/Object;I)V
    .registers 3

    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    invoke-virtual {v0, p1}, Landroid/media/AudioAttributes$Builder;->setLegacyStreamType(I)Landroid/media/AudioAttributes$Builder;

    check-cast p0, Landroid/media/session/MediaSession;

    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/media/session/MediaSession;->setPlaybackToLocal(Landroid/media/AudioAttributes;)V

    return-void
.end method

.method public static setPlaybackToRemote(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 2

    check-cast p0, Landroid/media/session/MediaSession;

    check-cast p1, Landroid/media/VolumeProvider;

    invoke-virtual {p0, p1}, Landroid/media/session/MediaSession;->setPlaybackToRemote(Landroid/media/VolumeProvider;)V

    return-void
.end method

.method public static setQueue(Ljava/lang/Object;Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_9

    check-cast p0, Landroid/media/session/MediaSession;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/media/session/MediaSession;->setQueue(Ljava/util/List;)V

    :goto_8
    return-void

    :cond_9
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_12
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaSession$QueueItem;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_12

    :cond_22
    check-cast p0, Landroid/media/session/MediaSession;

    invoke-virtual {p0, v1}, Landroid/media/session/MediaSession;->setQueue(Ljava/util/List;)V

    goto :goto_8
.end method

.method public static setQueueTitle(Ljava/lang/Object;Ljava/lang/CharSequence;)V
    .registers 2

    check-cast p0, Landroid/media/session/MediaSession;

    invoke-virtual {p0, p1}, Landroid/media/session/MediaSession;->setQueueTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static setSessionActivity(Ljava/lang/Object;Landroid/app/PendingIntent;)V
    .registers 2

    check-cast p0, Landroid/media/session/MediaSession;

    invoke-virtual {p0, p1}, Landroid/media/session/MediaSession;->setSessionActivity(Landroid/app/PendingIntent;)V

    return-void
.end method

.method public static verifySession(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    instance-of v0, p0, Landroid/media/session/MediaSession;

    if-eqz v0, :cond_5

    return-object p0

    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "mediaSession is not a valid MediaSession object"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static verifyToken(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    instance-of v0, p0, Landroid/media/session/MediaSession$Token;

    if-eqz v0, :cond_5

    return-object p0

    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "token is not a valid MediaSession.Token object"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
