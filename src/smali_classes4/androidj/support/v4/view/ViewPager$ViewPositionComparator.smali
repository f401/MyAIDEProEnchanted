.class Landroidj/support/v4/view/ViewPager$ViewPositionComparator;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidj/support/v4/view/ViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ViewPositionComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Landroid/view/View;Landroid/view/View;)I
    .registers 7

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidj/support/v4/view/ViewPager$LayoutParams;

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidj/support/v4/view/ViewPager$LayoutParams;

    iget-boolean v2, v0, Landroidj/support/v4/view/ViewPager$LayoutParams;->isDecor:Z

    iget-boolean v3, v1, Landroidj/support/v4/view/ViewPager$LayoutParams;->isDecor:Z

    if-eq v2, v3, :cond_1a

    iget-boolean v0, v0, Landroidj/support/v4/view/ViewPager$LayoutParams;->isDecor:Z

    if-eqz v0, :cond_18

    const/4 v0, 0x1

    :goto_17
    return v0

    :cond_18
    const/4 v0, -0x1

    goto :goto_17

    :cond_1a
    iget v0, v0, Landroidj/support/v4/view/ViewPager$LayoutParams;->position:I

    iget v1, v1, Landroidj/support/v4/view/ViewPager$LayoutParams;->position:I

    sub-int/2addr v0, v1

    goto :goto_17
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    check-cast p1, Landroid/view/View;

    check-cast p2, Landroid/view/View;

    invoke-virtual {p0, p1, p2}, Landroidj/support/v4/view/ViewPager$ViewPositionComparator;->compare(Landroid/view/View;Landroid/view/View;)I

    move-result v0

    return v0
.end method
