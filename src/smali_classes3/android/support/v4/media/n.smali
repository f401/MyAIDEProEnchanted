.class Landroid/support/v4/media/n;
.super Landroid/support/v4/media/MediaBrowserServiceCompat$h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/media/MediaBrowserServiceCompat$e;->j6(Ljava/lang/String;Landroid/support/v4/media/y$c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/media/MediaBrowserServiceCompat$h<",
        "Landroid/support/v4/media/MediaBrowserCompat$MediaItem;",
        ">;"
    }
.end annotation


# instance fields
.field final VH:Landroid/support/v4/media/MediaBrowserServiceCompat$e;

.field final Zo:Landroid/support/v4/media/y$c;


# direct methods
.method constructor <init>(Landroid/support/v4/media/MediaBrowserServiceCompat$e;Ljava/lang/Object;Landroid/support/v4/media/y$c;)V
    .registers 4

    iput-object p1, p0, Landroid/support/v4/media/n;->VH:Landroid/support/v4/media/MediaBrowserServiceCompat$e;

    iput-object p3, p0, Landroid/support/v4/media/n;->Zo:Landroid/support/v4/media/y$c;

    invoke-direct {p0, p2}, Landroid/support/v4/media/MediaBrowserServiceCompat$h;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method j6(Landroid/support/v4/media/MediaBrowserCompat$MediaItem;)V
    .registers 4

    if-nez p1, :cond_6

    iget-object p1, p0, Landroid/support/v4/media/n;->Zo:Landroid/support/v4/media/y$c;

    const/4 v0, 0x0

    goto :goto_10

    :cond_6
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object p1, p0, Landroid/support/v4/media/n;->Zo:Landroid/support/v4/media/y$c;

    :goto_10
    invoke-virtual {p1, v0}, Landroid/support/v4/media/y$c;->j6(Ljava/lang/Object;)V

    return-void
.end method

.method bridge synthetic j6(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;

    invoke-virtual {p0, p1}, Landroid/support/v4/media/n;->j6(Landroid/support/v4/media/MediaBrowserCompat$MediaItem;)V

    return-void
.end method
