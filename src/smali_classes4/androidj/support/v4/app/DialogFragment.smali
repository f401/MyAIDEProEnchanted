.class public Landroidj/support/v4/app/DialogFragment;
.super Landroidj/support/v4/app/Fragment;

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# static fields
.field private static final SAVED_BACK_STACK_ID:Ljava/lang/String; = "android:backStackId"

.field private static final SAVED_CANCELABLE:Ljava/lang/String; = "android:cancelable"

.field private static final SAVED_DIALOG_STATE_TAG:Ljava/lang/String; = "android:savedDialogState"

.field private static final SAVED_SHOWS_DIALOG:Ljava/lang/String; = "android:showsDialog"

.field private static final SAVED_STYLE:Ljava/lang/String; = "android:style"

.field private static final SAVED_THEME:Ljava/lang/String; = "android:theme"

.field public static final STYLE_NORMAL:I = 0x0

.field public static final STYLE_NO_FRAME:I = 0x2

.field public static final STYLE_NO_INPUT:I = 0x3

.field public static final STYLE_NO_TITLE:I = 0x1


# instance fields
.field mBackStackId:I

.field mCancelable:Z

.field mDialog:Landroid/app/Dialog;

.field mDismissed:Z

.field mShownByMe:Z

.field mShowsDialog:Z

.field mStyle:I

.field mTheme:I

.field mViewDestroyed:Z


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroidj/support/v4/app/Fragment;-><init>()V

    iput v0, p0, Landroidj/support/v4/app/DialogFragment;->mStyle:I

    iput v0, p0, Landroidj/support/v4/app/DialogFragment;->mTheme:I

    iput-boolean v1, p0, Landroidj/support/v4/app/DialogFragment;->mCancelable:Z

    iput-boolean v1, p0, Landroidj/support/v4/app/DialogFragment;->mShowsDialog:Z

    const/4 v0, -0x1

    iput v0, p0, Landroidj/support/v4/app/DialogFragment;->mBackStackId:I

    return-void
.end method


# virtual methods
.method public dismiss()V
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidj/support/v4/app/DialogFragment;->dismissInternal(Z)V

    return-void
.end method

.method public dismissAllowingStateLoss()V
    .registers 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidj/support/v4/app/DialogFragment;->dismissInternal(Z)V

    return-void
.end method

.method dismissInternal(Z)V
    .registers 5

    const/4 v2, 0x1

    iget-boolean v0, p0, Landroidj/support/v4/app/DialogFragment;->mDismissed:Z

    if-eqz v0, :cond_6

    :goto_5
    return-void

    :cond_6
    iput-boolean v2, p0, Landroidj/support/v4/app/DialogFragment;->mDismissed:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidj/support/v4/app/DialogFragment;->mShownByMe:Z

    iget-object v0, p0, Landroidj/support/v4/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_17

    iget-object v0, p0, Landroidj/support/v4/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidj/support/v4/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    :cond_17
    iput-boolean v2, p0, Landroidj/support/v4/app/DialogFragment;->mViewDestroyed:Z

    iget v0, p0, Landroidj/support/v4/app/DialogFragment;->mBackStackId:I

    if-ltz v0, :cond_2a

    invoke-virtual {p0}, Landroidj/support/v4/app/DialogFragment;->getFragmentManager()Landroidj/support/v4/app/FragmentManager;

    move-result-object v0

    iget v1, p0, Landroidj/support/v4/app/DialogFragment;->mBackStackId:I

    invoke-virtual {v0, v1, v2}, Landroidj/support/v4/app/FragmentManager;->popBackStack(II)V

    const/4 v0, -0x1

    iput v0, p0, Landroidj/support/v4/app/DialogFragment;->mBackStackId:I

    goto :goto_5

    :cond_2a
    invoke-virtual {p0}, Landroidj/support/v4/app/DialogFragment;->getFragmentManager()Landroidj/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidj/support/v4/app/FragmentManager;->beginTransaction()Landroidj/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidj/support/v4/app/FragmentTransaction;->remove(Landroidj/support/v4/app/Fragment;)Landroidj/support/v4/app/FragmentTransaction;

    if-eqz p1, :cond_3b

    invoke-virtual {v0}, Landroidj/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto :goto_5

    :cond_3b
    invoke-virtual {v0}, Landroidj/support/v4/app/FragmentTransaction;->commit()I

    goto :goto_5
