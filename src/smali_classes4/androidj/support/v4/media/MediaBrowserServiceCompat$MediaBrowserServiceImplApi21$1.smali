.class Landroidj/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi21$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidj/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi21;->notifyChildrenChanged(Ljava/lang/String;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$1:Landroidj/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi21;

.field final val$options:Landroid/os/Bundle;

.field final val$parentId:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroidj/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi21;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 4

    iput-object p1, p0, Landroidj/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi21$1;->this$1:Landroidj/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi21;

    iput-object p2, p0, Landroidj/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi21$1;->val$parentId:Ljava/lang/String;

    iput-object p3, p0, Landroidj/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi21$1;->val$options:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    iget-object v0, p0, Landroidj/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi21$1;->this$1:Landroidj/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi21;

    iget-object v0, v0, Landroidj/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi21;->this$0:Landroidj/support/v4/media/MediaBrowserServiceCompat;

    iget-object v0, v0, Landroidj/support/v4/media/MediaBrowserServiceCompat;->mConnections:Landroidj/support/v4/util/ArrayMap;

    invoke-virtual {v0}, Landroidj/support/v4/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    iget-object v1, p0, Landroidj/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi21$1;->this$1:Landroidj/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi21;

    iget-object v1, v1, Landroidj/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi21;->this$0:Landroidj/support/v4/media/MediaBrowserServiceCompat;

    iget-object v1, v1, Landroidj/support/v4/media/MediaBrowserServiceCompat;->mConnections:Landroidj/support/v4/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroidj/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidj/support/v4/media/MediaBrowserServiceCompat$ConnectionRecord;

    iget-object v1, v0, Landroidj/support/v4/media/MediaBrowserServiceCompat$ConnectionRecord;->subscriptions:Ljava/util/HashMap;

    iget-object v2, p0, Landroidj/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi21$1;->val$parentId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_e

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_36
    :goto_36
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidj/support/v4/util/Pair;

    iget-object v5, p0, Landroidj/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi21$1;->val$options:Landroid/os/Bundle;

    iget-object v2, v1, Landroidj/support/v4/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Landroid/os/Bundle;

    invoke-static {v5, v2}, Landroidj/support/v4/media/MediaBrowserCompatUtils;->hasDuplicatedItems(Landroid/os/Bundle;Landroid/os/Bundle;)Z

    move-result v2

    if-eqz v2, :cond_36

    iget-object v2, p0, Landroidj/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi21$1;->this$1:Landroidj/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi21;

    iget-object v2, v2, Landroidj/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi21;->this$0:Landroidj/support/v4/media/MediaBrowserServiceCompat;

    iget-object v5, p0, Landroidj/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi21$1;->val$parentId:Ljava/lang/String;

    iget-object v1, v1, Landroidj/support/v4/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Landroid/os/Bundle;

    invoke-virtual {v2, v5, v0, v1}, Landroidj/support/v4/media/MediaBrowserServiceCompat;->performLoadChildren(Ljava/lang/String;Landroidj/support/v4/media/MediaBrowserServiceCompat$ConnectionRecord;Landroid/os/Bundle;)V

    goto :goto_36

    :cond_5c
    return-void
.end method
