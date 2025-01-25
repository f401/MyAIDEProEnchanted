.class Landroid/support/v4/media/a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/media/MediaBrowserCompat$i;->connect()V
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

    iput-object p1, p0, Landroid/support/v4/media/a;->j6:Landroid/support/v4/media/MediaBrowserCompat$i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    const-string v0, "MediaBrowserCompat"

    iget-object v1, p0, Landroid/support/v4/media/a;->j6:Landroid/support/v4/media/MediaBrowserCompat$i;

    iget v2, v1, Landroid/support/v4/media/MediaBrowserCompat$i;->VH:I

    if-nez v2, :cond_9

    return-void

    :cond_9
    const/4 v2, 0x2

    iput v2, v1, Landroid/support/v4/media/MediaBrowserCompat$i;->VH:I

    sget-boolean v2, Landroid/support/v4/media/MediaBrowserCompat;->j6:Z

    if-eqz v2, :cond_30

    iget-object v1, v1, Landroid/support/v4/media/MediaBrowserCompat$i;->gn:Landroid/support/v4/media/MediaBrowserCompat$i$a;

    if-nez v1, :cond_15

    goto :goto_30

    :cond_15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mServiceConnection should be null. Instead it is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/support/v4/media/a;->j6:Landroid/support/v4/media/MediaBrowserCompat$i;

    iget-object v1, v1, Landroid/support/v4/media/MediaBrowserCompat$i;->gn:Landroid/support/v4/media/MediaBrowserCompat$i$a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_30
    :goto_30
    iget-object v1, p0, Landroid/support/v4/media/a;->j6:Landroid/support/v4/media/MediaBrowserCompat$i;

    iget-object v2, v1, Landroid/support/v4/media/MediaBrowserCompat$i;->u7:Landroid/support/v4/media/MediaBrowserCompat$l;

    if-nez v2, :cond_b1

    iget-object v1, v1, Landroid/support/v4/media/MediaBrowserCompat$i;->tp:Landroid/os/Messenger;

    if-nez v1, :cond_96

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.media.browse.MediaBrowserService"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/support/v4/media/a;->j6:Landroid/support/v4/media/MediaBrowserCompat$i;

    iget-object v2, v2, Landroid/support/v4/media/MediaBrowserCompat$i;->DW:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v2, p0, Landroid/support/v4/media/a;->j6:Landroid/support/v4/media/MediaBrowserCompat$i;

    new-instance v3, Landroid/support/v4/media/MediaBrowserCompat$i$a;

    invoke-direct {v3, v2}, Landroid/support/v4/media/MediaBrowserCompat$i$a;-><init>(Landroid/support/v4/media/MediaBrowserCompat$i;)V

    iput-object v3, v2, Landroid/support/v4/media/MediaBrowserCompat$i;->gn:Landroid/support/v4/media/MediaBrowserCompat$i$a;

    :try_start_51
    iget-object v2, p0, Landroid/support/v4/media/a;->j6:Landroid/support/v4/media/MediaBrowserCompat$i;

    iget-object v2, v2, Landroid/support/v4/media/MediaBrowserCompat$i;->j6:Landroid/content/Context;

    iget-object v3, p0, Landroid/support/v4/media/a;->j6:Landroid/support/v4/media/MediaBrowserCompat$i;

    iget-object v3, v3, Landroid/support/v4/media/MediaBrowserCompat$i;->gn:Landroid/support/v4/media/MediaBrowserCompat$i$a;

    const/4 v4, 0x1

    invoke-virtual {v2, v1, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_51 .. :try_end_5e} :catch_5f

    goto :goto_79

    :catch_5f
    move-exception v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed binding to service "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/support/v4/media/a;->j6:Landroid/support/v4/media/MediaBrowserCompat$i;

    iget-object v2, v2, Landroid/support/v4/media/MediaBrowserCompat$i;->DW:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :goto_79
    if-nez v1, :cond_87

    iget-object v1, p0, Landroid/support/v4/media/a;->j6:Landroid/support/v4/media/MediaBrowserCompat$i;

    invoke-virtual {v1}, Landroid/support/v4/media/MediaBrowserCompat$i;->DW()V

    iget-object v1, p0, Landroid/support/v4/media/a;->j6:Landroid/support/v4/media/MediaBrowserCompat$i;

    iget-object v1, v1, Landroid/support/v4/media/MediaBrowserCompat$i;->FH:Landroid/support/v4/media/MediaBrowserCompat$b;

    invoke-virtual {v1}, Landroid/support/v4/media/MediaBrowserCompat$b;->DW()V

    :cond_87
    sget-boolean v1, Landroid/support/v4/media/MediaBrowserCompat;->j6:Z

    if-eqz v1, :cond_95

    const-string v1, "connect..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/support/v4/media/a;->j6:Landroid/support/v4/media/MediaBrowserCompat$i;

    invoke-virtual {v0}, Landroid/support/v4/media/MediaBrowserCompat$i;->j6()V

    :cond_95
    return-void

    :cond_96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mCallbacksMessenger should be null. Instead it is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/support/v4/media/a;->j6:Landroid/support/v4/media/MediaBrowserCompat$i;

    iget-object v1, v1, Landroid/support/v4/media/MediaBrowserCompat$i;->tp:Landroid/os/Messenger;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_b1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mServiceBinderWrapper should be null. Instead it is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/support/v4/media/a;->j6:Landroid/support/v4/media/MediaBrowserCompat$i;

    iget-object v1, v1, Landroid/support/v4/media/MediaBrowserCompat$i;->u7:Landroid/support/v4/media/MediaBrowserCompat$l;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
