.class public final Lcom/google/android/gms/internal/ads/PE;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;
.implements Landroid/view/View$OnAttachStateChangeListener;
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Landroid/view/ViewTreeObserver$OnScrollChangedListener;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zh;
.end annotation


# static fields
.field private static final j6:J


# instance fields
.field private final DW:Landroid/content/Context;

.field private EQ:Lcom/google/android/gms/internal/ads/Ol;

.field private FH:Landroid/app/Application;

.field private final Hw:Landroid/view/WindowManager;

.field private J0:I

.field private final J8:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/google/android/gms/internal/ads/TE;",
            ">;"
        }
    .end annotation
.end field

.field private final QX:Landroid/graphics/Rect;

.field private VH:Landroid/content/BroadcastReceiver;

.field private final Ws:Landroid/util/DisplayMetrics;

.field private final Zo:Landroid/app/KeyguardManager;

.field private gn:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/ViewTreeObserver;",
            ">;"
        }
    .end annotation
.end field

.field private tp:Lcom/google/android/gms/internal/ads/UE;

.field private u7:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final v5:Landroid/os/PowerManager;

.field private we:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    sget-object v0, Lcom/google/android/gms/internal/ads/p;->E4:Lcom/google/android/gms/internal/ads/e;

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->v5()Lcom/google/android/gms/internal/ads/m;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/m;->j6(Lcom/google/android/gms/internal/ads/e;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sput-wide v0, Lcom/google/android/gms/internal/ads/PE;->j6:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/Ol;

    sget-wide v1, Lcom/google/android/gms/internal/ads/PE;->j6:J

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/Ol;-><init>(J)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/PE;->EQ:Lcom/google/android/gms/internal/ads/Ol;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/PE;->we:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/PE;->J0:I

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/PE;->J8:Ljava/util/HashSet;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/PE;->DW:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/PE;->Hw:Landroid/view/WindowManager;

    const-string v2, "power"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/PE;->v5:Landroid/os/PowerManager;

    const-string v2, "keyguard"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/KeyguardManager;

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/PE;->Zo:Landroid/app/KeyguardManager;

    instance-of v2, v0, Landroid/app/Application;

    if-eqz v2, :cond_4c

    check-cast v0, Landroid/app/Application;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/PE;->FH:Landroid/app/Application;

    new-instance v2, Lcom/google/android/gms/internal/ads/UE;

    invoke-direct {v2, v0, p0}, Lcom/google/android/gms/internal/ads/UE;-><init>(Landroid/app/Application;Landroid/app/Application$ActivityLifecycleCallbacks;)V

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/PE;->tp:Lcom/google/android/gms/internal/ads/UE;

    :cond_4c
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/PE;->Ws:Landroid/util/DisplayMetrics;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/PE;->QX:Landroid/graphics/Rect;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->right:I

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/PE;->u7:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_7c

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    goto :goto_7d

    :cond_7c
    const/4 p1, 0x0

    :goto_7d
    if-eqz p1, :cond_85

    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/PE;->DW(Landroid/view/View;)V

    :cond_85
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/PE;->u7:Ljava/lang/ref/WeakReference;

    if-eqz p2, :cond_9e

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->VH()Lcom/google/android/gms/internal/ads/Vk;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/Vk;->j6(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_9b

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/PE;->j6(Landroid/view/View;)V

    :cond_9b
    invoke-virtual {p2, p0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    :cond_9e
    return-void
.end method

.method private final DW(I)I
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/PE;->Ws:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    int-to-float p1, p1

    div-float/2addr p1, v0

    float-to-int p1, p1

    return p1
.end method

.method private final DW()V
    .registers 3

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->v5()Lcom/google/android/gms/internal/ads/Nk;

    sget-object v0, Lcom/google/android/gms/internal/ads/Nk;->j6:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/ads/QE;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/QE;-><init>(Lcom/google/android/gms/internal/ads/PE;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private final DW(Landroid/view/View;)V
    .registers 5

    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/PE;->gn:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_22

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
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/PE;->gn:Ljava/lang/ref/WeakReference;
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1b} :catch_1c

    goto :goto_22

    :catch_1c
    move-exception v1

    const-string v2, "Error while unregistering listeners from the last ViewTreeObserver."

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_22
    :goto_22
    :try_start_22
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_39

    invoke-virtual {p1, p0}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    invoke-virtual {p1, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_32} :catch_33

    goto :goto_39

    :catch_33
    move-exception p1

    const-string v1, "Error while unregistering listeners from the ViewTreeObserver."

    invoke-static {v1, p1}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_39
    :goto_39
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/PE;->VH:Landroid/content/BroadcastReceiver;

    if-eqz p1, :cond_5c

    :try_start_3d
    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->BT()Lcom/google/android/gms/internal/ads/Vl;

    move-result-object p1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/PE;->DW:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/PE;->VH:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v2}, Lcom/google/android/gms/internal/ads/Vl;->j6(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V
    :try_end_48
    .catch Ljava/lang/IllegalStateException; {:try_start_3d .. :try_end_48} :catch_54
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_48} :catch_49

    goto :goto_5a

    :catch_49
    move-exception p1

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->u7()Lcom/google/android/gms/internal/ads/pk;

    move-result-object v1

    const-string v2, "ActiveViewUnit.stopScreenStatusMonitoring"

    invoke-virtual {v1, p1, v2}, Lcom/google/android/gms/internal/ads/pk;->j6(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_5a

    :catch_54
    move-exception p1

    const-string v1, "Failed trying to unregister the receiver"

    invoke-static {v1, p1}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_5a
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/PE;->VH:Landroid/content/BroadcastReceiver;

    :cond_5c
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/PE;->FH:Landroid/app/Application;

    if-eqz p1, :cond_6c

    :try_start_60
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/PE;->tp:Lcom/google/android/gms/internal/ads/UE;

    invoke-virtual {p1, v0}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V
    :try_end_65
    .catch Ljava/lang/Exception; {:try_start_60 .. :try_end_65} :catch_66

    return-void

    :catch_66
    move-exception p1

    const-string v0, "Error registering activity lifecycle callbacks."

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_6c
    return-void
.end method

.method private final j6(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .registers 6

    new-instance v0, Landroid/graphics/Rect;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/PE;->DW(I)I

    move-result v1

    iget v2, p1, Landroid/graphics/Rect;->top:I

    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/ads/PE;->DW(I)I

    move-result v2

    iget v3, p1, Landroid/graphics/Rect;->right:I

    invoke-direct {p0, v3}, Lcom/google/android/gms/internal/ads/PE;->DW(I)I

    move-result v3

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/PE;->DW(I)I

    move-result p1

    invoke-direct {v0, v1, v2, v3, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method private final j6(I)V
    .registers 32

    move-object/from16 v1, p0

    move/from16 v2, p1

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/PE;->J8:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-nez v0, :cond_d

    return-void

    :cond_d
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/PE;->u7:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_12

    return-void

    :cond_12
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/view/View;

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne v2, v4, :cond_1f

    const/4 v6, 0x1

    goto :goto_20

    :cond_1f
    const/4 v6, 0x0

    :goto_20
    if-nez v3, :cond_24

    const/4 v7, 0x1

    goto :goto_25

    :cond_24
    const/4 v7, 0x0

    :goto_25
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    new-instance v11, Landroid/graphics/Rect;

    invoke-direct {v11}, Landroid/graphics/Rect;-><init>()V

    const/4 v0, 0x2

    new-array v12, v0, [I

    new-array v0, v0, [I

    if-eqz v3, :cond_77

    invoke-virtual {v3, v9}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v13

    invoke-virtual {v3, v10}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v14

    invoke-virtual {v3, v11}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    :try_start_4b
    invoke-virtual {v3, v12}, Landroid/view/View;->getLocationOnScreen([I)V

    invoke-virtual {v3, v0}, Landroid/view/View;->getLocationInWindow([I)V
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_51} :catch_52

    goto :goto_58

    :catch_52
    move-exception v0

    const-string v15, "Failure getting view location."

    invoke-static {v15, v0}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_58
    aget v0, v12, v5

    iput v0, v8, Landroid/graphics/Rect;->left:I

    aget v0, v12, v4

    iput v0, v8, Landroid/graphics/Rect;->top:I

    iget v0, v8, Landroid/graphics/Rect;->left:I

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v12

    add-int/2addr v0, v12

    iput v0, v8, Landroid/graphics/Rect;->right:I

    iget v0, v8, Landroid/graphics/Rect;->top:I

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v12

    add-int/2addr v0, v12

    iput v0, v8, Landroid/graphics/Rect;->bottom:I

    move/from16 v24, v13

    move/from16 v26, v14

    goto :goto_7b

    :cond_77
    const/16 v24, 0x0

    const/16 v26, 0x0

    :goto_7b
    const/16 v0, 0x8

    if-eqz v3, :cond_84

    invoke-virtual {v3}, Landroid/view/View;->getWindowVisibility()I

    move-result v12

    goto :goto_86

    :cond_84
    const/16 v12, 0x8

    :goto_86
    iget v13, v1, Lcom/google/android/gms/internal/ads/PE;->J0:I

    const/4 v14, -0x1

    if-eq v13, v14, :cond_8c

    move v12, v13

    :cond_8c
    if-nez v7, :cond_a4

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->v5()Lcom/google/android/gms/internal/ads/Nk;

    move-result-object v7

    iget-object v13, v1, Lcom/google/android/gms/internal/ads/PE;->v5:Landroid/os/PowerManager;

    iget-object v14, v1, Lcom/google/android/gms/internal/ads/PE;->Zo:Landroid/app/KeyguardManager;

    invoke-virtual {v7, v3, v13, v14}, Lcom/google/android/gms/internal/ads/Nk;->j6(Landroid/view/View;Landroid/os/PowerManager;Landroid/app/KeyguardManager;)Z

    move-result v7

    if-eqz v7, :cond_a4

    if-eqz v24, :cond_a4

    if-eqz v26, :cond_a4

    if-nez v12, :cond_a4

    const/4 v7, 0x1

    goto :goto_a5

    :cond_a4
    const/4 v7, 0x0

    :goto_a5
    if-eqz v6, :cond_b4

    iget-object v6, v1, Lcom/google/android/gms/internal/ads/PE;->EQ:Lcom/google/android/gms/internal/ads/Ol;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/Ol;->j6()Z

    move-result v6

    if-nez v6, :cond_b4

    iget-boolean v6, v1, Lcom/google/android/gms/internal/ads/PE;->we:Z

    if-ne v7, v6, :cond_b4

    return-void

    :cond_b4
    if-nez v7, :cond_bd

    iget-boolean v6, v1, Lcom/google/android/gms/internal/ads/PE;->we:Z

    if-nez v6, :cond_bd

    if-ne v2, v4, :cond_bd

    return-void

    :cond_bd
    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->we()Lcom/google/android/gms/common/util/e;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/common/util/e;->DW()J

    move-result-wide v16

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/PE;->v5:Landroid/os/PowerManager;

    invoke-virtual {v2}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v18

    if-eqz v3, :cond_d8

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->VH()Lcom/google/android/gms/internal/ads/Vk;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/Vk;->j6(Landroid/view/View;)Z

    move-result v5

    move/from16 v19, v5

    goto :goto_da

    :cond_d8
    const/16 v19, 0x0

    :goto_da
    if-eqz v3, :cond_e3

    invoke-virtual {v3}, Landroid/view/View;->getWindowVisibility()I

    move-result v0

    move/from16 v20, v0

    goto :goto_e5

    :cond_e3
    const/16 v20, 0x8

    :goto_e5
    new-instance v0, Lcom/google/android/gms/internal/ads/SE;

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/PE;->QX:Landroid/graphics/Rect;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/PE;->j6(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v21

    invoke-direct {v1, v8}, Lcom/google/android/gms/internal/ads/PE;->j6(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v22

    invoke-direct {v1, v9}, Lcom/google/android/gms/internal/ads/PE;->j6(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v23

    invoke-direct {v1, v10}, Lcom/google/android/gms/internal/ads/PE;->j6(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v25

    invoke-direct {v1, v11}, Lcom/google/android/gms/internal/ads/PE;->j6(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v27

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/PE;->Ws:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    move-object v15, v0

    move/from16 v28, v2

    move/from16 v29, v7

    invoke-direct/range {v15 .. v29}, Lcom/google/android/gms/internal/ads/SE;-><init>(JZZILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZLandroid/graphics/Rect;ZLandroid/graphics/Rect;FZ)V

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/PE;->J8:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_10f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_11f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/TE;

    invoke-interface {v3, v0}, Lcom/google/android/gms/internal/ads/TE;->j6(Lcom/google/android/gms/internal/ads/SE;)V

    goto :goto_10f

    :cond_11f
    iput-boolean v7, v1, Lcom/google/android/gms/internal/ads/PE;->we:Z

    return-void
.end method

.method private final j6(Landroid/app/Activity;I)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/PE;->u7:Ljava/lang/ref/WeakReference;

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

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/PE;->u7:Ljava/lang/ref/WeakReference;

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

    iput p2, p0, Lcom/google/android/gms/internal/ads/PE;->J0:I

    :cond_28
    return-void
.end method

.method private final j6(Landroid/view/View;)V
    .registers 5

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_17

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/PE;->gn:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1, p0}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    invoke-virtual {p1, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_17
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/PE;->VH:Landroid/content/BroadcastReceiver;

    if-nez p1, :cond_41

    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.intent.action.SCREEN_ON"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.USER_PRESENT"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/RE;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/RE;-><init>(Lcom/google/android/gms/internal/ads/PE;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/PE;->VH:Landroid/content/BroadcastReceiver;

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->BT()Lcom/google/android/gms/internal/ads/Vl;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/PE;->DW:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/PE;->VH:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, v2, p1}, Lcom/google/android/gms/internal/ads/Vl;->j6(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    :cond_41
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/PE;->FH:Landroid/app/Application;

    if-eqz p1, :cond_51

    :try_start_45
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/PE;->tp:Lcom/google/android/gms/internal/ads/UE;

    invoke-virtual {p1, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_4a} :catch_4b

    return-void

    :catch_4b
    move-exception p1

    const-string v0, "Error registering activity lifecycle callbacks."

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_51
    return-void
.end method

.method static synthetic j6(Lcom/google/android/gms/internal/ads/PE;I)V
    .registers 2

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/PE;->j6(I)V

    return-void
.end method


# virtual methods
.method public final DW(Lcom/google/android/gms/internal/ads/TE;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/PE;->J8:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final j6()V
    .registers 2

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/PE;->j6(I)V

    return-void
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/TE;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/PE;->J8:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/PE;->j6(I)V

    return-void
.end method

.method public final onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/PE;->j6(Landroid/app/Activity;I)V

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/PE;->j6(I)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/PE;->DW()V

    return-void
.end method

.method public final onActivityDestroyed(Landroid/app/Activity;)V
    .registers 2

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/PE;->j6(I)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/PE;->DW()V

    return-void
.end method

.method public final onActivityPaused(Landroid/app/Activity;)V
    .registers 3

    const/4 v0, 0x4

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/PE;->j6(Landroid/app/Activity;I)V

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/PE;->j6(I)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/PE;->DW()V

    return-void
.end method

.method public final onActivityResumed(Landroid/app/Activity;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/PE;->j6(Landroid/app/Activity;I)V

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/PE;->j6(I)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/PE;->DW()V

    return-void
.end method

.method public final onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/PE;->j6(I)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/PE;->DW()V

    return-void
.end method

.method public final onActivityStarted(Landroid/app/Activity;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/PE;->j6(Landroid/app/Activity;I)V

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/PE;->j6(I)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/PE;->DW()V

    return-void
.end method

.method public final onActivityStopped(Landroid/app/Activity;)V
    .registers 2

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/PE;->j6(I)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/PE;->DW()V

    return-void
.end method

.method public final onGlobalLayout()V
    .registers 2

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/PE;->j6(I)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/PE;->DW()V

    return-void
.end method

.method public final onScrollChanged()V
    .registers 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/PE;->j6(I)V

    return-void
.end method

.method public final onViewAttachedToWindow(Landroid/view/View;)V
    .registers 3

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/PE;->J0:I

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/PE;->j6(Landroid/view/View;)V

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/PE;->j6(I)V

    return-void
.end method

.method public final onViewDetachedFromWindow(Landroid/view/View;)V
    .registers 3

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/PE;->J0:I

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/PE;->j6(I)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/PE;->DW()V

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/PE;->DW(Landroid/view/View;)V

    return-void
.end method