.end method

.method public getDialog()Landroid/app/Dialog;
    .registers 2

    iget-object v0, p0, Landroidj/support/v4/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method public getShowsDialog()Z
    .registers 2

    iget-boolean v0, p0, Landroidj/support/v4/app/DialogFragment;->mShowsDialog:Z

    return v0
.end method

.method public getTheme()I
    .registers 2
    .annotation build Landroidj/support/annotation/StyleRes;
    .end annotation

    iget v0, p0, Landroidj/support/v4/app/DialogFragment;->mTheme:I

    return v0
.end method

.method public isCancelable()Z
    .registers 2

    iget-boolean v0, p0, Landroidj/support/v4/app/DialogFragment;->mCancelable:Z

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Landroidj/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    iget-boolean v0, p0, Landroidj/support/v4/app/DialogFragment;->mShowsDialog:Z

    if-nez v0, :cond_8

    :cond_7
    :goto_7
    return-void

    :cond_8
    invoke-virtual {p0}, Landroidj/support/v4/app/DialogFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_21

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_1c

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "DialogFragment can not be attached to a container view"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1c
    iget-object v1, p0, Landroidj/support/v4/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    :cond_21
    invoke-virtual {p0}, Landroidj/support/v4/app/DialogFragment;->getActivity()Landroidj/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_2c

    iget-object v1, p0, Landroidj/support/v4/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setOwnerActivity(Landroid/app/Activity;)V

    :cond_2c
    iget-object v0, p0, Landroidj/support/v4/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    iget-boolean v1, p0, Landroidj/support/v4/app/DialogFragment;->mCancelable:Z

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    iget-object v0, p0, Landroidj/support/v4/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0, p0}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    iget-object v0, p0, Landroidj/support/v4/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    if-eqz p1, :cond_7

    const-string v0, "android:savedDialogState"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v1, p0, Landroidj/support/v4/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    goto :goto_7
.end method

.method public onAttach(Landroid/content/Context;)V
    .registers 3

    invoke-super {p0, p1}, Landroidj/support/v4/app/Fragment;->onAttach(Landroid/content/Context;)V

    iget-boolean v0, p0, Landroidj/support/v4/app/DialogFragment;->mShownByMe:Z

    if-nez v0, :cond_a

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidj/support/v4/app/DialogFragment;->mDismissed:Z

    :cond_a
    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 2

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 5
    .param p1  # Landroid/os/Bundle;
        .annotation build Landroidj/support/annotation/Nullable;
        .end annotation
    .end param

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-super {p0, p1}, Landroidj/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    iget v0, p0, Landroidj/support/v4/app/DialogFragment;->mContainerId:I

    if-nez v0, :cond_3a

    move v0, v1

    :goto_a
    iput-boolean v0, p0, Landroidj/support/v4/app/DialogFragment;->mShowsDialog:Z

    if-eqz p1, :cond_39

    const-string v0, "android:style"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroidj/support/v4/app/DialogFragment;->mStyle:I

    const-string v0, "android:theme"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroidj/support/v4/app/DialogFragment;->mTheme:I

    const-string v0, "android:cancelable"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Landroidj/support/v4/app/DialogFragment;->mCancelable:Z

    const-string v0, "android:showsDialog"

    iget-boolean v1, p0, Landroidj/support/v4/app/DialogFragment;->mShowsDialog:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Landroidj/support/v4/app/DialogFragment;->mShowsDialog:Z

    const-string v0, "android:backStackId"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroidj/support/v4/app/DialogFragment;->mBackStackId:I

    :cond_39
    return-void

    :cond_3a
    move v0, v2

    goto :goto_a
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .registers 5
    .annotation build Landroidj/support/annotation/NonNull;
    .end annotation

    new-instance v0, Landroid/app/Dialog;

    invoke-virtual {p0}, Landroidj/support/v4/app/DialogFragment;->getActivity()Landroidj/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p0}, Landroidj/support/v4/app/DialogFragment;->getTheme()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method

