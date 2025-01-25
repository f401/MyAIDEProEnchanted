.class Landroidj/support/v4/media/TransportMediatorJellybeanMR2$4;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


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

    iput-object p1, p0, Landroidj/support/v4/media/TransportMediatorJellybeanMR2$4;->this$0:Landroidj/support/v4/media/TransportMediatorJellybeanMR2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioFocusChange(I)V
    .registers 3

    iget-object v0, p0, Landroidj/support/v4/media/TransportMediatorJellybeanMR2$4;->this$0:Landroidj/support/v4/media/TransportMediatorJellybeanMR2;

    iget-object v0, v0, Landroidj/support/v4/media/TransportMediatorJellybeanMR2;->mTransportCallback:Landroidj/support/v4/media/TransportMediatorCallback;

    invoke-interface {v0, p1}, Landroidj/support/v4/media/TransportMediatorCallback;->handleAudioFocusChange(I)V

    return-void
.end method
