.class Landroidj/support/v4/widget/PopupWindowCompat$Api23PopupWindowImpl;
.super Landroidj/support/v4/widget/PopupWindowCompat$Api21PopupWindowImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidj/support/v4/widget/PopupWindowCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api23PopupWindowImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroidj/support/v4/widget/PopupWindowCompat$Api21PopupWindowImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public getOverlapAnchor(Landroid/widget/PopupWindow;)Z
    .registers 3

    invoke-static {p1}, Landroidj/support/v4/widget/PopupWindowCompatApi23;->getOverlapAnchor(Landroid/widget/PopupWindow;)Z

    move-result v0

    return v0
.end method

.method public getWindowLayoutType(Landroid/widget/PopupWindow;)I
    .registers 3

    invoke-static {p1}, Landroidj/support/v4/widget/PopupWindowCompatApi23;->getWindowLayoutType(Landroid/widget/PopupWindow;)I

    move-result v0

    return v0
.end method

.method public setOverlapAnchor(Landroid/widget/PopupWindow;Z)V
    .registers 3

    invoke-static {p1, p2}, Landroidj/support/v4/widget/PopupWindowCompatApi23;->setOverlapAnchor(Landroid/widget/PopupWindow;Z)V

    return-void
.end method

.method public setWindowLayoutType(Landroid/widget/PopupWindow;I)V
    .registers 3

    invoke-static {p1, p2}, Landroidj/support/v4/widget/PopupWindowCompatApi23;->setWindowLayoutType(Landroid/widget/PopupWindow;I)V

    return-void
.end method
