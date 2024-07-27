.class public final Lcom/google/android/gms/internal/ads/ha;
.super Lcom/google/android/gms/internal/ads/ma;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zh;
.end annotation


# instance fields
.field private Mr:Lcom/google/android/gms/internal/ads/Ve;

.field private U2:Lcom/google/android/gms/internal/ads/Ye;

.field private final a8:Lcom/google/android/gms/internal/ads/ja;

.field private er:Z

.field private j3:Lcom/google/android/gms/internal/ads/Se;

.field private lg:Lcom/google/android/gms/internal/ads/ia;

.field private rN:Z

.field private final yS:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/ja;Lcom/google/android/gms/internal/ads/ix;Lcom/google/android/gms/internal/ads/Se;Lcom/google/android/gms/internal/ads/ka;)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p5}, Lcom/google/android/gms/internal/ads/ha;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/ja;Lcom/google/android/gms/internal/ads/ix;Lcom/google/android/gms/internal/ads/ka;)V

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/ha;->j3:Lcom/google/android/gms/internal/ads/Se;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/ja;Lcom/google/android/gms/internal/ads/ix;Lcom/google/android/gms/internal/ads/Ve;Lcom/google/android/gms/internal/ads/ka;)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p5}, Lcom/google/android/gms/internal/ads/ha;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/ja;Lcom/google/android/gms/internal/ads/ix;Lcom/google/android/gms/internal/ads/ka;)V

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/ha;->Mr:Lcom/google/android/gms/internal/ads/Ve;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/ja;Lcom/google/android/gms/internal/ads/ix;Lcom/google/android/gms/internal/ads/Ye;Lcom/google/android/gms/internal/ads/ka;)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p5}, Lcom/google/android/gms/internal/ads/ha;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/ja;Lcom/google/android/gms/internal/ads/ix;Lcom/google/android/gms/internal/ads/ka;)V

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/ha;->U2:Lcom/google/android/gms/internal/ads/Ye;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/ja;Lcom/google/android/gms/internal/ads/ix;Lcom/google/android/gms/internal/ads/ka;)V
    .registers 15

    const/4 v9, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, v3

    move-object v6, p4

    move-object v7, v3

    move-object v8, v3

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/ads/ma;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/ja;Lcom/google/android/gms/internal/ads/dh;Lcom/google/android/gms/internal/ads/ix;Lorg/json/JSONObject;Lcom/google/android/gms/internal/ads/ka;Lcom/google/android/gms/internal/ads/zzbbi;Ljava/lang/String;)V

    iput-boolean v9, p0, Lcom/google/android/gms/internal/ads/ha;->rN:Z

    iput-boolean v9, p0, Lcom/google/android/gms/internal/ads/ha;->er:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ha;->yS:Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/ha;->a8:Lcom/google/android/gms/internal/ads/ja;

    return-void
.end method

.method private static DW(Ljava/util/Map;)Ljava/util/HashMap;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;>;)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    if-nez p0, :cond_0

    move-object v0, v2

    :goto_0
    return-object v0

    :cond_0
    monitor-enter p0

    :try_start_0
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v2

    goto :goto_0
.end method

