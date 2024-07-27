.class Landroid/support/v4/media/y;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/media/y$a;,
        Landroid/support/v4/media/y$c;
    }
.end annotation


# direct methods
.method public static j6(Ljava/lang/Object;Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3

    check-cast p0, Landroid/service/media/MediaBrowserService;

    invoke-virtual {p0, p1}, Landroid/service/media/MediaBrowserService;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public static j6(Landroid/content/Context;Landroid/support/v4/media/y$d;)Ljava/lang/Object;
    .registers 3

    new-instance v0, Landroid/support/v4/media/y$b;

    invoke-direct {v0, p0, p1}, Landroid/support/v4/media/y$b;-><init>(Landroid/content/Context;Landroid/support/v4/media/y$d;)V

    return-object v0
.end method

.method public static j6(Ljava/lang/Object;)V
    .registers 1

    check-cast p0, Landroid/service/media/MediaBrowserService;

    invoke-virtual {p0}, Landroid/service/media/MediaBrowserService;->onCreate()V

    return-void
.end method
