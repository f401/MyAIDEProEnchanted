.class Landroidj/support/v4/media/MediaBrowserCompat$ConnectionCallback$StubApi21;
.super Ljava/lang/Object;

# interfaces
.implements Landroidj/support/v4/media/MediaBrowserCompatApi21$ConnectionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidj/support/v4/media/MediaBrowserCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StubApi21"
.end annotation


# instance fields
.field final this$0:Landroidj/support/v4/media/MediaBrowserCompat$ConnectionCallback;


# direct methods
.method constructor <init>(Landroidj/support/v4/media/MediaBrowserCompat$ConnectionCallback;)V
    .registers 2

    iput-object p1, p0, Landroidj/support/v4/media/MediaBrowserCompat$ConnectionCallback$StubApi21;->this$0:Landroidj/support/v4/media/MediaBrowserCompat$ConnectionCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnected()V
    .registers 2

    iget-object v0, p0, Landroidj/support/v4/media/MediaBrowserCompat$ConnectionCallback$StubApi21;->this$0:Landroidj/support/v4/media/MediaBrowserCompat$ConnectionCallback;

    iget-object v0, v0, Landroidj/support/v4/media/MediaBrowserCompat$ConnectionCallback;->mConnectionCallbackInternal:Landroidj/support/v4/media/MediaBrowserCompat$ConnectionCallback$ConnectionCallbackInternal;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidj/support/v4/media/MediaBrowserCompat$ConnectionCallback$StubApi21;->this$0:Landroidj/support/v4/media/MediaBrowserCompat$ConnectionCallback;

    iget-object v0, v0, Landroidj/support/v4/media/MediaBrowserCompat$ConnectionCallback;->mConnectionCallbackInternal:Landroidj/support/v4/media/MediaBrowserCompat$ConnectionCallback$ConnectionCallbackInternal;

    invoke-interface {v0}, Landroidj/support/v4/media/MediaBrowserCompat$ConnectionCallback$ConnectionCallbackInternal;->onConnected()V

    :cond_0
    iget-object v0, p0, Landroidj/support/v4/media/MediaBrowserCompat$ConnectionCallback$StubApi21;->this$0:Landroidj/support/v4/media/MediaBrowserCompat$ConnectionCallback;

    invoke-virtual {v0}, Landroidj/support/v4/media/MediaBrowserCompat$ConnectionCallback;->onConnected()V

    return-void
.end method

.method public onConnectionFailed()V
    .registers 2

    iget-object v0, p0, Landroidj/support/v4/media/MediaBrowserCompat$ConnectionCallback$StubApi21;->this$0:Landroidj/support/v4/media/MediaBrowserCompat$ConnectionCallback;

    iget-object v0, v0, Landroidj/support/v4/media/MediaBrowserCompat$ConnectionCallback;->mConnectionCallbackInternal:Landroidj/support/v4/media/MediaBrowserCompat$ConnectionCallback$ConnectionCallbackInternal;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidj/support/v4/media/MediaBrowserCompat$ConnectionCallback$StubApi21;->this$0:Landroidj/support/v4/media/MediaBrowserCompat$ConnectionCallback;

    iget-object v0, v0, Landroidj/support/v4/media/MediaBrowserCompat$ConnectionCallback;->mConnectionCallbackInternal:Landroidj/support/v4/media/MediaBrowserCompat$ConnectionCallback$ConnectionCallbackInternal;

    invoke-interface {v0}, Landroidj/support/v4/media/MediaBrowserCompat$ConnectionCallback$ConnectionCallbackInternal;->onConnectionFailed()V

    :cond_0
    iget-object v0, p0, Landroidj/support/v4/media/MediaBrowserCompat$ConnectionCallback$StubApi21;->this$0:Landroidj/support/v4/media/MediaBrowserCompat$ConnectionCallback;

    invoke-virtual {v0}, Landroidj/support/v4/media/MediaBrowserCompat$ConnectionCallback;->onConnectionFailed()V

    return-void
.end method

.method public onConnectionSuspended()V
    .registers 2

    iget-object v0, p0, Landroidj/support/v4/media/MediaBrowserCompat$ConnectionCallback$StubApi21;->this$0:Landroidj/support/v4/media/MediaBrowserCompat$ConnectionCallback;

    iget-object v0, v0, Landroidj/support/v4/media/MediaBrowserCompat$ConnectionCallback;->mConnectionCallbackInternal:Landroidj/support/v4/media/MediaBrowserCompat$ConnectionCallback$ConnectionCallbackInternal;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidj/support/v4/media/MediaBrowserCompat$ConnectionCallback$StubApi21;->this$0:Landroidj/support/v4/media/MediaBrowserCompat$ConnectionCallback;

    iget-object v0, v0, Landroidj/support/v4/media/MediaBrowserCompat$ConnectionCallback;->mConnectionCallbackInternal:Landroidj/support/v4/media/MediaBrowserCompat$ConnectionCallback$ConnectionCallbackInternal;

    invoke-interface {v0}, Landroidj/support/v4/media/MediaBrowserCompat$ConnectionCallback$ConnectionCallbackInternal;->onConnectionSuspended()V

    :cond_0
    iget-object v0, p0, Landroidj/support/v4/media/MediaBrowserCompat$ConnectionCallback$StubApi21;->this$0:Landroidj/support/v4/media/MediaBrowserCompat$ConnectionCallback;

    invoke-virtual {v0}, Landroidj/support/v4/media/MediaBrowserCompat$ConnectionCallback;->onConnectionSuspended()V

    return-void
.end method
