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
            "Ljava/util/List<",
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
    .registers 15

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

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/De;->Hw:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_4
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/De;->we:Z

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/De;->J0:Lcom/google/android/gms/internal/ads/te;

    if-eqz v1, :cond_d

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/te;->j6()V

    :cond_d
    monitor-exit v0

    return-void

    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_4 .. :try_end_11} :catchall_f

    throw v1
.end method

.method public final j6(Ljava/util/List;)Lcom/google/android/gms/internal/ads/we;
    .registers 33
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/pe;",
            ">;)",
            "Lcom/google/android/gms/internal/ads/we;"
        }
    .end annotation

    move-object/from16 v1, p0

    const-string v0, "Starting mediation."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/De;->u7:Lcom/google/android/gms/internal/ads/D;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/D;->j6()Lcom/google/android/gms/internal/ads/A;

    move-result-object v2

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/De;->j6:Lcom/google/android/gms/internal/ads/zzasi;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzasi;->Hw:Lcom/google/android/gms/internal/ads/zzwf;

    const/4 v4, 0x2

    new-array v4, v4, [I

    iget-object v5, v3, Lcom/google/android/gms/internal/ads/zzwf;->VH:[Lcom/google/android/gms/internal/ads/zzwf;

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v5, :cond_43

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->er()Lcom/google/android/gms/internal/ads/ye;

    iget-object v5, v1, Lcom/google/android/gms/internal/ads/De;->EQ:Ljava/lang/String;

    invoke-static {v5, v4}, Lcom/google/android/gms/internal/ads/ye;->j6(Ljava/lang/String;[I)Z

    move-result v5

    if-eqz v5, :cond_43

    aget v5, v4, v6

    aget v4, v4, v7

    iget-object v8, v3, Lcom/google/android/gms/internal/ads/zzwf;->VH:[Lcom/google/android/gms/internal/ads/zzwf;

    array-length v9, v8

    const/4 v10, 0x0

    :goto_32
    if-ge v10, v9, :cond_43

    aget-object v11, v8, v10

    iget v12, v11, Lcom/google/android/gms/internal/ads/zzwf;->v5:I

    if-ne v5, v12, :cond_40

    iget v12, v11, Lcom/google/android/gms/internal/ads/zzwf;->DW:I

    if-ne v4, v12, :cond_40

    move-object v3, v11

    goto :goto_43

    :cond_40
    add-int/lit8 v10, v10, 0x1

    goto :goto_32

    :cond_43
    :goto_43
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v5, 0x1

    :goto_48
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_17c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/ads/pe;

    iget-object v9, v8, Lcom/google/android/gms/internal/ads/pe;->DW:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v10

    if-eqz v10, :cond_67

    const-string v10, "Trying mediation network: "

    invoke-virtual {v10, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    goto :goto_6e

    :cond_67
    new-instance v9, Ljava/lang/String;

    const-string v10, "Trying mediation network: "

    invoke-direct {v9, v10}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_6e
    invoke-static {v9}, Lcom/google/android/gms/internal/ads/jm;->FH(Ljava/lang/String;)V

    iget-object v9, v8, Lcom/google/android/gms/internal/ads/pe;->FH:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_77
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_179

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iget-object v10, v1, Lcom/google/android/gms/internal/ads/De;->u7:Lcom/google/android/gms/internal/ads/D;

    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/D;->j6()Lcom/google/android/gms/internal/ads/A;

    move-result-object v10

    iget-object v15, v1, Lcom/google/android/gms/internal/ads/De;->Hw:Ljava/lang/Object;

    monitor-enter v15

    :try_start_8c
    iget-boolean v11, v1, Lcom/google/android/gms/internal/ads/De;->we:Z

    if-eqz v11, :cond_98

    new-instance v0, Lcom/google/android/gms/internal/ads/we;

    const/4 v2, -0x1

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ads/we;-><init>(I)V

    monitor-exit v15

    return-object v0

    :cond_98
    new-instance v14, Lcom/google/android/gms/internal/ads/te;

    iget-object v12, v1, Lcom/google/android/gms/internal/ads/De;->FH:Landroid/content/Context;

    iget-object v13, v1, Lcom/google/android/gms/internal/ads/De;->DW:Lcom/google/android/gms/internal/ads/Ge;

    iget-object v11, v1, Lcom/google/android/gms/internal/ads/De;->v5:Lcom/google/android/gms/internal/ads/qe;

    iget-object v6, v1, Lcom/google/android/gms/internal/ads/De;->j6:Lcom/google/android/gms/internal/ads/zzasi;

    iget-object v6, v6, Lcom/google/android/gms/internal/ads/zzasi;->FH:Lcom/google/android/gms/internal/ads/zzwb;

    iget-object v7, v1, Lcom/google/android/gms/internal/ads/De;->j6:Lcom/google/android/gms/internal/ads/zzasi;

    iget-object v7, v7, Lcom/google/android/gms/internal/ads/zzasi;->EQ:Lcom/google/android/gms/internal/ads/zzbbi;

    move-object/from16 p1, v4

    iget-boolean v4, v1, Lcom/google/android/gms/internal/ads/De;->Zo:Z

    move-object/from16 v27, v9

    iget-boolean v9, v1, Lcom/google/android/gms/internal/ads/De;->tp:Z

    move-object/from16 v16, v11

    iget-object v11, v1, Lcom/google/android/gms/internal/ads/De;->j6:Lcom/google/android/gms/internal/ads/zzasi;

    iget-object v11, v11, Lcom/google/android/gms/internal/ads/zzasi;->er:Lcom/google/android/gms/internal/ads/zzacp;

    move-object/from16 v17, v11

    iget-object v11, v1, Lcom/google/android/gms/internal/ads/De;->j6:Lcom/google/android/gms/internal/ads/zzasi;

    iget-object v11, v11, Lcom/google/android/gms/internal/ads/zzasi;->J8:Ljava/util/List;

    move-object/from16 v18, v11

    iget-object v11, v1, Lcom/google/android/gms/internal/ads/De;->j6:Lcom/google/android/gms/internal/ads/zzasi;

    iget-object v11, v11, Lcom/google/android/gms/internal/ads/zzasi;->yS:Ljava/util/List;

    move-object/from16 v19, v11

    iget-object v11, v1, Lcom/google/android/gms/internal/ads/De;->j6:Lcom/google/android/gms/internal/ads/zzasi;

    iget-object v11, v11, Lcom/google/android/gms/internal/ads/zzasi;->sy:Ljava/util/List;

    move-object/from16 v28, v2

    iget-boolean v2, v1, Lcom/google/android/gms/internal/ads/De;->Ws:Z
    :try_end_cc
    .catchall {:try_start_8c .. :try_end_cc} :catchall_170

    move-object/from16 v25, v11

    move-object/from16 v22, v17

    move-object/from16 v23, v18

    move-object/from16 v24, v19

    move-object v11, v14

    move-object/from16 v17, v13

    move-object v13, v5

    move-object/from16 v29, v10

    move-object v10, v14

    move-object/from16 v14, v17

    move-object/from16 v30, v15

    move-object/from16 v15, v16

    move-object/from16 v16, v8

    move-object/from16 v17, v6

    move-object/from16 v18, v3

    move-object/from16 v19, v7

    move/from16 v20, v4

    move/from16 v21, v9

    move/from16 v26, v2

    :try_start_ef
    invoke-direct/range {v11 .. v26}, Lcom/google/android/gms/internal/ads/te;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ads/Ge;Lcom/google/android/gms/internal/ads/qe;Lcom/google/android/gms/internal/ads/pe;Lcom/google/android/gms/internal/ads/zzwb;Lcom/google/android/gms/internal/ads/zzwf;Lcom/google/android/gms/internal/ads/zzbbi;ZZLcom/google/android/gms/internal/ads/zzacp;Ljava/util/List;Ljava/util/List;Ljava/util/List;Z)V

    iput-object v10, v1, Lcom/google/android/gms/internal/ads/De;->J0:Lcom/google/android/gms/internal/ads/te;

    monitor-exit v30
    :try_end_f5
    .catchall {:try_start_ef .. :try_end_f5} :catchall_16e

    iget-wide v6, v1, Lcom/google/android/gms/internal/ads/De;->VH:J

    iget-wide v11, v1, Lcom/google/android/gms/internal/ads/De;->gn:J

    invoke-virtual {v10, v6, v7, v11, v12}, Lcom/google/android/gms/internal/ads/te;->j6(JJ)Lcom/google/android/gms/internal/ads/we;

    move-result-object v2

    iget-object v4, v1, Lcom/google/android/gms/internal/ads/De;->J8:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v4, v2, Lcom/google/android/gms/internal/ads/we;->j6:I

    if-nez v4, :cond_142

    const-string v3, "Adapter succeeded."

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;)V

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/De;->u7:Lcom/google/android/gms/internal/ads/D;

    const-string v4, "mediation_network_succeed"

    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/internal/ads/D;->j6(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_125

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/De;->u7:Lcom/google/android/gms/internal/ads/D;

    const-string v4, "mediation_networks_fail"

    const-string v5, ","

    invoke-static {v5, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Lcom/google/android/gms/internal/ads/D;->j6(Ljava/lang/String;Ljava/lang/String;)V

    :cond_125
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/De;->u7:Lcom/google/android/gms/internal/ads/D;

    const/4 v6, 0x1

    new-array v3, v6, [Ljava/lang/String;

    const-string v4, "mls"

    const/4 v7, 0x0

    aput-object v4, v3, v7

    move-object/from16 v9, v29

    invoke-virtual {v0, v9, v3}, Lcom/google/android/gms/internal/ads/D;->j6(Lcom/google/android/gms/internal/ads/A;[Ljava/lang/String;)Z

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/De;->u7:Lcom/google/android/gms/internal/ads/D;

    new-array v3, v6, [Ljava/lang/String;

    const-string v4, "ttm"

    aput-object v4, v3, v7

    move-object/from16 v10, v28

    invoke-virtual {v0, v10, v3}, Lcom/google/android/gms/internal/ads/D;->j6(Lcom/google/android/gms/internal/ads/A;[Ljava/lang/String;)Z

    return-object v2

    :cond_142
    move-object/from16 v10, v28

    move-object/from16 v9, v29

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v5, v1, Lcom/google/android/gms/internal/ads/De;->u7:Lcom/google/android/gms/internal/ads/D;

    new-array v11, v6, [Ljava/lang/String;

    const-string v6, "mlf"

    aput-object v6, v11, v7

    invoke-virtual {v5, v9, v11}, Lcom/google/android/gms/internal/ads/D;->j6(Lcom/google/android/gms/internal/ads/A;[Ljava/lang/String;)Z

    iget-object v5, v2, Lcom/google/android/gms/internal/ads/we;->FH:Lcom/google/android/gms/internal/ads/Je;

    if-eqz v5, :cond_164

    sget-object v5, Lcom/google/android/gms/internal/ads/Nk;->j6:Landroid/os/Handler;

    new-instance v6, Lcom/google/android/gms/internal/ads/Ee;

    invoke-direct {v6, v1, v2}, Lcom/google/android/gms/internal/ads/Ee;-><init>(Lcom/google/android/gms/internal/ads/De;Lcom/google/android/gms/internal/ads/we;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_164
    move v5, v4

    move-object v2, v10

    move-object/from16 v9, v27

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object/from16 v4, p1

    goto/16 :goto_77

    :catchall_16e
    move-exception v0

    goto :goto_173

    :catchall_170
    move-exception v0

    move-object/from16 v30, v15

    :goto_173
    move-object/from16 v15, v30

    :goto_175
    :try_start_175
    monitor-exit v15
    :try_end_176
    .catchall {:try_start_175 .. :try_end_176} :catchall_177

    throw v0

    :catchall_177
    move-exception v0

    goto :goto_175

    :cond_179
    const/4 v7, 0x1

    goto/16 :goto_48

    :cond_17c
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_18f

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/De;->u7:Lcom/google/android/gms/internal/ads/D;

    const-string v3, "mediation_networks_fail"

    const-string v4, ","

    invoke-static {v4, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/internal/ads/D;->j6(Ljava/lang/String;Ljava/lang/String;)V

    :cond_18f
    sget-object v0, Lcom/google/android/gms/internal/ads/p;->X7:Lcom/google/android/gms/internal/ads/e;

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->v5()Lcom/google/android/gms/internal/ads/m;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/m;->j6(Lcom/google/android/gms/internal/ads/e;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1a7

    new-instance v0, Lcom/google/android/gms/internal/ads/we;

    invoke-direct {v0, v5}, Lcom/google/android/gms/internal/ads/we;-><init>(I)V

    return-object v0

    :cond_1a7
    new-instance v0, Lcom/google/android/gms/internal/ads/we;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ads/we;-><init>(I)V

    return-object v0
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

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/De;->J8:Ljava/util/List;

    return-object v0
.end method
