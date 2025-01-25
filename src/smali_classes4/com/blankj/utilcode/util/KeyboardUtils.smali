.class public final Lcom/blankj/utilcode/util/KeyboardUtils;
.super Ljava/lang/Object;


# static fields
.field private static final TAG_ON_GLOBAL_LAYOUT_LISTENER:I = -0x8

.field private static millis:J

.field private static sDecorViewDelta:I


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "u can\'t instantiate me..."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic access$000(Landroid/view/Window;)I
    .registers 2

    invoke-static {p0}, Lcom/blankj/utilcode/util/KeyboardUtils;->getDecorViewInvisibleHeight(Landroid/view/Window;)I

    move-result v0

    return v0
.end method

.method static synthetic access$100(Landroid/view/Window;)I
    .registers 2

    invoke-static {p0}, Lcom/blankj/utilcode/util/KeyboardUtils;->getContentViewInvisibleHeight(Landroid/view/Window;)I

    move-result v0

    return v0
.end method

.method public static clickBlankArea2HideSoftInput()V
    .registers 2

    const-string v0, "KeyboardUtils"

    const-string v1, "Please refer to the following code."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static fixAndroidBug5497(Landroid/app/Activity;)V
    .registers 2

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/KeyboardUtils;->fixAndroidBug5497(Landroid/view/Window;)V

    return-void
.end method

