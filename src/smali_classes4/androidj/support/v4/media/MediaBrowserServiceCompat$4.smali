.class Landroidj/support/v4/media/MediaBrowserServiceCompat$4;
.super Landroidj/support/v4/media/MediaBrowserServiceCompat$Result;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidj/support/v4/media/MediaBrowserServiceCompat;->performCustomAction(Ljava/lang/String;Landroid/os/Bundle;Landroidj/support/v4/media/MediaBrowserServiceCompat$ConnectionRecord;Landroidj/support/v4/os/ResultReceiver;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidj/support/v4/media/MediaBrowserServiceCompat$Result",
        "<",
        "Landroid/os/Bundle;",
        ">;"
    }
.end annotation


# instance fields
.field final this$0:Landroidj/support/v4/media/MediaBrowserServiceCompat;

.field final val$receiver:Landroidj/support/v4/os/ResultReceiver;


# direct methods
.method constructor <init>(Landroidj/support/v4/media/MediaBrowserServiceCompat;Ljava/lang/Object;Landroidj/support/v4/os/ResultReceiver;)V
    .registers 4

    iput-object p1, p0, Landroidj/support/v4/media/MediaBrowserServiceCompat$4;->this$0:Landroidj/support/v4/media/MediaBrowserServiceCompat;

    iput-object p3, p0, Landroidj/support/v4/media/MediaBrowserServiceCompat$4;->val$receiver:Landroidj/support/v4/os/ResultReceiver;

    invoke-direct {p0, p2}, Landroidj/support/v4/media/MediaBrowserServiceCompat$Result;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method onErrorSent(Landroid/os/Bundle;)V
    .registers 4

    iget-object v0, p0, Landroidj/support/v4/media/MediaBrowserServiceCompat$4;->val$receiver:Landroidj/support/v4/os/ResultReceiver;

    const/4 v1, -0x1

    invoke-virtual {v0, v1, p1}, Landroidj/support/v4/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    return-void
.end method

.method onProgressUpdateSent(Landroid/os/Bundle;)V
    .registers 4

    iget-object v0, p0, Landroidj/support/v4/media/MediaBrowserServiceCompat$4;->val$receiver:Landroidj/support/v4/os/ResultReceiver;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroidj/support/v4/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    return-void
.end method

.method onResultSent(Landroid/os/Bundle;)V
    .registers 4

    iget-object v0, p0, Landroidj/support/v4/media/MediaBrowserServiceCompat$4;->val$receiver:Landroidj/support/v4/os/ResultReceiver;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroidj/support/v4/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    return-void
.end method

.method bridge synthetic onResultSent(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Landroid/os/Bundle;

    invoke-virtual {p0, p1}, Landroidj/support/v4/media/MediaBrowserServiceCompat$4;->onResultSent(Landroid/os/Bundle;)V

    return-void
.end method
