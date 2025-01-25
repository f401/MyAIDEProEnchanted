.class Landroidj/support/v4/media/MediaBrowserServiceCompat$1;
.super Landroidj/support/v4/media/MediaBrowserServiceCompat$Result;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidj/support/v4/media/MediaBrowserServiceCompat;->performLoadChildren(Ljava/lang/String;Landroidj/support/v4/media/MediaBrowserServiceCompat$ConnectionRecord;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidj/support/v4/media/MediaBrowserServiceCompat$Result",
        "<",
        "Ljava/util/List",
        "<",
        "Landroidj/support/v4/media/MediaBrowserCompat$MediaItem;",
        ">;>;"
    }
.end annotation


# instance fields
.field final this$0:Landroidj/support/v4/media/MediaBrowserServiceCompat;

.field final val$connection:Landroidj/support/v4/media/MediaBrowserServiceCompat$ConnectionRecord;

.field final val$options:Landroid/os/Bundle;

.field final val$parentId:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroidj/support/v4/media/MediaBrowserServiceCompat;Ljava/lang/Object;Landroidj/support/v4/media/MediaBrowserServiceCompat$ConnectionRecord;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 6

    iput-object p1, p0, Landroidj/support/v4/media/MediaBrowserServiceCompat$1;->this$0:Landroidj/support/v4/media/MediaBrowserServiceCompat;

    iput-object p3, p0, Landroidj/support/v4/media/MediaBrowserServiceCompat$1;->val$connection:Landroidj/support/v4/media/MediaBrowserServiceCompat$ConnectionRecord;

    iput-object p4, p0, Landroidj/support/v4/media/MediaBrowserServiceCompat$1;->val$parentId:Ljava/lang/String;

    iput-object p5, p0, Landroidj/support/v4/media/MediaBrowserServiceCompat$1;->val$options:Landroid/os/Bundle;

    invoke-direct {p0, p2}, Landroidj/support/v4/media/MediaBrowserServiceCompat$Result;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method bridge synthetic onResultSent(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Landroidj/support/v4/media/MediaBrowserServiceCompat$1;->onResultSent(Ljava/util/List;)V

    return-void
.end method

.method onResultSent(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroidj/support/v4/media/MediaBrowserCompat$MediaItem;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Landroidj/support/v4/media/MediaBrowserServiceCompat$1;->this$0:Landroidj/support/v4/media/MediaBrowserServiceCompat;

    iget-object v0, v0, Landroidj/support/v4/media/MediaBrowserServiceCompat;->mConnections:Landroidj/support/v4/util/ArrayMap;

    iget-object v1, p0, Landroidj/support/v4/media/MediaBrowserServiceCompat$1;->val$connection:Landroidj/support/v4/media/MediaBrowserServiceCompat$ConnectionRecord;

    iget-object v1, v1, Landroidj/support/v4/media/MediaBrowserServiceCompat$ConnectionRecord;->callbacks:Landroidj/support/v4/media/MediaBrowserServiceCompat$ServiceCallbacks;

    invoke-interface {v1}, Landroidj/support/v4/media/MediaBrowserServiceCompat$ServiceCallbacks;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidj/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Landroidj/support/v4/media/MediaBrowserServiceCompat$1;->val$connection:Landroidj/support/v4/media/MediaBrowserServiceCompat$ConnectionRecord;

    if-eq v0, v1, :cond_41

    sget-boolean v0, Landroidj/support/v4/media/MediaBrowserServiceCompat;->DEBUG:Z

    if-eqz v0, :cond_40

    const-string v0, "MBServiceCompat"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not sending onLoadChildren result for connection that has been disconnected. pkg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroidj/support/v4/media/MediaBrowserServiceCompat$1;->val$connection:Landroidj/support/v4/media/MediaBrowserServiceCompat$ConnectionRecord;

    iget-object v2, v2, Landroidj/support/v4/media/MediaBrowserServiceCompat$ConnectionRecord;->pkg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroidj/support/v4/media/MediaBrowserServiceCompat$1;->val$parentId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_40
    :goto_40
    return-void

    :cond_41
    invoke-virtual {p0}, Landroidj/support/v4/media/MediaBrowserServiceCompat$1;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_51

    iget-object v0, p0, Landroidj/support/v4/media/MediaBrowserServiceCompat$1;->this$0:Landroidj/support/v4/media/MediaBrowserServiceCompat;

    iget-object v1, p0, Landroidj/support/v4/media/MediaBrowserServiceCompat$1;->val$options:Landroid/os/Bundle;

    invoke-virtual {v0, p1, v1}, Landroidj/support/v4/media/MediaBrowserServiceCompat;->applyOptions(Ljava/util/List;Landroid/os/Bundle;)Ljava/util/List;

    move-result-object p1

    :cond_51
    :try_start_51
    iget-object v0, p0, Landroidj/support/v4/media/MediaBrowserServiceCompat$1;->val$connection:Landroidj/support/v4/media/MediaBrowserServiceCompat$ConnectionRecord;

    iget-object v0, v0, Landroidj/support/v4/media/MediaBrowserServiceCompat$ConnectionRecord;->callbacks:Landroidj/support/v4/media/MediaBrowserServiceCompat$ServiceCallbacks;

    iget-object v1, p0, Landroidj/support/v4/media/MediaBrowserServiceCompat$1;->val$parentId:Ljava/lang/String;

    iget-object v2, p0, Landroidj/support/v4/media/MediaBrowserServiceCompat$1;->val$options:Landroid/os/Bundle;

    invoke-interface {v0, v1, p1, v2}, Landroidj/support/v4/media/MediaBrowserServiceCompat$ServiceCallbacks;->onLoadChildren(Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;)V
    :try_end_5c
    .catch Landroid/os/RemoteException; {:try_start_51 .. :try_end_5c} :catch_5d

    goto :goto_40

    :catch_5d
    move-exception v0

    const-string v0, "MBServiceCompat"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Calling onLoadChildren() failed for id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroidj/support/v4/media/MediaBrowserServiceCompat$1;->val$parentId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " package="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroidj/support/v4/media/MediaBrowserServiceCompat$1;->val$connection:Landroidj/support/v4/media/MediaBrowserServiceCompat$ConnectionRecord;

    iget-object v2, v2, Landroidj/support/v4/media/MediaBrowserServiceCompat$ConnectionRecord;->pkg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_40
.end method
