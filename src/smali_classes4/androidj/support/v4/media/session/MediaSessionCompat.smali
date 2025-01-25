.class public Landroidj/support/v4/media/session/MediaSessionCompat;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidj/support/v4/media/session/MediaSessionCompat$Callback;,
        Landroidj/support/v4/media/session/MediaSessionCompat$Callback$StubApi21;,
        Landroidj/support/v4/media/session/MediaSessionCompat$Callback$StubApi23;,
        Landroidj/support/v4/media/session/MediaSessionCompat$Callback$StubApi24;,
        Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImpl;,
        Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;,
        Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21$ExtraSession;,
        Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;,
        Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$Command;,
        Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MediaSessionStub;,
        Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MessageHandler;,
        Landroidj/support/v4/media/session/MediaSessionCompat$OnActiveChangeListener;,
        Landroidj/support/v4/media/session/MediaSessionCompat$QueueItem;,
        Landroidj/support/v4/media/session/MediaSessionCompat$ResultReceiverWrapper;,
        Landroidj/support/v4/media/session/MediaSessionCompat$SessionFlags;,
        Landroidj/support/v4/media/session/MediaSessionCompat$Token;
    }
.end annotation


# static fields
.field static final ACTION_ARGUMENT_CAPTIONING_ENABLED:Ljava/lang/String; = "androidj.support.v4.media.session.action.ARGUMENT_CAPTIONING_ENABLED"

.field static final ACTION_ARGUMENT_EXTRAS:Ljava/lang/String; = "androidj.support.v4.media.session.action.ARGUMENT_EXTRAS"

.field static final ACTION_ARGUMENT_MEDIA_ID:Ljava/lang/String; = "androidj.support.v4.media.session.action.ARGUMENT_MEDIA_ID"

.field static final ACTION_ARGUMENT_QUERY:Ljava/lang/String; = "androidj.support.v4.media.session.action.ARGUMENT_QUERY"

.field static final ACTION_ARGUMENT_REPEAT_MODE:Ljava/lang/String; = "androidj.support.v4.media.session.action.ARGUMENT_REPEAT_MODE"

.field static final ACTION_ARGUMENT_SHUFFLE_MODE_ENABLED:Ljava/lang/String; = "androidj.support.v4.media.session.action.ARGUMENT_SHUFFLE_MODE_ENABLED"

.field static final ACTION_ARGUMENT_URI:Ljava/lang/String; = "androidj.support.v4.media.session.action.ARGUMENT_URI"

.field public static final ACTION_FLAG_AS_INAPPROPRIATE:Ljava/lang/String; = "androidj.support.v4.media.session.action.FLAG_AS_INAPPROPRIATE"

.field static final ACTION_PLAY_FROM_URI:Ljava/lang/String; = "androidj.support.v4.media.session.action.PLAY_FROM_URI"

.field static final ACTION_PREPARE:Ljava/lang/String; = "androidj.support.v4.media.session.action.PREPARE"

.field static final ACTION_PREPARE_FROM_MEDIA_ID:Ljava/lang/String; = "androidj.support.v4.media.session.action.PREPARE_FROM_MEDIA_ID"

.field static final ACTION_PREPARE_FROM_SEARCH:Ljava/lang/String; = "androidj.support.v4.media.session.action.PREPARE_FROM_SEARCH"

.field static final ACTION_PREPARE_FROM_URI:Ljava/lang/String; = "androidj.support.v4.media.session.action.PREPARE_FROM_URI"

.field static final ACTION_SET_CAPTIONING_ENABLED:Ljava/lang/String; = "androidj.support.v4.media.session.action.SET_CAPTIONING_ENABLED"

.field static final ACTION_SET_REPEAT_MODE:Ljava/lang/String; = "androidj.support.v4.media.session.action.SET_REPEAT_MODE"

.field static final ACTION_SET_SHUFFLE_MODE_ENABLED:Ljava/lang/String; = "androidj.support.v4.media.session.action.SET_SHUFFLE_MODE_ENABLED"