.method public static fixAndroidBug5497(Landroid/view/Window;)V
    .registers 8

    const/4 v6, 0x0

    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    and-int/lit8 v0, v0, -0x11

    invoke-virtual {p0, v0}, Landroid/view/Window;->setSoftInputMode(I)V

    const v0, 0x1020002

    invoke-virtual {p0, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    invoke-virtual {v0, v6}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    invoke-static {p0}, Lcom/blankj/utilcode/util/KeyboardUtils;->getContentViewInvisibleHeight(Landroid/view/Window;)I

    move-result v3

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v4, Lcom/blankj/utilcode/util/KeyboardUtils$3;

    const/4 v5, 0x1

    new-array v5, v5, [I

    aput v3, v5, v6

    invoke-direct {v4, p0, v5, v1, v2}, Lcom/blankj/utilcode/util/KeyboardUtils$3;-><init>(Landroid/view/Window;[ILandroid/view/View;I)V

    invoke-virtual {v0, v4}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method public static fixSoftInputLeaks(Landroid/app/Activity;)V
    .registers 2

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/KeyboardUtils;->fixSoftInputLeaks(Landroid/view/Window;)V

    return-void
.end method

.method public static fixSoftInputLeaks(Landroid/view/Window;)V
    .registers 9

    const/4 v7, 0x4

    const/4 v6, 0x1

    const/4 v3, 0x0

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-nez v0, :cond_12

    :cond_11
    return-void

    :cond_12
    move v2, v3

    :goto_13
    if-ge v2, v7, :cond_11

    new-array v1, v7, [Ljava/lang/String;

    const-string v4, "mLastSrvView"

    aput-object v4, v1, v3

    const-string v4, "mCurRootView"

    aput-object v4, v1, v6

    const/4 v4, 0x2

    const-string v5, "mServedView"

    aput-object v5, v1, v4

    const/4 v4, 0x3

    const-string v5, "mNextServedView"

    aput-object v5, v1, v4

    aget-object v1, v1, v2

    :try_start_2b
    const-class v4, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v4, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/reflect/Field;->isAccessible()Z

    move-result v1

    if-nez v1, :cond_3b

    const/4 v1, 0x1

    invoke-virtual {v4, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    :cond_3b
    invoke-virtual {v4, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v5, v1, Landroid/view/View;

    if-nez v5, :cond_47

    :cond_43
    :goto_43
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_13

    :cond_47
    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v5

    if-ne v1, v5, :cond_43

    const/4 v1, 0x0

    invoke-virtual {v4, v0, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_5b
    .catchall {:try_start_2b .. :try_end_5b} :catchall_5c

    goto :goto_43

    :catchall_5c
    move-exception v1

    goto :goto_43
.end method

.method private static getContentViewInvisibleHeight(Landroid/view/Window;)I
    .registers 7

    const/4 v0, 0x0

    const v1, 0x1020002

    invoke-virtual {p0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_b

    :cond_a
    :goto_a
    return v0

    :cond_b
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v1, v2}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getContentViewInvisibleHeight: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v4

    iget v5, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "KeyboardUtils"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    invoke-static {}, Lcom/blankj/utilcode/util/UtilsBridge;->getStatusBarHeight()I

    move-result v2

    invoke-static {}, Lcom/blankj/utilcode/util/UtilsBridge;->getNavBarHeight()I

    move-result v3

    add-int/2addr v2, v3

    if-le v1, v2, :cond_a

    move v0, v1

    goto :goto_a
.end method

.method private static getDecorViewInvisibleHeight(Landroid/view/Window;)I
    .registers 6

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDecorViewInvisibleHeight: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v3

    iget v4, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "KeyboardUtils"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    invoke-static {}, Lcom/blankj/utilcode/util/UtilsBridge;->getNavBarHeight()I

    move-result v1

    invoke-static {}, Lcom/blankj/utilcode/util/UtilsBridge;->getStatusBarHeight()I

    move-result v2

    add-int/2addr v1, v2

    if-gt v0, v1, :cond_43

    sput v0, Lcom/blankj/utilcode/util/KeyboardUtils;->sDecorViewDelta:I

    const/4 v0, 0x0

    :goto_42
    return v0

    :cond_43
    sget v1, Lcom/blankj/utilcode/util/KeyboardUtils;->sDecorViewDelta:I

    sub-int/2addr v0, v1

    goto :goto_42
.end method

.method public static hideSoftInput(Landroid/app/Activity;)V
    .registers 2

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/KeyboardUtils;->hideSoftInput(Landroid/view/Window;)V

    return-void
.end method

.method public static hideSoftInput(Landroid/view/View;)V
    .registers 4

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-nez v0, :cond_f

    :goto_e
    return-void

    :cond_f
    invoke-virtual {p0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_e
.end method

.method public static hideSoftInput(Landroid/view/Window;)V
    .registers 5

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/view/Window;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_2a

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const-string v1, "keyboardTagView"

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_2e

    new-instance v1, Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const-string v2, "keyboardTagView"

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v3, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    move-object v0, v1

    :goto_27
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    :cond_2a
    invoke-static {v0}, Lcom/blankj/utilcode/util/KeyboardUtils;->hideSoftInput(Landroid/view/View;)V

    return-void

    :cond_2e
    move-object v0, v1

    goto :goto_27
.end method

.method public static hideSoftInputByToggle(Landroid/app/Activity;)V
    .registers 7

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sget-wide v2, Lcom/blankj/utilcode/util/KeyboardUtils;->millis:J

    sub-long v2, v0, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    const-wide/16 v4, 0x1f4

    cmp-long v2, v2, v4

    if-lez v2, :cond_1b

    invoke-static {p0}, Lcom/blankj/utilcode/util/KeyboardUtils;->isSoftInputVisible(Landroid/app/Activity;)Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-static {}, Lcom/blankj/utilcode/util/KeyboardUtils;->toggleSoftInput()V

    :cond_1b
    sput-wide v0, Lcom/blankj/utilcode/util/KeyboardUtils;->millis:J

    return-void
.end method

.method public static isSoftInputVisible(Landroid/app/Activity;)Z
    .registers 2

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/KeyboardUtils;->getDecorViewInvisibleHeight(Landroid/view/Window;)I

    move-result v0

    if-lez v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public static registerSoftInputChangedListener(Landroid/app/Activity;Lcom/blankj/utilcode/util/KeyboardUtils$OnSoftInputChangedListener;)V
    .registers 3

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/blankj/utilcode/util/KeyboardUtils;->registerSoftInputChangedListener(Landroid/view/Window;Lcom/blankj/utilcode/util/KeyboardUtils$OnSoftInputChangedListener;)V

    return-void
.end method

.method public static registerSoftInputChangedListener(Landroid/view/Window;Lcom/blankj/utilcode/util/KeyboardUtils$OnSoftInputChangedListener;)V
    .registers 7

    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_f

    const/16 v0, 0x200

    invoke-virtual {p0, v0}, Landroid/view/Window;->clearFlags(I)V

    :cond_f
    const v0, 0x1020002

    invoke-virtual {p0, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    new-instance v1, Lcom/blankj/utilcode/util/KeyboardUtils$2;

    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    invoke-static {p0}, Lcom/blankj/utilcode/util/KeyboardUtils;->getDecorViewInvisibleHeight(Landroid/view/Window;)I

    move-result v4

    aput v4, v2, v3

    invoke-direct {v1, p0, v2, p1}, Lcom/blankj/utilcode/util/KeyboardUtils$2;-><init>(Landroid/view/Window;[ILcom/blankj/utilcode/util/KeyboardUtils$OnSoftInputChangedListener;)V

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    const/4 v2, -0x8

    invoke-virtual {v0, v2, v1}, Landroid/widget/FrameLayout;->setTag(ILjava/lang/Object;)V

    return-void
.end method

.method public static showSoftInput()V
    .registers 3

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-nez v0, :cond_f

    :goto_e
    return-void

    :cond_f
    const/4 v1, 0x2

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    goto :goto_e
.end method

.method public static showSoftInput(Landroid/app/Activity;)V
    .registers 2

    invoke-static {p0}, Lcom/blankj/utilcode/util/KeyboardUtils;->isSoftInputVisible(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_9

    invoke-static {}, Lcom/blankj/utilcode/util/KeyboardUtils;->toggleSoftInput()V

    :cond_9
    return-void
.end method

.method public static showSoftInput(Landroid/view/View;)V
    .registers 2

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/blankj/utilcode/util/KeyboardUtils;->showSoftInput(Landroid/view/View;I)V

    return-void
.end method

.method public static showSoftInput(Landroid/view/View;I)V
    .registers 6

    const/4 v3, 0x1

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-nez v0, :cond_10

    :goto_f
    return-void

    :cond_10
    invoke-virtual {p0, v3}, Landroid/view/View;->setFocusable(Z)V

    invoke-virtual {p0, v3}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    new-instance v1, Lcom/blankj/utilcode/util/KeyboardUtils$1;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, v2}, Lcom/blankj/utilcode/util/KeyboardUtils$1;-><init>(Landroid/os/Handler;)V

    invoke-virtual {v0, p0, p1, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;ILandroid/os/ResultReceiver;)Z

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v3}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    goto :goto_f
.end method

.method public static toggleSoftInput()V
    .registers 3

    const/4 v2, 0x0

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-nez v0, :cond_10

    :goto_f
    return-void

    :cond_10
    invoke-virtual {v0, v2, v2}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    goto :goto_f
.end method

.method public static unregisterSoftInputChangedListener(Landroid/view/Window;)V
    .registers 5

    const v0, 0x1020002

    invoke-virtual {p0, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_a

    :cond_9
    :goto_9
    return-void

    :cond_a
    const/4 v0, -0x8

    invoke-virtual {v1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v2, v0, Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    if-eqz v2, :cond_9

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-lt v2, v3, :cond_9

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    check-cast v0, Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v1, v0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_9
.end method
