.class Landroid/support/v4/widget/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/widget/CircularProgressDrawable;->j6()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final DW:Landroid/support/v4/widget/CircularProgressDrawable;

.field final j6:Landroid/support/v4/widget/CircularProgressDrawable$a;


# direct methods
.method constructor <init>(Landroid/support/v4/widget/CircularProgressDrawable;Landroid/support/v4/widget/CircularProgressDrawable$a;)V
    .registers 3

    iput-object p1, p0, Landroid/support/v4/widget/b;->DW:Landroid/support/v4/widget/CircularProgressDrawable;

    iput-object p2, p0, Landroid/support/v4/widget/b;->j6:Landroid/support/v4/widget/CircularProgressDrawable$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 5

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object v0, p0, Landroid/support/v4/widget/b;->DW:Landroid/support/v4/widget/CircularProgressDrawable;

    iget-object v1, p0, Landroid/support/v4/widget/b;->j6:Landroid/support/v4/widget/CircularProgressDrawable$a;

    invoke-static {v0, p1, v1}, Landroid/support/v4/widget/CircularProgressDrawable;->j6(Landroid/support/v4/widget/CircularProgressDrawable;FLandroid/support/v4/widget/CircularProgressDrawable$a;)V

    iget-object v0, p0, Landroid/support/v4/widget/b;->DW:Landroid/support/v4/widget/CircularProgressDrawable;

    iget-object v1, p0, Landroid/support/v4/widget/b;->j6:Landroid/support/v4/widget/CircularProgressDrawable$a;

    const/4 v2, 0x0

    invoke-static {v0, p1, v1, v2}, Landroid/support/v4/widget/CircularProgressDrawable;->j6(Landroid/support/v4/widget/CircularProgressDrawable;FLandroid/support/v4/widget/CircularProgressDrawable$a;Z)V

    iget-object p1, p0, Landroid/support/v4/widget/b;->DW:Landroid/support/v4/widget/CircularProgressDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method
