.class Landroidj/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi23;
.super Landroidj/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidj/support/v4/media/session/MediaControllerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MediaControllerImplApi23"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidj/support/v4/media/session/MediaSessionCompat$Token;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Landroidj/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21;-><init>(Landroid/content/Context;Landroidj/support/v4/media/session/MediaSessionCompat$Token;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidj/support/v4/media/session/MediaSessionCompat;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroidj/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21;-><init>(Landroid/content/Context;Landroidj/support/v4/media/session/MediaSessionCompat;)V

    return-void
.end method


# virtual methods
.method public getTransportControls()Landroidj/support/v4/media/session/MediaControllerCompat$TransportControls;
    .registers 3

    iget-object v0, p0, Landroidj/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi23;->mControllerObj:Ljava/lang/Object;

    invoke-static {v0}, Landroidj/support/v4/media/session/MediaControllerCompatApi21;->getTransportControls(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_e

    new-instance v0, Landroidj/support/v4/media/session/MediaControllerCompat$TransportControlsApi23;

    invoke-direct {v0, v1}, Landroidj/support/v4/media/session/MediaControllerCompat$TransportControlsApi23;-><init>(Ljava/lang/Object;)V

    :goto_d
    return-object v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method
