.class Landroidj/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21$ExtraCallback$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidj/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21$ExtraCallback;->onPlaybackStateChanged(Landroidj/support/v4/media/session/PlaybackStateCompat;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$1:Landroidj/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21$ExtraCallback;

.field final val$state:Landroidj/support/v4/media/session/PlaybackStateCompat;


# direct methods
.method constructor <init>(Landroidj/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21$ExtraCallback;Landroidj/support/v4/media/session/PlaybackStateCompat;)V
    .registers 3

    iput-object p1, p0, Landroidj/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21$ExtraCallback$2;->this$1:Landroidj/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21$ExtraCallback;

    iput-object p2, p0, Landroidj/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21$ExtraCallback$2;->val$state:Landroidj/support/v4/media/session/PlaybackStateCompat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Landroidj/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21$ExtraCallback$2;->this$1:Landroidj/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21$ExtraCallback;

    invoke-static {v0}, Landroidj/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21$ExtraCallback;->access$400(Landroidj/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21$ExtraCallback;)Landroidj/support/v4/media/session/MediaControllerCompat$Callback;

    move-result-object v0

    iget-object v1, p0, Landroidj/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21$ExtraCallback$2;->val$state:Landroidj/support/v4/media/session/PlaybackStateCompat;

    invoke-virtual {v0, v1}, Landroidj/support/v4/media/session/MediaControllerCompat$Callback;->onPlaybackStateChanged(Landroidj/support/v4/media/session/PlaybackStateCompat;)V

    return-void
.end method
