.class Landroidj/support/v4/media/MediaBrowserCompatApi21;
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
        Landroidj/support/v4/media/MediaBrowserCompatApi21$ConnectionCallback;,
        Landroidj/support/v4/media/MediaBrowserCompatApi21$ConnectionCallbackProxy;,
        Landroidj/support/v4/media/MediaBrowserCompatApi21$MediaItem;,
        Landroidj/support/v4/media/MediaBrowserCompatApi21$SubscriptionCallback;,
        Landroidj/support/v4/media/MediaBrowserCompatApi21$SubscriptionCallbackProxy;
    }
.end annotation


# static fields
.field static final NULL_MEDIA_ITEM_ID:Ljava/lang/String; = "androidj.support.v4.media.MediaBrowserCompat.NULL_MEDIA_ITEM"


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static connect(Ljava/lang/Object;)V
    .registers 1

    check-cast p0, Landroid/media/browse/MediaBrowser;

    invoke-virtual {p0}, Landroid/media/browse/MediaBrowser;->connect()V

    return-void
.end method

.method public static createBrowser(Landroid/content/Context;Landroid/content/ComponentName;Ljava/lang/Object;Landroid/os/Bundle;)Ljava/lang/Object;
    .registers 5

    new-instance v0, Landroid/media/browse/MediaBrowser;

    check-cast p2, Landroid/media/browse/MediaBrowser$ConnectionCallback;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/media/browse/MediaBrowser;-><init>(Landroid/content/Context;Landroid/content/ComponentName;Landroid/media/browse/MediaBrowser$ConnectionCallback;Landroid/os/Bundle;)V

    return-object v0
.end method

.method public static createConnectionCallback(Landroidj/support/v4/media/MediaBrowserCompatApi21$ConnectionCallback;)Ljava/lang/Object;
    .registers 2

    new-instance v0, Landroidj/support/v4/media/MediaBrowserCompatApi21$ConnectionCallbackProxy;

    invoke-direct {v0, p0}, Landroidj/support/v4/media/MediaBrowserCompatApi21$ConnectionCallbackProxy;-><init>(Landroidj/support/v4/media/MediaBrowserCompatApi21$ConnectionCallback;)V

    return-object v0
.end method

.method public static createSubscriptionCallback(Landroidj/support/v4/media/MediaBrowserCompatApi21$SubscriptionCallback;)Ljava/lang/Object;
    .registers 2

    new-instance v0, Landroidj/support/v4/media/MediaBrowserCompatApi21$SubscriptionCallbackProxy;

    invoke-direct {v0, p0}, Landroidj/support/v4/media/MediaBrowserCompatApi21$SubscriptionCallbackProxy;-><init>(Landroidj/support/v4/media/MediaBrowserCompatApi21$SubscriptionCallback;)V

    return-object v0
.end method

.method public static disconnect(Ljava/lang/Object;)V
    .registers 1

    check-cast p0, Landroid/media/browse/MediaBrowser;

    invoke-virtual {p0}, Landroid/media/browse/MediaBrowser;->disconnect()V

    return-void
.end method

.method public static getExtras(Ljava/lang/Object;)Landroid/os/Bundle;
    .registers 2

    check-cast p0, Landroid/media/browse/MediaBrowser;

    invoke-virtual {p0}, Landroid/media/browse/MediaBrowser;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public static getRoot(Ljava/lang/Object;)Ljava/lang/String;
    .registers 2

    check-cast p0, Landroid/media/browse/MediaBrowser;

    invoke-virtual {p0}, Landroid/media/browse/MediaBrowser;->getRoot()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getServiceComponent(Ljava/lang/Object;)Landroid/content/ComponentName;
    .registers 2

    check-cast p0, Landroid/media/browse/MediaBrowser;

    invoke-virtual {p0}, Landroid/media/browse/MediaBrowser;->getServiceComponent()Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method public static getSessionToken(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p0, Landroid/media/browse/MediaBrowser;

    invoke-virtual {p0}, Landroid/media/browse/MediaBrowser;->getSessionToken()Landroid/media/session/MediaSession$Token;

    move-result-object v0

    return-object v0
.end method

.method public static isConnected(Ljava/lang/Object;)Z
    .registers 2

    check-cast p0, Landroid/media/browse/MediaBrowser;

    invoke-virtual {p0}, Landroid/media/browse/MediaBrowser;->isConnected()Z

    move-result v0

    return v0
.end method

.method public static subscribe(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 3

    check-cast p0, Landroid/media/browse/MediaBrowser;

    check-cast p2, Landroid/media/browse/MediaBrowser$SubscriptionCallback;

    invoke-virtual {p0, p1, p2}, Landroid/media/browse/MediaBrowser;->subscribe(Ljava/lang/String;Landroid/media/browse/MediaBrowser$SubscriptionCallback;)V

    return-void
.end method

.method public static unsubscribe(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 2

    check-cast p0, Landroid/media/browse/MediaBrowser;

    invoke-virtual {p0, p1}, Landroid/media/browse/MediaBrowser;->unsubscribe(Ljava/lang/String;)V

    return-void
.end method