.method public onDestroyView()V
    .registers 2

    invoke-super {p0}, Landroidj/support/v4/app/Fragment;->onDestroyView()V

    iget-object v0, p0, Landroidj/support/v4/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidj/support/v4/app/DialogFragment;->mViewDestroyed:Z

    iget-object v0, p0, Landroidj/support/v4/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidj/support/v4/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    :cond_12
    return-void
.end method

.method public onDetach()V
    .registers 2

    invoke-super {p0}, Landroidj/support/v4/app/Fragment;->onDetach()V

    iget-boolean v0, p0, Landroidj/support/v4/app/DialogFragment;->mShownByMe:Z

    if-nez v0, :cond_e

    iget-boolean v0, p0, Landroidj/support/v4/app/DialogFragment;->mDismissed:Z

    if-nez v0, :cond_e

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidj/support/v4/app/DialogFragment;->mDismissed:Z

    :cond_e
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 3

    iget-boolean v0, p0, Landroidj/support/v4/app/DialogFragment;->mViewDestroyed:Z

    if-nez v0, :cond_8

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidj/support/v4/app/DialogFragment;->dismissInternal(Z)V

    :cond_8
    return-void
.end method

.method public onGetLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;
    .registers 4

    iget-boolean v0, p0, Landroidj/support/v4/app/DialogFragment;->mShowsDialog:Z

    if-nez v0, :cond_9

    invoke-super {p0, p1}, Landroidj/support/v4/app/Fragment;->onGetLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object v0

    :goto_8
    return-object v0

    :cond_9
    invoke-virtual {p0, p1}, Landroidj/support/v4/app/DialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Landroidj/support/v4/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    iget-object v0, p0, Landroidj/support/v4/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_29

    iget-object v0, p0, Landroidj/support/v4/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    iget v1, p0, Landroidj/support/v4/app/DialogFragment;->mStyle:I

    invoke-virtual {p0, v0, v1}, Landroidj/support/v4/app/DialogFragment;->setupDialog(Landroid/app/Dialog;I)V

    iget-object v0, p0, Landroidj/support/v4/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    goto :goto_8

    :cond_29
    iget-object v0, p0, Landroidj/support/v4/app/DialogFragment;->mHost:Landroidj/support/v4/app/FragmentHostCallback;

    invoke-virtual {v0}, Landroidj/support/v4/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    goto :goto_8
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Landroidj/support/v4/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Landroidj/support/v4/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_14

    iget-object v0, p0, Landroidj/support/v4/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_14

    const-string v1, "android:savedDialogState"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_14
    iget v0, p0, Landroidj/support/v4/app/DialogFragment;->mStyle:I

    if-eqz v0, :cond_1f

    const-string v0, "android:style"

    iget v1, p0, Landroidj/support/v4/app/DialogFragment;->mStyle:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_1f
    iget v0, p0, Landroidj/support/v4/app/DialogFragment;->mTheme:I

    if-eqz v0, :cond_2a

    const-string v0, "android:theme"

    iget v1, p0, Landroidj/support/v4/app/DialogFragment;->mTheme:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_2a
    iget-boolean v0, p0, Landroidj/support/v4/app/DialogFragment;->mCancelable:Z

    if-nez v0, :cond_35

    const-string v0, "android:cancelable"

    iget-boolean v1, p0, Landroidj/support/v4/app/DialogFragment;->mCancelable:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_35
    iget-boolean v0, p0, Landroidj/support/v4/app/DialogFragment;->mShowsDialog:Z

    if-nez v0, :cond_40

    const-string v0, "android:showsDialog"

    iget-boolean v1, p0, Landroidj/support/v4/app/DialogFragment;->mShowsDialog:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_40
    iget v0, p0, Landroidj/support/v4/app/DialogFragment;->mBackStackId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_4c

    const-string v0, "android:backStackId"

    iget v1, p0, Landroidj/support/v4/app/DialogFragment;->mBackStackId:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_4c
    return-void
.end method

