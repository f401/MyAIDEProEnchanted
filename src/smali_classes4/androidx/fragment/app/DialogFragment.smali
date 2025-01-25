.class public Landroidx/fragment/app/DialogFragment;
.super Landroidx/fragment/app/Fragment;

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
.field private mBackStackId:I

.field private mCancelable:Z

.field private mCreatingDialog:Z

.field private mDialog:Landroid/app/Dialog;

.field private mDialogCreated:Z

.field private mDismissRunnable:Ljava/lang/Runnable;

.field private mDismissed:Z

.field private mHandler:Landroid/os/Handler;

.field private mObserver:Landroidx/lifecycle/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/Observer",
            "<",
            "Landroidx/lifecycle/LifecycleOwner;",
            ">;"
        }
    .end annotation
.end field

.field private mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

.field private mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field private mShownByMe:Z

.field private mShowsDialog:Z

.field private mStyle:I

.field private mTheme:I

.field private mViewDestroyed:Z


# direct methods
.method public constructor <init>()V
    .registers 4

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    new-instance v0, Landroidx/fragment/app/DialogFragment$1;

    invoke-direct {v0, p0}, Landroidx/fragment/app/DialogFragment$1;-><init>(Landroidx/fragment/app/DialogFragment;)V

    iput-object v0, p0, Landroidx/fragment/app/DialogFragment;->mDismissRunnable:Ljava/lang/Runnable;

    new-instance v0, Landroidx/fragment/app/DialogFragment$2;

    invoke-direct {v0, p0}, Landroidx/fragment/app/DialogFragment$2;-><init>(Landroidx/fragment/app/DialogFragment;)V

    iput-object v0, p0, Landroidx/fragment/app/DialogFragment;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    new-instance v0, Landroidx/fragment/app/DialogFragment$3;

    invoke-direct {v0, p0}, Landroidx/fragment/app/DialogFragment$3;-><init>(Landroidx/fragment/app/DialogFragment;)V

    iput-object v0, p0, Landroidx/fragment/app/DialogFragment;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    iput v1, p0, Landroidx/fragment/app/DialogFragment;->mStyle:I

    iput v1, p0, Landroidx/fragment/app/DialogFragment;->mTheme:I

    iput-boolean v2, p0, Landroidx/fragment/app/DialogFragment;->mCancelable:Z

    iput-boolean v2, p0, Landroidx/fragment/app/DialogFragment;->mShowsDialog:Z

    const/4 v0, -0x1

    iput v0, p0, Landroidx/fragment/app/DialogFragment;->mBackStackId:I

    new-instance v0, Landroidx/fragment/app/DialogFragment$4;

    invoke-direct {v0, p0}, Landroidx/fragment/app/DialogFragment$4;-><init>(Landroidx/fragment/app/DialogFragment;)V

    iput-object v0, p0, Landroidx/fragment/app/DialogFragment;->mObserver:Landroidx/lifecycle/Observer;

    iput-boolean v1, p0, Landroidx/fragment/app/DialogFragment;->mDialogCreated:Z

    return-void
.end method

.method public constructor <init>(I)V
    .registers 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroidx/fragment/app/Fragment;-><init>(I)V

    new-instance v0, Landroidx/fragment/app/DialogFragment$1;

    invoke-direct {v0, p0}, Landroidx/fragment/app/DialogFragment$1;-><init>(Landroidx/fragment/app/DialogFragment;)V

    iput-object v0, p0, Landroidx/fragment/app/DialogFragment;->mDismissRunnable:Ljava/lang/Runnable;

    new-instance v0, Landroidx/fragment/app/DialogFragment$2;

    invoke-direct {v0, p0}, Landroidx/fragment/app/DialogFragment$2;-><init>(Landroidx/fragment/app/DialogFragment;)V

    iput-object v0, p0, Landroidx/fragment/app/DialogFragment;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    new-instance v0, Landroidx/fragment/app/DialogFragment$3;

    invoke-direct {v0, p0}, Landroidx/fragment/app/DialogFragment$3;-><init>(Landroidx/fragment/app/DialogFragment;)V

    iput-object v0, p0, Landroidx/fragment/app/DialogFragment;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    iput v1, p0, Landroidx/fragment/app/DialogFragment;->mStyle:I

    iput v1, p0, Landroidx/fragment/app/DialogFragment;->mTheme:I

    iput-boolean v2, p0, Landroidx/fragment/app/DialogFragment;->mCancelable:Z

    iput-boolean v2, p0, Landroidx/fragment/app/DialogFragment;->mShowsDialog:Z

    const/4 v0, -0x1

    iput v0, p0, Landroidx/fragment/app/DialogFragment;->mBackStackId:I

    new-instance v0, Landroidx/fragment/app/DialogFragment$4;

    invoke-direct {v0, p0}, Landroidx/fragment/app/DialogFragment$4;-><init>(Landroidx/fragment/app/DialogFragment;)V

    iput-object v0, p0, Landroidx/fragment/app/DialogFragment;->mObserver:Landroidx/lifecycle/Observer;

    iput-boolean v1, p0, Landroidx/fragment/app/DialogFragment;->mDialogCreated:Z

    return-void
