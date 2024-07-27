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
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/google/android/gms/internal/ads/kk;",
            ">;"
        }
    .end annotation
.end field

.field private final v5:Lcom/google/android/gms/internal/ads/zzasm;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/C;Lcom/google/android/gms/internal/ads/lk;Lcom/google/android/gms/internal/ads/ix;Lcom/google/android/gms/internal/ads/Ag;Lcom/google/android/gms/internal/ads/D;)V
    .registers 14

    new-instance v0, Lcom/google/android/gms/internal/ads/Kg;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzazs;

    invoke-direct {v3, p1}, Lcom/google/android/gms/internal/ads/zzazs;-><init>(Landroid/content/Context;)V

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    move-object v5, p3

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/Kg;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/C;Lcom/google/android/gms/internal/ads/zzazs;Lcom/google/android/gms/internal/ads/ix;Lcom/google/android/gms/internal/ads/lk;Lcom/google/android/gms/internal/ads/D;)V

    invoke-direct {p0, p3, p5, v0}, Lcom/google/android/gms/internal/ads/Hg;-><init>(Lcom/google/android/gms/internal/ads/lk;Lcom/google/android/gms/internal/ads/Ag;Lcom/google/android/gms/internal/ads/Kg;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/ads/lk;Lcom/google/android/gms/internal/ads/Ag;Lcom/google/android/gms/internal/ads/Kg;)V
    .registers 5

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/Ak;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Hg;->gn:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Hg;->Zo:Lcom/google/android/gms/internal/ads/lk;

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/lk;->DW:Lcom/google/android/gms/internal/ads/zzasm;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Hg;->v5:Lcom/google/android/gms/internal/ads/zzasm;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/Hg;->Hw:Lcom/google/android/gms/internal/ads/Ag;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/Hg;->VH:Lcom/google/android/gms/internal/ads/Kg;

    return-void
.end method

.method static synthetic j6(Lcom/google/android/gms/internal/ads/Hg;)Lcom/google/android/gms/internal/ads/Ag;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Hg;->Hw:Lcom/google/android/gms/internal/ads/Ag;

    return-object v0
.end method


