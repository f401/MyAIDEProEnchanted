.class final Lcom/google/android/gms/internal/ads/UE;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# instance fields
.field private final DW:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Application$ActivityLifecycleCallbacks;",
            ">;"
        }
    .end annotation
.end field

.field private FH:Z

.field private final j6:Landroid/app/Application;


# direct methods
.method public constructor <init>(Landroid/app/Application;Landroid/app/Application$ActivityLifecycleCallbacks;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/UE;->FH:Z

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/UE;->DW:Ljava/lang/ref/WeakReference;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/UE;->j6:Landroid/app/Application;

    return-void
.end method

.method private final j6(Lcom/google/android/gms/internal/ads/bF;)V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/UE;->DW:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Application$ActivityLifecycleCallbacks;

    if-eqz v0, :cond_e

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/bF;->j6(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void

    :cond_e
    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/UE;->FH:Z

    if-nez p1, :cond_1a

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/UE;->j6:Landroid/app/Application;

    invoke-virtual {p1, p0}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/UE;->FH:Z
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1a} :catch_1b

    :cond_1a
    return-void

    :catch_1b
    move-exception p1

    const-string v0, "Error while dispatching lifecycle callback."

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public final onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 4

    new-instance v0, Lcom/google/android/gms/internal/ads/VE;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/ads/VE;-><init>(Lcom/google/android/gms/internal/ads/UE;Landroid/app/Activity;Landroid/os/Bundle;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/UE;->j6(Lcom/google/android/gms/internal/ads/bF;)V

    return-void
.end method

.method public final onActivityDestroyed(Landroid/app/Activity;)V
    .registers 3

    new-instance v0, Lcom/google/android/gms/internal/ads/aF;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/aF;-><init>(Lcom/google/android/gms/internal/ads/UE;Landroid/app/Activity;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/UE;->j6(Lcom/google/android/gms/internal/ads/bF;)V

    return-void
.end method

.method public final onActivityPaused(Landroid/app/Activity;)V
    .registers 3

    new-instance v0, Lcom/google/android/gms/internal/ads/YE;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/YE;-><init>(Lcom/google/android/gms/internal/ads/UE;Landroid/app/Activity;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/UE;->j6(Lcom/google/android/gms/internal/ads/bF;)V

    return-void
.end method

.method public final onActivityResumed(Landroid/app/Activity;)V
    .registers 3

    new-instance v0, Lcom/google/android/gms/internal/ads/XE;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/XE;-><init>(Lcom/google/android/gms/internal/ads/UE;Landroid/app/Activity;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/UE;->j6(Lcom/google/android/gms/internal/ads/bF;)V

    return-void
.end method

.method public final onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 4

    new-instance v0, Lcom/google/android/gms/internal/ads/_E;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/ads/_E;-><init>(Lcom/google/android/gms/internal/ads/UE;Landroid/app/Activity;Landroid/os/Bundle;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/UE;->j6(Lcom/google/android/gms/internal/ads/bF;)V

    return-void
.end method

.method public final onActivityStarted(Landroid/app/Activity;)V
    .registers 3

    new-instance v0, Lcom/google/android/gms/internal/ads/WE;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/WE;-><init>(Lcom/google/android/gms/internal/ads/UE;Landroid/app/Activity;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/UE;->j6(Lcom/google/android/gms/internal/ads/bF;)V

    return-void
.end method

.method public final onActivityStopped(Landroid/app/Activity;)V
    .registers 3

    new-instance v0, Lcom/google/android/gms/internal/ads/ZE;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/ZE;-><init>(Lcom/google/android/gms/internal/ads/UE;Landroid/app/Activity;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/UE;->j6(Lcom/google/android/gms/internal/ads/bF;)V

    return-void
.end method
