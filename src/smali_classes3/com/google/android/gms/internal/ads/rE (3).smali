.class public final Lcom/google/android/gms/internal/ads/rE;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/zE;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zh;
.end annotation


# instance fields
.field private final DW:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Lcom/google/android/gms/internal/ads/kk;",
            "Lcom/google/android/gms/internal/ads/sE;",
            ">;"
        }
    .end annotation
.end field

.field private final FH:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/android/gms/internal/ads/sE;",
            ">;"
        }
    .end annotation
.end field

.field private final Hw:Landroid/content/Context;

.field private final Zo:Lcom/google/android/gms/internal/ads/rd;

.field private final j6:Ljava/lang/Object;

.field private final v5:Lcom/google/android/gms/internal/ads/zzbbi;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbbi;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/rE;->j6:Ljava/lang/Object;

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/rE;->DW:Ljava/util/WeakHashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/rE;->FH:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/rE;->Hw:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/rE;->v5:Lcom/google/android/gms/internal/ads/zzbbi;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    sget-object v0, Lcom/google/android/gms/internal/ads/p;->DW:Lcom/google/android/gms/internal/ads/e;

    new-instance v1, Lcom/google/android/gms/internal/ads/rd;

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->v5()Lcom/google/android/gms/internal/ads/m;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/m;->j6(Lcom/google/android/gms/internal/ads/e;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v1, p1, p2, v0}, Lcom/google/android/gms/internal/ads/rd;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbbi;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/rE;->Zo:Lcom/google/android/gms/internal/ads/rd;

    return-void
.end method

.method private final v5(Lcom/google/android/gms/internal/ads/kk;)Z
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/rE;->j6:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/rE;->DW:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/sE;

    if-eqz p1, :cond_15

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/sE;->Zo()Z

    move-result p1

    if-eqz p1, :cond_15

    const/4 p1, 0x1

    goto :goto_16

    :cond_15
    const/4 p1, 0x0

    :goto_16
    monitor-exit v0

    return p1

    :catchall_18
    move-exception p1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_18

    throw p1
.end method


