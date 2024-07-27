.class Landroidj/support/v4/view/ViewPropertyAnimatorCompat$JBViewPropertyAnimatorCompatImpl;
.super Landroidj/support/v4/view/ViewPropertyAnimatorCompat$ICSViewPropertyAnimatorCompatImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidj/support/v4/view/ViewPropertyAnimatorCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "JBViewPropertyAnimatorCompatImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroidj/support/v4/view/ViewPropertyAnimatorCompat$ICSViewPropertyAnimatorCompatImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public setListener(Landroidj/support/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;Landroidj/support/v4/view/ViewPropertyAnimatorListener;)V
    .registers 4

    invoke-static {p2, p3}, Landroidj/support/v4/view/ViewPropertyAnimatorCompatJB;->setListener(Landroid/view/View;Landroidj/support/v4/view/ViewPropertyAnimatorListener;)V

    return-void
.end method

.method public withEndAction(Landroidj/support/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;Ljava/lang/Runnable;)V
    .registers 4

    invoke-static {p2, p3}, Landroidj/support/v4/view/ViewPropertyAnimatorCompatJB;->withEndAction(Landroid/view/View;Ljava/lang/Runnable;)V

    return-void
.end method

.method public withLayer(Landroidj/support/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;)V
    .registers 3

    invoke-static {p2}, Landroidj/support/v4/view/ViewPropertyAnimatorCompatJB;->withLayer(Landroid/view/View;)V

    return-void
.end method

.method public withStartAction(Landroidj/support/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;Ljava/lang/Runnable;)V
    .registers 4

    invoke-static {p2, p3}, Landroidj/support/v4/view/ViewPropertyAnimatorCompatJB;->withStartAction(Landroid/view/View;Ljava/lang/Runnable;)V

    return-void
.end method
