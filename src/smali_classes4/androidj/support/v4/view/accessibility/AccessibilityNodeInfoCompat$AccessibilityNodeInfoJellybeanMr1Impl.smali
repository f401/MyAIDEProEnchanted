.class Landroidj/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoJellybeanMr1Impl;
.super Landroidj/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoJellybeanImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidj/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AccessibilityNodeInfoJellybeanMr1Impl"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroidj/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoJellybeanImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public getLabelFor(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    invoke-static {p1}, Landroidj/support/v4/view/accessibility/AccessibilityNodeInfoCompatJellybeanMr1;->getLabelFor(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getLabeledBy(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    invoke-static {p1}, Landroidj/support/v4/view/accessibility/AccessibilityNodeInfoCompatJellybeanMr1;->getLabeledBy(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public setLabelFor(Ljava/lang/Object;Landroid/view/View;)V
    .registers 3

    invoke-static {p1, p2}, Landroidj/support/v4/view/accessibility/AccessibilityNodeInfoCompatJellybeanMr1;->setLabelFor(Ljava/lang/Object;Landroid/view/View;)V

    return-void
.end method

.method public setLabelFor(Ljava/lang/Object;Landroid/view/View;I)V
    .registers 4

    invoke-static {p1, p2, p3}, Landroidj/support/v4/view/accessibility/AccessibilityNodeInfoCompatJellybeanMr1;->setLabelFor(Ljava/lang/Object;Landroid/view/View;I)V

    return-void
.end method

.method public setLabeledBy(Ljava/lang/Object;Landroid/view/View;)V
    .registers 3

    invoke-static {p1, p2}, Landroidj/support/v4/view/accessibility/AccessibilityNodeInfoCompatJellybeanMr1;->setLabeledBy(Ljava/lang/Object;Landroid/view/View;)V

    return-void
.end method

.method public setLabeledBy(Ljava/lang/Object;Landroid/view/View;I)V
    .registers 4

    invoke-static {p1, p2, p3}, Landroidj/support/v4/view/accessibility/AccessibilityNodeInfoCompatJellybeanMr1;->setLabeledBy(Ljava/lang/Object;Landroid/view/View;I)V

    return-void
.end method
