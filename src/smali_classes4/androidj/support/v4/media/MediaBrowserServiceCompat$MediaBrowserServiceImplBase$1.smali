.class Landroidj/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplBase$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidj/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplBase;->setSessionToken(Landroidj/support/v4/media/session/MediaSessionCompat$Token;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$1:Landroidj/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplBase;

.field final val$token:Landroidj/support/v4/media/session/MediaSessionCompat$Token;


# direct methods
.method constructor <init>(Landroidj/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplBase;Landroidj/support/v4/media/session/MediaSessionCompat$Token;)V
    .registers 3

    iput-object p1, p0, Landroidj/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplBase$1;->this$1:Landroidj/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplBase;

    iput-object p2, p0, Landroidj/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplBase$1;->val$token:Landroidj/support/v4/media/session/MediaSessionCompat$Token;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    iget-object v0, p0, Landroidj/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplBase$1;->this$1:Landroidj/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplBase;

    iget-object v0, v0, Landroidj/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplBase;->this$0:Landroidj/support/v4/media/MediaBrowserServiceCompat;

    iget-object v0, v0, Landroidj/support/v4/media/MediaBrowserServiceCompat;->mConnections:Landroidj/support/v4/util/ArrayMap;

    invoke-virtual {v0}, Landroidj/support/v4/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_53

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidj/support/v4/media/MediaBrowserServiceCompat$ConnectionRecord;

    :try_start_1a
    iget-object v2, v0, Landroidj/support/v4/media/MediaBrowserServiceCompat$ConnectionRecord;->callbacks:Landroidj/support/v4/media/MediaBrowserServiceCompat$ServiceCallbacks;

    iget-object v3, v0, Landroidj/support/v4/media/MediaBrowserServiceCompat$ConnectionRecord;->root:Landroidj/support/v4/media/MediaBrowserServiceCompat$BrowserRoot;

    invoke-virtual {v3}, Landroidj/support/v4/media/MediaBrowserServiceCompat$BrowserRoot;->getRootId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Landroidj/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplBase$1;->val$token:Landroidj/support/v4/media/session/MediaSessionCompat$Token;

    iget-object v5, v0, Landroidj/support/v4/media/MediaBrowserServiceCompat$ConnectionRecord;->root:Landroidj/support/v4/media/MediaBrowserServiceCompat$BrowserRoot;

    invoke-virtual {v5}, Landroidj/support/v4/media/MediaBrowserServiceCompat$BrowserRoot;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    invoke-interface {v2, v3, v4, v5}, Landroidj/support/v4/media/MediaBrowserServiceCompat$ServiceCallbacks;->onConnect(Ljava/lang/String;Landroidj/support/v4/media/session/MediaSessionCompat$Token;Landroid/os/Bundle;)V
    :try_end_2d
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_2d} :catch_2e

    goto :goto_e

    :catch_2e
    move-exception v2

    const-string v2, "MBServiceCompat"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Connection for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, v0, Landroidj/support/v4/media/MediaBrowserServiceCompat$ConnectionRecord;->pkg:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " is no longer valid."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_e

    :cond_53
    return-void
.end method
