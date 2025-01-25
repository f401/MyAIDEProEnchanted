.class public abstract Landroidj/support/v4/app/FragmentHostCallback;
.super Landroidj/support/v4/app/FragmentContainer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Landroidj/support/v4/app/FragmentContainer;"
    }
.end annotation


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private mAllLoaderManagers:Landroidj/support/v4/util/SimpleArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidj/support/v4/util/SimpleArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroidj/support/v4/app/LoaderManager;",
            ">;"
        }
    .end annotation
.end field

.field private mCheckedForLoaderManager:Z

.field final mContext:Landroid/content/Context;

.field final mFragmentManager:Landroidj/support/v4/app/FragmentManagerImpl;

.field private final mHandler:Landroid/os/Handler;

.field private mLoaderManager:Landroidj/support/v4/app/LoaderManagerImpl;

.field private mLoadersStarted:Z

.field private mRetainLoaders:Z

.field final mWindowAnimations:I


# direct methods
.method constructor <init>(Landroid/app/Activity;Landroid/content/Context;Landroid/os/Handler;I)V
    .registers 6

    invoke-direct {p0}, Landroidj/support/v4/app/FragmentContainer;-><init>()V

    new-instance v0, Landroidj/support/v4/app/FragmentManagerImpl;

    invoke-direct {v0}, Landroidj/support/v4/app/FragmentManagerImpl;-><init>()V

    iput-object v0, p0, Landroidj/support/v4/app/FragmentHostCallback;->mFragmentManager:Landroidj/support/v4/app/FragmentManagerImpl;

    iput-object p1, p0, Landroidj/support/v4/app/FragmentHostCallback;->mActivity:Landroid/app/Activity;

    iput-object p2, p0, Landroidj/support/v4/app/FragmentHostCallback;->mContext:Landroid/content/Context;

    iput-object p3, p0, Landroidj/support/v4/app/FragmentHostCallback;->mHandler:Landroid/os/Handler;

    iput p4, p0, Landroidj/support/v4/app/FragmentHostCallback;->mWindowAnimations:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;I)V
    .registers 5

    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_b

    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    :goto_7
    invoke-direct {p0, v0, p1, p2, p3}, Landroidj/support/v4/app/FragmentHostCallback;-><init>(Landroid/app/Activity;Landroid/content/Context;Landroid/os/Handler;I)V

    return-void

    :cond_b
    const/4 v0, 0x0

    goto :goto_7
.end method

.method constructor <init>(Landroidj/support/v4/app/FragmentActivity;)V
    .registers 4

    iget-object v0, p1, Landroidj/support/v4/app/FragmentActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-direct {p0, p1, p1, v0, v1}, Landroidj/support/v4/app/FragmentHostCallback;-><init>(Landroid/app/Activity;Landroid/content/Context;Landroid/os/Handler;I)V

    return-void
.end method


# virtual methods
.method doLoaderDestroy()V
    .registers 2

    iget-object v0, p0, Landroidj/support/v4/app/FragmentHostCallback;->mLoaderManager:Landroidj/support/v4/app/LoaderManagerImpl;

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    iget-object v0, p0, Landroidj/support/v4/app/FragmentHostCallback;->mLoaderManager:Landroidj/support/v4/app/LoaderManagerImpl;

    invoke-virtual {v0}, Landroidj/support/v4/app/LoaderManagerImpl;->doDestroy()V

    goto :goto_4
.end method

.method doLoaderRetain()V
    .registers 2

    iget-object v0, p0, Landroidj/support/v4/app/FragmentHostCallback;->mLoaderManager:Landroidj/support/v4/app/LoaderManagerImpl;

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    iget-object v0, p0, Landroidj/support/v4/app/FragmentHostCallback;->mLoaderManager:Landroidj/support/v4/app/LoaderManagerImpl;

    invoke-virtual {v0}, Landroidj/support/v4/app/LoaderManagerImpl;->doRetain()V

    goto :goto_4
.end method

