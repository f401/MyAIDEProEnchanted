.class public abstract Lcom/google/android/gms/internal/ads/lE;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/google/android/gms/internal/ads/lE<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field private final DW:I

.field private EQ:Z

.field private final FH:Ljava/lang/String;

.field private final Hw:I

.field private J0:Lcom/google/android/gms/internal/ads/C;

.field private J8:Lcom/google/android/gms/internal/ads/Ow;

.field private VH:Ljava/lang/Integer;

.field private Ws:Lcom/google/android/gms/internal/ads/mF;

.field private Zo:Lcom/google/android/gms/internal/ads/XH;

.field private gn:Lcom/google/android/gms/internal/ads/DG;

.field private final j6:Lcom/google/android/gms/internal/ads/Db$a;

.field private tp:Z

.field private u7:Z

.field private final v5:Ljava/lang/Object;

.field private we:Z


# direct methods
.method public constructor <init>(ILjava/lang/String;Lcom/google/android/gms/internal/ads/XH;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-boolean v0, Lcom/google/android/gms/internal/ads/Db$a;->j6:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    new-instance v0, Lcom/google/android/gms/internal/ads/Db$a;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/Db$a;-><init>()V

    goto :goto_f

    :cond_e
    move-object v0, v1

    :goto_f
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/lE;->j6:Lcom/google/android/gms/internal/ads/Db$a;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/lE;->v5:Ljava/lang/Object;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/lE;->u7:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/lE;->tp:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/lE;->EQ:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/lE;->we:Z

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/lE;->J8:Lcom/google/android/gms/internal/ads/Ow;

    iput p1, p0, Lcom/google/android/gms/internal/ads/lE;->DW:I

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/lE;->FH:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/lE;->Zo:Lcom/google/android/gms/internal/ads/XH;

    new-instance p1, Lcom/google/android/gms/internal/ads/pz;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/pz;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/lE;->J0:Lcom/google/android/gms/internal/ads/C;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_47

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_47

    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_47

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    :cond_47
    iput v0, p0, Lcom/google/android/gms/internal/ads/lE;->Hw:I

    return-void
.end method

.method static synthetic j6(Lcom/google/android/gms/internal/ads/lE;)Lcom/google/android/gms/internal/ads/Db$a;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/lE;->j6:Lcom/google/android/gms/internal/ads/Db$a;

    return-object p0
.end method


# virtual methods
.method final DW(Ljava/lang/String;)V
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/lE;->gn:Lcom/google/android/gms/internal/ads/DG;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/DG;->DW(Lcom/google/android/gms/internal/ads/lE;)V

    :cond_7
    sget-boolean v0, Lcom/google/android/gms/internal/ads/Db$a;->j6:Z

    if-eqz v0, :cond_3d

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    if-eq v2, v3, :cond_2f

    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v3, Lcom/google/android/gms/internal/ads/ME;

    invoke-direct {v3, p0, p1, v0, v1}, Lcom/google/android/gms/internal/ads/ME;-><init>(Lcom/google/android/gms/internal/ads/lE;Ljava/lang/String;J)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_2f
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/lE;->j6:Lcom/google/android/gms/internal/ads/Db$a;

    invoke-virtual {v2, p1, v0, v1}, Lcom/google/android/gms/internal/ads/Db$a;->j6(Ljava/lang/String;J)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/lE;->j6:Lcom/google/android/gms/internal/ads/Db$a;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/lE;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/Db$a;->j6(Ljava/lang/String;)V

    :cond_3d
    return-void
.end method

.method public Hw()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final J8()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/lE;->Hw:I

    return v0
.end method

.method public final Mr()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/lE;->u7:Z

    return v0
.end method

.method public final U2()I
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/lE;->J0:Lcom/google/android/gms/internal/ads/C;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/C;->j6()I

    move-result v0

    return v0
.end method

.method public final VH()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/lE;->FH:Ljava/lang/String;

    return-object v0
.end method

.method public final Ws()Ljava/lang/String;
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/lE;->FH:Ljava/lang/String;

    iget v1, p0, Lcom/google/android/gms/internal/ads/lE;->DW:I

    if-eqz v1, :cond_35

    const/4 v2, -0x1

    if-ne v1, v2, :cond_a

    goto :goto_35

    :cond_a
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2d

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_35
    :goto_35
    return-object v0
.end method

.method public final Zo()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/lE;->DW:I

    return v0
.end method

.method public final a8()Lcom/google/android/gms/internal/ads/C;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/lE;->J0:Lcom/google/android/gms/internal/ads/C;

    return-object v0
.end method

.method public final aM()Lcom/google/android/gms/internal/ads/Ow;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/lE;->J8:Lcom/google/android/gms/internal/ads/Ow;

    return-object v0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Lcom/google/android/gms/internal/ads/lE;

    sget-object v0, Lcom/google/android/gms/internal/ads/LF;->DW:Lcom/google/android/gms/internal/ads/LF;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/lE;->VH:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/lE;->VH:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sub-int/2addr v0, p1

    return v0
.end method

.method final er()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/lE;->v5:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/lE;->Ws:Lcom/google/android/gms/internal/ads/mF;

    monitor-exit v0
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_c

    if-eqz v1, :cond_b

    invoke-interface {v1, p0}, Lcom/google/android/gms/internal/ads/mF;->j6(Lcom/google/android/gms/internal/ads/lE;)V

    :cond_b
    return-void

    :catchall_c
    move-exception v1

    :try_start_d
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_d .. :try_end_e} :catchall_c

    throw v1
