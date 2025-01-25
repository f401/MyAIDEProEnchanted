.class public Lcom/bumptech/glide/manager/SupportRequestManagerFragment;
.super Landroidj/support/v4/app/Fragment;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/manager/SupportRequestManagerFragment$SupportFragmentRequestManagerTreeNode;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SupportRMFragment"


# instance fields
.field private final childRequestManagerFragments:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/bumptech/glide/manager/SupportRequestManagerFragment;",
            ">;"
        }
    .end annotation
.end field

.field private final lifecycle:Lcom/bumptech/glide/manager/ActivityFragmentLifecycle;

.field private requestManager:Lcom/bumptech/glide/RequestManager;

.field private final requestManagerTreeNode:Lcom/bumptech/glide/manager/RequestManagerTreeNode;

.field private rootRequestManagerFragment:Lcom/bumptech/glide/manager/SupportRequestManagerFragment;


# direct methods
.method public constructor <init>()V
    .registers 2

    new-instance v0, Lcom/bumptech/glide/manager/ActivityFragmentLifecycle;

    invoke-direct {v0}, Lcom/bumptech/glide/manager/ActivityFragmentLifecycle;-><init>()V

    invoke-direct {p0, v0}, Lcom/bumptech/glide/manager/SupportRequestManagerFragment;-><init>(Lcom/bumptech/glide/manager/ActivityFragmentLifecycle;)V

    return-void
.end method

.method public constructor <init>(Lcom/bumptech/glide/manager/ActivityFragmentLifecycle;)V
    .registers 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ValidFragment"
        }
    .end annotation

    invoke-direct {p0}, Landroidj/support/v4/app/Fragment;-><init>()V

    new-instance v0, Lcom/bumptech/glide/manager/SupportRequestManagerFragment$SupportFragmentRequestManagerTreeNode;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/bumptech/glide/manager/SupportRequestManagerFragment$SupportFragmentRequestManagerTreeNode;-><init>(Lcom/bumptech/glide/manager/SupportRequestManagerFragment;Lcom/bumptech/glide/manager/SupportRequestManagerFragment$1;)V

    iput-object v0, p0, Lcom/bumptech/glide/manager/SupportRequestManagerFragment;->requestManagerTreeNode:Lcom/bumptech/glide/manager/RequestManagerTreeNode;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/manager/SupportRequestManagerFragment;->childRequestManagerFragments:Ljava/util/HashSet;

    iput-object p1, p0, Lcom/bumptech/glide/manager/SupportRequestManagerFragment;->lifecycle:Lcom/bumptech/glide/manager/ActivityFragmentLifecycle;

    return-void
.end method

.method private addChildRequestManagerFragment(Lcom/bumptech/glide/manager/SupportRequestManagerFragment;)V
    .registers 3

    iget-object v0, p0, Lcom/bumptech/glide/manager/SupportRequestManagerFragment;->childRequestManagerFragments:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private isDescendant(Landroidj/support/v4/app/Fragment;)Z
    .registers 4

    invoke-virtual {p0}, Lcom/bumptech/glide/manager/SupportRequestManagerFragment;->getParentFragment()Landroidj/support/v4/app/Fragment;

    move-result-object v0

    :goto_4
    invoke-virtual {p1}, Landroidj/support/v4/app/Fragment;->getParentFragment()Landroidj/support/v4/app/Fragment;

    move-result-object v1

    if-eqz v1, :cond_17

    invoke-virtual {p1}, Landroidj/support/v4/app/Fragment;->getParentFragment()Landroidj/support/v4/app/Fragment;

    move-result-object v1

    if-ne v1, v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    invoke-virtual {p1}, Landroidj/support/v4/app/Fragment;->getParentFragment()Landroidj/support/v4/app/Fragment;

    move-result-object p1

    goto :goto_4

    :cond_17
    const/4 v0, 0x0

    goto :goto_11
.end method

