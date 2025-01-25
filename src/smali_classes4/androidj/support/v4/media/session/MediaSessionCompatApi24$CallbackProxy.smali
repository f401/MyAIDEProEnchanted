.class Landroidj/support/v4/media/session/MediaSessionCompatApi24$CallbackProxy;
.super Landroidj/support/v4/media/session/MediaSessionCompatApi23$CallbackProxy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidj/support/v4/media/session/MediaSessionCompatApi24;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CallbackProxy"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroidj/support/v4/media/session/MediaSessionCompatApi24$Callback;",
        ">",
        "Landroidj/support/v4/media/session/MediaSessionCompatApi23$CallbackProxy",
        "<TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroidj/support/v4/media/session/MediaSessionCompatApi24$Callback;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Landroidj/support/v4/media/session/MediaSessionCompatApi23$CallbackProxy;-><init>(Landroidj/support/v4/media/session/MediaSessionCompatApi23$Callback;)V

    return-void
.end method


# virtual methods
.method public onPrepare()V
    .registers 2

    iget-object v0, p0, Landroidj/support/v4/media/session/MediaSessionCompatApi24$CallbackProxy;->mCallback:Landroidj/support/v4/media/session/MediaSessionCompatApi21$Callback;

    check-cast v0, Landroidj/support/v4/media/session/MediaSessionCompatApi24$Callback;

    invoke-interface {v0}, Landroidj/support/v4/media/session/MediaSessionCompatApi24$Callback;->onPrepare()V

    return-void
.end method

.method public onPrepareFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 4

    iget-object v0, p0, Landroidj/support/v4/media/session/MediaSessionCompatApi24$CallbackProxy;->mCallback:Landroidj/support/v4/media/session/MediaSessionCompatApi21$Callback;

    check-cast v0, Landroidj/support/v4/media/session/MediaSessionCompatApi24$Callback;

    invoke-interface {v0, p1, p2}, Landroidj/support/v4/media/session/MediaSessionCompatApi24$Callback;->onPrepareFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public onPrepareFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 4

    iget-object v0, p0, Landroidj/support/v4/media/session/MediaSessionCompatApi24$CallbackProxy;->mCallback:Landroidj/support/v4/media/session/MediaSessionCompatApi21$Callback;

    check-cast v0, Landroidj/support/v4/media/session/MediaSessionCompatApi24$Callback;

    invoke-interface {v0, p1, p2}, Landroidj/support/v4/media/session/MediaSessionCompatApi24$Callback;->onPrepareFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public onPrepareFromUri(Landroid/net/Uri;Landroid/os/Bundle;)V
    .registers 4

    iget-object v0, p0, Landroidj/support/v4/media/session/MediaSessionCompatApi24$CallbackProxy;->mCallback:Landroidj/support/v4/media/session/MediaSessionCompatApi21$Callback;

    check-cast v0, Landroidj/support/v4/media/session/MediaSessionCompatApi24$Callback;

    invoke-interface {v0, p1, p2}, Landroidj/support/v4/media/session/MediaSessionCompatApi24$Callback;->onPrepareFromUri(Landroid/net/Uri;Landroid/os/Bundle;)V

    return-void
.end method