.field public static final ACTION_SKIP_AD:Ljava/lang/String; = "androidj.support.v4.media.session.action.SKIP_AD"

.field static final EXTRA_BINDER:Ljava/lang/String; = "androidj.support.v4.media.session.EXTRA_BINDER"

.field public static final FLAG_HANDLES_MEDIA_BUTTONS:I = 0x1

.field public static final FLAG_HANDLES_QUEUE_COMMANDS:I = 0x4

.field public static final FLAG_HANDLES_TRANSPORT_CONTROLS:I = 0x2

.field private static final MAX_BITMAP_SIZE_IN_DP:I = 0x140

.field static final TAG:Ljava/lang/String; = "MediaSessionCompat"

.field static sMaxBitmapSize:I


# instance fields
.field private final mActiveListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroidj/support/v4/media/session/MediaSessionCompat$OnActiveChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mController:Landroidj/support/v4/media/session/MediaControllerCompat;

.field private final mImpl:Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImpl;


# direct methods
.method private constructor <init>(Landroid/content/Context;Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImpl;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidj/support/v4/media/session/MediaSessionCompat;->mActiveListeners:Ljava/util/ArrayList;

    iput-object p2, p0, Landroidj/support/v4/media/session/MediaSessionCompat;->mImpl:Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImpl;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1a

    new-instance v0, Landroidj/support/v4/media/session/MediaSessionCompat$2;

    invoke-direct {v0, p0}, Landroidj/support/v4/media/session/MediaSessionCompat$2;-><init>(Landroidj/support/v4/media/session/MediaSessionCompat;)V

    invoke-virtual {p0, v0}, Landroidj/support/v4/media/session/MediaSessionCompat;->setCallback(Landroidj/support/v4/media/session/MediaSessionCompat$Callback;)V

    :cond_1a
    new-instance v0, Landroidj/support/v4/media/session/MediaControllerCompat;

    invoke-direct {v0, p1, p0}, Landroidj/support/v4/media/session/MediaControllerCompat;-><init>(Landroid/content/Context;Landroidj/support/v4/media/session/MediaSessionCompat;)V

    iput-object v0, p0, Landroidj/support/v4/media/session/MediaSessionCompat;->mController:Landroidj/support/v4/media/session/MediaControllerCompat;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v0}, Landroidj/support/v4/media/session/MediaSessionCompat;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/content/ComponentName;Landroid/app/PendingIntent;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/content/ComponentName;Landroid/app/PendingIntent;)V
    .registers 8

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidj/support/v4/media/session/MediaSessionCompat;->mActiveListeners:Ljava/util/ArrayList;

    if-nez p1, :cond_15

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "context must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_15
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_23

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "tag must not be null or empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_23
    if-nez p3, :cond_32

    invoke-static {p1}, Landroidj/support/v4/media/session/MediaButtonReceiver;->getMediaButtonReceiverComponent(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object p3

    if-nez p3, :cond_32

    const-string v0, "MediaSessionCompat"

    const-string v1, "Couldn\'t find a unique registered media button receiver in the given context."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_32
    if-eqz p3, :cond_44

    if-nez p4, :cond_44

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MEDIA_BUTTON"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-static {p1, v2, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p4

    :cond_44
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_7c

    new-instance v0, Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;

    invoke-direct {v0, p1, p2}, Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Landroidj/support/v4/media/session/MediaSessionCompat;->mImpl:Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImpl;

    iget-object v0, p0, Landroidj/support/v4/media/session/MediaSessionCompat;->mImpl:Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImpl;

    invoke-interface {v0, p4}, Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImpl;->setMediaButtonReceiver(Landroid/app/PendingIntent;)V

    new-instance v0, Landroidj/support/v4/media/session/MediaSessionCompat$1;

    invoke-direct {v0, p0}, Landroidj/support/v4/media/session/MediaSessionCompat$1;-><init>(Landroidj/support/v4/media/session/MediaSessionCompat;)V

    invoke-virtual {p0, v0}, Landroidj/support/v4/media/session/MediaSessionCompat;->setCallback(Landroidj/support/v4/media/session/MediaSessionCompat$Callback;)V

    :goto_5e
    new-instance v0, Landroidj/support/v4/media/session/MediaControllerCompat;

    invoke-direct {v0, p1, p0}, Landroidj/support/v4/media/session/MediaControllerCompat;-><init>(Landroid/content/Context;Landroidj/support/v4/media/session/MediaSessionCompat;)V

    iput-object v0, p0, Landroidj/support/v4/media/session/MediaSessionCompat;->mController:Landroidj/support/v4/media/session/MediaControllerCompat;

    sget v0, Landroidj/support/v4/media/session/MediaSessionCompat;->sMaxBitmapSize:I

    if-nez v0, :cond_7b

    const/4 v0, 0x1

    const/high16 v1, 0x43a00000  # 320.0f

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    sput v0, Landroidj/support/v4/media/session/MediaSessionCompat;->sMaxBitmapSize:I

    :cond_7b
    return-void

    :cond_7c
    new-instance v0, Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;

    invoke-direct {v0, p1, p2, p3, p4}, Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/content/ComponentName;Landroid/app/PendingIntent;)V

    iput-object v0, p0, Landroidj/support/v4/media/session/MediaSessionCompat;->mImpl:Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImpl;

    goto :goto_5e
