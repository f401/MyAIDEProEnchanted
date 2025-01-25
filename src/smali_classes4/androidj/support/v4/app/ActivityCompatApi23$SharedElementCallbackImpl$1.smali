.class Landroidj/support/v4/app/ActivityCompatApi23$SharedElementCallbackImpl$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroidj/support/v4/app/ActivityCompatApi23$OnSharedElementsReadyListenerBridge;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidj/support/v4/app/ActivityCompatApi23$SharedElementCallbackImpl;->onSharedElementsArrived(Ljava/util/List;Ljava/util/List;Landroid/app/SharedElementCallback$OnSharedElementsReadyListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Landroidj/support/v4/app/ActivityCompatApi23$SharedElementCallbackImpl;

.field final val$listener:Landroid/app/SharedElementCallback$OnSharedElementsReadyListener;


# direct methods
.method constructor <init>(Landroidj/support/v4/app/ActivityCompatApi23$SharedElementCallbackImpl;Landroid/app/SharedElementCallback$OnSharedElementsReadyListener;)V
    .registers 3

    iput-object p1, p0, Landroidj/support/v4/app/ActivityCompatApi23$SharedElementCallbackImpl$1;->this$0:Landroidj/support/v4/app/ActivityCompatApi23$SharedElementCallbackImpl;

    iput-object p2, p0, Landroidj/support/v4/app/ActivityCompatApi23$SharedElementCallbackImpl$1;->val$listener:Landroid/app/SharedElementCallback$OnSharedElementsReadyListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSharedElementsReady()V
    .registers 2

    iget-object v0, p0, Landroidj/support/v4/app/ActivityCompatApi23$SharedElementCallbackImpl$1;->val$listener:Landroid/app/SharedElementCallback$OnSharedElementsReadyListener;

    invoke-interface {v0}, Landroid/app/SharedElementCallback$OnSharedElementsReadyListener;->onSharedElementsReady()V

    return-void
.end method
