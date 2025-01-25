.class Landroid/support/v4/media/r;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/media/MediaBrowserServiceCompat$i;->j6(Ljava/lang/String;Landroid/os/IBinder;Landroid/os/Bundle;Landroid/support/v4/media/MediaBrowserServiceCompat$j;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final DW:Ljava/lang/String;

.field final FH:Landroid/os/IBinder;

.field final Hw:Landroid/os/Bundle;

.field final j6:Landroid/support/v4/media/MediaBrowserServiceCompat$j;

.field final v5:Landroid/support/v4/media/MediaBrowserServiceCompat$i;


# direct methods
.method constructor <init>(Landroid/support/v4/media/MediaBrowserServiceCompat$i;Landroid/support/v4/media/MediaBrowserServiceCompat$j;Ljava/lang/String;Landroid/os/IBinder;Landroid/os/Bundle;)V
    .registers 6

    iput-object p1, p0, Landroid/support/v4/media/r;->v5:Landroid/support/v4/media/MediaBrowserServiceCompat$i;

    iput-object p2, p0, Landroid/support/v4/media/r;->j6:Landroid/support/v4/media/MediaBrowserServiceCompat$j;

    iput-object p3, p0, Landroid/support/v4/media/r;->DW:Ljava/lang/String;

    iput-object p4, p0, Landroid/support/v4/media/r;->FH:Landroid/os/IBinder;

    iput-object p5, p0, Landroid/support/v4/media/r;->Hw:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    iget-object v0, p0, Landroid/support/v4/media/r;->j6:Landroid/support/v4/media/MediaBrowserServiceCompat$j;

    invoke-interface {v0}, Landroid/support/v4/media/MediaBrowserServiceCompat$j;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/media/r;->v5:Landroid/support/v4/media/MediaBrowserServiceCompat$i;

    iget-object v1, v1, Landroid/support/v4/media/MediaBrowserServiceCompat$i;->j6:Landroid/support/v4/media/MediaBrowserServiceCompat;

    iget-object v1, v1, Landroid/support/v4/media/MediaBrowserServiceCompat;->FH:Labcd/k;

    invoke-virtual {v1, v0}, Labcd/x;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/MediaBrowserServiceCompat$b;

    if-nez v0, :cond_2d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addSubscription for callback that isn\'t registered id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/support/v4/media/r;->DW:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "MBServiceCompat"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2d
    iget-object v1, p0, Landroid/support/v4/media/r;->v5:Landroid/support/v4/media/MediaBrowserServiceCompat$i;

    iget-object v1, v1, Landroid/support/v4/media/MediaBrowserServiceCompat$i;->j6:Landroid/support/v4/media/MediaBrowserServiceCompat;

    iget-object v2, p0, Landroid/support/v4/media/r;->DW:Ljava/lang/String;

    iget-object v3, p0, Landroid/support/v4/media/r;->FH:Landroid/os/IBinder;

    iget-object v4, p0, Landroid/support/v4/media/r;->Hw:Landroid/os/Bundle;

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/support/v4/media/MediaBrowserServiceCompat;->j6(Ljava/lang/String;Landroid/support/v4/media/MediaBrowserServiceCompat$b;Landroid/os/IBinder;Landroid/os/Bundle;)V

    return-void
.end method
