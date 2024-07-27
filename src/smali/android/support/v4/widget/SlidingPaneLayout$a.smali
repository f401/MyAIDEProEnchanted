.class Landroid/support/v4/widget/SlidingPaneLayout$a;
.super Landroid/support/v4/view/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/widget/SlidingPaneLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field private final Hw:Landroid/graphics/Rect;

.field final v5:Landroid/support/v4/widget/SlidingPaneLayout;


# direct methods
.method constructor <init>(Landroid/support/v4/widget/SlidingPaneLayout;)V
    .registers 3

    iput-object p1, p0, Landroid/support/v4/widget/SlidingPaneLayout$a;->v5:Landroid/support/v4/widget/SlidingPaneLayout;

    invoke-direct {p0}, Landroid/support/v4/view/c;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout$a;->Hw:Landroid/graphics/Rect;

    return-void
.end method

.method private j6(Labcd/A;Labcd/A;)V
    .registers 4

    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout$a;->Hw:Landroid/graphics/Rect;

    invoke-virtual {p2, v0}, Labcd/A;->j6(Landroid/graphics/Rect;)V

    invoke-virtual {p1, v0}, Labcd/A;->FH(Landroid/graphics/Rect;)V

    invoke-virtual {p2, v0}, Labcd/A;->DW(Landroid/graphics/Rect;)V

    invoke-virtual {p1, v0}, Labcd/A;->Hw(Landroid/graphics/Rect;)V

    invoke-virtual {p2}, Labcd/A;->j3()Z

    move-result v0

    invoke-virtual {p1, v0}, Labcd/A;->u7(Z)V

    invoke-virtual {p2}, Labcd/A;->v5()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Labcd/A;->FH(Ljava/lang/CharSequence;)V

    invoke-virtual {p2}, Labcd/A;->DW()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Labcd/A;->j6(Ljava/lang/CharSequence;)V

    invoke-virtual {p2}, Labcd/A;->FH()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Labcd/A;->DW(Ljava/lang/CharSequence;)V

    invoke-virtual {p2}, Labcd/A;->we()Z

    move-result v0

    invoke-virtual {p1, v0}, Labcd/A;->FH(Z)V

    invoke-virtual {p2}, Labcd/A;->EQ()Z

    move-result v0

    invoke-virtual {p1, v0}, Labcd/A;->DW(Z)V

    invoke-virtual {p2}, Labcd/A;->J0()Z

    move-result v0

    invoke-virtual {p1, v0}, Labcd/A;->Hw(Z)V

    invoke-virtual {p2}, Labcd/A;->J8()Z

    move-result v0

    invoke-virtual {p1, v0}, Labcd/A;->v5(Z)V

    invoke-virtual {p2}, Labcd/A;->gn()Z

    move-result v0

    invoke-virtual {p1, v0}, Labcd/A;->j6(Z)V

    invoke-virtual {p2}, Labcd/A;->aM()Z

    move-result v0

    invoke-virtual {p1, v0}, Labcd/A;->gn(Z)V

    invoke-virtual {p2}, Labcd/A;->Ws()Z

    move-result v0

    invoke-virtual {p1, v0}, Labcd/A;->Zo(Z)V

    invoke-virtual {p2}, Labcd/A;->j6()I

    move-result v0

    invoke-virtual {p1, v0}, Labcd/A;->j6(I)V

    invoke-virtual {p2}, Labcd/A;->Hw()I

    move-result v0

    invoke-virtual {p1, v0}, Labcd/A;->DW(I)V

    return-void
.end method


# virtual methods
.method public DW(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 4

    invoke-super {p0, p1, p2}, Landroid/support/v4/view/c;->DW(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    const-class v0, Landroid/support/v4/widget/SlidingPaneLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public DW(Landroid/view/View;)Z
    .registers 3

    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout$a;->v5:Landroid/support/v4/widget/SlidingPaneLayout;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/SlidingPaneLayout;->v5(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public j6(Landroid/view/View;Labcd/A;)V
    .registers 7

    invoke-static {p2}, Labcd/A;->j6(Labcd/A;)Labcd/A;

    move-result-object v0

    invoke-super {p0, p1, v0}, Landroid/support/v4/view/c;->j6(Landroid/view/View;Labcd/A;)V

    invoke-direct {p0, p2, v0}, Landroid/support/v4/widget/SlidingPaneLayout$a;->j6(Labcd/A;Labcd/A;)V

    invoke-virtual {v0}, Labcd/A;->Mr()V

    const-class v0, Landroid/support/v4/widget/SlidingPaneLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Labcd/A;->j6(Ljava/lang/CharSequence;)V

    invoke-virtual {p2, p1}, Labcd/A;->FH(Landroid/view/View;)V

    invoke-static {p1}, Landroid/support/v4/view/s;->v5(Landroid/view/View;)Landroid/view/ViewParent;

    move-result-object v0

    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p2, v0}, Labcd/A;->DW(Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout$a;->v5:Landroid/support/v4/widget/SlidingPaneLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_2

    iget-object v2, p0, Landroid/support/v4/widget/SlidingPaneLayout$a;->v5:Landroid/support/v4/widget/SlidingPaneLayout;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/support/v4/widget/SlidingPaneLayout$a;->DW(Landroid/view/View;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_1

    const/4 v3, 0x1

    invoke-static {v2, v3}, Landroid/support/v4/view/s;->FH(Landroid/view/View;I)V

    invoke-virtual {p2, v2}, Labcd/A;->j6(Landroid/view/View;)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public j6(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 5

    invoke-virtual {p0, p2}, Landroid/support/v4/widget/SlidingPaneLayout$a;->DW(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/view/c;->j6(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
