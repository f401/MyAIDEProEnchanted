.class public Landroidx/lifecycle/ReportFragment;
.super Landroid/app/Fragment;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/lifecycle/ReportFragment$ActivityInitializationListener;,
        Landroidx/lifecycle/ReportFragment$LifecycleCallbacks;
    }
.end annotation


# static fields
.field private static final REPORT_FRAGMENT_TAG:Ljava/lang/String; = "androidx.lifecycle.LifecycleDispatcher.report_fragment_tag"


# instance fields
.field private mProcessListener:Landroidx/lifecycle/ReportFragment$ActivityInitializationListener;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method

.method static dispatch(Landroid/app/Activity;Landroidx/lifecycle/Lifecycle$Event;)V
    .registers 4

    instance-of v0, p0, Landroidx/lifecycle/LifecycleRegistryOwner;

    if-eqz v0, :cond_e

    check-cast p0, Landroidx/lifecycle/LifecycleRegistryOwner;

    invoke-interface {p0}, Landroidx/lifecycle/LifecycleRegistryOwner;->getLifecycle()Landroidx/lifecycle/LifecycleRegistry;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/lifecycle/LifecycleRegistry;->handleLifecycleEvent(Landroidx/lifecycle/Lifecycle$Event;)V

    :cond_d
    :goto_d
    return-void

    :cond_e
    instance-of v0, p0, Landroidx/lifecycle/LifecycleOwner;

    if-eqz v0, :cond_d

    check-cast p0, Landroidx/lifecycle/LifecycleOwner;

    invoke-interface {p0}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    instance-of v1, v0, Landroidx/lifecycle/LifecycleRegistry;

    if-eqz v1, :cond_d

    check-cast v0, Landroidx/lifecycle/LifecycleRegistry;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/LifecycleRegistry;->handleLifecycleEvent(Landroidx/lifecycle/Lifecycle$Event;)V

    goto :goto_d
.end method

.method private dispatch(Landroidx/lifecycle/Lifecycle$Event;)V
    .registers 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-ge v0, v1, :cond_d

    invoke-virtual {p0}, Landroidx/lifecycle/ReportFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/lifecycle/ReportFragment;->dispatch(Landroid/app/Activity;Landroidx/lifecycle/Lifecycle$Event;)V

    :cond_d
    return-void
.end method

.method private dispatchCreate(Landroidx/lifecycle/ReportFragment$ActivityInitializationListener;)V
    .registers 2

    if-eqz p1, :cond_5

    invoke-interface {p1}, Landroidx/lifecycle/ReportFragment$ActivityInitializationListener;->onCreate()V

    :cond_5
    return-void
.end method

.method private dispatchResume(Landroidx/lifecycle/ReportFragment$ActivityInitializationListener;)V
    .registers 2

    if-eqz p1, :cond_5

    invoke-interface {p1}, Landroidx/lifecycle/ReportFragment$ActivityInitializationListener;->onResume()V

    :cond_5
    return-void
.end method

.method private dispatchStart(Landroidx/lifecycle/ReportFragment$ActivityInitializationListener;)V
    .registers 2

    if-eqz p1, :cond_5

    invoke-interface {p1}, Landroidx/lifecycle/ReportFragment$ActivityInitializationListener;->onStart()V

    :cond_5
    return-void
.end method

.method static get(Landroid/app/Activity;)Landroidx/lifecycle/ReportFragment;
    .registers 3

    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, "androidx.lifecycle.LifecycleDispatcher.report_fragment_tag"

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/ReportFragment;

    return-object v0
.end method