.method public onStart()V
    .registers 2

    invoke-super {p0}, Landroidj/support/v4/app/Fragment;->onStart()V

    iget-object v0, p0, Landroidj/support/v4/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_f

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidj/support/v4/app/DialogFragment;->mViewDestroyed:Z

    iget-object v0, p0, Landroidj/support/v4/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :cond_f
    return-void
.end method

.method public onStop()V
    .registers 2

    invoke-super {p0}, Landroidj/support/v4/app/Fragment;->onStop()V

    iget-object v0, p0, Landroidj/support/v4/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_c

    iget-object v0, p0, Landroidj/support/v4/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->hide()V

    :cond_c
    return-void
.end method

.method public setCancelable(Z)V
    .registers 3

    iput-boolean p1, p0, Landroidj/support/v4/app/DialogFragment;->mCancelable:Z

    iget-object v0, p0, Landroidj/support/v4/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroidj/support/v4/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setCancelable(Z)V

    :cond_b
    return-void
.end method

.method public setShowsDialog(Z)V
    .registers 2

    iput-boolean p1, p0, Landroidj/support/v4/app/DialogFragment;->mShowsDialog:Z

    return-void
.end method

.method public setStyle(II)V
    .registers 5
    .param p2  # I
        .annotation build Landroidj/support/annotation/StyleRes;
        .end annotation
    .end param

    iput p1, p0, Landroidj/support/v4/app/DialogFragment;->mStyle:I

    iget v0, p0, Landroidj/support/v4/app/DialogFragment;->mStyle:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_c

    iget v0, p0, Landroidj/support/v4/app/DialogFragment;->mStyle:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_11

    :cond_c
    const v0, 0x1030059

    iput v0, p0, Landroidj/support/v4/app/DialogFragment;->mTheme:I

    :cond_11
    if-eqz p2, :cond_15

    iput p2, p0, Landroidj/support/v4/app/DialogFragment;->mTheme:I

    :cond_15
    return-void
.end method

.method public setupDialog(Landroid/app/Dialog;I)V
    .registers 5
    .annotation build Landroidj/support/annotation/RestrictTo;
        value = {
            .enum Landroidj/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidj/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    packed-switch p2, :pswitch_data_12

    :goto_3
    return-void

    :pswitch_4  #0x3
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x18

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    :pswitch_d  #0x1, 0x2
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    goto :goto_3

    :pswitch_data_12
    .packed-switch 0x1
        :pswitch_d  #00000001
        :pswitch_d  #00000002
        :pswitch_4  #00000003
    .end packed-switch
.end method

.method public show(Landroidj/support/v4/app/FragmentTransaction;Ljava/lang/String;)I
    .registers 5

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroidj/support/v4/app/DialogFragment;->mDismissed:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidj/support/v4/app/DialogFragment;->mShownByMe:Z

    invoke-virtual {p1, p0, p2}, Landroidj/support/v4/app/FragmentTransaction;->add(Landroidj/support/v4/app/Fragment;Ljava/lang/String;)Landroidj/support/v4/app/FragmentTransaction;

    iput-boolean v1, p0, Landroidj/support/v4/app/DialogFragment;->mViewDestroyed:Z

    invoke-virtual {p1}, Landroidj/support/v4/app/FragmentTransaction;->commit()I

    move-result v0

    iput v0, p0, Landroidj/support/v4/app/DialogFragment;->mBackStackId:I

    iget v0, p0, Landroidj/support/v4/app/DialogFragment;->mBackStackId:I

    return v0
.end method

.method public show(Landroidj/support/v4/app/FragmentManager;Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidj/support/v4/app/DialogFragment;->mDismissed:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidj/support/v4/app/DialogFragment;->mShownByMe:Z

    invoke-virtual {p1}, Landroidj/support/v4/app/FragmentManager;->beginTransaction()Landroidj/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Landroidj/support/v4/app/FragmentTransaction;->add(Landroidj/support/v4/app/Fragment;Ljava/lang/String;)Landroidj/support/v4/app/FragmentTransaction;

    invoke-virtual {v0}, Landroidj/support/v4/app/FragmentTransaction;->commit()I

    return-void
.end method