# virtual methods
.method public final DW()V
    .registers 4

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Hg;->gn:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Hg;->u7:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Hg;->u7:Ljava/util/concurrent/Future;

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Ljava/util/concurrent/Future;->cancel(Z)Z

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
    .registers 48

    const/4 v3, 0x0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/Hg;->gn:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_3

    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/Hg;->VH:Lcom/google/android/gms/internal/ads/Kg;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/Lk;->j6(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/internal/ads/Hm;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/gms/internal/ads/Hg;->u7:Ljava/util/concurrent/Future;

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/Hg;->u7:Ljava/util/concurrent/Future;

    const-wide/32 v4, 0xea60

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v2, v4, v5, v6}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/kk;
    :try_end_2
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_2 .. :try_end_2} :catch_3

    const/4 v6, -0x2

    :goto_0
    if-eqz v2, :cond_0

    :goto_1
    sget-object v3, Lcom/google/android/gms/internal/ads/Nk;->j6:Landroid/os/Handler;

    new-instance v4, Lcom/google/android/gms/internal/ads/Ig;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v2}, Lcom/google/android/gms/internal/ads/Ig;-><init>(Lcom/google/android/gms/internal/ads/Hg;Lcom/google/android/gms/internal/ads/kk;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v2
    :try_end_4
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_4 .. :try_end_4} :catch_3

    :catch_0
    move-exception v2

    const-string v2, "Timed out waiting for native ad."

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/Hg;->u7:Ljava/util/concurrent/Future;

    const/4 v4, 0x1

    invoke-interface {v2, v4}, Ljava/util/concurrent/Future;->cancel(Z)Z

    const/4 v6, 0x2

    move-object v2, v3

    goto :goto_0

    :catch_1
    move-exception v2

    :goto_2
    const/4 v6, 0x0

    move-object v2, v3

    goto :goto_0

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/Hg;->Zo:Lcom/google/android/gms/internal/ads/lk;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/lk;->j6:Lcom/google/android/gms/internal/ads/zzasi;

    iget-object v3, v2, Lcom/google/android/gms/internal/ads/zzasi;->FH:Lcom/google/android/gms/internal/ads/zzwb;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/Hg;->v5:Lcom/google/android/gms/internal/ads/zzasm;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget v9, v0, Lcom/google/android/gms/internal/ads/zzasm;->J0:I

    move-object/from16 v0, v38

    iget-wide v10, v0, Lcom/google/android/gms/internal/ads/zzasm;->we:J

    iget-object v12, v2, Lcom/google/android/gms/internal/ads/zzasi;->u7:Ljava/lang/String;

    move-object/from16 v0, v38

    iget-wide v0, v0, Lcom/google/android/gms/internal/ads/zzasm;->tp:J

    move-wide/from16 v19, v0

    move-object/from16 v0, v39

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/lk;->Hw:Lcom/google/android/gms/internal/ads/zzwf;

    move-object/from16 v21, v0

    move-object/from16 v0, v38

    iget-wide v0, v0, Lcom/google/android/gms/internal/ads/zzasm;->gn:J

    move-wide/from16 v22, v0

    move-object/from16 v0, v39

    iget-wide v0, v0, Lcom/google/android/gms/internal/ads/lk;->Zo:J

    move-wide/from16 v24, v0

    move-object/from16 v0, v38

    iget-wide v0, v0, Lcom/google/android/gms/internal/ads/zzasm;->Ws:J

    move-wide/from16 v26, v0

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzasm;->QX:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, v39

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/lk;->gn:Lorg/json/JSONObject;

    move-object/from16 v29, v0

    move-object/from16 v0, v39

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/lk;->DW:Lcom/google/android/gms/internal/ads/zzasm;

    move-object/from16 v46, v0

    new-instance v2, Lcom/google/android/gms/internal/ads/kk;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    move-object/from16 v0, v46

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzasm;->SI:Z

    move/from16 v34, v0

    move-object/from16 v0, v46

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzasm;->KD:Lcom/google/android/gms/internal/ads/zzaso;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    const/16 v37, 0x0

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzasm;->ef:Ljava/lang/String;

    move-object/from16 v38, v0

    move-object/from16 v0, v39

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/lk;->u7:Lcom/google/android/gms/internal/ads/YF;

    move-object/from16 v39, v0

    move-object/from16 v0, v46

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzasm;->Mz:Z

    move/from16 v40, v0

    const/16 v41, 0x0

    move-object/from16 v0, v46

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzasm;->ca:Z

    move/from16 v42, v0

    const/16 v43, 0x0

    move-object/from16 v0, v46

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzasm;->Qq:Z

    move/from16 v44, v0

    move-object/from16 v0, v46

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzasm;->sy:Ljava/lang/String;

    move-object/from16 v45, v0

    move-object/from16 v0, v46

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzasm;->lp:Z

    move/from16 v46, v0

    invoke-direct/range {v2 .. v46}, Lcom/google/android/gms/internal/ads/kk;-><init>(Lcom/google/android/gms/internal/ads/zzwb;Lcom/google/android/gms/internal/ads/Mo;Ljava/util/List;ILjava/util/List;Ljava/util/List;IJLjava/lang/String;ZLcom/google/android/gms/internal/ads/pe;Lcom/google/android/gms/internal/ads/Je;Ljava/lang/String;Lcom/google/android/gms/internal/ads/qe;Lcom/google/android/gms/internal/ads/se;JLcom/google/android/gms/internal/ads/zzwf;JJJLjava/lang/String;Lorg/json/JSONObject;Lcom/google/android/gms/internal/ads/ka;Lcom/google/android/gms/internal/ads/zzawd;Ljava/util/List;Ljava/util/List;ZLcom/google/android/gms/internal/ads/zzaso;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/google/android/gms/internal/ads/YF;ZZZLjava/util/List;ZLjava/lang/String;Z)V

    goto/16 :goto_1

    :catch_2
    move-exception v2

    goto/16 :goto_2

    :catch_3
    move-exception v2

    goto/16 :goto_2
.end method
