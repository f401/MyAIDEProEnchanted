.class final Landroidj/support/v4/widget/DrawerLayout$ChildAccessibilityDelegate;
.super Landroidj/support/v4/view/AccessibilityDelegateCompat;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidj/support/v4/widget/DrawerLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ChildAccessibilityDelegate"
.end annotation


# instance fields
.field final this$0:Landroidj/support/v4/widget/DrawerLayout;


# direct methods
.method constructor <init>(Landroidj/support/v4/widget/DrawerLayout;)V
    .registers 2

    iput-object p1, p0, Landroidj/support/v4/widget/DrawerLayout$ChildAccessibilityDelegate;->this$0:Landroidj/support/v4/widget/DrawerLayout;

    invoke-direct {p0}, Landroidj/support/v4/view/AccessibilityDelegateCompat;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroidj/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V
    .registers 4

    invoke-super {p0, p1, p2}, Landroidj/support/v4/view/AccessibilityDelegateCompat;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroidj/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V

    invoke-static {p1}, Landroidj/support/v4/widget/DrawerLayout;->includeChildForAccessibility(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_d

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroidj/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setParent(Landroid/view/View;)V

    :cond_d
    return-void
.end method
