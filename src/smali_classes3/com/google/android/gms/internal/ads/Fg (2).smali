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
    .registers 7

    invoke-direct {p0, p1, p2, p4}, Lcom/google/android/gms/internal/ads/vg;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/lk;Lcom/google/android/gms/internal/ads/Ag;)V

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/Fg;->tp:Lcom/google/android/gms/internal/ads/Ge;

    iget-object p1, p2, Lcom/google/android/gms/internal/ads/lk;->FH:Lcom/google/android/gms/internal/ads/qe;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Fg;->we:Lcom/google/android/gms/internal/ads/qe;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/Fg;->J8:Lcom/google/android/gms/internal/ads/D;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/Fg;->Ws:Lcom/google/android/gms/internal/ads/Mo;

    return-void
.end method

.method static synthetic j6(Lcom/google/android/gms/internal/ads/Fg;)Lcom/google/android/gms/internal/ads/Mo;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/Fg;->Ws:Lcom/google/android/gms/internal/ads/Mo;

    return-object p0
.end method

.method static synthetic j6(Lcom/google/android/gms/internal/ads/Fg;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/Fg;->QX:Z

    return p1
.end method


# virtual methods
.method protected final DW(I)Lcom/google/android/gms/internal/ads/kk;
    .registers 55

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/vg;->gn:Lcom/google/android/gms/internal/ads/lk;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/lk;->j6:Lcom/google/android/gms/internal/ads/zzasi;

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzasi;->FH:Lcom/google/android/gms/internal/ads/zzwb;

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/Fg;->Ws:Lcom/google/android/gms/internal/ads/Mo;

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/vg;->u7:Lcom/google/android/gms/internal/ads/zzasm;

    iget-object v5, v2, Lcom/google/android/gms/internal/ads/zzasm;->v5:Ljava/util/List;

    iget-object v7, v2, Lcom/google/android/gms/internal/ads/zzasm;->VH:Ljava/util/List;

    iget-object v8, v2, Lcom/google/android/gms/internal/ads/zzasm;->EQ:Ljava/util/List;

    iget v9, v2, Lcom/google/android/gms/internal/ads/zzasm;->J0:I

    iget-wide v10, v2, Lcom/google/android/gms/internal/ads/zzasm;->we:J

    iget-object v12, v1, Lcom/google/android/gms/internal/ads/zzasi;->u7:Ljava/lang/String;

    iget-boolean v13, v2, Lcom/google/android/gms/internal/ads/zzasm;->u7:Z

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/Fg;->J0:Lcom/google/android/gms/internal/ads/we;

    if-eqz v1, :cond_22

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/we;->DW:Lcom/google/android/gms/internal/ads/pe;

    move-object v14, v1

    goto :goto_23

    :cond_22
    const/4 v14, 0x0

    :goto_23
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/Fg;->J0:Lcom/google/android/gms/internal/ads/we;

    if-eqz v1, :cond_2b

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/we;->FH:Lcom/google/android/gms/internal/ads/Je;

    move-object v15, v1

    goto :goto_2c

    :cond_2b
    const/4 v15, 0x0

    :goto_2c
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/Fg;->J0:Lcom/google/android/gms/internal/ads/we;

    if-eqz v1, :cond_33

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/we;->Hw:Ljava/lang/String;

    goto :goto_39

    :cond_33
    const-class v1, Lcom/google/ads/mediation/admob/AdMobAdapter;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    :goto_39
    move-object/from16 v16, v1

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/Fg;->we:Lcom/google/android/gms/internal/ads/qe;

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/Fg;->J0:Lcom/google/android/gms/internal/ads/we;

    if-eqz v6, :cond_46

    iget-object v6, v6, Lcom/google/android/gms/internal/ads/we;->v5:Lcom/google/android/gms/internal/ads/se;

    move-object/from16 v18, v6

    goto :goto_48

    :cond_46
    const/16 v18, 0x0

    :goto_48
    iget-object v6, v0, Lcom/google/android/gms/internal/ads/vg;->u7:Lcom/google/android/gms/internal/ads/zzasm;

    move-object/from16 v17, v14

    move-object/from16 v19, v15

    iget-wide v14, v6, Lcom/google/android/gms/internal/ads/zzasm;->tp:J

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/vg;->gn:Lcom/google/android/gms/internal/ads/lk;

    move-object/from16 v21, v1

    iget-object v1, v2, Lcom/google/android/gms/internal/ads/lk;->Hw:Lcom/google/android/gms/internal/ads/zzwf;

    move-wide/from16 v22, v14

    iget-wide v14, v6, Lcom/google/android/gms/internal/ads/zzasm;->gn:J

    move-wide/from16 v24, v14

    iget-wide v14, v2, Lcom/google/android/gms/internal/ads/lk;->Zo:J

    move-wide/from16 v26, v14

    iget-wide v14, v6, Lcom/google/android/gms/internal/ads/zzasm;->Ws:J

    move-object/from16 v28, v1

    iget-object v1, v6, Lcom/google/android/gms/internal/ads/zzasm;->QX:Ljava/lang/String;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/lk;->gn:Lorg/json/JSONObject;

    move-object/from16 v29, v1

    iget-object v1, v6, Lcom/google/android/gms/internal/ads/zzasm;->P8:Lcom/google/android/gms/internal/ads/zzawd;

    move-object/from16 v31, v1

    iget-object v1, v6, Lcom/google/android/gms/internal/ads/zzasm;->ei:Ljava/util/List;

    iget-object v6, v6, Lcom/google/android/gms/internal/ads/zzasm;->nw:Ljava/util/List;

    move-object/from16 v30, v2

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/Fg;->we:Lcom/google/android/gms/internal/ads/qe;

    move-object/from16 v32, v6

    if-eqz v2, :cond_7f

    iget-boolean v2, v2, Lcom/google/android/gms/internal/ads/qe;->Ws:Z

    move/from16 v34, v2

    goto :goto_81

    :cond_7f
    const/16 v34, 0x0

    :goto_81
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/vg;->u7:Lcom/google/android/gms/internal/ads/zzasm;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzasm;->KD:Lcom/google/android/gms/internal/ads/zzaso;

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/Fg;->EQ:Lcom/google/android/gms/internal/ads/oe;

    if-eqz v6, :cond_17a

    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/oe;->j6()Ljava/util/List;

    move-result-object v6

    const-string v20, ""

    if-nez v6, :cond_9f

    move-object/from16 v49, v1

    move-object/from16 v36, v2

    move-object/from16 v51, v12

    move/from16 v50, v13

    move-wide/from16 v47, v14

    move-object/from16 v1, v20

    goto/16 :goto_185

    :cond_9f
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-object/from16 v35, v20

    :goto_a5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    move-object/from16 v36, v2

    if-eqz v20, :cond_160

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v2, v20

    check-cast v2, Lcom/google/android/gms/internal/ads/we;

    if-eqz v2, :cond_14d

    move-object/from16 v20, v6

    iget-object v6, v2, Lcom/google/android/gms/internal/ads/we;->DW:Lcom/google/android/gms/internal/ads/pe;

    if-eqz v6, :cond_144

    iget-object v6, v6, Lcom/google/android/gms/internal/ads/pe;->Hw:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_144

    invoke-static/range {v35 .. v35}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    move-wide/from16 v47, v14

    iget-object v14, v2, Lcom/google/android/gms/internal/ads/we;->DW:Lcom/google/android/gms/internal/ads/pe;

    iget-object v14, v14, Lcom/google/android/gms/internal/ads/pe;->Hw:Ljava/lang/String;

    iget v15, v2, Lcom/google/android/gms/internal/ads/we;->j6:I

    move-object/from16 v49, v1

    const/4 v1, -0x1

    move/from16 v50, v13

    const/4 v13, 0x4

    if-eq v15, v1, :cond_f0

    if-eqz v15, :cond_ed

    const/4 v1, 0x1

    if-eq v15, v1, :cond_ea

    const/4 v1, 0x3

    if-eq v15, v1, :cond_e8

    if-eq v15, v13, :cond_f1

    const/4 v1, 0x5

    if-eq v15, v1, :cond_f1

    const/4 v1, 0x6

    goto :goto_f1

    :cond_e8
    const/4 v1, 0x2

    goto :goto_f1

    :cond_ea
    move-object v15, v12

    const/4 v1, 0x1

    goto :goto_f2

    :cond_ed
    move-object v15, v12

    const/4 v1, 0x0

    goto :goto_f2

    :cond_f0
    const/4 v1, 0x4

    :cond_f1
    :goto_f1
    move-object v15, v12

    :goto_f2
    iget-wide v12, v2, Lcom/google/android/gms/internal/ads/we;->VH:J

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    move-object/from16 v51, v15

    new-instance v15, Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x21

    invoke-direct {v15, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    const/4 v13, 0x1

    add-int/2addr v12, v13

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    add-int/2addr v12, v13

    invoke-direct {v2, v12}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v35, v1

    goto :goto_152

    :cond_144
    move-object/from16 v49, v1

    :goto_146
    move-object/from16 v51, v12

    move/from16 v50, v13

    move-wide/from16 v47, v14

    goto :goto_152

    :cond_14d
    move-object/from16 v49, v1

    move-object/from16 v20, v6

    goto :goto_146

    :goto_152
    move-object/from16 v6, v20

    move-object/from16 v2, v36

    move-wide/from16 v14, v47

    move-object/from16 v1, v49

    move/from16 v13, v50

    move-object/from16 v12, v51

    goto/16 :goto_a5

    :cond_160
    move-object/from16 v49, v1

    move-object/from16 v51, v12

    move/from16 v50, v13

    move-wide/from16 v47, v14

    invoke-virtual/range {v35 .. v35}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    const/4 v2, 0x0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    move-object/from16 v6, v35

    invoke-virtual {v6, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_185

    :cond_17a
    move-object/from16 v49, v1

    move-object/from16 v36, v2

    move-object/from16 v51, v12

    move/from16 v50, v13

    move-wide/from16 v47, v14

    const/4 v1, 0x0

    :goto_185
    iget-object v6, v0, Lcom/google/android/gms/internal/ads/vg;->u7:Lcom/google/android/gms/internal/ads/zzasm;

    iget-object v2, v6, Lcom/google/android/gms/internal/ads/zzasm;->sh:Ljava/util/List;

    move-object/from16 v37, v2

    iget-object v2, v6, Lcom/google/android/gms/internal/ads/zzasm;->ef:Ljava/lang/String;

    move-object/from16 v38, v2

    iget-object v12, v0, Lcom/google/android/gms/internal/ads/vg;->gn:Lcom/google/android/gms/internal/ads/lk;

    new-instance v52, Lcom/google/android/gms/internal/ads/kk;

    move-object/from16 v33, v30

    move-object/from16 v35, v36

    move-object/from16 v2, v52

    const/16 v30, 0x0

    iget-object v13, v12, Lcom/google/android/gms/internal/ads/lk;->u7:Lcom/google/android/gms/internal/ads/YF;

    move-object/from16 v39, v13

    iget-boolean v13, v6, Lcom/google/android/gms/internal/ads/zzasm;->Mz:Z

    move/from16 v40, v13

    iget-boolean v12, v12, Lcom/google/android/gms/internal/ads/lk;->tp:Z

    move/from16 v41, v12

    iget-boolean v12, v6, Lcom/google/android/gms/internal/ads/zzasm;->ca:Z

    move/from16 v42, v12

    iget-object v12, v6, Lcom/google/android/gms/internal/ads/zzasm;->x9:Ljava/util/List;

    move-object/from16 v43, v12

    iget-boolean v12, v6, Lcom/google/android/gms/internal/ads/zzasm;->Qq:Z

    move/from16 v44, v12

    iget-object v12, v6, Lcom/google/android/gms/internal/ads/zzasm;->sy:Ljava/lang/String;

    move-object/from16 v45, v12

    iget-boolean v6, v6, Lcom/google/android/gms/internal/ads/zzasm;->lp:Z

    move/from16 v46, v6

    move-object/from16 v36, v32

    move/from16 v6, p1

    move-object/from16 v12, v51

    move/from16 v13, v50

    move-object/from16 v14, v17

    move-object/from16 v15, v19

    move-object/from16 v17, v21

    move-wide/from16 v19, v22

    move-object/from16 v21, v28

    move-wide/from16 v22, v24

    move-wide/from16 v24, v26

    move-wide/from16 v26, v47

    move-object/from16 v28, v29

    move-object/from16 v29, v33

    move-object/from16 v32, v49

    move-object/from16 v33, v36

    move-object/from16 v36, v1

    invoke-direct/range {v2 .. v46}, Lcom/google/android/gms/internal/ads/kk;-><init>(Lcom/google/android/gms/internal/ads/zzwb;Lcom/google/android/gms/internal/ads/Mo;Ljava/util/List;ILjava/util/List;Ljava/util/List;IJLjava/lang/String;ZLcom/google/android/gms/internal/ads/pe;Lcom/google/android/gms/internal/ads/Je;Ljava/lang/String;Lcom/google/android/gms/internal/ads/qe;Lcom/google/android/gms/internal/ads/se;JLcom/google/android/gms/internal/ads/zzwf;JJJLjava/lang/String;Lorg/json/JSONObject;Lcom/google/android/gms/internal/ads/ka;Lcom/google/android/gms/internal/ads/zzawd;Ljava/util/List;Ljava/util/List;ZLcom/google/android/gms/internal/ads/zzaso;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/google/android/gms/internal/ads/YF;ZZZLjava/util/List;ZLjava/lang/String;Z)V

    return-object v52
.end method

.method public final DW()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vg;->VH:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    invoke-super {p0}, Lcom/google/android/gms/internal/ads/vg;->DW()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Fg;->EQ:Lcom/google/android/gms/internal/ads/oe;

    if-eqz v1, :cond_d

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/oe;->cancel()V

    :cond_d
    monitor-exit v0

    return-void

    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v1
.end method

.method protected final j6(J)V
    .registers 34

    move-object/from16 v1, p0

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/vg;->VH:Ljava/lang/Object;

    monitor-enter v2

    :try_start_5
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/Fg;->we:Lcom/google/android/gms/internal/ads/qe;

    iget v0, v0, Lcom/google/android/gms/internal/ads/qe;->J0:I

    const/4 v3, -0x1

    if-eq v0, v3, :cond_43

    new-instance v0, Lcom/google/android/gms/internal/ads/Ae;

    iget-object v5, v1, Lcom/google/android/gms/internal/ads/vg;->v5:Landroid/content/Context;

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/vg;->gn:Lcom/google/android/gms/internal/ads/lk;

    iget-object v6, v3, Lcom/google/android/gms/internal/ads/lk;->j6:Lcom/google/android/gms/internal/ads/zzasi;

    iget-object v7, v1, Lcom/google/android/gms/internal/ads/Fg;->tp:Lcom/google/android/gms/internal/ads/Ge;

    iget-object v8, v1, Lcom/google/android/gms/internal/ads/Fg;->we:Lcom/google/android/gms/internal/ads/qe;

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/vg;->u7:Lcom/google/android/gms/internal/ads/zzasm;

    iget-boolean v9, v3, Lcom/google/android/gms/internal/ads/zzasm;->U2:Z

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/vg;->u7:Lcom/google/android/gms/internal/ads/zzasm;

    iget-boolean v10, v3, Lcom/google/android/gms/internal/ads/zzasm;->vy:Z

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/vg;->u7:Lcom/google/android/gms/internal/ads/zzasm;

    iget-object v11, v3, Lcom/google/android/gms/internal/ads/zzasm;->dx:Ljava/lang/String;

    sget-object v3, Lcom/google/android/gms/internal/ads/p;->Ej:Lcom/google/android/gms/internal/ads/e;

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->v5()Lcom/google/android/gms/internal/ads/m;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/m;->j6(Lcom/google/android/gms/internal/ads/e;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    const/16 v16, 0x2

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/vg;->gn:Lcom/google/android/gms/internal/ads/lk;

    iget-boolean v3, v3, Lcom/google/android/gms/internal/ads/lk;->tp:Z

    move-object v4, v0

    move-wide/from16 v12, p1

    move/from16 v17, v3

    invoke-direct/range {v4 .. v17}, Lcom/google/android/gms/internal/ads/Ae;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzasi;Lcom/google/android/gms/internal/ads/Ge;Lcom/google/android/gms/internal/ads/qe;ZZLjava/lang/String;JJIZ)V

    goto :goto_8b

    :cond_43
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/vg;->v5:Landroid/content/Context;

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/vg;->gn:Lcom/google/android/gms/internal/ads/lk;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/lk;->j6:Lcom/google/android/gms/internal/ads/zzasi;

    iget-object v4, v1, Lcom/google/android/gms/internal/ads/Fg;->tp:Lcom/google/android/gms/internal/ads/Ge;

    iget-object v5, v1, Lcom/google/android/gms/internal/ads/Fg;->we:Lcom/google/android/gms/internal/ads/qe;

    iget-object v6, v1, Lcom/google/android/gms/internal/ads/vg;->u7:Lcom/google/android/gms/internal/ads/zzasm;

    iget-boolean v6, v6, Lcom/google/android/gms/internal/ads/zzasm;->U2:Z

    iget-object v7, v1, Lcom/google/android/gms/internal/ads/vg;->u7:Lcom/google/android/gms/internal/ads/zzasm;

    iget-boolean v7, v7, Lcom/google/android/gms/internal/ads/zzasm;->vy:Z

    iget-object v8, v1, Lcom/google/android/gms/internal/ads/vg;->u7:Lcom/google/android/gms/internal/ads/zzasm;

    iget-object v8, v8, Lcom/google/android/gms/internal/ads/zzasm;->dx:Ljava/lang/String;

    sget-object v9, Lcom/google/android/gms/internal/ads/p;->Ej:Lcom/google/android/gms/internal/ads/e;

    new-instance v10, Lcom/google/android/gms/internal/ads/De;

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->v5()Lcom/google/android/gms/internal/ads/m;

    move-result-object v11

    invoke-virtual {v11, v9}, Lcom/google/android/gms/internal/ads/m;->j6(Lcom/google/android/gms/internal/ads/e;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v27

    iget-object v9, v1, Lcom/google/android/gms/internal/ads/Fg;->J8:Lcom/google/android/gms/internal/ads/D;

    iget-object v11, v1, Lcom/google/android/gms/internal/ads/vg;->gn:Lcom/google/android/gms/internal/ads/lk;

    iget-boolean v11, v11, Lcom/google/android/gms/internal/ads/lk;->tp:Z

    move-object/from16 v17, v10

    move-object/from16 v18, v0

    move-object/from16 v19, v3

    move-object/from16 v20, v4

    move-object/from16 v21, v5

    move/from16 v22, v6

    move/from16 v23, v7

    move-object/from16 v24, v8

    move-wide/from16 v25, p1

    move-object/from16 v29, v9

    move/from16 v30, v11

    invoke-direct/range {v17 .. v30}, Lcom/google/android/gms/internal/ads/De;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzasi;Lcom/google/android/gms/internal/ads/Ge;Lcom/google/android/gms/internal/ads/qe;ZZLjava/lang/String;JJLcom/google/android/gms/internal/ads/D;Z)V

    move-object v0, v10

    :goto_8b
    iput-object v0, v1, Lcom/google/android/gms/internal/ads/Fg;->EQ:Lcom/google/android/gms/internal/ads/oe;

    monitor-exit v2
    :try_end_8e
    .catchall {:try_start_5 .. :try_end_8e} :catchall_16c

    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/Fg;->we:Lcom/google/android/gms/internal/ads/qe;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/qe;->j6:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/vg;->gn:Lcom/google/android/gms/internal/ads/lk;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/lk;->j6:Lcom/google/android/gms/internal/ads/zzasi;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzasi;->FH:Lcom/google/android/gms/internal/ads/zzwb;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzwb;->J0:Landroid/os/Bundle;

    const/4 v3, 0x0

    if-eqz v2, :cond_b1

    const-string v4, "com.google.ads.mediation.admob.AdMobAdapter"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_b1

    const-string v4, "_skipMediation"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    goto :goto_b2

    :cond_b1
    const/4 v2, 0x0

    :goto_b2
    if-eqz v2, :cond_d2

    invoke-interface {v0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v2

    :cond_b8
    :goto_b8
    invoke-interface {v2}, Ljava/util/ListIterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_d2

    invoke-interface {v2}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/ads/pe;

    iget-object v4, v4, Lcom/google/android/gms/internal/ads/pe;->FH:Ljava/util/List;

    const-string v5, "com.google.ads.mediation.admob.AdMobAdapter"

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b8

    invoke-interface {v2}, Ljava/util/ListIterator;->remove()V

    goto :goto_b8

    :cond_d2
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/Fg;->EQ:Lcom/google/android/gms/internal/ads/oe;

    invoke-interface {v2, v0}, Lcom/google/android/gms/internal/ads/oe;->j6(Ljava/util/List;)Lcom/google/android/gms/internal/ads/we;

    move-result-object v0

    iput-object v0, v1, Lcom/google/android/gms/internal/ads/Fg;->J0:Lcom/google/android/gms/internal/ads/we;

    iget v2, v0, Lcom/google/android/gms/internal/ads/we;->j6:I

    const/4 v4, 0x1

    if-eqz v2, :cond_103

    if-eq v2, v4, :cond_fa

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v4, 0x28

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Unexpected mediation result: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v2, Lcom/google/android/gms/internal/ads/yg;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, v3}, Lcom/google/android/gms/internal/ads/yg;-><init>(Ljava/lang/String;I)V

    throw v2

    :cond_fa
    new-instance v0, Lcom/google/android/gms/internal/ads/yg;

    const-string v2, "No fill from any mediation ad networks."

    const/4 v3, 0x3

    invoke-direct {v0, v2, v3}, Lcom/google/android/gms/internal/ads/yg;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_103
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/we;->DW:Lcom/google/android/gms/internal/ads/pe;

    if-eqz v0, :cond_16b

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/pe;->Ws:Ljava/lang/String;

    if-eqz v0, :cond_16b

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v0, v4}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    sget-object v2, Lcom/google/android/gms/internal/ads/Nk;->j6:Landroid/os/Handler;

    new-instance v4, Lcom/google/android/gms/internal/ads/Gg;

    invoke-direct {v4, v1, v0}, Lcom/google/android/gms/internal/ads/Gg;-><init>(Lcom/google/android/gms/internal/ads/Fg;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v2, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :try_start_11a
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0xa

    invoke-virtual {v0, v4, v5, v2}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_121
    .catch Ljava/lang/InterruptedException; {:try_start_11a .. :try_end_121} :catch_145

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/vg;->VH:Ljava/lang/Object;

    monitor-enter v2

    :try_start_124
    iget-boolean v0, v1, Lcom/google/android/gms/internal/ads/Fg;->QX:Z

    if-eqz v0, :cond_13a

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/Fg;->Ws:Lcom/google/android/gms/internal/ads/Mo;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/Mo;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_132

    monitor-exit v2

    return-void

    :cond_132
    new-instance v0, Lcom/google/android/gms/internal/ads/yg;

    const-string v4, "Assets not loaded, web view is destroyed"

    invoke-direct {v0, v4, v3}, Lcom/google/android/gms/internal/ads/yg;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_13a
    new-instance v0, Lcom/google/android/gms/internal/ads/yg;

    const-string v4, "View could not be prepared"

    invoke-direct {v0, v4, v3}, Lcom/google/android/gms/internal/ads/yg;-><init>(Ljava/lang/String;I)V

    throw v0

    :catchall_142
    move-exception v0

    monitor-exit v2
    :try_end_144
    .catchall {:try_start_124 .. :try_end_144} :catchall_142

    throw v0

    :catch_145
    move-exception v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x26

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Interrupted while waiting for latch : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Lcom/google/android/gms/internal/ads/yg;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v3}, Lcom/google/android/gms/internal/ads/yg;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_16b
    return-void

    :catchall_16c
    move-exception v0

    :try_start_16d
    monitor-exit v2
    :try_end_16e
    .catchall {:try_start_16d .. :try_end_16e} :catchall_16c

    goto :goto_170

    :goto_16f
    throw v0

    :goto_170
    goto :goto_16f
.end method
