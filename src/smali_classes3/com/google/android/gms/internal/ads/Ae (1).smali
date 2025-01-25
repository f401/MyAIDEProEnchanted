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
            "Ljava/util/Map<",
            "Lcom/google/android/gms/internal/ads/Hm<",
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
            "Ljava/util/List<",
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
    .registers 14

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p12, Ljava/lang/Object;

    invoke-direct {p12}, Ljava/lang/Object;-><init>()V

    iput-object p12, p0, Lcom/google/android/gms/internal/ads/Ae;->u7:Ljava/lang/Object;

    const/4 p12, 0x0

    iput-boolean p12, p0, Lcom/google/android/gms/internal/ads/Ae;->tp:Z

    new-instance p12, Ljava/util/HashMap;

    invoke-direct {p12}, Ljava/util/HashMap;-><init>()V

    iput-object p12, p0, Lcom/google/android/gms/internal/ads/Ae;->EQ:Ljava/util/Map;

    new-instance p12, Ljava/util/ArrayList;

    invoke-direct {p12}, Ljava/util/ArrayList;-><init>()V

    iput-object p12, p0, Lcom/google/android/gms/internal/ads/Ae;->J8:Ljava/util/List;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Ae;->FH:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/Ae;->j6:Lcom/google/android/gms/internal/ads/zzasi;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/Ae;->DW:Lcom/google/android/gms/internal/ads/Ge;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/Ae;->Hw:Lcom/google/android/gms/internal/ads/qe;

    iput-boolean p5, p0, Lcom/google/android/gms/internal/ads/Ae;->v5:Z

    iput-boolean p6, p0, Lcom/google/android/gms/internal/ads/Ae;->we:Z

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/Ae;->J0:Ljava/lang/String;

    iput-wide p8, p0, Lcom/google/android/gms/internal/ads/Ae;->Zo:J

    iput-wide p10, p0, Lcom/google/android/gms/internal/ads/Ae;->VH:J

    const/4 p1, 0x2

    iput p1, p0, Lcom/google/android/gms/internal/ads/Ae;->gn:I

    iput-boolean p13, p0, Lcom/google/android/gms/internal/ads/Ae;->Ws:Z

    return-void
.end method

