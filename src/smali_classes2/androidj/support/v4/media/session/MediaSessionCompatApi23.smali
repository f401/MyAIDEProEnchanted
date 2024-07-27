.class Landroidj/support/v4/media/session/MediaSessionCompatApi23;
.super Ljava/lang/Object;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x17
.end annotation

.annotation build Landroidj/support/annotation/RequiresApi;
    value = 0x17
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidj/support/v4/media/session/MediaSessionCompatApi23$Callback;,
        Landroidj/support/v4/media/session/MediaSessionCompatApi23$CallbackProxy;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createCallback(Landroidj/support/v4/media/session/MediaSessionCompatApi23$Callback;)Ljava/lang/Object;
    .registers 2

    new-instance v0, Landroidj/support/v4/media/session/MediaSessionCompatApi23$CallbackProxy;

    invoke-direct {v0, p0}, Landroidj/support/v4/media/session/MediaSessionCompatApi23$CallbackProxy;-><init>(Landroidj/support/v4/media/session/MediaSessionCompatApi23$Callback;)V

    return-object v0
.end method
