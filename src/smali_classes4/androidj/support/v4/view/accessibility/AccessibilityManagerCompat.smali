.class public final Landroidj/support/v4/view/accessibility/AccessibilityManagerCompat;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidj/support/v4/view/accessibility/AccessibilityManagerCompat$AccessibilityManagerIcsImpl;,
        Landroidj/support/v4/view/accessibility/AccessibilityManagerCompat$AccessibilityManagerKitKatImpl;,
        Landroidj/support/v4/view/accessibility/AccessibilityManagerCompat$AccessibilityManagerStubImpl;,
        Landroidj/support/v4/view/accessibility/AccessibilityManagerCompat$AccessibilityManagerVersionImpl;,
        Landroidj/support/v4/view/accessibility/AccessibilityManagerCompat$AccessibilityStateChangeListener;,
        Landroidj/support/v4/view/accessibility/AccessibilityManagerCompat$AccessibilityStateChangeListenerCompat;,
        Landroidj/support/v4/view/accessibility/AccessibilityManagerCompat$TouchExplorationStateChangeListener;
    }
.end annotation


# static fields
.field private static final IMPL:Landroidj/support/v4/view/accessibility/AccessibilityManagerCompat$AccessibilityManagerVersionImpl;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_e

    new-instance v0, Landroidj/support/v4/view/accessibility/AccessibilityManagerCompat$AccessibilityManagerKitKatImpl;

    invoke-direct {v0}, Landroidj/support/v4/view/accessibility/AccessibilityManagerCompat$AccessibilityManagerKitKatImpl;-><init>()V

    sput-object v0, Landroidj/support/v4/view/accessibility/AccessibilityManagerCompat;->IMPL:Landroidj/support/v4/view/accessibility/AccessibilityManagerCompat$AccessibilityManagerVersionImpl;

    :goto_d
    return-void

    :cond_e
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_1c

    new-instance v0, Landroidj/support/v4/view/accessibility/AccessibilityManagerCompat$AccessibilityManagerIcsImpl;

    invoke-direct {v0}, Landroidj/support/v4/view/accessibility/AccessibilityManagerCompat$AccessibilityManagerIcsImpl;-><init>()V

    sput-object v0, Landroidj/support/v4/view/accessibility/AccessibilityManagerCompat;->IMPL:Landroidj/support/v4/view/accessibility/AccessibilityManagerCompat$AccessibilityManagerVersionImpl;

    goto :goto_d

    :cond_1c
    new-instance v0, Landroidj/support/v4/view/accessibility/AccessibilityManagerCompat$AccessibilityManagerStubImpl;

    invoke-direct {v0}, Landroidj/support/v4/view/accessibility/AccessibilityManagerCompat$AccessibilityManagerStubImpl;-><init>()V

    sput-object v0, Landroidj/support/v4/view/accessibility/AccessibilityManagerCompat;->IMPL:Landroidj/support/v4/view/accessibility/AccessibilityManagerCompat$AccessibilityManagerVersionImpl;

    goto :goto_d
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addAccessibilityStateChangeListener(Landroid/view/accessibility/AccessibilityManager;Landroidj/support/v4/view/accessibility/AccessibilityManagerCompat$AccessibilityStateChangeListener;)Z
    .registers 3

    sget-object v0, Landroidj/support/v4/view/accessibility/AccessibilityManagerCompat;->IMPL:Landroidj/support/v4/view/accessibility/AccessibilityManagerCompat$AccessibilityManagerVersionImpl;

    invoke-interface {v0, p0, p1}, Landroidj/support/v4/view/accessibility/AccessibilityManagerCompat$AccessibilityManagerVersionImpl;->addAccessibilityStateChangeListener(Landroid/view/accessibility/AccessibilityManager;Landroidj/support/v4/view/accessibility/AccessibilityManagerCompat$AccessibilityStateChangeListener;)Z

    move-result v0

    return v0
.end method

