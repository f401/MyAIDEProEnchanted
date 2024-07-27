.class public final Lcom/google/android/gms/internal/ads/Fg;
.super Lcom/google/android/gms/internal/ads/vg;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zh;
.end annotation


# instance fields
.field private EQ:Lcom/google/android/gms/internal/ads/oe;

.field protected J0:Lcom/google/android/gms/internal/ads/we;

.field private final J8:Lcom/google/android/gms/internal/ads/D;

.field private QX:Z

.field private final Ws:Lcom/google/android/gms/internal/ads/Mo;

.field private tp:Lcom/google/android/gms/internal/ads/Ge;

.field private we:Lcom/google/android/gms/internal/ads/qe;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/lk;Lcom/google/android/gms/internal/ads/Ge;Lcom/google/android/gms/internal/ads/Ag;Lcom/google/android/gms/internal/ads/D;Lcom/google/android/gms/internal/ads/Mo;)V
    .registers 8

    invoke-direct {p0, p1, p2, p4}, Lcom/google/android/gms/internal/ads/vg;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/lk;Lcom/google/android/gms/internal/ads/Ag;)V

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/Fg;->tp:Lcom/google/android/gms/internal/ads/Ge;

    iget-object v0, p2, Lcom/google/android/gms/internal/ads/lk;->FH:Lcom/google/android/gms/internal/ads/qe;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Fg;->we:Lcom/google/android/gms/internal/ads/qe;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/Fg;->J8:Lcom/google/android/gms/internal/ads/D;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/Fg;->Ws:Lcom/google/android/gms/internal/ads/Mo;

    return-void
.end method

.method static synthetic j6(Lcom/google/android/gms/internal/ads/Fg;)Lcom/google/android/gms/internal/ads/Mo;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Fg;->Ws:Lcom/google/android/gms/internal/ads/Mo;

    return-object v0
.end method

