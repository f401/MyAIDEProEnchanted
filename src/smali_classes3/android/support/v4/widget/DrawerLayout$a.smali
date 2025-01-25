.class Landroid/support/v4/widget/DrawerLayout$a;
.super Landroid/support/v4/view/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/widget/DrawerLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field private final Hw:Landroid/graphics/Rect;

.field final v5:Landroid/support/v4/widget/DrawerLayout;


# direct methods
.method constructor <init>(Landroid/support/v4/widget/DrawerLayout;)V
    .registers 2

    iput-object p1, p0, Landroid/support/v4/widget/DrawerLayout$a;->v5:Landroid/support/v4/widget/DrawerLayout;

    invoke-direct {p0}, Landroid/support/v4/view/c;-><init>()V

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Landroid/support/v4/widget/DrawerLayout$a;->Hw:Landroid/graphics/Rect;

    return-void
.end method

.method private j6(Labcd/A;Labcd/A;)V
    .registers 4

    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout$a;->Hw:Landroid/graphics/Rect;

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

    move-result p2

    invoke-virtual {p1, p2}, Labcd/A;->j6(I)V

    return-void
.end method

.method private j6(Labcd/A;Landroid/view/ViewGroup;)V
    .registers 7

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_17

    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Landroid/support/v4/widget/DrawerLayout;->VH(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_14

    invoke-virtual {p1, v2}, Labcd/A;->j6(Landroid/view/View;)V

    :cond_14
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_17
    return-void
.end method


# virtual methods
.method public DW(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 3

    invoke-super {p0, p1, p2}, Landroid/support/v4/view/c;->DW(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    const-class p1, Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public j6(Landroid/view/View;Labcd/A;)V
    .registers 6

    sget-boolean v0, Landroid/support/v4/widget/DrawerLayout;->FH:Z

    if-eqz v0, :cond_8

    invoke-super {p0, p1, p2}, Landroid/support/v4/view/c;->j6(Landroid/view/View;Labcd/A;)V

    goto :goto_2a

    :cond_8
    invoke-static {p2}, Labcd/A;->j6(Labcd/A;)Labcd/A;

    move-result-object v0

    invoke-super {p0, p1, v0}, Landroid/support/v4/view/c;->j6(Landroid/view/View;Labcd/A;)V

    invoke-virtual {p2, p1}, Labcd/A;->FH(Landroid/view/View;)V

    invoke-static {p1}, Landroid/support/v4/view/s;->v5(Landroid/view/View;)Landroid/view/ViewParent;

    move-result-object v1

    instance-of v2, v1, Landroid/view/View;

    if-eqz v2, :cond_1f

    check-cast v1, Landroid/view/View;

    invoke-virtual {p2, v1}, Labcd/A;->DW(Landroid/view/View;)V

    :cond_1f
    invoke-direct {p0, p2, v0}, Landroid/support/v4/widget/DrawerLayout$a;->j6(Labcd/A;Labcd/A;)V

    invoke-virtual {v0}, Labcd/A;->Mr()V

    check-cast p1, Landroid/view/ViewGroup;

    invoke-direct {p0, p2, p1}, Landroid/support/v4/widget/DrawerLayout$a;->j6(Labcd/A;Landroid/view/ViewGroup;)V

    :goto_2a
    const-class p1, Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Labcd/A;->j6(Ljava/lang/CharSequence;)V

    const/4 p1, 0x0

    invoke-virtual {p2, p1}, Labcd/A;->Hw(Z)V

    invoke-virtual {p2, p1}, Labcd/A;->v5(Z)V

    sget-object p1, Labcd/A$a;->j6:Labcd/A$a;

    invoke-virtual {p2, p1}, Labcd/A;->j6(Labcd/A$a;)Z

    sget-object p1, Labcd/A$a;->DW:Labcd/A$a;

    invoke-virtual {p2, p1}, Labcd/A;->j6(Labcd/A$a;)Z

    return-void
.end method

.method public j6(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 5

    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_27

    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object p1

    iget-object p2, p0, Landroid/support/v4/widget/DrawerLayout$a;->v5:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {p2}, Landroid/support/v4/widget/DrawerLayout;->Hw()Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_25

    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout$a;->v5:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v0, p2}, Landroid/support/v4/widget/DrawerLayout;->v5(Landroid/view/View;)I

    move-result p2

    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout$a;->v5:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v0, p2}, Landroid/support/v4/widget/DrawerLayout;->Hw(I)Ljava/lang/CharSequence;

    move-result-object p2

    if-eqz p2, :cond_25

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_25
    const/4 p1, 0x1

    return p1

    :cond_27
    invoke-super {p0, p1, p2}, Landroid/support/v4/view/c;->j6(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p1

    return p1
.end method

.method public j6(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 5

    sget-boolean v0, Landroid/support/v4/widget/DrawerLayout;->FH:Z

    if-nez v0, :cond_d

    invoke-static {p2}, Landroid/support/v4/widget/DrawerLayout;->VH(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_d

    :cond_b
    const/4 p1, 0x0

    return p1

    :cond_d
    :goto_d
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/view/c;->j6(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p1

    return p1
.end method
