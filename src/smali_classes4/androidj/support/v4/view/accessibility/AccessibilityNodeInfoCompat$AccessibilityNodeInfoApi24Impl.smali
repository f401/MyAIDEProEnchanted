.class Landroidj/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoApi24Impl;
.super Landroidj/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoApi23Impl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidj/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AccessibilityNodeInfoApi24Impl"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroidj/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoApi23Impl;-><init>()V

    return-void
.end method


# virtual methods
.method public getActionSetProgress()Ljava/lang/Object;
    .registers 2

    invoke-static {}, Landroidj/support/v4/view/accessibility/AccessibilityNodeInfoCompatApi24;->getActionSetProgress()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getDrawingOrder(Ljava/lang/Object;)I
    .registers 3

    invoke-static {p1}, Landroidj/support/v4/view/accessibility/AccessibilityNodeInfoCompatApi24;->getDrawingOrder(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isImportantForAccessibility(Ljava/lang/Object;)Z
    .registers 3

    invoke-static {p1}, Landroidj/support/v4/view/accessibility/AccessibilityNodeInfoCompatApi24;->isImportantForAccessibility(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setDrawingOrder(Ljava/lang/Object;I)V
    .registers 3

    invoke-static {p1, p2}, Landroidj/support/v4/view/accessibility/AccessibilityNodeInfoCompatApi24;->setDrawingOrder(Ljava/lang/Object;I)V

    return-void
.end method

.method public setImportantForAccessibility(Ljava/lang/Object;Z)V
    .registers 3

    invoke-static {p1, p2}, Landroidj/support/v4/view/accessibility/AccessibilityNodeInfoCompatApi24;->setImportantForAccessibility(Ljava/lang/Object;Z)V

    return-void
.end method
