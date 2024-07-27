.class Landroid/support/v4/media/z$a;
.super Landroid/support/v4/media/y$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/support/v4/media/z$b;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/support/v4/media/y$b;-><init>(Landroid/content/Context;Landroid/support/v4/media/y$d;)V

    return-void
.end method


# virtual methods
.method public onLoadItem(Ljava/lang/String;Landroid/service/media/MediaBrowserService$Result;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/service/media/MediaBrowserService$Result",
            "<",
            "Landroid/media/browse/MediaBrowser$MediaItem;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Landroid/support/v4/media/y$b;->j6:Landroid/support/v4/media/y$d;

    check-cast v0, Landroid/support/v4/media/z$b;

    new-instance v1, Landroid/support/v4/media/y$c;

    invoke-direct {v1, p2}, Landroid/support/v4/media/y$c;-><init>(Landroid/service/media/MediaBrowserService$Result;)V

    invoke-interface {v0, p1, v1}, Landroid/support/v4/media/z$b;->j6(Ljava/lang/String;Landroid/support/v4/media/y$c;)V

    return-void
.end method
