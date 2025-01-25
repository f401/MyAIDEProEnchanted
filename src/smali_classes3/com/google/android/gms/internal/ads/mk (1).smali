.class public final Lcom/google/android/gms/internal/ads/mk;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zh;
.end annotation


# instance fields
.field private final DW:Lcom/google/android/gms/internal/ads/yk;

.field private EQ:J

.field private final FH:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/google/android/gms/internal/ads/nk;",
            ">;"
        }
    .end annotation
.end field

.field private final Hw:Ljava/lang/Object;

.field private J0:J

.field private VH:J

.field private final Zo:Ljava/lang/String;

.field private gn:J

.field private final j6:Lcom/google/android/gms/common/util/e;

.field private tp:J

.field private u7:Z

.field private final v5:Ljava/lang/String;

.field private we:J


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/util/e;Lcom/google/android/gms/internal/ads/yk;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/mk;->Hw:Ljava/lang/Object;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/mk;->VH:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/mk;->gn:J

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/mk;->u7:Z

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/mk;->tp:J

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/mk;->EQ:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/mk;->we:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/mk;->J0:J

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/mk;->j6:Lcom/google/android/gms/common/util/e;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/mk;->DW:Lcom/google/android/gms/internal/ads/yk;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/mk;->v5:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/mk;->Zo:Ljava/lang/String;

    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/mk;->FH:Ljava/util/LinkedList;

    return-void
.end method

.method static synthetic j6(Lcom/google/android/gms/internal/ads/mk;)Lcom/google/android/gms/common/util/e;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/mk;->j6:Lcom/google/android/gms/common/util/e;

    return-object p0
.end method


# virtual methods
.method public final DW()V
    .registers 7

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/mk;->Hw:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/mk;->J0:J

    const-wide/16 v3, -0x1

    cmp-long v5, v1, v3

    if-eqz v5, :cond_1e

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/mk;->gn:J

    cmp-long v5, v1, v3

    if-nez v5, :cond_1e

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/mk;->j6:Lcom/google/android/gms/common/util/e;

    invoke-interface {v1}, Lcom/google/android/gms/common/util/e;->DW()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/android/gms/internal/ads/mk;->gn:J

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/mk;->DW:Lcom/google/android/gms/internal/ads/yk;

    invoke-virtual {v1, p0}, Lcom/google/android/gms/internal/ads/yk;->j6(Lcom/google/android/gms/internal/ads/mk;)V

    :cond_1e
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/mk;->DW:Lcom/google/android/gms/internal/ads/yk;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/yk;->j6()V

    monitor-exit v0

    return-void

    :catchall_25
    move-exception v1

    monitor-exit v0
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_25

    throw v1
.end method

.method public final DW(J)V
    .registers 9

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/mk;->Hw:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/mk;->J0:J

    const-wide/16 v3, -0x1

    cmp-long v5, v1, v3

    if-eqz v5, :cond_12

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/mk;->VH:J

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/mk;->DW:Lcom/google/android/gms/internal/ads/yk;

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/ads/yk;->j6(Lcom/google/android/gms/internal/ads/mk;)V

    :cond_12
    monitor-exit v0

    return-void

    :catchall_14
    move-exception p1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw p1
.end method

.method public final DW(Z)V
    .registers 8

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/mk;->Hw:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/mk;->J0:J

    const-wide/16 v3, -0x1

    cmp-long v5, v1, v3

    if-eqz v5, :cond_12

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/mk;->u7:Z

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/mk;->DW:Lcom/google/android/gms/internal/ads/yk;

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/ads/yk;->j6(Lcom/google/android/gms/internal/ads/mk;)V

    :cond_12
    monitor-exit v0

    return-void

    :catchall_14
    move-exception p1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw p1
.end method

.method public final FH()V
    .registers 7

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/mk;->Hw:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/mk;->J0:J

    const-wide/16 v3, -0x1

    cmp-long v5, v1, v3

    if-eqz v5, :cond_29

    new-instance v1, Lcom/google/android/gms/internal/ads/nk;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/nk;-><init>(Lcom/google/android/gms/internal/ads/mk;)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/nk;->Hw()V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/mk;->FH:Ljava/util/LinkedList;

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/mk;->EQ:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/google/android/gms/internal/ads/mk;->EQ:J

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/mk;->DW:Lcom/google/android/gms/internal/ads/yk;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/yk;->DW()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/mk;->DW:Lcom/google/android/gms/internal/ads/yk;

    invoke-virtual {v1, p0}, Lcom/google/android/gms/internal/ads/yk;->j6(Lcom/google/android/gms/internal/ads/mk;)V

    :cond_29
    monitor-exit v0

    return-void

    :catchall_2b
    move-exception v1

    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_3 .. :try_end_2d} :catchall_2b

    throw v1
