.class interface abstract Landroidj/support/v4/view/accessibility/AccessibilityManagerCompat$AccessibilityManagerVersionImpl;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidj/support/v4/view/accessibility/AccessibilityManagerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "AccessibilityManagerVersionImpl"
.end annotation


# virtual methods
.method public abstract addAccessibilityStateChangeListener(Landroid/view/accessibility/AccessibilityManager;Landroidj/support/v4/view/accessibility/AccessibilityManagerCompat$AccessibilityStateChangeListener;)Z
.end method

.method public abstract addTouchExplorationStateChangeListener(Landroid/view/accessibility/AccessibilityManager;Landroidj/support/v4/view/accessibility/AccessibilityManagerCompat$TouchExplorationStateChangeListener;)Z
.end method

.method public abstract getEnabledAccessibilityServiceList(Landroid/view/accessibility/AccessibilityManager;I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/accessibility/AccessibilityManager;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/accessibilityservice/AccessibilityServiceInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getInstalledAccessibilityServiceList(Landroid/view/accessibility/AccessibilityManager;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/accessibility/AccessibilityManager;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/accessibilityservice/AccessibilityServiceInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract isTouchExplorationEnabled(Landroid/view/accessibility/AccessibilityManager;)Z
.end method

.method public abstract newAccessibilityStateChangeListener(Landroidj/support/v4/view/accessibility/AccessibilityManagerCompat$AccessibilityStateChangeListener;)Landroidj/support/v4/view/accessibility/AccessibilityManagerCompatIcs$AccessibilityStateChangeListenerWrapper;
.end method

.method public abstract newTouchExplorationStateChangeListener(Landroidj/support/v4/view/accessibility/AccessibilityManagerCompat$TouchExplorationStateChangeListener;)Landroidj/support/v4/view/accessibility/AccessibilityManagerCompatKitKat$TouchExplorationStateChangeListenerWrapper;
.end method

.method public abstract removeAccessibilityStateChangeListener(Landroid/view/accessibility/AccessibilityManager;Landroidj/support/v4/view/accessibility/AccessibilityManagerCompat$AccessibilityStateChangeListener;)Z
.end method

.method public abstract removeTouchExplorationStateChangeListener(Landroid/view/accessibility/AccessibilityManager;Landroidj/support/v4/view/accessibility/AccessibilityManagerCompat$TouchExplorationStateChangeListener;)Z
.end method
