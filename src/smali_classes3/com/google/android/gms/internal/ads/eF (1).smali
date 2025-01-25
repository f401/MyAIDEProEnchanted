.class public final Lcom/google/android/gms/internal/ads/eF;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zh;
.end annotation


# instance fields
.field private DW:I

.field private FH:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/dF;",
            ">;"
        }
    .end annotation
.end field

.field private final j6:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/eF;->j6:Ljava/lang/Object;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/eF;->FH:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final DW(Lcom/google/android/gms/internal/ads/dF;)Z
    .registers 7

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/eF;->j6:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/eF;->FH:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/dF;

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->u7()Lcom/google/android/gms/internal/ads/pk;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/pk;->we()Lcom/google/android/gms/internal/ads/Hk;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/Hk;->v5()Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_39

    if-eq p1, v2, :cond_9

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/dF;->FH()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/dF;->FH()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    monitor-exit v0

    return v4

    :cond_39
    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->u7()Lcom/google/android/gms/internal/ads/pk;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/pk;->we()Lcom/google/android/gms/internal/ads/Hk;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/Hk;->FH()Z

    move-result v3

    if-nez v3, :cond_9

    if-eq p1, v2, :cond_9

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/dF;->v5()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/dF;->v5()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    monitor-exit v0

    return v4

    :cond_5c
    monitor-exit v0

    const/4 p1, 0x0

    return p1

    :catchall_5f
    move-exception p1

    monitor-exit v0
    :try_end_61
    .catchall {:try_start_3 .. :try_end_61} :catchall_5f

    goto :goto_63

    :goto_62
    throw p1

    :goto_63
    goto :goto_62
.end method

.method public final FH(Lcom/google/android/gms/internal/ads/dF;)V
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/eF;->j6:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/eF;->FH:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/16 v2, 0xa

    if-lt v1, v2, :cond_2f

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/eF;->FH:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x29

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Queue is full, current size = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/eF;->FH:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_2f
    iget v1, p0, Lcom/google/android/gms/internal/ads/eF;->DW:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/ads/eF;->DW:I

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/dF;->j6(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/eF;->FH:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_3f
    move-exception p1

    monitor-exit v0
    :try_end_41
    .catchall {:try_start_3 .. :try_end_41} :catchall_3f

    throw p1
.end method

.method public final j6()Lcom/google/android/gms/internal/ads/dF;
    .registers 9

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/eF;->j6:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/eF;->FH:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_13

    const-string v1, "Queue empty"

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;)V

    monitor-exit v0

    return-object v2

    :cond_13
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/eF;->FH:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-lt v1, v3, :cond_45

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/eF;->FH:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/high16 v3, -0x80000000

    const/4 v5, 0x0

    :goto_26
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/ads/dF;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/dF;->j6()I

    move-result v7

    if-le v7, v3, :cond_3b

    move v4, v5

    move-object v2, v6

    move v3, v7

    :cond_3b
    add-int/lit8 v5, v5, 0x1

    goto :goto_26

    :cond_3e
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/eF;->FH:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    monitor-exit v0

    return-object v2

    :cond_45
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/eF;->FH:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/dF;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/dF;->Zo()V

    monitor-exit v0

    return-object v1

    :catchall_52
    move-exception v1

    monitor-exit v0
    :try_end_54
    .catchall {:try_start_3 .. :try_end_54} :catchall_52

    goto :goto_56

    :goto_55
    throw v1

    :goto_56
    goto :goto_55
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/dF;)Z
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/eF;->j6:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/eF;->FH:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_e

    monitor-exit v0

    const/4 p1, 0x1

    return p1

    :cond_e
    monitor-exit v0

    const/4 p1, 0x0

    return p1

    :catchall_11
    move-exception p1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw p1
.end method
