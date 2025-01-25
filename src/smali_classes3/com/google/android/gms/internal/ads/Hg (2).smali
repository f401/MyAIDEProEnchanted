.class public final Lcom/google/android/gms/internal/ads/Hg;
.super Lcom/google/android/gms/internal/ads/Ak;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zh;
.end annotation


# instance fields
.field private final Hw:Lcom/google/android/gms/internal/ads/Ag;

.field private final VH:Lcom/google/android/gms/internal/ads/Kg;

.field private final Zo:Lcom/google/android/gms/internal/ads/lk;

.field private final gn:Ljava/lang/Object;

.field private u7:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "Lcom/google/android/gms/internal/ads/kk;",
            ">;"
        }
    .end annotation
.end field

.field private final v5:Lcom/google/android/gms/internal/ads/zzasm;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/C;Lcom/google/android/gms/internal/ads/lk;Lcom/google/android/gms/internal/ads/ix;Lcom/google/android/gms/internal/ads/Ag;Lcom/google/android/gms/internal/ads/D;)V
    .registers 15

    new-instance v7, Lcom/google/android/gms/internal/ads/Kg;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzazs;

    invoke-direct {v3, p1}, Lcom/google/android/gms/internal/ads/zzazs;-><init>(Landroid/content/Context;)V

    move-object v0, v7

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    move-object v5, p3

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/Kg;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/C;Lcom/google/android/gms/internal/ads/zzazs;Lcom/google/android/gms/internal/ads/ix;Lcom/google/android/gms/internal/ads/lk;Lcom/google/android/gms/internal/ads/D;)V

    invoke-direct {p0, p3, p5, v7}, Lcom/google/android/gms/internal/ads/Hg;-><init>(Lcom/google/android/gms/internal/ads/lk;Lcom/google/android/gms/internal/ads/Ag;Lcom/google/android/gms/internal/ads/Kg;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/ads/lk;Lcom/google/android/gms/internal/ads/Ag;Lcom/google/android/gms/internal/ads/Kg;)V
    .registers 5

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/Ak;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Hg;->gn:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Hg;->Zo:Lcom/google/android/gms/internal/ads/lk;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/lk;->DW:Lcom/google/android/gms/internal/ads/zzasm;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Hg;->v5:Lcom/google/android/gms/internal/ads/zzasm;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/Hg;->Hw:Lcom/google/android/gms/internal/ads/Ag;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/Hg;->VH:Lcom/google/android/gms/internal/ads/Kg;

    return-void
.end method

.method static synthetic j6(Lcom/google/android/gms/internal/ads/Hg;)Lcom/google/android/gms/internal/ads/Ag;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/Hg;->Hw:Lcom/google/android/gms/internal/ads/Ag;

    return-object p0
.end method


