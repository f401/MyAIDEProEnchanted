.class Labcd/Qv$c;
.super Landroid/widget/FrameLayout;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/Qv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# instance fields
.field private j6:Labcd/Qv$a;


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    iget-object v0, p0, Labcd/Qv$c;->j6:Labcd/Qv$a;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1}, Labcd/Qv$a;->DW(Landroid/view/MotionEvent;)V

    :cond_7
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public j6(Lcom/appfour/backbone/api/objects/UserActionWindow;)V
    .registers 3

    new-instance v0, Labcd/Qv$a;

    invoke-direct {v0, p1}, Labcd/Qv$a;-><init>(Lcom/appfour/backbone/api/objects/UserActionWindow;)V

    iput-object v0, p0, Labcd/Qv$c;->j6:Labcd/Qv$a;

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    const/4 p1, 0x1

    return p1
.end method
