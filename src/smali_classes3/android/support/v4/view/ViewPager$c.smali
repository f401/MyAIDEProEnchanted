.class Landroid/support/v4/view/ViewPager$c;
.super Landroid/support/v4/view/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/ViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field final Hw:Landroid/support/v4/view/ViewPager;


# direct methods
.method constructor <init>(Landroid/support/v4/view/ViewPager;)V
    .registers 2

    iput-object p1, p0, Landroid/support/v4/view/ViewPager$c;->Hw:Landroid/support/v4/view/ViewPager;

    invoke-direct {p0}, Landroid/support/v4/view/c;-><init>()V

    return-void
.end method

.method private DW()Z
    .registers 3

    iget-object v0, p0, Landroid/support/v4/view/ViewPager$c;->Hw:Landroid/support/v4/view/ViewPager;

    iget-object v0, v0, Landroid/support/v4/view/ViewPager;->u7:Landroid/support/v4/view/o;

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Landroid/support/v4/view/o;->j6()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_e

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    :goto_f
    return v1
.end method


# virtual methods
.method public DW(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 4

    invoke-super {p0, p1, p2}, Landroid/support/v4/view/c;->DW(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    const-class p1, Landroid/support/v4/view/ViewPager;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Landroid/support/v4/view/ViewPager$c;->DW()Z

    move-result p1

    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityEvent;->setScrollable(Z)V

    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result p1

    const/16 v0, 0x1000

    if-ne p1, v0, :cond_36

    iget-object p1, p0, Landroid/support/v4/view/ViewPager$c;->Hw:Landroid/support/v4/view/ViewPager;

    iget-object p1, p1, Landroid/support/v4/view/ViewPager;->u7:Landroid/support/v4/view/o;

    if-eqz p1, :cond_36

    invoke-virtual {p1}, Landroid/support/v4/view/o;->j6()I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityEvent;->setItemCount(I)V

    iget-object p1, p0, Landroid/support/v4/view/ViewPager$c;->Hw:Landroid/support/v4/view/ViewPager;

    iget p1, p1, Landroid/support/v4/view/ViewPager;->tp:I

    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    iget-object p1, p0, Landroid/support/v4/view/ViewPager$c;->Hw:Landroid/support/v4/view/ViewPager;

    iget p1, p1, Landroid/support/v4/view/ViewPager;->tp:I

    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityEvent;->setToIndex(I)V

    :cond_36
    return-void
.end method

.method public j6(Landroid/view/View;Labcd/A;)V
    .registers 4

    invoke-super {p0, p1, p2}, Landroid/support/v4/view/c;->j6(Landroid/view/View;Labcd/A;)V

    const-class p1, Landroid/support/v4/view/ViewPager;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Labcd/A;->j6(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Landroid/support/v4/view/ViewPager$c;->DW()Z

    move-result p1

    invoke-virtual {p2, p1}, Labcd/A;->VH(Z)V

    iget-object p1, p0, Landroid/support/v4/view/ViewPager$c;->Hw:Landroid/support/v4/view/ViewPager;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPager;->canScrollHorizontally(I)Z

    move-result p1

    if-eqz p1, :cond_21

    const/16 p1, 0x1000

    invoke-virtual {p2, p1}, Labcd/A;->j6(I)V

    :cond_21
    iget-object p1, p0, Landroid/support/v4/view/ViewPager$c;->Hw:Landroid/support/v4/view/ViewPager;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPager;->canScrollHorizontally(I)Z

    move-result p1

    if-eqz p1, :cond_2f

    const/16 p1, 0x2000

    invoke-virtual {p2, p1}, Labcd/A;->j6(I)V

    :cond_2f
    return-void
.end method

.method public j6(Landroid/view/View;ILandroid/os/Bundle;)Z
    .registers 5

    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/view/c;->j6(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result p1

    const/4 p3, 0x1

    if-eqz p1, :cond_8

    return p3

    :cond_8
    const/16 p1, 0x1000

    const/4 v0, 0x0

    if-eq p2, p1, :cond_25

    const/16 p1, 0x2000

    if-eq p2, p1, :cond_12

    return v0

    :cond_12
    iget-object p1, p0, Landroid/support/v4/view/ViewPager$c;->Hw:Landroid/support/v4/view/ViewPager;

    const/4 p2, -0x1

    invoke-virtual {p1, p2}, Landroid/support/v4/view/ViewPager;->canScrollHorizontally(I)Z

    move-result p1

    if-eqz p1, :cond_24

    iget-object p1, p0, Landroid/support/v4/view/ViewPager$c;->Hw:Landroid/support/v4/view/ViewPager;

    iget p2, p1, Landroid/support/v4/view/ViewPager;->tp:I

    sub-int/2addr p2, p3

    :goto_20
    invoke-virtual {p1, p2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    return p3

    :cond_24
    return v0

    :cond_25
    iget-object p1, p0, Landroid/support/v4/view/ViewPager$c;->Hw:Landroid/support/v4/view/ViewPager;

    invoke-virtual {p1, p3}, Landroid/support/v4/view/ViewPager;->canScrollHorizontally(I)Z

    move-result p1

    if-eqz p1, :cond_33

    iget-object p1, p0, Landroid/support/v4/view/ViewPager$c;->Hw:Landroid/support/v4/view/ViewPager;

    iget p2, p1, Landroid/support/v4/view/ViewPager;->tp:I

    add-int/2addr p2, p3

    goto :goto_20

    :cond_33
    return v0
.end method
