.class Landroidj/support/v4/media/MediaBrowserCompatApi21$ConnectionCallbackProxy;
.super Landroid/media/browse/MediaBrowser$ConnectionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidj/support/v4/media/MediaBrowserCompatApi21;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ConnectionCallbackProxy"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroidj/support/v4/media/MediaBrowserCompatApi21$ConnectionCallback;",
        ">",
        "Landroid/media/browse/MediaBrowser$ConnectionCallback;"
    }
.end annotation


# instance fields
.field protected final mConnectionCallback:Landroidj/support/v4/media/MediaBrowserCompatApi21$ConnectionCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidj/support/v4/media/MediaBrowserCompatApi21$ConnectionCallback;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/media/browse/MediaBrowser$ConnectionCallback;-><init>()V

    iput-object p1, p0, Landroidj/support/v4/media/MediaBrowserCompatApi21$ConnectionCallbackProxy;->mConnectionCallback:Landroidj/support/v4/media/MediaBrowserCompatApi21$ConnectionCallback;

    return-void
.end method


# virtual methods
.method public onConnected()V
    .registers 2

    iget-object v0, p0, Landroidj/support/v4/media/MediaBrowserCompatApi21$ConnectionCallbackProxy;->mConnectionCallback:Landroidj/support/v4/media/MediaBrowserCompatApi21$ConnectionCallback;

    invoke-interface {v0}, Landroidj/support/v4/media/MediaBrowserCompatApi21$ConnectionCallback;->onConnected()V

    return-void
.end method

.method public onConnectionFailed()V
    .registers 2

    iget-object v0, p0, Landroidj/support/v4/media/MediaBrowserCompatApi21$ConnectionCallbackProxy;->mConnectionCallback:Landroidj/support/v4/media/MediaBrowserCompatApi21$ConnectionCallback;

    invoke-interface {v0}, Landroidj/support/v4/media/MediaBrowserCompatApi21$ConnectionCallback;->onConnectionFailed()V

    return-void
.end method

.method public onConnectionSuspended()V
    .registers 2

    iget-object v0, p0, Landroidj/support/v4/media/MediaBrowserCompatApi21$ConnectionCallbackProxy;->mConnectionCallback:Landroidj/support/v4/media/MediaBrowserCompatApi21$ConnectionCallback;

    invoke-interface {v0}, Landroidj/support/v4/media/MediaBrowserCompatApi21$ConnectionCallback;->onConnectionSuspended()V

    return-void
.end method
