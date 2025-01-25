.class Landroidj/support/v4/media/TransportMediatorJellybeanMR2$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/ViewTreeObserver$OnWindowAttachListener;


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

    iput-object p1, p0, Landroidj/support/v4/media/TransportMediatorJellybeanMR2$1;->this$0:Landroidj/support/v4/media/TransportMediatorJellybeanMR2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onWindowAttached()V
    .registers 2

    iget-object v0, p0, Landroidj/support/v4/media/TransportMediatorJellybeanMR2$1;->this$0:Landroidj/support/v4/media/TransportMediatorJellybeanMR2;

    invoke-virtual {v0}, Landroidj/support/v4/media/TransportMediatorJellybeanMR2;->windowAttached()V

    return-void
.end method

.method public onWindowDetached()V
    .registers 2

    iget-object v0, p0, Landroidj/support/v4/media/TransportMediatorJellybeanMR2$1;->this$0:Landroidj/support/v4/media/TransportMediatorJellybeanMR2;

    invoke-virtual {v0}, Landroidj/support/v4/media/TransportMediatorJellybeanMR2;->windowDetached()V

    return-void
.end method
