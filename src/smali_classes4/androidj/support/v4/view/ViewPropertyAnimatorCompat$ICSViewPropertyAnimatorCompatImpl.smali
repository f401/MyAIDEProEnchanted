.class Landroidj/support/v4/view/ViewPropertyAnimatorCompat$ICSViewPropertyAnimatorCompatImpl;
.super Landroidj/support/v4/view/ViewPropertyAnimatorCompat$BaseViewPropertyAnimatorCompatImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidj/support/v4/view/ViewPropertyAnimatorCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ICSViewPropertyAnimatorCompatImpl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidj/support/v4/view/ViewPropertyAnimatorCompat$ICSViewPropertyAnimatorCompatImpl$MyVpaListener;
    }
.end annotation


# instance fields
.field mLayerMap:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroidj/support/v4/view/ViewPropertyAnimatorCompat$BaseViewPropertyAnimatorCompatImpl;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidj/support/v4/view/ViewPropertyAnimatorCompat$ICSViewPropertyAnimatorCompatImpl;->mLayerMap:Ljava/util/WeakHashMap;

    return-void
.end method


# virtual methods
.method public alpha(Landroidj/support/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;F)V
    .registers 4

    invoke-static {p2, p3}, Landroidj/support/v4/view/ViewPropertyAnimatorCompatICS;->alpha(Landroid/view/View;F)V

    return-void
.end method

.method public alphaBy(Landroidj/support/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;F)V
    .registers 4

    invoke-static {p2, p3}, Landroidj/support/v4/view/ViewPropertyAnimatorCompatICS;->alphaBy(Landroid/view/View;F)V

    return-void
.end method

.method public cancel(Landroidj/support/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;)V
    .registers 3

    invoke-static {p2}, Landroidj/support/v4/view/ViewPropertyAnimatorCompatICS;->cancel(Landroid/view/View;)V

    return-void
.end method