.end method

.method static synthetic access$100(Landroidj/support/v4/media/session/PlaybackStateCompat;Landroidj/support/v4/media/MediaMetadataCompat;)Landroidj/support/v4/media/session/PlaybackStateCompat;
    .registers 3

    invoke-static {p0, p1}, Landroidj/support/v4/media/session/MediaSessionCompat;->getStateWithUpdatedPosition(Landroidj/support/v4/media/session/PlaybackStateCompat;Landroidj/support/v4/media/MediaMetadataCompat;)Landroidj/support/v4/media/session/PlaybackStateCompat;

    move-result-object v0

    return-object v0
.end method

.method public static fromMediaSession(Landroid/content/Context;Ljava/lang/Object;)Landroidj/support/v4/media/session/MediaSessionCompat;
    .registers 4

    if-eqz p0, :cond_a

    if-eqz p1, :cond_a

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_c

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return-object v0

    :cond_c
    new-instance v0, Landroidj/support/v4/media/session/MediaSessionCompat;

    new-instance v1, Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;

    invoke-direct {v1, p1}, Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;-><init>(Ljava/lang/Object;)V

    invoke-direct {v0, p0, v1}, Landroidj/support/v4/media/session/MediaSessionCompat;-><init>(Landroid/content/Context;Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImpl;)V

    goto :goto_b
.end method

