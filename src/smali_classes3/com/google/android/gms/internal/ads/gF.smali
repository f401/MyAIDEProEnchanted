.class final Lcom/google/android/gms/internal/ads/gF;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# instance fields
.field private DW:Landroid/content/Context;

.field private final FH:Ljava/lang/Object;

.field private Hw:Z

.field private final VH:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/wF;",
            ">;"
        }
    .end annotation
.end field

.field private final Zo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/iF;",
            ">;"
        }
    .end annotation
.end field

.field private gn:Ljava/lang/Runnable;

.field private j6:Landroid/app/Activity;

.field private tp:J

.field private u7:Z

.field private v5:Z


# direct methods
.method constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/gF;->FH:Ljava/lang/Object;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/gF;->Hw:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/gF;->v5:Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/gF;->Zo:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/gF;->VH:Ljava/util/List;

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/gF;->u7:Z

    return-void
.end method

.method static synthetic DW(Lcom/google/android/gms/internal/ads/gF;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/google/android/gms/internal/ads/gF;->Hw:Z

    return p0
.end method

.method static synthetic FH(Lcom/google/android/gms/internal/ads/gF;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/google/android/gms/internal/ads/gF;->v5:Z

    return p0
.end method

.method static synthetic Hw(Lcom/google/android/gms/internal/ads/gF;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/gF;->Zo:Ljava/util/List;

    return-object p0
.end method

.method static synthetic j6(Lcom/google/android/gms/internal/ads/gF;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/gF;->FH:Ljava/lang/Object;

    return-object p0
.end method

.method private final j6(Landroid/app/Activity;)V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/gF;->FH:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.google.android.gms.ads"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_15

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/gF;->j6:Landroid/app/Activity;

    :cond_15
    monitor-exit v0

    return-void

    :catchall_17
    move-exception p1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw p1
.end method

.method static synthetic j6(Lcom/google/android/gms/internal/ads/gF;Z)Z
    .registers 2

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/gF;->Hw:Z

    return p1
.end method


# virtual methods
.method public final DW()Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/gF;->DW:Landroid/content/Context;

    return-object v0
.end method

.method public final j6()Landroid/app/Activity;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/gF;->j6:Landroid/app/Activity;

    return-object v0
.end method

.method public final j6(Landroid/app/Application;Landroid/content/Context;)V
    .registers 4

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/gF;->u7:Z

    if-nez v0, :cond_27

    invoke-virtual {p1, p0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    instance-of v0, p2, Landroid/app/Activity;

    if-eqz v0, :cond_10

    check-cast p2, Landroid/app/Activity;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/gF;->j6(Landroid/app/Activity;)V

    :cond_10
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/gF;->DW:Landroid/content/Context;

    sget-object p1, Lcom/google/android/gms/internal/ads/p;->fN:Lcom/google/android/gms/internal/ads/e;

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->v5()Lcom/google/android/gms/internal/ads/m;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/m;->j6(Lcom/google/android/gms/internal/ads/e;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/gF;->tp:J

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/gF;->u7:Z

    :cond_27
    return-void
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/iF;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/gF;->FH:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/gF;->Zo:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_a
    move-exception p1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p1
.end method

.method public final onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3

    return-void
.end method

.method public final onActivityDestroyed(Landroid/app/Activity;)V
    .registers 7

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/gF;->FH:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/gF;->j6:Landroid/app/Activity;

    if-nez v1, :cond_9

    monitor-exit v0

    return-void

    :cond_9
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/gF;->j6:Landroid/app/Activity;

    :cond_12
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/gF;->VH:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_18
    :goto_18
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/wF;
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_40

    :try_start_24
    invoke-interface {v2, p1}, Lcom/google/android/gms/internal/ads/wF;->j6(Landroid/app/Activity;)Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_2d} :catch_2e
    .catchall {:try_start_24 .. :try_end_2d} :catchall_40

    goto :goto_18

    :catch_2e
    move-exception v2

    :try_start_2f
    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->u7()Lcom/google/android/gms/internal/ads/pk;

    move-result-object v3

    const-string v4, "AppActivityTracker.ActivityListener.onActivityDestroyed"

    invoke-virtual {v3, v2, v4}, Lcom/google/android/gms/internal/ads/pk;->j6(Ljava/lang/Throwable;Ljava/lang/String;)V

    const-string v3, ""

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_18

    :cond_3e
    monitor-exit v0

    return-void

    :catchall_40
    move-exception p1

    monitor-exit v0
    :try_end_42
    .catchall {:try_start_2f .. :try_end_42} :catchall_40

    goto :goto_44

    :goto_43
    throw p1

    :goto_44
    goto :goto_43
.end method

.method public final onActivityPaused(Landroid/app/Activity;)V
    .registers 7

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/gF;->j6(Landroid/app/Activity;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/gF;->FH:Ljava/lang/Object;

    monitor-enter v0

    :try_start_6
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/gF;->VH:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/wF;
    :try_end_18
    .catchall {:try_start_6 .. :try_end_18} :catchall_48

    :try_start_18
    invoke-interface {v2, p1}, Lcom/google/android/gms/internal/ads/wF;->onActivityPaused(Landroid/app/Activity;)V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_1b} :catch_1c
    .catchall {:try_start_18 .. :try_end_1b} :catchall_48

    goto :goto_c

    :catch_1c
    move-exception v2

    :try_start_1d
    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->u7()Lcom/google/android/gms/internal/ads/pk;

    move-result-object v3

    const-string v4, "AppActivityTracker.ActivityListener.onActivityPaused"

    invoke-virtual {v3, v2, v4}, Lcom/google/android/gms/internal/ads/pk;->j6(Ljava/lang/Throwable;Ljava/lang/String;)V

    const-string v3, ""

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_c

    :cond_2c
    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_1d .. :try_end_2d} :catchall_48

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/gF;->v5:Z

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/gF;->gn:Ljava/lang/Runnable;

    if-eqz p1, :cond_39

    sget-object v0, Lcom/google/android/gms/internal/ads/Nk;->j6:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_39
    sget-object p1, Lcom/google/android/gms/internal/ads/Nk;->j6:Landroid/os/Handler;

    new-instance v0, Lcom/google/android/gms/internal/ads/hF;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/hF;-><init>(Lcom/google/android/gms/internal/ads/gF;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/gF;->gn:Ljava/lang/Runnable;

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/gF;->tp:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :catchall_48
    move-exception p1

    :try_start_49
    monitor-exit v0
    :try_end_4a
    .catchall {:try_start_49 .. :try_end_4a} :catchall_48

    goto :goto_4c

    :goto_4b
    throw p1

    :goto_4c
    goto :goto_4b
.end method

.method public final onActivityResumed(Landroid/app/Activity;)V
    .registers 9

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/gF;->j6(Landroid/app/Activity;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/gF;->v5:Z

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/gF;->Hw:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/gF;->Hw:Z

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/gF;->gn:Ljava/lang/Runnable;

    if-eqz v2, :cond_14

    sget-object v3, Lcom/google/android/gms/internal/ads/Nk;->j6:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_14
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/gF;->FH:Ljava/lang/Object;

    monitor-enter v2

    :try_start_17
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/gF;->VH:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/ads/wF;
    :try_end_29
    .catchall {:try_start_17 .. :try_end_29} :catchall_65

    :try_start_29
    invoke-interface {v4, p1}, Lcom/google/android/gms/internal/ads/wF;->onActivityResumed(Landroid/app/Activity;)V
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_2c} :catch_2d
    .catchall {:try_start_29 .. :try_end_2c} :catchall_65

    goto :goto_1d

    :catch_2d
    move-exception v4

    :try_start_2e
    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->u7()Lcom/google/android/gms/internal/ads/pk;

    move-result-object v5

    const-string v6, "AppActivityTracker.ActivityListener.onActivityResumed"

    invoke-virtual {v5, v4, v6}, Lcom/google/android/gms/internal/ads/pk;->j6(Ljava/lang/Throwable;Ljava/lang/String;)V

    const-string v5, ""

    invoke-static {v5, v4}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1d

    :cond_3d
    xor-int/lit8 p1, v0, 0x1

    if-eqz p1, :cond_5e

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/gF;->Zo:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_47
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_63

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/iF;
    :try_end_53
    .catchall {:try_start_2e .. :try_end_53} :catchall_65

    :try_start_53
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/iF;->j6(Z)V
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_56} :catch_57
    .catchall {:try_start_53 .. :try_end_56} :catchall_65

    goto :goto_47

    :catch_57
    move-exception v0

    :try_start_58
    const-string v3, ""

    invoke-static {v3, v0}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_47

    :cond_5e
    const-string p1, "App is still foreground."

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;)V

    :cond_63
    monitor-exit v2

    return-void

    :catchall_65
    move-exception p1

    monitor-exit v2
    :try_end_67
    .catchall {:try_start_58 .. :try_end_67} :catchall_65

    goto :goto_69

    :goto_68
    throw p1

    :goto_69
    goto :goto_68
.end method

.method public final onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3

    return-void
.end method

.method public final onActivityStarted(Landroid/app/Activity;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/gF;->j6(Landroid/app/Activity;)V

    return-void
.end method

.method public final onActivityStopped(Landroid/app/Activity;)V
    .registers 2

    return-void
.end method
