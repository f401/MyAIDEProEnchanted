.class Labcd/Qv$d;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/Window$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/Qv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "d"
.end annotation


# instance fields
.field private final DW:Landroid/view/Window$Callback;

.field private final FH:Lcom/appfour/backbone/api/objects/UserActionWindow;

.field private final j6:Labcd/Qv$a;


# direct methods
.method public constructor <init>(Landroid/view/Window;Lcom/appfour/backbone/api/objects/UserActionWindow;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    iput-object v0, p0, Labcd/Qv$d;->DW:Landroid/view/Window$Callback;

    new-instance v0, Labcd/Qv$a;

    invoke-direct {v0, p2}, Labcd/Qv$a;-><init>(Lcom/appfour/backbone/api/objects/UserActionWindow;)V

    iput-object v0, p0, Labcd/Qv$d;->j6:Labcd/Qv$a;

    iput-object p2, p0, Labcd/Qv$d;->FH:Lcom/appfour/backbone/api/objects/UserActionWindow;

    invoke-virtual {p2}, Lcom/appfour/backbone/api/objects/UserActionWindow;->getType()I

    move-result p2

    if-nez p2, :cond_2b

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    new-instance p2, Labcd/Rv;

    invoke-direct {p2, p0}, Labcd/Rv;-><init>(Labcd/Qv$d;)V

    invoke-virtual {p1, p2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    invoke-direct {p0}, Labcd/Qv$d;->j6()V

    :cond_2b
    return-void
.end method

.method private j6()V
    .registers 6

    :try_start_0
    iget-object v0, p0, Labcd/Qv$d;->FH:Lcom/appfour/backbone/api/objects/UserActionWindow;

    invoke-virtual {v0}, Lcom/appfour/backbone/api/objects/UserActionWindow;->getWindowView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getInputMethodWindowVisibleHeight"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sput v1, Labcd/Qv;->DW:I

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_38

    const/4 v3, 0x1

    :cond_38
    sget-boolean v0, Labcd/Qv;->j6:Z

    if-eq v0, v3, :cond_4f

    sput-boolean v3, Labcd/Qv;->j6:Z

    sget-boolean v0, Labcd/Qv;->j6:Z

    if-eqz v0, :cond_48

    iget-object v0, p0, Labcd/Qv$d;->FH:Lcom/appfour/backbone/api/objects/UserActionWindow;

    invoke-static {v0}, Labcd/Qv;->j6(Lcom/appfour/backbone/api/objects/UserActionWindow;)V

    goto :goto_4f

    :cond_48
    iget-object v0, p0, Labcd/Qv$d;->FH:Lcom/appfour/backbone/api/objects/UserActionWindow;

    invoke-static {v0}, Labcd/Qv;->DW(Lcom/appfour/backbone/api/objects/UserActionWindow;)V
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4d} :catch_4e

    goto :goto_4f

    :catch_4e
    move-exception v0

    :cond_4f
    :goto_4f
    return-void
.end method

.method static synthetic j6(Labcd/Qv$d;)V
    .registers 1

    invoke-direct {p0}, Labcd/Qv$d;->j6()V

    return-void
.end method


# virtual methods
.method public dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .registers 4

    :try_start_0
    iget-object v0, p0, Labcd/Qv$d;->j6:Labcd/Qv$a;

    invoke-virtual {v0, p1}, Labcd/Qv$a;->j6(Landroid/view/MotionEvent;)V
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_6

    goto :goto_c

    :catchall_6
    move-exception v0

    const-string v1, "Runtime Error"

    invoke-static {v1, v0}, Labcd/yw;->j6(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_c
    iget-object v0, p0, Labcd/Qv$d;->DW:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 6

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_26

    iget-object v0, p0, Labcd/Qv$d;->FH:Lcom/appfour/backbone/api/objects/UserActionWindow;

    invoke-virtual {v0}, Lcom/appfour/backbone/api/objects/UserActionWindow;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_26

    invoke-static {}, Labcd/Hv;->gn()Lcom/appfour/backbone/api/objects/UserActionWindow;

    move-result-object v0

    if-eqz v0, :cond_26

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1d

    goto :goto_1e

    :cond_1d
    const/4 v1, 0x0

    :goto_1e
    new-instance v2, Lcom/appfour/backbone/api/objects/UserInputAction;

    invoke-direct {v2, v0, v1}, Lcom/appfour/backbone/api/objects/UserInputAction;-><init>(Lcom/appfour/backbone/api/objects/UserActionWindow;Z)V

    invoke-static {v2}, Labcd/Qv;->j6(Lcom/appfour/backbone/api/objects/UserInputAction;)V

    :cond_26
    iget-object v0, p0, Labcd/Qv$d;->DW:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z
    .registers 3

    iget-object v0, p0, Labcd/Qv$d;->DW:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 3

    iget-object v0, p0, Labcd/Qv$d;->DW:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p1

    return p1
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4

    :try_start_0
    iget-object v0, p0, Labcd/Qv$d;->j6:Labcd/Qv$a;

    invoke-virtual {v0, p1}, Labcd/Qv$a;->DW(Landroid/view/MotionEvent;)V
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_6

    goto :goto_c

    :catchall_6
    move-exception v0

    const-string v1, "Runtime Error"

    invoke-static {v1, v0}, Labcd/yw;->j6(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_c
    iget-object v0, p0, Labcd/Qv$d;->DW:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    iget-object v0, p0, Labcd/Qv$d;->DW:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onActionModeFinished(Landroid/view/ActionMode;)V
    .registers 3

    iget-object v0, p0, Labcd/Qv$d;->DW:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->onActionModeFinished(Landroid/view/ActionMode;)V

    return-void
.end method

.method public onActionModeStarted(Landroid/view/ActionMode;)V
    .registers 3

    iget-object v0, p0, Labcd/Qv$d;->DW:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->onActionModeStarted(Landroid/view/ActionMode;)V

    return-void
.end method

.method public onAttachedToWindow()V
    .registers 2

    iget-object v0, p0, Labcd/Qv$d;->DW:Landroid/view/Window$Callback;

    invoke-interface {v0}, Landroid/view/Window$Callback;->onAttachedToWindow()V

    return-void
.end method

.method public onContentChanged()V
    .registers 2

    iget-object v0, p0, Labcd/Qv$d;->DW:Landroid/view/Window$Callback;

    invoke-interface {v0}, Landroid/view/Window$Callback;->onContentChanged()V

    return-void
.end method

.method public onCreatePanelMenu(ILandroid/view/Menu;)Z
    .registers 4

    iget-object v0, p0, Labcd/Qv$d;->DW:Landroid/view/Window$Callback;

    invoke-interface {v0, p1, p2}, Landroid/view/Window$Callback;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onCreatePanelView(I)Landroid/view/View;
    .registers 3

    iget-object v0, p0, Labcd/Qv$d;->DW:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->onCreatePanelView(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDetachedFromWindow()V
    .registers 2

    iget-object v0, p0, Labcd/Qv$d;->DW:Landroid/view/Window$Callback;

    invoke-interface {v0}, Landroid/view/Window$Callback;->onDetachedFromWindow()V

    return-void
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .registers 4

    iget-object v0, p0, Labcd/Qv$d;->DW:Landroid/view/Window$Callback;

    invoke-interface {v0, p1, p2}, Landroid/view/Window$Callback;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onMenuOpened(ILandroid/view/Menu;)Z
    .registers 4

    iget-object v0, p0, Labcd/Qv$d;->DW:Landroid/view/Window$Callback;

    invoke-interface {v0, p1, p2}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onPanelClosed(ILandroid/view/Menu;)V
    .registers 4

    iget-object v0, p0, Labcd/Qv$d;->DW:Landroid/view/Window$Callback;

    invoke-interface {v0, p1, p2}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    return-void
.end method

.method public onPointerCaptureChanged(Z)V
    .registers 3

    iget-object v0, p0, Labcd/Qv$d;->DW:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->onPointerCaptureChanged(Z)V

    return-void
.end method

.method public onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .registers 5

    iget-object v0, p0, Labcd/Qv$d;->DW:Landroid/view/Window$Callback;

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

    iget-object v0, p0, Labcd/Qv$d;->DW:Landroid/view/Window$Callback;

    invoke-interface {v0, p1, p2, p3}, Landroid/view/Window$Callback;->onProvideKeyboardShortcuts(Ljava/util/List;Landroid/view/Menu;I)V

    return-void
.end method

.method public onSearchRequested()Z
    .registers 2

    iget-object v0, p0, Labcd/Qv$d;->DW:Landroid/view/Window$Callback;

    invoke-interface {v0}, Landroid/view/Window$Callback;->onSearchRequested()Z

    move-result v0

    return v0
.end method

.method public onSearchRequested(Landroid/view/SearchEvent;)Z
    .registers 3

    iget-object v0, p0, Labcd/Qv$d;->DW:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->onSearchRequested(Landroid/view/SearchEvent;)Z

    move-result p1

    return p1
.end method

.method public onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V
    .registers 3

    iget-object v0, p0, Labcd/Qv$d;->DW:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .registers 3

    iget-object v0, p0, Labcd/Qv$d;->DW:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->onWindowFocusChanged(Z)V

    return-void
.end method

.method public onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .registers 3

    iget-object v0, p0, Labcd/Qv$d;->DW:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object p1

    return-object p1
.end method

.method public onWindowStartingActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;
    .registers 4

    iget-object v0, p0, Labcd/Qv$d;->DW:Landroid/view/Window$Callback;

    invoke-interface {v0, p1, p2}, Landroid/view/Window$Callback;->onWindowStartingActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;

    move-result-object p1

    return-object p1
.end method