.method private static getStateWithUpdatedPosition(Landroidj/support/v4/media/session/PlaybackStateCompat;Landroidj/support/v4/media/MediaMetadataCompat;)Landroidj/support/v4/media/session/PlaybackStateCompat;
    .registers 14

    const-wide/16 v2, -0x1

    const-wide/16 v0, 0x0

    if-eqz p0, :cond_e

    invoke-virtual {p0}, Landroidj/support/v4/media/session/PlaybackStateCompat;->getPosition()J

    move-result-wide v4

    cmp-long v4, v4, v2

    if-nez v4, :cond_f

    :cond_e
    :goto_e
    return-object p0

    :cond_f
    invoke-virtual {p0}, Landroidj/support/v4/media/session/PlaybackStateCompat;->getState()I

    move-result v4

    const/4 v5, 0x3

    if-eq v4, v5, :cond_24

    invoke-virtual {p0}, Landroidj/support/v4/media/session/PlaybackStateCompat;->getState()I

    move-result v4

    const/4 v5, 0x4

    if-eq v4, v5, :cond_24

    invoke-virtual {p0}, Landroidj/support/v4/media/session/PlaybackStateCompat;->getState()I

    move-result v4

    const/4 v5, 0x5

    if-ne v4, v5, :cond_e

    :cond_24
    invoke-virtual {p0}, Landroidj/support/v4/media/session/PlaybackStateCompat;->getLastPositionUpdateTime()J

    move-result-wide v8

    cmp-long v4, v8, v0

    if-lez v4, :cond_e

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    invoke-virtual {p0}, Landroidj/support/v4/media/session/PlaybackStateCompat;->getPlaybackSpeed()F

    move-result v4

    sub-long v8, v5, v8

    long-to-float v7, v8

    mul-float/2addr v4, v7

    float-to-long v8, v4

    invoke-virtual {p0}, Landroidj/support/v4/media/session/PlaybackStateCompat;->getPosition()J

    move-result-wide v10

    add-long/2addr v8, v10

    if-eqz p1, :cond_4e

    const-string v4, "android.media.metadata.DURATION"

    invoke-virtual {p1, v4}, Landroidj/support/v4/media/MediaMetadataCompat;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4e

    const-string v2, "android.media.metadata.DURATION"

    invoke-virtual {p1, v2}, Landroidj/support/v4/media/MediaMetadataCompat;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    :cond_4e
    cmp-long v4, v2, v0

    if-ltz v4, :cond_6c

    cmp-long v4, v8, v2

    if-lez v4, :cond_6c

    :goto_56
    new-instance v0, Landroidj/support/v4/media/session/PlaybackStateCompat$Builder;

    invoke-direct {v0, p0}, Landroidj/support/v4/media/session/PlaybackStateCompat$Builder;-><init>(Landroidj/support/v4/media/session/PlaybackStateCompat;)V

    invoke-virtual {p0}, Landroidj/support/v4/media/session/PlaybackStateCompat;->getState()I

    move-result v1

    invoke-virtual {p0}, Landroidj/support/v4/media/session/PlaybackStateCompat;->getPlaybackSpeed()F

    move-result v4

    invoke-virtual/range {v0 .. v6}, Landroidj/support/v4/media/session/PlaybackStateCompat$Builder;->setState(IJFJ)Landroidj/support/v4/media/session/PlaybackStateCompat$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroidj/support/v4/media/session/PlaybackStateCompat$Builder;->build()Landroidj/support/v4/media/session/PlaybackStateCompat;

    move-result-object p0

    goto :goto_e

    :cond_6c
    cmp-long v2, v8, v0

    if-gez v2, :cond_72

    move-wide v2, v0

    goto :goto_56

    :cond_72
    move-wide v2, v8

    goto :goto_56
.end method

