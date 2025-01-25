.class Landroidj/support/v4/media/TransportMediatorJellybeanMR2$5;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/RemoteControlClient$OnGetPlaybackPositionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidj/support/v4/media/TransportMediatorJellybeanMR2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Landroidj/support/v4/media/TransportMediatorJellybeanMR2;


# direct methods
.method constructor <init>(Landroidj/support/v4/media/TransportMediatorJellybeanMR2;)V
    .registers 2

    iput-object p1, p0, Landroidj/support/v4/media/TransportMediatorJellybeanMR2$5;->this$0:Landroidj/support/v4/media/TransportMediatorJellybeanMR2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetPlaybackPosition()J
    .registers 3

    iget-object v0, p0, Landroidj/support/v4/media/TransportMediatorJellybeanMR2$5;->this$0:Landroidj/support/v4/media/TransportMediatorJellybeanMR2;

    iget-object v0, v0, Landroidj/support/v4/media/TransportMediatorJellybeanMR2;->mTransportCallback:Landroidj/support/v4/media/TransportMediatorCallback;

    invoke-interface {v0}, Landroidj/support/v4/media/TransportMediatorCallback;->getPlaybackPosition()J

    move-result-wide v0

    return-wide v0
.end method
