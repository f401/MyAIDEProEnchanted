.class Landroid/support/v4/media/MediaBrowserServiceCompat$g;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/v4/media/MediaBrowserServiceCompat$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/MediaBrowserServiceCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "g"
.end annotation


# instance fields
.field final DW:Landroid/support/v4/media/MediaBrowserServiceCompat;

.field private j6:Landroid/os/Messenger;


# direct methods
.method constructor <init>(Landroid/support/v4/media/MediaBrowserServiceCompat;)V
    .registers 2

    iput-object p1, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$g;->DW:Landroid/support/v4/media/MediaBrowserServiceCompat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public j6(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3

    const-string v0, "android.media.browse.MediaBrowserService"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_13

    iget-object p1, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$g;->j6:Landroid/os/Messenger;

    invoke-virtual {p1}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object p1

    return-object p1

    :cond_13
    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()V
    .registers 3

    new-instance v0, Landroid/os/Messenger;

    iget-object v1, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$g;->DW:Landroid/support/v4/media/MediaBrowserServiceCompat;

    iget-object v1, v1, Landroid/support/v4/media/MediaBrowserServiceCompat;->v5:Landroid/support/v4/media/MediaBrowserServiceCompat$l;

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$g;->j6:Landroid/os/Messenger;

    return-void
.end method
