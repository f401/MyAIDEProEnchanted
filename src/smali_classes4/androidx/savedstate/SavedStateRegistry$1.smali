.class Landroidx/savedstate/SavedStateRegistry$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/lifecycle/GenericLifecycleObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/savedstate/SavedStateRegistry;->performRestore(Landroidx/lifecycle/Lifecycle;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Landroidx/savedstate/SavedStateRegistry;


# direct methods
.method constructor <init>(Landroidx/savedstate/SavedStateRegistry;)V
    .registers 2

    iput-object p1, p0, Landroidx/savedstate/SavedStateRegistry$1;->this$0:Landroidx/savedstate/SavedStateRegistry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateChanged(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;)V
    .registers 5

    sget-object v0, Landroidx/lifecycle/Lifecycle$Event;->ON_START:Landroidx/lifecycle/Lifecycle$Event;

    if-ne p2, v0, :cond_a

    iget-object v0, p0, Landroidx/savedstate/SavedStateRegistry$1;->this$0:Landroidx/savedstate/SavedStateRegistry;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroidx/savedstate/SavedStateRegistry;->mAllowingSavingState:Z

    :cond_9
    :goto_9
    return-void

    :cond_a
    sget-object v0, Landroidx/lifecycle/Lifecycle$Event;->ON_STOP:Landroidx/lifecycle/Lifecycle$Event;

    if-ne p2, v0, :cond_9

    iget-object v0, p0, Landroidx/savedstate/SavedStateRegistry$1;->this$0:Landroidx/savedstate/SavedStateRegistry;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroidx/savedstate/SavedStateRegistry;->mAllowingSavingState:Z

    goto :goto_9
.end method