.method public static addTouchExplorationStateChangeListener(Landroid/view/accessibility/AccessibilityManager;Landroidj/support/v4/view/accessibility/AccessibilityManagerCompat$TouchExplorationStateChangeListener;)Z
    .registers 3

    sget-object v0, Landroidj/support/v4/view/accessibility/AccessibilityManagerCompat;->IMPL:Landroidj/support/v4/view/accessibility/AccessibilityManagerCompat$AccessibilityManagerVersionImpl;

    invoke-interface {v0, p0, p1}, Landroidj/support/v4/view/accessibility/AccessibilityManagerCompat$AccessibilityManagerVersionImpl;->addTouchExplorationStateChangeListener(Landroid/view/accessibility/AccessibilityManager;Landroidj/support/v4/view/accessibility/AccessibilityManagerCompat$TouchExplorationStateChangeListener;)Z

    move-result v0

    return v0
.end method

.method public static getEnabledAccessibilityServiceList(Landroid/view/accessibility/AccessibilityManager;I)Ljava/util/List;
    .registers 3
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

    sget-object v0, Landroidj/support/v4/view/accessibility/AccessibilityManagerCompat;->IMPL:Landroidj/support/v4/view/accessibility/AccessibilityManagerCompat$AccessibilityManagerVersionImpl;

    invoke-interface {v0, p0, p1}, Landroidj/support/v4/view/accessibility/AccessibilityManagerCompat$AccessibilityManagerVersionImpl;->getEnabledAccessibilityServiceList(Landroid/view/accessibility/AccessibilityManager;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getInstalledAccessibilityServiceList(Landroid/view/accessibility/AccessibilityManager;)Ljava/util/List;
    .registers 2
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

    sget-object v0, Landroidj/support/v4/view/accessibility/AccessibilityManagerCompat;->IMPL:Landroidj/support/v4/view/accessibility/AccessibilityManagerCompat$AccessibilityManagerVersionImpl;

    invoke-interface {v0, p0}, Landroidj/support/v4/view/accessibility/AccessibilityManagerCompat$AccessibilityManagerVersionImpl;->getInstalledAccessibilityServiceList(Landroid/view/accessibility/AccessibilityManager;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static isTouchExplorationEnabled(Landroid/view/accessibility/AccessibilityManager;)Z
    .registers 2

    sget-object v0, Landroidj/support/v4/view/accessibility/AccessibilityManagerCompat;->IMPL:Landroidj/support/v4/view/accessibility/AccessibilityManagerCompat$AccessibilityManagerVersionImpl;

    invoke-interface {v0, p0}, Landroidj/support/v4/view/accessibility/AccessibilityManagerCompat$AccessibilityManagerVersionImpl;->isTouchExplorationEnabled(Landroid/view/accessibility/AccessibilityManager;)Z

    move-result v0

    return v0
.end method

.method public static removeAccessibilityStateChangeListener(Landroid/view/accessibility/AccessibilityManager;Landroidj/support/v4/view/accessibility/AccessibilityManagerCompat$AccessibilityStateChangeListener;)Z
    .registers 3

    sget-object v0, Landroidj/support/v4/view/accessibility/AccessibilityManagerCompat;->IMPL:Landroidj/support/v4/view/accessibility/AccessibilityManagerCompat$AccessibilityManagerVersionImpl;

    invoke-interface {v0, p0, p1}, Landroidj/support/v4/view/accessibility/AccessibilityManagerCompat$AccessibilityManagerVersionImpl;->removeAccessibilityStateChangeListener(Landroid/view/accessibility/AccessibilityManager;Landroidj/support/v4/view/accessibility/AccessibilityManagerCompat$AccessibilityStateChangeListener;)Z

    move-result v0

    return v0
.end method

.method public static removeTouchExplorationStateChangeListener(Landroid/view/accessibility/AccessibilityManager;Landroidj/support/v4/view/accessibility/AccessibilityManagerCompat$TouchExplorationStateChangeListener;)Z
    .registers 3

    sget-object v0, Landroidj/support/v4/view/accessibility/AccessibilityManagerCompat;->IMPL:Landroidj/support/v4/view/accessibility/AccessibilityManagerCompat$AccessibilityManagerVersionImpl;

    invoke-interface {v0, p0, p1}, Landroidj/support/v4/view/accessibility/AccessibilityManagerCompat$AccessibilityManagerVersionImpl;->removeTouchExplorationStateChangeListener(Landroid/view/accessibility/AccessibilityManager;Landroidj/support/v4/view/accessibility/AccessibilityManagerCompat$TouchExplorationStateChangeListener;)Z

    move-result v0

    return v0
.end method
