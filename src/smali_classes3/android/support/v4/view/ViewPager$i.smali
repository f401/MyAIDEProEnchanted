.class Landroid/support/v4/view/ViewPager$i;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/ViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "i"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
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
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Landroid/view/View;

    check-cast p2, Landroid/view/View;

    invoke-virtual {p0, p1, p2}, Landroid/support/v4/view/ViewPager$i;->j6(Landroid/view/View;Landroid/view/View;)I

    move-result p1

    return p1
.end method

.method public j6(Landroid/view/View;Landroid/view/View;)I
    .registers 5

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/support/v4/view/ViewPager$LayoutParams;

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/support/v4/view/ViewPager$LayoutParams;

    iget-boolean v0, p1, Landroid/support/v4/view/ViewPager$LayoutParams;->j6:Z

    iget-boolean v1, p2, Landroid/support/v4/view/ViewPager$LayoutParams;->j6:Z

    if-eq v0, v1, :cond_18

    if-eqz v0, :cond_16

    const/4 p1, 0x1

    goto :goto_17

    :cond_16
    const/4 p1, -0x1

    :goto_17
    return p1

    :cond_18
    iget p1, p1, Landroid/support/v4/view/ViewPager$LayoutParams;->v5:I

    iget p2, p2, Landroid/support/v4/view/ViewPager$LayoutParams;->v5:I

    sub-int/2addr p1, p2

    return p1
.end method
