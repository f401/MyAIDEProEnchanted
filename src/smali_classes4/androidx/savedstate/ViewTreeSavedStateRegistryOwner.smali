.class public final Landroidx/savedstate/ViewTreeSavedStateRegistryOwner;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get(Landroid/view/View;)Landroidx/savedstate/SavedStateRegistryOwner;
    .registers 4

    sget v0, Landroidx/savedstate/R$id;->view_tree_saved_state_registry_owner:I

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/savedstate/SavedStateRegistryOwner;

    if-eqz v0, :cond_b

    :cond_a
    return-object v0

    :cond_b
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    :goto_f
    if-nez v0, :cond_a

    instance-of v2, v1, Landroid/view/View;

    if-eqz v2, :cond_a

    move-object v0, v1

    check-cast v0, Landroid/view/View;

    sget v1, Landroidx/savedstate/R$id;->view_tree_saved_state_registry_owner:I

    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroidx/savedstate/SavedStateRegistryOwner;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    move-object v0, v2

    goto :goto_f
.end method

.method public static set(Landroid/view/View;Landroidx/savedstate/SavedStateRegistryOwner;)V
    .registers 3

    sget v0, Landroidx/savedstate/R$id;->view_tree_saved_state_registry_owner:I

    invoke-virtual {p0, v0, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void
.end method