.end method

.method public final Hw()V
    .registers 8

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/mk;->Hw:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/mk;->J0:J

    const-wide/16 v3, -0x1

    cmp-long v5, v1, v3

    if-eqz v5, :cond_2b

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/mk;->FH:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2b

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/mk;->FH:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/nk;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/nk;->DW()J

    move-result-wide v5

    cmp-long v2, v5, v3

    if-nez v2, :cond_2b

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/nk;->FH()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/mk;->DW:Lcom/google/android/gms/internal/ads/yk;

    invoke-virtual {v1, p0}, Lcom/google/android/gms/internal/ads/yk;->j6(Lcom/google/android/gms/internal/ads/mk;)V

    :cond_2b
    monitor-exit v0

    return-void

    :catchall_2d
    move-exception v1

    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_3 .. :try_end_2f} :catchall_2d

    throw v1
.end method

.method public final j6()Landroid/os/Bundle;
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/mk;->Hw:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "seq_num"

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/mk;->v5:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "slotid"

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/mk;->Zo:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "ismediation"

    iget-boolean v3, p0, Lcom/google/android/gms/internal/ads/mk;->u7:Z

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v2, "treq"

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/mk;->we:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v2, "tresponse"

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/mk;->J0:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v2, "timp"

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/mk;->gn:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v2, "tload"

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/mk;->tp:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v2, "pcc"

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/mk;->EQ:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v2, "tfetch"

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/mk;->VH:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/mk;->FH:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_52
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_66

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/ads/nk;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/nk;->j6()Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_52

    :cond_66
    const-string v3, "tclick"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    monitor-exit v0

    return-object v1

    :catchall_6d
    move-exception v1

    monitor-exit v0
    :try_end_6f
    .catchall {:try_start_3 .. :try_end_6f} :catchall_6d

    goto :goto_71

    :goto_70
    throw v1

    :goto_71
    goto :goto_70
.end method

.method public final j6(J)V
    .registers 7

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/mk;->Hw:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/mk;->J0:J

    const-wide/16 v1, -0x1

    cmp-long v3, p1, v1

    if-eqz v3, :cond_10

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/mk;->DW:Lcom/google/android/gms/internal/ads/yk;

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/ads/yk;->j6(Lcom/google/android/gms/internal/ads/mk;)V

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

.method public final j6(Lcom/google/android/gms/internal/ads/zzwb;)V
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/mk;->Hw:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/mk;->j6:Lcom/google/android/gms/common/util/e;

    invoke-interface {v1}, Lcom/google/android/gms/common/util/e;->DW()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/android/gms/internal/ads/mk;->we:J

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/mk;->DW:Lcom/google/android/gms/internal/ads/yk;

    invoke-virtual {v3, p1, v1, v2}, Lcom/google/android/gms/internal/ads/yk;->j6(Lcom/google/android/gms/internal/ads/zzwb;J)V

    monitor-exit v0

    return-void

    :catchall_12
    move-exception p1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw p1
.end method

.method public final j6(Z)V
    .registers 8

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/mk;->Hw:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/mk;->J0:J

    const-wide/16 v3, -0x1

    cmp-long v5, v1, v3

    if-eqz v5, :cond_1c

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/mk;->j6:Lcom/google/android/gms/common/util/e;

    invoke-interface {v1}, Lcom/google/android/gms/common/util/e;->DW()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/android/gms/internal/ads/mk;->tp:J

    if-nez p1, :cond_1c

    iput-wide v1, p0, Lcom/google/android/gms/internal/ads/mk;->gn:J

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/mk;->DW:Lcom/google/android/gms/internal/ads/yk;

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/ads/yk;->j6(Lcom/google/android/gms/internal/ads/mk;)V

    :cond_1c
    monitor-exit v0

    return-void

    :catchall_1e
    move-exception p1

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_1e

    throw p1
.end method

.method public final v5()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/mk;->v5:Ljava/lang/String;

    return-object v0
.end method
