.class public Landroid/arch/lifecycle/ReportFragment;
.super Landroid/app/Fragment;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/arch/lifecycle/ReportFragment$a;
    }
.end annotation


# instance fields
.field private j6:Landroid/arch/lifecycle/ReportFragment$a;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method

.method private DW(Landroid/arch/lifecycle/ReportFragment$a;)V
    .registers 2

    if-eqz p1, :cond_5

    invoke-interface {p1}, Landroid/arch/lifecycle/ReportFragment$a;->onResume()V

    :cond_5
    return-void
.end method

.method private FH(Landroid/arch/lifecycle/ReportFragment$a;)V
    .registers 2

    if-eqz p1, :cond_5

    invoke-interface {p1}, Landroid/arch/lifecycle/ReportFragment$a;->IS()V

    :cond_5
    return-void
.end method

.method public static j6(Landroid/app/Activity;)V
    .registers 4

    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p0

    const-string v0, "android.arch.lifecycle.LifecycleDispatcher.report_fragment_tag"

    invoke-virtual {p0, v0}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    if-nez v1, :cond_1f

    invoke-virtual {p0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    new-instance v2, Landroid/arch/lifecycle/ReportFragment;

    invoke-direct {v2}, Landroid/arch/lifecycle/ReportFragment;-><init>()V

    invoke-virtual {v1, v2, v0}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    invoke-virtual {p0}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    :cond_1f
    return-void
.end method

.method private j6(Landroid/arch/lifecycle/ReportFragment$a;)V
    .registers 2

    if-eqz p1, :cond_5

    invoke-interface {p1}, Landroid/arch/lifecycle/ReportFragment$a;->onCreate()V

    :cond_5
    return-void
.end method

.method private j6(Landroid/arch/lifecycle/a$a;)V
    .registers 4

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v1, v0, Landroid/arch/lifecycle/f;

    if-eqz v1, :cond_12

    check-cast v0, Landroid/arch/lifecycle/f;

    invoke-interface {v0}, Landroid/arch/lifecycle/f;->j6()Landroid/arch/lifecycle/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/arch/lifecycle/e;->DW(Landroid/arch/lifecycle/a$a;)V

    return-void

    :cond_12
    instance-of v1, v0, Landroid/arch/lifecycle/c;

    if-eqz v1, :cond_25

    check-cast v0, Landroid/arch/lifecycle/c;

    invoke-interface {v0}, Landroid/arch/lifecycle/c;->j6()Landroid/arch/lifecycle/a;

    move-result-object v0

    instance-of v1, v0, Landroid/arch/lifecycle/e;

    if-eqz v1, :cond_25

    check-cast v0, Landroid/arch/lifecycle/e;

    invoke-virtual {v0, p1}, Landroid/arch/lifecycle/e;->DW(Landroid/arch/lifecycle/a$a;)V

    :cond_25
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 2

    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    iget-object p1, p0, Landroid/arch/lifecycle/ReportFragment;->j6:Landroid/arch/lifecycle/ReportFragment$a;

    invoke-direct {p0, p1}, Landroid/arch/lifecycle/ReportFragment;->j6(Landroid/arch/lifecycle/ReportFragment$a;)V

    sget-object p1, Landroid/arch/lifecycle/a$a;->ON_CREATE:Landroid/arch/lifecycle/a$a;

    invoke-direct {p0, p1}, Landroid/arch/lifecycle/ReportFragment;->j6(Landroid/arch/lifecycle/a$a;)V

    return-void
.end method

.method public onDestroy()V
    .registers 2

    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    sget-object v0, Landroid/arch/lifecycle/a$a;->ON_DESTROY:Landroid/arch/lifecycle/a$a;

    invoke-direct {p0, v0}, Landroid/arch/lifecycle/ReportFragment;->j6(Landroid/arch/lifecycle/a$a;)V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/arch/lifecycle/ReportFragment;->j6:Landroid/arch/lifecycle/ReportFragment$a;

    return-void
.end method

.method public onPause()V
    .registers 2

    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    sget-object v0, Landroid/arch/lifecycle/a$a;->ON_PAUSE:Landroid/arch/lifecycle/a$a;

    invoke-direct {p0, v0}, Landroid/arch/lifecycle/ReportFragment;->j6(Landroid/arch/lifecycle/a$a;)V

    return-void
.end method

.method public onResume()V
    .registers 2

    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    iget-object v0, p0, Landroid/arch/lifecycle/ReportFragment;->j6:Landroid/arch/lifecycle/ReportFragment$a;

    invoke-direct {p0, v0}, Landroid/arch/lifecycle/ReportFragment;->DW(Landroid/arch/lifecycle/ReportFragment$a;)V

    sget-object v0, Landroid/arch/lifecycle/a$a;->ON_RESUME:Landroid/arch/lifecycle/a$a;

    invoke-direct {p0, v0}, Landroid/arch/lifecycle/ReportFragment;->j6(Landroid/arch/lifecycle/a$a;)V

    return-void
.end method

.method public onStart()V
    .registers 2

    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    iget-object v0, p0, Landroid/arch/lifecycle/ReportFragment;->j6:Landroid/arch/lifecycle/ReportFragment$a;

    invoke-direct {p0, v0}, Landroid/arch/lifecycle/ReportFragment;->FH(Landroid/arch/lifecycle/ReportFragment$a;)V

    sget-object v0, Landroid/arch/lifecycle/a$a;->ON_START:Landroid/arch/lifecycle/a$a;

    invoke-direct {p0, v0}, Landroid/arch/lifecycle/ReportFragment;->j6(Landroid/arch/lifecycle/a$a;)V

    return-void
.end method

.method public onStop()V
    .registers 2

    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    sget-object v0, Landroid/arch/lifecycle/a$a;->ON_STOP:Landroid/arch/lifecycle/a$a;

    invoke-direct {p0, v0}, Landroid/arch/lifecycle/ReportFragment;->j6(Landroid/arch/lifecycle/a$a;)V

    return-void
.end method