.end method

.method static synthetic access$000(Landroidx/fragment/app/DialogFragment;)Landroid/app/Dialog;
    .registers 2

    iget-object v0, p0, Landroidx/fragment/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$100(Landroidx/fragment/app/DialogFragment;)Landroid/content/DialogInterface$OnDismissListener;
    .registers 2

    iget-object v0, p0, Landroidx/fragment/app/DialogFragment;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    return-object v0
.end method

.method static synthetic access$200(Landroidx/fragment/app/DialogFragment;)Z
    .registers 2

    iget-boolean v0, p0, Landroidx/fragment/app/DialogFragment;->mShowsDialog:Z

    return v0
.end method

.method private dismissInternal(ZZ)V
    .registers 6

    const/4 v2, 0x1

    iget-boolean v0, p0, Landroidx/fragment/app/DialogFragment;->mDismissed:Z

    if-eqz v0, :cond_6

    :goto_5
    return-void

    :cond_6
    iput-boolean v2, p0, Landroidx/fragment/app/DialogFragment;->mDismissed:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/fragment/app/DialogFragment;->mShownByMe:Z

    iget-object v0, p0, Landroidx/fragment/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_2b

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v0, p0, Landroidx/fragment/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    if-nez p2, :cond_2b

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Landroidx/fragment/app/DialogFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_3e

    iget-object v0, p0, Landroidx/fragment/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    invoke-virtual {p0, v0}, Landroidx/fragment/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    :cond_2b
    :goto_2b
    iput-boolean v2, p0, Landroidx/fragment/app/DialogFragment;->mViewDestroyed:Z

    iget v0, p0, Landroidx/fragment/app/DialogFragment;->mBackStackId:I

    if-ltz v0, :cond_46

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    iget v1, p0, Landroidx/fragment/app/DialogFragment;->mBackStackId:I

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/FragmentManager;->popBackStack(II)V

    const/4 v0, -0x1

    iput v0, p0, Landroidx/fragment/app/DialogFragment;->mBackStackId:I

    goto :goto_5

    :cond_3e
    iget-object v0, p0, Landroidx/fragment/app/DialogFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroidx/fragment/app/DialogFragment;->mDismissRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_2b

    :cond_46
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    if-eqz p1, :cond_57

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto :goto_5

    :cond_57
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    goto :goto_5
.end method

