.class Landroidj/support/v4/media/TransportMediator$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/KeyEvent$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidj/support/v4/media/TransportMediator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Landroidj/support/v4/media/TransportMediator;


# direct methods
.method constructor <init>(Landroidj/support/v4/media/TransportMediator;)V
    .registers 2

    iput-object p1, p0, Landroidj/support/v4/media/TransportMediator$2;->this$0:Landroidj/support/v4/media/TransportMediator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4

    invoke-static {p1}, Landroidj/support/v4/media/TransportMediator;->isMediaKey(I)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Landroidj/support/v4/media/TransportMediator$2;->this$0:Landroidj/support/v4/media/TransportMediator;

    iget-object v0, v0, Landroidj/support/v4/media/TransportMediator;->mCallbacks:Landroidj/support/v4/media/TransportPerformer;

    invoke-virtual {v0, p1, p2}, Landroidj/support/v4/media/TransportPerformer;->onMediaButtonDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public onKeyLongPress(ILandroid/view/KeyEvent;)Z
    .registers 4

    const/4 v0, 0x0

    return v0
.end method

.method public onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .registers 5

    const/4 v0, 0x0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 4

    invoke-static {p1}, Landroidj/support/v4/media/TransportMediator;->isMediaKey(I)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Landroidj/support/v4/media/TransportMediator$2;->this$0:Landroidj/support/v4/media/TransportMediator;

    iget-object v0, v0, Landroidj/support/v4/media/TransportMediator;->mCallbacks:Landroidj/support/v4/media/TransportPerformer;

    invoke-virtual {v0, p1, p2}, Landroidj/support/v4/media/TransportPerformer;->onMediaButtonUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method
