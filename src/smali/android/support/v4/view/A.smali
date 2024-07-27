.class public final Landroid/support/v4/view/A;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/view/A$a;,
        Landroid/support/v4/view/A$b;,
        Landroid/support/v4/view/A$c;
    }
.end annotation


# static fields
.field static final j6:Landroid/support/v4/view/A$c;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    new-instance v0, Landroid/support/v4/view/A$b;

    invoke-direct {v0}, Landroid/support/v4/view/A$b;-><init>()V

    sput-object v0, Landroid/support/v4/view/A;->j6:Landroid/support/v4/view/A$c;

    :goto_0
    return-void

    :cond_0
    const/16 v1, 0x13

    if-lt v0, v1, :cond_1

    new-instance v0, Landroid/support/v4/view/A$a;

    invoke-direct {v0}, Landroid/support/v4/view/A$a;-><init>()V

    sput-object v0, Landroid/support/v4/view/A;->j6:Landroid/support/v4/view/A$c;

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/support/v4/view/A$c;

    invoke-direct {v0}, Landroid/support/v4/view/A$c;-><init>()V

    sput-object v0, Landroid/support/v4/view/A;->j6:Landroid/support/v4/view/A$c;

    goto :goto_0
.end method

.method public static DW(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/View;II)Z
    .registers 6

    instance-of v0, p0, Landroid/support/v4/view/k;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/support/v4/view/k;

    invoke-interface {p0, p1, p2, p3, p4}, Landroid/support/v4/view/k;->DW(Landroid/view/View;Landroid/view/View;II)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    if-nez p4, :cond_1

    sget-object v0, Landroid/support/v4/view/A;->j6:Landroid/support/v4/view/A$c;

    invoke-virtual {v0, p0, p1, p2, p3}, Landroid/support/v4/view/A$c;->DW(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/View;I)Z

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static j6(Landroid/view/ViewParent;Landroid/view/View;I)V
    .registers 4

    instance-of v0, p0, Landroid/support/v4/view/k;

    if-eqz v0, :cond_1

    check-cast p0, Landroid/support/v4/view/k;

    invoke-interface {p0, p1, p2}, Landroid/support/v4/view/k;->j6(Landroid/view/View;I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-nez p2, :cond_0

    sget-object v0, Landroid/support/v4/view/A;->j6:Landroid/support/v4/view/A$c;

    invoke-virtual {v0, p0, p1}, Landroid/support/v4/view/A$c;->j6(Landroid/view/ViewParent;Landroid/view/View;)V

    goto :goto_0
.end method

.method public static j6(Landroid/view/ViewParent;Landroid/view/View;IIIII)V
    .registers 14

    instance-of v0, p0, Landroid/support/v4/view/k;

    if-eqz v0, :cond_1

    move-object v0, p0

    check-cast v0, Landroid/support/v4/view/k;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-interface/range {v0 .. v6}, Landroid/support/v4/view/k;->j6(Landroid/view/View;IIIII)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-nez p6, :cond_0

    sget-object v0, Landroid/support/v4/view/A;->j6:Landroid/support/v4/view/A$c;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Landroid/support/v4/view/A$c;->j6(Landroid/view/ViewParent;Landroid/view/View;IIII)V

    goto :goto_0
.end method

.method public static j6(Landroid/view/ViewParent;Landroid/view/View;II[II)V
    .registers 12

    instance-of v0, p0, Landroid/support/v4/view/k;

    if-eqz v0, :cond_1

    move-object v0, p0

    check-cast v0, Landroid/support/v4/view/k;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Landroid/support/v4/view/k;->j6(Landroid/view/View;II[II)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-nez p5, :cond_0

    sget-object v0, Landroid/support/v4/view/A;->j6:Landroid/support/v4/view/A$c;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/view/A$c;->j6(Landroid/view/ViewParent;Landroid/view/View;II[I)V

    goto :goto_0
.end method

.method public static j6(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/View;II)V
    .registers 6

    instance-of v0, p0, Landroid/support/v4/view/k;

    if-eqz v0, :cond_1

    check-cast p0, Landroid/support/v4/view/k;

    invoke-interface {p0, p1, p2, p3, p4}, Landroid/support/v4/view/k;->j6(Landroid/view/View;Landroid/view/View;II)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-nez p4, :cond_0

    sget-object v0, Landroid/support/v4/view/A;->j6:Landroid/support/v4/view/A$c;

    invoke-virtual {v0, p0, p1, p2, p3}, Landroid/support/v4/view/A$c;->j6(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/View;I)V

    goto :goto_0
.end method

.method public static j6(Landroid/view/ViewParent;Landroid/view/View;FF)Z
    .registers 5

    sget-object v0, Landroid/support/v4/view/A;->j6:Landroid/support/v4/view/A$c;

    invoke-virtual {v0, p0, p1, p2, p3}, Landroid/support/v4/view/A$c;->j6(Landroid/view/ViewParent;Landroid/view/View;FF)Z

    move-result v0

    return v0
.end method

.method public static j6(Landroid/view/ViewParent;Landroid/view/View;FFZ)Z
    .registers 11

    sget-object v0, Landroid/support/v4/view/A;->j6:Landroid/support/v4/view/A$c;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/view/A$c;->j6(Landroid/view/ViewParent;Landroid/view/View;FFZ)Z

    move-result v0

    return v0
.end method
