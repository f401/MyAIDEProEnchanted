.class Landroidx/fragment/app/DefaultSpecialEffectsController$4$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/fragment/app/DefaultSpecialEffectsController$4;->onAnimationEnd(Landroid/view/animation/Animation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$1:Landroidx/fragment/app/DefaultSpecialEffectsController$4;


# direct methods
.method constructor <init>(Landroidx/fragment/app/DefaultSpecialEffectsController$4;)V
    .registers 2

    iput-object p1, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$4$1;->this$1:Landroidx/fragment/app/DefaultSpecialEffectsController$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$4$1;->this$1:Landroidx/fragment/app/DefaultSpecialEffectsController$4;

    iget-object v0, v0, Landroidx/fragment/app/DefaultSpecialEffectsController$4;->val$container:Landroid/view/ViewGroup;

    iget-object v1, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$4$1;->this$1:Landroidx/fragment/app/DefaultSpecialEffectsController$4;

    iget-object v1, v1, Landroidx/fragment/app/DefaultSpecialEffectsController$4;->val$viewToAnimate:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->endViewTransition(Landroid/view/View;)V

    iget-object v0, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$4$1;->this$1:Landroidx/fragment/app/DefaultSpecialEffectsController$4;

    iget-object v0, v0, Landroidx/fragment/app/DefaultSpecialEffectsController$4;->val$animationInfo:Landroidx/fragment/app/DefaultSpecialEffectsController$AnimationInfo;

    invoke-virtual {v0}, Landroidx/fragment/app/DefaultSpecialEffectsController$AnimationInfo;->completeSpecialEffect()V

    return-void
.end method
