.class Landroid/support/v4/app/x$b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field private final j6:Landroid/view/animation/Animation$AnimationListener;


# direct methods
.method private constructor <init>(Landroid/view/animation/Animation$AnimationListener;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v4/app/x$b;->j6:Landroid/view/animation/Animation$AnimationListener;

    return-void
.end method

.method synthetic constructor <init>(Landroid/view/animation/Animation$AnimationListener;Landroid/support/v4/app/s;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/support/v4/app/x$b;-><init>(Landroid/view/animation/Animation$AnimationListener;)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 3

    iget-object v0, p0, Landroid/support/v4/app/x$b;->j6:Landroid/view/animation/Animation$AnimationListener;

    if-eqz v0, :cond_7

    invoke-interface {v0, p1}, Landroid/view/animation/Animation$AnimationListener;->onAnimationEnd(Landroid/view/animation/Animation;)V

    :cond_7
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 3

    iget-object v0, p0, Landroid/support/v4/app/x$b;->j6:Landroid/view/animation/Animation$AnimationListener;

    if-eqz v0, :cond_7

    invoke-interface {v0, p1}, Landroid/view/animation/Animation$AnimationListener;->onAnimationRepeat(Landroid/view/animation/Animation;)V

    :cond_7
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 3

    iget-object v0, p0, Landroid/support/v4/app/x$b;->j6:Landroid/view/animation/Animation$AnimationListener;

    if-eqz v0, :cond_7

    invoke-interface {v0, p1}, Landroid/view/animation/Animation$AnimationListener;->onAnimationStart(Landroid/view/animation/Animation;)V

    :cond_7
    return-void
.end method
