.class Landroid/support/v4/media/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/media/MediaBrowserCompat$i;->disconnect()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final j6:Landroid/support/v4/media/MediaBrowserCompat$i;


# direct methods
.method constructor <init>(Landroid/support/v4/media/MediaBrowserCompat$i;)V
    .registers 2

    iput-object p1, p0, Landroid/support/v4/media/b;->j6:Landroid/support/v4/media/MediaBrowserCompat$i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Landroid/support/v4/media/b;->j6:Landroid/support/v4/media/MediaBrowserCompat$i;

    iget-object v1, v0, Landroid/support/v4/media/MediaBrowserCompat$i;->tp:Landroid/os/Messenger;

    const-string v2, "MediaBrowserCompat"

    if-eqz v1, :cond_27

    :try_start_8
    iget-object v0, v0, Landroid/support/v4/media/MediaBrowserCompat$i;->u7:Landroid/support/v4/media/MediaBrowserCompat$l;

    invoke-virtual {v0, v1}, Landroid/support/v4/media/MediaBrowserCompat$l;->j6(Landroid/os/Messenger;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_d} :catch_e

    goto :goto_27

    :catch_e
    move-exception v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RemoteException during connect for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/support/v4/media/b;->j6:Landroid/support/v4/media/MediaBrowserCompat$i;

    iget-object v1, v1, Landroid/support/v4/media/MediaBrowserCompat$i;->DW:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_27
    :goto_27
    iget-object v0, p0, Landroid/support/v4/media/b;->j6:Landroid/support/v4/media/MediaBrowserCompat$i;

    iget v1, v0, Landroid/support/v4/media/MediaBrowserCompat$i;->VH:I

    invoke-virtual {v0}, Landroid/support/v4/media/MediaBrowserCompat$i;->DW()V

    if-eqz v1, :cond_34

    iget-object v0, p0, Landroid/support/v4/media/b;->j6:Landroid/support/v4/media/MediaBrowserCompat$i;

    iput v1, v0, Landroid/support/v4/media/MediaBrowserCompat$i;->VH:I

    :cond_34
    sget-boolean v0, Landroid/support/v4/media/MediaBrowserCompat;->j6:Z

    if-eqz v0, :cond_42

    const-string v0, "disconnect..."

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/support/v4/media/b;->j6:Landroid/support/v4/media/MediaBrowserCompat$i;

    invoke-virtual {v0}, Landroid/support/v4/media/MediaBrowserCompat$i;->j6()V

    :cond_42
    return-void
.end method
