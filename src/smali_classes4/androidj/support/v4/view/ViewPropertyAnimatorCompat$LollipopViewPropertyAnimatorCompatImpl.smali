.class Landroidj/support/v4/view/ViewPropertyAnimatorCompat$LollipopViewPropertyAnimatorCompatImpl;
.super Landroidj/support/v4/view/ViewPropertyAnimatorCompat$KitKatViewPropertyAnimatorCompatImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidj/support/v4/view/ViewPropertyAnimatorCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LollipopViewPropertyAnimatorCompatImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroidj/support/v4/view/ViewPropertyAnimatorCompat$KitKatViewPropertyAnimatorCompatImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public translationZ(Landroidj/support/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;F)V
    .registers 4

    invoke-static {p2, p3}, Landroidj/support/v4/view/ViewPropertyAnimatorCompatLollipop;->translationZ(Landroid/view/View;F)V

    return-void
.end method

.method public translationZBy(Landroidj/support/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;F)V
    .registers 4

    invoke-static {p2, p3}, Landroidj/support/v4/view/ViewPropertyAnimatorCompatLollipop;->translationZBy(Landroid/view/View;F)V

    return-void
.end method

.method public z(Landroidj/support/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;F)V
    .registers 4

    invoke-static {p2, p3}, Landroidj/support/v4/view/ViewPropertyAnimatorCompatLollipop;->z(Landroid/view/View;F)V

    return-void
.end method

.method public zBy(Landroidj/support/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;F)V
    .registers 4

    invoke-static {p2, p3}, Landroidj/support/v4/view/ViewPropertyAnimatorCompatLollipop;->zBy(Landroid/view/View;F)V

    return-void
.end method
