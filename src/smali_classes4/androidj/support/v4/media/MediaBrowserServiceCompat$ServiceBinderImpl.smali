.class Landroidj/support/v4/media/MediaBrowserServiceCompat$ServiceBinderImpl;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidj/support/v4/media/MediaBrowserServiceCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ServiceBinderImpl"
.end annotation


# instance fields
.field final this$0:Landroidj/support/v4/media/MediaBrowserServiceCompat;


# direct methods
.method constructor <init>(Landroidj/support/v4/media/MediaBrowserServiceCompat;)V
    .registers 2

    iput-object p1, p0, Landroidj/support/v4/media/MediaBrowserServiceCompat$ServiceBinderImpl;->this$0:Landroidj/support/v4/media/MediaBrowserServiceCompat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addSubscription(Ljava/lang/String;Landroid/os/IBinder;Landroid/os/Bundle;Landroidj/support/v4/media/MediaBrowserServiceCompat$ServiceCallbacks;)V
    .registers 12

    iget-object v0, p0, Landroidj/support/v4/media/MediaBrowserServiceCompat$ServiceBinderImpl;->this$0:Landroidj/support/v4/media/MediaBrowserServiceCompat;

    iget-object v6, v0, Landroidj/support/v4/media/MediaBrowserServiceCompat;->mHandler:Landroidj/support/v4/media/MediaBrowserServiceCompat$ServiceHandler;

    new-instance v0, Landroidj/support/v4/media/MediaBrowserServiceCompat$ServiceBinderImpl$3;

    move-object v1, p0

    move-object v2, p4

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Landroidj/support/v4/media/MediaBrowserServiceCompat$ServiceBinderImpl$3;-><init>(Landroidj/support/v4/media/MediaBrowserServiceCompat$ServiceBinderImpl;Landroidj/support/v4/media/MediaBrowserServiceCompat$ServiceCallbacks;Ljava/lang/String;Landroid/os/IBinder;Landroid/os/Bundle;)V

    invoke-virtual {v6, v0}, Landroidj/support/v4/media/MediaBrowserServiceCompat$ServiceHandler;->postOrRun(Ljava/lang/Runnable;)V

    return-void
.end method

