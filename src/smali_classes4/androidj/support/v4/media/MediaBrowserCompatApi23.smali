.class Landroidj/support/v4/media/MediaBrowserCompatApi23;
.super Ljava/lang/Object;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x17
.end annotation

.annotation build Landroidj/support/annotation/RequiresApi;
    value = 0x17
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidj/support/v4/media/MediaBrowserCompatApi23$ItemCallback;,
        Landroidj/support/v4/media/MediaBrowserCompatApi23$ItemCallbackProxy;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createItemCallback(Landroidj/support/v4/media/MediaBrowserCompatApi23$ItemCallback;)Ljava/lang/Object;
    .registers 2

    new-instance v0, Landroidj/support/v4/media/MediaBrowserCompatApi23$ItemCallbackProxy;

    invoke-direct {v0, p0}, Landroidj/support/v4/media/MediaBrowserCompatApi23$ItemCallbackProxy;-><init>(Landroidj/support/v4/media/MediaBrowserCompatApi23$ItemCallback;)V

    return-object v0
.end method

.method public static getItem(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 3

    check-cast p0, Landroid/media/browse/MediaBrowser;

    check-cast p2, Landroid/media/browse/MediaBrowser$ItemCallback;

    invoke-virtual {p0, p1, p2}, Landroid/media/browse/MediaBrowser;->getItem(Ljava/lang/String;Landroid/media/browse/MediaBrowser$ItemCallback;)V

    return-void
.end method
