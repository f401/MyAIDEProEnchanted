.class Landroid/support/v4/media/f$c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# direct methods
.method public static DW(Ljava/lang/Object;)I
    .registers 1

    check-cast p0, Landroid/media/browse/MediaBrowser$MediaItem;

    invoke-virtual {p0}, Landroid/media/browse/MediaBrowser$MediaItem;->getFlags()I

    move-result p0

    return p0
.end method

.method public static j6(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 1

    check-cast p0, Landroid/media/browse/MediaBrowser$MediaItem;

    invoke-virtual {p0}, Landroid/media/browse/MediaBrowser$MediaItem;->getDescription()Landroid/media/MediaDescription;

    move-result-object p0

    return-object p0
.end method
