.class Landroid/support/v4/media/s;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/media/MediaBrowserServiceCompat$i;->j6(Ljava/lang/String;Landroid/os/IBinder;Landroid/support/v4/media/MediaBrowserServiceCompat$j;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final DW:Ljava/lang/String;

.field final FH:Landroid/os/IBinder;

.field final Hw:Landroid/support/v4/media/MediaBrowserServiceCompat$i;

.field final j6:Landroid/support/v4/media/MediaBrowserServiceCompat$j;


# direct methods
.method constructor <init>(Landroid/support/v4/media/MediaBrowserServiceCompat$i;Landroid/support/v4/media/MediaBrowserServiceCompat$j;Ljava/lang/String;Landroid/os/IBinder;)V
    .registers 5

    iput-object p1, p0, Landroid/support/v4/media/s;->Hw:Landroid/support/v4/media/MediaBrowserServiceCompat$i;

    iput-object p2, p0, Landroid/support/v4/media/s;->j6:Landroid/support/v4/media/MediaBrowserServiceCompat$j;

    iput-object p3, p0, Landroid/support/v4/media/s;->DW:Ljava/lang/String;

    iput-object p4, p0, Landroid/support/v4/media/s;->FH:Landroid/os/IBinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    iget-object v0, p0, Landroid/support/v4/media/s;->j6:Landroid/support/v4/media/MediaBrowserServiceCompat$j;

    invoke-interface {v0}, Landroid/support/v4/media/MediaBrowserServiceCompat$j;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/media/s;->Hw:Landroid/support/v4/media/MediaBrowserServiceCompat$i;

    iget-object v1, v1, Landroid/support/v4/media/MediaBrowserServiceCompat$i;->j6:Landroid/support/v4/media/MediaBrowserServiceCompat;

    iget-object v1, v1, Landroid/support/v4/media/MediaBrowserServiceCompat;->FH:Labcd/k;

    invoke-virtual {v1, v0}, Labcd/x;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/MediaBrowserServiceCompat$b;

    const-string v1, "MBServiceCompat"

    if-nez v0, :cond_2d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeSubscription for callback that isn\'t registered id="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/support/v4/media/s;->DW:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2d
    iget-object v2, p0, Landroid/support/v4/media/s;->Hw:Landroid/support/v4/media/MediaBrowserServiceCompat$i;

    iget-object v2, v2, Landroid/support/v4/media/MediaBrowserServiceCompat$i;->j6:Landroid/support/v4/media/MediaBrowserServiceCompat;

    iget-object v3, p0, Landroid/support/v4/media/s;->DW:Ljava/lang/String;

    iget-object v4, p0, Landroid/support/v4/media/s;->FH:Landroid/os/IBinder;

    invoke-virtual {v2, v3, v0, v4}, Landroid/support/v4/media/MediaBrowserServiceCompat;->j6(Ljava/lang/String;Landroid/support/v4/media/MediaBrowserServiceCompat$b;Landroid/os/IBinder;)Z

    move-result v0

    if-nez v0, :cond_56

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeSubscription called for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/support/v4/media/s;->DW:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " which is not subscribed"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_56
    return-void
.end method
