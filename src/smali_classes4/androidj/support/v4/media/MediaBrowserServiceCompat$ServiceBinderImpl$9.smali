.class Landroidj/support/v4/media/MediaBrowserServiceCompat$ServiceBinderImpl$9;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidj/support/v4/media/MediaBrowserServiceCompat$ServiceBinderImpl;->sendCustomAction(Ljava/lang/String;Landroid/os/Bundle;Landroidj/support/v4/os/ResultReceiver;Landroidj/support/v4/media/MediaBrowserServiceCompat$ServiceCallbacks;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$1:Landroidj/support/v4/media/MediaBrowserServiceCompat$ServiceBinderImpl;

.field final val$action:Ljava/lang/String;

.field final val$callbacks:Landroidj/support/v4/media/MediaBrowserServiceCompat$ServiceCallbacks;

.field final val$extras:Landroid/os/Bundle;

.field final val$receiver:Landroidj/support/v4/os/ResultReceiver;


# direct methods
.method constructor <init>(Landroidj/support/v4/media/MediaBrowserServiceCompat$ServiceBinderImpl;Landroidj/support/v4/media/MediaBrowserServiceCompat$ServiceCallbacks;Ljava/lang/String;Landroid/os/Bundle;Landroidj/support/v4/os/ResultReceiver;)V
    .registers 6

    iput-object p1, p0, Landroidj/support/v4/media/MediaBrowserServiceCompat$ServiceBinderImpl$9;->this$1:Landroidj/support/v4/media/MediaBrowserServiceCompat$ServiceBinderImpl;

    iput-object p2, p0, Landroidj/support/v4/media/MediaBrowserServiceCompat$ServiceBinderImpl$9;->val$callbacks:Landroidj/support/v4/media/MediaBrowserServiceCompat$ServiceCallbacks;

    iput-object p3, p0, Landroidj/support/v4/media/MediaBrowserServiceCompat$ServiceBinderImpl$9;->val$action:Ljava/lang/String;

    iput-object p4, p0, Landroidj/support/v4/media/MediaBrowserServiceCompat$ServiceBinderImpl$9;->val$extras:Landroid/os/Bundle;

    iput-object p5, p0, Landroidj/support/v4/media/MediaBrowserServiceCompat$ServiceBinderImpl$9;->val$receiver:Landroidj/support/v4/os/ResultReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    iget-object v0, p0, Landroidj/support/v4/media/MediaBrowserServiceCompat$ServiceBinderImpl$9;->val$callbacks:Landroidj/support/v4/media/MediaBrowserServiceCompat$ServiceCallbacks;

    invoke-interface {v0}, Landroidj/support/v4/media/MediaBrowserServiceCompat$ServiceCallbacks;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v1, p0, Landroidj/support/v4/media/MediaBrowserServiceCompat$ServiceBinderImpl$9;->this$1:Landroidj/support/v4/media/MediaBrowserServiceCompat$ServiceBinderImpl;

    iget-object v1, v1, Landroidj/support/v4/media/MediaBrowserServiceCompat$ServiceBinderImpl;->this$0:Landroidj/support/v4/media/MediaBrowserServiceCompat;

    iget-object v1, v1, Landroidj/support/v4/media/MediaBrowserServiceCompat;->mConnections:Landroidj/support/v4/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroidj/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidj/support/v4/media/MediaBrowserServiceCompat$ConnectionRecord;

    if-nez v0, :cond_3b

    const-string v0, "MBServiceCompat"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendCustomAction for callback that isn\'t registered action="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroidj/support/v4/media/MediaBrowserServiceCompat$ServiceBinderImpl$9;->val$action:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", extras="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroidj/support/v4/media/MediaBrowserServiceCompat$ServiceBinderImpl$9;->val$extras:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3a
    return-void

    :cond_3b
    iget-object v1, p0, Landroidj/support/v4/media/MediaBrowserServiceCompat$ServiceBinderImpl$9;->this$1:Landroidj/support/v4/media/MediaBrowserServiceCompat$ServiceBinderImpl;

    iget-object v1, v1, Landroidj/support/v4/media/MediaBrowserServiceCompat$ServiceBinderImpl;->this$0:Landroidj/support/v4/media/MediaBrowserServiceCompat;

    iget-object v2, p0, Landroidj/support/v4/media/MediaBrowserServiceCompat$ServiceBinderImpl$9;->val$action:Ljava/lang/String;

    iget-object v3, p0, Landroidj/support/v4/media/MediaBrowserServiceCompat$ServiceBinderImpl$9;->val$extras:Landroid/os/Bundle;

    iget-object v4, p0, Landroidj/support/v4/media/MediaBrowserServiceCompat$ServiceBinderImpl$9;->val$receiver:Landroidj/support/v4/os/ResultReceiver;

    invoke-virtual {v1, v2, v3, v0, v4}, Landroidj/support/v4/media/MediaBrowserServiceCompat;->performCustomAction(Ljava/lang/String;Landroid/os/Bundle;Landroidj/support/v4/media/MediaBrowserServiceCompat$ConnectionRecord;Landroidj/support/v4/os/ResultReceiver;)V

    goto :goto_3a
.end method
