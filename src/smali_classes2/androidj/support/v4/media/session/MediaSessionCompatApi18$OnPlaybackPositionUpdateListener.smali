.class Landroidj/support/v4/media/session/MediaSessionCompatApi18$OnPlaybackPositionUpdateListener;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/RemoteControlClient$OnPlaybackPositionUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidj/support/v4/media/session/MediaSessionCompatApi18;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "OnPlaybackPositionUpdateListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroidj/support/v4/media/session/MediaSessionCompatApi18$Callback;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/media/RemoteControlClient$OnPlaybackPositionUpdateListener;"
    }
.end annotation


# instance fields
.field protected final mCallback:Landroidj/support/v4/media/session/MediaSessionCompatApi18$Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidj/support/v4/media/session/MediaSessionCompatApi18$Callback;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidj/support/v4/media/session/MediaSessionCompatApi18$OnPlaybackPositionUpdateListener;->mCallback:Landroidj/support/v4/media/session/MediaSessionCompatApi18$Callback;

    return-void
.end method


# virtual methods
.method public onPlaybackPositionUpdate(J)V
    .registers 4

    iget-object v0, p0, Landroidj/support/v4/media/session/MediaSessionCompatApi18$OnPlaybackPositionUpdateListener;->mCallback:Landroidj/support/v4/media/session/MediaSessionCompatApi18$Callback;

    invoke-interface {v0, p1, p2}, Landroidj/support/v4/media/session/MediaSessionCompatApi18$Callback;->onSeekTo(J)V

    return-void
.end method
