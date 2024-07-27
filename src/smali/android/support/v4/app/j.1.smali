.class public Landroid/support/v4/app/j;
.super Landroid/support/v4/app/Fragment;

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field OW:I

.field Qq:I

.field XX:Z

.field aj:Z

.field br:Landroid/app/Dialog;

.field kQ:Z

.field lp:Z

.field sy:I

.field yO:Z


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    iput v0, p0, Landroid/support/v4/app/j;->Qq:I

    iput v0, p0, Landroid/support/v4/app/j;->sy:I

    iput-boolean v1, p0, Landroid/support/v4/app/j;->aj:Z

    iput-boolean v1, p0, Landroid/support/v4/app/j;->lp:Z

    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v4/app/j;->OW:I

    return-void
.end method


# virtual methods
.method public DW(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->DW(Landroid/os/Bundle;)V

    iget-boolean v0, p0, Landroid/support/v4/app/j;->lp:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->lg()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_4

    iget-object v1, p0, Landroid/support/v4/app/j;->br:Landroid/app/Dialog;

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    :cond_2
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->DW()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v1, p0, Landroid/support/v4/app/j;->br:Landroid/app/Dialog;

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setOwnerActivity(Landroid/app/Activity;)V

    :cond_3
    iget-object v0, p0, Landroid/support/v4/app/j;->br:Landroid/app/Dialog;

    iget-boolean v1, p0, Landroid/support/v4/app/j;->aj:Z

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    iget-object v0, p0, Landroid/support/v4/app/j;->br:Landroid/app/Dialog;

    invoke-virtual {v0, p0}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    iget-object v0, p0, Landroid/support/v4/app/j;->br:Landroid/app/Dialog;

    invoke-virtual {v0, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    if-eqz p1, :cond_0

    const-string v0, "android:savedDialogState"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/support/v4/app/j;->br:Landroid/app/Dialog;

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "DialogFragment can not be attached to a container view"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public FH(Landroid/os/Bundle;)V
    .registers 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->FH(Landroid/os/Bundle;)V

    iget v0, p0, Landroid/support/v4/app/Fragment;->er:I

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Landroid/support/v4/app/j;->lp:Z

    if-eqz p1, :cond_0

    const-string v0, "android:style"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/support/v4/app/j;->Qq:I

    const-string v0, "android:theme"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/support/v4/app/j;->sy:I

    const-string v0, "android:cancelable"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Landroid/support/v4/app/j;->aj:Z

    const-string v0, "android:showsDialog"

    iget-boolean v1, p0, Landroid/support/v4/app/j;->lp:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Landroid/support/v4/app/j;->lp:Z

    const-string v0, "android:backStackId"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/support/v4/app/j;->OW:I

    :cond_0
    return-void

    :cond_1
    move v0, v2

    goto :goto_0
.end method

.method public Hw(Landroid/os/Bundle;)Landroid/view/LayoutInflater;
    .registers 4

    iget-boolean v0, p0, Landroid/support/v4/app/j;->lp:Z

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->Hw(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/support/v4/app/j;->J8(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/j;->br:Landroid/app/Dialog;

    iget-object v0, p0, Landroid/support/v4/app/j;->br:Landroid/app/Dialog;

    if-eqz v0, :cond_1

    iget v1, p0, Landroid/support/v4/app/j;->Qq:I

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/app/j;->j6(Landroid/app/Dialog;I)V

    iget-object v0, p0, Landroid/support/v4/app/j;->br:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->Mr:Landroid/support/v4/app/q;

    invoke-virtual {v0}, Landroid/support/v4/app/q;->v5()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    goto :goto_0
.end method

.method public J8(Landroid/os/Bundle;)Landroid/app/Dialog;
    .registers 3

    const/4 v0, 0x0

    throw v0
.end method

.method public cn()V
    .registers 3

    invoke-super {p0}, Landroid/support/v4/app/Fragment;->cn()V

    iget-object v0, p0, Landroid/support/v4/app/j;->br:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/support/v4/app/j;->XX:Z

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/app/j;->br:Landroid/app/Dialog;

    :cond_0
    return-void
.end method

.method public ef()V
    .registers 2

    invoke-super {p0}, Landroid/support/v4/app/Fragment;->ef()V

    iget-object v0, p0, Landroid/support/v4/app/j;->br:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->hide()V

    :cond_0
    return-void
.end method

.method public j6(Landroid/app/Dialog;I)V
    .registers 6

    const/4 v2, 0x1

    if-eq p2, v2, :cond_1

    const/4 v0, 0x2

    if-eq p2, v0, :cond_1

    const/4 v0, 0x3

    if-eq p2, v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x18

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    :cond_1
    invoke-virtual {p1, v2}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    goto :goto_0
.end method

.method public j6(Landroid/content/Context;)V
    .registers 3

    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->j6(Landroid/content/Context;)V

    iget-boolean v0, p0, Landroid/support/v4/app/j;->yO:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/j;->kQ:Z

    :cond_0
    return-void
.end method

.method public j6(Landroid/support/v4/app/r;Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/j;->kQ:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/j;->yO:Z

    invoke-virtual {p1}, Landroid/support/v4/app/r;->j6()Landroid/support/v4/app/D;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Landroid/support/v4/app/D;->j6(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/D;

    invoke-virtual {v0}, Landroid/support/v4/app/D;->j6()I

    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 3

    iget-boolean v0, p0, Landroid/support/v4/app/j;->XX:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/v4/app/j;->u7(Z)V

    :cond_0
    return-void
.end method

.method public sG()V
    .registers 3

    invoke-super {p0}, Landroid/support/v4/app/Fragment;->sG()V

    iget-object v0, p0, Landroid/support/v4/app/j;->br:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/support/v4/app/j;->XX:Z

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :cond_0
    return-void
.end method

.method public sh()V
    .registers 2

    invoke-super {p0}, Landroid/support/v4/app/Fragment;->sh()V

    iget-boolean v0, p0, Landroid/support/v4/app/j;->yO:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v4/app/j;->kQ:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/j;->kQ:Z

    :cond_0
    return-void
.end method

.method public tp(Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/support/v4/app/j;->lp:Z

    return-void
.end method

.method u7(Z)V
    .registers 5

    const/4 v2, 0x1

    iget-boolean v0, p0, Landroid/support/v4/app/j;->kQ:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-boolean v2, p0, Landroid/support/v4/app/j;->kQ:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/j;->yO:Z

    iget-object v0, p0, Landroid/support/v4/app/j;->br:Landroid/app/Dialog;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/app/j;->br:Landroid/app/Dialog;

    :cond_1
    iput-boolean v2, p0, Landroid/support/v4/app/j;->XX:Z

    iget v0, p0, Landroid/support/v4/app/j;->OW:I

    if-ltz v0, :cond_2

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->J0()Landroid/support/v4/app/r;

    move-result-object v0

    iget v1, p0, Landroid/support/v4/app/j;->OW:I

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/r;->j6(II)V

    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v4/app/j;->OW:I

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->J0()Landroid/support/v4/app/r;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/r;->j6()Landroid/support/v4/app/D;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/support/v4/app/D;->FH(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/D;

    if-eqz p1, :cond_3

    invoke-virtual {v0}, Landroid/support/v4/app/D;->DW()I

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Landroid/support/v4/app/D;->j6()I

    goto :goto_0
.end method

.method public v5(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->v5(Landroid/os/Bundle;)V

    iget-object v0, p0, Landroid/support/v4/app/j;->br:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "android:savedDialogState"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_0
    iget v0, p0, Landroid/support/v4/app/j;->Qq:I

    if-eqz v0, :cond_1

    const-string v1, "android:style"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_1
    iget v0, p0, Landroid/support/v4/app/j;->sy:I

    if-eqz v0, :cond_2

    const-string v1, "android:theme"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_2
    iget-boolean v0, p0, Landroid/support/v4/app/j;->aj:Z

    if-nez v0, :cond_3

    const-string v1, "android:cancelable"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_3
    iget-boolean v0, p0, Landroid/support/v4/app/j;->lp:Z

    if-nez v0, :cond_4

    const-string v1, "android:showsDialog"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_4
    iget v0, p0, Landroid/support/v4/app/j;->OW:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_5

    const-string v1, "android:backStackId"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_5
    return-void
.end method
