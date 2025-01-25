.class Landroid/support/v4/media/o;
.super Landroid/support/v4/media/MediaBrowserServiceCompat$h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/media/MediaBrowserServiceCompat$f;->j6(Ljava/lang/String;Landroid/support/v4/media/A$b;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/media/MediaBrowserServiceCompat$h<",
        "Ljava/util/List<",
        "Landroid/support/v4/media/MediaBrowserCompat$MediaItem;",
        ">;>;"
    }
.end annotation


# instance fields
.field final VH:Landroid/support/v4/media/MediaBrowserServiceCompat$f;

.field final Zo:Landroid/support/v4/media/A$b;


# direct methods
.method constructor <init>(Landroid/support/v4/media/MediaBrowserServiceCompat$f;Ljava/lang/Object;Landroid/support/v4/media/A$b;)V
    .registers 4

    iput-object p1, p0, Landroid/support/v4/media/o;->VH:Landroid/support/v4/media/MediaBrowserServiceCompat$f;

    iput-object p3, p0, Landroid/support/v4/media/o;->Zo:Landroid/support/v4/media/A$b;

    invoke-direct {p0, p2}, Landroid/support/v4/media/MediaBrowserServiceCompat$h;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method bridge synthetic j6(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Landroid/support/v4/media/o;->j6(Ljava/util/List;)V

    return-void
.end method

.method j6(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/support/v4/media/MediaBrowserCompat$MediaItem;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_23

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;->writeToParcel(Landroid/os/Parcel;I)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_23
    const/4 v0, 0x0

    :cond_24
    iget-object p1, p0, Landroid/support/v4/media/o;->Zo:Landroid/support/v4/media/A$b;

    invoke-virtual {p0}, Landroid/support/v4/media/MediaBrowserServiceCompat$h;->j6()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/media/A$b;->j6(Ljava/util/List;I)V

    return-void
.end method
