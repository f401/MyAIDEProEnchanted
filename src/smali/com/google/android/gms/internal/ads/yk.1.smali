.class public final Lcom/google/android/gms/internal/ads/yk;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/iF;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zh;
.end annotation


# instance fields
.field private final DW:Lcom/google/android/gms/internal/ads/Hk;

.field private final FH:Lcom/google/android/gms/internal/ads/wk;

.field private final Hw:Lcom/google/android/gms/internal/ads/uk;

.field private final Zo:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/google/android/gms/internal/ads/xk;",
            ">;"
        }
    .end annotation
.end field

.field private final j6:Ljava/lang/Object;

.field private final v5:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/google/android/gms/internal/ads/mk;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/Hk;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/yk;->j6:Ljava/lang/Object;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/yk;->v5:Ljava/util/HashSet;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/yk;->Zo:Ljava/util/HashSet;

    new-instance v0, Lcom/google/android/gms/internal/ads/uk;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/ads/uk;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/Hk;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/yk;->Hw:Lcom/google/android/gms/internal/ads/uk;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/yk;->DW:Lcom/google/android/gms/internal/ads/Hk;

    new-instance v0, Lcom/google/android/gms/internal/ads/wk;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/wk;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/yk;->FH:Lcom/google/android/gms/internal/ads/wk;

    return-void
.end method


# virtual methods
.method public final DW()V
    .registers 3

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/yk;->j6:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/yk;->Hw:Lcom/google/android/gms/internal/ads/uk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/uk;->DW()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final j6(Landroid/content/Context;Lcom/google/android/gms/internal/ads/vk;)Landroid/os/Bundle;
    .registers 9

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/yk;->j6:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/yk;->v5:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/yk;->v5:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v0, "app"

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/yk;->Hw:Lcom/google/android/gms/internal/ads/uk;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/yk;->FH:Lcom/google/android/gms/internal/ads/wk;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/wk;->DW()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, p1, v4}, Lcom/google/android/gms/internal/ads/uk;->j6(Landroid/content/Context;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/yk;->Zo:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/xk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/xk;->DW()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/xk;->j6()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v3, v5, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_0
    const-string v0, "slots"

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/mk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/mk;->j6()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    const-string v0, "ads"

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/ads/vk;->j6(Ljava/util/HashSet;)V

    return-object v2

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final j6(Lcom/google/android/gms/common/util/e;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/mk;
    .registers 5

    new-instance v0, Lcom/google/android/gms/internal/ads/mk;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/yk;->FH:Lcom/google/android/gms/internal/ads/wk;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/wk;->j6()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, p0, v1, p2}, Lcom/google/android/gms/internal/ads/mk;-><init>(Lcom/google/android/gms/common/util/e;Lcom/google/android/gms/internal/ads/yk;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public final j6()V
    .registers 3

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/yk;->j6:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/yk;->Hw:Lcom/google/android/gms/internal/ads/uk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/uk;->j6()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/mk;)V
    .registers 4

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/yk;->j6:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/yk;->v5:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/xk;)V
    .registers 4

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/yk;->j6:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/yk;->Zo:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/zzwb;J)V
    .registers 6

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/yk;->j6:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/yk;->Hw:Lcom/google/android/gms/internal/ads/uk;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/uk;->j6(Lcom/google/android/gms/internal/ads/zzwb;J)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final j6(Ljava/util/HashSet;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Lcom/google/android/gms/internal/ads/mk;",
            ">;)V"
        }
    .end annotation

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/yk;->j6:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/yk;->v5:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final j6(Z)V
    .registers 7

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->we()Lcom/google/android/gms/common/util/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/e;->j6()J

    move-result-wide v0

    if-eqz p1, :cond_1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/yk;->DW:Lcom/google/android/gms/internal/ads/Hk;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/Hk;->J8()J

    move-result-wide v2

    sget-object v4, Lcom/google/android/gms/internal/ads/p;->Gj:Lcom/google/android/gms/internal/ads/e;

    sub-long v2, v0, v2

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->v5()Lcom/google/android/gms/internal/ads/m;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/ads/m;->j6(Lcom/google/android/gms/internal/ads/e;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long v0, v2, v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/yk;->Hw:Lcom/google/android/gms/internal/ads/uk;

    const/4 v1, -0x1

    iput v1, v0, Lcom/google/android/gms/internal/ads/uk;->Hw:I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/yk;->Hw:Lcom/google/android/gms/internal/ads/uk;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/yk;->DW:Lcom/google/android/gms/internal/ads/Hk;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/Hk;->J0()I

    move-result v1

    iput v1, v0, Lcom/google/android/gms/internal/ads/uk;->Hw:I

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/yk;->DW:Lcom/google/android/gms/internal/ads/Hk;

    invoke-interface {v2, v0, v1}, Lcom/google/android/gms/internal/ads/Hk;->j6(J)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/yk;->DW:Lcom/google/android/gms/internal/ads/Hk;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/yk;->Hw:Lcom/google/android/gms/internal/ads/uk;

    iget v1, v1, Lcom/google/android/gms/internal/ads/uk;->Hw:I

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/Hk;->j6(I)V

    goto :goto_0
.end method
