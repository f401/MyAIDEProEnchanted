.class public Landroidj/support/v4/media/MediaBrowserCompat$ConnectionCallback;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidj/support/v4/media/MediaBrowserCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConnectionCallback"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidj/support/v4/media/MediaBrowserCompat$ConnectionCallback$ConnectionCallbackInternal;,
        Landroidj/support/v4/media/MediaBrowserCompat$ConnectionCallback$StubApi21;
    }
.end annotation


# instance fields
.field mConnectionCallbackInternal:Landroidj/support/v4/media/MediaBrowserCompat$ConnectionCallback$ConnectionCallbackInternal;

.field final mConnectionCallbackObj:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_15

    new-instance v0, Landroidj/support/v4/media/MediaBrowserCompat$ConnectionCallback$StubApi21;

    invoke-direct {v0, p0}, Landroidj/support/v4/media/MediaBrowserCompat$ConnectionCallback$StubApi21;-><init>(Landroidj/support/v4/media/MediaBrowserCompat$ConnectionCallback;)V

    invoke-static {v0}, Landroidj/support/v4/media/MediaBrowserCompatApi21;->createConnectionCallback(Landroidj/support/v4/media/MediaBrowserCompatApi21$ConnectionCallback;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroidj/support/v4/media/MediaBrowserCompat$ConnectionCallback;->mConnectionCallbackObj:Ljava/lang/Object;

    :goto_14
    return-void

    :cond_15
    const/4 v0, 0x0

    iput-object v0, p0, Landroidj/support/v4/media/MediaBrowserCompat$ConnectionCallback;->mConnectionCallbackObj:Ljava/lang/Object;

    goto :goto_14
.end method


# virtual methods
.method public onConnected()V
    .registers 1

    return-void
.end method

.method public onConnectionFailed()V
    .registers 1

    return-void
.end method

.method public onConnectionSuspended()V
    .registers 1

    return-void
.end method

.method setInternalConnectionCallback(Landroidj/support/v4/media/MediaBrowserCompat$ConnectionCallback$ConnectionCallbackInternal;)V
    .registers 2

    iput-object p1, p0, Landroidj/support/v4/media/MediaBrowserCompat$ConnectionCallback;->mConnectionCallbackInternal:Landroidj/support/v4/media/MediaBrowserCompat$ConnectionCallback$ConnectionCallbackInternal;

    return-void
.end method
