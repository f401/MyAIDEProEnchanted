.class Landroidj/support/v4/view/accessibility/AccessibilityManagerCompat$AccessibilityManagerKitKatImpl$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroidj/support/v4/view/accessibility/AccessibilityManagerCompatKitKat$TouchExplorationStateChangeListenerBridge;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidj/support/v4/view/accessibility/AccessibilityManagerCompat$AccessibilityManagerKitKatImpl;->newTouchExplorationStateChangeListener(Landroidj/support/v4/view/accessibility/AccessibilityManagerCompat$TouchExplorationStateChangeListener;)Landroidj/support/v4/view/accessibility/AccessibilityManagerCompatKitKat$TouchExplorationStateChangeListenerWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Landroidj/support/v4/view/accessibility/AccessibilityManagerCompat$AccessibilityManagerKitKatImpl;

.field final val$listener:Landroidj/support/v4/view/accessibility/AccessibilityManagerCompat$TouchExplorationStateChangeListener;


# direct methods
.method constructor <init>(Landroidj/support/v4/view/accessibility/AccessibilityManagerCompat$AccessibilityManagerKitKatImpl;Landroidj/support/v4/view/accessibility/AccessibilityManagerCompat$TouchExplorationStateChangeListener;)V
    .registers 3

    iput-object p1, p0, Landroidj/support/v4/view/accessibility/AccessibilityManagerCompat$AccessibilityManagerKitKatImpl$1;->this$0:Landroidj/support/v4/view/accessibility/AccessibilityManagerCompat$AccessibilityManagerKitKatImpl;

    iput-object p2, p0, Landroidj/support/v4/view/accessibility/AccessibilityManagerCompat$AccessibilityManagerKitKatImpl$1;->val$listener:Landroidj/support/v4/view/accessibility/AccessibilityManagerCompat$TouchExplorationStateChangeListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouchExplorationStateChanged(Z)V
    .registers 3

    iget-object v0, p0, Landroidj/support/v4/view/accessibility/AccessibilityManagerCompat$AccessibilityManagerKitKatImpl$1;->val$listener:Landroidj/support/v4/view/accessibility/AccessibilityManagerCompat$TouchExplorationStateChangeListener;

    invoke-interface {v0, p1}, Landroidj/support/v4/view/accessibility/AccessibilityManagerCompat$TouchExplorationStateChangeListener;->onTouchExplorationStateChanged(Z)V

    return-void
.end method
