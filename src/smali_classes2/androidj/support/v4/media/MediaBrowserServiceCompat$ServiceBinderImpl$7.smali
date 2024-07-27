.class Landroidj/support/v4/media/MediaBrowserServiceCompat$ServiceBinderImpl$7;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidj/support/v4/media/MediaBrowserServiceCompat$ServiceBinderImpl;->unregisterCallbacks(Landroidj/support/v4/media/MediaBrowserServiceCompat$ServiceCallbacks;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$1:Landroidj/support/v4/media/MediaBrowserServiceCompat$ServiceBinderImpl;

.field final val$callbacks:Landroidj/support/v4/media/MediaBrowserServiceCompat$ServiceCallbacks;


# direct methods
.method constructor <init>(Landroidj/support/v4/media/MediaBrowserServiceCompat$ServiceBinderImpl;Landroidj/support/v4/media/MediaBrowserServiceCompat$ServiceCallbacks;)V
    .registers 3

    iput-object p1, p0, Landroidj/support/v4/media/MediaBrowserServiceCompat$ServiceBinderImpl$7;->this$1:Landroidj/support/v4/media/MediaBrowserServiceCompat$ServiceBinderImpl;

    iput-object p2, p0, Landroidj/support/v4/media/MediaBrowserServiceCompat$ServiceBinderImpl$7;->val$callbacks:Landroidj/support/v4/media/MediaBrowserServiceCompat$ServiceCallbacks;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Landroidj/support/v4/media/MediaBrowserServiceCompat$ServiceBinderImpl$7;->val$callbacks:Landroidj/support/v4/media/MediaBrowserServiceCompat$ServiceCallbacks;

    invoke-interface {v0}, Landroidj/support/v4/media/MediaBrowserServiceCompat$ServiceCallbacks;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v1, p0, Landroidj/support/v4/media/MediaBrowserServiceCompat$ServiceBinderImpl$7;->this$1:Landroidj/support/v4/media/MediaBrowserServiceCompat$ServiceBinderImpl;

    iget-object v1, v1, Landroidj/support/v4/media/MediaBrowserServiceCompat$ServiceBinderImpl;->this$0:Landroidj/support/v4/media/MediaBrowserServiceCompat;

    iget-object v1, v1, Landroidj/support/v4/media/MediaBrowserServiceCompat;->mConnections:Landroidj/support/v4/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroidj/support/v4/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
