.class public final Lcom/google/android/gms/internal/ads/Bo;
.super Lcom/google/android/gms/internal/ads/po;

# interfaces
.implements Lcom/google/android/gms/internal/ads/do;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation

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
    .registers 5

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/po;-><init>(Lcom/google/android/gms/internal/ads/Dn;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/Xn;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/Dn;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lcom/google/android/gms/internal/ads/Xn;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/Cn;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Bo;->Hw:Lcom/google/android/gms/internal/ads/Xn;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Bo;->Hw:Lcom/google/android/gms/internal/ads/Xn;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/Xn;->j6(Lcom/google/android/gms/internal/ads/do;)V

    return-void
.end method

.method private static DW(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/String;
    .registers 7

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x2

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private final FH(Ljava/lang/String;)V
    .registers 6

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/Bo;->Zo:Z

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/Bo;->j6()V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Bo;->v5:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/Bo;->DW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Bo;->VH:Ljava/lang/Exception;

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Bo;->v5:Ljava/lang/String;

    const-string v3, "badUrl"

    invoke-static {p1, v1}, Lcom/google/android/gms/internal/ads/Bo;->DW(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v2, v0, v3, v1}, Lcom/google/android/gms/internal/ads/po;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Bo;->v5:Ljava/lang/String;

    const-string v2, "externalAbort"

    const-string v3, "Programmatic precache abort."

    invoke-virtual {p0, v1, v0, v2, v3}, Lcom/google/android/gms/internal/ads/po;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method protected final DW(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/po;->DW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "cache:"

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/String;

    const-string v1, "cache:"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0
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

    const/4 v1, 0x0

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/Bo;->gn:Z

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Bo;->Hw:Lcom/google/android/gms/internal/ads/Xn;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/Xn;->j6(Lcom/google/android/gms/internal/ads/do;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Bo;->Hw:Lcom/google/android/gms/internal/ads/Xn;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/Bo;->Hw:Lcom/google/android/gms/internal/ads/Xn;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

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

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/Xn;->j6(Lcom/google/android/gms/internal/ads/do;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Bo;->Hw:Lcom/google/android/gms/internal/ads/Xn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Xn;->FH()V

    :cond_0
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
    .registers 8

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/po;->FH:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/Dn;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/google/android/gms/internal/ads/Mm;->j6:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/google/android/gms/internal/ads/Co;

    invoke-direct {v2, v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/Co;-><init>(Lcom/google/android/gms/internal/ads/Dn;ZJ)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public final j6(Ljava/lang/String;)Z
    .registers 28

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/gms/internal/ads/Bo;->v5:Ljava/lang/String;

    invoke-virtual/range {p0 .. p1}, Lcom/google/android/gms/internal/ads/Bo;->DW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v15, "error"

    :try_start_0
    invoke-static/range {p1 .. p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/Bo;->Hw:Lcom/google/android/gms/internal/ads/Xn;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/po;->DW:Ljava/lang/String;

    invoke-virtual {v5, v4, v6}, Lcom/google/android/gms/internal/ads/Xn;->j6(Landroid/net/Uri;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/po;->FH:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/ads/Dn;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    if-eqz v4, :cond_0

    :try_start_1
    move-object/from16 v0, p0

    invoke-interface {v4, v7, v0}, Lcom/google/android/gms/internal/ads/Dn;->j6(Ljava/lang/String;Lcom/google/android/gms/internal/ads/po;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    :cond_0
    :try_start_2
    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->we()Lcom/google/android/gms/common/util/e;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Lcom/google/android/gms/common/util/e;->j6()J

    move-result-wide v18

    sget-object v4, Lcom/google/android/gms/internal/ads/p;->vy:Lcom/google/android/gms/internal/ads/e;

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->v5()Lcom/google/android/gms/internal/ads/m;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/ads/m;->j6(Lcom/google/android/gms/internal/ads/e;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    sget-object v4, Lcom/google/android/gms/internal/ads/p;->BT:Lcom/google/android/gms/internal/ads/e;

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->v5()Lcom/google/android/gms/internal/ads/m;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/ads/m;->j6(Lcom/google/android/gms/internal/ads/e;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v8, 0x3e8

    mul-long v22, v4, v8

    sget-object v4, Lcom/google/android/gms/internal/ads/p;->gW:Lcom/google/android/gms/internal/ads/e;

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->v5()Lcom/google/android/gms/internal/ads/m;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/ads/m;->j6(Lcom/google/android/gms/internal/ads/e;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-long v0, v4

    move-wide/from16 v24, v0

    const-wide/16 v4, -0x1

    :goto_0
    monitor-enter p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :try_start_3
    invoke-interface/range {v16 .. v16}, Lcom/google/android/gms/common/util/e;->j6()J

    move-result-wide v8

    sub-long v8, v8, v18

    cmp-long v6, v8, v22

    if-gtz v6, :cond_9

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/google/android/gms/internal/ads/Bo;->Zo:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v6, :cond_2

    :try_start_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/Bo;->VH:Ljava/lang/Exception;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    if-eqz v4, :cond_1

    const-string v5, "badUrl"

    :try_start_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/Bo;->VH:Ljava/lang/Exception;

    throw v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catchall_0
    move-exception v4

    :goto_1
    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    :try_start_7
    throw v4
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    :catch_0
    move-exception v6

    move-object v4, v5

    :goto_2
    move-object v5, v6

    :goto_3
    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, 0x22

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    add-int/2addr v9, v10

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v9, "Failed to preload url "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p1

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " Exception: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/Bo;->j6()V

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/ads/Bo;->DW(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v7, v4, v5}, Lcom/google/android/gms/internal/ads/po;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x0

    :goto_4
    return v4

    :cond_1
    const-string v5, "externalAbort"

    :try_start_8
    new-instance v4, Ljava/io/IOException;

    const-string v6, "Abort requested before buffering finished. "

    invoke-direct {v4, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :cond_2
    :try_start_9
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/google/android/gms/internal/ads/Bo;->gn:Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    if-eqz v6, :cond_3

    :try_start_a
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    :goto_5
    const/4 v4, 0x1

    goto :goto_4

    :cond_3
    :try_start_b
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/Bo;->Hw:Lcom/google/android/gms/internal/ads/Xn;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/Xn;->Hw()Lcom/google/android/gms/internal/ads/wy;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    move-result-object v6

    if-eqz v6, :cond_8

    :try_start_c
    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/wy;->getDuration()J

    move-result-wide v10

    const-wide/16 v8, 0x0

    cmp-long v8, v10, v8

    if-lez v8, :cond_7

    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/wy;->eU()J

    move-result-wide v8

    cmp-long v6, v8, v4

    if-eqz v6, :cond_4

    const-wide/16 v4, 0x0

    cmp-long v4, v8, v4

    if-lez v4, :cond_5

    const/4 v12, 0x1

    :goto_6
    invoke-static {}, Lcom/google/android/gms/internal/ads/Xn;->v5()I

    move-result v13

    invoke-static {}, Lcom/google/android/gms/internal/ads/Xn;->Zo()I

    move-result v14

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    invoke-virtual/range {v5 .. v14}, Lcom/google/android/gms/internal/ads/po;->j6(Ljava/lang/String;Ljava/lang/String;JJZII)V

    move-wide v4, v8

    :cond_4
    cmp-long v6, v8, v10

    if-ltz v6, :cond_6

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v7, v10, v11}, Lcom/google/android/gms/internal/ads/po;->j6(Ljava/lang/String;Ljava/lang/String;J)V

    monitor-exit p0

    goto :goto_5

    :catchall_1
    move-exception v4

    move-object v5, v15

    goto/16 :goto_1

    :cond_5
    const/4 v12, 0x0

    goto :goto_6

    :cond_6
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/Bo;->Hw:Lcom/google/android/gms/internal/ads/Xn;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/Xn;->DW()J

    move-result-wide v10

    cmp-long v6, v10, v24

    if-ltz v6, :cond_7

    const-wide/16 v10, 0x0

    cmp-long v6, v8, v10

    if-lez v6, :cond_7

    monitor-exit p0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    goto :goto_5

    :cond_7
    :try_start_d
    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/Object;->wait(J)V
    :try_end_d
    .catch Ljava/lang/InterruptedException; {:try_start_d .. :try_end_d} :catch_1
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    :try_start_e
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    goto/16 :goto_0

    :catch_1
    move-exception v4

    const-string v5, "interrupted"

    :try_start_f
    new-instance v4, Ljava/io/IOException;

    const-string v6, "Wait interrupted."

    invoke-direct {v4, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    :cond_8
    const-string v5, "exoPlayerReleased"

    :try_start_10
    new-instance v4, Ljava/io/IOException;

    const-string v6, "ExoPlayer was released during preloading."

    invoke-direct {v4, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    :cond_9
    const-string v5, "downloadTimeout"

    :try_start_11
    new-instance v4, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    const/16 v8, 0x2f

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v8, "Timeout reached. Limit: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v0, v22

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, " ms"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    :catchall_2
    move-exception v4

    move-object v5, v15

    goto/16 :goto_1

    :catch_2
    move-exception v5

    move-object v4, v15

    goto/16 :goto_3

    :catchall_3
    move-exception v4

    move-object v5, v15

    goto/16 :goto_1

    :catchall_4
    move-exception v4

    goto/16 :goto_1

    :catch_3
    move-exception v6

    move-object v4, v15

    goto/16 :goto_2
.end method

.method public final v5(I)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Bo;->Hw:Lcom/google/android/gms/internal/ads/Xn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Xn;->VH()Lcom/google/android/gms/internal/ads/Wn;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/Wn;->DW(I)V

    return-void
.end method