.method public static obtain(Landroid/content/Context;Ljava/lang/Object;)Landroidj/support/v4/media/session/MediaSessionCompat;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0, p1}, Landroidj/support/v4/media/session/MediaSessionCompat;->fromMediaSession(Landroid/content/Context;Ljava/lang/Object;)Landroidj/support/v4/media/session/MediaSessionCompat;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public addOnActiveChangeListener(Landroidj/support/v4/media/session/MediaSessionCompat$OnActiveChangeListener;)V
    .registers 4

    if-nez p1, :cond_a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Listener may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    iget-object v0, p0, Landroidj/support/v4/media/session/MediaSessionCompat;->mActiveListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getCallingPackage()Ljava/lang/String;
    .registers 2
    .annotation build Landroidj/support/annotation/RestrictTo;
        value = {
            .enum Landroidj/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidj/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    iget-object v0, p0, Landroidj/support/v4/media/session/MediaSessionCompat;->mImpl:Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImpl;

    invoke-interface {v0}, Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImpl;->getCallingPackage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getController()Landroidj/support/v4/media/session/MediaControllerCompat;
    .registers 2

    iget-object v0, p0, Landroidj/support/v4/media/session/MediaSessionCompat;->mController:Landroidj/support/v4/media/session/MediaControllerCompat;

    return-object v0
.end method

.method public getMediaSession()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Landroidj/support/v4/media/session/MediaSessionCompat;->mImpl:Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImpl;

    invoke-interface {v0}, Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImpl;->getMediaSession()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getRemoteControlClient()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Landroidj/support/v4/media/session/MediaSessionCompat;->mImpl:Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImpl;

    invoke-interface {v0}, Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImpl;->getRemoteControlClient()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getSessionToken()Landroidj/support/v4/media/session/MediaSessionCompat$Token;
    .registers 2

    iget-object v0, p0, Landroidj/support/v4/media/session/MediaSessionCompat;->mImpl:Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImpl;

    invoke-interface {v0}, Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImpl;->getSessionToken()Landroidj/support/v4/media/session/MediaSessionCompat$Token;

    move-result-object v0

    return-object v0
.end method

.method public isActive()Z
    .registers 2

    iget-object v0, p0, Landroidj/support/v4/media/session/MediaSessionCompat;->mImpl:Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImpl;

    invoke-interface {v0}, Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImpl;->isActive()Z

    move-result v0

    return v0
.end method

.method public release()V
    .registers 2

    iget-object v0, p0, Landroidj/support/v4/media/session/MediaSessionCompat;->mImpl:Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImpl;

    invoke-interface {v0}, Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImpl;->release()V

    return-void
.end method

.method public removeOnActiveChangeListener(Landroidj/support/v4/media/session/MediaSessionCompat$OnActiveChangeListener;)V
    .registers 4

    if-nez p1, :cond_a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Listener may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    iget-object v0, p0, Landroidj/support/v4/media/session/MediaSessionCompat;->mActiveListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public sendSessionEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 5

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "event cannot be null or empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    iget-object v0, p0, Landroidj/support/v4/media/session/MediaSessionCompat;->mImpl:Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImpl;

    invoke-interface {v0, p1, p2}, Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImpl;->sendSessionEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public setActive(Z)V
    .registers 4

    iget-object v0, p0, Landroidj/support/v4/media/session/MediaSessionCompat;->mImpl:Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImpl;

    invoke-interface {v0, p1}, Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImpl;->setActive(Z)V

    iget-object v0, p0, Landroidj/support/v4/media/session/MediaSessionCompat;->mActiveListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidj/support/v4/media/session/MediaSessionCompat$OnActiveChangeListener;

    invoke-interface {v0}, Landroidj/support/v4/media/session/MediaSessionCompat$OnActiveChangeListener;->onActiveChanged()V

    goto :goto_b

    :cond_1b
    return-void
.end method

.method public setCallback(Landroidj/support/v4/media/session/MediaSessionCompat$Callback;)V
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroidj/support/v4/media/session/MediaSessionCompat;->setCallback(Landroidj/support/v4/media/session/MediaSessionCompat$Callback;Landroid/os/Handler;)V

    return-void
.end method

.method public setCallback(Landroidj/support/v4/media/session/MediaSessionCompat$Callback;Landroid/os/Handler;)V
    .registers 4

    iget-object v0, p0, Landroidj/support/v4/media/session/MediaSessionCompat;->mImpl:Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImpl;

    if-eqz p2, :cond_8

    :goto_4
    invoke-interface {v0, p1, p2}, Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImpl;->setCallback(Landroidj/support/v4/media/session/MediaSessionCompat$Callback;Landroid/os/Handler;)V

    return-void

    :cond_8
    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    goto :goto_4
.end method

.method public setCaptioningEnabled(Z)V
    .registers 3

    iget-object v0, p0, Landroidj/support/v4/media/session/MediaSessionCompat;->mImpl:Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImpl;

    invoke-interface {v0, p1}, Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImpl;->setCaptioningEnabled(Z)V

    return-void
.end method

.method public setExtras(Landroid/os/Bundle;)V
    .registers 3

    iget-object v0, p0, Landroidj/support/v4/media/session/MediaSessionCompat;->mImpl:Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImpl;

    invoke-interface {v0, p1}, Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImpl;->setExtras(Landroid/os/Bundle;)V

    return-void
.end method

.method public setFlags(I)V
    .registers 3

    iget-object v0, p0, Landroidj/support/v4/media/session/MediaSessionCompat;->mImpl:Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImpl;

    invoke-interface {v0, p1}, Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImpl;->setFlags(I)V

    return-void
.end method

.method public setMediaButtonReceiver(Landroid/app/PendingIntent;)V
    .registers 3

    iget-object v0, p0, Landroidj/support/v4/media/session/MediaSessionCompat;->mImpl:Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImpl;

    invoke-interface {v0, p1}, Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImpl;->setMediaButtonReceiver(Landroid/app/PendingIntent;)V

    return-void
.end method

.method public setMetadata(Landroidj/support/v4/media/MediaMetadataCompat;)V
    .registers 3

    iget-object v0, p0, Landroidj/support/v4/media/session/MediaSessionCompat;->mImpl:Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImpl;

    invoke-interface {v0, p1}, Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImpl;->setMetadata(Landroidj/support/v4/media/MediaMetadataCompat;)V

    return-void
.end method

.method public setPlaybackState(Landroidj/support/v4/media/session/PlaybackStateCompat;)V
    .registers 3

    iget-object v0, p0, Landroidj/support/v4/media/session/MediaSessionCompat;->mImpl:Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImpl;

    invoke-interface {v0, p1}, Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImpl;->setPlaybackState(Landroidj/support/v4/media/session/PlaybackStateCompat;)V

    return-void
.end method

.method public setPlaybackToLocal(I)V
    .registers 3

    iget-object v0, p0, Landroidj/support/v4/media/session/MediaSessionCompat;->mImpl:Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImpl;

    invoke-interface {v0, p1}, Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImpl;->setPlaybackToLocal(I)V

    return-void
.end method

.method public setPlaybackToRemote(Landroidj/support/v4/media/VolumeProviderCompat;)V
    .registers 4

    if-nez p1, :cond_a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "volumeProvider may not be null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    iget-object v0, p0, Landroidj/support/v4/media/session/MediaSessionCompat;->mImpl:Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImpl;

    invoke-interface {v0, p1}, Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImpl;->setPlaybackToRemote(Landroidj/support/v4/media/VolumeProviderCompat;)V

    return-void
.end method

.method public setQueue(Ljava/util/List;)V
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

    iget-object v0, p0, Landroidj/support/v4/media/session/MediaSessionCompat;->mImpl:Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImpl;

    invoke-interface {v0, p1}, Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImpl;->setQueue(Ljava/util/List;)V

    return-void
.end method

.method public setQueueTitle(Ljava/lang/CharSequence;)V
    .registers 3

    iget-object v0, p0, Landroidj/support/v4/media/session/MediaSessionCompat;->mImpl:Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImpl;

    invoke-interface {v0, p1}, Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImpl;->setQueueTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setRatingType(I)V
    .registers 3

    iget-object v0, p0, Landroidj/support/v4/media/session/MediaSessionCompat;->mImpl:Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImpl;

    invoke-interface {v0, p1}, Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImpl;->setRatingType(I)V

    return-void
.end method

.method public setRepeatMode(I)V
    .registers 3

    iget-object v0, p0, Landroidj/support/v4/media/session/MediaSessionCompat;->mImpl:Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImpl;

    invoke-interface {v0, p1}, Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImpl;->setRepeatMode(I)V

    return-void
.end method

.method public setSessionActivity(Landroid/app/PendingIntent;)V
    .registers 3

    iget-object v0, p0, Landroidj/support/v4/media/session/MediaSessionCompat;->mImpl:Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImpl;

    invoke-interface {v0, p1}, Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImpl;->setSessionActivity(Landroid/app/PendingIntent;)V

    return-void
.end method

.method public setShuffleModeEnabled(Z)V
    .registers 3

    iget-object v0, p0, Landroidj/support/v4/media/session/MediaSessionCompat;->mImpl:Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImpl;

    invoke-interface {v0, p1}, Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImpl;->setShuffleModeEnabled(Z)V

    return-void
.end method