.method doLoaderStart()V
    .registers 5

    const/4 v3, 0x1

    iget-boolean v0, p0, Landroidj/support/v4/app/FragmentHostCallback;->mLoadersStarted:Z

    if-eqz v0, :cond_6

    :goto_5
    return-void

    :cond_6
    iput-boolean v3, p0, Landroidj/support/v4/app/FragmentHostCallback;->mLoadersStarted:Z

    iget-object v0, p0, Landroidj/support/v4/app/FragmentHostCallback;->mLoaderManager:Landroidj/support/v4/app/LoaderManagerImpl;

    if-eqz v0, :cond_14

    iget-object v0, p0, Landroidj/support/v4/app/FragmentHostCallback;->mLoaderManager:Landroidj/support/v4/app/LoaderManagerImpl;

    invoke-virtual {v0}, Landroidj/support/v4/app/LoaderManagerImpl;->doStart()V

    :cond_11
    :goto_11
    iput-boolean v3, p0, Landroidj/support/v4/app/FragmentHostCallback;->mCheckedForLoaderManager:Z

    goto :goto_5

    :cond_14
    iget-boolean v0, p0, Landroidj/support/v4/app/FragmentHostCallback;->mCheckedForLoaderManager:Z

    if-nez v0, :cond_11

    const-string v0, "(root)"

    iget-boolean v1, p0, Landroidj/support/v4/app/FragmentHostCallback;->mLoadersStarted:Z

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroidj/support/v4/app/FragmentHostCallback;->getLoaderManager(Ljava/lang/String;ZZ)Landroidj/support/v4/app/LoaderManagerImpl;

    move-result-object v0

    iput-object v0, p0, Landroidj/support/v4/app/FragmentHostCallback;->mLoaderManager:Landroidj/support/v4/app/LoaderManagerImpl;

    iget-object v0, p0, Landroidj/support/v4/app/FragmentHostCallback;->mLoaderManager:Landroidj/support/v4/app/LoaderManagerImpl;

    if-eqz v0, :cond_11

    iget-object v0, p0, Landroidj/support/v4/app/FragmentHostCallback;->mLoaderManager:Landroidj/support/v4/app/LoaderManagerImpl;

    iget-boolean v0, v0, Landroidj/support/v4/app/LoaderManagerImpl;->mStarted:Z

    if-nez v0, :cond_11

    iget-object v0, p0, Landroidj/support/v4/app/FragmentHostCallback;->mLoaderManager:Landroidj/support/v4/app/LoaderManagerImpl;

    invoke-virtual {v0}, Landroidj/support/v4/app/LoaderManagerImpl;->doStart()V

    goto :goto_11
.end method

.method doLoaderStop(Z)V
    .registers 3

    iput-boolean p1, p0, Landroidj/support/v4/app/FragmentHostCallback;->mRetainLoaders:Z

    iget-object v0, p0, Landroidj/support/v4/app/FragmentHostCallback;->mLoaderManager:Landroidj/support/v4/app/LoaderManagerImpl;

    if-nez v0, :cond_7

    :cond_6
    :goto_6
    return-void

    :cond_7
    iget-boolean v0, p0, Landroidj/support/v4/app/FragmentHostCallback;->mLoadersStarted:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidj/support/v4/app/FragmentHostCallback;->mLoadersStarted:Z

    if-eqz p1, :cond_16

    iget-object v0, p0, Landroidj/support/v4/app/FragmentHostCallback;->mLoaderManager:Landroidj/support/v4/app/LoaderManagerImpl;

    invoke-virtual {v0}, Landroidj/support/v4/app/LoaderManagerImpl;->doRetain()V

    goto :goto_6

    :cond_16
    iget-object v0, p0, Landroidj/support/v4/app/FragmentHostCallback;->mLoaderManager:Landroidj/support/v4/app/LoaderManagerImpl;

    invoke-virtual {v0}, Landroidj/support/v4/app/LoaderManagerImpl;->doStop()V

    goto :goto_6
.end method

.method dumpLoaders(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 8

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mLoadersStarted="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroidj/support/v4/app/FragmentHostCallback;->mLoadersStarted:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    iget-object v0, p0, Landroidj/support/v4/app/FragmentHostCallback;->mLoaderManager:Landroidj/support/v4/app/LoaderManagerImpl;

    if-eqz v0, :cond_43

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Loader Manager "

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroidj/support/v4/app/FragmentHostCallback;->mLoaderManager:Landroidj/support/v4/app/LoaderManagerImpl;

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, ":"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Landroidj/support/v4/app/FragmentHostCallback;->mLoaderManager:Landroidj/support/v4/app/LoaderManagerImpl;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3, p4}, Landroidj/support/v4/app/LoaderManagerImpl;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :cond_43
    return-void
.end method

.method getActivity()Landroid/app/Activity;
    .registers 2

    iget-object v0, p0, Landroidj/support/v4/app/FragmentHostCallback;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method getContext()Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Landroidj/support/v4/app/FragmentHostCallback;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method getFragmentManagerImpl()Landroidj/support/v4/app/FragmentManagerImpl;
    .registers 2

    iget-object v0, p0, Landroidj/support/v4/app/FragmentHostCallback;->mFragmentManager:Landroidj/support/v4/app/FragmentManagerImpl;

    return-object v0
