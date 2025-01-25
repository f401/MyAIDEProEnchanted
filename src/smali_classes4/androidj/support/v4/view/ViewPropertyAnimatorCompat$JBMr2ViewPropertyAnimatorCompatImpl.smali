.class Landroidj/support/v4/view/ViewPropertyAnimatorCompat$JBMr2ViewPropertyAnimatorCompatImpl;
.super Landroidj/support/v4/view/ViewPropertyAnimatorCompat$JBViewPropertyAnimatorCompatImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidj/support/v4/view/ViewPropertyAnimatorCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "JBMr2ViewPropertyAnimatorCompatImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroidj/support/v4/view/ViewPropertyAnimatorCompat$JBViewPropertyAnimatorCompatImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public getInterpolator(Landroidj/support/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;)Landroid/view/animation/Interpolator;
    .registers 4

    invoke-static {p2}, Landroidj/support/v4/view/ViewPropertyAnimatorCompatJellybeanMr2;->getInterpolator(Landroid/view/View;)Landroid/view/animation/Interpolator;

    move-result-object v0

    return-object v0
.end method