.method public static injectIfNeededIn(Landroid/app/Activity;)V
    .registers 5

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_9

    invoke-static {p0}, Landroidx/lifecycle/ReportFragment$LifecycleCallbacks;->registerIn(Landroid/app/Activity;)V

    :cond_9
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, "androidx.lifecycle.LifecycleDispatcher.report_fragment_tag"

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    if-nez v1, :cond_2a

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    new-instance v2, Landroidx/lifecycle/ReportFragment;

    invoke-direct {v2}, Landroidx/lifecycle/ReportFragment;-><init>()V

    const-string v3, "androidx.lifecycle.LifecycleDispatcher.report_fragment_tag"

    invoke-virtual {v1, v2, v3}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    invoke-virtual {v0}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    :cond_2a
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 3

    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    iget-object v0, p0, Landroidx/lifecycle/ReportFragment;->mProcessListener:Landroidx/lifecycle/ReportFragment$ActivityInitializationListener;

    invoke-direct {p0, v0}, Landroidx/lifecycle/ReportFragment;->dispatchCreate(Landroidx/lifecycle/ReportFragment$ActivityInitializationListener;)V

    sget-object v0, Landroidx/lifecycle/Lifecycle$Event;->ON_CREATE:Landroidx/lifecycle/Lifecycle$Event;

    invoke-direct {p0, v0}, Landroidx/lifecycle/ReportFragment;->dispatch(Landroidx/lifecycle/Lifecycle$Event;)V

    return-void
.end method

.method public onDestroy()V
    .registers 2

    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    sget-object v0, Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;

    invoke-direct {p0, v0}, Landroidx/lifecycle/ReportFragment;->dispatch(Landroidx/lifecycle/Lifecycle$Event;)V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/lifecycle/ReportFragment;->mProcessListener:Landroidx/lifecycle/ReportFragment$ActivityInitializationListener;

    return-void
.end method

.method public onPause()V
    .registers 2

    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    sget-object v0, Landroidx/lifecycle/Lifecycle$Event;->ON_PAUSE:Landroidx/lifecycle/Lifecycle$Event;

    invoke-direct {p0, v0}, Landroidx/lifecycle/ReportFragment;->dispatch(Landroidx/lifecycle/Lifecycle$Event;)V

    return-void
.end method

.method public onResume()V
    .registers 2

    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    iget-object v0, p0, Landroidx/lifecycle/ReportFragment;->mProcessListener:Landroidx/lifecycle/ReportFragment$ActivityInitializationListener;

    invoke-direct {p0, v0}, Landroidx/lifecycle/ReportFragment;->dispatchResume(Landroidx/lifecycle/ReportFragment$ActivityInitializationListener;)V

    sget-object v0, Landroidx/lifecycle/Lifecycle$Event;->ON_RESUME:Landroidx/lifecycle/Lifecycle$Event;

    invoke-direct {p0, v0}, Landroidx/lifecycle/ReportFragment;->dispatch(Landroidx/lifecycle/Lifecycle$Event;)V

    return-void
.end method

.method public onStart()V
    .registers 2

    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    iget-object v0, p0, Landroidx/lifecycle/ReportFragment;->mProcessListener:Landroidx/lifecycle/ReportFragment$ActivityInitializationListener;

    invoke-direct {p0, v0}, Landroidx/lifecycle/ReportFragment;->dispatchStart(Landroidx/lifecycle/ReportFragment$ActivityInitializationListener;)V

    sget-object v0, Landroidx/lifecycle/Lifecycle$Event;->ON_START:Landroidx/lifecycle/Lifecycle$Event;

    invoke-direct {p0, v0}, Landroidx/lifecycle/ReportFragment;->dispatch(Landroidx/lifecycle/Lifecycle$Event;)V

    return-void
.end method

.method public onStop()V
    .registers 2

    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    sget-object v0, Landroidx/lifecycle/Lifecycle$Event;->ON_STOP:Landroidx/lifecycle/Lifecycle$Event;

    invoke-direct {p0, v0}, Landroidx/lifecycle/ReportFragment;->dispatch(Landroidx/lifecycle/Lifecycle$Event;)V

    return-void
.end method

.method setProcessListener(Landroidx/lifecycle/ReportFragment$ActivityInitializationListener;)V
    .registers 2

    iput-object p1, p0, Landroidx/lifecycle/ReportFragment;->mProcessListener:Landroidx/lifecycle/ReportFragment$ActivityInitializationListener;

    return-void
.end method