.end method

.method public j3()[B
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public final j6(I)Lcom/google/android/gms/internal/ads/lE;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/android/gms/internal/ads/lE<",
            "*>;"
        }
    .end annotation

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/lE;->VH:Ljava/lang/Integer;

    return-object p0
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/DG;)Lcom/google/android/gms/internal/ads/lE;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/DG;",
            ")",
            "Lcom/google/android/gms/internal/ads/lE<",
            "*>;"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/lE;->gn:Lcom/google/android/gms/internal/ads/DG;

    return-object p0
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/Ow;)Lcom/google/android/gms/internal/ads/lE;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/Ow;",
            ")",
            "Lcom/google/android/gms/internal/ads/lE<",
            "*>;"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/lE;->J8:Lcom/google/android/gms/internal/ads/Ow;

    return-object p0
.end method

.method protected abstract j6(Lcom/google/android/gms/internal/ads/nD;)Lcom/google/android/gms/internal/ads/wH;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/nD;",
            ")",
            "Lcom/google/android/gms/internal/ads/wH<",
            "TT;>;"
        }
    .end annotation
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/db;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/lE;->v5:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/lE;->Zo:Lcom/google/android/gms/internal/ads/XH;

    monitor-exit v0
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_c

    if-eqz v1, :cond_b

    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/ads/XH;->j6(Lcom/google/android/gms/internal/ads/db;)V

    :cond_b
    return-void

    :catchall_c
    move-exception p1

    :try_start_d
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_d .. :try_end_e} :catchall_c

    throw p1
.end method

.method final j6(Lcom/google/android/gms/internal/ads/mF;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/lE;->v5:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/lE;->Ws:Lcom/google/android/gms/internal/ads/mF;

    monitor-exit v0

    return-void

    :catchall_7
    move-exception p1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p1
.end method

.method final j6(Lcom/google/android/gms/internal/ads/wH;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/wH<",
            "*>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/lE;->v5:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/lE;->Ws:Lcom/google/android/gms/internal/ads/mF;

    monitor-exit v0
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_c

    if-eqz v1, :cond_b

    invoke-interface {v1, p0, p1}, Lcom/google/android/gms/internal/ads/mF;->j6(Lcom/google/android/gms/internal/ads/lE;Lcom/google/android/gms/internal/ads/wH;)V

    :cond_b
    return-void

    :catchall_c
    move-exception p1

    :try_start_d
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_d .. :try_end_e} :catchall_c

    throw p1
.end method

.method protected abstract j6(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public final j6(Ljava/lang/String;)V
    .registers 5

    sget-boolean v0, Lcom/google/android/gms/internal/ads/Db$a;->j6:Z

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/lE;->j6:Lcom/google/android/gms/internal/ads/Db$a;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2}, Lcom/google/android/gms/internal/ads/Db$a;->j6(Ljava/lang/String;J)V

    :cond_11
    return-void
.end method

.method public final lg()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/lE;->v5:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_4
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/lE;->EQ:Z

    monitor-exit v0

    return-void

    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_8

    throw v1
.end method

.method public final rN()Z
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/lE;->v5:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/lE;->EQ:Z

    monitor-exit v0

    return v1

    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .registers 9

    iget v0, p0, Lcom/google/android/gms/internal/ads/lE;->Hw:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const-string v2, "0x"

    if-eqz v1, :cond_17

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1c

    :cond_17
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1c
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/lE;->we()Z

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/lE;->FH:Ljava/lang/String;

    sget-object v2, Lcom/google/android/gms/internal/ads/LF;->DW:Lcom/google/android/gms/internal/ads/LF;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/lE;->VH:Ljava/lang/Integer;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "[ ] "

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x3

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final we()Z
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/lE;->v5:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    monitor-exit v0

    const/4 v0, 0x0

    return v0

    :catchall_6
    move-exception v1

    monitor-exit v0
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_6

    throw v1
.end method
