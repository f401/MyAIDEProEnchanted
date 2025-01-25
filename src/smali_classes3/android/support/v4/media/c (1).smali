.class Landroid/support/v4/media/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/media/MediaBrowserCompat$i$a;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final DW:Landroid/os/IBinder;

.field final FH:Landroid/support/v4/media/MediaBrowserCompat$i$a;

.field final j6:Landroid/content/ComponentName;


# direct methods
.method constructor <init>(Landroid/support/v4/media/MediaBrowserCompat$i$a;Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 4

    iput-object p1, p0, Landroid/support/v4/media/c;->FH:Landroid/support/v4/media/MediaBrowserCompat$i$a;

    iput-object p2, p0, Landroid/support/v4/media/c;->j6:Landroid/content/ComponentName;

    iput-object p3, p0, Landroid/support/v4/media/c;->DW:Landroid/os/IBinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    const-string v0, "ServiceCallbacks.onConnect..."

    sget-boolean v1, Landroid/support/v4/media/MediaBrowserCompat;->j6:Z

    const-string v2, "MediaBrowserCompat"

    if-eqz v1, :cond_2f

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MediaServiceConnection.onServiceConnected name="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/support/v4/media/c;->j6:Landroid/content/ComponentName;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " binder="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/support/v4/media/c;->DW:Landroid/os/IBinder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Landroid/support/v4/media/c;->FH:Landroid/support/v4/media/MediaBrowserCompat$i$a;

    iget-object v1, v1, Landroid/support/v4/media/MediaBrowserCompat$i$a;->j6:Landroid/support/v4/media/MediaBrowserCompat$i;

    invoke-virtual {v1}, Landroid/support/v4/media/MediaBrowserCompat$i;->j6()V

    :cond_2f
    iget-object v1, p0, Landroid/support/v4/media/c;->FH:Landroid/support/v4/media/MediaBrowserCompat$i$a;

    const-string v3, "onServiceConnected"

    invoke-virtual {v1, v3}, Landroid/support/v4/media/MediaBrowserCompat$i$a;->j6(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3a

    return-void

    :cond_3a
    iget-object v1, p0, Landroid/support/v4/media/c;->FH:Landroid/support/v4/media/MediaBrowserCompat$i$a;

    iget-object v1, v1, Landroid/support/v4/media/MediaBrowserCompat$i$a;->j6:Landroid/support/v4/media/MediaBrowserCompat$i;

    new-instance v3, Landroid/support/v4/media/MediaBrowserCompat$l;

    iget-object v4, p0, Landroid/support/v4/media/c;->DW:Landroid/os/IBinder;

    iget-object v5, v1, Landroid/support/v4/media/MediaBrowserCompat$i;->Hw:Landroid/os/Bundle;

    invoke-direct {v3, v4, v5}, Landroid/support/v4/media/MediaBrowserCompat$l;-><init>(Landroid/os/IBinder;Landroid/os/Bundle;)V

    iput-object v3, v1, Landroid/support/v4/media/MediaBrowserCompat$i;->u7:Landroid/support/v4/media/MediaBrowserCompat$l;

    iget-object v1, p0, Landroid/support/v4/media/c;->FH:Landroid/support/v4/media/MediaBrowserCompat$i$a;

    iget-object v1, v1, Landroid/support/v4/media/MediaBrowserCompat$i$a;->j6:Landroid/support/v4/media/MediaBrowserCompat$i;

    new-instance v3, Landroid/os/Messenger;

    iget-object v4, v1, Landroid/support/v4/media/MediaBrowserCompat$i;->v5:Landroid/support/v4/media/MediaBrowserCompat$a;

    invoke-direct {v3, v4}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v3, v1, Landroid/support/v4/media/MediaBrowserCompat$i;->tp:Landroid/os/Messenger;

    iget-object v1, p0, Landroid/support/v4/media/c;->FH:Landroid/support/v4/media/MediaBrowserCompat$i$a;

    iget-object v1, v1, Landroid/support/v4/media/MediaBrowserCompat$i$a;->j6:Landroid/support/v4/media/MediaBrowserCompat$i;

    iget-object v3, v1, Landroid/support/v4/media/MediaBrowserCompat$i;->v5:Landroid/support/v4/media/MediaBrowserCompat$a;

    iget-object v1, v1, Landroid/support/v4/media/MediaBrowserCompat$i;->tp:Landroid/os/Messenger;

    invoke-virtual {v3, v1}, Landroid/support/v4/media/MediaBrowserCompat$a;->j6(Landroid/os/Messenger;)V

    iget-object v1, p0, Landroid/support/v4/media/c;->FH:Landroid/support/v4/media/MediaBrowserCompat$i$a;

    iget-object v1, v1, Landroid/support/v4/media/MediaBrowserCompat$i$a;->j6:Landroid/support/v4/media/MediaBrowserCompat$i;

    const/4 v3, 0x2

    iput v3, v1, Landroid/support/v4/media/MediaBrowserCompat$i;->VH:I

    :try_start_68
    sget-boolean v1, Landroid/support/v4/media/MediaBrowserCompat;->j6:Z

    if-eqz v1, :cond_76

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Landroid/support/v4/media/c;->FH:Landroid/support/v4/media/MediaBrowserCompat$i$a;

    iget-object v1, v1, Landroid/support/v4/media/MediaBrowserCompat$i$a;->j6:Landroid/support/v4/media/MediaBrowserCompat$i;

    invoke-virtual {v1}, Landroid/support/v4/media/MediaBrowserCompat$i;->j6()V

    :cond_76
    iget-object v1, p0, Landroid/support/v4/media/c;->FH:Landroid/support/v4/media/MediaBrowserCompat$i$a;

    iget-object v1, v1, Landroid/support/v4/media/MediaBrowserCompat$i$a;->j6:Landroid/support/v4/media/MediaBrowserCompat$i;

    iget-object v1, v1, Landroid/support/v4/media/MediaBrowserCompat$i;->u7:Landroid/support/v4/media/MediaBrowserCompat$l;

    iget-object v3, p0, Landroid/support/v4/media/c;->FH:Landroid/support/v4/media/MediaBrowserCompat$i$a;

    iget-object v3, v3, Landroid/support/v4/media/MediaBrowserCompat$i$a;->j6:Landroid/support/v4/media/MediaBrowserCompat$i;

    iget-object v3, v3, Landroid/support/v4/media/MediaBrowserCompat$i;->j6:Landroid/content/Context;

    iget-object v4, p0, Landroid/support/v4/media/c;->FH:Landroid/support/v4/media/MediaBrowserCompat$i$a;

    iget-object v4, v4, Landroid/support/v4/media/MediaBrowserCompat$i$a;->j6:Landroid/support/v4/media/MediaBrowserCompat$i;

    iget-object v4, v4, Landroid/support/v4/media/MediaBrowserCompat$i;->tp:Landroid/os/Messenger;

    invoke-virtual {v1, v3, v4}, Landroid/support/v4/media/MediaBrowserCompat$l;->j6(Landroid/content/Context;Landroid/os/Messenger;)V
    :try_end_8b
    .catch Landroid/os/RemoteException; {:try_start_68 .. :try_end_8b} :catch_8c

    goto :goto_b5

    :catch_8c
    move-exception v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RemoteException during connect for "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/support/v4/media/c;->FH:Landroid/support/v4/media/MediaBrowserCompat$i$a;

    iget-object v3, v3, Landroid/support/v4/media/MediaBrowserCompat$i$a;->j6:Landroid/support/v4/media/MediaBrowserCompat$i;

    iget-object v3, v3, Landroid/support/v4/media/MediaBrowserCompat$i;->DW:Landroid/content/ComponentName;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v1, Landroid/support/v4/media/MediaBrowserCompat;->j6:Z

    if-eqz v1, :cond_b5

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/support/v4/media/c;->FH:Landroid/support/v4/media/MediaBrowserCompat$i$a;

    iget-object v0, v0, Landroid/support/v4/media/MediaBrowserCompat$i$a;->j6:Landroid/support/v4/media/MediaBrowserCompat$i;

    invoke-virtual {v0}, Landroid/support/v4/media/MediaBrowserCompat$i;->j6()V

    :cond_b5
    :goto_b5
    return-void
.end method
