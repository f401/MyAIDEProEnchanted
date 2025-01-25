.class public final Landroidj/support/v4/media/MediaBrowserCompat;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidj/support/v4/media/MediaBrowserCompat$CallbackHandler;,
        Landroidj/support/v4/media/MediaBrowserCompat$ConnectionCallback;,
        Landroidj/support/v4/media/MediaBrowserCompat$ConnectionCallback$ConnectionCallbackInternal;,
        Landroidj/support/v4/media/MediaBrowserCompat$ConnectionCallback$StubApi21;,
        Landroidj/support/v4/media/MediaBrowserCompat$CustomActionCallback;,
        Landroidj/support/v4/media/MediaBrowserCompat$CustomActionResultReceiver;,
        Landroidj/support/v4/media/MediaBrowserCompat$ItemCallback;,
        Landroidj/support/v4/media/MediaBrowserCompat$ItemCallback$StubApi23;,
        Landroidj/support/v4/media/MediaBrowserCompat$ItemReceiver;,
        Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImpl;,
        Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi21;,
        Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi23;,
        Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;,
        Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection;,
        Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserServiceCallbackImpl;,
        Landroidj/support/v4/media/MediaBrowserCompat$MediaItem;,
        Landroidj/support/v4/media/MediaBrowserCompat$MediaItem$Flags;,
        Landroidj/support/v4/media/MediaBrowserCompat$SearchCallback;,
        Landroidj/support/v4/media/MediaBrowserCompat$SearchResultReceiver;,
        Landroidj/support/v4/media/MediaBrowserCompat$ServiceBinderWrapper;,
        Landroidj/support/v4/media/MediaBrowserCompat$Subscription;,
        Landroidj/support/v4/media/MediaBrowserCompat$SubscriptionCallback;,
        Landroidj/support/v4/media/MediaBrowserCompat$SubscriptionCallback$StubApi21;
    }
.end annotation


# static fields
.field static final DEBUG:Z

.field public static final EXTRA_PAGE:Ljava/lang/String; = "android.media.browse.extra.PAGE"

.field public static final EXTRA_PAGE_SIZE:Ljava/lang/String; = "android.media.browse.extra.PAGE_SIZE"

.field static final TAG:Ljava/lang/String; = "MediaBrowserCompat"


# instance fields
.field private final mImpl:Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImpl;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-string v0, "MediaBrowserCompat"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Landroidj/support/v4/media/MediaBrowserCompat;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/ComponentName;Landroidj/support/v4/media/MediaBrowserCompat$ConnectionCallback;Landroid/os/Bundle;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_11

    new-instance v0, Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi23;

    invoke-direct {v0, p1, p2, p3, p4}, Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi23;-><init>(Landroid/content/Context;Landroid/content/ComponentName;Landroidj/support/v4/media/MediaBrowserCompat$ConnectionCallback;Landroid/os/Bundle;)V

    iput-object v0, p0, Landroidj/support/v4/media/MediaBrowserCompat;->mImpl:Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImpl;

    :goto_10
    return-void

    :cond_11
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1f

    new-instance v0, Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi21;

    invoke-direct {v0, p1, p2, p3, p4}, Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi21;-><init>(Landroid/content/Context;Landroid/content/ComponentName;Landroidj/support/v4/media/MediaBrowserCompat$ConnectionCallback;Landroid/os/Bundle;)V

    iput-object v0, p0, Landroidj/support/v4/media/MediaBrowserCompat;->mImpl:Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImpl;

    goto :goto_10

    :cond_1f
    new-instance v0, Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;

    invoke-direct {v0, p1, p2, p3, p4}, Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;-><init>(Landroid/content/Context;Landroid/content/ComponentName;Landroidj/support/v4/media/MediaBrowserCompat$ConnectionCallback;Landroid/os/Bundle;)V

    iput-object v0, p0, Landroidj/support/v4/media/MediaBrowserCompat;->mImpl:Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImpl;

    goto :goto_10
.end method


# virtual methods
.method public connect()V
    .registers 2

    iget-object v0, p0, Landroidj/support/v4/media/MediaBrowserCompat;->mImpl:Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImpl;

    invoke-interface {v0}, Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImpl;->connect()V

    return-void
.end method

.method public disconnect()V
    .registers 2

    iget-object v0, p0, Landroidj/support/v4/media/MediaBrowserCompat;->mImpl:Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImpl;

    invoke-interface {v0}, Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImpl;->disconnect()V

    return-void
.end method

.method public getExtras()Landroid/os/Bundle;
    .registers 2
    .annotation build Landroidj/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Landroidj/support/v4/media/MediaBrowserCompat;->mImpl:Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImpl;

    invoke-interface {v0}, Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImpl;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getItem(Ljava/lang/String;Landroidj/support/v4/media/MediaBrowserCompat$ItemCallback;)V
    .registers 4
    .param p1  # Ljava/lang/String;
        .annotation build Landroidj/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Landroidj/support/v4/media/MediaBrowserCompat$ItemCallback;
        .annotation build Landroidj/support/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Landroidj/support/v4/media/MediaBrowserCompat;->mImpl:Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImpl;

    invoke-interface {v0, p1, p2}, Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImpl;->getItem(Ljava/lang/String;Landroidj/support/v4/media/MediaBrowserCompat$ItemCallback;)V

    return-void
.end method

