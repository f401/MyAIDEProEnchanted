.class Landroidj/support/v4/app/Fragment$2;
.super Landroidj/support/v4/app/FragmentContainer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidj/support/v4/app/Fragment;->instantiateChildFragmentManager()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Landroidj/support/v4/app/Fragment;


# direct methods
.method constructor <init>(Landroidj/support/v4/app/Fragment;)V
    .registers 2

    iput-object p1, p0, Landroidj/support/v4/app/Fragment$2;->this$0:Landroidj/support/v4/app/Fragment;

    invoke-direct {p0}, Landroidj/support/v4/app/FragmentContainer;-><init>()V

    return-void
.end method


# virtual methods
.method public onFindViewById(I)Landroid/view/View;
    .registers 4
    .annotation build Landroidj/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Landroidj/support/v4/app/Fragment$2;->this$0:Landroidj/support/v4/app/Fragment;

    iget-object v0, v0, Landroidj/support/v4/app/Fragment;->mView:Landroid/view/View;

    if-nez v0, :cond_e

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Fragment does not have a view"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    iget-object v0, p0, Landroidj/support/v4/app/Fragment$2;->this$0:Landroidj/support/v4/app/Fragment;

    iget-object v0, v0, Landroidj/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onHasView()Z
    .registers 2

    iget-object v0, p0, Landroidj/support/v4/app/Fragment$2;->this$0:Landroidj/support/v4/app/Fragment;

    iget-object v0, v0, Landroidj/support/v4/app/Fragment;->mView:Landroid/view/View;

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method