.end method

.method getHandler()Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Landroidj/support/v4/app/FragmentHostCallback;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method getLoaderManager(Ljava/lang/String;ZZ)Landroidj/support/v4/app/LoaderManagerImpl;
    .registers 6

    iget-object v0, p0, Landroidj/support/v4/app/FragmentHostCallback;->mAllLoaderManagers:Landroidj/support/v4/util/SimpleArrayMap;

    if-nez v0, :cond_b

    new-instance v0, Landroidj/support/v4/util/SimpleArrayMap;

    invoke-direct {v0}, Landroidj/support/v4/util/SimpleArrayMap;-><init>()V

    iput-object v0, p0, Landroidj/support/v4/app/FragmentHostCallback;->mAllLoaderManagers:Landroidj/support/v4/util/SimpleArrayMap;

    :cond_b
    iget-object v0, p0, Landroidj/support/v4/app/FragmentHostCallback;->mAllLoaderManagers:Landroidj/support/v4/util/SimpleArrayMap;

    invoke-virtual {v0, p1}, Landroidj/support/v4/util/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidj/support/v4/app/LoaderManagerImpl;

    if-nez v0, :cond_22

    if-eqz p3, :cond_22

    new-instance v0, Landroidj/support/v4/app/LoaderManagerImpl;

    invoke-direct {v0, p1, p0, p2}, Landroidj/support/v4/app/LoaderManagerImpl;-><init>(Ljava/lang/String;Landroidj/support/v4/app/FragmentHostCallback;Z)V

    iget-object v1, p0, Landroidj/support/v4/app/FragmentHostCallback;->mAllLoaderManagers:Landroidj/support/v4/util/SimpleArrayMap;

    invoke-virtual {v1, p1, v0}, Landroidj/support/v4/util/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_21
    :goto_21
    return-object v0

    :cond_22
    if-eqz p2, :cond_21

    if-eqz v0, :cond_21

    iget-boolean v1, v0, Landroidj/support/v4/app/LoaderManagerImpl;->mStarted:Z

    if-nez v1, :cond_21

    invoke-virtual {v0}, Landroidj/support/v4/app/LoaderManagerImpl;->doStart()V

    goto :goto_21
.end method

.method getLoaderManagerImpl()Landroidj/support/v4/app/LoaderManagerImpl;
    .registers 4

    const/4 v2, 0x1

    iget-object v0, p0, Landroidj/support/v4/app/FragmentHostCallback;->mLoaderManager:Landroidj/support/v4/app/LoaderManagerImpl;

    if-eqz v0, :cond_8

    iget-object v0, p0, Landroidj/support/v4/app/FragmentHostCallback;->mLoaderManager:Landroidj/support/v4/app/LoaderManagerImpl;

    :goto_7
    return-object v0

    :cond_8
    iput-boolean v2, p0, Landroidj/support/v4/app/FragmentHostCallback;->mCheckedForLoaderManager:Z

    const-string v0, "(root)"

    iget-boolean v1, p0, Landroidj/support/v4/app/FragmentHostCallback;->mLoadersStarted:Z

    invoke-virtual {p0, v0, v1, v2}, Landroidj/support/v4/app/FragmentHostCallback;->getLoaderManager(Ljava/lang/String;ZZ)Landroidj/support/v4/app/LoaderManagerImpl;

    move-result-object v0

    iput-object v0, p0, Landroidj/support/v4/app/FragmentHostCallback;->mLoaderManager:Landroidj/support/v4/app/LoaderManagerImpl;

    iget-object v0, p0, Landroidj/support/v4/app/FragmentHostCallback;->mLoaderManager:Landroidj/support/v4/app/LoaderManagerImpl;

    goto :goto_7
.end method

.method getRetainLoaders()Z
    .registers 2

    iget-boolean v0, p0, Landroidj/support/v4/app/FragmentHostCallback;->mRetainLoaders:Z

    return v0
.end method

