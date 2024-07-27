.class public final Lcom/google/android/gms/internal/ads/Ae;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/oe;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zh;
.end annotation


# instance fields
.field private final DW:Lcom/google/android/gms/internal/ads/Ge;

.field private final EQ:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/internal/ads/Hm",
            "<",
            "Lcom/google/android/gms/internal/ads/we;",
            ">;",
            "Lcom/google/android/gms/internal/ads/te;",
            ">;"
        }
    .end annotation
.end field

.field private final FH:Landroid/content/Context;

.field private final Hw:Lcom/google/android/gms/internal/ads/qe;

.field private final J0:Ljava/lang/String;

.field private J8:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/ads/we;",
            ">;"
        }
    .end annotation
.end field

.field private final VH:J

.field private final Ws:Z

.field private final Zo:J

.field private final gn:I

.field private final j6:Lcom/google/android/gms/internal/ads/zzasi;

.field private tp:Z

.field private final u7:Ljava/lang/Object;

.field private final v5:Z

.field private final we:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzasi;Lcom/google/android/gms/internal/ads/Ge;Lcom/google/android/gms/internal/ads/qe;ZZLjava/lang/String;JJIZ)V
    .registers 16

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Ae;->u7:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/Ae;->tp:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Ae;->EQ:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Ae;->J8:Ljava/util/List;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Ae;->FH:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/Ae;->j6:Lcom/google/android/gms/internal/ads/zzasi;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/Ae;->DW:Lcom/google/android/gms/internal/ads/Ge;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/Ae;->Hw:Lcom/google/android/gms/internal/ads/qe;

    iput-boolean p5, p0, Lcom/google/android/gms/internal/ads/Ae;->v5:Z

    iput-boolean p6, p0, Lcom/google/android/gms/internal/ads/Ae;->we:Z

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/Ae;->J0:Ljava/lang/String;

    iput-wide p8, p0, Lcom/google/android/gms/internal/ads/Ae;->Zo:J

    iput-wide p10, p0, Lcom/google/android/gms/internal/ads/Ae;->VH:J

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/ads/Ae;->gn:I

    iput-boolean p13, p0, Lcom/google/android/gms/internal/ads/Ae;->Ws:Z

    return-void
.end method

