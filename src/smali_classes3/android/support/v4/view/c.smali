.class public Landroid/support/v4/view/c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/view/c$a;,
        Landroid/support/v4/view/c$b;
    }
.end annotation


# static fields
.field private static final DW:Landroid/view/View$AccessibilityDelegate;

.field private static final j6:Landroid/support/v4/view/c$b;


# instance fields
.field final FH:Landroid/view/View$AccessibilityDelegate;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_c

    new-instance v0, Landroid/support/v4/view/c$a;

    invoke-direct {v0}, Landroid/support/v4/view/c$a;-><init>()V

    goto :goto_11

    :cond_c
    new-instance v0, Landroid/support/v4/view/c$b;

    invoke-direct {v0}, Landroid/support/v4/view/c$b;-><init>()V

    :goto_11
    sput-object v0, Landroid/support/v4/view/c;->j6:Landroid/support/v4/view/c$b;

    new-instance v0, Landroid/view/View$AccessibilityDelegate;

    invoke-direct {v0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    sput-object v0, Landroid/support/v4/view/c;->DW:Landroid/view/View$AccessibilityDelegate;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Landroid/support/v4/view/c;->j6:Landroid/support/v4/view/c$b;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/c$b;->j6(Landroid/support/v4/view/c;)Landroid/view/View$AccessibilityDelegate;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/view/c;->FH:Landroid/view/View$AccessibilityDelegate;

    return-void
.end method


# virtual methods
.method public DW(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 4

    sget-object v0, Landroid/support/v4/view/c;->DW:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {v0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method public FH(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 4

    sget-object v0, Landroid/support/v4/view/c;->DW:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {v0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method public Hw(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 4

    sget-object v0, Landroid/support/v4/view/c;->DW:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {v0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->sendAccessibilityEventUnchecked(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method public j6(Landroid/view/View;)Labcd/B;
    .registers 4

    sget-object v0, Landroid/support/v4/view/c;->j6:Landroid/support/v4/view/c$b;

    sget-object v1, Landroid/support/v4/view/c;->DW:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {v0, v1, p1}, Landroid/support/v4/view/c$b;->j6(Landroid/view/View$AccessibilityDelegate;Landroid/view/View;)Labcd/B;

    move-result-object p1

    return-object p1
.end method

.method j6()Landroid/view/View$AccessibilityDelegate;
    .registers 2

    iget-object v0, p0, Landroid/support/v4/view/c;->FH:Landroid/view/View$AccessibilityDelegate;

    return-object v0
.end method

.method public j6(Landroid/view/View;I)V
    .registers 4

    sget-object v0, Landroid/support/v4/view/c;->DW:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {v0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->sendAccessibilityEvent(Landroid/view/View;I)V

    return-void
.end method

.method public j6(Landroid/view/View;Labcd/A;)V
    .registers 4

    sget-object v0, Landroid/support/v4/view/c;->DW:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {p2}, Labcd/A;->U2()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    return-void
.end method

.method public j6(Landroid/view/View;ILandroid/os/Bundle;)Z
    .registers 6

    sget-object v0, Landroid/support/v4/view/c;->j6:Landroid/support/v4/view/c$b;

    sget-object v1, Landroid/support/v4/view/c;->DW:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {v0, v1, p1, p2, p3}, Landroid/support/v4/view/c$b;->j6(Landroid/view/View$AccessibilityDelegate;Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result p1

    return p1
.end method

.method public j6(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 4

    sget-object v0, Landroid/support/v4/view/c;->DW:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {v0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->dispatchPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p1

    return p1
.end method

.method public j6(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 5

    sget-object v0, Landroid/support/v4/view/c;->DW:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {v0, p1, p2, p3}, Landroid/view/View$AccessibilityDelegate;->onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p1

    return p1
.end method
