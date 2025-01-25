.class Landroidj/support/v4/media/MediaBrowserCompatApi23$ItemCallbackProxy;
.super Landroid/media/browse/MediaBrowser$ItemCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidj/support/v4/media/MediaBrowserCompatApi23;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ItemCallbackProxy"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroidj/support/v4/media/MediaBrowserCompatApi23$ItemCallback;",
        ">",
        "Landroid/media/browse/MediaBrowser$ItemCallback;"
    }
.end annotation


# instance fields
.field protected final mItemCallback:Landroidj/support/v4/media/MediaBrowserCompatApi23$ItemCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidj/support/v4/media/MediaBrowserCompatApi23$ItemCallback;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/media/browse/MediaBrowser$ItemCallback;-><init>()V

    iput-object p1, p0, Landroidj/support/v4/media/MediaBrowserCompatApi23$ItemCallbackProxy;->mItemCallback:Landroidj/support/v4/media/MediaBrowserCompatApi23$ItemCallback;

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;)V
    .registers 3
    .param p1  # Ljava/lang/String;
        .annotation build Landroidj/support/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Landroidj/support/v4/media/MediaBrowserCompatApi23$ItemCallbackProxy;->mItemCallback:Landroidj/support/v4/media/MediaBrowserCompatApi23$ItemCallback;

    invoke-interface {v0, p1}, Landroidj/support/v4/media/MediaBrowserCompatApi23$ItemCallback;->onError(Ljava/lang/String;)V

    return-void
.end method

.method public onItemLoaded(Landroid/media/browse/MediaBrowser$MediaItem;)V
    .registers 4

    if-nez p1, :cond_9

    iget-object v0, p0, Landroidj/support/v4/media/MediaBrowserCompatApi23$ItemCallbackProxy;->mItemCallback:Landroidj/support/v4/media/MediaBrowserCompatApi23$ItemCallback;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroidj/support/v4/media/MediaBrowserCompatApi23$ItemCallback;->onItemLoaded(Landroid/os/Parcel;)V

    :goto_8
    return-void

    :cond_9
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/media/browse/MediaBrowser$MediaItem;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object v1, p0, Landroidj/support/v4/media/MediaBrowserCompatApi23$ItemCallbackProxy;->mItemCallback:Landroidj/support/v4/media/MediaBrowserCompatApi23$ItemCallback;

    invoke-interface {v1, v0}, Landroidj/support/v4/media/MediaBrowserCompatApi23$ItemCallback;->onItemLoaded(Landroid/os/Parcel;)V

    goto :goto_8
.end method
