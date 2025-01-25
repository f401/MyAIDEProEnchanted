.class Landroidj/support/v4/view/ViewPropertyAnimatorCompat$ICSViewPropertyAnimatorCompatImpl$MyVpaListener;
.super Ljava/lang/Object;

# interfaces
.implements Landroidj/support/v4/view/ViewPropertyAnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidj/support/v4/view/ViewPropertyAnimatorCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MyVpaListener"
.end annotation


# instance fields
.field mAnimEndCalled:Z

.field mVpa:Landroidj/support/v4/view/ViewPropertyAnimatorCompat;


# direct methods
.method constructor <init>(Landroidj/support/v4/view/ViewPropertyAnimatorCompat;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidj/support/v4/view/ViewPropertyAnimatorCompat$ICSViewPropertyAnimatorCompatImpl$MyVpaListener;->mVpa:Landroidj/support/v4/view/ViewPropertyAnimatorCompat;

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/view/View;)V
    .registers 4

    const/high16 v0, 0x7e000000

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Landroidj/support/v4/view/ViewPropertyAnimatorListener;

    if-eqz v1, :cond_12

    check-cast v0, Landroidj/support/v4/view/ViewPropertyAnimatorListener;

    :goto_c
    if-eqz v0, :cond_11

    invoke-interface {v0, p1}, Landroidj/support/v4/view/ViewPropertyAnimatorListener;->onAnimationCancel(Landroid/view/View;)V

    :cond_11
    return-void

    :cond_12
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public onAnimationEnd(Landroid/view/View;)V
    .registers 5

    const/4 v1, 0x0

    iget-object v0, p0, Landroidj/support/v4/view/ViewPropertyAnimatorCompat$ICSViewPropertyAnimatorCompatImpl$MyVpaListener;->mVpa:Landroidj/support/v4/view/ViewPropertyAnimatorCompat;

    iget v0, v0, Landroidj/support/v4/view/ViewPropertyAnimatorCompat;->mOldLayerType:I

    if-ltz v0, :cond_13

    iget-object v0, p0, Landroidj/support/v4/view/ViewPropertyAnimatorCompat$ICSViewPropertyAnimatorCompatImpl$MyVpaListener;->mVpa:Landroidj/support/v4/view/ViewPropertyAnimatorCompat;

    iget v0, v0, Landroidj/support/v4/view/ViewPropertyAnimatorCompat;->mOldLayerType:I

    invoke-static {p1, v0, v1}, Landroidj/support/v4/view/ViewCompat;->setLayerType(Landroid/view/View;ILandroid/graphics/Paint;)V

    iget-object v0, p0, Landroidj/support/v4/view/ViewPropertyAnimatorCompat$ICSViewPropertyAnimatorCompatImpl$MyVpaListener;->mVpa:Landroidj/support/v4/view/ViewPropertyAnimatorCompat;

    const/4 v2, -0x1

    iput v2, v0, Landroidj/support/v4/view/ViewPropertyAnimatorCompat;->mOldLayerType:I

    :cond_13
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-ge v0, v2, :cond_1d

    iget-boolean v0, p0, Landroidj/support/v4/view/ViewPropertyAnimatorCompat$ICSViewPropertyAnimatorCompatImpl$MyVpaListener;->mAnimEndCalled:Z

    if-nez v0, :cond_42

    :cond_1d
    iget-object v0, p0, Landroidj/support/v4/view/ViewPropertyAnimatorCompat$ICSViewPropertyAnimatorCompatImpl$MyVpaListener;->mVpa:Landroidj/support/v4/view/ViewPropertyAnimatorCompat;

    iget-object v0, v0, Landroidj/support/v4/view/ViewPropertyAnimatorCompat;->mEndAction:Ljava/lang/Runnable;

    if-eqz v0, :cond_2e

    iget-object v0, p0, Landroidj/support/v4/view/ViewPropertyAnimatorCompat$ICSViewPropertyAnimatorCompatImpl$MyVpaListener;->mVpa:Landroidj/support/v4/view/ViewPropertyAnimatorCompat;

    iget-object v0, v0, Landroidj/support/v4/view/ViewPropertyAnimatorCompat;->mEndAction:Ljava/lang/Runnable;

    iget-object v2, p0, Landroidj/support/v4/view/ViewPropertyAnimatorCompat$ICSViewPropertyAnimatorCompatImpl$MyVpaListener;->mVpa:Landroidj/support/v4/view/ViewPropertyAnimatorCompat;

    iput-object v1, v2, Landroidj/support/v4/view/ViewPropertyAnimatorCompat;->mEndAction:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_2e
    const/high16 v0, 0x7e000000

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v2, v0, Landroidj/support/v4/view/ViewPropertyAnimatorListener;

    if-eqz v2, :cond_43

    check-cast v0, Landroidj/support/v4/view/ViewPropertyAnimatorListener;

    :goto_3a
    if-eqz v0, :cond_3f

    invoke-interface {v0, p1}, Landroidj/support/v4/view/ViewPropertyAnimatorListener;->onAnimationEnd(Landroid/view/View;)V

    :cond_3f
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidj/support/v4/view/ViewPropertyAnimatorCompat$ICSViewPropertyAnimatorCompatImpl$MyVpaListener;->mAnimEndCalled:Z

    :cond_42
    return-void

    :cond_43
    move-object v0, v1

    goto :goto_3a
