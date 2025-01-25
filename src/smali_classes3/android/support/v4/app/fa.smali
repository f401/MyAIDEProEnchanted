.class Landroid/support/v4/app/fa;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;
.implements Landroid/view/View$OnAttachStateChangeListener;


# instance fields
.field private DW:Landroid/view/ViewTreeObserver;

.field private final FH:Ljava/lang/Runnable;

.field private final j6:Landroid/view/View;


# direct methods
.method private constructor <init>(Landroid/view/View;Ljava/lang/Runnable;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v4/app/fa;->j6:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/app/fa;->DW:Landroid/view/ViewTreeObserver;

    iput-object p2, p0, Landroid/support/v4/app/fa;->FH:Ljava/lang/Runnable;

    return-void
.end method

.method public static j6(Landroid/view/View;Ljava/lang/Runnable;)Landroid/support/v4/app/fa;
    .registers 3

    new-instance v0, Landroid/support/v4/app/fa;

    invoke-direct {v0, p0, p1}, Landroid/support/v4/app/fa;-><init>(Landroid/view/View;Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    return-object v0
.end method


# virtual methods
.method public j6()V
    .registers 2

    iget-object v0, p0, Landroid/support/v4/app/fa;->DW:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/support/v4/app/fa;->DW:Landroid/view/ViewTreeObserver;

    goto :goto_11

    :cond_b
    iget-object v0, p0, Landroid/support/v4/app/fa;->j6:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    :goto_11
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    iget-object v0, p0, Landroid/support/v4/app/fa;->j6:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    return-void
.end method

.method public onPreDraw()Z
    .registers 2

    invoke-virtual {p0}, Landroid/support/v4/app/fa;->j6()V

    iget-object v0, p0, Landroid/support/v4/app/fa;->FH:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    const/4 v0, 0x1

    return v0
.end method

.method public onViewAttachedToWindow(Landroid/view/View;)V
    .registers 2

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/app/fa;->DW:Landroid/view/ViewTreeObserver;

    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .registers 2

    invoke-virtual {p0}, Landroid/support/v4/app/fa;->j6()V

    return-void
.end method