.method public getDuration(Landroidj/support/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;)J
    .registers 5

    invoke-static {p2}, Landroidj/support/v4/view/ViewPropertyAnimatorCompatICS;->getDuration(Landroid/view/View;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getStartDelay(Landroidj/support/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;)J
    .registers 5

    invoke-static {p2}, Landroidj/support/v4/view/ViewPropertyAnimatorCompatICS;->getStartDelay(Landroid/view/View;)J

    move-result-wide v0

    return-wide v0
.end method

.method public rotation(Landroidj/support/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;F)V
    .registers 4

    invoke-static {p2, p3}, Landroidj/support/v4/view/ViewPropertyAnimatorCompatICS;->rotation(Landroid/view/View;F)V

    return-void
.end method

.method public rotationBy(Landroidj/support/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;F)V
    .registers 4

    invoke-static {p2, p3}, Landroidj/support/v4/view/ViewPropertyAnimatorCompatICS;->rotationBy(Landroid/view/View;F)V

    return-void
.end method

.method public rotationX(Landroidj/support/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;F)V
    .registers 4

    invoke-static {p2, p3}, Landroidj/support/v4/view/ViewPropertyAnimatorCompatICS;->rotationX(Landroid/view/View;F)V

    return-void
.end method

.method public rotationXBy(Landroidj/support/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;F)V
    .registers 4

    invoke-static {p2, p3}, Landroidj/support/v4/view/ViewPropertyAnimatorCompatICS;->rotationXBy(Landroid/view/View;F)V

    return-void
.end method

.method public rotationY(Landroidj/support/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;F)V
    .registers 4

    invoke-static {p2, p3}, Landroidj/support/v4/view/ViewPropertyAnimatorCompatICS;->rotationY(Landroid/view/View;F)V

    return-void
.end method

.method public rotationYBy(Landroidj/support/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;F)V
    .registers 4

    invoke-static {p2, p3}, Landroidj/support/v4/view/ViewPropertyAnimatorCompatICS;->rotationYBy(Landroid/view/View;F)V

    return-void
.end method

.method public scaleX(Landroidj/support/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;F)V
    .registers 4

    invoke-static {p2, p3}, Landroidj/support/v4/view/ViewPropertyAnimatorCompatICS;->scaleX(Landroid/view/View;F)V

    return-void
.end method

.method public scaleXBy(Landroidj/support/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;F)V
    .registers 4

    invoke-static {p2, p3}, Landroidj/support/v4/view/ViewPropertyAnimatorCompatICS;->scaleXBy(Landroid/view/View;F)V

    return-void
.end method

.method public scaleY(Landroidj/support/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;F)V
    .registers 4

    invoke-static {p2, p3}, Landroidj/support/v4/view/ViewPropertyAnimatorCompatICS;->scaleY(Landroid/view/View;F)V

    return-void
.end method

.method public scaleYBy(Landroidj/support/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;F)V
    .registers 4

    invoke-static {p2, p3}, Landroidj/support/v4/view/ViewPropertyAnimatorCompatICS;->scaleYBy(Landroid/view/View;F)V

    return-void
.end method

.method public setDuration(Landroidj/support/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;J)V
    .registers 6

    invoke-static {p2, p3, p4}, Landroidj/support/v4/view/ViewPropertyAnimatorCompatICS;->setDuration(Landroid/view/View;J)V

    return-void
.end method

.method public setInterpolator(Landroidj/support/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;Landroid/view/animation/Interpolator;)V
    .registers 4

    invoke-static {p2, p3}, Landroidj/support/v4/view/ViewPropertyAnimatorCompatICS;->setInterpolator(Landroid/view/View;Landroid/view/animation/Interpolator;)V

    return-void
.end method

.method public setListener(Landroidj/support/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;Landroidj/support/v4/view/ViewPropertyAnimatorListener;)V
    .registers 5

    const/high16 v0, 0x7e000000

    invoke-virtual {p2, v0, p3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    new-instance v0, Landroidj/support/v4/view/ViewPropertyAnimatorCompat$ICSViewPropertyAnimatorCompatImpl$MyVpaListener;

    invoke-direct {v0, p1}, Landroidj/support/v4/view/ViewPropertyAnimatorCompat$ICSViewPropertyAnimatorCompatImpl$MyVpaListener;-><init>(Landroidj/support/v4/view/ViewPropertyAnimatorCompat;)V

    invoke-static {p2, v0}, Landroidj/support/v4/view/ViewPropertyAnimatorCompatICS;->setListener(Landroid/view/View;Landroidj/support/v4/view/ViewPropertyAnimatorListener;)V

    return-void
.end method

.method public setStartDelay(Landroidj/support/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;J)V
    .registers 6

    invoke-static {p2, p3, p4}, Landroidj/support/v4/view/ViewPropertyAnimatorCompatICS;->setStartDelay(Landroid/view/View;J)V

    return-void
.end method

.method public start(Landroidj/support/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;)V
    .registers 3

    invoke-static {p2}, Landroidj/support/v4/view/ViewPropertyAnimatorCompatICS;->start(Landroid/view/View;)V

    return-void
.end method

.method public translationX(Landroidj/support/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;F)V
    .registers 4

    invoke-static {p2, p3}, Landroidj/support/v4/view/ViewPropertyAnimatorCompatICS;->translationX(Landroid/view/View;F)V

    return-void
.end method

.method public translationXBy(Landroidj/support/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;F)V
    .registers 4

    invoke-static {p2, p3}, Landroidj/support/v4/view/ViewPropertyAnimatorCompatICS;->translationXBy(Landroid/view/View;F)V

    return-void
.end method

.method public translationY(Landroidj/support/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;F)V
    .registers 4

    invoke-static {p2, p3}, Landroidj/support/v4/view/ViewPropertyAnimatorCompatICS;->translationY(Landroid/view/View;F)V

    return-void
.end method

.method public translationYBy(Landroidj/support/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;F)V
    .registers 4

    invoke-static {p2, p3}, Landroidj/support/v4/view/ViewPropertyAnimatorCompatICS;->translationYBy(Landroid/view/View;F)V

    return-void
.end method

.method public withEndAction(Landroidj/support/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;Ljava/lang/Runnable;)V
    .registers 5

    new-instance v0, Landroidj/support/v4/view/ViewPropertyAnimatorCompat$ICSViewPropertyAnimatorCompatImpl$MyVpaListener;

    invoke-direct {v0, p1}, Landroidj/support/v4/view/ViewPropertyAnimatorCompat$ICSViewPropertyAnimatorCompatImpl$MyVpaListener;-><init>(Landroidj/support/v4/view/ViewPropertyAnimatorCompat;)V

    invoke-static {p2, v0}, Landroidj/support/v4/view/ViewPropertyAnimatorCompatICS;->setListener(Landroid/view/View;Landroidj/support/v4/view/ViewPropertyAnimatorListener;)V

    iput-object p3, p1, Landroidj/support/v4/view/ViewPropertyAnimatorCompat;->mEndAction:Ljava/lang/Runnable;

    return-void
.end method

.method public withLayer(Landroidj/support/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;)V
    .registers 4

    invoke-static {p2}, Landroidj/support/v4/view/ViewCompat;->getLayerType(Landroid/view/View;)I

    move-result v0

    iput v0, p1, Landroidj/support/v4/view/ViewPropertyAnimatorCompat;->mOldLayerType:I

    new-instance v0, Landroidj/support/v4/view/ViewPropertyAnimatorCompat$ICSViewPropertyAnimatorCompatImpl$MyVpaListener;

    invoke-direct {v0, p1}, Landroidj/support/v4/view/ViewPropertyAnimatorCompat$ICSViewPropertyAnimatorCompatImpl$MyVpaListener;-><init>(Landroidj/support/v4/view/ViewPropertyAnimatorCompat;)V

    invoke-static {p2, v0}, Landroidj/support/v4/view/ViewPropertyAnimatorCompatICS;->setListener(Landroid/view/View;Landroidj/support/v4/view/ViewPropertyAnimatorListener;)V

    return-void
.end method

.method public withStartAction(Landroidj/support/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;Ljava/lang/Runnable;)V
    .registers 5

    new-instance v0, Landroidj/support/v4/view/ViewPropertyAnimatorCompat$ICSViewPropertyAnimatorCompatImpl$MyVpaListener;

    invoke-direct {v0, p1}, Landroidj/support/v4/view/ViewPropertyAnimatorCompat$ICSViewPropertyAnimatorCompatImpl$MyVpaListener;-><init>(Landroidj/support/v4/view/ViewPropertyAnimatorCompat;)V

    invoke-static {p2, v0}, Landroidj/support/v4/view/ViewPropertyAnimatorCompatICS;->setListener(Landroid/view/View;Landroidj/support/v4/view/ViewPropertyAnimatorListener;)V

    iput-object p3, p1, Landroidj/support/v4/view/ViewPropertyAnimatorCompat;->mStartAction:Ljava/lang/Runnable;

    return-void
.end method

.method public x(Landroidj/support/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;F)V
    .registers 4

    invoke-static {p2, p3}, Landroidj/support/v4/view/ViewPropertyAnimatorCompatICS;->x(Landroid/view/View;F)V

    return-void
.end method

.method public xBy(Landroidj/support/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;F)V
    .registers 4

    invoke-static {p2, p3}, Landroidj/support/v4/view/ViewPropertyAnimatorCompatICS;->xBy(Landroid/view/View;F)V

    return-void
.end method

.method public y(Landroidj/support/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;F)V
    .registers 4

    invoke-static {p2, p3}, Landroidj/support/v4/view/ViewPropertyAnimatorCompatICS;->y(Landroid/view/View;F)V

    return-void
.end method

.method public yBy(Landroidj/support/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;F)V
    .registers 4

    invoke-static {p2, p3}, Landroidj/support/v4/view/ViewPropertyAnimatorCompatICS;->yBy(Landroid/view/View;F)V

    return-void
.end method
