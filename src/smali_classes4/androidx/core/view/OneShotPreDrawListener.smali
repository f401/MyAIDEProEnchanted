.class public final Landroidx/core/view/OneShotPreDrawListener;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;
.implements Landroid/view/View$OnAttachStateChangeListener;


# instance fields
.field private final mRunnable:Ljava/lang/Runnable;

.field private final mView:Landroid/view/View;

.field private mViewTreeObserver:Landroid/view/ViewTreeObserver;


# direct methods
.method private constructor <init>(Landroid/view/View;Ljava/lang/Runnable;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/core/view/OneShotPreDrawListener;->mView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iput-object v0, p0, Landroidx/core/view/OneShotPreDrawListener;->mViewTreeObserver:Landroid/view/ViewTreeObserver;

    iput-object p2, p0, Landroidx/core/view/OneShotPreDrawListener;->mRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public static add(Landroid/view/View;Ljava/lang/Runnable;)Landroidx/core/view/OneShotPreDrawListener;
    .registers 4

    if-eqz p0, :cond_1c

    if-eqz p1, :cond_14

    new-instance v0, Landroidx/core/view/OneShotPreDrawListener;

    invoke-direct {v0, p0, p1}, Landroidx/core/view/OneShotPreDrawListener;-><init>(Landroid/view/View;Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    return-object v0

    :cond_14
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "runnable == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1c
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "view == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public onPreDraw()Z
    .registers 2

    invoke-virtual {p0}, Landroidx/core/view/OneShotPreDrawListener;->removeListener()V

    iget-object v0, p0, Landroidx/core/view/OneShotPreDrawListener;->mRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    const/4 v0, 0x1

    return v0
.end method

.method public onViewAttachedToWindow(Landroid/view/View;)V
    .registers 3

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iput-object v0, p0, Landroidx/core/view/OneShotPreDrawListener;->mViewTreeObserver:Landroid/view/ViewTreeObserver;

    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .registers 2

    invoke-virtual {p0}, Landroidx/core/view/OneShotPreDrawListener;->removeListener()V

    return-void
.end method

.method public removeListener()V
    .registers 2

    iget-object v0, p0, Landroidx/core/view/OneShotPreDrawListener;->mViewTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Landroidx/core/view/OneShotPreDrawListener;->mViewTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :goto_d
    iget-object v0, p0, Landroidx/core/view/OneShotPreDrawListener;->mView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    return-void

    :cond_13
    iget-object v0, p0, Landroidx/core/view/OneShotPreDrawListener;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    goto :goto_d
.end method
