.class Landroidj/support/v4/view/ViewGroupCompat$ViewGroupCompatJellybeanMR2Impl;
.super Landroidj/support/v4/view/ViewGroupCompat$ViewGroupCompatIcsImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidj/support/v4/view/ViewGroupCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ViewGroupCompatJellybeanMR2Impl"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroidj/support/v4/view/ViewGroupCompat$ViewGroupCompatIcsImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public getLayoutMode(Landroid/view/ViewGroup;)I
    .registers 3

    invoke-static {p1}, Landroidj/support/v4/view/ViewGroupCompatJellybeanMR2;->getLayoutMode(Landroid/view/ViewGroup;)I

    move-result v0

    return v0
.end method

.method public setLayoutMode(Landroid/view/ViewGroup;I)V
    .registers 3

    invoke-static {p1, p2}, Landroidj/support/v4/view/ViewGroupCompatJellybeanMR2;->setLayoutMode(Landroid/view/ViewGroup;I)V

    return-void
.end method
