.class Landroidj/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21$ExtraBinderRequestResultReceiver;
.super Landroid/os/ResultReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidj/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ExtraBinderRequestResultReceiver"
.end annotation


# instance fields
.field private mMediaControllerImpl:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroidj/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidj/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21;Landroid/os/Handler;)V
    .registers 4

    invoke-direct {p0, p2}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroidj/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21$ExtraBinderRequestResultReceiver;->mMediaControllerImpl:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method protected onReceiveResult(ILandroid/os/Bundle;)V
    .registers 5

    iget-object v0, p0, Landroidj/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21$ExtraBinderRequestResultReceiver;->mMediaControllerImpl:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidj/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21;

    if-eqz v0, :cond_c

    if-nez p2, :cond_d

    :cond_c
    :goto_c
    return-void

    :cond_d
    const-string v1, "androidj.support.v4.media.session.EXTRA_BINDER"

    invoke-static {p2, v1}, Landroidj/support/v4/app/BundleCompat;->getBinder(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroidj/support/v4/media/session/IMediaSession$Stub;->asInterface(Landroid/os/IBinder;)Landroidj/support/v4/media/session/IMediaSession;

    move-result-object v1

    invoke-static {v0, v1}, Landroidj/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21;->access$202(Landroidj/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21;Landroidj/support/v4/media/session/IMediaSession;)Landroidj/support/v4/media/session/IMediaSession;

    invoke-static {v0}, Landroidj/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21;->access$300(Landroidj/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21;)V

    goto :goto_c
.end method
