.class Landroidj/support/v4/widget/PopupWindowCompat$KitKatPopupWindowImpl;
.super Landroidj/support/v4/widget/PopupWindowCompat$BasePopupWindowImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidj/support/v4/widget/PopupWindowCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "KitKatPopupWindowImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroidj/support/v4/widget/PopupWindowCompat$BasePopupWindowImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public showAsDropDown(Landroid/widget/PopupWindow;Landroid/view/View;III)V
    .registers 6

    invoke-static {p1, p2, p3, p4, p5}, Landroidj/support/v4/widget/PopupWindowCompatKitKat;->showAsDropDown(Landroid/widget/PopupWindow;Landroid/view/View;III)V

    return-void
.end method
