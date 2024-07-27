.class Landroidj/support/v4/app/ActivityCompat$SharedElementCallback23Impl$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroidj/support/v4/app/SharedElementCallback$OnSharedElementsReadyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidj/support/v4/app/ActivityCompat$SharedElementCallback23Impl;->onSharedElementsArrived(Ljava/util/List;Ljava/util/List;Landroidj/support/v4/app/ActivityCompatApi23$OnSharedElementsReadyListenerBridge;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Landroidj/support/v4/app/ActivityCompat$SharedElementCallback23Impl;

.field final val$listener:Landroidj/support/v4/app/ActivityCompatApi23$OnSharedElementsReadyListenerBridge;


# direct methods
.method constructor <init>(Landroidj/support/v4/app/ActivityCompat$SharedElementCallback23Impl;Landroidj/support/v4/app/ActivityCompatApi23$OnSharedElementsReadyListenerBridge;)V
    .registers 3

    iput-object p1, p0, Landroidj/support/v4/app/ActivityCompat$SharedElementCallback23Impl$1;->this$0:Landroidj/support/v4/app/ActivityCompat$SharedElementCallback23Impl;

    iput-object p2, p0, Landroidj/support/v4/app/ActivityCompat$SharedElementCallback23Impl$1;->val$listener:Landroidj/support/v4/app/ActivityCompatApi23$OnSharedElementsReadyListenerBridge;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSharedElementsReady()V
    .registers 2

    iget-object v0, p0, Landroidj/support/v4/app/ActivityCompat$SharedElementCallback23Impl$1;->val$listener:Landroidj/support/v4/app/ActivityCompatApi23$OnSharedElementsReadyListenerBridge;

    invoke-interface {v0}, Landroidj/support/v4/app/ActivityCompatApi23$OnSharedElementsReadyListenerBridge;->onSharedElementsReady()V

    return-void
.end method
