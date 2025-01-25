.class Landroidj/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21$ExtraCallback$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidj/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21$ExtraCallback;->onRepeatModeChanged(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$1:Landroidj/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21$ExtraCallback;

.field final val$repeatMode:I


# direct methods
.method constructor <init>(Landroidj/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21$ExtraCallback;I)V
    .registers 3

    iput-object p1, p0, Landroidj/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21$ExtraCallback$4;->this$1:Landroidj/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21$ExtraCallback;

    iput p2, p0, Landroidj/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21$ExtraCallback$4;->val$repeatMode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Landroidj/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21$ExtraCallback$4;->this$1:Landroidj/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21$ExtraCallback;

    invoke-static {v0}, Landroidj/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21$ExtraCallback;->access$400(Landroidj/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21$ExtraCallback;)Landroidj/support/v4/media/session/MediaControllerCompat$Callback;

    move-result-object v0

    iget v1, p0, Landroidj/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21$ExtraCallback$4;->val$repeatMode:I

    invoke-virtual {v0, v1}, Landroidj/support/v4/media/session/MediaControllerCompat$Callback;->onRepeatModeChanged(I)V

    return-void
.end method
