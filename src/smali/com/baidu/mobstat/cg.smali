.class public Lcom/baidu/mobstat/cg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/Window$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/mobstat/cg$a;
    }
.end annotation


# instance fields
.field private a:Landroid/view/Window$Callback;

.field private b:Lcom/baidu/mobstat/cg$a;


# direct methods
.method public constructor <init>(Landroid/view/Window$Callback;Lcom/baidu/mobstat/cg$a;)V
    .registers 3

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/baidu/mobstat/cg;->a:Landroid/view/Window$Callback;

    .line 29
    iput-object p2, p0, Lcom/baidu/mobstat/cg;->b:Lcom/baidu/mobstat/cg$a;

    return-void
.end method


# virtual methods
.method public a()Landroid/view/Window$Callback;
    .registers 2

    .line 24
    iget-object v0, p0, Lcom/baidu/mobstat/cg;->a:Landroid/view/Window$Callback;

    return-object v0
.end method

.method public dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    .line 41
    iget-object v0, p0, Lcom/baidu/mobstat/cg;->a:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 3

    .line 46
    iget-object v0, p0, Lcom/baidu/mobstat/cg;->b:Lcom/baidu/mobstat/cg$a;

    if-eqz v0, :cond_7

    .line 47
    invoke-interface {v0, p1}, Lcom/baidu/mobstat/cg$a;->a(Landroid/view/KeyEvent;)V

    .line 50
    :cond_7
    iget-object v0, p0, Lcom/baidu/mobstat/cg;->a:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z
    .registers 3

    .line 56
    iget-object v0, p0, Lcom/baidu/mobstat/cg;->a:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 3

    .line 62
    iget-object v0, p0, Lcom/baidu/mobstat/cg;->a:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p1

    return p1
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    .line 67
    iget-object v0, p0, Lcom/baidu/mobstat/cg;->b:Lcom/baidu/mobstat/cg$a;

    if-eqz v0, :cond_7

    .line 68
    invoke-interface {v0, p1}, Lcom/baidu/mobstat/cg$a;->a(Landroid/view/MotionEvent;)V

    .line 71
    :cond_7
    iget-object v0, p0, Lcom/baidu/mobstat/cg;->a:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    .line 77
    iget-object v0, p0, Lcom/baidu/mobstat/cg;->a:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onActionModeFinished(Landroid/view/ActionMode;)V
    .registers 3

    .line 83
    iget-object v0, p0, Lcom/baidu/mobstat/cg;->a:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->onActionModeFinished(Landroid/view/ActionMode;)V

    return-void
.end method

.method public onActionModeStarted(Landroid/view/ActionMode;)V
    .registers 3

    .line 89
    iget-object v0, p0, Lcom/baidu/mobstat/cg;->a:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->onActionModeStarted(Landroid/view/ActionMode;)V

    return-void
.end method

.method public onAttachedToWindow()V
    .registers 2

    .line 95
    iget-object v0, p0, Lcom/baidu/mobstat/cg;->a:Landroid/view/Window$Callback;

    invoke-interface {v0}, Landroid/view/Window$Callback;->onAttachedToWindow()V

    return-void
.end method

.method public onContentChanged()V
    .registers 2

    .line 101
    iget-object v0, p0, Lcom/baidu/mobstat/cg;->a:Landroid/view/Window$Callback;

    invoke-interface {v0}, Landroid/view/Window$Callback;->onContentChanged()V

    return-void
.end method

