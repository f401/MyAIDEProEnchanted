.class Landroid/support/v4/media/D;
.super Landroid/support/v4/media/C;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/media/D$a;
    }
.end annotation


# direct methods
.method public static gn(Ljava/lang/Object;)Landroid/net/Uri;
    .registers 2

    check-cast p0, Landroid/media/MediaDescription;

    invoke-virtual {p0}, Landroid/media/MediaDescription;->getMediaUri()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method