.method inactivateFragment(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Landroidj/support/v4/app/FragmentHostCallback;->mAllLoaderManagers:Landroidj/support/v4/util/SimpleArrayMap;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Landroidj/support/v4/app/FragmentHostCallback;->mAllLoaderManagers:Landroidj/support/v4/util/SimpleArrayMap;

    invoke-virtual {v0, p1}, Landroidj/support/v4/util/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidj/support/v4/app/LoaderManagerImpl;

    if-eqz v0, :cond_1a

    iget-boolean v1, v0, Landroidj/support/v4/app/LoaderManagerImpl;->mRetaining:Z

    if-nez v1, :cond_1a

    invoke-virtual {v0}, Landroidj/support/v4/app/LoaderManagerImpl;->doDestroy()V

    iget-object v0, p0, Landroidj/support/v4/app/FragmentHostCallback;->mAllLoaderManagers:Landroidj/support/v4/util/SimpleArrayMap;

    invoke-virtual {v0, p1}, Landroidj/support/v4/util/SimpleArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1a
    return-void
.end method

.method onAttachFragment(Landroidj/support/v4/app/Fragment;)V
    .registers 2

    return-void
.end method

.method public onDump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 5

    return-void
.end method

.method public onFindViewById(I)Landroid/view/View;
    .registers 3
    .annotation build Landroidj/support/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract onGetHost()Ljava/lang/Object;
    .annotation build Landroidj/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation
.end method

.method public onGetLayoutInflater()Landroid/view/LayoutInflater;
    .registers 3

    iget-object v0, p0, Landroidj/support/v4/app/FragmentHostCallback;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    return-object v0
.end method

.method public onGetWindowAnimations()I
    .registers 2

    iget v0, p0, Landroidj/support/v4/app/FragmentHostCallback;->mWindowAnimations:I

    return v0
.end method

.method public onHasView()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public onHasWindowAnimations()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public onRequestPermissionsFromFragment(Landroidj/support/v4/app/Fragment;[Ljava/lang/String;I)V
    .registers 4
    .param p1  # Landroidj/support/v4/app/Fragment;
        .annotation build Landroidj/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # [Ljava/lang/String;
        .annotation build Landroidj/support/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public onShouldSaveFragmentState(Landroidj/support/v4/app/Fragment;)Z
    .registers 3

    const/4 v0, 0x1

    return v0
.end method

.method public onShouldShowRequestPermissionRationale(Ljava/lang/String;)Z
    .registers 3
    .param p1  # Ljava/lang/String;
        .annotation build Landroidj/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    return v0
.end method

.method public onStartActivityFromFragment(Landroidj/support/v4/app/Fragment;Landroid/content/Intent;I)V
    .registers 5

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroidj/support/v4/app/FragmentHostCallback;->onStartActivityFromFragment(Landroidj/support/v4/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)V

    return-void
.end method

.method public onStartActivityFromFragment(Landroidj/support/v4/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)V
    .registers 7
    .param p4  # Landroid/os/Bundle;
        .annotation build Landroidj/support/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, -0x1

    if-eq p3, v0, :cond_b

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Starting activity with a requestCode requires a FragmentActivity host"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    iget-object v0, p0, Landroidj/support/v4/app/FragmentHostCallback;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public onStartIntentSenderFromFragment(Landroidj/support/v4/app/Fragment;Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    .registers 17
    .param p4  # Landroid/content/Intent;
        .annotation build Landroidj/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation

    const/4 v0, -0x1

    if-eq p3, v0, :cond_b

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Starting intent sender with a requestCode requires a FragmentActivity host"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    iget-object v0, p0, Landroidj/support/v4/app/FragmentHostCallback;->mActivity:Landroid/app/Activity;

    move-object v1, p2

    move v2, p3

    move-object v3, p4

    move v4, p5

    move v5, p6

    move v6, p7

    move-object/from16 v7, p8

    invoke-static/range {v0 .. v7}, Landroidj/support/v4/app/ActivityCompat;->startIntentSenderForResult(Landroid/app/Activity;Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V

    return-void
.end method

.method public onSupportInvalidateOptionsMenu()V
    .registers 1

    return-void
.end method

.method reportLoaderStart()V
    .registers 5

    iget-object v0, p0, Landroidj/support/v4/app/FragmentHostCallback;->mAllLoaderManagers:Landroidj/support/v4/util/SimpleArrayMap;

    if-eqz v0, :cond_2d

    iget-object v0, p0, Landroidj/support/v4/app/FragmentHostCallback;->mAllLoaderManagers:Landroidj/support/v4/util/SimpleArrayMap;

    invoke-virtual {v0}, Landroidj/support/v4/util/SimpleArrayMap;->size()I

    move-result v2

    new-array v3, v2, [Landroidj/support/v4/app/LoaderManagerImpl;

    add-int/lit8 v0, v2, -0x1

    move v1, v0

    :goto_f
    if-ltz v1, :cond_1f

    iget-object v0, p0, Landroidj/support/v4/app/FragmentHostCallback;->mAllLoaderManagers:Landroidj/support/v4/util/SimpleArrayMap;

    invoke-virtual {v0, v1}, Landroidj/support/v4/util/SimpleArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidj/support/v4/app/LoaderManagerImpl;

    aput-object v0, v3, v1

    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_f

    :cond_1f
    const/4 v0, 0x0

    :goto_20
    if-ge v0, v2, :cond_2d

    aget-object v1, v3, v0

    invoke-virtual {v1}, Landroidj/support/v4/app/LoaderManagerImpl;->finishRetain()V

    invoke-virtual {v1}, Landroidj/support/v4/app/LoaderManagerImpl;->doReportStart()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_20

    :cond_2d
    return-void
.end method

.method restoreLoaderNonConfig(Landroidj/support/v4/util/SimpleArrayMap;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidj/support/v4/util/SimpleArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroidj/support/v4/app/LoaderManager;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_17

    invoke-virtual {p1}, Landroidj/support/v4/util/SimpleArrayMap;->size()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_8
    if-ge v1, v2, :cond_17

    invoke-virtual {p1, v1}, Landroidj/support/v4/util/SimpleArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidj/support/v4/app/LoaderManagerImpl;

    invoke-virtual {v0, p0}, Landroidj/support/v4/app/LoaderManagerImpl;->updateHostController(Landroidj/support/v4/app/FragmentHostCallback;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_8

    :cond_17
    iput-object p1, p0, Landroidj/support/v4/app/FragmentHostCallback;->mAllLoaderManagers:Landroidj/support/v4/util/SimpleArrayMap;

    return-void
.end method

.method retainLoaderNonConfig()Landroidj/support/v4/util/SimpleArrayMap;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidj/support/v4/util/SimpleArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroidj/support/v4/app/LoaderManager;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p0, Landroidj/support/v4/app/FragmentHostCallback;->mAllLoaderManagers:Landroidj/support/v4/util/SimpleArrayMap;

    if-eqz v0, :cond_4e

    iget-object v0, p0, Landroidj/support/v4/app/FragmentHostCallback;->mAllLoaderManagers:Landroidj/support/v4/util/SimpleArrayMap;

    invoke-virtual {v0}, Landroidj/support/v4/util/SimpleArrayMap;->size()I

    move-result v3

    new-array v4, v3, [Landroidj/support/v4/app/LoaderManagerImpl;

    add-int/lit8 v0, v3, -0x1

    move v2, v0

    :goto_10
    if-ltz v2, :cond_20

    iget-object v0, p0, Landroidj/support/v4/app/FragmentHostCallback;->mAllLoaderManagers:Landroidj/support/v4/util/SimpleArrayMap;

    invoke-virtual {v0, v2}, Landroidj/support/v4/util/SimpleArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidj/support/v4/app/LoaderManagerImpl;

    aput-object v0, v4, v2

    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_10

    :cond_20
    invoke-virtual {p0}, Landroidj/support/v4/app/FragmentHostCallback;->getRetainLoaders()Z

    move-result v5

    move v2, v1

    move v0, v1

    :goto_26
    if-ge v2, v3, :cond_4f

    aget-object v1, v4, v2

    iget-boolean v6, v1, Landroidj/support/v4/app/LoaderManagerImpl;->mRetaining:Z

    if-nez v6, :cond_3a

    if-eqz v5, :cond_3a

    iget-boolean v6, v1, Landroidj/support/v4/app/LoaderManagerImpl;->mStarted:Z

    if-nez v6, :cond_37

    invoke-virtual {v1}, Landroidj/support/v4/app/LoaderManagerImpl;->doStart()V

    :cond_37
    invoke-virtual {v1}, Landroidj/support/v4/app/LoaderManagerImpl;->doRetain()V

    :cond_3a
    iget-boolean v6, v1, Landroidj/support/v4/app/LoaderManagerImpl;->mRetaining:Z

    if-eqz v6, :cond_43

    const/4 v0, 0x1

    :goto_3f
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_26

    :cond_43
    invoke-virtual {v1}, Landroidj/support/v4/app/LoaderManagerImpl;->doDestroy()V

    iget-object v6, p0, Landroidj/support/v4/app/FragmentHostCallback;->mAllLoaderManagers:Landroidj/support/v4/util/SimpleArrayMap;

    iget-object v1, v1, Landroidj/support/v4/app/LoaderManagerImpl;->mWho:Ljava/lang/String;

    invoke-virtual {v6, v1}, Landroidj/support/v4/util/SimpleArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3f

    :cond_4e
    move v0, v1

    :cond_4f
    if-eqz v0, :cond_54

    iget-object v0, p0, Landroidj/support/v4/app/FragmentHostCallback;->mAllLoaderManagers:Landroidj/support/v4/util/SimpleArrayMap;

    :goto_53
    return-object v0

    :cond_54
    const/4 v0, 0x0

    goto :goto_53
.end method
