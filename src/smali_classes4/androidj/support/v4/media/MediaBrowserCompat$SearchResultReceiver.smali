.class Landroidj/support/v4/media/MediaBrowserCompat$SearchResultReceiver;
.super Landroidj/support/v4/os/ResultReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidj/support/v4/media/MediaBrowserCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SearchResultReceiver"
.end annotation


# instance fields
.field private final mCallback:Landroidj/support/v4/media/MediaBrowserCompat$SearchCallback;

.field private final mExtras:Landroid/os/Bundle;

.field private final mQuery:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/os/Bundle;Landroidj/support/v4/media/MediaBrowserCompat$SearchCallback;Landroid/os/Handler;)V
    .registers 5

    invoke-direct {p0, p4}, Landroidj/support/v4/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    iput-object p1, p0, Landroidj/support/v4/media/MediaBrowserCompat$SearchResultReceiver;->mQuery:Ljava/lang/String;

    iput-object p2, p0, Landroidj/support/v4/media/MediaBrowserCompat$SearchResultReceiver;->mExtras:Landroid/os/Bundle;

    iput-object p3, p0, Landroidj/support/v4/media/MediaBrowserCompat$SearchResultReceiver;->mCallback:Landroidj/support/v4/media/MediaBrowserCompat$SearchCallback;

    return-void
.end method


# virtual methods
.method protected onReceiveResult(ILandroid/os/Bundle;)V
    .registers 8

    if-eqz p2, :cond_b

    const-class v0, Landroidj/support/v4/media/MediaBrowserCompat;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    :cond_b
    if-nez p1, :cond_17

    if-eqz p2, :cond_17

    const-string v0, "search_results"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_21

    :cond_17
    iget-object v0, p0, Landroidj/support/v4/media/MediaBrowserCompat$SearchResultReceiver;->mCallback:Landroidj/support/v4/media/MediaBrowserCompat$SearchCallback;

    iget-object v1, p0, Landroidj/support/v4/media/MediaBrowserCompat$SearchResultReceiver;->mQuery:Ljava/lang/String;

    iget-object v2, p0, Landroidj/support/v4/media/MediaBrowserCompat$SearchResultReceiver;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Landroidj/support/v4/media/MediaBrowserCompat$SearchCallback;->onError(Ljava/lang/String;Landroid/os/Bundle;)V

    :goto_20
    return-void

    :cond_21
    const-string v0, "search_results"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v3

    const/4 v0, 0x0

    if-eqz v3, :cond_40

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    array-length v4, v3

    const/4 v0, 0x0

    move v2, v0

    :goto_32
    if-ge v2, v4, :cond_3f

    aget-object v0, v3, v2

    check-cast v0, Landroidj/support/v4/media/MediaBrowserCompat$MediaItem;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_32

    :cond_3f
    move-object v0, v1

    :cond_40
    iget-object v1, p0, Landroidj/support/v4/media/MediaBrowserCompat$SearchResultReceiver;->mCallback:Landroidj/support/v4/media/MediaBrowserCompat$SearchCallback;

    iget-object v2, p0, Landroidj/support/v4/media/MediaBrowserCompat$SearchResultReceiver;->mQuery:Ljava/lang/String;

    iget-object v3, p0, Landroidj/support/v4/media/MediaBrowserCompat$SearchResultReceiver;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v1, v2, v3, v0}, Landroidj/support/v4/media/MediaBrowserCompat$SearchCallback;->onSearchResult(Ljava/lang/String;Landroid/os/Bundle;Ljava/util/List;)V

    goto :goto_20
.end method