.method static synthetic j6(Lcom/google/android/gms/internal/ads/Fg;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/Fg;->QX:Z

    return p1
.end method


# virtual methods
.method protected final DW(I)Lcom/google/android/gms/internal/ads/kk;
    .registers 51

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/vg;->gn:Lcom/google/android/gms/internal/ads/lk;

    iget-object v4, v4, Lcom/google/android/gms/internal/ads/lk;->j6:Lcom/google/android/gms/internal/ads/zzasi;

    iget-object v5, v4, Lcom/google/android/gms/internal/ads/zzasi;->FH:Lcom/google/android/gms/internal/ads/zzwb;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/Fg;->Ws:Lcom/google/android/gms/internal/ads/Mo;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/vg;->u7:Lcom/google/android/gms/internal/ads/zzasm;

    iget-object v7, v8, Lcom/google/android/gms/internal/ads/zzasm;->v5:Ljava/util/List;

    iget-object v9, v8, Lcom/google/android/gms/internal/ads/zzasm;->VH:Ljava/util/List;

    iget-object v10, v8, Lcom/google/android/gms/internal/ads/zzasm;->EQ:Ljava/util/List;

    iget v11, v8, Lcom/google/android/gms/internal/ads/zzasm;->J0:I

    iget-wide v12, v8, Lcom/google/android/gms/internal/ads/zzasm;->we:J

    iget-object v14, v4, Lcom/google/android/gms/internal/ads/zzasi;->u7:Ljava/lang/String;

    iget-boolean v15, v8, Lcom/google/android/gms/internal/ads/zzasm;->u7:Z

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/Fg;->J0:Lcom/google/android/gms/internal/ads/we;

    if-eqz v4, :cond_0

    iget-object v0, v4, Lcom/google/android/gms/internal/ads/we;->DW:Lcom/google/android/gms/internal/ads/pe;

    move-object/from16 v16, v0

    :goto_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/Fg;->J0:Lcom/google/android/gms/internal/ads/we;

    if-eqz v4, :cond_1

    iget-object v0, v4, Lcom/google/android/gms/internal/ads/we;->FH:Lcom/google/android/gms/internal/ads/Je;

    move-object/from16 v17, v0

    :goto_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/Fg;->J0:Lcom/google/android/gms/internal/ads/we;

    if-eqz v4, :cond_2

    iget-object v0, v4, Lcom/google/android/gms/internal/ads/we;->Hw:Ljava/lang/String;

    move-object/from16 v18, v0

    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/Fg;->we:Lcom/google/android/gms/internal/ads/qe;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/Fg;->J0:Lcom/google/android/gms/internal/ads/we;

    if-eqz v4, :cond_3

    iget-object v0, v4, Lcom/google/android/gms/internal/ads/we;->v5:Lcom/google/android/gms/internal/ads/se;

    move-object/from16 v20, v0

    :goto_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/vg;->u7:Lcom/google/android/gms/internal/ads/zzasm;

    iget-wide v0, v4, Lcom/google/android/gms/internal/ads/zzasm;->tp:J

    move-wide/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/vg;->gn:Lcom/google/android/gms/internal/ads/lk;

    iget-object v0, v8, Lcom/google/android/gms/internal/ads/lk;->Hw:Lcom/google/android/gms/internal/ads/zzwf;

    move-object/from16 v23, v0

    iget-wide v0, v4, Lcom/google/android/gms/internal/ads/zzasm;->gn:J

    move-wide/from16 v24, v0

    iget-wide v0, v8, Lcom/google/android/gms/internal/ads/lk;->Zo:J

    move-wide/from16 v26, v0

    iget-wide v0, v4, Lcom/google/android/gms/internal/ads/zzasm;->Ws:J

    move-wide/from16 v28, v0

    iget-object v0, v4, Lcom/google/android/gms/internal/ads/zzasm;->QX:Ljava/lang/String;

    move-object/from16 v30, v0

    iget-object v0, v8, Lcom/google/android/gms/internal/ads/lk;->gn:Lorg/json/JSONObject;

    move-object/from16 v31, v0

    iget-object v0, v4, Lcom/google/android/gms/internal/ads/zzasm;->P8:Lcom/google/android/gms/internal/ads/zzawd;

    move-object/from16 v33, v0

    iget-object v0, v4, Lcom/google/android/gms/internal/ads/zzasm;->ei:Ljava/util/List;

    move-object/from16 v34, v0

    iget-object v0, v4, Lcom/google/android/gms/internal/ads/zzasm;->nw:Ljava/util/List;

    move-object/from16 v35, v0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/Fg;->we:Lcom/google/android/gms/internal/ads/qe;

    if-eqz v4, :cond_4

    iget-boolean v0, v4, Lcom/google/android/gms/internal/ads/qe;->Ws:Z

    move/from16 v36, v0

    :goto_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/vg;->u7:Lcom/google/android/gms/internal/ads/zzasm;

    iget-object v0, v4, Lcom/google/android/gms/internal/ads/zzasm;->KD:Lcom/google/android/gms/internal/ads/zzaso;

    move-object/from16 v37, v0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/Fg;->EQ:Lcom/google/android/gms/internal/ads/oe;

    if-eqz v4, :cond_e

    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/oe;->j6()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_5

    const-string v38, ""

    :goto_5
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/vg;->u7:Lcom/google/android/gms/internal/ads/zzasm;

    iget-object v0, v8, Lcom/google/android/gms/internal/ads/zzasm;->sh:Ljava/util/List;

    move-object/from16 v39, v0

    iget-object v0, v8, Lcom/google/android/gms/internal/ads/zzasm;->ef:Ljava/lang/String;

    move-object/from16 v40, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/vg;->gn:Lcom/google/android/gms/internal/ads/lk;

    move-object/from16 v43, v0

    new-instance v4, Lcom/google/android/gms/internal/ads/kk;

    const/16 v32, 0x0

    move-object/from16 v0, v43

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/lk;->u7:Lcom/google/android/gms/internal/ads/YF;

    move-object/from16 v41, v0

    iget-boolean v0, v8, Lcom/google/android/gms/internal/ads/zzasm;->Mz:Z

    move/from16 v42, v0

    move-object/from16 v0, v43

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/lk;->tp:Z

    move/from16 v43, v0

    iget-boolean v0, v8, Lcom/google/android/gms/internal/ads/zzasm;->ca:Z

    move/from16 v44, v0

    iget-object v0, v8, Lcom/google/android/gms/internal/ads/zzasm;->x9:Ljava/util/List;

    move-object/from16 v45, v0

    iget-boolean v0, v8, Lcom/google/android/gms/internal/ads/zzasm;->Qq:Z

    move/from16 v46, v0

    iget-object v0, v8, Lcom/google/android/gms/internal/ads/zzasm;->sy:Ljava/lang/String;

    move-object/from16 v47, v0

    iget-boolean v0, v8, Lcom/google/android/gms/internal/ads/zzasm;->lp:Z

    move/from16 v48, v0

    move/from16 v8, p1

    invoke-direct/range {v4 .. v48}, Lcom/google/android/gms/internal/ads/kk;-><init>(Lcom/google/android/gms/internal/ads/zzwb;Lcom/google/android/gms/internal/ads/Mo;Ljava/util/List;ILjava/util/List;Ljava/util/List;IJLjava/lang/String;ZLcom/google/android/gms/internal/ads/pe;Lcom/google/android/gms/internal/ads/Je;Ljava/lang/String;Lcom/google/android/gms/internal/ads/qe;Lcom/google/android/gms/internal/ads/se;JLcom/google/android/gms/internal/ads/zzwf;JJJLjava/lang/String;Lorg/json/JSONObject;Lcom/google/android/gms/internal/ads/ka;Lcom/google/android/gms/internal/ads/zzawd;Ljava/util/List;Ljava/util/List;ZLcom/google/android/gms/internal/ads/zzaso;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/google/android/gms/internal/ads/YF;ZZZLjava/util/List;ZLjava/lang/String;Z)V

    return-object v4

    :cond_0
    const/16 v16, 0x0

    goto/16 :goto_0

    :cond_1
    const/16 v17, 0x0

    goto/16 :goto_1

    :cond_2
    const-class v4, Lcom/google/ads/mediation/admob/AdMobAdapter;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v18

    goto/16 :goto_2

    :cond_3
    const/16 v20, 0x0

    goto/16 :goto_3

    :cond_4
    const/16 v36, 0x0

    goto :goto_4

    :cond_5
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v32

    const-string v8, ""

    :goto_6
    invoke-interface/range {v32 .. v32}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-interface/range {v32 .. v32}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/ads/we;

    if-eqz v4, :cond_c

    iget-object v0, v4, Lcom/google/android/gms/internal/ads/we;->DW:Lcom/google/android/gms/internal/ads/pe;

    move-object/from16 v38, v0

    if-eqz v38, :cond_c

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/pe;->Hw:Ljava/lang/String;

    move-object/from16 v38, v0

    invoke-static/range {v38 .. v38}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v38

    if-nez v38, :cond_c

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v38

    iget-object v8, v4, Lcom/google/android/gms/internal/ads/we;->DW:Lcom/google/android/gms/internal/ads/pe;

    iget-object v0, v8, Lcom/google/android/gms/internal/ads/pe;->Hw:Ljava/lang/String;

    move-object/from16 v39, v0

    iget v0, v4, Lcom/google/android/gms/internal/ads/we;->j6:I

    move/from16 v40, v0

    const/4 v8, -0x1

    move/from16 v0, v40

    if-eq v0, v8, :cond_b

    if-eqz v40, :cond_a

    const/4 v8, 0x1

    move/from16 v0, v40

    if-eq v0, v8, :cond_9

    const/4 v8, 0x3

    move/from16 v0, v40

    if-eq v0, v8, :cond_8

    const/4 v8, 0x4

    move/from16 v0, v40

    if-eq v0, v8, :cond_7

    const/4 v8, 0x5

    const/16 v41, 0x5

    move/from16 v0, v40

    move/from16 v1, v41

    if-eq v0, v1, :cond_6

    const/4 v8, 0x6

    :cond_6
    :goto_7
    iget-wide v0, v4, Lcom/google/android/gms/internal/ads/we;->VH:J

    move-wide/from16 v40, v0

    invoke-static/range {v39 .. v39}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    new-instance v42, Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x21

    move-object/from16 v0, v42

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object/from16 v0, v42

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "."

    move-object/from16 v0, v42

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, v42

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "."

    move-object/from16 v0, v42

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, v42

    move-wide/from16 v1, v40

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static/range {v38 .. v38}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/String;->length()I

    move-result v39

    add-int/lit8 v39, v39, 0x1

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/String;->length()I

    move-result v40

    add-int v39, v39, v40

    move/from16 v0, v39

    invoke-direct {v8, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object/from16 v0, v38

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_"

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_8
    move-object v8, v4

    goto/16 :goto_6

    :cond_7
    const/4 v8, 0x3

    goto :goto_7

    :cond_8
    const/4 v8, 0x2

    goto :goto_7

    :cond_9
    const/4 v8, 0x1

    goto :goto_7

    :cond_a
    const/4 v8, 0x0

    goto :goto_7

    :cond_b
    const/4 v8, 0x4

    goto :goto_7

    :cond_c
    move-object v4, v8

    goto :goto_8

    :cond_d
    const/4 v4, 0x0

    const/16 v32, 0x0

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v38

    add-int/lit8 v38, v38, -0x1

    move/from16 v0, v32

    move/from16 v1, v38

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v32

    move/from16 v0, v32

    invoke-virtual {v8, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v38

    goto/16 :goto_5

    :cond_e
    const/16 v38, 0x0

    goto/16 :goto_5
.end method

.method public final DW()V
    .registers 3

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/vg;->VH:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-super {p0}, Lcom/google/android/gms/internal/ads/vg;->DW()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Fg;->EQ:Lcom/google/android/gms/internal/ads/oe;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Fg;->EQ:Lcom/google/android/gms/internal/ads/oe;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/oe;->cancel()V

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

.method protected final j6(J)V
    .registers 18

    iget-object v14, p0, Lcom/google/android/gms/internal/ads/vg;->VH:Ljava/lang/Object;

    monitor-enter v14

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Fg;->we:Lcom/google/android/gms/internal/ads/qe;

    iget v0, v0, Lcom/google/android/gms/internal/ads/qe;->J0:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    new-instance v0, Lcom/google/android/gms/internal/ads/Ae;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/vg;->v5:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/vg;->gn:Lcom/google/android/gms/internal/ads/lk;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/lk;->j6:Lcom/google/android/gms/internal/ads/zzasi;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/Fg;->tp:Lcom/google/android/gms/internal/ads/Ge;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/Fg;->we:Lcom/google/android/gms/internal/ads/qe;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/vg;->u7:Lcom/google/android/gms/internal/ads/zzasm;

    iget-boolean v5, v5, Lcom/google/android/gms/internal/ads/zzasm;->U2:Z

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/vg;->u7:Lcom/google/android/gms/internal/ads/zzasm;

    iget-boolean v6, v6, Lcom/google/android/gms/internal/ads/zzasm;->vy:Z

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/vg;->u7:Lcom/google/android/gms/internal/ads/zzasm;

    iget-object v7, v7, Lcom/google/android/gms/internal/ads/zzasm;->dx:Ljava/lang/String;

    sget-object v8, Lcom/google/android/gms/internal/ads/p;->Ej:Lcom/google/android/gms/internal/ads/e;

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->v5()Lcom/google/android/gms/internal/ads/m;

    move-result-object v9

    invoke-virtual {v9, v8}, Lcom/google/android/gms/internal/ads/m;->j6(Lcom/google/android/gms/internal/ads/e;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    const/4 v12, 0x2

    iget-object v8, p0, Lcom/google/android/gms/internal/ads/vg;->gn:Lcom/google/android/gms/internal/ads/lk;

    iget-boolean v13, v8, Lcom/google/android/gms/internal/ads/lk;->tp:Z

    move-wide/from16 v8, p1

    invoke-direct/range {v0 .. v13}, Lcom/google/android/gms/internal/ads/Ae;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzasi;Lcom/google/android/gms/internal/ads/Ge;Lcom/google/android/gms/internal/ads/qe;ZZLjava/lang/String;JJIZ)V

    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Fg;->EQ:Lcom/google/android/gms/internal/ads/oe;

    monitor-exit v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v1, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Fg;->we:Lcom/google/android/gms/internal/ads/qe;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/qe;->j6:Ljava/util/List;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vg;->gn:Lcom/google/android/gms/internal/ads/lk;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/lk;->j6:Lcom/google/android/gms/internal/ads/zzasi;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzasi;->FH:Lcom/google/android/gms/internal/ads/zzwb;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzwb;->J0:Landroid/os/Bundle;

    if-eqz v0, :cond_2

    const-string v2, "com.google.ads.mediation.admob.AdMobAdapter"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v2, "_skipMediation"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    :goto_1
    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v2

    :cond_0
    :goto_2
    invoke-interface {v2}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/pe;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/pe;->FH:Ljava/util/List;

    const-string v3, "com.google.ads.mediation.admob.AdMobAdapter"

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {v2}, Ljava/util/ListIterator;->remove()V

    goto :goto_2

    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/vg;->v5:Landroid/content/Context;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vg;->gn:Lcom/google/android/gms/internal/ads/lk;

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/lk;->j6:Lcom/google/android/gms/internal/ads/zzasi;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/Fg;->tp:Lcom/google/android/gms/internal/ads/Ge;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/Fg;->we:Lcom/google/android/gms/internal/ads/qe;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vg;->u7:Lcom/google/android/gms/internal/ads/zzasm;

    iget-boolean v5, v0, Lcom/google/android/gms/internal/ads/zzasm;->U2:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vg;->u7:Lcom/google/android/gms/internal/ads/zzasm;

    iget-boolean v6, v0, Lcom/google/android/gms/internal/ads/zzasm;->vy:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vg;->u7:Lcom/google/android/gms/internal/ads/zzasm;

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzasm;->dx:Ljava/lang/String;

    sget-object v8, Lcom/google/android/gms/internal/ads/p;->Ej:Lcom/google/android/gms/internal/ads/e;

    new-instance v0, Lcom/google/android/gms/internal/ads/De;

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->v5()Lcom/google/android/gms/internal/ads/m;

    move-result-object v9

    invoke-virtual {v9, v8}, Lcom/google/android/gms/internal/ads/m;->j6(Lcom/google/android/gms/internal/ads/e;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    iget-object v12, p0, Lcom/google/android/gms/internal/ads/Fg;->J8:Lcom/google/android/gms/internal/ads/D;

    iget-object v8, p0, Lcom/google/android/gms/internal/ads/vg;->gn:Lcom/google/android/gms/internal/ads/lk;

    iget-boolean v13, v8, Lcom/google/android/gms/internal/ads/lk;->tp:Z

    move-wide/from16 v8, p1

    invoke-direct/range {v0 .. v13}, Lcom/google/android/gms/internal/ads/De;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzasi;Lcom/google/android/gms/internal/ads/Ge;Lcom/google/android/gms/internal/ads/qe;ZZLjava/lang/String;JJLcom/google/android/gms/internal/ads/D;Z)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Fg;->EQ:Lcom/google/android/gms/internal/ads/oe;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/oe;->j6(Ljava/util/List;)Lcom/google/android/gms/internal/ads/we;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Fg;->J0:Lcom/google/android/gms/internal/ads/we;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Fg;->J0:Lcom/google/android/gms/internal/ads/we;

    iget v1, v0, Lcom/google/android/gms/internal/ads/we;->j6:I

    if-eqz v1, :cond_5

    const/4 v0, 0x1

    if-eq v1, v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v2, 0x28

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Unexpected mediation result: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v1, Lcom/google/android/gms/internal/ads/yg;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/google/android/gms/internal/ads/yg;-><init>(Ljava/lang/String;I)V

    throw v1

    :cond_4
    new-instance v0, Lcom/google/android/gms/internal/ads/yg;

    const-string v1, "No fill from any mediation ad networks."

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/yg;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_5
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/we;->DW:Lcom/google/android/gms/internal/ads/pe;

    if-eqz v0, :cond_6

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/pe;->Ws:Ljava/lang/String;

    if-eqz v0, :cond_6

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    sget-object v1, Lcom/google/android/gms/internal/ads/Nk;->j6:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/gms/internal/ads/Gg;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/internal/ads/Gg;-><init>(Lcom/google/android/gms/internal/ads/Fg;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const-wide/16 v2, 0xa

    :try_start_2
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/vg;->VH:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/Fg;->QX:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Fg;->Ws:Lcom/google/android/gms/internal/ads/Mo;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/Mo;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_7

    monitor-exit v1

    :cond_6
    return-void

    :cond_7
    new-instance v0, Lcom/google/android/gms/internal/ads/yg;

    const-string v2, "Assets not loaded, web view is destroyed"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Lcom/google/android/gms/internal/ads/yg;-><init>(Ljava/lang/String;I)V

    throw v0

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    :cond_8
    :try_start_4
    new-instance v0, Lcom/google/android/gms/internal/ads/yg;

    const-string v2, "View could not be prepared"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Lcom/google/android/gms/internal/ads/yg;-><init>(Ljava/lang/String;I)V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catch_0
    move-exception v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x26

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Interrupted while waiting for latch : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Lcom/google/android/gms/internal/ads/yg;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/yg;-><init>(Ljava/lang/String;I)V

    throw v0
.end method