.method private final DW(Ljava/util/List;)Lcom/google/android/gms/internal/ads/we;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/ads/Hm",
            "<",
            "Lcom/google/android/gms/internal/ads/we;",
            ">;>;)",
            "Lcom/google/android/gms/internal/ads/we;"
        }
    .end annotation

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Ae;->u7:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/Ae;->tp:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/ads/we;

    const/4 v2, -0x1

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ads/we;-><init>(I)V

    monitor-exit v1

    :goto_0
    return-object v0

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/internal/ads/Hm;

    :try_start_1
    invoke-interface {v1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/we;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/Ae;->J8:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v0, :cond_1

    iget v3, v0, Lcom/google/android/gms/internal/ads/we;->j6:I

    if-nez v3, :cond_1

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/Ae;->j6(Lcom/google/android/gms/internal/ads/Hm;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_2
    const-string v1, "Exception while processing an adapter; continuing with other adapters"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/jm;->FH(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/Ae;->j6(Lcom/google/android/gms/internal/ads/Hm;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/we;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/we;-><init>(I)V

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catch_1
    move-exception v0

    goto :goto_2
.end method

.method static synthetic DW(Lcom/google/android/gms/internal/ads/Ae;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/Ae;->tp:Z

    return v0
.end method

.method static synthetic FH(Lcom/google/android/gms/internal/ads/Ae;)J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/Ae;->Zo:J

    return-wide v0
.end method

.method private final FH(Ljava/util/List;)Lcom/google/android/gms/internal/ads/we;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/ads/Hm",
            "<",
            "Lcom/google/android/gms/internal/ads/we;",
            ">;>;)",
            "Lcom/google/android/gms/internal/ads/we;"
        }
    .end annotation

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Ae;->u7:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/Ae;->tp:Z

    if-eqz v0, :cond_1

    new-instance v2, Lcom/google/android/gms/internal/ads/we;

    const/4 v0, -0x1

    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/ads/we;-><init>(I)V

    monitor-exit v1

    :cond_0
    :goto_0
    return-object v2

    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ae;->Hw:Lcom/google/android/gms/internal/ads/qe;

    iget-wide v0, v0, Lcom/google/android/gms/internal/ads/qe;->J8:J

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_2

    :goto_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v6, -0x1

    move-wide v4, v0

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/Hm;

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->we()Lcom/google/android/gms/common/util/e;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/e;->j6()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v1, v4, v10

    if-nez v1, :cond_3

    :try_start_1
    invoke-interface {v0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/we;

    :goto_3
    iget-object v10, p0, Lcom/google/android/gms/internal/ads/Ae;->J8:Ljava/util/List;

    invoke-interface {v10, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v1, :cond_5

    iget v10, v1, Lcom/google/android/gms/internal/ads/we;->j6:I

    if-nez v10, :cond_5

    iget-object v10, v1, Lcom/google/android/gms/internal/ads/we;->Zo:Lcom/google/android/gms/internal/ads/Pe;

    if-eqz v10, :cond_5

    invoke-interface {v10}, Lcom/google/android/gms/internal/ads/Pe;->Eq()I

    move-result v11

    if-le v11, v6, :cond_5

    invoke-interface {v10}, Lcom/google/android/gms/internal/ads/Pe;->Eq()I
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v6

    :goto_4
    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->we()Lcom/google/android/gms/common/util/e;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/common/util/e;->j6()J

    move-result-wide v2

    sub-long/2addr v2, v8

    sub-long v2, v4, v2

    const-wide/16 v4, 0x0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    move-object v2, v1

    move-object v3, v0

    goto :goto_2

    :cond_2
    const-wide/16 v0, 0x2710

    goto :goto_1

    :cond_3
    :try_start_2
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v4, v5, v1}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/we;
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    :catch_0
    move-exception v0

    :goto_5
    :try_start_3
    const-string v1, "Exception while processing an adapter; continuing with other adapters"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/jm;->FH(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->we()Lcom/google/android/gms/common/util/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/e;->j6()J

    move-result-wide v0

    sub-long/2addr v0, v8

    sub-long v0, v4, v0

    const-wide/16 v4, 0x0

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    move-wide v4, v0

    goto :goto_2

    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->we()Lcom/google/android/gms/common/util/e;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/e;->j6()J

    move-result-wide v2

    sub-long/2addr v2, v8

    sub-long v2, v4, v2

    const-wide/16 v4, 0x0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    throw v0

    :cond_4
    invoke-direct {p0, v3}, Lcom/google/android/gms/internal/ads/Ae;->j6(Lcom/google/android/gms/internal/ads/Hm;)V

    if-nez v2, :cond_0

    new-instance v2, Lcom/google/android/gms/internal/ads/we;

    const/4 v0, 0x1

    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/ads/we;-><init>(I)V

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    :catch_1
    move-exception v0

    goto :goto_5

    :catch_2
    move-exception v0

    goto :goto_5

    :catch_3
    move-exception v0

    goto :goto_5

    :cond_5
    move-object v1, v2

    move-object v0, v3

    goto :goto_4
.end method

.method static synthetic Hw(Lcom/google/android/gms/internal/ads/Ae;)J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/Ae;->VH:J

    return-wide v0
.end method

.method static synthetic j6(Lcom/google/android/gms/internal/ads/Ae;)Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ae;->u7:Ljava/lang/Object;

    return-object v0
.end method

.method private final j6(Lcom/google/android/gms/internal/ads/Hm;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/Hm",
            "<",
            "Lcom/google/android/gms/internal/ads/we;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/ads/Nk;->j6:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/ads/Ce;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/Ce;-><init>(Lcom/google/android/gms/internal/ads/Ae;Lcom/google/android/gms/internal/ads/Hm;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic v5(Lcom/google/android/gms/internal/ads/Ae;)Ljava/util/Map;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ae;->EQ:Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method public final cancel()V
    .registers 4

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Ae;->u7:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/Ae;->tp:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ae;->EQ:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/te;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/te;->j6()V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public final j6(Ljava/util/List;)Lcom/google/android/gms/internal/ads/we;
    .registers 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/ads/pe;",
            ">;)",
            "Lcom/google/android/gms/internal/ads/we;"
        }
    .end annotation

    const-string v2, "Starting mediation."

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;)V

    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/Ae;->j6:Lcom/google/android/gms/internal/ads/zzasi;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzasi;->Hw:Lcom/google/android/gms/internal/ads/zzwf;

    const/4 v3, 0x2

    new-array v4, v3, [I

    iget-object v3, v2, Lcom/google/android/gms/internal/ads/zzwf;->VH:[Lcom/google/android/gms/internal/ads/zzwf;

    if-eqz v3, :cond_5

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->er()Lcom/google/android/gms/internal/ads/ye;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/Ae;->J0:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/ads/ye;->j6(Ljava/lang/String;[I)Z

    move-result v3

    if-eqz v3, :cond_5

    const/4 v3, 0x0

    const/4 v5, 0x0

    aget v5, v4, v5

    const/4 v6, 0x1

    aget v4, v4, v6

    iget-object v6, v2, Lcom/google/android/gms/internal/ads/zzwf;->VH:[Lcom/google/android/gms/internal/ads/zzwf;

    array-length v7, v6

    :goto_0
    if-ge v3, v7, :cond_5

    aget-object v9, v6, v3

    iget v8, v9, Lcom/google/android/gms/internal/ads/zzwf;->v5:I

    if-ne v5, v8, :cond_1

    iget v8, v9, Lcom/google/android/gms/internal/ads/zzwf;->DW:I

    if-ne v4, v8, :cond_1

    :goto_1
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :cond_0
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/ads/pe;

    iget-object v2, v7, Lcom/google/android/gms/internal/ads/pe;->DW:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "Trying mediation network: "

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_2
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/jm;->FH(Ljava/lang/String;)V

    iget-object v2, v7, Lcom/google/android/gms/internal/ads/pe;->FH:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :goto_3
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/Ae;->FH:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/Ae;->DW:Lcom/google/android/gms/internal/ads/Ge;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/Ae;->Hw:Lcom/google/android/gms/internal/ads/qe;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/Ae;->j6:Lcom/google/android/gms/internal/ads/zzasi;

    move-object/from16 v16, v0

    new-instance v2, Lcom/google/android/gms/internal/ads/te;

    move-object/from16 v0, v16

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzasi;->FH:Lcom/google/android/gms/internal/ads/zzwb;

    move-object/from16 v0, v16

    iget-object v10, v0, Lcom/google/android/gms/internal/ads/zzasi;->EQ:Lcom/google/android/gms/internal/ads/zzbbi;

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/google/android/gms/internal/ads/Ae;->v5:Z

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/google/android/gms/internal/ads/Ae;->we:Z

    move-object/from16 v0, v16

    iget-object v13, v0, Lcom/google/android/gms/internal/ads/zzasi;->er:Lcom/google/android/gms/internal/ads/zzacp;

    move-object/from16 v0, v16

    iget-object v14, v0, Lcom/google/android/gms/internal/ads/zzasi;->J8:Ljava/util/List;

    move-object/from16 v0, v16

    iget-object v15, v0, Lcom/google/android/gms/internal/ads/zzasi;->yS:Ljava/util/List;

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzasi;->sy:Ljava/util/List;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/Ae;->Ws:Z

    move/from16 v17, v0

    invoke-direct/range {v2 .. v17}, Lcom/google/android/gms/internal/ads/te;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ads/Ge;Lcom/google/android/gms/internal/ads/qe;Lcom/google/android/gms/internal/ads/pe;Lcom/google/android/gms/internal/ads/zzwb;Lcom/google/android/gms/internal/ads/zzwf;Lcom/google/android/gms/internal/ads/zzbbi;ZZLcom/google/android/gms/internal/ads/zzacp;Ljava/util/List;Ljava/util/List;Ljava/util/List;Z)V

    new-instance v3, Lcom/google/android/gms/internal/ads/Be;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v2}, Lcom/google/android/gms/internal/ads/Be;-><init>(Lcom/google/android/gms/internal/ads/Ae;Lcom/google/android/gms/internal/ads/te;)V

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/Lk;->j6(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/internal/ads/Hm;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/Ae;->EQ:Ljava/util/Map;

    invoke-interface {v4, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_2
    new-instance v2, Ljava/lang/String;

    const-string v3, "Trying mediation network: "

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/gms/internal/ads/Ae;->gn:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_4

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/Ae;->DW(Ljava/util/List;)Lcom/google/android/gms/internal/ads/we;

    move-result-object v2

    :goto_4
    return-object v2

    :cond_4
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/Ae;->FH(Ljava/util/List;)Lcom/google/android/gms/internal/ads/we;

    move-result-object v2

    goto :goto_4

    :cond_5
    move-object v9, v2

    goto/16 :goto_1
.end method

.method public final j6()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/ads/we;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ae;->J8:Ljava/util/List;

    return-object v0
.end method
