.class Landroidj/support/v4/view/accessibility/AccessibilityEventCompat$AccessibilityEventKitKatImpl;
.super Landroidj/support/v4/view/accessibility/AccessibilityEventCompat$AccessibilityEventJellyBeanImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidj/support/v4/view/accessibility/AccessibilityEventCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AccessibilityEventKitKatImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroidj/support/v4/view/accessibility/AccessibilityEventCompat$AccessibilityEventJellyBeanImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public getContentChangeTypes(Landroid/view/accessibility/AccessibilityEvent;)I
    .registers 3

    invoke-static {p1}, Landroidj/support/v4/view/accessibility/AccessibilityEventCompatKitKat;->getContentChangeTypes(Landroid/view/accessibility/AccessibilityEvent;)I

    move-result v0

    return v0
.end method

.method public setContentChangeTypes(Landroid/view/accessibility/AccessibilityEvent;I)V
    .registers 3

    invoke-static {p1, p2}, Landroidj/support/v4/view/accessibility/AccessibilityEventCompatKitKat;->setContentChangeTypes(Landroid/view/accessibility/AccessibilityEvent;I)V

    return-void
.end method
