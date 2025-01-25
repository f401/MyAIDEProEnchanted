.class public final Lcom/google/android/gms/internal/ads/Jx;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;
.implements Landroid/view/View$OnAttachStateChangeListener;
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Landroid/view/ViewTreeObserver$OnScrollChangedListener;


# static fields
.field private static final j6:Landroid/os/Handler;


# instance fields
.field private final DW:Landroid/content/Context;

.field private EQ:Z

.field private FH:Landroid/app/Application;

.field private final Hw:Landroid/os/PowerManager;

.field private J0:J

.field private VH:Landroid/content/BroadcastReceiver;

.field private final Zo:Lcom/google/android/gms/internal/ads/Ax;

.field private gn:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/ViewTreeObserver;",
            ">;"
        }
    .end annotation
.end field

.field private tp:Lcom/google/android/gms/internal/ads/nx;

.field private u7:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final v5:Landroid/app/KeyguardManager;

.field private we:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/Jx;->j6:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/Ax;Landroid/view/View;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/Jx;->EQ:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/Jx;->we:I

    const-wide/16 v0, -0x3

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/Jx;->J0:J

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Jx;->Zo:Lcom/google/android/gms/internal/ads/Ax;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/Ax;->DW:Landroid/content/Context;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Jx;->DW:Landroid/content/Context;

    const-string v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Jx;->Hw:Landroid/os/PowerManager;

    const-string v0, "keyguard"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Jx;->v5:Landroid/app/KeyguardManager;

    instance-of v0, p1, Landroid/app/Application;

    if-eqz v0, :cond_36

    check-cast p1, Landroid/app/Application;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Jx;->FH:Landroid/app/Application;

    new-instance v0, Lcom/google/android/gms/internal/ads/nx;

    invoke-direct {v0, p1, p0}, Lcom/google/android/gms/internal/ads/nx;-><init>(Landroid/app/Application;Landroid/app/Application$ActivityLifecycleCallbacks;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Jx;->tp:Lcom/google/android/gms/internal/ads/nx;

    :cond_36
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/ads/Jx;->j6(Landroid/view/View;)V

    return-void
.end method

.method private final DW()V
    .registers 3

    sget-object v0, Lcom/google/android/gms/internal/ads/Jx;->j6:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/ads/Kx;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/Kx;-><init>(Lcom/google/android/gms/internal/ads/Jx;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private final DW(Landroid/view/View;)V
    .registers 4

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_17

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Jx;->gn:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1, p0}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    invoke-virtual {p1, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_17
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/Jx;->VH:Landroid/content/BroadcastReceiver;

    if-nez p1, :cond_3b

    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.intent.action.SCREEN_ON"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.USER_PRESENT"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/Lx;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/Lx;-><init>(Lcom/google/android/gms/internal/ads/Jx;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Jx;->VH:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Jx;->DW:Landroid/content/Context;

    invoke-virtual {v1, v0, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_3b
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/Jx;->FH:Landroid/app/Application;

    if-eqz p1, :cond_46

    :try_start_3f
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Jx;->tp:Lcom/google/android/gms/internal/ads/nx;

    invoke-virtual {p1, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_44} :catch_45

    goto :goto_46

    :catch_45
    move-exception p1

    :cond_46
    :goto_46
    return-void
.end method

.method private final FH()V
    .registers 10

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Jx;->u7:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const/4 v1, 0x0

    if-nez v0, :cond_15

    const-wide/16 v2, -0x3

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/Jx;->J0:J

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/Jx;->EQ:Z

    return-void

    :cond_15
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v0, v2}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v2

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v0, v3}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v3

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/Jx;->Zo:Lcom/google/android/gms/internal/ads/Ax;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/Ax;->tp()Z

    move-result v4

    const/4 v5, 0x1

    if-nez v4, :cond_5b

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/Jx;->v5:Landroid/app/KeyguardManager;

    invoke-virtual {v4}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v4

    if-eqz v4, :cond_59

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Hx;->j6(Landroid/view/View;)Landroid/app/Activity;

    move-result-object v4

    if-eqz v4, :cond_55

    invoke-virtual {v4}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v4

    if-nez v4, :cond_46

    const/4 v4, 0x0

    goto :goto_4a

    :cond_46
    invoke-virtual {v4}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    :goto_4a
    if-eqz v4, :cond_55

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v6, 0x80000

    and-int/2addr v4, v6

    if-eqz v4, :cond_55

    const/4 v4, 0x1

    goto :goto_56

    :cond_55
    const/4 v4, 0x0

    :goto_56
    if-eqz v4, :cond_59

    goto :goto_5b

    :cond_59
    const/4 v4, 0x0

    goto :goto_5c

    :cond_5b
    :goto_5b
    const/4 v4, 0x1

    :goto_5c
    invoke-virtual {v0}, Landroid/view/View;->getWindowVisibility()I

    move-result v6

    iget v7, p0, Lcom/google/android/gms/internal/ads/Jx;->we:I

    const/4 v8, -0x1

    if-eq v7, v8, :cond_66

    move v6, v7

    :cond_66
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-nez v7, :cond_83

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-eqz v0, :cond_83

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Jx;->Hw:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    if-eqz v0, :cond_83

    if-eqz v4, :cond_83

    if-eqz v3, :cond_83

    if-eqz v2, :cond_83

    if-nez v6, :cond_83

    const/4 v1, 0x1

    :cond_83
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/Jx;->EQ:Z

    if-eq v0, v1, :cond_94

    if-eqz v1, :cond_8e

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    goto :goto_90

    :cond_8e
    const-wide/16 v2, -0x2

    :goto_90
    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/Jx;->J0:J

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/Jx;->EQ:Z

    :cond_94
    return-void
.end method

.method private final FH(Landroid/view/View;)V
    .registers 5

    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Jx;->gn:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_1d

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/ViewTreeObserver;

    if-eqz v1, :cond_19

    invoke-virtual {v1}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v2

    if-eqz v2, :cond_19

    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_19
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Jx;->gn:Ljava/lang/ref/WeakReference;
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1b} :catch_1c

    goto :goto_1d

    :catch_1c
    move-exception v1

    :cond_1d
    :goto_1d
    :try_start_1d
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_2f

    invoke-virtual {p1, p0}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    invoke-virtual {p1, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_2d} :catch_2e

    goto :goto_2f

    :catch_2e
    move-exception p1

    :cond_2f
    :goto_2f
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/Jx;->VH:Landroid/content/BroadcastReceiver;

    if-eqz p1, :cond_3c

    :try_start_33
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Jx;->DW:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_38} :catch_39

    goto :goto_3a

    :catch_39
    move-exception p1

    :goto_3a
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Jx;->VH:Landroid/content/BroadcastReceiver;

    :cond_3c
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/Jx;->FH:Landroid/app/Application;

    if-eqz p1, :cond_47

    :try_start_40
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Jx;->tp:Lcom/google/android/gms/internal/ads/nx;

    invoke-virtual {p1, v0}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_45} :catch_46

    goto :goto_47

    :catch_46
    move-exception p1

    :cond_47
    :goto_47
    return-void