.method private final DW(Ljava/util/List;)Lcom/google/android/gms/internal/ads/we;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/Hm<",
            "Lcom/google/android/gms/internal/ads/we;",
            ">;>;)",
            "Lcom/google/android/gms/internal/ads/we;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ae;->u7:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/Ae;->tp:Z

    if-eqz v1, :cond_f

    new-instance p1, Lcom/google/android/gms/internal/ads/we;

    const/4 v1, -0x1

    invoke-direct {p1, v1}, Lcom/google/android/gms/internal/ads/we;-><init>(I)V

    monitor-exit v0

    return-object p1

    :cond_f
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_49

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_14
    :goto_14
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/Hm;

    :try_start_20
    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/we;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Ae;->J8:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v1, :cond_14

    iget v2, v1, Lcom/google/android/gms/internal/ads/we;->j6:I

    if-nez v2, :cond_14

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/Ae;->j6(Lcom/google/android/gms/internal/ads/Hm;)V
    :try_end_34
    .catch Ljava/lang/InterruptedException; {:try_start_20 .. :try_end_34} :catch_37
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_20 .. :try_end_34} :catch_35

    return-object v1

    :catch_35
    move-exception v0

    goto :goto_38

    :catch_37
    move-exception v0

    :goto_38
    const-string v1, "Exception while processing an adapter; continuing with other adapters"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/jm;->FH(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_14

    :cond_3e
    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/Ae;->j6(Lcom/google/android/gms/internal/ads/Hm;)V

    new-instance p1, Lcom/google/android/gms/internal/ads/we;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/we;-><init>(I)V

    return-object p1

    :catchall_49
    move-exception p1

    :try_start_4a
    monitor-exit v0
    :try_end_4b
    .catchall {:try_start_4a .. :try_end_4b} :catchall_49

    goto :goto_4d

    :goto_4c
    throw p1

    :goto_4d
    goto :goto_4c
.end method

.method static synthetic DW(Lcom/google/android/gms/internal/ads/Ae;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/google/android/gms/internal/ads/Ae;->tp:Z

    return p0
.end method

.method static synthetic FH(Lcom/google/android/gms/internal/ads/Ae;)J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/Ae;->Zo:J

    return-wide v0
.end method

.method private final FH(Ljava/util/List;)Lcom/google/android/gms/internal/ads/we;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/Hm<",
            "Lcom/google/android/gms/internal/ads/we;",
            ">;>;)",
            "Lcom/google/android/gms/internal/ads/we;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ae;->u7:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/Ae;->tp:Z

    const/4 v2, -0x1

    if-eqz v1, :cond_f

    new-instance p1, Lcom/google/android/gms/internal/ads/we;

    invoke-direct {p1, v2}, Lcom/google/android/gms/internal/ads/we;-><init>(I)V

    monitor-exit v0

    return-object p1

    :cond_f
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_a5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ae;->Hw:Lcom/google/android/gms/internal/ads/qe;

    iget-wide v0, v0, Lcom/google/android/gms/internal/ads/qe;->J8:J

    const-wide/16 v3, -0x1

    cmp-long v5, v0, v3

    if-eqz v5, :cond_1b

    goto :goto_1d

    :cond_1b
    const-wide/16 v0, 0x2710

    :goto_1d
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v3, 0x0

    move-object v4, v3

    :goto_23
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_98

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/ads/Hm;

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->we()Lcom/google/android/gms/common/util/e;

    move-result-object v6

    invoke-interface {v6}, Lcom/google/android/gms/common/util/e;->j6()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v10, v0, v8

    if-nez v10, :cond_4a

    :try_start_3d
    invoke-interface {v5}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v10

    if-eqz v10, :cond_4a

    invoke-interface {v5}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v10

    :goto_47
    check-cast v10, Lcom/google/android/gms/internal/ads/we;

    goto :goto_51

    :cond_4a
    sget-object v10, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v5, v0, v1, v10}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v10

    goto :goto_47

    :goto_51
    iget-object v11, p0, Lcom/google/android/gms/internal/ads/Ae;->J8:Ljava/util/List;

    invoke-interface {v11, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v10, :cond_7b

    iget v11, v10, Lcom/google/android/gms/internal/ads/we;->j6:I

    if-nez v11, :cond_7b

    iget-object v11, v10, Lcom/google/android/gms/internal/ads/we;->Zo:Lcom/google/android/gms/internal/ads/Pe;

    if-eqz v11, :cond_7b

    invoke-interface {v11}, Lcom/google/android/gms/internal/ads/Pe;->Eq()I

    move-result v12

    if-le v12, v2, :cond_7b

    invoke-interface {v11}, Lcom/google/android/gms/internal/ads/Pe;->Eq()I

    move-result v2
    :try_end_6a
    .catch Ljava/lang/InterruptedException; {:try_start_3d .. :try_end_6a} :catch_75
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_3d .. :try_end_6a} :catch_73
    .catch Landroid/os/RemoteException; {:try_start_3d .. :try_end_6a} :catch_71
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_3d .. :try_end_6a} :catch_6f
    .catchall {:try_start_3d .. :try_end_6a} :catchall_6d

    move-object v3, v5

    move-object v4, v10

    goto :goto_7b

    :catchall_6d
    move-exception p1

    goto :goto_8a

    :catch_6f
    move-exception v5

    goto :goto_76

    :catch_71
    move-exception v5

    goto :goto_76

    :catch_73
    move-exception v5

    goto :goto_76

    :catch_75
    move-exception v5

    :goto_76
    :try_start_76
    const-string v10, "Exception while processing an adapter; continuing with other adapters"

    invoke-static {v10, v5}, Lcom/google/android/gms/internal/ads/jm;->FH(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7b
    .catchall {:try_start_76 .. :try_end_7b} :catchall_6d

    :cond_7b
    :goto_7b
    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->we()Lcom/google/android/gms/common/util/e;

    move-result-object v5

    invoke-interface {v5}, Lcom/google/android/gms/common/util/e;->j6()J

    move-result-wide v10

    sub-long/2addr v10, v6

    sub-long/2addr v0, v10

    invoke-static {v0, v1, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    goto :goto_23

    :goto_8a
    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->we()Lcom/google/android/gms/common/util/e;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/common/util/e;->j6()J

    move-result-wide v2

    sub-long/2addr v2, v6

    sub-long/2addr v0, v2

    invoke-static {v0, v1, v8, v9}, Ljava/lang/Math;->max(JJ)J

    throw p1

    :cond_98
    invoke-direct {p0, v3}, Lcom/google/android/gms/internal/ads/Ae;->j6(Lcom/google/android/gms/internal/ads/Hm;)V

    if-nez v4, :cond_a4

    new-instance p1, Lcom/google/android/gms/internal/ads/we;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/we;-><init>(I)V

    return-object p1

    :cond_a4
    return-object v4

    :catchall_a5
    move-exception p1

    :try_start_a6
    monitor-exit v0
    :try_end_a7
    .catchall {:try_start_a6 .. :try_end_a7} :catchall_a5

    goto :goto_a9

    :goto_a8
    throw p1

    :goto_a9
    goto :goto_a8
.end method

.method static synthetic Hw(Lcom/google/android/gms/internal/ads/Ae;)J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/Ae;->VH:J

    return-wide v0
.end method

.method static synthetic j6(Lcom/google/android/gms/internal/ads/Ae;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/Ae;->u7:Ljava/lang/Object;

    return-object p0
.end method

.method private final j6(Lcom/google/android/gms/internal/ads/Hm;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/Hm<",
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
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/Ae;->EQ:Ljava/util/Map;

    return-object p0
.end method


# virtual methods
.method public final cancel()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ae;->u7:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_4
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/Ae;->tp:Z

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Ae;->EQ:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_20

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/te;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/te;->j6()V

    goto :goto_10

    :cond_20
    monitor-exit v0

    return-void

    :catchall_22
    move-exception v1

    monitor-exit v0
    :try_end_24
    .catchall {:try_start_4 .. :try_end_24} :catchall_22

    goto :goto_26

    :goto_25
    throw v1

    :goto_26
    goto :goto_25
.end method

.method public final j6(Ljava/util/List;)Lcom/google/android/gms/internal/ads/we;
    .registers 29
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/pe;",
            ">;)",
            "Lcom/google/android/gms/internal/ads/we;"
        }
    .end annotation

    move-object/from16 v0, p0

    const-string v1, "Starting mediation."

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/Ae;->j6:Lcom/google/android/gms/internal/ads/zzasi;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzasi;->Hw:Lcom/google/android/gms/internal/ads/zzwf;

    const/4 v3, 0x2

    new-array v4, v3, [I

    iget-object v5, v2, Lcom/google/android/gms/internal/ads/zzwf;->VH:[Lcom/google/android/gms/internal/ads/zzwf;

    if-eqz v5, :cond_3c

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->er()Lcom/google/android/gms/internal/ads/ye;

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/Ae;->J0:Ljava/lang/String;

    invoke-static {v5, v4}, Lcom/google/android/gms/internal/ads/ye;->j6(Ljava/lang/String;[I)Z

    move-result v5

    if-eqz v5, :cond_3c

    const/4 v5, 0x0

    aget v6, v4, v5

    const/4 v7, 0x1

    aget v4, v4, v7

    iget-object v7, v2, Lcom/google/android/gms/internal/ads/zzwf;->VH:[Lcom/google/android/gms/internal/ads/zzwf;

    array-length v8, v7

    :goto_2b
    if-ge v5, v8, :cond_3c

    aget-object v9, v7, v5

    iget v10, v9, Lcom/google/android/gms/internal/ads/zzwf;->v5:I

    if-ne v6, v10, :cond_39

    iget v10, v9, Lcom/google/android/gms/internal/ads/zzwf;->DW:I

    if-ne v4, v10, :cond_39

    move-object v2, v9

    goto :goto_3c

    :cond_39
    add-int/lit8 v5, v5, 0x1

    goto :goto_2b

    :cond_3c
    :goto_3c
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_40
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_cd

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/ads/pe;

    iget-object v6, v5, Lcom/google/android/gms/internal/ads/pe;->DW:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    const-string v8, "Trying mediation network: "

    if-eqz v7, :cond_5f

    invoke-virtual {v8, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_64

    :cond_5f
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v8}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_64
    invoke-static {v6}, Lcom/google/android/gms/internal/ads/jm;->FH(Ljava/lang/String;)V

    iget-object v6, v5, Lcom/google/android/gms/internal/ads/pe;->FH:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_6d
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_40

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object v11, v7

    check-cast v11, Ljava/lang/String;

    iget-object v10, v0, Lcom/google/android/gms/internal/ads/Ae;->FH:Landroid/content/Context;

    iget-object v12, v0, Lcom/google/android/gms/internal/ads/Ae;->DW:Lcom/google/android/gms/internal/ads/Ge;

    iget-object v13, v0, Lcom/google/android/gms/internal/ads/Ae;->Hw:Lcom/google/android/gms/internal/ads/qe;

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/Ae;->j6:Lcom/google/android/gms/internal/ads/zzasi;

    new-instance v8, Lcom/google/android/gms/internal/ads/te;

    iget-object v15, v7, Lcom/google/android/gms/internal/ads/zzasi;->FH:Lcom/google/android/gms/internal/ads/zzwb;

    iget-object v14, v7, Lcom/google/android/gms/internal/ads/zzasi;->EQ:Lcom/google/android/gms/internal/ads/zzbbi;

    iget-boolean v9, v0, Lcom/google/android/gms/internal/ads/Ae;->v5:Z

    iget-boolean v3, v0, Lcom/google/android/gms/internal/ads/Ae;->we:Z

    move-object/from16 p1, v4

    iget-object v4, v7, Lcom/google/android/gms/internal/ads/zzasi;->er:Lcom/google/android/gms/internal/ads/zzacp;

    move-object/from16 v25, v6

    iget-object v6, v7, Lcom/google/android/gms/internal/ads/zzasi;->J8:Ljava/util/List;

    move-object/from16 v26, v1

    iget-object v1, v7, Lcom/google/android/gms/internal/ads/zzasi;->yS:Ljava/util/List;

    iget-object v7, v7, Lcom/google/android/gms/internal/ads/zzasi;->sy:Ljava/util/List;

    move-object/from16 v23, v7

    iget-boolean v7, v0, Lcom/google/android/gms/internal/ads/Ae;->Ws:Z

    move/from16 v18, v9

    move-object v9, v8

    move-object/from16 v17, v14

    move-object v14, v5

    move-object/from16 v16, v2

    move/from16 v19, v3

    move-object/from16 v20, v4

    move-object/from16 v21, v6

    move-object/from16 v22, v1

    move/from16 v24, v7

    invoke-direct/range {v9 .. v24}, Lcom/google/android/gms/internal/ads/te;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ads/Ge;Lcom/google/android/gms/internal/ads/qe;Lcom/google/android/gms/internal/ads/pe;Lcom/google/android/gms/internal/ads/zzwb;Lcom/google/android/gms/internal/ads/zzwf;Lcom/google/android/gms/internal/ads/zzbbi;ZZLcom/google/android/gms/internal/ads/zzacp;Ljava/util/List;Ljava/util/List;Ljava/util/List;Z)V

    new-instance v1, Lcom/google/android/gms/internal/ads/Be;

    invoke-direct {v1, v0, v8}, Lcom/google/android/gms/internal/ads/Be;-><init>(Lcom/google/android/gms/internal/ads/Ae;Lcom/google/android/gms/internal/ads/te;)V

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/Lk;->j6(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/internal/ads/Hm;

    move-result-object v1

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/Ae;->EQ:Ljava/util/Map;

    invoke-interface {v3, v1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v3, v26

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v4, p1

    move-object v1, v3

    move-object/from16 v6, v25

    const/4 v3, 0x2

    goto :goto_6d

    :cond_cd
    move-object v3, v1

    iget v1, v0, Lcom/google/android/gms/internal/ads/Ae;->gn:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_d8

    invoke-direct {v0, v3}, Lcom/google/android/gms/internal/ads/Ae;->DW(Ljava/util/List;)Lcom/google/android/gms/internal/ads/we;

    move-result-object v1

    return-object v1

    :cond_d8
    invoke-direct {v0, v3}, Lcom/google/android/gms/internal/ads/Ae;->FH(Ljava/util/List;)Lcom/google/android/gms/internal/ads/we;

    move-result-object v1

    return-object v1
.end method

.method public final j6()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/we;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ae;->J8:Ljava/util/List;

    return-object v0
.end method