.method private prepareDialog(Landroid/os/Bundle;)V
    .registers 5

    const/4 v2, 0x0

    iget-boolean v0, p0, Landroidx/fragment/app/DialogFragment;->mShowsDialog:Z

    if-nez v0, :cond_6

    :cond_5
    :goto_5
    return-void

    :cond_6
    iget-boolean v0, p0, Landroidx/fragment/app/DialogFragment;->mDialogCreated:Z

    if-nez v0, :cond_5

    const/4 v0, 0x1

    :try_start_b
    iput-boolean v0, p0, Landroidx/fragment/app/DialogFragment;->mCreatingDialog:Z

    invoke-virtual {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Landroidx/fragment/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    iget-boolean v1, p0, Landroidx/fragment/app/DialogFragment;->mShowsDialog:Z

    if-eqz v1, :cond_46

    iget v1, p0, Landroidx/fragment/app/DialogFragment;->mStyle:I

    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/DialogFragment;->setupDialog(Landroid/app/Dialog;I)V

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_2b

    iget-object v1, p0, Landroidx/fragment/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setOwnerActivity(Landroid/app/Activity;)V

    :cond_2b
    iget-object v0, p0, Landroidx/fragment/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    iget-boolean v1, p0, Landroidx/fragment/app/DialogFragment;->mCancelable:Z

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    iget-object v0, p0, Landroidx/fragment/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    iget-object v1, p0, Landroidx/fragment/app/DialogFragment;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    iget-object v0, p0, Landroidx/fragment/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    iget-object v1, p0, Landroidx/fragment/app/DialogFragment;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/DialogFragment;->mDialogCreated:Z
    :try_end_43
    .catchall {:try_start_b .. :try_end_43} :catchall_4a

    :goto_43
    iput-boolean v2, p0, Landroidx/fragment/app/DialogFragment;->mCreatingDialog:Z

    goto :goto_5

    :cond_46
    const/4 v0, 0x0

    :try_start_47
    iput-object v0, p0, Landroidx/fragment/app/DialogFragment;->mDialog:Landroid/app/Dialog;
    :try_end_49
    .catchall {:try_start_47 .. :try_end_49} :catchall_4a

    goto :goto_43

    :catchall_4a
    move-exception v0

    iput-boolean v2, p0, Landroidx/fragment/app/DialogFragment;->mCreatingDialog:Z

    throw v0
.end method


# virtual methods
.method createFragmentContainer()Landroidx/fragment/app/FragmentContainer;
    .registers 3

    new-instance v0, Landroidx/fragment/app/DialogFragment$5;

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->createFragmentContainer()Landroidx/fragment/app/FragmentContainer;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroidx/fragment/app/DialogFragment$5;-><init>(Landroidx/fragment/app/DialogFragment;Landroidx/fragment/app/FragmentContainer;)V

    return-object v0
.end method

.method public dismiss()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Landroidx/fragment/app/DialogFragment;->dismissInternal(ZZ)V

    return-void
.end method

.method public dismissAllowingStateLoss()V
    .registers 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroidx/fragment/app/DialogFragment;->dismissInternal(ZZ)V

    return-void
.end method

.method public getDialog()Landroid/app/Dialog;
    .registers 2

    iget-object v0, p0, Landroidx/fragment/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method public getShowsDialog()Z
    .registers 2

    iget-boolean v0, p0, Landroidx/fragment/app/DialogFragment;->mShowsDialog:Z

    return v0
.end method

.method public getTheme()I
    .registers 2

    iget v0, p0, Landroidx/fragment/app/DialogFragment;->mTheme:I

    return v0
.end method

.method public isCancelable()Z
    .registers 2

    iget-boolean v0, p0, Landroidx/fragment/app/DialogFragment;->mCancelable:Z

    return v0
.end method

.method public onAttach(Landroid/content/Context;)V
    .registers 4

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getViewLifecycleOwnerLiveData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    iget-object v1, p0, Landroidx/fragment/app/DialogFragment;->mObserver:Landroidx/lifecycle/Observer;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->observeForever(Landroidx/lifecycle/Observer;)V

    iget-boolean v0, p0, Landroidx/fragment/app/DialogFragment;->mShownByMe:Z

    if-nez v0, :cond_13

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/fragment/app/DialogFragment;->mDismissed:Z

    :cond_13
    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 2

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/DialogFragment;->mHandler:Landroid/os/Handler;

    iget v0, p0, Landroidx/fragment/app/DialogFragment;->mContainerId:I

    if-nez v0, :cond_41

    move v0, v1

    :goto_11
    iput-boolean v0, p0, Landroidx/fragment/app/DialogFragment;->mShowsDialog:Z

    if-eqz p1, :cond_40

    const-string v0, "android:style"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroidx/fragment/app/DialogFragment;->mStyle:I

    const-string v0, "android:theme"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroidx/fragment/app/DialogFragment;->mTheme:I

    const-string v0, "android:cancelable"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Landroidx/fragment/app/DialogFragment;->mCancelable:Z

    const-string v0, "android:showsDialog"

    iget-boolean v1, p0, Landroidx/fragment/app/DialogFragment;->mShowsDialog:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Landroidx/fragment/app/DialogFragment;->mShowsDialog:Z

    const-string v0, "android:backStackId"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroidx/fragment/app/DialogFragment;->mBackStackId:I

    :cond_40
    return-void

    :cond_41
    move v0, v2

    goto :goto_11
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .registers 5

    const/4 v0, 0x3

    invoke-static {v0}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_1d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCreateDialog called for DialogFragment "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "FragmentManager"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1d
    new-instance v0, Landroid/app/Dialog;

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getTheme()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method

.method public onDestroyView()V
    .registers 4

    const/4 v2, 0x0

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    iget-object v0, p0, Landroidx/fragment/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_21

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroidx/fragment/app/DialogFragment;->mViewDestroyed:Z

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v0, p0, Landroidx/fragment/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    iget-boolean v0, p0, Landroidx/fragment/app/DialogFragment;->mDismissed:Z

    if-nez v0, :cond_1c

    iget-object v0, p0, Landroidx/fragment/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    invoke-virtual {p0, v0}, Landroidx/fragment/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    :cond_1c
    iput-object v2, p0, Landroidx/fragment/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/fragment/app/DialogFragment;->mDialogCreated:Z

    :cond_21
    return-void
.end method

.method public onDetach()V
    .registers 3

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDetach()V

    iget-boolean v0, p0, Landroidx/fragment/app/DialogFragment;->mShownByMe:Z

    if-nez v0, :cond_e

    iget-boolean v0, p0, Landroidx/fragment/app/DialogFragment;->mDismissed:Z

    if-nez v0, :cond_e

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/DialogFragment;->mDismissed:Z

    :cond_e
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getViewLifecycleOwnerLiveData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    iget-object v1, p0, Landroidx/fragment/app/DialogFragment;->mObserver:Landroidx/lifecycle/Observer;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->removeObserver(Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 5

    const/4 v2, 0x1

    iget-boolean v0, p0, Landroidx/fragment/app/DialogFragment;->mViewDestroyed:Z

    if-nez v0, :cond_25

    const/4 v0, 0x3

    invoke-static {v0}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_22

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDismiss called for DialogFragment "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "FragmentManager"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_22
    invoke-direct {p0, v2, v2}, Landroidx/fragment/app/DialogFragment;->dismissInternal(ZZ)V

    :cond_25
    return-void
.end method

.method onFindViewById(I)Landroid/view/View;
    .registers 3

    iget-object v0, p0, Landroidx/fragment/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_9

    invoke-virtual {v0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    :goto_8
    return-object v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public onGetLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;
    .registers 6

    const/4 v2, 0x2

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onGetLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-boolean v1, p0, Landroidx/fragment/app/DialogFragment;->mShowsDialog:Z

    if-eqz v1, :cond_d

    iget-boolean v1, p0, Landroidx/fragment/app/DialogFragment;->mCreatingDialog:Z

    if-eqz v1, :cond_3f

    :cond_d
    invoke-static {v2}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_3e

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getting layout inflater for DialogFragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Landroidx/fragment/app/DialogFragment;->mShowsDialog:Z

    if-nez v2, :cond_70

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mShowsDialog = false: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "FragmentManager"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3e
    :goto_3e
    return-object v0

    :cond_3f
    invoke-direct {p0, p1}, Landroidx/fragment/app/DialogFragment;->prepareDialog(Landroid/os/Bundle;)V

    invoke-static {v2}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_63

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "get layout inflater for DialogFragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " from dialog context"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "FragmentManager"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_63
    iget-object v1, p0, Landroidx/fragment/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    if-eqz v1, :cond_3e

    invoke-virtual {v1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    goto :goto_3e

    :cond_70
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mCreatingDialog = true: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "FragmentManager"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3e
.end method

.method onHasView()Z
    .registers 2

    iget-boolean v0, p0, Landroidx/fragment/app/DialogFragment;->mDialogCreated:Z

    return v0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Landroidx/fragment/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_10

    const-string v1, "android:savedDialogState"

    invoke-virtual {v0}, Landroid/app/Dialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_10
    iget v0, p0, Landroidx/fragment/app/DialogFragment;->mStyle:I

    if-eqz v0, :cond_19

    const-string v1, "android:style"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_19
    iget v0, p0, Landroidx/fragment/app/DialogFragment;->mTheme:I

    if-eqz v0, :cond_22

    const-string v1, "android:theme"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_22
    iget-boolean v0, p0, Landroidx/fragment/app/DialogFragment;->mCancelable:Z

    if-nez v0, :cond_2b

    const-string v1, "android:cancelable"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_2b
    iget-boolean v0, p0, Landroidx/fragment/app/DialogFragment;->mShowsDialog:Z

    if-nez v0, :cond_34

    const-string v1, "android:showsDialog"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_34
    iget v0, p0, Landroidx/fragment/app/DialogFragment;->mBackStackId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3e

    const-string v1, "android:backStackId"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_3e
    return-void
.end method

.method public onStart()V
    .registers 3

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStart()V

    iget-object v0, p0, Landroidx/fragment/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_d

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroidx/fragment/app/DialogFragment;->mViewDestroyed:Z

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :cond_d
    return-void
.end method

.method public onStop()V
    .registers 2

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStop()V

    iget-object v0, p0, Landroidx/fragment/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Landroid/app/Dialog;->hide()V

    :cond_a
    return-void
.end method

.method public onViewStateRestored(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onViewStateRestored(Landroid/os/Bundle;)V

    iget-object v0, p0, Landroidx/fragment/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_16

    if-eqz p1, :cond_16

    const-string v0, "android:savedDialogState"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_16

    iget-object v1, p0, Landroidx/fragment/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    :cond_16
    return-void
.end method

.method performCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)V
    .registers 6

    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->performCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)V

    iget-object v0, p0, Landroidx/fragment/app/DialogFragment;->mView:Landroid/view/View;

    if-nez v0, :cond_1a

    iget-object v0, p0, Landroidx/fragment/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_1a

    if-eqz p3, :cond_1a

    const-string v0, "android:savedDialogState"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1a

    iget-object v1, p0, Landroidx/fragment/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    :cond_1a
    return-void
.end method

.method public final requireDialog()Landroid/app/Dialog;
    .registers 3

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_7

    return-object v0

    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DialogFragment "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " does not have a Dialog."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setCancelable(Z)V
    .registers 3

    iput-boolean p1, p0, Landroidx/fragment/app/DialogFragment;->mCancelable:Z

    iget-object v0, p0, Landroidx/fragment/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_9

    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setCancelable(Z)V

    :cond_9
    return-void
.end method

.method public setShowsDialog(Z)V
    .registers 2

    iput-boolean p1, p0, Landroidx/fragment/app/DialogFragment;->mShowsDialog:Z

    return-void
.end method

.method public setStyle(II)V
    .registers 6

    const/4 v2, 0x2

    invoke-static {v2}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_2d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Setting style and theme for DialogFragment "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "FragmentManager"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2d
    iput p1, p0, Landroidx/fragment/app/DialogFragment;->mStyle:I

    if-eq p1, v2, :cond_34

    const/4 v0, 0x3

    if-ne p1, v0, :cond_39

    :cond_34
    const v0, 0x1030059

    iput v0, p0, Landroidx/fragment/app/DialogFragment;->mTheme:I

    :cond_39
    if-eqz p2, :cond_3d

    iput p2, p0, Landroidx/fragment/app/DialogFragment;->mTheme:I

    :cond_3d
    return-void
.end method

.method public setupDialog(Landroid/app/Dialog;I)V
    .registers 6

    const/4 v2, 0x1

    if-eq p2, v2, :cond_15

    const/4 v0, 0x2

    if-eq p2, v0, :cond_15

    const/4 v0, 0x3

    if-eq p2, v0, :cond_a

    :goto_9
    return-void

    :cond_a
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_15

    const/16 v1, 0x18

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    :cond_15
    invoke-virtual {p1, v2}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    goto :goto_9
.end method

.method public show(Landroidx/fragment/app/FragmentTransaction;Ljava/lang/String;)I
    .registers 5

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroidx/fragment/app/DialogFragment;->mDismissed:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/DialogFragment;->mShownByMe:Z

    invoke-virtual {p1, p0, p2}, Landroidx/fragment/app/FragmentTransaction;->add(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    iput-boolean v1, p0, Landroidx/fragment/app/DialogFragment;->mViewDestroyed:Z

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    move-result v0

    iput v0, p0, Landroidx/fragment/app/DialogFragment;->mBackStackId:I

    return v0
.end method

.method public show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/fragment/app/DialogFragment;->mDismissed:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/DialogFragment;->mShownByMe:Z

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Landroidx/fragment/app/FragmentTransaction;->add(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    return-void
.end method

.method public showNow(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/fragment/app/DialogFragment;->mDismissed:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/DialogFragment;->mShownByMe:Z

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Landroidx/fragment/app/FragmentTransaction;->add(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commitNow()V

    return-void
.end method
