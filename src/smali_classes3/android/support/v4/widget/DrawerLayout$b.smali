.class final Landroid/support/v4/widget/DrawerLayout$b;
.super Landroid/support/v4/view/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/widget/DrawerLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/support/v4/view/c;-><init>()V

    return-void
.end method


# virtual methods
.method public j6(Landroid/view/View;Labcd/A;)V
    .registers 3

    invoke-super {p0, p1, p2}, Landroid/support/v4/view/c;->j6(Landroid/view/View;Labcd/A;)V

    invoke-static {p1}, Landroid/support/v4/widget/DrawerLayout;->VH(Landroid/view/View;)Z

    move-result p1

    if-nez p1, :cond_d

    const/4 p1, 0x0

    invoke-virtual {p2, p1}, Labcd/A;->DW(Landroid/view/View;)V

    :cond_d
    return-void
.end method
