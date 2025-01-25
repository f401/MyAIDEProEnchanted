.class Landroid/support/v4/media/MediaBrowserCompat$ItemReceiver;
.super Landroid/support/v4/os/ResultReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/MediaBrowserCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ItemReceiver"
.end annotation


# instance fields
.field private final Hw:Ljava/lang/String;

.field private final v5:Landroid/support/v4/media/MediaBrowserCompat$d;


# virtual methods
.method protected j6(ILandroid/os/Bundle;)V
    .registers 4

    if-eqz p2, :cond_b

    const-class v0, Landroid/support/v4/media/MediaBrowserCompat;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    :cond_b
    if-nez p1, :cond_33

    if-eqz p2, :cond_33

    const-string p1, "media_item"

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_18

    goto :goto_33

    :cond_18
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    if-eqz p1, :cond_2b

    instance-of p2, p1, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;

    if-eqz p2, :cond_23

    goto :goto_2b

    :cond_23
    iget-object p1, p0, Landroid/support/v4/media/MediaBrowserCompat$ItemReceiver;->v5:Landroid/support/v4/media/MediaBrowserCompat$d;

    iget-object p2, p0, Landroid/support/v4/media/MediaBrowserCompat$ItemReceiver;->Hw:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/support/v4/media/MediaBrowserCompat$d;->j6(Ljava/lang/String;)V

    goto :goto_32

    :cond_2b
    :goto_2b
    iget-object p2, p0, Landroid/support/v4/media/MediaBrowserCompat$ItemReceiver;->v5:Landroid/support/v4/media/MediaBrowserCompat$d;

    check-cast p1, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;

    invoke-virtual {p2, p1}, Landroid/support/v4/media/MediaBrowserCompat$d;->j6(Landroid/support/v4/media/MediaBrowserCompat$MediaItem;)V

    :goto_32
    return-void

    :cond_33
    :goto_33
    iget-object p1, p0, Landroid/support/v4/media/MediaBrowserCompat$ItemReceiver;->v5:Landroid/support/v4/media/MediaBrowserCompat$d;

    iget-object p2, p0, Landroid/support/v4/media/MediaBrowserCompat$ItemReceiver;->Hw:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/support/v4/media/MediaBrowserCompat$d;->j6(Ljava/lang/String;)V

    return-void
.end method
