.class Landroidj/support/v4/media/MediaBrowserServiceCompatApi24$MediaBrowserServiceAdaptor;
.super Landroidj/support/v4/media/MediaBrowserServiceCompatApi23$MediaBrowserServiceAdaptor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidj/support/v4/media/MediaBrowserServiceCompatApi24;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MediaBrowserServiceAdaptor"
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;Landroidj/support/v4/media/MediaBrowserServiceCompatApi24$ServiceCompatProxy;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroidj/support/v4/media/MediaBrowserServiceCompatApi23$MediaBrowserServiceAdaptor;-><init>(Landroid/content/Context;Landroidj/support/v4/media/MediaBrowserServiceCompatApi23$ServiceCompatProxy;)V

    return-void
.end method


# virtual methods
.method public onLoadChildren(Ljava/lang/String;Landroid/service/media/MediaBrowserService$Result;Landroid/os/Bundle;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/service/media/MediaBrowserService$Result",
            "<",
            "Ljava/util/List",
            "<",
            "Landroid/media/browse/MediaBrowser$MediaItem;",
            ">;>;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Landroidj/support/v4/media/MediaBrowserServiceCompatApi24$MediaBrowserServiceAdaptor;->mServiceProxy:Landroidj/support/v4/media/MediaBrowserServiceCompatApi21$ServiceCompatProxy;

    check-cast v0, Landroidj/support/v4/media/MediaBrowserServiceCompatApi24$ServiceCompatProxy;

    new-instance v1, Landroidj/support/v4/media/MediaBrowserServiceCompatApi24$ResultWrapper;

    invoke-direct {v1, p2}, Landroidj/support/v4/media/MediaBrowserServiceCompatApi24$ResultWrapper;-><init>(Landroid/service/media/MediaBrowserService$Result;)V

    invoke-interface {v0, p1, v1, p3}, Landroidj/support/v4/media/MediaBrowserServiceCompatApi24$ServiceCompatProxy;->onLoadChildren(Ljava/lang/String;Landroidj/support/v4/media/MediaBrowserServiceCompatApi24$ResultWrapper;Landroid/os/Bundle;)V

    return-void
.end method
