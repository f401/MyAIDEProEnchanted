.class Landroid/support/v4/media/j;
.super Landroid/support/v4/media/MediaBrowserServiceCompat$h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/media/MediaBrowserServiceCompat;->j6(Ljava/lang/String;Landroid/support/v4/media/MediaBrowserServiceCompat$b;Landroid/support/v4/os/ResultReceiver;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/media/MediaBrowserServiceCompat$h",
        "<",
        "Landroid/support/v4/media/MediaBrowserCompat$MediaItem;",
        ">;"
    }
.end annotation


# instance fields
.field final VH:Landroid/support/v4/media/MediaBrowserServiceCompat;

.field final Zo:Landroid/support/v4/os/ResultReceiver;


# direct methods
.method constructor <init>(Landroid/support/v4/media/MediaBrowserServiceCompat;Ljava/lang/Object;Landroid/support/v4/os/ResultReceiver;)V
    .registers 4

    iput-object p1, p0, Landroid/support/v4/media/j;->VH:Landroid/support/v4/media/MediaBrowserServiceCompat;

    iput-object p3, p0, Landroid/support/v4/media/j;->Zo:Landroid/support/v4/os/ResultReceiver;

    invoke-direct {p0, p2}, Landroid/support/v4/media/MediaBrowserServiceCompat$h;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method j6(Landroid/support/v4/media/MediaBrowserCompat$MediaItem;)V
    .registers 5

    invoke-virtual {p0}, Landroid/support/v4/media/MediaBrowserServiceCompat$h;->j6()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/media/j;->Zo:Landroid/support/v4/os/ResultReceiver;

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/os/ResultReceiver;->DW(ILandroid/os/Bundle;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "media_item"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object v1, p0, Landroid/support/v4/media/j;->Zo:Landroid/support/v4/os/ResultReceiver;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/os/ResultReceiver;->DW(ILandroid/os/Bundle;)V

    goto :goto_0
.end method

.method bridge synthetic j6(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;

    invoke-virtual {p0, p1}, Landroid/support/v4/media/j;->j6(Landroid/support/v4/media/MediaBrowserCompat$MediaItem;)V

    return-void
.end method
