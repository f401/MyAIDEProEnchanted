.class Landroid/support/v4/media/session/c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/media/session/c$a;,
        Landroid/support/v4/media/session/c$b;,
        Landroid/support/v4/media/session/c$c;
    }
.end annotation


# direct methods
.method public static j6(Landroid/content/Context;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    new-instance v0, Landroid/media/session/MediaController;

    check-cast p1, Landroid/media/session/MediaSession$Token;

    invoke-direct {v0, p0, p1}, Landroid/media/session/MediaController;-><init>(Landroid/content/Context;Landroid/media/session/MediaSession$Token;)V

    return-object v0
.end method

.method public static j6(Landroid/support/v4/media/session/c$a;)Ljava/lang/Object;
    .registers 2

    new-instance v0, Landroid/support/v4/media/session/c$b;

    invoke-direct {v0, p0}, Landroid/support/v4/media/session/c$b;-><init>(Landroid/support/v4/media/session/c$a;)V

    return-object v0
.end method

.method public static j6(Ljava/lang/Object;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V
    .registers 4

    check-cast p0, Landroid/media/session/MediaController;

    invoke-virtual {p0, p1, p2, p3}, Landroid/media/session/MediaController;->sendCommand(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V

    return-void
.end method

.method public static j6(Ljava/lang/Object;Landroid/view/KeyEvent;)Z
    .registers 2

    check-cast p0, Landroid/media/session/MediaController;

    invoke-virtual {p0, p1}, Landroid/media/session/MediaController;->dispatchMediaButtonEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method
