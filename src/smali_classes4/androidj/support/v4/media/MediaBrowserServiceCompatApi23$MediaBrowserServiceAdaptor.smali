.class Landroidj/support/v4/media/MediaBrowserServiceCompatApi23$MediaBrowserServiceAdaptor;
.super Landroidj/support/v4/media/MediaBrowserServiceCompatApi21$MediaBrowserServiceAdaptor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidj/support/v4/media/MediaBrowserServiceCompatApi23;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MediaBrowserServiceAdaptor"
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;Landroidj/support/v4/media/MediaBrowserServiceCompatApi23$ServiceCompatProxy;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroidj/support/v4/media/MediaBrowserServiceCompatApi21$MediaBrowserServiceAdaptor;-><init>(Landroid/content/Context;Landroidj/support/v4/media/MediaBrowserServiceCompatApi21$ServiceCompatProxy;)V

    return-void
.end method


# virtual methods
.method public onLoadItem(Ljava/lang/String;Landroid/service/media/MediaBrowserService$Result;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/service/media/MediaBrowserService$Result",
            "<",
            "Landroid/media/browse/MediaBrowser$MediaItem;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Landroidj/support/v4/media/MediaBrowserServiceCompatApi23$MediaBrowserServiceAdaptor;->mServiceProxy:Landroidj/support/v4/media/MediaBrowserServiceCompatApi21$ServiceCompatProxy;

    check-cast v0, Landroidj/support/v4/media/MediaBrowserServiceCompatApi23$ServiceCompatProxy;

    new-instance v1, Landroidj/support/v4/media/MediaBrowserServiceCompatApi21$ResultWrapper;

    invoke-direct {v1, p2}, Landroidj/support/v4/media/MediaBrowserServiceCompatApi21$ResultWrapper;-><init>(Landroid/service/media/MediaBrowserService$Result;)V

    invoke-interface {v0, p1, v1}, Landroidj/support/v4/media/MediaBrowserServiceCompatApi23$ServiceCompatProxy;->onLoadItem(Ljava/lang/String;Landroidj/support/v4/media/MediaBrowserServiceCompatApi21$ResultWrapper;)V

    return-void
.end method
