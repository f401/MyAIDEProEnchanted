.class Landroidj/support/v4/media/MediaBrowserCompat$ItemReceiver;
.super Landroidj/support/v4/os/ResultReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidj/support/v4/media/MediaBrowserCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ItemReceiver"
.end annotation


# instance fields
.field private final mCallback:Landroidj/support/v4/media/MediaBrowserCompat$ItemCallback;

.field private final mMediaId:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroidj/support/v4/media/MediaBrowserCompat$ItemCallback;Landroid/os/Handler;)V
    .registers 4

    invoke-direct {p0, p3}, Landroidj/support/v4/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    iput-object p1, p0, Landroidj/support/v4/media/MediaBrowserCompat$ItemReceiver;->mMediaId:Ljava/lang/String;

    iput-object p2, p0, Landroidj/support/v4/media/MediaBrowserCompat$ItemReceiver;->mCallback:Landroidj/support/v4/media/MediaBrowserCompat$ItemCallback;

    return-void
.end method


# virtual methods
.method protected onReceiveResult(ILandroid/os/Bundle;)V
    .registers 5

    if-eqz p2, :cond_b

    const-class v0, Landroidj/support/v4/media/MediaBrowserCompat;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    :cond_b
    if-nez p1, :cond_17

    if-eqz p2, :cond_17

    const-string v0, "media_item"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1f

    :cond_17
    iget-object v0, p0, Landroidj/support/v4/media/MediaBrowserCompat$ItemReceiver;->mCallback:Landroidj/support/v4/media/MediaBrowserCompat$ItemCallback;

    iget-object v1, p0, Landroidj/support/v4/media/MediaBrowserCompat$ItemReceiver;->mMediaId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroidj/support/v4/media/MediaBrowserCompat$ItemCallback;->onError(Ljava/lang/String;)V

    :goto_1e
    return-void

    :cond_1f
    const-string v0, "media_item"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    if-eqz v0, :cond_2b

    instance-of v1, v0, Landroidj/support/v4/media/MediaBrowserCompat$MediaItem;

    if-eqz v1, :cond_33

    :cond_2b
    iget-object v1, p0, Landroidj/support/v4/media/MediaBrowserCompat$ItemReceiver;->mCallback:Landroidj/support/v4/media/MediaBrowserCompat$ItemCallback;

    check-cast v0, Landroidj/support/v4/media/MediaBrowserCompat$MediaItem;

    invoke-virtual {v1, v0}, Landroidj/support/v4/media/MediaBrowserCompat$ItemCallback;->onItemLoaded(Landroidj/support/v4/media/MediaBrowserCompat$MediaItem;)V

    goto :goto_1e

    :cond_33
    iget-object v0, p0, Landroidj/support/v4/media/MediaBrowserCompat$ItemReceiver;->mCallback:Landroidj/support/v4/media/MediaBrowserCompat$ItemCallback;

    iget-object v1, p0, Landroidj/support/v4/media/MediaBrowserCompat$ItemReceiver;->mMediaId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroidj/support/v4/media/MediaBrowserCompat$ItemCallback;->onError(Ljava/lang/String;)V

    goto :goto_1e
.end method
