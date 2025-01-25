.class Landroid/support/v4/media/f;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/media/f$a;,
        Landroid/support/v4/media/f$b;,
        Landroid/support/v4/media/f$c;,
        Landroid/support/v4/media/f$d;,
        Landroid/support/v4/media/f$e;
    }
.end annotation


# direct methods
.method public static DW(Ljava/lang/Object;)V
    .registers 1

    check-cast p0, Landroid/media/browse/MediaBrowser;

    invoke-virtual {p0}, Landroid/media/browse/MediaBrowser;->disconnect()V

    return-void
.end method

.method public static FH(Ljava/lang/Object;)Landroid/os/Bundle;
    .registers 1

    check-cast p0, Landroid/media/browse/MediaBrowser;

    invoke-virtual {p0}, Landroid/media/browse/MediaBrowser;->getExtras()Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public static Hw(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 1

    check-cast p0, Landroid/media/browse/MediaBrowser;

    invoke-virtual {p0}, Landroid/media/browse/MediaBrowser;->getSessionToken()Landroid/media/session/MediaSession$Token;

    move-result-object p0

    return-object p0
.end method

.method public static j6(Landroid/content/Context;Landroid/content/ComponentName;Ljava/lang/Object;Landroid/os/Bundle;)Ljava/lang/Object;
    .registers 5

    new-instance v0, Landroid/media/browse/MediaBrowser;

    check-cast p2, Landroid/media/browse/MediaBrowser$ConnectionCallback;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/media/browse/MediaBrowser;-><init>(Landroid/content/Context;Landroid/content/ComponentName;Landroid/media/browse/MediaBrowser$ConnectionCallback;Landroid/os/Bundle;)V

    return-object v0
.end method

.method public static j6(Landroid/support/v4/media/f$a;)Ljava/lang/Object;
    .registers 2

    new-instance v0, Landroid/support/v4/media/f$b;

    invoke-direct {v0, p0}, Landroid/support/v4/media/f$b;-><init>(Landroid/support/v4/media/f$a;)V

    return-object v0
.end method

.method public static j6(Landroid/support/v4/media/f$d;)Ljava/lang/Object;
    .registers 2

    new-instance v0, Landroid/support/v4/media/f$e;

    invoke-direct {v0, p0}, Landroid/support/v4/media/f$e;-><init>(Landroid/support/v4/media/f$d;)V

    return-object v0
.end method

.method public static j6(Ljava/lang/Object;)V
    .registers 1

    check-cast p0, Landroid/media/browse/MediaBrowser;

    invoke-virtual {p0}, Landroid/media/browse/MediaBrowser;->connect()V

    return-void
.end method
