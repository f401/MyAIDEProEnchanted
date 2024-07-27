.class final Landroid/support/v4/view/v;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/ViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroid/support/v4/view/ViewPager$b;",
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
    .registers 4

    check-cast p1, Landroid/support/v4/view/ViewPager$b;

    check-cast p2, Landroid/support/v4/view/ViewPager$b;

    invoke-virtual {p0, p1, p2}, Landroid/support/v4/view/v;->j6(Landroid/support/v4/view/ViewPager$b;Landroid/support/v4/view/ViewPager$b;)I

    move-result v0

    return v0
.end method

.method public j6(Landroid/support/v4/view/ViewPager$b;Landroid/support/v4/view/ViewPager$b;)I
    .registers 5

    iget v0, p1, Landroid/support/v4/view/ViewPager$b;->DW:I

    iget v1, p2, Landroid/support/v4/view/ViewPager$b;->DW:I

    sub-int/2addr v0, v1

    return v0
.end method
