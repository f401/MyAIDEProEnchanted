.class Landroidj/support/v4/media/session/MediaSessionCompat$Callback$StubApi24;
.super Landroidj/support/v4/media/session/MediaSessionCompat$Callback$StubApi23;

# interfaces
.implements Landroidj/support/v4/media/session/MediaSessionCompatApi24$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidj/support/v4/media/session/MediaSessionCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StubApi24"
.end annotation


# instance fields
.field final this$0:Landroidj/support/v4/media/session/MediaSessionCompat$Callback;


# direct methods
.method constructor <init>(Landroidj/support/v4/media/session/MediaSessionCompat$Callback;)V
    .registers 2

    iput-object p1, p0, Landroidj/support/v4/media/session/MediaSessionCompat$Callback$StubApi24;->this$0:Landroidj/support/v4/media/session/MediaSessionCompat$Callback;

    invoke-direct {p0, p1}, Landroidj/support/v4/media/session/MediaSessionCompat$Callback$StubApi23;-><init>(Landroidj/support/v4/media/session/MediaSessionCompat$Callback;)V

    return-void
.end method


# virtual methods
.method public onPrepare()V
    .registers 2

    iget-object v0, p0, Landroidj/support/v4/media/session/MediaSessionCompat$Callback$StubApi24;->this$0:Landroidj/support/v4/media/session/MediaSessionCompat$Callback;

    invoke-virtual {v0}, Landroidj/support/v4/media/session/MediaSessionCompat$Callback;->onPrepare()V

    return-void
.end method

.method public onPrepareFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 4

    iget-object v0, p0, Landroidj/support/v4/media/session/MediaSessionCompat$Callback$StubApi24;->this$0:Landroidj/support/v4/media/session/MediaSessionCompat$Callback;

    invoke-virtual {v0, p1, p2}, Landroidj/support/v4/media/session/MediaSessionCompat$Callback;->onPrepareFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public onPrepareFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 4

    iget-object v0, p0, Landroidj/support/v4/media/session/MediaSessionCompat$Callback$StubApi24;->this$0:Landroidj/support/v4/media/session/MediaSessionCompat$Callback;

    invoke-virtual {v0, p1, p2}, Landroidj/support/v4/media/session/MediaSessionCompat$Callback;->onPrepareFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public onPrepareFromUri(Landroid/net/Uri;Landroid/os/Bundle;)V
    .registers 4

    iget-object v0, p0, Landroidj/support/v4/media/session/MediaSessionCompat$Callback$StubApi24;->this$0:Landroidj/support/v4/media/session/MediaSessionCompat$Callback;

    invoke-virtual {v0, p1, p2}, Landroidj/support/v4/media/session/MediaSessionCompat$Callback;->onPrepareFromUri(Landroid/net/Uri;Landroid/os/Bundle;)V

    return-void
.end method
