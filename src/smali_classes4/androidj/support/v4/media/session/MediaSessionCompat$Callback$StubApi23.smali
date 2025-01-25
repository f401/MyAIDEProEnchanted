.class Landroidj/support/v4/media/session/MediaSessionCompat$Callback$StubApi23;
.super Landroidj/support/v4/media/session/MediaSessionCompat$Callback$StubApi21;

# interfaces
.implements Landroidj/support/v4/media/session/MediaSessionCompatApi23$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidj/support/v4/media/session/MediaSessionCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StubApi23"
.end annotation


# instance fields
.field final this$0:Landroidj/support/v4/media/session/MediaSessionCompat$Callback;


# direct methods
.method constructor <init>(Landroidj/support/v4/media/session/MediaSessionCompat$Callback;)V
    .registers 2

    iput-object p1, p0, Landroidj/support/v4/media/session/MediaSessionCompat$Callback$StubApi23;->this$0:Landroidj/support/v4/media/session/MediaSessionCompat$Callback;

    invoke-direct {p0, p1}, Landroidj/support/v4/media/session/MediaSessionCompat$Callback$StubApi21;-><init>(Landroidj/support/v4/media/session/MediaSessionCompat$Callback;)V

    return-void
.end method


# virtual methods
.method public onPlayFromUri(Landroid/net/Uri;Landroid/os/Bundle;)V
    .registers 4

    iget-object v0, p0, Landroidj/support/v4/media/session/MediaSessionCompat$Callback$StubApi23;->this$0:Landroidj/support/v4/media/session/MediaSessionCompat$Callback;

    invoke-virtual {v0, p1, p2}, Landroidj/support/v4/media/session/MediaSessionCompat$Callback;->onPlayFromUri(Landroid/net/Uri;Landroid/os/Bundle;)V

    return-void
.end method