.method public onCreatePanelMenu(ILandroid/view/Menu;)Z
    .registers 4

    .line 107
    iget-object v0, p0, Lcom/baidu/mobstat/cg;->a:Landroid/view/Window$Callback;

    invoke-interface {v0, p1, p2}, Landroid/view/Window$Callback;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onCreatePanelView(I)Landroid/view/View;
    .registers 3

    .line 113
    iget-object v0, p0, Lcom/baidu/mobstat/cg;->a:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->onCreatePanelView(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDetachedFromWindow()V
    .registers 2

    .line 119
    iget-object v0, p0, Lcom/baidu/mobstat/cg;->a:Landroid/view/Window$Callback;

    invoke-interface {v0}, Landroid/view/Window$Callback;->onDetachedFromWindow()V

    return-void
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .registers 4

    .line 125
    iget-object v0, p0, Lcom/baidu/mobstat/cg;->a:Landroid/view/Window$Callback;

    invoke-interface {v0, p1, p2}, Landroid/view/Window$Callback;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onMenuOpened(ILandroid/view/Menu;)Z
    .registers 4

    .line 131
    iget-object v0, p0, Lcom/baidu/mobstat/cg;->a:Landroid/view/Window$Callback;

    invoke-interface {v0, p1, p2}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onPanelClosed(ILandroid/view/Menu;)V
    .registers 4

    .line 137
    iget-object v0, p0, Lcom/baidu/mobstat/cg;->a:Landroid/view/Window$Callback;

    invoke-interface {v0, p1, p2}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    return-void
.end method

.method public onPointerCaptureChanged(Z)V
    .registers 3

    .line 172
    iget-object v0, p0, Lcom/baidu/mobstat/cg;->a:Landroid/view/Window$Callback;

    invoke-static {v0, p1}, Lcom/baidu/mobstat/f$$ExternalSyntheticApiModelOutline0;->m(Landroid/view/Window$Callback;Z)V

    return-void
.end method

.method public onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .registers 5

    .line 143
    iget-object v0, p0, Lcom/baidu/mobstat/cg;->a:Landroid/view/Window$Callback;

    invoke-interface {v0, p1, p2, p3}, Landroid/view/Window$Callback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onProvideKeyboardShortcuts(Ljava/util/List;Landroid/view/Menu;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/KeyboardShortcutGroup;",
            ">;",
            "Landroid/view/Menu;",
            "I)V"
        }
    .end annotation

    .line 178
    iget-object v0, p0, Lcom/baidu/mobstat/cg;->a:Landroid/view/Window$Callback;

    invoke-static {v0, p1, p2, p3}, Lcom/baidu/mobstat/f$$ExternalSyntheticApiModelOutline0;->m(Landroid/view/Window$Callback;Ljava/util/List;Landroid/view/Menu;I)V

    return-void
.end method

.method public onSearchRequested()Z
    .registers 2

    .line 148
    iget-object v0, p0, Lcom/baidu/mobstat/cg;->a:Landroid/view/Window$Callback;

    invoke-interface {v0}, Landroid/view/Window$Callback;->onSearchRequested()Z

    move-result v0

    return v0
.end method

.method public onSearchRequested(Landroid/view/SearchEvent;)Z
    .registers 3

    .line 154
    iget-object v0, p0, Lcom/baidu/mobstat/cg;->a:Landroid/view/Window$Callback;

    invoke-static {v0, p1}, Lcom/baidu/mobstat/f$$ExternalSyntheticApiModelOutline0;->m(Landroid/view/Window$Callback;Landroid/view/SearchEvent;)Z

    move-result p1

    return p1
.end method

.method public onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V
    .registers 3

    .line 160
    iget-object v0, p0, Lcom/baidu/mobstat/cg;->a:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .registers 3

    .line 166
    iget-object v0, p0, Lcom/baidu/mobstat/cg;->a:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->onWindowFocusChanged(Z)V

    return-void
.end method

.method public onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .registers 3

    .line 183
    iget-object v0, p0, Lcom/baidu/mobstat/cg;->a:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object p1

    return-object p1
.end method

.method public onWindowStartingActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;
    .registers 4

    .line 189
    iget-object v0, p0, Lcom/baidu/mobstat/cg;->a:Landroid/view/Window$Callback;

    invoke-static {v0, p1, p2}, Lcom/baidu/mobstat/f$$ExternalSyntheticApiModelOutline0;->m(Landroid/view/Window$Callback;Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;

    move-result-object p1

    return-object p1
.end method
