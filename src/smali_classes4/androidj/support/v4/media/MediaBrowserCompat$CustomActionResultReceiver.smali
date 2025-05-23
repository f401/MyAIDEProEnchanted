.class Landroidj/support/v4/media/MediaBrowserCompat$CustomActionResultReceiver;
.super Landroidj/support/v4/os/ResultReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidj/support/v4/media/MediaBrowserCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CustomActionResultReceiver"
.end annotation


# instance fields
.field private final mAction:Ljava/lang/String;

.field private final mCallback:Landroidj/support/v4/media/MediaBrowserCompat$CustomActionCallback;

.field private final mExtras:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/os/Bundle;Landroidj/support/v4/media/MediaBrowserCompat$CustomActionCallback;Landroid/os/Handler;)V
    .registers 5

    invoke-direct {p0, p4}, Landroidj/support/v4/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    iput-object p1, p0, Landroidj/support/v4/media/MediaBrowserCompat$CustomActionResultReceiver;->mAction:Ljava/lang/String;

    iput-object p2, p0, Landroidj/support/v4/media/MediaBrowserCompat$CustomActionResultReceiver;->mExtras:Landroid/os/Bundle;

    iput-object p3, p0, Landroidj/support/v4/media/MediaBrowserCompat$CustomActionResultReceiver;->mCallback:Landroidj/support/v4/media/MediaBrowserCompat$CustomActionCallback;

    return-void
.end method


# virtual methods
.method protected onReceiveResult(ILandroid/os/Bundle;)V
    .registers 6

    iget-object v0, p0, Landroidj/support/v4/media/MediaBrowserCompat$CustomActionResultReceiver;->mCallback:Landroidj/support/v4/media/MediaBrowserCompat$CustomActionCallback;

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    packed-switch p1, :pswitch_data_5c

    const-string v0, "MediaBrowserCompat"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown result code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (extras="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroidj/support/v4/media/MediaBrowserCompat$CustomActionResultReceiver;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", resultData="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :pswitch_3d  #0x1
    iget-object v0, p0, Landroidj/support/v4/media/MediaBrowserCompat$CustomActionResultReceiver;->mCallback:Landroidj/support/v4/media/MediaBrowserCompat$CustomActionCallback;

    iget-object v1, p0, Landroidj/support/v4/media/MediaBrowserCompat$CustomActionResultReceiver;->mAction:Ljava/lang/String;

    iget-object v2, p0, Landroidj/support/v4/media/MediaBrowserCompat$CustomActionResultReceiver;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2, p2}, Landroidj/support/v4/media/MediaBrowserCompat$CustomActionCallback;->onProgressUpdate(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;)V

    goto :goto_4

    :pswitch_47  #0x0
    iget-object v0, p0, Landroidj/support/v4/media/MediaBrowserCompat$CustomActionResultReceiver;->mCallback:Landroidj/support/v4/media/MediaBrowserCompat$CustomActionCallback;

    iget-object v1, p0, Landroidj/support/v4/media/MediaBrowserCompat$CustomActionResultReceiver;->mAction:Ljava/lang/String;

    iget-object v2, p0, Landroidj/support/v4/media/MediaBrowserCompat$CustomActionResultReceiver;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2, p2}, Landroidj/support/v4/media/MediaBrowserCompat$CustomActionCallback;->onResult(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;)V

    goto :goto_4

    :pswitch_51  #0xffffffff
    iget-object v0, p0, Landroidj/support/v4/media/MediaBrowserCompat$CustomActionResultReceiver;->mCallback:Landroidj/support/v4/media/MediaBrowserCompat$CustomActionCallback;

    iget-object v1, p0, Landroidj/support/v4/media/MediaBrowserCompat$CustomActionResultReceiver;->mAction:Ljava/lang/String;

    iget-object v2, p0, Landroidj/support/v4/media/MediaBrowserCompat$CustomActionResultReceiver;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2, p2}, Landroidj/support/v4/media/MediaBrowserCompat$CustomActionCallback;->onError(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;)V

    goto :goto_4

    nop

    :pswitch_data_5c
    .packed-switch -0x1
        :pswitch_51  #ffffffff
        :pswitch_47  #00000000
        :pswitch_3d  #00000001
    .end packed-switch
.end method
