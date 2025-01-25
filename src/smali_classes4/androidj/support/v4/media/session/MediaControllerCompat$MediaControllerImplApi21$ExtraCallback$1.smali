.class Landroidj/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21$ExtraCallback$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidj/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21$ExtraCallback;->onEvent(Ljava/lang/String;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$1:Landroidj/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21$ExtraCallback;

.field final val$event:Ljava/lang/String;

.field final val$extras:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Landroidj/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21$ExtraCallback;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 4

    iput-object p1, p0, Landroidj/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21$ExtraCallback$1;->this$1:Landroidj/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21$ExtraCallback;

    iput-object p2, p0, Landroidj/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21$ExtraCallback$1;->val$event:Ljava/lang/String;

    iput-object p3, p0, Landroidj/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21$ExtraCallback$1;->val$extras:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Landroidj/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21$ExtraCallback$1;->this$1:Landroidj/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21$ExtraCallback;

    invoke-static {v0}, Landroidj/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21$ExtraCallback;->access$400(Landroidj/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21$ExtraCallback;)Landroidj/support/v4/media/session/MediaControllerCompat$Callback;

    move-result-object v0

    iget-object v1, p0, Landroidj/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21$ExtraCallback$1;->val$event:Ljava/lang/String;

    iget-object v2, p0, Landroidj/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21$ExtraCallback$1;->val$extras:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Landroidj/support/v4/media/session/MediaControllerCompat$Callback;->onSessionEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method
