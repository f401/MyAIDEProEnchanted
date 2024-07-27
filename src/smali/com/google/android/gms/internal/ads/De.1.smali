.class public final Lcom/google/android/gms/internal/ads/De;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/oe;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zh;
.end annotation


# instance fields
.field private final DW:Lcom/google/android/gms/internal/ads/Ge;

.field private final EQ:Ljava/lang/String;

.field private final FH:Landroid/content/Context;

.field private final Hw:Ljava/lang/Object;

.field private J0:Lcom/google/android/gms/internal/ads/te;

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

.field private final Zo:Z

.field private final gn:J

.field private final j6:Lcom/google/android/gms/internal/ads/zzasi;

.field private final tp:Z

.field private final u7:Lcom/google/android/gms/internal/ads/D;

.field private final v5:Lcom/google/android/gms/internal/ads/qe;

.field private we:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzasi;Lcom/google/android/gms/internal/ads/Ge;Lcom/google/android/gms/internal/ads/qe;ZZLjava/lang/String;JJLcom/google/android/gms/internal/ads/D;Z)V
    .registers 16

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/De;->Hw:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/De;->we:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/De;->J8:Ljava/util/List;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/De;->FH:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/De;->j6:Lcom/google/android/gms/internal/ads/zzasi;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/De;->DW:Lcom/google/android/gms/internal/ads/Ge;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/De;->v5:Lcom/google/android/gms/internal/ads/qe;

    iput-boolean p5, p0, Lcom/google/android/gms/internal/ads/De;->Zo:Z

    iput-boolean p6, p0, Lcom/google/android/gms/internal/ads/De;->tp:Z

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/De;->EQ:Ljava/lang/String;

    iput-wide p8, p0, Lcom/google/android/gms/internal/ads/De;->VH:J

    iput-wide p10, p0, Lcom/google/android/gms/internal/ads/De;->gn:J

    iput-object p12, p0, Lcom/google/android/gms/internal/ads/De;->u7:Lcom/google/android/gms/internal/ads/D;

    iput-boolean p13, p0, Lcom/google/android/gms/internal/ads/De;->Ws:Z

    return-void
.end method


# virtual methods
.method public final cancel()V
    .registers 3

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/De;->Hw:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/De;->we:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/De;->J0:Lcom/google/android/gms/internal/ads/te;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/De;->J0:Lcom/google/android/gms/internal/ads/te;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/te;->j6()V

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