.method private removeChildRequestManagerFragment(Lcom/bumptech/glide/manager/SupportRequestManagerFragment;)V
    .registers 3

    iget-object v0, p0, Lcom/bumptech/glide/manager/SupportRequestManagerFragment;->childRequestManagerFragments:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public getDescendantRequestManagerFragments()Ljava/util/Set;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/bumptech/glide/manager/SupportRequestManagerFragment;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/manager/SupportRequestManagerFragment;->rootRequestManagerFragment:Lcom/bumptech/glide/manager/SupportRequestManagerFragment;

    if-nez v0, :cond_9

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    :goto_8
    return-object v0

    :cond_9
    iget-object v0, p0, Lcom/bumptech/glide/manager/SupportRequestManagerFragment;->rootRequestManagerFragment:Lcom/bumptech/glide/manager/SupportRequestManagerFragment;

    if-ne v0, p0, :cond_14

    iget-object v0, p0, Lcom/bumptech/glide/manager/SupportRequestManagerFragment;->childRequestManagerFragments:Ljava/util/HashSet;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    goto :goto_8

    :cond_14
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iget-object v0, p0, Lcom/bumptech/glide/manager/SupportRequestManagerFragment;->rootRequestManagerFragment:Lcom/bumptech/glide/manager/SupportRequestManagerFragment;

    invoke-virtual {v0}, Lcom/bumptech/glide/manager/SupportRequestManagerFragment;->getDescendantRequestManagerFragments()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_23
    :goto_23
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/manager/SupportRequestManagerFragment;

    invoke-virtual {v0}, Lcom/bumptech/glide/manager/SupportRequestManagerFragment;->getParentFragment()Landroidj/support/v4/app/Fragment;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/bumptech/glide/manager/SupportRequestManagerFragment;->isDescendant(Landroidj/support/v4/app/Fragment;)Z

    move-result v3

    if-eqz v3, :cond_23

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_23

    :cond_3d
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    goto :goto_8
.end method

.method getLifecycle()Lcom/bumptech/glide/manager/ActivityFragmentLifecycle;
    .registers 2

    iget-object v0, p0, Lcom/bumptech/glide/manager/SupportRequestManagerFragment;->lifecycle:Lcom/bumptech/glide/manager/ActivityFragmentLifecycle;

    return-object v0
.end method

.method public getRequestManager()Lcom/bumptech/glide/RequestManager;
    .registers 2

    iget-object v0, p0, Lcom/bumptech/glide/manager/SupportRequestManagerFragment;->requestManager:Lcom/bumptech/glide/RequestManager;

    return-object v0
.end method

.method public getRequestManagerTreeNode()Lcom/bumptech/glide/manager/RequestManagerTreeNode;
    .registers 2

    iget-object v0, p0, Lcom/bumptech/glide/manager/SupportRequestManagerFragment;->requestManagerTreeNode:Lcom/bumptech/glide/manager/RequestManagerTreeNode;

    return-object v0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .registers 5

    invoke-super {p0, p1}, Landroidj/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    :try_start_3
    invoke-static {}, Lcom/bumptech/glide/manager/RequestManagerRetriever;->get()Lcom/bumptech/glide/manager/RequestManagerRetriever;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bumptech/glide/manager/SupportRequestManagerFragment;->getActivity()Landroidj/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidj/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroidj/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/manager/RequestManagerRetriever;->getSupportRequestManagerFragment(Landroidj/support/v4/app/FragmentManager;)Lcom/bumptech/glide/manager/SupportRequestManagerFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/manager/SupportRequestManagerFragment;->rootRequestManagerFragment:Lcom/bumptech/glide/manager/SupportRequestManagerFragment;

    iget-object v0, p0, Lcom/bumptech/glide/manager/SupportRequestManagerFragment;->rootRequestManagerFragment:Lcom/bumptech/glide/manager/SupportRequestManagerFragment;

    if-eq v0, p0, :cond_1e

    iget-object v0, p0, Lcom/bumptech/glide/manager/SupportRequestManagerFragment;->rootRequestManagerFragment:Lcom/bumptech/glide/manager/SupportRequestManagerFragment;

    invoke-direct {v0, p0}, Lcom/bumptech/glide/manager/SupportRequestManagerFragment;->addChildRequestManagerFragment(Lcom/bumptech/glide/manager/SupportRequestManagerFragment;)V
    :try_end_1e
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_1e} :catch_1f

    :cond_1e
    :goto_1e
    return-void

    :catch_1f
    move-exception v0

    const-string v1, "SupportRMFragment"

    const/4 v2, 0x5

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1e

    const-string v1, "SupportRMFragment"

    const-string v2, "Unable to register fragment with root"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1e
