.class Landroid/support/v4/app/x$a;
.super Landroid/support/v4/app/x$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field DW:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;Landroid/view/animation/Animation$AnimationListener;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Landroid/support/v4/app/x$b;-><init>(Landroid/view/animation/Animation$AnimationListener;Landroid/support/v4/app/s;)V

    iput-object p1, p0, Landroid/support/v4/app/x$a;->DW:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 5

    iget-object v0, p0, Landroid/support/v4/app/x$a;->DW:Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/view/s;->gn(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_17

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_f

    goto :goto_17

    :cond_f
    iget-object v0, p0, Landroid/support/v4/app/x$a;->DW:Landroid/view/View;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    goto :goto_21

    :cond_17
    :goto_17
    iget-object v0, p0, Landroid/support/v4/app/x$a;->DW:Landroid/view/View;

    new-instance v1, Landroid/support/v4/app/w;

    invoke-direct {v1, p0}, Landroid/support/v4/app/w;-><init>(Landroid/support/v4/app/x$a;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :goto_21
    invoke-super {p0, p1}, Landroid/support/v4/app/x$b;->onAnimationEnd(Landroid/view/animation/Animation;)V

    return-void
.end method
