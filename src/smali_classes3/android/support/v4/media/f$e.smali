.class Landroid/support/v4/media/f$e;
.super Landroid/media/browse/MediaBrowser$SubscriptionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroid/support/v4/media/f$d;",
        ">",
        "Landroid/media/browse/MediaBrowser$SubscriptionCallback;"
    }
.end annotation


# instance fields
.field protected final j6:Landroid/support/v4/media/f$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/support/v4/media/f$d;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/media/browse/MediaBrowser$SubscriptionCallback;-><init>()V

    iput-object p1, p0, Landroid/support/v4/media/f$e;->j6:Landroid/support/v4/media/f$d;

    return-void
.end method


# virtual methods
.method public onChildrenLoaded(Ljava/lang/String;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/media/browse/MediaBrowser$MediaItem;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Landroid/support/v4/media/f$e;->j6:Landroid/support/v4/media/f$d;

    invoke-interface {v0, p1, p2}, Landroid/support/v4/media/f$d;->j6(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Landroid/support/v4/media/f$e;->j6:Landroid/support/v4/media/f$d;

    invoke-interface {v0, p1}, Landroid/support/v4/media/f$d;->j6(Ljava/lang/String;)V

    return-void
.end method