.method public connect(Ljava/lang/String;ILandroid/os/Bundle;Landroidj/support/v4/media/MediaBrowserServiceCompat$ServiceCallbacks;)V
    .registers 12

    iget-object v0, p0, Landroidj/support/v4/media/MediaBrowserServiceCompat$ServiceBinderImpl;->this$0:Landroidj/support/v4/media/MediaBrowserServiceCompat;

    invoke-virtual {v0, p1, p2}, Landroidj/support/v4/media/MediaBrowserServiceCompat;->isValidPackage(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_2b

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Package/uid mismatch: uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " package="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2b
    iget-object v0, p0, Landroidj/support/v4/media/MediaBrowserServiceCompat$ServiceBinderImpl;->this$0:Landroidj/support/v4/media/MediaBrowserServiceCompat;

    iget-object v6, v0, Landroidj/support/v4/media/MediaBrowserServiceCompat;->mHandler:Landroidj/support/v4/media/MediaBrowserServiceCompat$ServiceHandler;

    new-instance v0, Landroidj/support/v4/media/MediaBrowserServiceCompat$ServiceBinderImpl$1;

    move-object v1, p0

    move-object v2, p4

    move-object v3, p1

    move-object v4, p3

    move v5, p2

    invoke-direct/range {v0 .. v5}, Landroidj/support/v4/media/MediaBrowserServiceCompat$ServiceBinderImpl$1;-><init>(Landroidj/support/v4/media/MediaBrowserServiceCompat$ServiceBinderImpl;Landroidj/support/v4/media/MediaBrowserServiceCompat$ServiceCallbacks;Ljava/lang/String;Landroid/os/Bundle;I)V

    invoke-virtual {v6, v0}, Landroidj/support/v4/media/MediaBrowserServiceCompat$ServiceHandler;->postOrRun(Ljava/lang/Runnable;)V

    return-void
.end method

.method public disconnect(Landroidj/support/v4/media/MediaBrowserServiceCompat$ServiceCallbacks;)V
    .registers 4

    iget-object v0, p0, Landroidj/support/v4/media/MediaBrowserServiceCompat$ServiceBinderImpl;->this$0:Landroidj/support/v4/media/MediaBrowserServiceCompat;

    iget-object v0, v0, Landroidj/support/v4/media/MediaBrowserServiceCompat;->mHandler:Landroidj/support/v4/media/MediaBrowserServiceCompat$ServiceHandler;

    new-instance v1, Landroidj/support/v4/media/MediaBrowserServiceCompat$ServiceBinderImpl$2;

    invoke-direct {v1, p0, p1}, Landroidj/support/v4/media/MediaBrowserServiceCompat$ServiceBinderImpl$2;-><init>(Landroidj/support/v4/media/MediaBrowserServiceCompat$ServiceBinderImpl;Landroidj/support/v4/media/MediaBrowserServiceCompat$ServiceCallbacks;)V

    invoke-virtual {v0, v1}, Landroidj/support/v4/media/MediaBrowserServiceCompat$ServiceHandler;->postOrRun(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getMediaItem(Ljava/lang/String;Landroidj/support/v4/os/ResultReceiver;Landroidj/support/v4/media/MediaBrowserServiceCompat$ServiceCallbacks;)V
    .registers 6

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    if-nez p2, :cond_9

    :cond_8
    :goto_8
    return-void

    :cond_9
    iget-object v0, p0, Landroidj/support/v4/media/MediaBrowserServiceCompat$ServiceBinderImpl;->this$0:Landroidj/support/v4/media/MediaBrowserServiceCompat;

    iget-object v0, v0, Landroidj/support/v4/media/MediaBrowserServiceCompat;->mHandler:Landroidj/support/v4/media/MediaBrowserServiceCompat$ServiceHandler;

    new-instance v1, Landroidj/support/v4/media/MediaBrowserServiceCompat$ServiceBinderImpl$5;

    invoke-direct {v1, p0, p3, p1, p2}, Landroidj/support/v4/media/MediaBrowserServiceCompat$ServiceBinderImpl$5;-><init>(Landroidj/support/v4/media/MediaBrowserServiceCompat$ServiceBinderImpl;Landroidj/support/v4/media/MediaBrowserServiceCompat$ServiceCallbacks;Ljava/lang/String;Landroidj/support/v4/os/ResultReceiver;)V

    invoke-virtual {v0, v1}, Landroidj/support/v4/media/MediaBrowserServiceCompat$ServiceHandler;->postOrRun(Ljava/lang/Runnable;)V

    goto :goto_8
.end method

.method public registerCallbacks(Landroidj/support/v4/media/MediaBrowserServiceCompat$ServiceCallbacks;Landroid/os/Bundle;)V
    .registers 5

    iget-object v0, p0, Landroidj/support/v4/media/MediaBrowserServiceCompat$ServiceBinderImpl;->this$0:Landroidj/support/v4/media/MediaBrowserServiceCompat;

    iget-object v0, v0, Landroidj/support/v4/media/MediaBrowserServiceCompat;->mHandler:Landroidj/support/v4/media/MediaBrowserServiceCompat$ServiceHandler;

    new-instance v1, Landroidj/support/v4/media/MediaBrowserServiceCompat$ServiceBinderImpl$6;

    invoke-direct {v1, p0, p1, p2}, Landroidj/support/v4/media/MediaBrowserServiceCompat$ServiceBinderImpl$6;-><init>(Landroidj/support/v4/media/MediaBrowserServiceCompat$ServiceBinderImpl;Landroidj/support/v4/media/MediaBrowserServiceCompat$ServiceCallbacks;Landroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Landroidj/support/v4/media/MediaBrowserServiceCompat$ServiceHandler;->postOrRun(Ljava/lang/Runnable;)V

    return-void
.end method

.method public removeSubscription(Ljava/lang/String;Landroid/os/IBinder;Landroidj/support/v4/media/MediaBrowserServiceCompat$ServiceCallbacks;)V
    .registers 6

    iget-object v0, p0, Landroidj/support/v4/media/MediaBrowserServiceCompat$ServiceBinderImpl;->this$0:Landroidj/support/v4/media/MediaBrowserServiceCompat;

    iget-object v0, v0, Landroidj/support/v4/media/MediaBrowserServiceCompat;->mHandler:Landroidj/support/v4/media/MediaBrowserServiceCompat$ServiceHandler;

    new-instance v1, Landroidj/support/v4/media/MediaBrowserServiceCompat$ServiceBinderImpl$4;

    invoke-direct {v1, p0, p3, p1, p2}, Landroidj/support/v4/media/MediaBrowserServiceCompat$ServiceBinderImpl$4;-><init>(Landroidj/support/v4/media/MediaBrowserServiceCompat$ServiceBinderImpl;Landroidj/support/v4/media/MediaBrowserServiceCompat$ServiceCallbacks;Ljava/lang/String;Landroid/os/IBinder;)V

    invoke-virtual {v0, v1}, Landroidj/support/v4/media/MediaBrowserServiceCompat$ServiceHandler;->postOrRun(Ljava/lang/Runnable;)V

    return-void
.end method

.method public search(Ljava/lang/String;Landroid/os/Bundle;Landroidj/support/v4/os/ResultReceiver;Landroidj/support/v4/media/MediaBrowserServiceCompat$ServiceCallbacks;)V
    .registers 12

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    if-nez p3, :cond_9

    :cond_8
    :goto_8
    return-void

    :cond_9
    iget-object v0, p0, Landroidj/support/v4/media/MediaBrowserServiceCompat$ServiceBinderImpl;->this$0:Landroidj/support/v4/media/MediaBrowserServiceCompat;

    iget-object v6, v0, Landroidj/support/v4/media/MediaBrowserServiceCompat;->mHandler:Landroidj/support/v4/media/MediaBrowserServiceCompat$ServiceHandler;

    new-instance v0, Landroidj/support/v4/media/MediaBrowserServiceCompat$ServiceBinderImpl$8;

    move-object v1, p0

    move-object v2, p4

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Landroidj/support/v4/media/MediaBrowserServiceCompat$ServiceBinderImpl$8;-><init>(Landroidj/support/v4/media/MediaBrowserServiceCompat$ServiceBinderImpl;Landroidj/support/v4/media/MediaBrowserServiceCompat$ServiceCallbacks;Ljava/lang/String;Landroid/os/Bundle;Landroidj/support/v4/os/ResultReceiver;)V

    invoke-virtual {v6, v0}, Landroidj/support/v4/media/MediaBrowserServiceCompat$ServiceHandler;->postOrRun(Ljava/lang/Runnable;)V

    goto :goto_8
.end method

.method public sendCustomAction(Ljava/lang/String;Landroid/os/Bundle;Landroidj/support/v4/os/ResultReceiver;Landroidj/support/v4/media/MediaBrowserServiceCompat$ServiceCallbacks;)V
    .registers 12

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    if-nez p3, :cond_9

    :cond_8
    :goto_8
    return-void

    :cond_9
    iget-object v0, p0, Landroidj/support/v4/media/MediaBrowserServiceCompat$ServiceBinderImpl;->this$0:Landroidj/support/v4/media/MediaBrowserServiceCompat;

    iget-object v6, v0, Landroidj/support/v4/media/MediaBrowserServiceCompat;->mHandler:Landroidj/support/v4/media/MediaBrowserServiceCompat$ServiceHandler;

    new-instance v0, Landroidj/support/v4/media/MediaBrowserServiceCompat$ServiceBinderImpl$9;

    move-object v1, p0

    move-object v2, p4

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Landroidj/support/v4/media/MediaBrowserServiceCompat$ServiceBinderImpl$9;-><init>(Landroidj/support/v4/media/MediaBrowserServiceCompat$ServiceBinderImpl;Landroidj/support/v4/media/MediaBrowserServiceCompat$ServiceCallbacks;Ljava/lang/String;Landroid/os/Bundle;Landroidj/support/v4/os/ResultReceiver;)V

    invoke-virtual {v6, v0}, Landroidj/support/v4/media/MediaBrowserServiceCompat$ServiceHandler;->postOrRun(Ljava/lang/Runnable;)V

    goto :goto_8
.end method

.method public unregisterCallbacks(Landroidj/support/v4/media/MediaBrowserServiceCompat$ServiceCallbacks;)V
    .registers 4

    iget-object v0, p0, Landroidj/support/v4/media/MediaBrowserServiceCompat$ServiceBinderImpl;->this$0:Landroidj/support/v4/media/MediaBrowserServiceCompat;

    iget-object v0, v0, Landroidj/support/v4/media/MediaBrowserServiceCompat;->mHandler:Landroidj/support/v4/media/MediaBrowserServiceCompat$ServiceHandler;

    new-instance v1, Landroidj/support/v4/media/MediaBrowserServiceCompat$ServiceBinderImpl$7;

    invoke-direct {v1, p0, p1}, Landroidj/support/v4/media/MediaBrowserServiceCompat$ServiceBinderImpl$7;-><init>(Landroidj/support/v4/media/MediaBrowserServiceCompat$ServiceBinderImpl;Landroidj/support/v4/media/MediaBrowserServiceCompat$ServiceCallbacks;)V

    invoke-virtual {v0, v1}, Landroidj/support/v4/media/MediaBrowserServiceCompat$ServiceHandler;->postOrRun(Ljava/lang/Runnable;)V

    return-void
.end method
