.class public final Lcom/google/android/gms/internal/ads/Bo;
.super Lcom/google/android/gms/internal/ads/po;

# interfaces
.implements Lcom/google/android/gms/internal/ads/do;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zh;
.end annotation


# instance fields
.field private Hw:Lcom/google/android/gms/internal/ads/Xn;

.field private VH:Ljava/lang/Exception;

.field private Zo:Z

.field private gn:Z

.field private v5:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/Dn;Lcom/google/android/gms/internal/ads/Cn;)V
    .registers 4

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/po;-><init>(Lcom/google/android/gms/internal/ads/Dn;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/Xn;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/Dn;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/ads/Xn;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/Cn;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Bo;->Hw:Lcom/google/android/gms/internal/ads/Xn;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/Xn;->j6(Lcom/google/android/gms/internal/ads/do;)V

    return-void
.end method

.method private static DW(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/String;
    .registers 6

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x2

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ":"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final FH(Ljava/lang/String;)V
    .registers 6

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/Bo;->Zo:Z

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/Bo;->j6()V

    monitor-exit p0
    :try_end_b
    .catchall {:try_start_2 .. :try_end_b} :catchall_2d

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Bo;->v5:Ljava/lang/String;

    if-eqz v0, :cond_2c

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/Bo;->DW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Bo;->VH:Ljava/lang/Exception;

    if-eqz v1, :cond_23

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Bo;->v5:Ljava/lang/String;

    const-string v3, "badUrl"

    invoke-static {p1, v1}, Lcom/google/android/gms/internal/ads/Bo;->DW(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v2, v0, v3, p1}, Lcom/google/android/gms/internal/ads/po;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_23
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/Bo;->v5:Ljava/lang/String;

    const-string v1, "externalAbort"

    const-string v2, "Programmatic precache abort."

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/google/android/gms/internal/ads/po;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2c
    return-void

    :catchall_2d
    move-exception p1

    :try_start_2e
    monitor-exit p0
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_2d

    throw p1
.end method


# virtual methods
.method protected final DW(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/po;->DW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const-string v1, "cache:"

    if-eqz v0, :cond_15

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_15
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object p1
.end method

.method public final DW()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/Bo;->FH(Ljava/lang/String;)V

    return-void
.end method

.method public final DW(I)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Bo;->Hw:Lcom/google/android/gms/internal/ads/Xn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Xn;->VH()Lcom/google/android/gms/internal/ads/Wn;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/Wn;->FH(I)V

    return-void
.end method

.method public final FH()Lcom/google/android/gms/internal/ads/Xn;
    .registers 3

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/Bo;->gn:Z

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    monitor-exit p0
    :try_end_8
    .catchall {:try_start_2 .. :try_end_8} :catchall_13

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Bo;->Hw:Lcom/google/android/gms/internal/ads/Xn;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/Xn;->j6(Lcom/google/android/gms/internal/ads/do;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Bo;->Hw:Lcom/google/android/gms/internal/ads/Xn;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/Bo;->Hw:Lcom/google/android/gms/internal/ads/Xn;

    return-object v0

    :catchall_13
    move-exception v0

    :try_start_14
    monitor-exit p0
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_13

    throw v0
.end method

.method public final FH(I)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Bo;->Hw:Lcom/google/android/gms/internal/ads/Xn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Xn;->VH()Lcom/google/android/gms/internal/ads/Wn;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/Wn;->Hw(I)V

    return-void
.end method

.method public final Hw(I)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Bo;->Hw:Lcom/google/android/gms/internal/ads/Xn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Xn;->VH()Lcom/google/android/gms/internal/ads/Wn;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/Wn;->j6(I)V

    return-void
.end method

.method public final j6()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Bo;->Hw:Lcom/google/android/gms/internal/ads/Xn;

    if-eqz v0, :cond_d

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/Xn;->j6(Lcom/google/android/gms/internal/ads/do;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Bo;->Hw:Lcom/google/android/gms/internal/ads/Xn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Xn;->FH()V

    :cond_d
    invoke-super {p0}, Lcom/google/android/gms/internal/ads/po;->j6()V

    return-void
.end method

.method public final j6(I)V
    .registers 2

    return-void
.end method

.method public final j6(II)V
    .registers 3

    return-void
.end method

.method public final j6(Ljava/lang/String;Ljava/lang/Exception;)V
    .registers 4

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/Bo;->VH:Ljava/lang/Exception;

    const-string v0, "Precache error"

    invoke-static {v0, p2}, Lcom/google/android/gms/internal/ads/jm;->FH(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/Bo;->FH(Ljava/lang/String;)V

    return-void
.end method

.method public final j6(ZJ)V
    .registers 7

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/po;->FH:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/Dn;

    if-eqz v0, :cond_14

    sget-object v1, Lcom/google/android/gms/internal/ads/Mm;->j6:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/google/android/gms/internal/ads/Co;

    invoke-direct {v2, v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/Co;-><init>(Lcom/google/android/gms/internal/ads/Dn;ZJ)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_14
    return-void
.end method

.method public final j6(Ljava/lang/String;)Z
    .registers 35

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    iput-object v12, v11, Lcom/google/android/gms/internal/ads/Bo;->v5:Ljava/lang/String;

    invoke-virtual/range {p0 .. p1}, Lcom/google/android/gms/internal/ads/Bo;->DW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v14, "error"

    :try_start_c
    invoke-static/range {p1 .. p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, v11, Lcom/google/android/gms/internal/ads/Bo;->Hw:Lcom/google/android/gms/internal/ads/Xn;

    iget-object v2, v11, Lcom/google/android/gms/internal/ads/po;->DW:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/ads/Xn;->j6(Landroid/net/Uri;Ljava/lang/String;)V

    iget-object v0, v11, Lcom/google/android/gms/internal/ads/po;->FH:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/Dn;
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_1f} :catch_156

    if-eqz v0, :cond_29

    :try_start_21
    invoke-interface {v0, v13, v11}, Lcom/google/android/gms/internal/ads/Dn;->j6(Ljava/lang/String;Lcom/google/android/gms/internal/ads/po;)V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_24} :catch_25

    goto :goto_29

    :catch_25
    move-exception v0

    move-object v1, v11

    goto/16 :goto_15c

    :cond_29
    :goto_29
    :try_start_29
    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->we()Lcom/google/android/gms/common/util/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/e;->j6()J

    move-result-wide v16

    sget-object v1, Lcom/google/android/gms/internal/ads/p;->vy:Lcom/google/android/gms/internal/ads/e;

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->v5()Lcom/google/android/gms/internal/ads/m;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/m;->j6(Lcom/google/android/gms/internal/ads/e;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    sget-object v1, Lcom/google/android/gms/internal/ads/p;->BT:Lcom/google/android/gms/internal/ads/e;

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->v5()Lcom/google/android/gms/internal/ads/m;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/m;->j6(Lcom/google/android/gms/internal/ads/e;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    mul-long v6, v1, v3

    sget-object v1, Lcom/google/android/gms/internal/ads/p;->gW:Lcom/google/android/gms/internal/ads/e;

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->v5()Lcom/google/android/gms/internal/ads/m;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/m;->j6(Lcom/google/android/gms/internal/ads/e;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v4, v1

    const-wide/16 v1, -0x1

    :goto_68
    monitor-enter p0
    :try_end_69
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_69} :catch_156

    :try_start_69
    invoke-interface {v0}, Lcom/google/android/gms/common/util/e;->j6()J

    move-result-wide v18

    sub-long v18, v18, v16

    cmp-long v3, v18, v6

    if-gtz v3, :cond_122

    iget-boolean v3, v11, Lcom/google/android/gms/internal/ads/Bo;->Zo:Z
    :try_end_75
    .catchall {:try_start_69 .. :try_end_75} :catchall_14a

    if-eqz v3, :cond_8b

    :try_start_77
    iget-object v0, v11, Lcom/google/android/gms/internal/ads/Bo;->VH:Ljava/lang/Exception;
    :try_end_79
    .catchall {:try_start_77 .. :try_end_79} :catchall_88

    if-eqz v0, :cond_7e

    const-string v1, "badUrl"

    :try_start_7d
    throw v0
    :try_end_7e
    .catchall {:try_start_7d .. :try_end_7e} :catchall_146

    :cond_7e
    const-string v1, "externalAbort"

    :try_start_80
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Abort requested before buffering finished. "

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_88
    .catchall {:try_start_80 .. :try_end_88} :catchall_146

    :catchall_88
    move-exception v0

    goto/16 :goto_148

    :cond_8b
    :try_start_8b
    iget-boolean v3, v11, Lcom/google/android/gms/internal/ads/Bo;->gn:Z
    :try_end_8d
    .catchall {:try_start_8b .. :try_end_8d} :catchall_14a

    const/16 v18, 0x1

    if-eqz v3, :cond_94

    :try_start_91
    monitor-exit p0
    :try_end_92
    .catchall {:try_start_91 .. :try_end_92} :catchall_88

    goto/16 :goto_f5

    :cond_94
    :try_start_94
    iget-object v3, v11, Lcom/google/android/gms/internal/ads/Bo;->Hw:Lcom/google/android/gms/internal/ads/Xn;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/Xn;->Hw()Lcom/google/android/gms/internal/ads/wy;

    move-result-object v3
    :try_end_9a
    .catchall {:try_start_94 .. :try_end_9a} :catchall_14a

    if-eqz v3, :cond_118

    move-object/from16 v20, v14

    :try_start_9e
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/wy;->getDuration()J

    move-result-wide v14

    const-wide/16 v21, 0x0

    cmp-long v8, v14, v21

    if-lez v8, :cond_f9

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/wy;->eU()J

    move-result-wide v23

    cmp-long v3, v23, v1

    if-eqz v3, :cond_d7

    cmp-long v1, v23, v21

    if-lez v1, :cond_b6

    const/4 v8, 0x1

    goto :goto_b7

    :cond_b6
    const/4 v8, 0x0

    :goto_b7
    invoke-static {}, Lcom/google/android/gms/internal/ads/Xn;->v5()I

    move-result v25

    invoke-static {}, Lcom/google/android/gms/internal/ads/Xn;->Zo()I

    move-result v26

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v3, v13

    move-wide/from16 v27, v4

    move-wide/from16 v4, v23

    move-wide/from16 v29, v6

    move-wide v6, v14

    move-wide/from16 v31, v9

    move/from16 v9, v25

    move/from16 v10, v26

    invoke-virtual/range {v1 .. v10}, Lcom/google/android/gms/internal/ads/po;->j6(Ljava/lang/String;Ljava/lang/String;JJZII)V

    move-wide/from16 v1, v23

    goto :goto_dd

    :cond_d7
    move-wide/from16 v27, v4

    move-wide/from16 v29, v6

    move-wide/from16 v31, v9

    :goto_dd
    cmp-long v3, v23, v14

    if-ltz v3, :cond_e6

    invoke-virtual {v11, v12, v13, v14, v15}, Lcom/google/android/gms/internal/ads/po;->j6(Ljava/lang/String;Ljava/lang/String;J)V

    :goto_e4
    monitor-exit p0

    goto :goto_f5

    :cond_e6
    iget-object v3, v11, Lcom/google/android/gms/internal/ads/Bo;->Hw:Lcom/google/android/gms/internal/ads/Xn;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/Xn;->DW()J

    move-result-wide v3
    :try_end_ec
    .catchall {:try_start_9e .. :try_end_ec} :catchall_116

    cmp-long v5, v3, v27

    if-ltz v5, :cond_f6

    cmp-long v3, v23, v21

    if-lez v3, :cond_f6

    goto :goto_e4

    :goto_f5
    return v18

    :cond_f6
    move-wide/from16 v3, v31

    goto :goto_fe

    :cond_f9
    move-wide/from16 v27, v4

    move-wide/from16 v29, v6

    move-wide v3, v9

    :goto_fe
    :try_start_fe
    invoke-virtual {v11, v3, v4}, Ljava/lang/Object;->wait(J)V
    :try_end_101
    .catch Ljava/lang/InterruptedException; {:try_start_fe .. :try_end_101} :catch_10b
    .catchall {:try_start_fe .. :try_end_101} :catchall_116

    :try_start_101
    monitor-exit p0
    :try_end_102
    .catchall {:try_start_101 .. :try_end_102} :catchall_116

    move-wide v9, v3

    move-object/from16 v14, v20

    move-wide/from16 v4, v27

    move-wide/from16 v6, v29

    goto/16 :goto_68

    :catch_10b
    move-exception v0

    const-string v1, "interrupted"

    :try_start_10e
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Wait interrupted."

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_116
    .catchall {:try_start_10e .. :try_end_116} :catchall_146

    :catchall_116
    move-exception v0

    goto :goto_14d

    :cond_118
    const-string v1, "exoPlayerReleased"

    :try_start_11a
    new-instance v0, Ljava/io/IOException;

    const-string v2, "ExoPlayer was released during preloading."

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_122
    .catchall {:try_start_11a .. :try_end_122} :catchall_146

    :cond_122
    move-wide/from16 v29, v6

    const-string v1, "downloadTimeout"

    :try_start_126
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x2f

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Timeout reached. Limit: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v3, v29

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_146
    .catchall {:try_start_126 .. :try_end_146} :catchall_146

    :catchall_146
    move-exception v0

    move-object v14, v1

    :goto_148
    move-object v1, v11

    goto :goto_150

    :catchall_14a
    move-exception v0

    move-object/from16 v20, v14

    :goto_14d
    move-object v1, v11

    move-object/from16 v14, v20

    :goto_150
    :try_start_150
    monitor-exit v1
    :try_end_151
    .catchall {:try_start_150 .. :try_end_151} :catchall_154

    :try_start_151
    throw v0
    :try_end_152
    .catch Ljava/lang/Exception; {:try_start_151 .. :try_end_152} :catch_152

    :catch_152
    move-exception v0

    goto :goto_15c

    :catchall_154
    move-exception v0

    goto :goto_150

    :catch_156
    move-exception v0

    move-object/from16 v20, v14

    move-object v1, v11

    move-object/from16 v14, v20

    :goto_15c
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x22

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Failed to preload url "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " Exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/Bo;->j6()V

    invoke-static {v14, v0}, Lcom/google/android/gms/internal/ads/Bo;->DW(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v12, v13, v14, v0}, Lcom/google/android/gms/internal/ads/po;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    return v1
.end method

.method public final v5(I)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Bo;->Hw:Lcom/google/android/gms/internal/ads/Xn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Xn;->VH()Lcom/google/android/gms/internal/ads/Wn;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/Wn;->DW(I)V

    return-void
.end method
