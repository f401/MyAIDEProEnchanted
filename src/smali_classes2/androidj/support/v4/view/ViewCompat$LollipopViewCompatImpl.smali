.class Landroidj/support/v4/view/ViewCompat$LollipopViewCompatImpl;
.super Landroidj/support/v4/view/ViewCompat$KitKatViewCompatImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidj/support/v4/view/ViewCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LollipopViewCompatImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroidj/support/v4/view/ViewCompat$KitKatViewCompatImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchApplyWindowInsets(Landroid/view/View;Landroidj/support/v4/view/WindowInsetsCompat;)Landroidj/support/v4/view/WindowInsetsCompat;
    .registers 4

    invoke-static {p2}, Landroidj/support/v4/view/WindowInsetsCompat;->unwrap(Landroidj/support/v4/view/WindowInsetsCompat;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v0}, Landroidj/support/v4/view/ViewCompatLollipop;->dispatchApplyWindowInsets(Landroid/view/View;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Landroidj/support/v4/view/WindowInsetsCompat;->wrap(Ljava/lang/Object;)Landroidj/support/v4/view/WindowInsetsCompat;

    move-result-object v0

    return-object v0
.end method

.method public dispatchNestedFling(Landroid/view/View;FFZ)Z
    .registers 6

    invoke-static {p1, p2, p3, p4}, Landroidj/support/v4/view/ViewCompatLollipop;->dispatchNestedFling(Landroid/view/View;FFZ)Z

    move-result v0

    return v0
.end method

.method public dispatchNestedPreFling(Landroid/view/View;FF)Z
    .registers 5

    invoke-static {p1, p2, p3}, Landroidj/support/v4/view/ViewCompatLollipop;->dispatchNestedPreFling(Landroid/view/View;FF)Z

    move-result v0

    return v0
.end method

.method public dispatchNestedPreScroll(Landroid/view/View;II[I[I)Z
    .registers 7

    invoke-static {p1, p2, p3, p4, p5}, Landroidj/support/v4/view/ViewCompatLollipop;->dispatchNestedPreScroll(Landroid/view/View;II[I[I)Z

    move-result v0

    return v0
.end method

.method public dispatchNestedScroll(Landroid/view/View;IIII[I)Z
    .registers 8

    invoke-static/range {p1 .. p6}, Landroidj/support/v4/view/ViewCompatLollipop;->dispatchNestedScroll(Landroid/view/View;IIII[I)Z

    move-result v0

    return v0
.end method

.method public getBackgroundTintList(Landroid/view/View;)Landroid/content/res/ColorStateList;
    .registers 3

    invoke-static {p1}, Landroidj/support/v4/view/ViewCompatLollipop;->getBackgroundTintList(Landroid/view/View;)Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public getBackgroundTintMode(Landroid/view/View;)Landroid/graphics/PorterDuff$Mode;
    .registers 3

    invoke-static {p1}, Landroidj/support/v4/view/ViewCompatLollipop;->getBackgroundTintMode(Landroid/view/View;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    return-object v0
.end method

.method public getElevation(Landroid/view/View;)F
    .registers 3

    invoke-static {p1}, Landroidj/support/v4/view/ViewCompatLollipop;->getElevation(Landroid/view/View;)F

    move-result v0

    return v0
.end method

.method public getTransitionName(Landroid/view/View;)Ljava/lang/String;
    .registers 3

    invoke-static {p1}, Landroidj/support/v4/view/ViewCompatLollipop;->getTransitionName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTranslationZ(Landroid/view/View;)F
    .registers 3

    invoke-static {p1}, Landroidj/support/v4/view/ViewCompatLollipop;->getTranslationZ(Landroid/view/View;)F

    move-result v0

    return v0
.end method

.method public getZ(Landroid/view/View;)F
    .registers 3

    invoke-static {p1}, Landroidj/support/v4/view/ViewCompatLollipop;->getZ(Landroid/view/View;)F

    move-result v0

    return v0
.end method

.method public hasNestedScrollingParent(Landroid/view/View;)Z
    .registers 3

    invoke-static {p1}, Landroidj/support/v4/view/ViewCompatLollipop;->hasNestedScrollingParent(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public isImportantForAccessibility(Landroid/view/View;)Z
    .registers 3

    invoke-static {p1}, Landroidj/support/v4/view/ViewCompatLollipop;->isImportantForAccessibility(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public isNestedScrollingEnabled(Landroid/view/View;)Z
    .registers 3

    invoke-static {p1}, Landroidj/support/v4/view/ViewCompatLollipop;->isNestedScrollingEnabled(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public offsetLeftAndRight(Landroid/view/View;I)V
    .registers 3

    invoke-static {p1, p2}, Landroidj/support/v4/view/ViewCompatLollipop;->offsetLeftAndRight(Landroid/view/View;I)V

    return-void
.end method

.method public offsetTopAndBottom(Landroid/view/View;I)V
    .registers 3

    invoke-static {p1, p2}, Landroidj/support/v4/view/ViewCompatLollipop;->offsetTopAndBottom(Landroid/view/View;I)V

    return-void
.end method

.method public onApplyWindowInsets(Landroid/view/View;Landroidj/support/v4/view/WindowInsetsCompat;)Landroidj/support/v4/view/WindowInsetsCompat;
    .registers 4

    invoke-static {p2}, Landroidj/support/v4/view/WindowInsetsCompat;->unwrap(Landroidj/support/v4/view/WindowInsetsCompat;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v0}, Landroidj/support/v4/view/ViewCompatLollipop;->onApplyWindowInsets(Landroid/view/View;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Landroidj/support/v4/view/WindowInsetsCompat;->wrap(Ljava/lang/Object;)Landroidj/support/v4/view/WindowInsetsCompat;

    move-result-object v0

    return-object v0
.end method

.method public requestApplyInsets(Landroid/view/View;)V
    .registers 2

    invoke-static {p1}, Landroidj/support/v4/view/ViewCompatLollipop;->requestApplyInsets(Landroid/view/View;)V

    return-void
.end method

.method public setBackgroundTintList(Landroid/view/View;Landroid/content/res/ColorStateList;)V
    .registers 3

    invoke-static {p1, p2}, Landroidj/support/v4/view/ViewCompatLollipop;->setBackgroundTintList(Landroid/view/View;Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setBackgroundTintMode(Landroid/view/View;Landroid/graphics/PorterDuff$Mode;)V
    .registers 3

    invoke-static {p1, p2}, Landroidj/support/v4/view/ViewCompatLollipop;->setBackgroundTintMode(Landroid/view/View;Landroid/graphics/PorterDuff$Mode;)V

    return-void
.end method

.method public setElevation(Landroid/view/View;F)V
    .registers 3

    invoke-static {p1, p2}, Landroidj/support/v4/view/ViewCompatLollipop;->setElevation(Landroid/view/View;F)V

    return-void
.end method

.method public setNestedScrollingEnabled(Landroid/view/View;Z)V
    .registers 3

    invoke-static {p1, p2}, Landroidj/support/v4/view/ViewCompatLollipop;->setNestedScrollingEnabled(Landroid/view/View;Z)V

    return-void
.end method

.method public setOnApplyWindowInsetsListener(Landroid/view/View;Landroidj/support/v4/view/OnApplyWindowInsetsListener;)V
    .registers 4

    if-nez p2, :cond_0

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroidj/support/v4/view/ViewCompatLollipop;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroidj/support/v4/view/ViewCompatLollipop$OnApplyWindowInsetsListenerBridge;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroidj/support/v4/view/ViewCompat$LollipopViewCompatImpl$1;

    invoke-direct {v0, p0, p2}, Landroidj/support/v4/view/ViewCompat$LollipopViewCompatImpl$1;-><init>(Landroidj/support/v4/view/ViewCompat$LollipopViewCompatImpl;Landroidj/support/v4/view/OnApplyWindowInsetsListener;)V

    invoke-static {p1, v0}, Landroidj/support/v4/view/ViewCompatLollipop;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroidj/support/v4/view/ViewCompatLollipop$OnApplyWindowInsetsListenerBridge;)V

    goto :goto_0
.end method

.method public setTransitionName(Landroid/view/View;Ljava/lang/String;)V
    .registers 3

    invoke-static {p1, p2}, Landroidj/support/v4/view/ViewCompatLollipop;->setTransitionName(Landroid/view/View;Ljava/lang/String;)V

    return-void
.end method

.method public setTranslationZ(Landroid/view/View;F)V
    .registers 3

    invoke-static {p1, p2}, Landroidj/support/v4/view/ViewCompatLollipop;->setTranslationZ(Landroid/view/View;F)V

    return-void
.end method

.method public setZ(Landroid/view/View;F)V
    .registers 3

    invoke-static {p1, p2}, Landroidj/support/v4/view/ViewCompatLollipop;->setZ(Landroid/view/View;F)V

    return-void
.end method

.method public startNestedScroll(Landroid/view/View;I)Z
    .registers 4

    invoke-static {p1, p2}, Landroidj/support/v4/view/ViewCompatLollipop;->startNestedScroll(Landroid/view/View;I)Z

    move-result v0

    return v0
.end method

.method public stopNestedScroll(Landroid/view/View;)V
    .registers 2

    invoke-static {p1}, Landroidj/support/v4/view/ViewCompatLollipop;->stopNestedScroll(Landroid/view/View;)V

    return-void
.end method
