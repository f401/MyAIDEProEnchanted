.class Landroid/support/v4/app/t;
.super Landroid/support/v4/app/x$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/app/x;->j6(Landroid/support/v4/app/Fragment;Landroid/support/v4/app/x$c;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final DW:Landroid/support/v4/app/Fragment;

.field final FH:Landroid/support/v4/app/x;


# direct methods
.method constructor <init>(Landroid/support/v4/app/x;Landroid/view/animation/Animation$AnimationListener;Landroid/support/v4/app/Fragment;)V
    .registers 4

    iput-object p1, p0, Landroid/support/v4/app/t;->FH:Landroid/support/v4/app/x;

    iput-object p3, p0, Landroid/support/v4/app/t;->DW:Landroid/support/v4/app/Fragment;

    const/4 p1, 0x0

    invoke-direct {p0, p2, p1}, Landroid/support/v4/app/x$b;-><init>(Landroid/view/animation/Animation$AnimationListener;Landroid/support/v4/app/s;)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 9

    invoke-super {p0, p1}, Landroid/support/v4/app/x$b;->onAnimationEnd(Landroid/view/animation/Animation;)V

    iget-object p1, p0, Landroid/support/v4/app/t;->DW:Landroid/support/v4/app/Fragment;

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->v5()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1f

    iget-object p1, p0, Landroid/support/v4/app/t;->DW:Landroid/support/v4/app/Fragment;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/support/v4/app/Fragment;->j6(Landroid/view/View;)V

    iget-object v1, p0, Landroid/support/v4/app/t;->FH:Landroid/support/v4/app/x;

    iget-object v2, p0, Landroid/support/v4/app/t;->DW:Landroid/support/v4/app/Fragment;

    invoke-virtual {v2}, Landroid/support/v4/app/Fragment;->a8()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/support/v4/app/x;->j6(Landroid/support/v4/app/Fragment;IIIZ)V

    :cond_1f
    return-void
.end method
