.class Landroidj/support/v4/media/MediaBrowserServiceCompat$ServiceBinderImpl$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidj/support/v4/media/MediaBrowserServiceCompat$ServiceBinderImpl;->addSubscription(Ljava/lang/String;Landroid/os/IBinder;Landroid/os/Bundle;Landroidj/support/v4/media/MediaBrowserServiceCompat$ServiceCallbacks;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$1:Landroidj/support/v4/media/MediaBrowserServiceCompat$ServiceBinderImpl;

.field final val$callbacks:Landroidj/support/v4/media/MediaBrowserServiceCompat$ServiceCallbacks;

.field final val$id:Ljava/lang/String;

.field final val$options:Landroid/os/Bundle;

.field final val$token:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroidj/support/v4/media/MediaBrowserServiceCompat$ServiceBinderImpl;Landroidj/support/v4/media/MediaBrowserServiceCompat$ServiceCallbacks;Ljava/lang/String;Landroid/os/IBinder;Landroid/os/Bundle;)V
    .registers 6

    iput-object p1, p0, Landroidj/support/v4/media/MediaBrowserServiceCompat$ServiceBinderImpl$3;->this$1:Landroidj/support/v4/media/MediaBrowserServiceCompat$ServiceBinderImpl;

    iput-object p2, p0, Landroidj/support/v4/media/MediaBrowserServiceCompat$ServiceBinderImpl$3;->val$callbacks:Landroidj/support/v4/media/MediaBrowserServiceCompat$ServiceCallbacks;

    iput-object p3, p0, Landroidj/support/v4/media/MediaBrowserServiceCompat$ServiceBinderImpl$3;->val$id:Ljava/lang/String;

    iput-object p4, p0, Landroidj/support/v4/media/MediaBrowserServiceCompat$ServiceBinderImpl$3;->val$token:Landroid/os/IBinder;

    iput-object p5, p0, Landroidj/support/v4/media/MediaBrowserServiceCompat$ServiceBinderImpl$3;->val$options:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    iget-object v0, p0, Landroidj/support/v4/media/MediaBrowserServiceCompat$ServiceBinderImpl$3;->val$callbacks:Landroidj/support/v4/media/MediaBrowserServiceCompat$ServiceCallbacks;

    invoke-interface {v0}, Landroidj/support/v4/media/MediaBrowserServiceCompat$ServiceCallbacks;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v1, p0, Landroidj/support/v4/media/MediaBrowserServiceCompat$ServiceBinderImpl$3;->this$1:Landroidj/support/v4/media/MediaBrowserServiceCompat$ServiceBinderImpl;

    iget-object v1, v1, Landroidj/support/v4/media/MediaBrowserServiceCompat$ServiceBinderImpl;->this$0:Landroidj/support/v4/media/MediaBrowserServiceCompat;

    iget-object v1, v1, Landroidj/support/v4/media/MediaBrowserServiceCompat;->mConnections:Landroidj/support/v4/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroidj/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidj/support/v4/media/MediaBrowserServiceCompat$ConnectionRecord;

    if-nez v0, :cond_2f

    const-string v0, "MBServiceCompat"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addSubscription for callback that isn\'t registered id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroidj/support/v4/media/MediaBrowserServiceCompat$ServiceBinderImpl$3;->val$id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2e
    return-void

    :cond_2f
    iget-object v1, p0, Landroidj/support/v4/media/MediaBrowserServiceCompat$ServiceBinderImpl$3;->this$1:Landroidj/support/v4/media/MediaBrowserServiceCompat$ServiceBinderImpl;

    iget-object v1, v1, Landroidj/support/v4/media/MediaBrowserServiceCompat$ServiceBinderImpl;->this$0:Landroidj/support/v4/media/MediaBrowserServiceCompat;

    iget-object v2, p0, Landroidj/support/v4/media/MediaBrowserServiceCompat$ServiceBinderImpl$3;->val$id:Ljava/lang/String;

    iget-object v3, p0, Landroidj/support/v4/media/MediaBrowserServiceCompat$ServiceBinderImpl$3;->val$token:Landroid/os/IBinder;

    iget-object v4, p0, Landroidj/support/v4/media/MediaBrowserServiceCompat$ServiceBinderImpl$3;->val$options:Landroid/os/Bundle;

    invoke-virtual {v1, v2, v0, v3, v4}, Landroidj/support/v4/media/MediaBrowserServiceCompat;->addSubscription(Ljava/lang/String;Landroidj/support/v4/media/MediaBrowserServiceCompat$ConnectionRecord;Landroid/os/IBinder;Landroid/os/Bundle;)V

    goto :goto_2e
.end method
