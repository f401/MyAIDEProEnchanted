.class Landroidj/support/v4/app/ActivityCompat$SharedElementCallback21Impl;
.super Landroidj/support/v4/app/ActivityCompatApi21$SharedElementCallback21;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidj/support/v4/app/ActivityCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SharedElementCallback21Impl"
.end annotation


# instance fields
.field private mCallback:Landroidj/support/v4/app/SharedElementCallback;


# direct methods
.method public constructor <init>(Landroidj/support/v4/app/SharedElementCallback;)V
    .registers 2

    invoke-direct {p0}, Landroidj/support/v4/app/ActivityCompatApi21$SharedElementCallback21;-><init>()V

    iput-object p1, p0, Landroidj/support/v4/app/ActivityCompat$SharedElementCallback21Impl;->mCallback:Landroidj/support/v4/app/SharedElementCallback;

    return-void
.end method


# virtual methods
.method public onCaptureSharedElementSnapshot(Landroid/view/View;Landroid/graphics/Matrix;Landroid/graphics/RectF;)Landroid/os/Parcelable;
    .registers 5

    iget-object v0, p0, Landroidj/support/v4/app/ActivityCompat$SharedElementCallback21Impl;->mCallback:Landroidj/support/v4/app/SharedElementCallback;

    invoke-virtual {v0, p1, p2, p3}, Landroidj/support/v4/app/SharedElementCallback;->onCaptureSharedElementSnapshot(Landroid/view/View;Landroid/graphics/Matrix;Landroid/graphics/RectF;)Landroid/os/Parcelable;

    move-result-object v0

    return-object v0
.end method

.method public onCreateSnapshotView(Landroid/content/Context;Landroid/os/Parcelable;)Landroid/view/View;
    .registers 4

    iget-object v0, p0, Landroidj/support/v4/app/ActivityCompat$SharedElementCallback21Impl;->mCallback:Landroidj/support/v4/app/SharedElementCallback;

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

    iget-object v0, p0, Landroidj/support/v4/app/ActivityCompat$SharedElementCallback21Impl;->mCallback:Landroidj/support/v4/app/SharedElementCallback;

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

    iget-object v0, p0, Landroidj/support/v4/app/ActivityCompat$SharedElementCallback21Impl;->mCallback:Landroidj/support/v4/app/SharedElementCallback;

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

    iget-object v0, p0, Landroidj/support/v4/app/ActivityCompat$SharedElementCallback21Impl;->mCallback:Landroidj/support/v4/app/SharedElementCallback;

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

    iget-object v0, p0, Landroidj/support/v4/app/ActivityCompat$SharedElementCallback21Impl;->mCallback:Landroidj/support/v4/app/SharedElementCallback;

    invoke-virtual {v0, p1, p2, p3}, Landroidj/support/v4/app/SharedElementCallback;->onSharedElementStart(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method
