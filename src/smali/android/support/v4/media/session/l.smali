.class Landroid/support/v4/media/session/l;
.super Ljava/lang/Object;


# direct methods
.method public static j6(Ljava/lang/Object;)Landroid/os/Bundle;
    .registers 2

    check-cast p0, Landroid/media/session/PlaybackState;

    invoke-virtual {p0}, Landroid/media/session/PlaybackState;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method