.end method

.method public onAnimationStart(Landroid/view/View;)V
    .registers 5

    const/4 v1, 0x0

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidj/support/v4/view/ViewPropertyAnimatorCompat$ICSViewPropertyAnimatorCompatImpl$MyVpaListener;->mAnimEndCalled:Z

    iget-object v0, p0, Landroidj/support/v4/view/ViewPropertyAnimatorCompat$ICSViewPropertyAnimatorCompatImpl$MyVpaListener;->mVpa:Landroidj/support/v4/view/ViewPropertyAnimatorCompat;

    iget v0, v0, Landroidj/support/v4/view/ViewPropertyAnimatorCompat;->mOldLayerType:I

    if-ltz v0, :cond_e

    const/4 v0, 0x2

    invoke-static {p1, v0, v1}, Landroidj/support/v4/view/ViewCompat;->setLayerType(Landroid/view/View;ILandroid/graphics/Paint;)V

    :cond_e
    iget-object v0, p0, Landroidj/support/v4/view/ViewPropertyAnimatorCompat$ICSViewPropertyAnimatorCompatImpl$MyVpaListener;->mVpa:Landroidj/support/v4/view/ViewPropertyAnimatorCompat;

    iget-object v0, v0, Landroidj/support/v4/view/ViewPropertyAnimatorCompat;->mStartAction:Ljava/lang/Runnable;

    if-eqz v0, :cond_1f

    iget-object v0, p0, Landroidj/support/v4/view/ViewPropertyAnimatorCompat$ICSViewPropertyAnimatorCompatImpl$MyVpaListener;->mVpa:Landroidj/support/v4/view/ViewPropertyAnimatorCompat;

    iget-object v0, v0, Landroidj/support/v4/view/ViewPropertyAnimatorCompat;->mStartAction:Ljava/lang/Runnable;

    iget-object v2, p0, Landroidj/support/v4/view/ViewPropertyAnimatorCompat$ICSViewPropertyAnimatorCompatImpl$MyVpaListener;->mVpa:Landroidj/support/v4/view/ViewPropertyAnimatorCompat;

    iput-object v1, v2, Landroidj/support/v4/view/ViewPropertyAnimatorCompat;->mStartAction:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_1f
    const/high16 v0, 0x7e000000

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v2, v0, Landroidj/support/v4/view/ViewPropertyAnimatorListener;

    if-eqz v2, :cond_31

    check-cast v0, Landroidj/support/v4/view/ViewPropertyAnimatorListener;

    :goto_2b
    if-eqz v0, :cond_30

    invoke-interface {v0, p1}, Landroidj/support/v4/view/ViewPropertyAnimatorListener;->onAnimationStart(Landroid/view/View;)V

    :cond_30
    return-void

    :cond_31
    move-object v0, v1

    goto :goto_2b
.end method
