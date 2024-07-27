.class Landroidj/support/v4/media/MediaBrowserCompat$ItemCallback$StubApi23;
.super Ljava/lang/Object;

# interfaces
.implements Landroidj/support/v4/media/MediaBrowserCompatApi23$ItemCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidj/support/v4/media/MediaBrowserCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StubApi23"
.end annotation


# instance fields
.field final this$0:Landroidj/support/v4/media/MediaBrowserCompat$ItemCallback;


# direct methods
.method constructor <init>(Landroidj/support/v4/media/MediaBrowserCompat$ItemCallback;)V
    .registers 2

    iput-object p1, p0, Landroidj/support/v4/media/MediaBrowserCompat$ItemCallback$StubApi23;->this$0:Landroidj/support/v4/media/MediaBrowserCompat$ItemCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;)V
    .registers 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidj/support/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Landroidj/support/v4/media/MediaBrowserCompat$ItemCallback$StubApi23;->this$0:Landroidj/support/v4/media/MediaBrowserCompat$ItemCallback;

    invoke-virtual {v0, p1}, Landroidj/support/v4/media/MediaBrowserCompat$ItemCallback;->onError(Ljava/lang/String;)V

    return-void
.end method

.method public onItemLoaded(Landroid/os/Parcel;)V
    .registers 4

    if-nez p1, :cond_0

    iget-object v0, p0, Landroidj/support/v4/media/MediaBrowserCompat$ItemCallback$StubApi23;->this$0:Landroidj/support/v4/media/MediaBrowserCompat$ItemCallback;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidj/support/v4/media/MediaBrowserCompat$ItemCallback;->onItemLoaded(Landroidj/support/v4/media/MediaBrowserCompat$MediaItem;)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    sget-object v0, Landroidj/support/v4/media/MediaBrowserCompat$MediaItem;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidj/support/v4/media/MediaBrowserCompat$MediaItem;

    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    iget-object v1, p0, Landroidj/support/v4/media/MediaBrowserCompat$ItemCallback$StubApi23;->this$0:Landroidj/support/v4/media/MediaBrowserCompat$ItemCallback;

    invoke-virtual {v1, v0}, Landroidj/support/v4/media/MediaBrowserCompat$ItemCallback;->onItemLoaded(Landroidj/support/v4/media/MediaBrowserCompat$MediaItem;)V

    goto :goto_0
.end method
