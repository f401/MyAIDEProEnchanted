.class Landroidj/support/v4/media/session/MediaControllerCompat$TransportControlsApi23;
.super Landroidj/support/v4/media/session/MediaControllerCompat$TransportControlsApi21;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidj/support/v4/media/session/MediaControllerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TransportControlsApi23"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .registers 2

    invoke-direct {p0, p1}, Landroidj/support/v4/media/session/MediaControllerCompat$TransportControlsApi21;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public playFromUri(Landroid/net/Uri;Landroid/os/Bundle;)V
    .registers 4

    iget-object v0, p0, Landroidj/support/v4/media/session/MediaControllerCompat$TransportControlsApi23;->mControlsObj:Ljava/lang/Object;

    invoke-static {v0, p1, p2}, Landroidj/support/v4/media/session/MediaControllerCompatApi23$TransportControls;->playFromUri(Ljava/lang/Object;Landroid/net/Uri;Landroid/os/Bundle;)V

    return-void
.end method