.method private final v5(Landroid/view/View;)V
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ha;->U2:Lcom/google/android/gms/internal/ads/Ye;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ha;->U2:Lcom/google/android/gms/internal/ads/Ye;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/Ye;->eU()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ha;->U2:Lcom/google/android/gms/internal/ads/Ye;

    invoke-static {p1}, Labcd/px;->j6(Ljava/lang/Object;)Labcd/ox;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/Ye;->DW(Labcd/ox;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ha;->a8:Lcom/google/android/gms/internal/ads/ja;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/ja;->J0()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ha;->j3:Lcom/google/android/gms/internal/ads/Se;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ha;->j3:Lcom/google/android/gms/internal/ads/Se;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/Se;->eU()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ha;->j3:Lcom/google/android/gms/internal/ads/Se;

    invoke-static {p1}, Labcd/px;->j6(Ljava/lang/Object;)Labcd/ox;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/Se;->DW(Labcd/ox;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ha;->a8:Lcom/google/android/gms/internal/ads/ja;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/ja;->J0()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Failed to call performClick"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/jm;->FH(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ha;->Mr:Lcom/google/android/gms/internal/ads/Ve;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ha;->Mr:Lcom/google/android/gms/internal/ads/Ve;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/Ve;->eU()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ha;->Mr:Lcom/google/android/gms/internal/ads/Ve;

    invoke-static {p1}, Labcd/px;->j6(Ljava/lang/Object;)Labcd/ox;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/Ve;->DW(Labcd/ox;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ha;->a8:Lcom/google/android/gms/internal/ads/ja;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/ja;->J0()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method


# virtual methods
.method public final DW(Landroid/view/View;Ljava/util/Map;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "recordImpression must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/r;->j6(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ha;->yS:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/ma;->tp:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ha;->lg:Lcom/google/android/gms/internal/ads/ia;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ha;->lg:Lcom/google/android/gms/internal/ads/ia;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/ia;->DW(Landroid/view/View;Ljava/util/Map;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ha;->a8:Lcom/google/android/gms/internal/ads/ja;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/ja;->EQ()V

    :cond_0
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ha;->U2:Lcom/google/android/gms/internal/ads/Ye;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ha;->U2:Lcom/google/android/gms/internal/ads/Ye;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/Ye;->q7()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ha;->U2:Lcom/google/android/gms/internal/ads/Ye;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/Ye;->EQ()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ha;->a8:Lcom/google/android/gms/internal/ads/ja;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/ja;->EQ()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    const-string v2, "Failed to call recordImpression"

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ads/jm;->FH(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_2
    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ha;->j3:Lcom/google/android/gms/internal/ads/Se;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ha;->j3:Lcom/google/android/gms/internal/ads/Se;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/Se;->q7()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ha;->j3:Lcom/google/android/gms/internal/ads/Se;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/Se;->EQ()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ha;->a8:Lcom/google/android/gms/internal/ads/ja;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/ja;->EQ()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ha;->Mr:Lcom/google/android/gms/internal/ads/Ve;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ha;->Mr:Lcom/google/android/gms/internal/ads/Ve;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/Ve;->q7()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ha;->Mr:Lcom/google/android/gms/internal/ads/Ve;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/Ve;->EQ()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ha;->a8:Lcom/google/android/gms/internal/ads/ja;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/ja;->EQ()V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public final DY()V
    .registers 3

    const-string v0, "recordDownloadedImpression must be called on main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/r;->j6(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ha;->yS:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/ma;->EQ:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ha;->lg:Lcom/google/android/gms/internal/ads/ia;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ha;->lg:Lcom/google/android/gms/internal/ads/ia;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/ia;->DY()V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final HO()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ha;->lg:Lcom/google/android/gms/internal/ads/ia;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/ia;->HO()V

    :cond_0
    return-void
.end method

.method public final Hw()Z
    .registers 3

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ha;->yS:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/ha;->rN:Z

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final Vq()V
    .registers 1

    return-void
.end method

.method public final Xa()V
    .registers 3

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ha;->yS:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ha;->lg:Lcom/google/android/gms/internal/ads/ia;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ha;->lg:Lcom/google/android/gms/internal/ads/ia;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/ia;->Xa()V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final j6(Landroid/view/View$OnClickListener;Z)Landroid/view/View;
    .registers 7

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ha;->yS:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ha;->lg:Lcom/google/android/gms/internal/ads/ia;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ha;->lg:Lcom/google/android/gms/internal/ads/ia;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/ia;->j6(Landroid/view/View$OnClickListener;Z)Landroid/view/View;

    move-result-object v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    return-object v0

    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ha;->U2:Lcom/google/android/gms/internal/ads/Ye;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ha;->U2:Lcom/google/android/gms/internal/ads/Ye;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/Ye;->FN()Labcd/ox;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    :goto_1
    if-eqz v1, :cond_4

    :try_start_2
    invoke-static {v1}, Labcd/px;->j6(Labcd/ox;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_1
    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ha;->j3:Lcom/google/android/gms/internal/ads/Se;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ha;->j3:Lcom/google/android/gms/internal/ads/Se;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/Se;->FN()Labcd/ox;

    move-result-object v1

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ha;->Mr:Lcom/google/android/gms/internal/ads/Ve;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ha;->Mr:Lcom/google/android/gms/internal/ads/Ve;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/Ve;->FN()Labcd/ox;
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v1

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_4
    const-string v3, "Failed to call getAdChoicesContent"

    invoke-static {v3, v1}, Lcom/google/android/gms/internal/ads/jm;->FH(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    move-object v1, v0

    goto :goto_1

    :cond_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0
.end method

.method public final j6()Lcom/google/android/gms/internal/ads/Mo;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public final j6(Landroid/view/MotionEvent;)V
    .registers 4

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ha;->yS:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ha;->lg:Lcom/google/android/gms/internal/ads/ia;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ha;->lg:Lcom/google/android/gms/internal/ads/ia;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/ia;->j6(Landroid/view/MotionEvent;)V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final j6(Landroid/view/View;)V
    .registers 4

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ha;->yS:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ha;->lg:Lcom/google/android/gms/internal/ads/ia;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ha;->lg:Lcom/google/android/gms/internal/ads/ia;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/ia;->j6(Landroid/view/View;)V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final j6(Landroid/view/View;Ljava/util/Map;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;>;)V"
        }
    .end annotation

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ha;->yS:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ha;->U2:Lcom/google/android/gms/internal/ads/Ye;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ha;->U2:Lcom/google/android/gms/internal/ads/Ye;

    invoke-static {p1}, Labcd/px;->j6(Ljava/lang/Object;)Labcd/ox;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/ads/Ye;->FH(Labcd/ox;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ha;->j3:Lcom/google/android/gms/internal/ads/Se;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ha;->j3:Lcom/google/android/gms/internal/ads/Se;

    invoke-static {p1}, Labcd/px;->j6(Ljava/lang/Object;)Labcd/ox;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/ads/Se;->FH(Labcd/ox;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_3
    const-string v2, "Failed to call untrackView"

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ads/jm;->FH(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :cond_2
    :try_start_4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ha;->Mr:Lcom/google/android/gms/internal/ads/Ve;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ha;->Mr:Lcom/google/android/gms/internal/ads/Ve;

    invoke-static {p1}, Labcd/px;->j6(Ljava/lang/Object;)Labcd/ox;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/ads/Ve;->FH(Labcd/ox;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0
.end method

.method public final j6(Landroid/view/View;Ljava/util/Map;Landroid/os/Bundle;Landroid/view/View;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;>;",
            "Landroid/os/Bundle;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    const-string v0, "performClick must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/r;->j6(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ha;->yS:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/ha;->er:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ha;->pn()Z

    move-result v0

    if-eqz v0, :cond_0

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ha;->lg:Lcom/google/android/gms/internal/ads/ia;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ha;->lg:Lcom/google/android/gms/internal/ads/ia;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/ia;->j6(Landroid/view/View;Ljava/util/Map;Landroid/os/Bundle;Landroid/view/View;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ha;->a8:Lcom/google/android/gms/internal/ads/ja;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/ja;->J0()V

    :goto_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/ha;->v5(Landroid/view/View;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public final j6(Landroid/view/View;Ljava/util/Map;Ljava/util/Map;Landroid/view/View$OnTouchListener;Landroid/view/View$OnClickListener;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;>;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;>;",
            "Landroid/view/View$OnTouchListener;",
            "Landroid/view/View$OnClickListener;",
            ")V"
        }
    .end annotation

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ha;->yS:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/ha;->rN:Z

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/ha;->DW(Ljava/util/Map;)Ljava/util/HashMap;

    move-result-object v0

    invoke-static {p3}, Lcom/google/android/gms/internal/ads/ha;->DW(Ljava/util/Map;)Ljava/util/HashMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    :try_start_1
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/ha;->U2:Lcom/google/android/gms/internal/ads/Ye;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/ha;->U2:Lcom/google/android/gms/internal/ads/Ye;

    invoke-static {p1}, Labcd/px;->j6(Ljava/lang/Object;)Labcd/ox;

    move-result-object v4

    invoke-static {v0}, Labcd/px;->j6(Ljava/lang/Object;)Labcd/ox;

    move-result-object v0

    invoke-static {v2}, Labcd/px;->j6(Ljava/lang/Object;)Labcd/ox;

    move-result-object v2

    invoke-interface {v3, v4, v0, v2}, Lcom/google/android/gms/internal/ads/Ye;->j6(Labcd/ox;Labcd/ox;Labcd/ox;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    const/4 v0, 0x0

    :try_start_2
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/ha;->rN:Z

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :cond_1
    :try_start_3
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/ha;->j3:Lcom/google/android/gms/internal/ads/Se;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/ha;->j3:Lcom/google/android/gms/internal/ads/Se;

    invoke-static {p1}, Labcd/px;->j6(Ljava/lang/Object;)Labcd/ox;

    move-result-object v4

    invoke-static {v0}, Labcd/px;->j6(Ljava/lang/Object;)Labcd/ox;

    move-result-object v0

    invoke-static {v2}, Labcd/px;->j6(Ljava/lang/Object;)Labcd/ox;

    move-result-object v2

    invoke-interface {v3, v4, v0, v2}, Lcom/google/android/gms/internal/ads/Se;->j6(Labcd/ox;Labcd/ox;Labcd/ox;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ha;->j3:Lcom/google/android/gms/internal/ads/Se;

    invoke-static {p1}, Labcd/px;->j6(Ljava/lang/Object;)Labcd/ox;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/ads/Se;->Zo(Labcd/ox;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_4
    const-string v2, "Failed to call prepareAd"

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ads/jm;->FH(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    :cond_2
    :try_start_5
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/ha;->Mr:Lcom/google/android/gms/internal/ads/Ve;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/ha;->Mr:Lcom/google/android/gms/internal/ads/Ve;

    invoke-static {p1}, Labcd/px;->j6(Ljava/lang/Object;)Labcd/ox;

    move-result-object v4

    invoke-static {v0}, Labcd/px;->j6(Ljava/lang/Object;)Labcd/ox;

    move-result-object v0

    invoke-static {v2}, Labcd/px;->j6(Ljava/lang/Object;)Labcd/ox;

    move-result-object v2

    invoke-interface {v3, v4, v0, v2}, Lcom/google/android/gms/internal/ads/Ve;->j6(Labcd/ox;Labcd/ox;Labcd/ox;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ha;->Mr:Lcom/google/android/gms/internal/ads/Ve;

    invoke-static {p1}, Labcd/px;->j6(Ljava/lang/Object;)Labcd/ox;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/ads/Ve;->Zo(Labcd/ox;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/ia;)V
    .registers 4

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ha;->yS:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ha;->lg:Lcom/google/android/gms/internal/ads/ia;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/xb;)V
    .registers 4

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ha;->yS:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ha;->lg:Lcom/google/android/gms/internal/ads/ia;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ha;->lg:Lcom/google/android/gms/internal/ads/ia;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/ia;->j6(Lcom/google/android/gms/internal/ads/xb;)V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final k4()V
    .registers 1

    return-void
.end method

.method public final n5()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/ha;->er:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ha;->lg:Lcom/google/android/gms/internal/ads/ia;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/ia;->n5()V

    :cond_0
    return-void
.end method

.method public final pn()Z
    .registers 3

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ha;->yS:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ha;->lg:Lcom/google/android/gms/internal/ads/ia;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ha;->lg:Lcom/google/android/gms/internal/ads/ia;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/ia;->pn()Z

    move-result v0

    monitor-exit v1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ha;->a8:Lcom/google/android/gms/internal/ads/ja;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/ja;->ir()Z

    move-result v0

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final qI()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ha;->lg:Lcom/google/android/gms/internal/ads/ia;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/ia;->qI()V

    :cond_0
    return-void
.end method

.method public final qp()V
    .registers 3

    const-string v0, "recordCustomClickGesture must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/r;->j6(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ha;->yS:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ha;->lg:Lcom/google/android/gms/internal/ads/ia;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/ha;->er:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ha;->lg:Lcom/google/android/gms/internal/ads/ia;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/ia;->n5()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ha;->lg:Lcom/google/android/gms/internal/ads/ia;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/ia;->qp()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ha;->a8:Lcom/google/android/gms/internal/ads/ja;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/ja;->J0()V

    :cond_1
    :goto_0
    monitor-exit v1

    :goto_1
    return-void

    :cond_2
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/ha;->er:Z

    if-nez v0, :cond_3

    const-string v0, "Custom click reporting for 3p ads failed. enableCustomClickGesture is not set."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;)V

    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_3
    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ha;->pn()Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "Custom click reporting for 3p ads failed. Ad unit id not whitelisted."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;)V

    monitor-exit v1

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ma;->DW()Lcom/google/android/gms/internal/ads/Aa;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ma;->DW()Lcom/google/android/gms/internal/ads/Aa;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/Aa;->aM()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/ha;->v5(Landroid/view/View;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public final tj()Z
    .registers 3

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ha;->yS:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ha;->lg:Lcom/google/android/gms/internal/ads/ia;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ha;->lg:Lcom/google/android/gms/internal/ads/ia;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/ia;->tj()Z

    move-result v0

    monitor-exit v1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ha;->a8:Lcom/google/android/gms/internal/ads/ja;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/ja;->cX()Z

    move-result v0

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final v5()Lcom/google/android/gms/internal/ads/ia;
    .registers 3

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ha;->yS:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ha;->lg:Lcom/google/android/gms/internal/ads/ia;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final x6()Z
    .registers 3

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ha;->yS:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ha;->lg:Lcom/google/android/gms/internal/ads/ia;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ha;->lg:Lcom/google/android/gms/internal/ads/ia;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/ia;->x6()Z

    move-result v0

    monitor-exit v1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ha;->a8:Lcom/google/android/gms/internal/ads/ja;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/ja;->jn()Z

    move-result v0

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
