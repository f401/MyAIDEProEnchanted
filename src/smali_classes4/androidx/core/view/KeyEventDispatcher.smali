.class public Landroidx/core/view/KeyEventDispatcher;
.super Ljava/lang/Object;


# static fields
.field private static sActionBarFieldsFetched:Z

.field private static sActionBarOnMenuKeyMethod:Ljava/lang/reflect/Method;

.field private static sDialogFieldsFetched:Z

.field private static sDialogKeyListenerField:Ljava/lang/reflect/Field;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static actionBarOnMenuKeyEventPre28(Landroid/app/ActionBar;Landroid/view/KeyEvent;)Z
    .registers 9

    const/4 v6, 0x1

    const/4 v1, 0x0

    sget-boolean v0, Landroidx/core/view/KeyEventDispatcher;->sActionBarFieldsFetched:Z

    if-nez v0, :cond_1c

    :try_start_6
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v2, "onMenuKeyEvent"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/view/KeyEvent;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Landroidx/core/view/KeyEventDispatcher;->sActionBarOnMenuKeyMethod:Ljava/lang/reflect/Method;
    :try_end_1a
    .catch Ljava/lang/NoSuchMethodException; {:try_start_6 .. :try_end_1a} :catch_36

    :goto_1a
    sput-boolean v6, Landroidx/core/view/KeyEventDispatcher;->sActionBarFieldsFetched:Z

    :cond_1c
    sget-object v0, Landroidx/core/view/KeyEventDispatcher;->sActionBarOnMenuKeyMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_32

    const/4 v2, 0x1

    :try_start_21
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_2f
    .catch Ljava/lang/IllegalAccessException; {:try_start_21 .. :try_end_2f} :catch_31
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_21 .. :try_end_2f} :catch_34

    move-result v0

    :goto_30
    return v0

    :catch_31
    move-exception v0

    :cond_32
    :goto_32
    move v0, v1

    goto :goto_30

    :catch_34
    move-exception v0

    goto :goto_32

    :catch_36
    move-exception v0

    goto :goto_1a
.end method

