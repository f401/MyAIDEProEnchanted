.class Landroidx/activity/result/ActivityResultRegistry$LifecycleContainer;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/activity/result/ActivityResultRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LifecycleContainer"
.end annotation


# instance fields
.field final mLifecycle:Landroidx/lifecycle/Lifecycle;

.field private final mObservers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroidx/lifecycle/LifecycleEventObserver;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroidx/lifecycle/Lifecycle;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/activity/result/ActivityResultRegistry$LifecycleContainer;->mLifecycle:Landroidx/lifecycle/Lifecycle;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/activity/result/ActivityResultRegistry$LifecycleContainer;->mObservers:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method addObserver(Landroidx/lifecycle/LifecycleEventObserver;)V
    .registers 3

    iget-object v0, p0, Landroidx/activity/result/ActivityResultRegistry$LifecycleContainer;->mLifecycle:Landroidx/lifecycle/Lifecycle;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    iget-object v0, p0, Landroidx/activity/result/ActivityResultRegistry$LifecycleContainer;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method clearObservers()V
    .registers 4

    iget-object v0, p0, Landroidx/activity/result/ActivityResultRegistry$LifecycleContainer;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/LifecycleEventObserver;

    iget-object v2, p0, Landroidx/activity/result/ActivityResultRegistry$LifecycleContainer;->mLifecycle:Landroidx/lifecycle/Lifecycle;

    invoke-virtual {v2, v0}, Landroidx/lifecycle/Lifecycle;->removeObserver(Landroidx/lifecycle/LifecycleObserver;)V

    goto :goto_6

    :cond_18
    iget-object v0, p0, Landroidx/activity/result/ActivityResultRegistry$LifecycleContainer;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method
