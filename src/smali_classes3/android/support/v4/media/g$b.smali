.class Landroid/support/v4/media/g$b;
.super Landroid/support/v4/media/f$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroid/support/v4/media/g$a;",
        ">",
        "Landroid/support/v4/media/f$e<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/support/v4/media/g$a;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Landroid/support/v4/media/f$e;-><init>(Landroid/support/v4/media/f$d;)V

    return-void
.end method


# virtual methods
.method public onChildrenLoaded(Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/media/browse/MediaBrowser$MediaItem;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Landroid/support/v4/media/f$e;->j6:Landroid/support/v4/media/f$d;

    check-cast v0, Landroid/support/v4/media/g$a;

    invoke-interface {v0, p1, p2, p3}, Landroid/support/v4/media/g$a;->j6(Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;)V

    return-void
.end method

.method public onError(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 4

    iget-object v0, p0, Landroid/support/v4/media/f$e;->j6:Landroid/support/v4/media/f$d;

    check-cast v0, Landroid/support/v4/media/g$a;

    invoke-interface {v0, p1, p2}, Landroid/support/v4/media/g$a;->j6(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method
