.class Landroidj/support/v4/view/ViewCompatMarshmallow;
.super Ljava/lang/Object;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x17
.end annotation

.annotation build Landroidj/support/annotation/RequiresApi;
    value = 0x17
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getScrollIndicators(Landroid/view/View;)I
    .registers 2

    invoke-virtual {p0}, Landroid/view/View;->getScrollIndicators()I

    move-result v0

    return v0
.end method

.method static offsetLeftAndRight(Landroid/view/View;I)V
    .registers 2

    invoke-virtual {p0, p1}, Landroid/view/View;->offsetLeftAndRight(I)V

    return-void
.end method

.method static offsetTopAndBottom(Landroid/view/View;I)V
    .registers 2

    invoke-virtual {p0, p1}, Landroid/view/View;->offsetTopAndBottom(I)V

    return-void
.end method

.method public static setScrollIndicators(Landroid/view/View;I)V
    .registers 2

    invoke-virtual {p0, p1}, Landroid/view/View;->setScrollIndicators(I)V

    return-void
.end method

.method public static setScrollIndicators(Landroid/view/View;II)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setScrollIndicators(II)V

    return-void
.end method
