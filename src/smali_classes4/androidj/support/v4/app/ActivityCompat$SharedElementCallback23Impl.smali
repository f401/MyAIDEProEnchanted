.class Landroidj/support/v4/app/ActivityCompat$SharedElementCallback23Impl;
.super Landroidj/support/v4/app/ActivityCompatApi23$SharedElementCallback23;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidj/support/v4/app/ActivityCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SharedElementCallback23Impl"
.end annotation


# instance fields
.field private mCallback:Landroidj/support/v4/app/SharedElementCallback;


# direct methods
.method public constructor <init>(Landroidj/support/v4/app/SharedElementCallback;)V
    .registers 2

    invoke-direct {p0}, Landroidj/support/v4/app/ActivityCompatApi23$SharedElementCallback23;-><init>()V

    iput-object p1, p0, Landroidj/support/v4/app/ActivityCompat$SharedElementCallback23Impl;->mCallback:Landroidj/support/v4/app/SharedElementCallback;

    return-void
.end method


# virtual methods
.method public onCaptureSharedElementSnapshot(Landroid/view/View;Landroid/graphics/Matrix;Landroid/graphics/RectF;)Landroid/os/Parcelable;
    .registers 5

    iget-object v0, p0, Landroidj/support/v4/app/ActivityCompat$SharedElementCallback23Impl;->mCallback:Landroidj/support/v4/app/SharedElementCallback;

    invoke-virtual {v0, p1, p2, p3}, Landroidj/support/v4/app/SharedElementCallback;->onCaptureSharedElementSnapshot(Landroid/view/View;Landroid/graphics/Matrix;Landroid/graphics/RectF;)Landroid/os/Parcelable;

    move-result-object v0

    return-object v0
.end method

.method public onCreateSnapshotView(Landroid/content/Context;Landroid/os/Parcelable;)Landroid/view/View;
    .registers 4

    iget-object v0, p0, Landroidj/support/v4/app/ActivityCompat$SharedElementCallback23Impl;->mCallback:Landroidj/support/v4/app/SharedElementCallback;

    invoke-virtual {v0, p1, p2}, Landroidj/support/v4/app/SharedElementCallback;->onCreateSnapshotView(Landroid/content/Context;Landroid/os/Parcelable;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onMapSharedElements(Ljava/util/List;Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Landroidj/support/v4/app/ActivityCompat$SharedElementCallback23Impl;->mCallback:Landroidj/support/v4/app/SharedElementCallback;

    invoke-virtual {v0, p1, p2}, Landroidj/support/v4/app/SharedElementCallback;->onMapSharedElements(Ljava/util/List;Ljava/util/Map;)V

    return-void
.end method

.method public onRejectSharedElements(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Landroidj/support/v4/app/ActivityCompat$SharedElementCallback23Impl;->mCallback:Landroidj/support/v4/app/SharedElementCallback;

    invoke-virtual {v0, p1}, Landroidj/support/v4/app/SharedElementCallback;->onRejectSharedElements(Ljava/util/List;)V

    return-void
.end method

.method public onSharedElementEnd(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Landroidj/support/v4/app/ActivityCompat$SharedElementCallback23Impl;->mCallback:Landroidj/support/v4/app/SharedElementCallback;

    invoke-virtual {v0, p1, p2, p3}, Landroidj/support/v4/app/SharedElementCallback;->onSharedElementEnd(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public onSharedElementStart(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Landroidj/support/v4/app/ActivityCompat$SharedElementCallback23Impl;->mCallback:Landroidj/support/v4/app/SharedElementCallback;

    invoke-virtual {v0, p1, p2, p3}, Landroidj/support/v4/app/SharedElementCallback;->onSharedElementStart(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public onSharedElementsArrived(Ljava/util/List;Ljava/util/List;Landroidj/support/v4/app/ActivityCompatApi23$OnSharedElementsReadyListenerBridge;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;",
            "Landroidj/support/v4/app/ActivityCompatApi23$OnSharedElementsReadyListenerBridge;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Landroidj/support/v4/app/ActivityCompat$SharedElementCallback23Impl;->mCallback:Landroidj/support/v4/app/SharedElementCallback;

    new-instance v1, Landroidj/support/v4/app/ActivityCompat$SharedElementCallback23Impl$1;

    invoke-direct {v1, p0, p3}, Landroidj/support/v4/app/ActivityCompat$SharedElementCallback23Impl$1;-><init>(Landroidj/support/v4/app/ActivityCompat$SharedElementCallback23Impl;Landroidj/support/v4/app/ActivityCompatApi23$OnSharedElementsReadyListenerBridge;)V

    invoke-virtual {v0, p1, p2, v1}, Landroidj/support/v4/app/SharedElementCallback;->onSharedElementsArrived(Ljava/util/List;Ljava/util/List;Landroidj/support/v4/app/SharedElementCallback$OnSharedElementsReadyListener;)V

    return-void
.end method
