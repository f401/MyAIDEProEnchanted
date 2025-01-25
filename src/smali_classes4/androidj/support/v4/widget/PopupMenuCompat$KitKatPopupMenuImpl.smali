.class Landroidj/support/v4/widget/PopupMenuCompat$KitKatPopupMenuImpl;
.super Landroidj/support/v4/widget/PopupMenuCompat$BasePopupMenuImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidj/support/v4/widget/PopupMenuCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "KitKatPopupMenuImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroidj/support/v4/widget/PopupMenuCompat$BasePopupMenuImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public getDragToOpenListener(Ljava/lang/Object;)Landroid/view/View$OnTouchListener;
    .registers 3

    invoke-static {p1}, Landroidj/support/v4/widget/PopupMenuCompatKitKat;->getDragToOpenListener(Ljava/lang/Object;)Landroid/view/View$OnTouchListener;

    move-result-object v0

    return-object v0
.end method
