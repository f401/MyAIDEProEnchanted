.class Landroidj/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi23$1;
.super Landroidj/support/v4/media/MediaBrowserServiceCompat$Result;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidj/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi23;->onLoadItem(Ljava/lang/String;Landroidj/support/v4/media/MediaBrowserServiceCompatApi21$ResultWrapper;)V
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
.field final this$1:Landroidj/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi23;

.field final val$resultWrapper:Landroidj/support/v4/media/MediaBrowserServiceCompatApi21$ResultWrapper;


# direct methods
.method constructor <init>(Landroidj/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi23;Ljava/lang/Object;Landroidj/support/v4/media/MediaBrowserServiceCompatApi21$ResultWrapper;)V
    .registers 4

    iput-object p1, p0, Landroidj/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi23$1;->this$1:Landroidj/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi23;

    iput-object p3, p0, Landroidj/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi23$1;->val$resultWrapper:Landroidj/support/v4/media/MediaBrowserServiceCompatApi21$ResultWrapper;

    invoke-direct {p0, p2}, Landroidj/support/v4/media/MediaBrowserServiceCompat$Result;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public detach()V
    .registers 2

    iget-object v0, p0, Landroidj/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi23$1;->val$resultWrapper:Landroidj/support/v4/media/MediaBrowserServiceCompatApi21$ResultWrapper;

    invoke-virtual {v0}, Landroidj/support/v4/media/MediaBrowserServiceCompatApi21$ResultWrapper;->detach()V

    return-void
.end method

.method onResultSent(Landroidj/support/v4/media/MediaBrowserCompat$MediaItem;)V
    .registers 4

    if-nez p1, :cond_9

    iget-object v0, p0, Landroidj/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi23$1;->val$resultWrapper:Landroidj/support/v4/media/MediaBrowserServiceCompatApi21$ResultWrapper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidj/support/v4/media/MediaBrowserServiceCompatApi21$ResultWrapper;->sendResult(Ljava/lang/Object;)V

    :goto_8
    return-void

    :cond_9
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroidj/support/v4/media/MediaBrowserCompat$MediaItem;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object v1, p0, Landroidj/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi23$1;->val$resultWrapper:Landroidj/support/v4/media/MediaBrowserServiceCompatApi21$ResultWrapper;

    invoke-virtual {v1, v0}, Landroidj/support/v4/media/MediaBrowserServiceCompatApi21$ResultWrapper;->sendResult(Ljava/lang/Object;)V

    goto :goto_8
.end method

.method bridge synthetic onResultSent(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Landroidj/support/v4/media/MediaBrowserCompat$MediaItem;

    invoke-virtual {p0, p1}, Landroidj/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi23$1;->onResultSent(Landroidj/support/v4/media/MediaBrowserCompat$MediaItem;)V

    return-void
.end method