.method public getRoot()Ljava/lang/String;
    .registers 2
    .annotation build Landroidj/support/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Landroidj/support/v4/media/MediaBrowserCompat;->mImpl:Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImpl;

    invoke-interface {v0}, Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImpl;->getRoot()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getServiceComponent()Landroid/content/ComponentName;
    .registers 2
    .annotation build Landroidj/support/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Landroidj/support/v4/media/MediaBrowserCompat;->mImpl:Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImpl;

    invoke-interface {v0}, Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImpl;->getServiceComponent()Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method public getSessionToken()Landroidj/support/v4/media/session/MediaSessionCompat$Token;
    .registers 2
    .annotation build Landroidj/support/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Landroidj/support/v4/media/MediaBrowserCompat;->mImpl:Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImpl;

    invoke-interface {v0}, Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImpl;->getSessionToken()Landroidj/support/v4/media/session/MediaSessionCompat$Token;

    move-result-object v0

    return-object v0
.end method

.method public isConnected()Z
    .registers 2

    iget-object v0, p0, Landroidj/support/v4/media/MediaBrowserCompat;->mImpl:Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImpl;

    invoke-interface {v0}, Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImpl;->isConnected()Z

    move-result v0

    return v0
.end method

.method public search(Ljava/lang/String;Landroid/os/Bundle;Landroidj/support/v4/media/MediaBrowserCompat$SearchCallback;)V
    .registers 6
    .param p1  # Ljava/lang/String;
        .annotation build Landroidj/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3  # Landroidj/support/v4/media/MediaBrowserCompat$SearchCallback;
        .annotation build Landroidj/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "query cannot be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    if-nez p3, :cond_18

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "callback cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_18
    iget-object v0, p0, Landroidj/support/v4/media/MediaBrowserCompat;->mImpl:Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImpl;

    invoke-interface {v0, p1, p2, p3}, Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImpl;->search(Ljava/lang/String;Landroid/os/Bundle;Landroidj/support/v4/media/MediaBrowserCompat$SearchCallback;)V

    return-void
.end method

.method public sendCustomAction(Ljava/lang/String;Landroid/os/Bundle;Landroidj/support/v4/media/MediaBrowserCompat$CustomActionCallback;)V
    .registers 6
    .param p1  # Ljava/lang/String;
        .annotation build Landroidj/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3  # Landroidj/support/v4/media/MediaBrowserCompat$CustomActionCallback;
        .annotation build Landroidj/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "action cannot be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    iget-object v0, p0, Landroidj/support/v4/media/MediaBrowserCompat;->mImpl:Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImpl;

    invoke-interface {v0, p1, p2, p3}, Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImpl;->sendCustomAction(Ljava/lang/String;Landroid/os/Bundle;Landroidj/support/v4/media/MediaBrowserCompat$CustomActionCallback;)V

    return-void
.end method

.method public subscribe(Ljava/lang/String;Landroid/os/Bundle;Landroidj/support/v4/media/MediaBrowserCompat$SubscriptionCallback;)V
    .registers 6
    .param p1  # Ljava/lang/String;
        .annotation build Landroidj/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Landroid/os/Bundle;
        .annotation build Landroidj/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3  # Landroidj/support/v4/media/MediaBrowserCompat$SubscriptionCallback;
        .annotation build Landroidj/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "parentId is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    if-nez p3, :cond_18

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "callback is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_18
    if-nez p2, :cond_22

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "options are null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_22
    iget-object v0, p0, Landroidj/support/v4/media/MediaBrowserCompat;->mImpl:Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImpl;

    invoke-interface {v0, p1, p2, p3}, Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImpl;->subscribe(Ljava/lang/String;Landroid/os/Bundle;Landroidj/support/v4/media/MediaBrowserCompat$SubscriptionCallback;)V

    return-void
.end method

.method public subscribe(Ljava/lang/String;Landroidj/support/v4/media/MediaBrowserCompat$SubscriptionCallback;)V
    .registers 5
    .param p1  # Ljava/lang/String;
        .annotation build Landroidj/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Landroidj/support/v4/media/MediaBrowserCompat$SubscriptionCallback;
        .annotation build Landroidj/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "parentId is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    if-nez p2, :cond_18

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "callback is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_18
    iget-object v0, p0, Landroidj/support/v4/media/MediaBrowserCompat;->mImpl:Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImpl;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1, p2}, Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImpl;->subscribe(Ljava/lang/String;Landroid/os/Bundle;Landroidj/support/v4/media/MediaBrowserCompat$SubscriptionCallback;)V

    return-void
.end method

.method public unsubscribe(Ljava/lang/String;)V
    .registers 4
    .param p1  # Ljava/lang/String;
        .annotation build Landroidj/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "parentId is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    iget-object v0, p0, Landroidj/support/v4/media/MediaBrowserCompat;->mImpl:Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImpl;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImpl;->unsubscribe(Ljava/lang/String;Landroidj/support/v4/media/MediaBrowserCompat$SubscriptionCallback;)V

    return-void
.end method

.method public unsubscribe(Ljava/lang/String;Landroidj/support/v4/media/MediaBrowserCompat$SubscriptionCallback;)V
    .registers 5
    .param p1  # Ljava/lang/String;
        .annotation build Landroidj/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Landroidj/support/v4/media/MediaBrowserCompat$SubscriptionCallback;
        .annotation build Landroidj/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "parentId is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    if-nez p2, :cond_18

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "callback is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_18
    iget-object v0, p0, Landroidj/support/v4/media/MediaBrowserCompat;->mImpl:Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImpl;

    invoke-interface {v0, p1, p2}, Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImpl;->unsubscribe(Ljava/lang/String;Landroidj/support/v4/media/MediaBrowserCompat$SubscriptionCallback;)V

    return-void
.end method
