.class Landroidj/support/v4/media/MediaBrowserServiceCompat$ServiceBinderImpl$6;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidj/support/v4/media/MediaBrowserServiceCompat$ServiceBinderImpl;->registerCallbacks(Landroidj/support/v4/media/MediaBrowserServiceCompat$ServiceCallbacks;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$1:Landroidj/support/v4/media/MediaBrowserServiceCompat$ServiceBinderImpl;

.field final val$callbacks:Landroidj/support/v4/media/MediaBrowserServiceCompat$ServiceCallbacks;

.field final val$rootHints:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Landroidj/support/v4/media/MediaBrowserServiceCompat$ServiceBinderImpl;Landroidj/support/v4/media/MediaBrowserServiceCompat$ServiceCallbacks;Landroid/os/Bundle;)V
    .registers 4

    iput-object p1, p0, Landroidj/support/v4/media/MediaBrowserServiceCompat$ServiceBinderImpl$6;->this$1:Landroidj/support/v4/media/MediaBrowserServiceCompat$ServiceBinderImpl;

    iput-object p2, p0, Landroidj/support/v4/media/MediaBrowserServiceCompat$ServiceBinderImpl$6;->val$callbacks:Landroidj/support/v4/media/MediaBrowserServiceCompat$ServiceCallbacks;

    iput-object p3, p0, Landroidj/support/v4/media/MediaBrowserServiceCompat$ServiceBinderImpl$6;->val$rootHints:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Landroidj/support/v4/media/MediaBrowserServiceCompat$ServiceBinderImpl$6;->val$callbacks:Landroidj/support/v4/media/MediaBrowserServiceCompat$ServiceCallbacks;

    invoke-interface {v0}, Landroidj/support/v4/media/MediaBrowserServiceCompat$ServiceCallbacks;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v1, p0, Landroidj/support/v4/media/MediaBrowserServiceCompat$ServiceBinderImpl$6;->this$1:Landroidj/support/v4/media/MediaBrowserServiceCompat$ServiceBinderImpl;

    iget-object v1, v1, Landroidj/support/v4/media/MediaBrowserServiceCompat$ServiceBinderImpl;->this$0:Landroidj/support/v4/media/MediaBrowserServiceCompat;

    iget-object v1, v1, Landroidj/support/v4/media/MediaBrowserServiceCompat;->mConnections:Landroidj/support/v4/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroidj/support/v4/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Landroidj/support/v4/media/MediaBrowserServiceCompat$ConnectionRecord;

    iget-object v2, p0, Landroidj/support/v4/media/MediaBrowserServiceCompat$ServiceBinderImpl$6;->this$1:Landroidj/support/v4/media/MediaBrowserServiceCompat$ServiceBinderImpl;

    iget-object v2, v2, Landroidj/support/v4/media/MediaBrowserServiceCompat$ServiceBinderImpl;->this$0:Landroidj/support/v4/media/MediaBrowserServiceCompat;

    invoke-direct {v1, v2}, Landroidj/support/v4/media/MediaBrowserServiceCompat$ConnectionRecord;-><init>(Landroidj/support/v4/media/MediaBrowserServiceCompat;)V

    iget-object v2, p0, Landroidj/support/v4/media/MediaBrowserServiceCompat$ServiceBinderImpl$6;->val$callbacks:Landroidj/support/v4/media/MediaBrowserServiceCompat$ServiceCallbacks;

    iput-object v2, v1, Landroidj/support/v4/media/MediaBrowserServiceCompat$ConnectionRecord;->callbacks:Landroidj/support/v4/media/MediaBrowserServiceCompat$ServiceCallbacks;

    iget-object v2, p0, Landroidj/support/v4/media/MediaBrowserServiceCompat$ServiceBinderImpl$6;->val$rootHints:Landroid/os/Bundle;

    iput-object v2, v1, Landroidj/support/v4/media/MediaBrowserServiceCompat$ConnectionRecord;->rootHints:Landroid/os/Bundle;

    iget-object v2, p0, Landroidj/support/v4/media/MediaBrowserServiceCompat$ServiceBinderImpl$6;->this$1:Landroidj/support/v4/media/MediaBrowserServiceCompat$ServiceBinderImpl;

    iget-object v2, v2, Landroidj/support/v4/media/MediaBrowserServiceCompat$ServiceBinderImpl;->this$0:Landroidj/support/v4/media/MediaBrowserServiceCompat;

    iget-object v2, v2, Landroidj/support/v4/media/MediaBrowserServiceCompat;->mConnections:Landroidj/support/v4/util/ArrayMap;

    invoke-virtual {v2, v0, v1}, Landroidj/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
