.class Landroidx/fragment/app/FragmentAnim$2$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/fragment/app/FragmentAnim$2;->onAnimationEnd(Landroid/view/animation/Animation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Landroidx/fragment/app/FragmentAnim$2;


# direct methods
.method constructor <init>(Landroidx/fragment/app/FragmentAnim$2;)V
    .registers 2

    iput-object p1, p0, Landroidx/fragment/app/FragmentAnim$2$1;->this$0:Landroidx/fragment/app/FragmentAnim$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Landroidx/fragment/app/FragmentAnim$2$1;->this$0:Landroidx/fragment/app/FragmentAnim$2;

    iget-object v0, v0, Landroidx/fragment/app/FragmentAnim$2;->val$fragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getAnimatingAway()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_21

    iget-object v0, p0, Landroidx/fragment/app/FragmentAnim$2$1;->this$0:Landroidx/fragment/app/FragmentAnim$2;

    iget-object v0, v0, Landroidx/fragment/app/FragmentAnim$2;->val$fragment:Landroidx/fragment/app/Fragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setAnimatingAway(Landroid/view/View;)V

    iget-object v0, p0, Landroidx/fragment/app/FragmentAnim$2$1;->this$0:Landroidx/fragment/app/FragmentAnim$2;

    iget-object v0, v0, Landroidx/fragment/app/FragmentAnim$2;->val$callback:Landroidx/fragment/app/FragmentTransition$Callback;

    iget-object v1, p0, Landroidx/fragment/app/FragmentAnim$2$1;->this$0:Landroidx/fragment/app/FragmentAnim$2;

    iget-object v1, v1, Landroidx/fragment/app/FragmentAnim$2;->val$fragment:Landroidx/fragment/app/Fragment;

    iget-object v2, p0, Landroidx/fragment/app/FragmentAnim$2$1;->this$0:Landroidx/fragment/app/FragmentAnim$2;

    iget-object v2, v2, Landroidx/fragment/app/FragmentAnim$2;->val$signal:Landroidx/core/os/CancellationSignal;

    invoke-interface {v0, v1, v2}, Landroidx/fragment/app/FragmentTransition$Callback;->onComplete(Landroidx/fragment/app/Fragment;Landroidx/core/os/CancellationSignal;)V

    :cond_21
    return-void
.end method
