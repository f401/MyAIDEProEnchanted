.class Landroidj/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi21$2;
.super Landroidj/support/v4/media/MediaBrowserServiceCompat$Result;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidj/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi21;->onLoadChildren(Ljava/lang/String;Landroidj/support/v4/media/MediaBrowserServiceCompatApi21$ResultWrapper;)V
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
.field final this$1:Landroidj/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi21;

.field final val$resultWrapper:Landroidj/support/v4/media/MediaBrowserServiceCompatApi21$ResultWrapper;


# direct methods
.method constructor <init>(Landroidj/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi21;Ljava/lang/Object;Landroidj/support/v4/media/MediaBrowserServiceCompatApi21$ResultWrapper;)V
    .registers 4

    iput-object p1, p0, Landroidj/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi21$2;->this$1:Landroidj/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi21;

    iput-object p3, p0, Landroidj/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi21$2;->val$resultWrapper:Landroidj/support/v4/media/MediaBrowserServiceCompatApi21$ResultWrapper;

    invoke-direct {p0, p2}, Landroidj/support/v4/media/MediaBrowserServiceCompat$Result;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public detach()V
    .registers 2

    iget-object v0, p0, Landroidj/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi21$2;->val$resultWrapper:Landroidj/support/v4/media/MediaBrowserServiceCompatApi21$ResultWrapper;

    invoke-virtual {v0}, Landroidj/support/v4/media/MediaBrowserServiceCompatApi21$ResultWrapper;->detach()V

    return-void
.end method

.method bridge synthetic onResultSent(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Landroidj/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi21$2;->onResultSent(Ljava/util/List;)V

    return-void
.end method

.method onResultSent(Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroidj/support/v4/media/MediaBrowserCompat$MediaItem;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_25

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidj/support/v4/media/MediaBrowserCompat$MediaItem;

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroidj/support/v4/media/MediaBrowserCompat$MediaItem;->writeToParcel(Landroid/os/Parcel;I)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_c

    :cond_24
    move-object v0, v1

    :cond_25
    iget-object v1, p0, Landroidj/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi21$2;->val$resultWrapper:Landroidj/support/v4/media/MediaBrowserServiceCompatApi21$ResultWrapper;

    invoke-virtual {v1, v0}, Landroidj/support/v4/media/MediaBrowserServiceCompatApi21$ResultWrapper;->sendResult(Ljava/lang/Object;)V

    return-void
.end method
