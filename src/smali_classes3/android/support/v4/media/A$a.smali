.class Landroid/support/v4/media/A$a;
.super Landroid/support/v4/media/z$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/A;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/support/v4/media/A$c;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/support/v4/media/z$a;-><init>(Landroid/content/Context;Landroid/support/v4/media/z$b;)V

    return-void
.end method


# virtual methods
.method public onLoadChildren(Ljava/lang/String;Landroid/service/media/MediaBrowserService$Result;Landroid/os/Bundle;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/service/media/MediaBrowserService$Result<",
            "Ljava/util/List<",
            "Landroid/media/browse/MediaBrowser$MediaItem;",
            ">;>;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Landroid/support/v4/media/y$b;->j6:Landroid/support/v4/media/y$d;

    check-cast v0, Landroid/support/v4/media/A$c;

    new-instance v1, Landroid/support/v4/media/A$b;

    invoke-direct {v1, p2}, Landroid/support/v4/media/A$b;-><init>(Landroid/service/media/MediaBrowserService$Result;)V

    invoke-interface {v0, p1, v1, p3}, Landroid/support/v4/media/A$c;->j6(Ljava/lang/String;Landroid/support/v4/media/A$b;Landroid/os/Bundle;)V

    return-void
.end method
