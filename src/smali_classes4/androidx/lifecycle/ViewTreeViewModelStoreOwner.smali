.class public Landroidx/lifecycle/ViewTreeViewModelStoreOwner;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get(Landroid/view/View;)Landroidx/lifecycle/ViewModelStoreOwner;
    .registers 4

    sget v0, Landroidx/lifecycle/viewmodel/R$id;->view_tree_view_model_store_owner:I

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/ViewModelStoreOwner;

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

    sget v1, Landroidx/lifecycle/viewmodel/R$id;->view_tree_view_model_store_owner:I

    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroidx/lifecycle/ViewModelStoreOwner;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    move-object v0, v2

    goto :goto_f
.end method

.method public static set(Landroid/view/View;Landroidx/lifecycle/ViewModelStoreOwner;)V
    .registers 3

    sget v0, Landroidx/lifecycle/viewmodel/R$id;->view_tree_view_model_store_owner:I

    invoke-virtual {p0, v0, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void
.end method