.method private static activitySuperDispatchKeyEventPre28(Landroid/app/Activity;Landroid/view/KeyEvent;)Z
    .registers 7

    const/4 v0, 0x1

    invoke-virtual {p0}, Landroid/app/Activity;->onUserInteraction()V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/Window;->hasFeature(I)Z

    move-result v2

    if-eqz v2, :cond_25

    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    const/16 v4, 0x52

    if-ne v3, v4, :cond_25

    if-eqz v2, :cond_25

    invoke-static {v2, p1}, Landroidx/core/view/KeyEventDispatcher;->actionBarOnMenuKeyEventPre28(Landroid/app/ActionBar;Landroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_25

    :cond_24
    :goto_24
    return v0

    :cond_25
    invoke-virtual {v1, p1}, Landroid/view/Window;->superDispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v2

    if-nez v2, :cond_24

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-static {v1, p1}, Landroidx/core/view/ViewCompat;->dispatchUnhandledKeyEventBeforeCallback(Landroid/view/View;Landroid/view/KeyEvent;)Z

    move-result v2

    if-nez v2, :cond_24

    if-eqz v1, :cond_40

    invoke-virtual {v1}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v0

    :goto_3b
    invoke-virtual {p1, p0, v0, p0}, Landroid/view/KeyEvent;->dispatch(Landroid/view/KeyEvent$Callback;Landroid/view/KeyEvent$DispatcherState;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_24

    :cond_40
    const/4 v0, 0x0

    goto :goto_3b
.end method

.method private static dialogSuperDispatchKeyEventPre28(Landroid/app/Dialog;Landroid/view/KeyEvent;)Z
    .registers 5

    const/4 v0, 0x1

    invoke-static {p0}, Landroidx/core/view/KeyEventDispatcher;->getDialogKeyListenerPre28(Landroid/app/Dialog;)Landroid/content/DialogInterface$OnKeyListener;

    move-result-object v1

    if-eqz v1, :cond_12

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    invoke-interface {v1, p0, v2, p1}, Landroid/content/DialogInterface$OnKeyListener;->onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_12

    :cond_11
    :goto_11
    return v0

    :cond_12
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/Window;->superDispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v2

    if-nez v2, :cond_11

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-static {v1, p1}, Landroidx/core/view/ViewCompat;->dispatchUnhandledKeyEventBeforeCallback(Landroid/view/View;Landroid/view/KeyEvent;)Z

    move-result v2

    if-nez v2, :cond_11

    if-eqz v1, :cond_31

    invoke-virtual {v1}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v0

    :goto_2c
    invoke-virtual {p1, p0, v0, p0}, Landroid/view/KeyEvent;->dispatch(Landroid/view/KeyEvent$Callback;Landroid/view/KeyEvent$DispatcherState;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_11

    :cond_31
    const/4 v0, 0x0

    goto :goto_2c
.end method

.method public static dispatchBeforeHierarchy(Landroid/view/View;Landroid/view/KeyEvent;)Z
    .registers 3

    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat;->dispatchUnhandledKeyEventBeforeHierarchy(Landroid/view/View;Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public static dispatchKeyEvent(Landroidx/core/view/KeyEventDispatcher$Component;Landroid/view/View;Landroid/view/Window$Callback;Landroid/view/KeyEvent;)Z
    .registers 7

    const/4 v0, 0x0

    if-nez p0, :cond_4

    :cond_3
    :goto_3
    return v0

    :cond_4
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-lt v1, v2, :cond_f

    invoke-interface {p0, p3}, Landroidx/core/view/KeyEventDispatcher$Component;->superDispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_3

    :cond_f
    instance-of v1, p2, Landroid/app/Activity;

    if-eqz v1, :cond_1a

    check-cast p2, Landroid/app/Activity;

    invoke-static {p2, p3}, Landroidx/core/view/KeyEventDispatcher;->activitySuperDispatchKeyEventPre28(Landroid/app/Activity;Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_3

    :cond_1a
    instance-of v1, p2, Landroid/app/Dialog;

    if-eqz v1, :cond_25

    check-cast p2, Landroid/app/Dialog;

    invoke-static {p2, p3}, Landroidx/core/view/KeyEventDispatcher;->dialogSuperDispatchKeyEventPre28(Landroid/app/Dialog;Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_3

    :cond_25
    if-eqz p1, :cond_2d

    invoke-static {p1, p3}, Landroidx/core/view/ViewCompat;->dispatchUnhandledKeyEventBeforeCallback(Landroid/view/View;Landroid/view/KeyEvent;)Z

    move-result v1

    if-nez v1, :cond_33

    :cond_2d
    invoke-interface {p0, p3}, Landroidx/core/view/KeyEventDispatcher$Component;->superDispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_33
    const/4 v0, 0x1

    goto :goto_3
.end method

.method private static getDialogKeyListenerPre28(Landroid/app/Dialog;)Landroid/content/DialogInterface$OnKeyListener;
    .registers 4

    const/4 v2, 0x1

    sget-boolean v0, Landroidx/core/view/KeyEventDispatcher;->sDialogFieldsFetched:Z

    if-nez v0, :cond_15

    :try_start_5
    const-class v0, Landroid/app/Dialog;

    const-string v1, "mOnKeyListener"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Landroidx/core/view/KeyEventDispatcher;->sDialogKeyListenerField:Ljava/lang/reflect/Field;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_13
    .catch Ljava/lang/NoSuchFieldException; {:try_start_5 .. :try_end_13} :catch_23

    :goto_13
    sput-boolean v2, Landroidx/core/view/KeyEventDispatcher;->sDialogFieldsFetched:Z

    :cond_15
    sget-object v0, Landroidx/core/view/KeyEventDispatcher;->sDialogKeyListenerField:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_21

    :try_start_19
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/DialogInterface$OnKeyListener;
    :try_end_1f
    .catch Ljava/lang/IllegalAccessException; {:try_start_19 .. :try_end_1f} :catch_20

    :goto_1f
    return-object v0

    :catch_20
    move-exception v0

    :cond_21
    const/4 v0, 0x0

    goto :goto_1f

    :catch_23
    move-exception v0

    goto :goto_13
.end method
