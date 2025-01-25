.class public Landroidj/support/v4/view/NestedScrollingChildHelper;
.super Ljava/lang/Object;


# instance fields
.field private mIsNestedScrollingEnabled:Z

.field private mNestedScrollingParent:Landroid/view/ViewParent;

.field private mTempNestedScrollConsumed:[I

.field private final mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidj/support/v4/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public dispatchNestedFling(FFZ)Z
    .registers 6

    invoke-virtual {p0}, Landroidj/support/v4/view/NestedScrollingChildHelper;->isNestedScrollingEnabled()Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Landroidj/support/v4/view/NestedScrollingChildHelper;->mNestedScrollingParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_13

    iget-object v0, p0, Landroidj/support/v4/view/NestedScrollingChildHelper;->mNestedScrollingParent:Landroid/view/ViewParent;

    iget-object v1, p0, Landroidj/support/v4/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    invoke-static {v0, v1, p1, p2, p3}, Landroidj/support/v4/view/ViewParentCompat;->onNestedFling(Landroid/view/ViewParent;Landroid/view/View;FFZ)Z

    move-result v0

    :goto_12
    return v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public dispatchNestedPreFling(FF)Z
    .registers 5

    invoke-virtual {p0}, Landroidj/support/v4/view/NestedScrollingChildHelper;->isNestedScrollingEnabled()Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Landroidj/support/v4/view/NestedScrollingChildHelper;->mNestedScrollingParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_13

    iget-object v0, p0, Landroidj/support/v4/view/NestedScrollingChildHelper;->mNestedScrollingParent:Landroid/view/ViewParent;

    iget-object v1, p0, Landroidj/support/v4/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    invoke-static {v0, v1, p1, p2}, Landroidj/support/v4/view/ViewParentCompat;->onNestedPreFling(Landroid/view/ViewParent;Landroid/view/View;FF)Z

    move-result v0

    :goto_12
    return v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public dispatchNestedPreScroll(II[I[I)Z
    .registers 11

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroidj/support/v4/view/NestedScrollingChildHelper;->isNestedScrollingEnabled()Z

    move-result v2

    if-eqz v2, :cond_4f

    iget-object v2, p0, Landroidj/support/v4/view/NestedScrollingChildHelper;->mNestedScrollingParent:Landroid/view/ViewParent;

    if-eqz v2, :cond_4f

    if-nez p1, :cond_10

    if-eqz p2, :cond_50

    :cond_10
    if-eqz p4, :cond_57

    iget-object v2, p0, Landroidj/support/v4/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    invoke-virtual {v2, p4}, Landroid/view/View;->getLocationInWindow([I)V

    aget v3, p4, v0

    aget v2, p4, v1

    :goto_1b
    if-nez p3, :cond_28

    iget-object v4, p0, Landroidj/support/v4/view/NestedScrollingChildHelper;->mTempNestedScrollConsumed:[I

    if-nez v4, :cond_26

    const/4 v4, 0x2

    new-array v4, v4, [I

    iput-object v4, p0, Landroidj/support/v4/view/NestedScrollingChildHelper;->mTempNestedScrollConsumed:[I

    :cond_26
    iget-object p3, p0, Landroidj/support/v4/view/NestedScrollingChildHelper;->mTempNestedScrollConsumed:[I

    :cond_28
    aput v0, p3, v0

    aput v0, p3, v1

    iget-object v4, p0, Landroidj/support/v4/view/NestedScrollingChildHelper;->mNestedScrollingParent:Landroid/view/ViewParent;

    iget-object v5, p0, Landroidj/support/v4/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    invoke-static {v4, v5, p1, p2, p3}, Landroidj/support/v4/view/ViewParentCompat;->onNestedPreScroll(Landroid/view/ViewParent;Landroid/view/View;II[I)V

    if-eqz p4, :cond_46

    iget-object v4, p0, Landroidj/support/v4/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    invoke-virtual {v4, p4}, Landroid/view/View;->getLocationInWindow([I)V

    aget v4, p4, v0

    sub-int v3, v4, v3

    aput v3, p4, v0

    aget v3, p4, v1

    sub-int v2, v3, v2

    aput v2, p4, v1

    :cond_46
    aget v2, p3, v0

    if-nez v2, :cond_4e

    aget v2, p3, v1

    if-eqz v2, :cond_4f

    :cond_4e
    move v0, v1

    :cond_4f
    :goto_4f
    return v0

    :cond_50
    if-eqz p4, :cond_4f

    aput v0, p4, v0

    aput v0, p4, v1

    goto :goto_4f

    :cond_57
    move v2, v0

    move v3, v0

    goto :goto_1b
.end method

.method public dispatchNestedScroll(IIII[I)Z
    .registers 16

    const/4 v9, 0x1

    const/4 v7, 0x0

    invoke-virtual {p0}, Landroidj/support/v4/view/NestedScrollingChildHelper;->isNestedScrollingEnabled()Z

    move-result v0

    if-eqz v0, :cond_3e

    iget-object v0, p0, Landroidj/support/v4/view/NestedScrollingChildHelper;->mNestedScrollingParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_3e

    if-nez p1, :cond_14

    if-nez p2, :cond_14

    if-nez p3, :cond_14

    if-eqz p4, :cond_3f

    :cond_14
    if-eqz p5, :cond_46

    iget-object v0, p0, Landroidj/support/v4/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    invoke-virtual {v0, p5}, Landroid/view/View;->getLocationInWindow([I)V

    aget v0, p5, v7

    aget v1, p5, v9

    move v6, v0

    move v8, v1

    :goto_21
    iget-object v0, p0, Landroidj/support/v4/view/NestedScrollingChildHelper;->mNestedScrollingParent:Landroid/view/ViewParent;

    iget-object v1, p0, Landroidj/support/v4/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Landroidj/support/v4/view/ViewParentCompat;->onNestedScroll(Landroid/view/ViewParent;Landroid/view/View;IIII)V

    if-eqz p5, :cond_3d

    iget-object v0, p0, Landroidj/support/v4/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    invoke-virtual {v0, p5}, Landroid/view/View;->getLocationInWindow([I)V

    aget v0, p5, v7

    sub-int/2addr v0, v6

    aput v0, p5, v7

    aget v0, p5, v9

    sub-int/2addr v0, v8

    aput v0, p5, v9

    :cond_3d
    move v7, v9

    :cond_3e
    :goto_3e
    return v7

    :cond_3f
    if-eqz p5, :cond_3e

    aput v7, p5, v7

    aput v7, p5, v9

    goto :goto_3e

    :cond_46
    move v6, v7

    move v8, v7

    goto :goto_21
.end method

.method public hasNestedScrollingParent()Z
    .registers 2

    iget-object v0, p0, Landroidj/support/v4/view/NestedScrollingChildHelper;->mNestedScrollingParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public isNestedScrollingEnabled()Z
    .registers 2

    iget-boolean v0, p0, Landroidj/support/v4/view/NestedScrollingChildHelper;->mIsNestedScrollingEnabled:Z

    return v0
.end method

.method public onDetachedFromWindow()V
    .registers 2

    iget-object v0, p0, Landroidj/support/v4/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    invoke-static {v0}, Landroidj/support/v4/view/ViewCompat;->stopNestedScroll(Landroid/view/View;)V

    return-void
.end method

.method public onStopNestedScroll(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Landroidj/support/v4/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    invoke-static {v0}, Landroidj/support/v4/view/ViewCompat;->stopNestedScroll(Landroid/view/View;)V

    return-void
.end method

.method public setNestedScrollingEnabled(Z)V
    .registers 3

    iget-boolean v0, p0, Landroidj/support/v4/view/NestedScrollingChildHelper;->mIsNestedScrollingEnabled:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroidj/support/v4/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    invoke-static {v0}, Landroidj/support/v4/view/ViewCompat;->stopNestedScroll(Landroid/view/View;)V

    :cond_9
    iput-boolean p1, p0, Landroidj/support/v4/view/NestedScrollingChildHelper;->mIsNestedScrollingEnabled:Z

    return-void
.end method

.method public startNestedScroll(I)Z
    .registers 6

    const/4 v2, 0x1

    invoke-virtual {p0}, Landroidj/support/v4/view/NestedScrollingChildHelper;->hasNestedScrollingParent()Z

    move-result v0

    if-eqz v0, :cond_9

    move v0, v2

    :goto_8
    return v0

    :cond_9
    invoke-virtual {p0}, Landroidj/support/v4/view/NestedScrollingChildHelper;->isNestedScrollingEnabled()Z

    move-result v0

    if-eqz v0, :cond_36

    iget-object v0, p0, Landroidj/support/v4/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    iget-object v0, p0, Landroidj/support/v4/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    :goto_17
    if-eqz v1, :cond_36

    iget-object v3, p0, Landroidj/support/v4/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    invoke-static {v1, v0, v3, p1}, Landroidj/support/v4/view/ViewParentCompat;->onStartNestedScroll(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/View;I)Z

    move-result v3

    if-eqz v3, :cond_2a

    iput-object v1, p0, Landroidj/support/v4/view/NestedScrollingChildHelper;->mNestedScrollingParent:Landroid/view/ViewParent;

    iget-object v3, p0, Landroidj/support/v4/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    invoke-static {v1, v0, v3, p1}, Landroidj/support/v4/view/ViewParentCompat;->onNestedScrollAccepted(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/View;I)V

    move v0, v2

    goto :goto_8

    :cond_2a
    instance-of v3, v1, Landroid/view/View;

    if-eqz v3, :cond_31

    move-object v0, v1

    check-cast v0, Landroid/view/View;

    :cond_31
    invoke-interface {v1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    goto :goto_17

    :cond_36
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public stopNestedScroll()V
    .registers 3

    iget-object v0, p0, Landroidj/support/v4/view/NestedScrollingChildHelper;->mNestedScrollingParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_e

    iget-object v0, p0, Landroidj/support/v4/view/NestedScrollingChildHelper;->mNestedScrollingParent:Landroid/view/ViewParent;

    iget-object v1, p0, Landroidj/support/v4/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    invoke-static {v0, v1}, Landroidj/support/v4/view/ViewParentCompat;->onStopNestedScroll(Landroid/view/ViewParent;Landroid/view/View;)V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidj/support/v4/view/NestedScrollingChildHelper;->mNestedScrollingParent:Landroid/view/ViewParent;

    :cond_e
    return-void
.end method
