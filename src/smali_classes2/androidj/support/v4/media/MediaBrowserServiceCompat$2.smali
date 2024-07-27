.class Landroidj/support/v4/media/MediaBrowserServiceCompat$2;
.super Landroidj/support/v4/media/MediaBrowserServiceCompat$Result;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidj/support/v4/media/MediaBrowserServiceCompat;->performLoadItem(Ljava/lang/String;Landroidj/support/v4/media/MediaBrowserServiceCompat$ConnectionRecord;Landroidj/support/v4/os/ResultReceiver;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidj/support/v4/media/MediaBrowserServiceCompat$Result",
        "<",
        "Landroidj/support/v4/media/MediaBrowserCompat$MediaItem;",
        ">;"
    }
.end annotation


# instance fields
.field final this$0:Landroidj/support/v4/media/MediaBrowserServiceCompat;

.field final val$receiver:Landroidj/support/v4/os/ResultReceiver;


# direct methods
.method constructor <init>(Landroidj/support/v4/media/MediaBrowserServiceCompat;Ljava/lang/Object;Landroidj/support/v4/os/ResultReceiver;)V
    .registers 4

    iput-object p1, p0, Landroidj/support/v4/media/MediaBrowserServiceCompat$2;->this$0:Landroidj/support/v4/media/MediaBrowserServiceCompat;

    iput-object p3, p0, Landroidj/support/v4/media/MediaBrowserServiceCompat$2;->val$receiver:Landroidj/support/v4/os/ResultReceiver;

    invoke-direct {p0, p2}, Landroidj/support/v4/media/MediaBrowserServiceCompat$Result;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method onResultSent(Landroidj/support/v4/media/MediaBrowserCompat$MediaItem;)V
    .registers 5

    invoke-virtual {p0}, Landroidj/support/v4/media/MediaBrowserServiceCompat$2;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidj/support/v4/media/MediaBrowserServiceCompat$2;->val$receiver:Landroidj/support/v4/os/ResultReceiver;

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroidj/support/v4/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "media_item"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object v1, p0, Landroidj/support/v4/media/MediaBrowserServiceCompat$2;->val$receiver:Landroidj/support/v4/os/ResultReceiver;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Landroidj/support/v4/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    goto :goto_0
.end method

.method bridge synthetic onResultSent(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Landroidj/support/v4/media/MediaBrowserCompat$MediaItem;

    invoke-virtual {p0, p1}, Landroidj/support/v4/media/MediaBrowserServiceCompat$2;->onResultSent(Landroidj/support/v4/media/MediaBrowserCompat$MediaItem;)V

    return-void
.end method