.end method

.method public onDestroy()V
    .registers 2

    invoke-super {p0}, Landroidj/support/v4/app/Fragment;->onDestroy()V

    iget-object v0, p0, Lcom/bumptech/glide/manager/SupportRequestManagerFragment;->lifecycle:Lcom/bumptech/glide/manager/ActivityFragmentLifecycle;

    invoke-virtual {v0}, Lcom/bumptech/glide/manager/ActivityFragmentLifecycle;->onDestroy()V

    return-void
.end method

.method public onDetach()V
    .registers 2

    invoke-super {p0}, Landroidj/support/v4/app/Fragment;->onDetach()V

    iget-object v0, p0, Lcom/bumptech/glide/manager/SupportRequestManagerFragment;->rootRequestManagerFragment:Lcom/bumptech/glide/manager/SupportRequestManagerFragment;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/bumptech/glide/manager/SupportRequestManagerFragment;->rootRequestManagerFragment:Lcom/bumptech/glide/manager/SupportRequestManagerFragment;

    invoke-direct {v0, p0}, Lcom/bumptech/glide/manager/SupportRequestManagerFragment;->removeChildRequestManagerFragment(Lcom/bumptech/glide/manager/SupportRequestManagerFragment;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bumptech/glide/manager/SupportRequestManagerFragment;->rootRequestManagerFragment:Lcom/bumptech/glide/manager/SupportRequestManagerFragment;

    :cond_f
    return-void
.end method

.method public onLowMemory()V
    .registers 2

    invoke-super {p0}, Landroidj/support/v4/app/Fragment;->onLowMemory()V

    iget-object v0, p0, Lcom/bumptech/glide/manager/SupportRequestManagerFragment;->requestManager:Lcom/bumptech/glide/RequestManager;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/bumptech/glide/manager/SupportRequestManagerFragment;->requestManager:Lcom/bumptech/glide/RequestManager;

    invoke-virtual {v0}, Lcom/bumptech/glide/RequestManager;->onLowMemory()V

    :cond_c
    return-void
.end method

.method public onStart()V
    .registers 2

    invoke-super {p0}, Landroidj/support/v4/app/Fragment;->onStart()V

    iget-object v0, p0, Lcom/bumptech/glide/manager/SupportRequestManagerFragment;->lifecycle:Lcom/bumptech/glide/manager/ActivityFragmentLifecycle;

    invoke-virtual {v0}, Lcom/bumptech/glide/manager/ActivityFragmentLifecycle;->onStart()V

    return-void
.end method

.method public onStop()V
    .registers 2

    invoke-super {p0}, Landroidj/support/v4/app/Fragment;->onStop()V

    iget-object v0, p0, Lcom/bumptech/glide/manager/SupportRequestManagerFragment;->lifecycle:Lcom/bumptech/glide/manager/ActivityFragmentLifecycle;

    invoke-virtual {v0}, Lcom/bumptech/glide/manager/ActivityFragmentLifecycle;->onStop()V

    return-void
.end method

.method public setRequestManager(Lcom/bumptech/glide/RequestManager;)V
    .registers 2

    iput-object p1, p0, Lcom/bumptech/glide/manager/SupportRequestManagerFragment;->requestManager:Lcom/bumptech/glide/RequestManager;

    return-void
.end method
