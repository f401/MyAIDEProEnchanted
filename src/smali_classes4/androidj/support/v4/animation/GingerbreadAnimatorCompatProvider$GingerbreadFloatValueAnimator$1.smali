.class Landroidj/support/v4/animation/GingerbreadAnimatorCompatProvider$GingerbreadFloatValueAnimator$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidj/support/v4/animation/GingerbreadAnimatorCompatProvider$GingerbreadFloatValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Landroidj/support/v4/animation/GingerbreadAnimatorCompatProvider$GingerbreadFloatValueAnimator;


# direct methods
.method constructor <init>(Landroidj/support/v4/animation/GingerbreadAnimatorCompatProvider$GingerbreadFloatValueAnimator;)V
    .registers 2

    iput-object p1, p0, Landroidj/support/v4/animation/GingerbreadAnimatorCompatProvider$GingerbreadFloatValueAnimator$1;->this$0:Landroidj/support/v4/animation/GingerbreadAnimatorCompatProvider$GingerbreadFloatValueAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    const/high16 v1, 0x3f800000  # 1.0f

    iget-object v0, p0, Landroidj/support/v4/animation/GingerbreadAnimatorCompatProvider$GingerbreadFloatValueAnimator$1;->this$0:Landroidj/support/v4/animation/GingerbreadAnimatorCompatProvider$GingerbreadFloatValueAnimator;

    invoke-static {v0}, Landroidj/support/v4/animation/GingerbreadAnimatorCompatProvider$GingerbreadFloatValueAnimator;->access$000(Landroidj/support/v4/animation/GingerbreadAnimatorCompatProvider$GingerbreadFloatValueAnimator;)J

    move-result-wide v2

    iget-object v0, p0, Landroidj/support/v4/animation/GingerbreadAnimatorCompatProvider$GingerbreadFloatValueAnimator$1;->this$0:Landroidj/support/v4/animation/GingerbreadAnimatorCompatProvider$GingerbreadFloatValueAnimator;

    invoke-static {v0}, Landroidj/support/v4/animation/GingerbreadAnimatorCompatProvider$GingerbreadFloatValueAnimator;->access$100(Landroidj/support/v4/animation/GingerbreadAnimatorCompatProvider$GingerbreadFloatValueAnimator;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    long-to-float v0, v2

    mul-float/2addr v0, v1

    iget-object v2, p0, Landroidj/support/v4/animation/GingerbreadAnimatorCompatProvider$GingerbreadFloatValueAnimator$1;->this$0:Landroidj/support/v4/animation/GingerbreadAnimatorCompatProvider$GingerbreadFloatValueAnimator;

    invoke-static {v2}, Landroidj/support/v4/animation/GingerbreadAnimatorCompatProvider$GingerbreadFloatValueAnimator;->access$200(Landroidj/support/v4/animation/GingerbreadAnimatorCompatProvider$GingerbreadFloatValueAnimator;)J

    move-result-wide v2

    long-to-float v2, v2

    div-float/2addr v0, v2

    cmpl-float v2, v0, v1

    if-gtz v2, :cond_27

    iget-object v2, p0, Landroidj/support/v4/animation/GingerbreadAnimatorCompatProvider$GingerbreadFloatValueAnimator$1;->this$0:Landroidj/support/v4/animation/GingerbreadAnimatorCompatProvider$GingerbreadFloatValueAnimator;

    iget-object v2, v2, Landroidj/support/v4/animation/GingerbreadAnimatorCompatProvider$GingerbreadFloatValueAnimator;->mTarget:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-nez v2, :cond_28

    :cond_27
    move v0, v1

    :cond_28
    iget-object v2, p0, Landroidj/support/v4/animation/GingerbreadAnimatorCompatProvider$GingerbreadFloatValueAnimator$1;->this$0:Landroidj/support/v4/animation/GingerbreadAnimatorCompatProvider$GingerbreadFloatValueAnimator;

    invoke-static {v2, v0}, Landroidj/support/v4/animation/GingerbreadAnimatorCompatProvider$GingerbreadFloatValueAnimator;->access$302(Landroidj/support/v4/animation/GingerbreadAnimatorCompatProvider$GingerbreadFloatValueAnimator;F)F

    iget-object v0, p0, Landroidj/support/v4/animation/GingerbreadAnimatorCompatProvider$GingerbreadFloatValueAnimator$1;->this$0:Landroidj/support/v4/animation/GingerbreadAnimatorCompatProvider$GingerbreadFloatValueAnimator;

    invoke-static {v0}, Landroidj/support/v4/animation/GingerbreadAnimatorCompatProvider$GingerbreadFloatValueAnimator;->access$400(Landroidj/support/v4/animation/GingerbreadAnimatorCompatProvider$GingerbreadFloatValueAnimator;)V

    iget-object v0, p0, Landroidj/support/v4/animation/GingerbreadAnimatorCompatProvider$GingerbreadFloatValueAnimator$1;->this$0:Landroidj/support/v4/animation/GingerbreadAnimatorCompatProvider$GingerbreadFloatValueAnimator;

    invoke-static {v0}, Landroidj/support/v4/animation/GingerbreadAnimatorCompatProvider$GingerbreadFloatValueAnimator;->access$300(Landroidj/support/v4/animation/GingerbreadAnimatorCompatProvider$GingerbreadFloatValueAnimator;)F

    move-result v0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_42

    iget-object v0, p0, Landroidj/support/v4/animation/GingerbreadAnimatorCompatProvider$GingerbreadFloatValueAnimator$1;->this$0:Landroidj/support/v4/animation/GingerbreadAnimatorCompatProvider$GingerbreadFloatValueAnimator;

    invoke-static {v0}, Landroidj/support/v4/animation/GingerbreadAnimatorCompatProvider$GingerbreadFloatValueAnimator;->access$500(Landroidj/support/v4/animation/GingerbreadAnimatorCompatProvider$GingerbreadFloatValueAnimator;)V

    :goto_41
    return-void

    :cond_42
    iget-object v0, p0, Landroidj/support/v4/animation/GingerbreadAnimatorCompatProvider$GingerbreadFloatValueAnimator$1;->this$0:Landroidj/support/v4/animation/GingerbreadAnimatorCompatProvider$GingerbreadFloatValueAnimator;

    iget-object v0, v0, Landroidj/support/v4/animation/GingerbreadAnimatorCompatProvider$GingerbreadFloatValueAnimator;->mTarget:Landroid/view/View;

    iget-object v1, p0, Landroidj/support/v4/animation/GingerbreadAnimatorCompatProvider$GingerbreadFloatValueAnimator$1;->this$0:Landroidj/support/v4/animation/GingerbreadAnimatorCompatProvider$GingerbreadFloatValueAnimator;

    invoke-static {v1}, Landroidj/support/v4/animation/GingerbreadAnimatorCompatProvider$GingerbreadFloatValueAnimator;->access$600(Landroidj/support/v4/animation/GingerbreadAnimatorCompatProvider$GingerbreadFloatValueAnimator;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x10

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_41
.end method
