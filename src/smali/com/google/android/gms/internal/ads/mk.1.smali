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
            "Ljava/util/LinkedList",
            "<",
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

    const-wide/16 v2, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/mk;->Hw:Ljava/lang/Object;

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/mk;->VH:J

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/mk;->gn:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/mk;->u7:Z

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/mk;->tp:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/mk;->EQ:J

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/mk;->we:J

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/mk;->J0:J

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/mk;->j6:Lcom/google/android/gms/common/util/e;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/mk;->DW:Lcom/google/android/gms/internal/ads/yk;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/mk;->v5:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/mk;->Zo:Ljava/lang/String;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/mk;->FH:Ljava/util/LinkedList;

    return-void
.end method

.method static synthetic j6(Lcom/google/android/gms/internal/ads/mk;)Lcom/google/android/gms/common/util/e;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/mk;->j6:Lcom/google/android/gms/common/util/e;

    return-object v0
.end method


# virtual methods
.method public final DW()V
    .registers 7

    const-wide/16 v4, -0x1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/mk;->Hw:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/mk;->J0:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/mk;->gn:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/mk;->j6:Lcom/google/android/gms/common/util/e;

    invoke-interface {v0}, Lcom/google/android/gms/common/util/e;->DW()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/mk;->gn:J

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/mk;->DW:Lcom/google/android/gms/internal/ads/yk;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/yk;->j6(Lcom/google/android/gms/internal/ads/mk;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/mk;->DW:Lcom/google/android/gms/internal/ads/yk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/yk;->j6()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final DW(J)V
    .registers 10

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/mk;->Hw:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/mk;->J0:J

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/mk;->VH:J

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/mk;->DW:Lcom/google/android/gms/internal/ads/yk;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/yk;->j6(Lcom/google/android/gms/internal/ads/mk;)V

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

.method public final DW(Z)V
    .registers 8

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/mk;->Hw:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/mk;->J0:J

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/mk;->u7:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/mk;->DW:Lcom/google/android/gms/internal/ads/yk;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/yk;->j6(Lcom/google/android/gms/internal/ads/mk;)V

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

.method public final FH()V
    .registers 7

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/mk;->Hw:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/mk;->J0:J

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/ads/nk;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/nk;-><init>(Lcom/google/android/gms/internal/ads/mk;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/nk;->Hw()V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/mk;->FH:Ljava/util/LinkedList;

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/mk;->EQ:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/mk;->EQ:J

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/mk;->DW:Lcom/google/android/gms/internal/ads/yk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/yk;->DW()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/mk;->DW:Lcom/google/android/gms/internal/ads/yk;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/yk;->j6(Lcom/google/android/gms/internal/ads/mk;)V

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

.method public final Hw()V
    .registers 7

    const-wide/16 v4, -0x1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/mk;->Hw:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/mk;->J0:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/mk;->FH:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/mk;->FH:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/nk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/nk;->DW()J

    move-result-wide v2

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/nk;->FH()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/mk;->DW:Lcom/google/android/gms/internal/ads/yk;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/yk;->j6(Lcom/google/android/gms/internal/ads/mk;)V

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

.method public final j6()Landroid/os/Bundle;
    .registers 7

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/mk;->Hw:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v0, "seq_num"

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/mk;->v5:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "slotid"

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/mk;->Zo:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ismediation"

    iget-boolean v3, p0, Lcom/google/android/gms/internal/ads/mk;->u7:Z

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "treq"

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/mk;->we:J

    invoke-virtual {v2, v0, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v0, "tresponse"

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/mk;->J0:J

    invoke-virtual {v2, v0, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v0, "timp"

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/mk;->gn:J

    invoke-virtual {v2, v0, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v0, "tload"

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/mk;->tp:J

    invoke-virtual {v2, v0, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v0, "pcc"

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/mk;->EQ:J

    invoke-virtual {v2, v0, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v0, "tfetch"

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/mk;->VH:J

    invoke-virtual {v2, v0, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/mk;->FH:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/nk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/nk;->j6()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    const-string v0, "tclick"

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v2
.end method

.method public final j6(J)V
    .registers 10

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/mk;->Hw:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/mk;->J0:J

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/mk;->J0:J

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/mk;->DW:Lcom/google/android/gms/internal/ads/yk;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/yk;->j6(Lcom/google/android/gms/internal/ads/mk;)V

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

.method public final j6(Lcom/google/android/gms/internal/ads/zzwb;)V
    .registers 6

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/mk;->Hw:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/mk;->j6:Lcom/google/android/gms/common/util/e;

    invoke-interface {v0}, Lcom/google/android/gms/common/util/e;->DW()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/mk;->we:J

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/mk;->DW:Lcom/google/android/gms/internal/ads/yk;

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/mk;->we:J

    invoke-virtual {v0, p1, v2, v3}, Lcom/google/android/gms/internal/ads/yk;->j6(Lcom/google/android/gms/internal/ads/zzwb;J)V

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
    .registers 8

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/mk;->Hw:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/mk;->J0:J

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/mk;->j6:Lcom/google/android/gms/common/util/e;

    invoke-interface {v0}, Lcom/google/android/gms/common/util/e;->DW()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/mk;->tp:J

    if-nez p1, :cond_0

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/mk;->tp:J

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/mk;->gn:J

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/mk;->DW:Lcom/google/android/gms/internal/ads/yk;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/yk;->j6(Lcom/google/android/gms/internal/ads/mk;)V

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

.method public final v5()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/mk;->v5:Ljava/lang/String;

    return-object v0
.end method
