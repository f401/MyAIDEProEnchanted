.class Landroidj/support/v4/media/MediaBrowserServiceCompat$3;
.super Landroidj/support/v4/media/MediaBrowserServiceCompat$Result;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidj/support/v4/media/MediaBrowserServiceCompat;->performSearch(Ljava/lang/String;Landroid/os/Bundle;Landroidj/support/v4/media/MediaBrowserServiceCompat$ConnectionRecord;Landroidj/support/v4/os/ResultReceiver;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidj/support/v4/media/MediaBrowserServiceCompat$Result",
        "<",
        "Ljava/util/List",
        "<",
        "Landroidj/support/v4/media/MediaBrowserCompat$MediaItem;",
        ">;>;"
    }
.end annotation


# instance fields
.field final this$0:Landroidj/support/v4/media/MediaBrowserServiceCompat;

.field final val$receiver:Landroidj/support/v4/os/ResultReceiver;


# direct methods
.method constructor <init>(Landroidj/support/v4/media/MediaBrowserServiceCompat;Ljava/lang/Object;Landroidj/support/v4/os/ResultReceiver;)V
    .registers 4

    iput-object p1, p0, Landroidj/support/v4/media/MediaBrowserServiceCompat$3;->this$0:Landroidj/support/v4/media/MediaBrowserServiceCompat;

    iput-object p3, p0, Landroidj/support/v4/media/MediaBrowserServiceCompat$3;->val$receiver:Landroidj/support/v4/os/ResultReceiver;

    invoke-direct {p0, p2}, Landroidj/support/v4/media/MediaBrowserServiceCompat$Result;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method bridge synthetic onResultSent(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Landroidj/support/v4/media/MediaBrowserServiceCompat$3;->onResultSent(Ljava/util/List;)V

    return-void
.end method

.method onResultSent(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroidj/support/v4/media/MediaBrowserCompat$MediaItem;",
            ">;)V"
        }
    .end annotation

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroidj/support/v4/media/MediaBrowserServiceCompat$3;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_b

    if-nez p1, :cond_13

    :cond_b
    iget-object v0, p0, Landroidj/support/v4/media/MediaBrowserServiceCompat$3;->val$receiver:Landroidj/support/v4/os/ResultReceiver;

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroidj/support/v4/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    :goto_12
    return-void

    :cond_13
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "search_results"

    new-array v0, v3, [Landroidj/support/v4/media/MediaBrowserCompat$MediaItem;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/os/Parcelable;

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    iget-object v0, p0, Landroidj/support/v4/media/MediaBrowserServiceCompat$3;->val$receiver:Landroidj/support/v4/os/ResultReceiver;

    invoke-virtual {v0, v3, v1}, Landroidj/support/v4/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    goto :goto_12
.end method
