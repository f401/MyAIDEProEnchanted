.class Labcd/A$b;
.super Labcd/A$j;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/A;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Labcd/A$j;-><init>()V

    return-void
.end method


# virtual methods
.method public DW(Landroid/view/accessibility/AccessibilityNodeInfo;Z)V
    .registers 3

    invoke-virtual {p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setVisibleToUser(Z)V

    return-void
.end method

.method public FH(Landroid/view/accessibility/AccessibilityNodeInfo;)Z
    .registers 3

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isAccessibilityFocused()Z

    move-result v0

    return v0
.end method

.method public Hw(Landroid/view/accessibility/AccessibilityNodeInfo;)Z
    .registers 3

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isVisibleToUser()Z

    move-result v0

    return v0
.end method

.method public j6(Landroid/view/accessibility/AccessibilityNodeInfo;)I
    .registers 3

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getMovementGranularities()I

    move-result v0

    return v0
.end method

.method public j6(Landroid/view/accessibility/AccessibilityNodeInfo;I)V
    .registers 3

    invoke-virtual {p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setMovementGranularities(I)V

    return-void
.end method

.method public j6(Landroid/view/accessibility/AccessibilityNodeInfo;Z)V
    .registers 3

    invoke-virtual {p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setAccessibilityFocused(Z)V

    return-void
.end method