.end method

.method private final j6(Landroid/app/Activity;I)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Jx;->u7:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-nez p1, :cond_c

    return-void

    :cond_c
    invoke-virtual {p1}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Jx;->u7:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_28

    if-eqz p1, :cond_28

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p1

    if-ne v0, p1, :cond_28

    iput p2, p0, Lcom/google/android/gms/internal/ads/Jx;->we:I

    :cond_28
    return-void
.end method

.method static synthetic j6(Lcom/google/android/gms/internal/ads/Jx;)V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/Jx;->FH()V

    return-void
.end method


# virtual methods
.method public final j6()J
    .registers 6

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/Jx;->J0:J

    const-wide/16 v2, -0x2

    cmp-long v4, v0, v2

    if-nez v4, :cond_14

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Jx;->u7:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_14

    const-wide/16 v0, -0x3

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/Jx;->J0:J

    :cond_14
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/Jx;->J0:J

    return-wide v0
.end method

.method final j6(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Jx;->u7:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    if-eqz v0, :cond_14

    invoke-virtual {v0, p0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/Jx;->FH(Landroid/view/View;)V

    :cond_14
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Jx;->u7:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_3c

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_2e

    invoke-virtual {p1}, Landroid/view/View;->getWindowVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_2c

    goto :goto_2e

    :cond_2c
    const/4 v0, 0x0

    goto :goto_2f

    :cond_2e
    :goto_2e
    const/4 v0, 0x1

    :goto_2f
    if-eqz v0, :cond_34

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/Jx;->DW(Landroid/view/View;)V

    :cond_34
    invoke-virtual {p1, p0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    const-wide/16 v0, -0x2

    :goto_39
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/Jx;->J0:J

    return-void

    :cond_3c
    const-wide/16 v0, -0x3

    goto :goto_39
.end method

.method public final onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/Jx;->j6(Landroid/app/Activity;I)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/Jx;->FH()V

    return-void
.end method

.method public final onActivityDestroyed(Landroid/app/Activity;)V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/Jx;->FH()V

    return-void
.end method

.method public final onActivityPaused(Landroid/app/Activity;)V
    .registers 3

    const/4 v0, 0x4

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/Jx;->j6(Landroid/app/Activity;I)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/Jx;->FH()V

    return-void
.end method

.method public final onActivityResumed(Landroid/app/Activity;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/Jx;->j6(Landroid/app/Activity;I)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/Jx;->FH()V

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/Jx;->DW()V

    return-void
.end method

.method public final onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/Jx;->FH()V

    return-void
.end method

.method public final onActivityStarted(Landroid/app/Activity;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/Jx;->j6(Landroid/app/Activity;I)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/Jx;->FH()V

    return-void
.end method

.method public final onActivityStopped(Landroid/app/Activity;)V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/Jx;->FH()V

    return-void
.end method

.method public final onGlobalLayout()V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/Jx;->FH()V

    return-void
.end method

.method public final onScrollChanged()V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/Jx;->FH()V

    return-void
.end method

.method public final onViewAttachedToWindow(Landroid/view/View;)V
    .registers 3

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/Jx;->we:I

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/Jx;->DW(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/Jx;->FH()V

    return-void
.end method

.method public final onViewDetachedFromWindow(Landroid/view/View;)V
    .registers 3

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/Jx;->we:I

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/Jx;->FH()V

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/Jx;->DW()V

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/Jx;->FH(Landroid/view/View;)V

    return-void
.end method
