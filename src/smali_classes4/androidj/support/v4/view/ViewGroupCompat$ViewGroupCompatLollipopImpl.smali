.class Landroidj/support/v4/view/ViewGroupCompat$ViewGroupCompatLollipopImpl;
.super Landroidj/support/v4/view/ViewGroupCompat$ViewGroupCompatJellybeanMR2Impl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidj/support/v4/view/ViewGroupCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ViewGroupCompatLollipopImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroidj/support/v4/view/ViewGroupCompat$ViewGroupCompatJellybeanMR2Impl;-><init>()V

    return-void
.end method


# virtual methods
.method public getNestedScrollAxes(Landroid/view/ViewGroup;)I
    .registers 3

    invoke-static {p1}, Landroidj/support/v4/view/ViewGroupCompatLollipop;->getNestedScrollAxes(Landroid/view/ViewGroup;)I

    move-result v0

    return v0
.end method

.method public isTransitionGroup(Landroid/view/ViewGroup;)Z
    .registers 3

    invoke-static {p1}, Landroidj/support/v4/view/ViewGroupCompatLollipop;->isTransitionGroup(Landroid/view/ViewGroup;)Z

    move-result v0

    return v0
.end method

.method public setTransitionGroup(Landroid/view/ViewGroup;Z)V
    .registers 3

    invoke-static {p1, p2}, Landroidj/support/v4/view/ViewGroupCompatLollipop;->setTransitionGroup(Landroid/view/ViewGroup;Z)V

    return-void
.end method
