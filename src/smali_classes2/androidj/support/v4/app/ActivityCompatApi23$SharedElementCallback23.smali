.class public abstract Landroidj/support/v4/app/ActivityCompatApi23$SharedElementCallback23;
.super Landroidj/support/v4/app/ActivityCompatApi21$SharedElementCallback21;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidj/support/v4/app/ActivityCompatApi23;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "SharedElementCallback23"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroidj/support/v4/app/ActivityCompatApi21$SharedElementCallback21;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract onSharedElementsArrived(Ljava/util/List;Ljava/util/List;Landroidj/support/v4/app/ActivityCompatApi23$OnSharedElementsReadyListenerBridge;)V
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
.end method
