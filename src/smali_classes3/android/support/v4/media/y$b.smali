.class Landroid/support/v4/media/y$b;
.super Landroid/service/media/MediaBrowserService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field final j6:Landroid/support/v4/media/y$d;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/support/v4/media/y$d;)V
    .registers 3

    invoke-direct {p0}, Landroid/service/media/MediaBrowserService;-><init>()V

    invoke-virtual {p0, p1}, Landroid/service/media/MediaBrowserService;->attachBaseContext(Landroid/content/Context;)V

    iput-object p2, p0, Landroid/support/v4/media/y$b;->j6:Landroid/support/v4/media/y$d;

    return-void
.end method


# virtual methods
.method public onGetRoot(Ljava/lang/String;ILandroid/os/Bundle;)Landroid/service/media/MediaBrowserService$BrowserRoot;
    .registers 7

    iget-object v0, p0, Landroid/support/v4/media/y$b;->j6:Landroid/support/v4/media/y$d;

    const/4 v1, 0x0

    if-nez p3, :cond_7

    move-object v2, v1

    goto :goto_c

    :cond_7
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2, p3}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    :goto_c
    invoke-interface {v0, p1, p2, v2}, Landroid/support/v4/media/y$d;->j6(Ljava/lang/String;ILandroid/os/Bundle;)Landroid/support/v4/media/y$a;

    move-result-object p1

    if-nez p1, :cond_13

    goto :goto_1c

    :cond_13
    new-instance v1, Landroid/service/media/MediaBrowserService$BrowserRoot;

    iget-object p2, p1, Landroid/support/v4/media/y$a;->j6:Ljava/lang/String;

    iget-object p1, p1, Landroid/support/v4/media/y$a;->DW:Landroid/os/Bundle;

    invoke-direct {v1, p2, p1}, Landroid/service/media/MediaBrowserService$BrowserRoot;-><init>(Ljava/lang/String;Landroid/os/Bundle;)V

    :goto_1c
    return-object v1
.end method

.method public onLoadChildren(Ljava/lang/String;Landroid/service/media/MediaBrowserService$Result;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/service/media/MediaBrowserService$Result<",
            "Ljava/util/List<",
            "Landroid/media/browse/MediaBrowser$MediaItem;",
            ">;>;)V"
        }
    .end annotation

    iget-object v0, p0, Landroid/support/v4/media/y$b;->j6:Landroid/support/v4/media/y$d;

    new-instance v1, Landroid/support/v4/media/y$c;

    invoke-direct {v1, p2}, Landroid/support/v4/media/y$c;-><init>(Landroid/service/media/MediaBrowserService$Result;)V

    invoke-interface {v0, p1, v1}, Landroid/support/v4/media/y$d;->DW(Ljava/lang/String;Landroid/support/v4/media/y$c;)V

    return-void
.end method
