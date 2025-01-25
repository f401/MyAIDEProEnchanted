.class Landroidj/support/v4/view/accessibility/AccessibilityManagerCompat$AccessibilityManagerIcsImpl;
.super Landroidj/support/v4/view/accessibility/AccessibilityManagerCompat$AccessibilityManagerStubImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidj/support/v4/view/accessibility/AccessibilityManagerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AccessibilityManagerIcsImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroidj/support/v4/view/accessibility/AccessibilityManagerCompat$AccessibilityManagerStubImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public addAccessibilityStateChangeListener(Landroid/view/accessibility/AccessibilityManager;Landroidj/support/v4/view/accessibility/AccessibilityManagerCompat$AccessibilityStateChangeListener;)Z
    .registers 4

    invoke-virtual {p0, p2}, Landroidj/support/v4/view/accessibility/AccessibilityManagerCompat$AccessibilityManagerIcsImpl;->newAccessibilityStateChangeListener(Landroidj/support/v4/view/accessibility/AccessibilityManagerCompat$AccessibilityStateChangeListener;)Landroidj/support/v4/view/accessibility/AccessibilityManagerCompatIcs$AccessibilityStateChangeListenerWrapper;

    move-result-object v0

    invoke-static {p1, v0}, Landroidj/support/v4/view/accessibility/AccessibilityManagerCompatIcs;->addAccessibilityStateChangeListener(Landroid/view/accessibility/AccessibilityManager;Landroidj/support/v4/view/accessibility/AccessibilityManagerCompatIcs$AccessibilityStateChangeListenerWrapper;)Z

    move-result v0

    return v0
.end method

.method public getEnabledAccessibilityServiceList(Landroid/view/accessibility/AccessibilityManager;I)Ljava/util/List;
    .registers 4
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

    invoke-static {p1, p2}, Landroidj/support/v4/view/accessibility/AccessibilityManagerCompatIcs;->getEnabledAccessibilityServiceList(Landroid/view/accessibility/AccessibilityManager;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getInstalledAccessibilityServiceList(Landroid/view/accessibility/AccessibilityManager;)Ljava/util/List;
    .registers 3
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

    invoke-static {p1}, Landroidj/support/v4/view/accessibility/AccessibilityManagerCompatIcs;->getInstalledAccessibilityServiceList(Landroid/view/accessibility/AccessibilityManager;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public isTouchExplorationEnabled(Landroid/view/accessibility/AccessibilityManager;)Z
    .registers 3

    invoke-static {p1}, Landroidj/support/v4/view/accessibility/AccessibilityManagerCompatIcs;->isTouchExplorationEnabled(Landroid/view/accessibility/AccessibilityManager;)Z

    move-result v0

    return v0
.end method

.method public newAccessibilityStateChangeListener(Landroidj/support/v4/view/accessibility/AccessibilityManagerCompat$AccessibilityStateChangeListener;)Landroidj/support/v4/view/accessibility/AccessibilityManagerCompatIcs$AccessibilityStateChangeListenerWrapper;
    .registers 4

    new-instance v0, Landroidj/support/v4/view/accessibility/AccessibilityManagerCompatIcs$AccessibilityStateChangeListenerWrapper;

    new-instance v1, Landroidj/support/v4/view/accessibility/AccessibilityManagerCompat$AccessibilityManagerIcsImpl$1;

    invoke-direct {v1, p0, p1}, Landroidj/support/v4/view/accessibility/AccessibilityManagerCompat$AccessibilityManagerIcsImpl$1;-><init>(Landroidj/support/v4/view/accessibility/AccessibilityManagerCompat$AccessibilityManagerIcsImpl;Landroidj/support/v4/view/accessibility/AccessibilityManagerCompat$AccessibilityStateChangeListener;)V

    invoke-direct {v0, p1, v1}, Landroidj/support/v4/view/accessibility/AccessibilityManagerCompatIcs$AccessibilityStateChangeListenerWrapper;-><init>(Ljava/lang/Object;Landroidj/support/v4/view/accessibility/AccessibilityManagerCompatIcs$AccessibilityStateChangeListenerBridge;)V

    return-object v0
.end method

.method public removeAccessibilityStateChangeListener(Landroid/view/accessibility/AccessibilityManager;Landroidj/support/v4/view/accessibility/AccessibilityManagerCompat$AccessibilityStateChangeListener;)Z
    .registers 4

    invoke-virtual {p0, p2}, Landroidj/support/v4/view/accessibility/AccessibilityManagerCompat$AccessibilityManagerIcsImpl;->newAccessibilityStateChangeListener(Landroidj/support/v4/view/accessibility/AccessibilityManagerCompat$AccessibilityStateChangeListener;)Landroidj/support/v4/view/accessibility/AccessibilityManagerCompatIcs$AccessibilityStateChangeListenerWrapper;

    move-result-object v0

    invoke-static {p1, v0}, Landroidj/support/v4/view/accessibility/AccessibilityManagerCompatIcs;->removeAccessibilityStateChangeListener(Landroid/view/accessibility/AccessibilityManager;Landroidj/support/v4/view/accessibility/AccessibilityManagerCompatIcs$AccessibilityStateChangeListenerWrapper;)Z

    move-result v0

    return v0
.end method
