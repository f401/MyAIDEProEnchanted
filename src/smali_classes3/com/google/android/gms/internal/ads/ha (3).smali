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
    .registers 14

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/ads/ma;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/ja;Lcom/google/android/gms/internal/ads/dh;Lcom/google/android/gms/internal/ads/ix;Lorg/json/JSONObject;Lcom/google/android/gms/internal/ads/ka;Lcom/google/android/gms/internal/ads/zzbbi;Ljava/lang/String;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/ha;->rN:Z

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/ha;->er:Z

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ha;->yS:Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/ha;->a8:Lcom/google/android/gms/internal/ads/ja;

    return-void
.end method

.method private static DW(Ljava/util/Map;)Ljava/util/HashMap;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;>;)",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-nez p0, :cond_8

    return-object v0

    :cond_8
    monitor-enter p0

    :try_start_9
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_11
    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_35

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    if-eqz v3, :cond_11

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_11

    :cond_35
    monitor-exit p0

    return-object v0

    :catchall_37
    move-exception v0

    monitor-exit p0
    :try_end_39
    .catchall {:try_start_9 .. :try_end_39} :catchall_37

    goto :goto_3b

    :goto_3a
    throw v0

    :goto_3b
    goto :goto_3a
.end method

.method private final v5(Landroid/view/View;)V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ha;->U2:Lcom/google/android/gms/internal/ads/Ye;

    if-eqz v0, :cond_19

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/Ye;->eU()Z

    move-result v0

    if-nez v0, :cond_19

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ha;->U2:Lcom/google/android/gms/internal/ads/Ye;

    invoke-static {p1}, Labcd/px;->j6(Ljava/lang/Object;)Labcd/ox;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/Ye;->DW(Labcd/ox;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/ha;->a8:Lcom/google/android/gms/internal/ads/ja;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/ja;->J0()V

    return-void

    :cond_19
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ha;->j3:Lcom/google/android/gms/internal/ads/Se;

    if-eqz v0, :cond_32

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/Se;->eU()Z

    move-result v0

    if-nez v0, :cond_32

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ha;->j3:Lcom/google/android/gms/internal/ads/Se;

    invoke-static {p1}, Labcd/px;->j6(Ljava/lang/Object;)Labcd/ox;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/Se;->DW(Labcd/ox;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/ha;->a8:Lcom/google/android/gms/internal/ads/ja;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/ja;->J0()V

    return-void

    :cond_32
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ha;->Mr:Lcom/google/android/gms/internal/ads/Ve;

    if-eqz v0, :cond_4a

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/Ve;->eU()Z

    move-result v0

    if-nez v0, :cond_4a

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ha;->Mr:Lcom/google/android/gms/internal/ads/Ve;

    invoke-static {p1}, Labcd/px;->j6(Ljava/lang/Object;)Labcd/ox;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/Ve;->DW(Labcd/ox;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/ha;->a8:Lcom/google/android/gms/internal/ads/ja;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/ja;->J0()V
    :try_end_4a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_4a} :catch_4b

    :cond_4a
    return-void

    :catch_4b
    move-exception p1

    const-string v0, "Failed to call performClick"

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/jm;->FH(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public final DW(Landroid/view/View;Ljava/util/Map;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "recordImpression must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/r;->j6(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ha;->yS:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_9
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/ma;->tp:Z

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ha;->lg:Lcom/google/android/gms/internal/ads/ia;

    if-eqz v1, :cond_18

    invoke-interface {v1, p1, p2}, Lcom/google/android/gms/internal/ads/ia;->DW(Landroid/view/View;Ljava/util/Map;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/ha;->a8:Lcom/google/android/gms/internal/ads/ja;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/ja;->EQ()V
    :try_end_17
    .catchall {:try_start_9 .. :try_end_17} :catchall_59

    goto :goto_57

    :cond_18
    :try_start_18
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/ha;->U2:Lcom/google/android/gms/internal/ads/Ye;

    if-eqz p1, :cond_2d

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/Ye;->q7()Z

    move-result p1

    if-nez p1, :cond_2d

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/ha;->U2:Lcom/google/android/gms/internal/ads/Ye;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/Ye;->EQ()V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/ha;->a8:Lcom/google/android/gms/internal/ads/ja;

    :goto_29
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/ja;->EQ()V

    goto :goto_57

    :cond_2d
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/ha;->j3:Lcom/google/android/gms/internal/ads/Se;

    if-eqz p1, :cond_3f

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/Se;->q7()Z

    move-result p1

    if-nez p1, :cond_3f

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/ha;->j3:Lcom/google/android/gms/internal/ads/Se;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/Se;->EQ()V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/ha;->a8:Lcom/google/android/gms/internal/ads/ja;

    goto :goto_29

    :cond_3f
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/ha;->Mr:Lcom/google/android/gms/internal/ads/Ve;

    if-eqz p1, :cond_57

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/Ve;->q7()Z

    move-result p1

    if-nez p1, :cond_57

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/ha;->Mr:Lcom/google/android/gms/internal/ads/Ve;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/Ve;->EQ()V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/ha;->a8:Lcom/google/android/gms/internal/ads/ja;
    :try_end_50
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_50} :catch_51
    .catchall {:try_start_18 .. :try_end_50} :catchall_59

    goto :goto_29

    :catch_51
    move-exception p1

    :try_start_52
    const-string p2, "Failed to call recordImpression"

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/jm;->FH(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_57
    :goto_57
    monitor-exit v0

    return-void

    :catchall_59
    move-exception p1

    monitor-exit v0
    :try_end_5b
    .catchall {:try_start_52 .. :try_end_5b} :catchall_59

    goto :goto_5d

    :goto_5c
    throw p1

    :goto_5d
    goto :goto_5c
.end method

.method public final DY()V
    .registers 3

    const-string v0, "recordDownloadedImpression must be called on main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/r;->j6(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ha;->yS:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_9
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/ma;->EQ:Z

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ha;->lg:Lcom/google/android/gms/internal/ads/ia;

    if-eqz v1, :cond_12

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/ia;->DY()V

    :cond_12
    monitor-exit v0

    return-void

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_9 .. :try_end_16} :catchall_14

    throw v1
.end method

.method public final HO()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ha;->lg:Lcom/google/android/gms/internal/ads/ia;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/ia;->HO()V

    :cond_7
    return-void
.end method

.method public final Hw()Z
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ha;->yS:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/ha;->rN:Z

    monitor-exit v0

    return v1

    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public final Vq()V
    .registers 1

    return-void
.end method

.method public final Xa()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ha;->yS:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ha;->lg:Lcom/google/android/gms/internal/ads/ia;

    if-eqz v1, :cond_a

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/ia;->Xa()V

    :cond_a
    monitor-exit v0

    return-void

    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v1
.end method

.method public final j6(Landroid/view/View$OnClickListener;Z)Landroid/view/View;
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ha;->yS:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ha;->lg:Lcom/google/android/gms/internal/ads/ia;

    if-eqz v1, :cond_d

    invoke-interface {v1, p1, p2}, Lcom/google/android/gms/internal/ads/ia;->j6(Landroid/view/View$OnClickListener;Z)Landroid/view/View;

    move-result-object p1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_3c

    return-object p1

    :cond_d
    const/4 p1, 0x0

    :try_start_e
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/ha;->U2:Lcom/google/android/gms/internal/ads/Ye;

    if-eqz p2, :cond_17

    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/Ye;->FN()Labcd/ox;

    move-result-object p2

    goto :goto_30

    :cond_17
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/ha;->j3:Lcom/google/android/gms/internal/ads/Se;

    if-eqz p2, :cond_20

    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/Se;->FN()Labcd/ox;

    move-result-object p2

    goto :goto_30

    :cond_20
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/ha;->Mr:Lcom/google/android/gms/internal/ads/Ve;

    if-eqz p2, :cond_2f

    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/Ve;->FN()Labcd/ox;

    move-result-object p2
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_28} :catch_29
    .catchall {:try_start_e .. :try_end_28} :catchall_3c

    goto :goto_30

    :catch_29
    move-exception p2

    :try_start_2a
    const-string v1, "Failed to call getAdChoicesContent"

    invoke-static {v1, p2}, Lcom/google/android/gms/internal/ads/jm;->FH(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2f
    move-object p2, p1

    :goto_30
    if-eqz p2, :cond_3a

    invoke-static {p2}, Labcd/px;->j6(Labcd/ox;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    monitor-exit v0

    return-object p1

    :cond_3a
    monitor-exit v0

    return-object p1

    :catchall_3c
    move-exception p1

    monitor-exit v0
    :try_end_3e
    .catchall {:try_start_2a .. :try_end_3e} :catchall_3c

    throw p1
.end method

.method public final j6()Lcom/google/android/gms/internal/ads/Mo;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public final j6(Landroid/view/MotionEvent;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ha;->yS:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ha;->lg:Lcom/google/android/gms/internal/ads/ia;

    if-eqz v1, :cond_a

    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/ads/ia;->j6(Landroid/view/MotionEvent;)V

    :cond_a
    monitor-exit v0

    return-void

    :catchall_c
    move-exception p1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw p1
.end method

.method public final j6(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ha;->yS:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ha;->lg:Lcom/google/android/gms/internal/ads/ia;

    if-eqz v1, :cond_a

    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/ads/ia;->j6(Landroid/view/View;)V

    :cond_a
    monitor-exit v0

    return-void

    :catchall_c
    move-exception p1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw p1
.end method

.method public final j6(Landroid/view/View;Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;>;)V"
        }
    .end annotation

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/ha;->yS:Ljava/lang/Object;

    monitor-enter p2

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ha;->U2:Lcom/google/android/gms/internal/ads/Ye;

    if-eqz v0, :cond_f

    invoke-static {p1}, Labcd/px;->j6(Ljava/lang/Object;)Labcd/ox;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/Ye;->FH(Labcd/ox;)V

    goto :goto_2f

    :cond_f
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ha;->j3:Lcom/google/android/gms/internal/ads/Se;

    if-eqz v0, :cond_1b

    invoke-static {p1}, Labcd/px;->j6(Ljava/lang/Object;)Labcd/ox;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/Se;->FH(Labcd/ox;)V

    goto :goto_2f

    :cond_1b
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ha;->Mr:Lcom/google/android/gms/internal/ads/Ve;

    if-eqz v0, :cond_2f

    invoke-static {p1}, Labcd/px;->j6(Ljava/lang/Object;)Labcd/ox;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/Ve;->FH(Labcd/ox;)V
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_26} :catch_29
    .catchall {:try_start_3 .. :try_end_26} :catchall_27

    goto :goto_2f

    :catchall_27
    move-exception p1

    goto :goto_31

    :catch_29
    move-exception p1

    :try_start_2a
    const-string v0, "Failed to call untrackView"

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/jm;->FH(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2f
    :goto_2f
    monitor-exit p2

    return-void

    :goto_31
    monitor-exit p2
    :try_end_32
    .catchall {:try_start_2a .. :try_end_32} :catchall_27

    throw p1
.end method

.method public final j6(Landroid/view/View;Ljava/util/Map;Landroid/os/Bundle;Landroid/view/View;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;>;",
            "Landroid/os/Bundle;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    const-string v0, "performClick must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/r;->j6(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ha;->yS:Ljava/lang/Object;

    monitor-enter v0

    :try_start_8
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/ha;->er:Z

    if-eqz v1, :cond_14

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ha;->pn()Z

    move-result v1

    if-eqz v1, :cond_14

    monitor-exit v0

    return-void

    :cond_14
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ha;->lg:Lcom/google/android/gms/internal/ads/ia;

    if-eqz v1, :cond_21

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/ia;->j6(Landroid/view/View;Ljava/util/Map;Landroid/os/Bundle;Landroid/view/View;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/ha;->a8:Lcom/google/android/gms/internal/ads/ja;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/ja;->J0()V

    goto :goto_24

    :cond_21
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/ha;->v5(Landroid/view/View;)V

    :goto_24
    monitor-exit v0

    return-void

    :catchall_26
    move-exception p1

    monitor-exit v0
    :try_end_28
    .catchall {:try_start_8 .. :try_end_28} :catchall_26

    throw p1
.end method

.method public final j6(Landroid/view/View;Ljava/util/Map;Ljava/util/Map;Landroid/view/View$OnTouchListener;Landroid/view/View$OnClickListener;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;>;",
            "Landroid/view/View$OnTouchListener;",
            "Landroid/view/View$OnClickListener;",
            ")V"
        }
    .end annotation

    iget-object p4, p0, Lcom/google/android/gms/internal/ads/ha;->yS:Ljava/lang/Object;

    monitor-enter p4

    const/4 p5, 0x1

    :try_start_4
    iput-boolean p5, p0, Lcom/google/android/gms/internal/ads/ha;->rN:Z

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/ha;->DW(Ljava/util/Map;)Ljava/util/HashMap;

    move-result-object p2

    invoke-static {p3}, Lcom/google/android/gms/internal/ads/ha;->DW(Ljava/util/Map;)Ljava/util/HashMap;

    move-result-object p3
    :try_end_e
    .catchall {:try_start_4 .. :try_end_e} :catchall_67

    :try_start_e
    iget-object p5, p0, Lcom/google/android/gms/internal/ads/ha;->U2:Lcom/google/android/gms/internal/ads/Ye;

    if-eqz p5, :cond_22

    invoke-static {p1}, Labcd/px;->j6(Ljava/lang/Object;)Labcd/ox;

    move-result-object p1

    invoke-static {p2}, Labcd/px;->j6(Ljava/lang/Object;)Labcd/ox;

    move-result-object p2

    invoke-static {p3}, Labcd/px;->j6(Ljava/lang/Object;)Labcd/ox;

    move-result-object p3

    invoke-interface {p5, p1, p2, p3}, Lcom/google/android/gms/internal/ads/Ye;->j6(Labcd/ox;Labcd/ox;Labcd/ox;)V

    goto :goto_62

    :cond_22
    iget-object p5, p0, Lcom/google/android/gms/internal/ads/ha;->j3:Lcom/google/android/gms/internal/ads/Se;

    if-eqz p5, :cond_3f

    invoke-static {p1}, Labcd/px;->j6(Ljava/lang/Object;)Labcd/ox;

    move-result-object v0

    invoke-static {p2}, Labcd/px;->j6(Ljava/lang/Object;)Labcd/ox;

    move-result-object p2

    invoke-static {p3}, Labcd/px;->j6(Ljava/lang/Object;)Labcd/ox;

    move-result-object p3

    invoke-interface {p5, v0, p2, p3}, Lcom/google/android/gms/internal/ads/Se;->j6(Labcd/ox;Labcd/ox;Labcd/ox;)V

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/ha;->j3:Lcom/google/android/gms/internal/ads/Se;

    invoke-static {p1}, Labcd/px;->j6(Ljava/lang/Object;)Labcd/ox;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/ads/Se;->Zo(Labcd/ox;)V

    goto :goto_62

    :cond_3f
    iget-object p5, p0, Lcom/google/android/gms/internal/ads/ha;->Mr:Lcom/google/android/gms/internal/ads/Ve;

    if-eqz p5, :cond_62

    invoke-static {p1}, Labcd/px;->j6(Ljava/lang/Object;)Labcd/ox;

    move-result-object v0

    invoke-static {p2}, Labcd/px;->j6(Ljava/lang/Object;)Labcd/ox;

    move-result-object p2

    invoke-static {p3}, Labcd/px;->j6(Ljava/lang/Object;)Labcd/ox;

    move-result-object p3

    invoke-interface {p5, v0, p2, p3}, Lcom/google/android/gms/internal/ads/Ve;->j6(Labcd/ox;Labcd/ox;Labcd/ox;)V

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/ha;->Mr:Lcom/google/android/gms/internal/ads/Ve;

    invoke-static {p1}, Labcd/px;->j6(Ljava/lang/Object;)Labcd/ox;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/ads/Ve;->Zo(Labcd/ox;)V
    :try_end_5b
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_5b} :catch_5c
    .catchall {:try_start_e .. :try_end_5b} :catchall_67

    goto :goto_62

    :catch_5c
    move-exception p1

    :try_start_5d
    const-string p2, "Failed to call prepareAd"

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/jm;->FH(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_62
    :goto_62
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/ha;->rN:Z

    monitor-exit p4

    return-void

    :catchall_67
    move-exception p1

    monitor-exit p4
    :try_end_69
    .catchall {:try_start_5d .. :try_end_69} :catchall_67

    throw p1
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/ia;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ha;->yS:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ha;->lg:Lcom/google/android/gms/internal/ads/ia;

    monitor-exit v0

    return-void

    :catchall_7
    move-exception p1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p1
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/xb;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ha;->yS:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ha;->lg:Lcom/google/android/gms/internal/ads/ia;

    if-eqz v1, :cond_a

    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/ads/ia;->j6(Lcom/google/android/gms/internal/ads/xb;)V

    :cond_a
    monitor-exit v0

    return-void

    :catchall_c
    move-exception p1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw p1
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

    if-eqz v0, :cond_a

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/ia;->n5()V

    :cond_a
    return-void
.end method

.method public final pn()Z
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ha;->yS:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ha;->lg:Lcom/google/android/gms/internal/ads/ia;

    if-eqz v1, :cond_d

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/ia;->pn()Z

    move-result v1

    monitor-exit v0

    return v1

    :cond_d
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ha;->a8:Lcom/google/android/gms/internal/ads/ja;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/ja;->ir()Z

    move-result v1

    monitor-exit v0

    return v1

    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw v1
.end method

.method public final qI()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ha;->lg:Lcom/google/android/gms/internal/ads/ia;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/ia;->qI()V

    :cond_7
    return-void
.end method

.method public final qp()V
    .registers 4

    const-string v0, "recordCustomClickGesture must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/r;->j6(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ha;->yS:Ljava/lang/Object;

    monitor-enter v0

    :try_start_8
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ha;->lg:Lcom/google/android/gms/internal/ads/ia;

    if-eqz v1, :cond_1e

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/ha;->er:Z

    if-eqz v2, :cond_13

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/ia;->n5()V

    :cond_13
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ha;->lg:Lcom/google/android/gms/internal/ads/ia;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/ia;->qp()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ha;->a8:Lcom/google/android/gms/internal/ads/ja;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/ja;->J0()V

    goto :goto_47

    :cond_1e
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/ha;->er:Z

    if-nez v1, :cond_29

    const-string v1, "Custom click reporting for 3p ads failed. enableCustomClickGesture is not set."

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :cond_29
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ha;->pn()Z

    move-result v1

    if-nez v1, :cond_36

    const-string v1, "Custom click reporting for 3p ads failed. Ad unit id not whitelisted."

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :cond_36
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ma;->DW()Lcom/google/android/gms/internal/ads/Aa;

    move-result-object v1

    if-eqz v1, :cond_47

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ma;->DW()Lcom/google/android/gms/internal/ads/Aa;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/Aa;->aM()Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/ha;->v5(Landroid/view/View;)V

    :cond_47
    :goto_47
    monitor-exit v0

    return-void

    :catchall_49
    move-exception v1

    monitor-exit v0
    :try_end_4b
    .catchall {:try_start_8 .. :try_end_4b} :catchall_49

    throw v1
.end method

.method public final tj()Z
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ha;->yS:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ha;->lg:Lcom/google/android/gms/internal/ads/ia;

    if-eqz v1, :cond_d

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/ia;->tj()Z

    move-result v1

    monitor-exit v0

    return v1

    :cond_d
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ha;->a8:Lcom/google/android/gms/internal/ads/ja;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/ja;->cX()Z

    move-result v1

    monitor-exit v0

    return v1

    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw v1
.end method

.method public final v5()Lcom/google/android/gms/internal/ads/ia;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ha;->yS:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ha;->lg:Lcom/google/android/gms/internal/ads/ia;

    monitor-exit v0

    return-object v1

    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public final x6()Z
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ha;->yS:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ha;->lg:Lcom/google/android/gms/internal/ads/ia;

    if-eqz v1, :cond_d

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/ia;->x6()Z

    move-result v1

    monitor-exit v0

    return v1

    :cond_d
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ha;->a8:Lcom/google/android/gms/internal/ads/ja;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/ja;->jn()Z

    move-result v1

    monitor-exit v0

    return v1

    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw v1
.end method
