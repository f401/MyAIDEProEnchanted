.class Landroid/support/v4/view/c$a;
.super Landroid/support/v4/view/c$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/support/v4/view/c$b;-><init>()V

    return-void
.end method


# virtual methods
.method public j6(Landroid/view/View$AccessibilityDelegate;Landroid/view/View;)Labcd/B;
    .registers 3

    invoke-virtual {p1, p2}, Landroid/view/View$AccessibilityDelegate;->getAccessibilityNodeProvider(Landroid/view/View;)Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object p1

    if-eqz p1, :cond_c

    new-instance p2, Labcd/B;

    invoke-direct {p2, p1}, Labcd/B;-><init>(Ljava/lang/Object;)V

    return-object p2

    :cond_c
    const/4 p1, 0x0

    return-object p1
.end method

.method public j6(Landroid/support/v4/view/c;)Landroid/view/View$AccessibilityDelegate;
    .registers 3

    new-instance v0, Landroid/support/v4/view/b;

    invoke-direct {v0, p0, p1}, Landroid/support/v4/view/b;-><init>(Landroid/support/v4/view/c$a;Landroid/support/v4/view/c;)V

    return-object v0
.end method

.method public j6(Landroid/view/View$AccessibilityDelegate;Landroid/view/View;ILandroid/os/Bundle;)Z
    .registers 5

    invoke-virtual {p1, p2, p3, p4}, Landroid/view/View$AccessibilityDelegate;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result p1

    return p1
.end method
