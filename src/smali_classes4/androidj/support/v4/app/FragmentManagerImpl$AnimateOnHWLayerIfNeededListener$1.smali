.class Landroidj/support/v4/app/FragmentManagerImpl$AnimateOnHWLayerIfNeededListener$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidj/support/v4/app/FragmentManagerImpl$AnimateOnHWLayerIfNeededListener;->onAnimationEnd(Landroid/view/animation/Animation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Landroidj/support/v4/app/FragmentManagerImpl$AnimateOnHWLayerIfNeededListener;


# direct methods
.method constructor <init>(Landroidj/support/v4/app/FragmentManagerImpl$AnimateOnHWLayerIfNeededListener;)V
    .registers 2

    iput-object p1, p0, Landroidj/support/v4/app/FragmentManagerImpl$AnimateOnHWLayerIfNeededListener$1;->this$0:Landroidj/support/v4/app/FragmentManagerImpl$AnimateOnHWLayerIfNeededListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Landroidj/support/v4/app/FragmentManagerImpl$AnimateOnHWLayerIfNeededListener$1;->this$0:Landroidj/support/v4/app/FragmentManagerImpl$AnimateOnHWLayerIfNeededListener;

    iget-object v0, v0, Landroidj/support/v4/app/FragmentManagerImpl$AnimateOnHWLayerIfNeededListener;->mView:Landroid/view/View;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroidj/support/v4/view/ViewCompat;->setLayerType(Landroid/view/View;ILandroid/graphics/Paint;)V

    return-void
.end method
