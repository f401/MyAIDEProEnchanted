.class Landroidj/support/v4/view/accessibility/AccessibilityNodeProviderCompatJellyBean;
.super Ljava/lang/Object;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation

.annotation build Landroidj/support/annotation/RequiresApi;
    value = 0x10
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidj/support/v4/view/accessibility/AccessibilityNodeProviderCompatJellyBean$AccessibilityNodeInfoBridge;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static newAccessibilityNodeProviderBridge(Landroidj/support/v4/view/accessibility/AccessibilityNodeProviderCompatJellyBean$AccessibilityNodeInfoBridge;)Ljava/lang/Object;
    .registers 2

    new-instance v0, Landroidj/support/v4/view/accessibility/AccessibilityNodeProviderCompatJellyBean$1;

    invoke-direct {v0, p0}, Landroidj/support/v4/view/accessibility/AccessibilityNodeProviderCompatJellyBean$1;-><init>(Landroidj/support/v4/view/accessibility/AccessibilityNodeProviderCompatJellyBean$AccessibilityNodeInfoBridge;)V

    return-object v0
.end method
