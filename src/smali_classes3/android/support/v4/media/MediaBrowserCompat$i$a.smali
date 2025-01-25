.class Landroid/support/v4/media/MediaBrowserCompat$i$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/MediaBrowserCompat$i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final j6:Landroid/support/v4/media/MediaBrowserCompat$i;


# direct methods
.method constructor <init>(Landroid/support/v4/media/MediaBrowserCompat$i;)V
    .registers 2

    iput-object p1, p0, Landroid/support/v4/media/MediaBrowserCompat$i$a;->j6:Landroid/support/v4/media/MediaBrowserCompat$i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private j6(Ljava/lang/Runnable;)V
    .registers 4

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/media/MediaBrowserCompat$i$a;->j6:Landroid/support/v4/media/MediaBrowserCompat$i;

    iget-object v1, v1, Landroid/support/v4/media/MediaBrowserCompat$i;->v5:Landroid/support/v4/media/MediaBrowserCompat$a;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_16

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_1d

    :cond_16
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$i$a;->j6:Landroid/support/v4/media/MediaBrowserCompat$i;

    iget-object v0, v0, Landroid/support/v4/media/MediaBrowserCompat$i;->v5:Landroid/support/v4/media/MediaBrowserCompat$a;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_1d
    return-void
.end method


# virtual methods
.method j6(Ljava/lang/String;)Z
    .registers 5

    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$i$a;->j6:Landroid/support/v4/media/MediaBrowserCompat$i;

    iget-object v1, v0, Landroid/support/v4/media/MediaBrowserCompat$i;->gn:Landroid/support/v4/media/MediaBrowserCompat$i$a;

    const/4 v2, 0x1

    if-ne v1, p0, :cond_f

    iget v0, v0, Landroid/support/v4/media/MediaBrowserCompat$i;->VH:I

    if-eqz v0, :cond_f

    if-ne v0, v2, :cond_e

    goto :goto_f

    :cond_e
    return v2

    :cond_f
    :goto_f
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$i$a;->j6:Landroid/support/v4/media/MediaBrowserCompat$i;

    iget v0, v0, Landroid/support/v4/media/MediaBrowserCompat$i;->VH:I

    if-eqz v0, :cond_48

    if-eq v0, v2, :cond_48

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " for "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Landroid/support/v4/media/MediaBrowserCompat$i$a;->j6:Landroid/support/v4/media/MediaBrowserCompat$i;

    iget-object p1, p1, Landroid/support/v4/media/MediaBrowserCompat$i;->DW:Landroid/content/ComponentName;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " with mServiceConnection="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Landroid/support/v4/media/MediaBrowserCompat$i$a;->j6:Landroid/support/v4/media/MediaBrowserCompat$i;

    iget-object p1, p1, Landroid/support/v4/media/MediaBrowserCompat$i;->gn:Landroid/support/v4/media/MediaBrowserCompat$i$a;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " this="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "MediaBrowserCompat"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_48
    const/4 p1, 0x0

    return p1
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 4

    new-instance v0, Landroid/support/v4/media/c;

    invoke-direct {v0, p0, p1, p2}, Landroid/support/v4/media/c;-><init>(Landroid/support/v4/media/MediaBrowserCompat$i$a;Landroid/content/ComponentName;Landroid/os/IBinder;)V

    invoke-direct {p0, v0}, Landroid/support/v4/media/MediaBrowserCompat$i$a;->j6(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 3

    new-instance v0, Landroid/support/v4/media/d;

    invoke-direct {v0, p0, p1}, Landroid/support/v4/media/d;-><init>(Landroid/support/v4/media/MediaBrowserCompat$i$a;Landroid/content/ComponentName;)V

    invoke-direct {p0, v0}, Landroid/support/v4/media/MediaBrowserCompat$i$a;->j6(Ljava/lang/Runnable;)V

    return-void
.end method
