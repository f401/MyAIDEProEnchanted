.class Landroidj/support/v4/view/accessibility/AccessibilityNodeProviderCompat$AccessibilityNodeProviderJellyBeanImpl;
.super Landroidj/support/v4/view/accessibility/AccessibilityNodeProviderCompat$AccessibilityNodeProviderStubImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidj/support/v4/view/accessibility/AccessibilityNodeProviderCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AccessibilityNodeProviderJellyBeanImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroidj/support/v4/view/accessibility/AccessibilityNodeProviderCompat$AccessibilityNodeProviderStubImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public newAccessibilityNodeProviderBridge(Landroidj/support/v4/view/accessibility/AccessibilityNodeProviderCompat;)Ljava/lang/Object;
    .registers 3

    new-instance v0, Landroidj/support/v4/view/accessibility/AccessibilityNodeProviderCompat$AccessibilityNodeProviderJellyBeanImpl$1;

    invoke-direct {v0, p0, p1}, Landroidj/support/v4/view/accessibility/AccessibilityNodeProviderCompat$AccessibilityNodeProviderJellyBeanImpl$1;-><init>(Landroidj/support/v4/view/accessibility/AccessibilityNodeProviderCompat$AccessibilityNodeProviderJellyBeanImpl;Landroidj/support/v4/view/accessibility/AccessibilityNodeProviderCompat;)V

    invoke-static {v0}, Landroidj/support/v4/view/accessibility/AccessibilityNodeProviderCompatJellyBean;->newAccessibilityNodeProviderBridge(Landroidj/support/v4/view/accessibility/AccessibilityNodeProviderCompatJellyBean$AccessibilityNodeInfoBridge;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
