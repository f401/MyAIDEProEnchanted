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
    .registers 4

    invoke-super {p0, p1, p2}, Landroid/support/v4/view/c;->j6(Landroid/view/View;Labcd/A;)V

    invoke-static {p1}, Landroid/support/v4/widget/DrawerLayout;->VH(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Labcd/A;->DW(Landroid/view/View;)V

    :cond_0
    return-void
.end method