.method public final j6(Ljava/util/List;)Lcom/google/android/gms/internal/ads/we;
    .registers 26
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

    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/De;->u7:Lcom/google/android/gms/internal/ads/D;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/D;->j6()Lcom/google/android/gms/internal/ads/A;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/De;->j6:Lcom/google/android/gms/internal/ads/zzasi;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzasi;->Hw:Lcom/google/android/gms/internal/ads/zzwf;

    const/4 v4, 0x2

    new-array v4, v4, [I

    iget-object v5, v2, Lcom/google/android/gms/internal/ads/zzwf;->VH:[Lcom/google/android/gms/internal/ads/zzwf;

    if-eqz v5, :cond_a

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->er()Lcom/google/android/gms/internal/ads/ye;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/De;->EQ:Ljava/lang/String;

    invoke-static {v5, v4}, Lcom/google/android/gms/internal/ads/ye;->j6(Ljava/lang/String;[I)Z

    move-result v5

    if-eqz v5, :cond_a

    const/4 v5, 0x0

    aget v5, v4, v5

    const/4 v6, 0x1

    aget v6, v4, v6

    iget-object v7, v2, Lcom/google/android/gms/internal/ads/zzwf;->VH:[Lcom/google/android/gms/internal/ads/zzwf;

    array-length v8, v7

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v8, :cond_a

    aget-object v9, v7, v4

    iget v10, v9, Lcom/google/android/gms/internal/ads/zzwf;->v5:I

    if-ne v5, v10, :cond_1

    iget v10, v9, Lcom/google/android/gms/internal/ads/zzwf;->DW:I

    if-ne v6, v10, :cond_1

    :goto_1
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v4, 0x1

    move-object/from16 v18, v3

    move-object/from16 v19, v2

    :goto_2
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

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

    :goto_3
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/jm;->FH(Ljava/lang/String;)V

    iget-object v2, v7, Lcom/google/android/gms/internal/ads/pe;->FH:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v22

    move v2, v4

    :cond_0
    :goto_4
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/De;->u7:Lcom/google/android/gms/internal/ads/D;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/D;->j6()Lcom/google/android/gms/internal/ads/A;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/De;->Hw:Ljava/lang/Object;

    move-object/from16 v20, v0

    monitor-enter v20

    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/google/android/gms/internal/ads/De;->we:Z

    if-eqz v2, :cond_3

    new-instance v2, Lcom/google/android/gms/internal/ads/we;

    const/4 v3, -0x1

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/we;-><init>(I)V

    monitor-exit v20
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_5
    return-object v2

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    new-instance v2, Ljava/lang/String;

    const-string v3, "Trying mediation network: "

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :cond_3
    :try_start_1
    new-instance v2, Lcom/google/android/gms/internal/ads/te;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/De;->FH:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/De;->DW:Lcom/google/android/gms/internal/ads/Ge;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/De;->v5:Lcom/google/android/gms/internal/ads/qe;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/De;->j6:Lcom/google/android/gms/internal/ads/zzasi;

    iget-object v8, v8, Lcom/google/android/gms/internal/ads/zzasi;->FH:Lcom/google/android/gms/internal/ads/zzwb;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/gms/internal/ads/De;->j6:Lcom/google/android/gms/internal/ads/zzasi;

    iget-object v10, v10, Lcom/google/android/gms/internal/ads/zzasi;->EQ:Lcom/google/android/gms/internal/ads/zzbbi;

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/google/android/gms/internal/ads/De;->Zo:Z

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/google/android/gms/internal/ads/De;->tp:Z

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/gms/internal/ads/De;->j6:Lcom/google/android/gms/internal/ads/zzasi;

    iget-object v13, v13, Lcom/google/android/gms/internal/ads/zzasi;->er:Lcom/google/android/gms/internal/ads/zzacp;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/gms/internal/ads/De;->j6:Lcom/google/android/gms/internal/ads/zzasi;

    iget-object v14, v14, Lcom/google/android/gms/internal/ads/zzasi;->J8:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/gms/internal/ads/De;->j6:Lcom/google/android/gms/internal/ads/zzasi;

    iget-object v15, v15, Lcom/google/android/gms/internal/ads/zzasi;->yS:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/De;->j6:Lcom/google/android/gms/internal/ads/zzasi;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzasi;->sy:Ljava/util/List;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/De;->Ws:Z

    move/from16 v17, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-direct/range {v2 .. v17}, Lcom/google/android/gms/internal/ads/te;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ads/Ge;Lcom/google/android/gms/internal/ads/qe;Lcom/google/android/gms/internal/ads/pe;Lcom/google/android/gms/internal/ads/zzwb;Lcom/google/android/gms/internal/ads/zzwf;Lcom/google/android/gms/internal/ads/zzbbi;ZZLcom/google/android/gms/internal/ads/zzacp;Ljava/util/List;Ljava/util/List;Ljava/util/List;Z)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/gms/internal/ads/De;->J0:Lcom/google/android/gms/internal/ads/te;

    monitor-exit v20
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/De;->J0:Lcom/google/android/gms/internal/ads/te;

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/google/android/gms/internal/ads/De;->VH:J

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/google/android/gms/internal/ads/De;->gn:J

    invoke-virtual {v2, v10, v11, v12, v13}, Lcom/google/android/gms/internal/ads/te;->j6(JJ)Lcom/google/android/gms/internal/ads/we;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/De;->J8:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v2, v3, Lcom/google/android/gms/internal/ads/we;->j6:I

    if-nez v2, :cond_5

    const-string v2, "Adapter succeeded."

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/De;->u7:Lcom/google/android/gms/internal/ads/D;

    const-string v5, "mediation_network_succeed"

    invoke-virtual {v2, v5, v4}, Lcom/google/android/gms/internal/ads/D;->j6(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/De;->u7:Lcom/google/android/gms/internal/ads/D;

    const-string v4, "mediation_networks_fail"

    const-string v5, ","

    move-object/from16 v0, v21

    invoke-static {v5, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/google/android/gms/internal/ads/D;->j6(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/De;->u7:Lcom/google/android/gms/internal/ads/D;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "mls"

    aput-object v6, v4, v5

    move-object/from16 v0, v23

    invoke-virtual {v2, v0, v4}, Lcom/google/android/gms/internal/ads/D;->j6(Lcom/google/android/gms/internal/ads/A;[Ljava/lang/String;)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/De;->u7:Lcom/google/android/gms/internal/ads/D;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "ttm"

    aput-object v6, v4, v5

    move-object/from16 v0, v18

    invoke-virtual {v2, v0, v4}, Lcom/google/android/gms/internal/ads/D;->j6(Lcom/google/android/gms/internal/ads/A;[Ljava/lang/String;)Z

    move-object v2, v3

    goto/16 :goto_5

    :cond_5
    move-object/from16 v0, v21

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/De;->u7:Lcom/google/android/gms/internal/ads/D;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v8, "mlf"

    aput-object v8, v5, v6

    move-object/from16 v0, v23

    invoke-virtual {v4, v0, v5}, Lcom/google/android/gms/internal/ads/D;->j6(Lcom/google/android/gms/internal/ads/A;[Ljava/lang/String;)Z

    iget-object v4, v3, Lcom/google/android/gms/internal/ads/we;->FH:Lcom/google/android/gms/internal/ads/Je;

    if-eqz v4, :cond_0

    sget-object v4, Lcom/google/android/gms/internal/ads/Nk;->j6:Landroid/os/Handler;

    new-instance v5, Lcom/google/android/gms/internal/ads/Ee;

    move-object/from16 v0, p0

    invoke-direct {v5, v0, v3}, Lcom/google/android/gms/internal/ads/Ee;-><init>(Lcom/google/android/gms/internal/ads/De;Lcom/google/android/gms/internal/ads/we;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_4

    :catchall_0
    move-exception v2

    move-object/from16 v3, v20

    :goto_6
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v2

    :cond_6
    invoke-interface/range {v21 .. v21}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/De;->u7:Lcom/google/android/gms/internal/ads/D;

    const-string v3, "mediation_networks_fail"

    const-string v5, ","

    move-object/from16 v0, v21

    invoke-static {v5, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Lcom/google/android/gms/internal/ads/D;->j6(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    sget-object v2, Lcom/google/android/gms/internal/ads/p;->X7:Lcom/google/android/gms/internal/ads/e;

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->v5()Lcom/google/android/gms/internal/ads/m;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/m;->j6(Lcom/google/android/gms/internal/ads/e;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_8

    new-instance v2, Lcom/google/android/gms/internal/ads/we;

    invoke-direct {v2, v4}, Lcom/google/android/gms/internal/ads/we;-><init>(I)V

    goto/16 :goto_5

    :cond_8
    new-instance v2, Lcom/google/android/gms/internal/ads/we;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/we;-><init>(I)V

    goto/16 :goto_5

    :catchall_1
    move-exception v2

    move-object/from16 v3, v20

    goto :goto_6

    :catchall_2
    move-exception v2

    goto :goto_6

    :cond_9
    move v4, v2

    goto/16 :goto_2

    :cond_a
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

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/De;->J8:Ljava/util/List;

    return-object v0
.end method