# virtual methods
.method public final DW(Lcom/google/android/gms/internal/ads/kk;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/rE;->j6:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/rE;->DW:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/sE;

    if-eqz p1, :cond_10

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/sE;->FH()V

    :cond_10
    monitor-exit v0

    return-void

    :catchall_12
    move-exception p1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw p1
.end method

.method public final FH(Lcom/google/android/gms/internal/ads/kk;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/rE;->j6:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/rE;->DW:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/sE;

    if-eqz p1, :cond_10

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/sE;->j6()V

    :cond_10
    monitor-exit v0

    return-void

    :catchall_12
    move-exception p1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw p1
.end method

.method public final Hw(Lcom/google/android/gms/internal/ads/kk;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/rE;->j6:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/rE;->DW:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/sE;

    if-eqz p1, :cond_10

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/sE;->DW()V

    :cond_10
    monitor-exit v0

    return-void

    :catchall_12
    move-exception p1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw p1
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/kk;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/rE;->j6:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/rE;->DW:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/sE;

    if-eqz p1, :cond_10

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/sE;->v5()V

    :cond_10
    monitor-exit v0

    return-void

    :catchall_12
    move-exception p1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw p1
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/sE;)V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/rE;->j6:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/sE;->Zo()Z

    move-result v1

    if-nez v1, :cond_2e

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/rE;->FH:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/rE;->DW:Ljava/util/WeakHashMap;

    invoke-virtual {v1}, Ljava/util/WeakHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_18
    :goto_18
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_18

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_18

    :cond_2e
    monitor-exit v0

    return-void

    :catchall_30
    move-exception p1

    monitor-exit v0
    :try_end_32
    .catchall {:try_start_3 .. :try_end_32} :catchall_30

    goto :goto_34

    :goto_33
    throw p1

    :goto_34
    goto :goto_33
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/zzwf;Lcom/google/android/gms/internal/ads/kk;)V
    .registers 4

    iget-object v0, p2, Lcom/google/android/gms/internal/ads/kk;->DW:Lcom/google/android/gms/internal/ads/Mo;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/Mo;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/gms/internal/ads/rE;->j6(Lcom/google/android/gms/internal/ads/zzwf;Lcom/google/android/gms/internal/ads/kk;Landroid/view/View;)V

    return-void
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/zzwf;Lcom/google/android/gms/internal/ads/kk;Landroid/view/View;)V
    .registers 5

    new-instance v0, Lcom/google/android/gms/internal/ads/yE;

    invoke-direct {v0, p3, p2}, Lcom/google/android/gms/internal/ads/yE;-><init>(Landroid/view/View;Lcom/google/android/gms/internal/ads/kk;)V

    const/4 p3, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/google/android/gms/internal/ads/rE;->j6(Lcom/google/android/gms/internal/ads/zzwf;Lcom/google/android/gms/internal/ads/kk;Lcom/google/android/gms/internal/ads/cF;Lcom/google/android/gms/internal/ads/Mo;)V

    return-void
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/zzwf;Lcom/google/android/gms/internal/ads/kk;Landroid/view/View;Lcom/google/android/gms/internal/ads/Mo;)V
    .registers 6

    new-instance v0, Lcom/google/android/gms/internal/ads/yE;

    invoke-direct {v0, p3, p2}, Lcom/google/android/gms/internal/ads/yE;-><init>(Landroid/view/View;Lcom/google/android/gms/internal/ads/kk;)V

    invoke-virtual {p0, p1, p2, v0, p4}, Lcom/google/android/gms/internal/ads/rE;->j6(Lcom/google/android/gms/internal/ads/zzwf;Lcom/google/android/gms/internal/ads/kk;Lcom/google/android/gms/internal/ads/cF;Lcom/google/android/gms/internal/ads/Mo;)V

    return-void
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/zzwf;Lcom/google/android/gms/internal/ads/kk;Lcom/google/android/gms/internal/ads/cF;Lcom/google/android/gms/internal/ads/Mo;)V
    .registers 13

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/rE;->j6:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/rE;->v5(Lcom/google/android/gms/internal/ads/kk;)Z

    move-result v1

    if-eqz v1, :cond_12

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/rE;->DW:Ljava/util/WeakHashMap;

    invoke-virtual {p1, p2}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/sE;

    goto :goto_2d

    :cond_12
    new-instance v7, Lcom/google/android/gms/internal/ads/sE;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/rE;->Hw:Landroid/content/Context;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/rE;->v5:Lcom/google/android/gms/internal/ads/zzbbi;

    move-object v1, v7

    move-object v3, p1

    move-object v4, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/sE;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzwf;Lcom/google/android/gms/internal/ads/kk;Lcom/google/android/gms/internal/ads/zzbbi;Lcom/google/android/gms/internal/ads/cF;)V

    invoke-virtual {v7, p0}, Lcom/google/android/gms/internal/ads/sE;->j6(Lcom/google/android/gms/internal/ads/zE;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/rE;->DW:Ljava/util/WeakHashMap;

    invoke-virtual {p1, p2, v7}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/rE;->FH:Ljava/util/ArrayList;

    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object p1, v7

    :goto_2d
    if-eqz p4, :cond_38

    new-instance p2, Lcom/google/android/gms/internal/ads/AE;

    invoke-direct {p2, p1, p4}, Lcom/google/android/gms/internal/ads/AE;-><init>(Lcom/google/android/gms/internal/ads/sE;Lcom/google/android/gms/internal/ads/Mo;)V

    :goto_34
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/sE;->j6(Lcom/google/android/gms/internal/ads/OE;)V

    goto :goto_42

    :cond_38
    new-instance p2, Lcom/google/android/gms/internal/ads/EE;

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/rE;->Zo:Lcom/google/android/gms/internal/ads/rd;

    iget-object p4, p0, Lcom/google/android/gms/internal/ads/rE;->Hw:Landroid/content/Context;

    invoke-direct {p2, p1, p3, p4}, Lcom/google/android/gms/internal/ads/EE;-><init>(Lcom/google/android/gms/internal/ads/sE;Lcom/google/android/gms/internal/ads/rd;Landroid/content/Context;)V

    goto :goto_34

    :goto_42
    monitor-exit v0

    return-void

    :catchall_44
    move-exception p1

    monitor-exit v0
    :try_end_46
    .catchall {:try_start_3 .. :try_end_46} :catchall_44

    goto :goto_48

    :goto_47
    throw p1

    :goto_48
    goto :goto_47
.end method