# virtual methods
.method public final DW()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Hg;->gn:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Hg;->u7:Ljava/util/concurrent/Future;

    if-eqz v1, :cond_b

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :cond_b
    monitor-exit v0

    return-void

    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public final Hw()V
    .registers 50

    move-object/from16 v1, p0

    const/4 v2, 0x0

    :try_start_3
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/Hg;->gn:Ljava/lang/Object;

    monitor-enter v3
    :try_end_6
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_3 .. :try_end_6} :catch_29
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_3 .. :try_end_6} :catch_25
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_6} :catch_23
    .catch Ljava/util/concurrent/CancellationException; {:try_start_3 .. :try_end_6} :catch_21

    :try_start_6
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/Hg;->VH:Lcom/google/android/gms/internal/ads/Kg;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Lk;->j6(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/internal/ads/Hm;

    move-result-object v0

    iput-object v0, v1, Lcom/google/android/gms/internal/ads/Hg;->u7:Ljava/util/concurrent/Future;

    monitor-exit v3
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_1e

    :try_start_f
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/32 v4, 0xea60

    invoke-interface {v0, v4, v5, v3}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/kk;
    :try_end_1a
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_f .. :try_end_1a} :catch_29
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_f .. :try_end_1a} :catch_25
    .catch Ljava/lang/InterruptedException; {:try_start_f .. :try_end_1a} :catch_23
    .catch Ljava/util/concurrent/CancellationException; {:try_start_f .. :try_end_1a} :catch_21

    const/4 v2, -0x2

    move-object v2, v0

    const/4 v7, -0x2

    goto :goto_37

    :catchall_1e
    move-exception v0

    :try_start_1f
    monitor-exit v3
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_1e

    :try_start_20
    throw v0
    :try_end_21
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_20 .. :try_end_21} :catch_29
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_20 .. :try_end_21} :catch_25
    .catch Ljava/lang/InterruptedException; {:try_start_20 .. :try_end_21} :catch_23
    .catch Ljava/util/concurrent/CancellationException; {:try_start_20 .. :try_end_21} :catch_21

    :catch_21
    move-exception v0

    goto :goto_26

    :catch_23
    move-exception v0

    goto :goto_26

    :catch_25
    move-exception v0

    :goto_26
    const/4 v0, 0x0

    const/4 v7, 0x0

    goto :goto_37

    :catch_29
    move-exception v0

    const-string v0, "Timed out waiting for native ad."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/Hg;->u7:Ljava/util/concurrent/Future;

    const/4 v3, 0x1

    invoke-interface {v0, v3}, Ljava/util/concurrent/Future;->cancel(Z)Z

    const/4 v0, 0x2

    const/4 v7, 0x2

    :goto_37
    if-eqz v2, :cond_3b

    goto/16 :goto_b6

    :cond_3b
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/Hg;->Zo:Lcom/google/android/gms/internal/ads/lk;

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/lk;->j6:Lcom/google/android/gms/internal/ads/zzasi;

    iget-object v4, v2, Lcom/google/android/gms/internal/ads/zzasi;->FH:Lcom/google/android/gms/internal/ads/zzwb;

    iget-object v15, v1, Lcom/google/android/gms/internal/ads/Hg;->v5:Lcom/google/android/gms/internal/ads/zzasm;

    iget v10, v15, Lcom/google/android/gms/internal/ads/zzasm;->J0:I

    iget-wide v11, v15, Lcom/google/android/gms/internal/ads/zzasm;->we:J

    iget-object v13, v2, Lcom/google/android/gms/internal/ads/zzasi;->u7:Ljava/lang/String;

    iget-wide v2, v15, Lcom/google/android/gms/internal/ads/zzasm;->tp:J

    move-wide/from16 v20, v2

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/lk;->Hw:Lcom/google/android/gms/internal/ads/zzwf;

    move-object/from16 v22, v2

    iget-wide v2, v15, Lcom/google/android/gms/internal/ads/zzasm;->gn:J

    move-wide/from16 v23, v2

    iget-wide v2, v0, Lcom/google/android/gms/internal/ads/lk;->Zo:J

    move-wide/from16 v25, v2

    iget-wide v2, v15, Lcom/google/android/gms/internal/ads/zzasm;->Ws:J

    move-wide/from16 v27, v2

    iget-object v2, v15, Lcom/google/android/gms/internal/ads/zzasm;->QX:Ljava/lang/String;

    move-object/from16 v29, v2

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/lk;->gn:Lorg/json/JSONObject;

    move-object/from16 v30, v2

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/lk;->DW:Lcom/google/android/gms/internal/ads/zzasm;

    new-instance v48, Lcom/google/android/gms/internal/ads/kk;

    move-object/from16 v3, v48

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    move-object v5, v15

    move-object/from16 v15, v16

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    iget-boolean v6, v2, Lcom/google/android/gms/internal/ads/zzasm;->SI:Z

    move/from16 v35, v6

    iget-object v6, v2, Lcom/google/android/gms/internal/ads/zzasm;->KD:Lcom/google/android/gms/internal/ads/zzaso;

    move-object/from16 v36, v6

    const/16 v37, 0x0

    const/16 v38, 0x0

    iget-object v5, v5, Lcom/google/android/gms/internal/ads/zzasm;->ef:Ljava/lang/String;

    move-object/from16 v39, v5

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/lk;->u7:Lcom/google/android/gms/internal/ads/YF;

    move-object/from16 v40, v0

    iget-boolean v0, v2, Lcom/google/android/gms/internal/ads/zzasm;->Mz:Z

    move/from16 v41, v0

    const/16 v42, 0x0

    iget-boolean v0, v2, Lcom/google/android/gms/internal/ads/zzasm;->ca:Z

    move/from16 v43, v0

    const/16 v44, 0x0

    iget-boolean v0, v2, Lcom/google/android/gms/internal/ads/zzasm;->Qq:Z

    move/from16 v45, v0

    iget-object v0, v2, Lcom/google/android/gms/internal/ads/zzasm;->sy:Ljava/lang/String;

    move-object/from16 v46, v0

    iget-boolean v0, v2, Lcom/google/android/gms/internal/ads/zzasm;->lp:Z

    move/from16 v47, v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v3 .. v47}, Lcom/google/android/gms/internal/ads/kk;-><init>(Lcom/google/android/gms/internal/ads/zzwb;Lcom/google/android/gms/internal/ads/Mo;Ljava/util/List;ILjava/util/List;Ljava/util/List;IJLjava/lang/String;ZLcom/google/android/gms/internal/ads/pe;Lcom/google/android/gms/internal/ads/Je;Ljava/lang/String;Lcom/google/android/gms/internal/ads/qe;Lcom/google/android/gms/internal/ads/se;JLcom/google/android/gms/internal/ads/zzwf;JJJLjava/lang/String;Lorg/json/JSONObject;Lcom/google/android/gms/internal/ads/ka;Lcom/google/android/gms/internal/ads/zzawd;Ljava/util/List;Ljava/util/List;ZLcom/google/android/gms/internal/ads/zzaso;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/google/android/gms/internal/ads/YF;ZZZLjava/util/List;ZLjava/lang/String;Z)V

    move-object/from16 v2, v48

    :goto_b6
    sget-object v0, Lcom/google/android/gms/internal/ads/Nk;->j6:Landroid/os/Handler;

    new-instance v3, Lcom/google/android/gms/internal/ads/Ig;

    invoke-direct {v3, v1, v2}, Lcom/google/android/gms/internal/ads/Ig;-><init>(Lcom/google/android/gms/internal/ads/Hg;Lcom/google/android/gms/internal/ads/kk;)V

    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
