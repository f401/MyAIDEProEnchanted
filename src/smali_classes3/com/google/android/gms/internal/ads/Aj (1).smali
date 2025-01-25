.class public final Lcom/google/android/gms/internal/ads/Aj;
.super Lcom/google/android/gms/internal/ads/Ak;

# interfaces
.implements Lcom/google/android/gms/internal/ads/zj;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zh;
.end annotation


# instance fields
.field private final EQ:J

.field private final Hw:Lcom/google/android/gms/internal/ads/lk;

.field private final VH:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/tj;",
            ">;"
        }
    .end annotation
.end field

.field private final Zo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/android/gms/internal/ads/qj;",
            ">;"
        }
    .end annotation
.end field

.field private final gn:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final tp:Lcom/google/android/gms/internal/ads/Ti;

.field private final u7:Ljava/lang/Object;

.field private final v5:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/lk;Lcom/google/android/gms/internal/ads/Ti;)V
    .registers 11

    sget-object v0, Lcom/google/android/gms/internal/ads/p;->sE:Lcom/google/android/gms/internal/ads/e;

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->v5()Lcom/google/android/gms/internal/ads/m;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/m;->j6(Lcom/google/android/gms/internal/ads/e;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/Aj;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/lk;Lcom/google/android/gms/internal/ads/Ti;J)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/lk;Lcom/google/android/gms/internal/ads/Ti;J)V
    .registers 7

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/Ak;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Aj;->Zo:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Aj;->VH:Ljava/util/List;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Aj;->gn:Ljava/util/HashSet;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Aj;->u7:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Aj;->v5:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/Aj;->Hw:Lcom/google/android/gms/internal/ads/lk;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/Aj;->tp:Lcom/google/android/gms/internal/ads/Ti;

    iput-wide p4, p0, Lcom/google/android/gms/internal/ads/Aj;->EQ:J

    return-void
.end method

.method private final j6(ILjava/lang/String;Lcom/google/android/gms/internal/ads/pe;)Lcom/google/android/gms/internal/ads/kk;
    .registers 57

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/Aj;->Hw:Lcom/google/android/gms/internal/ads/lk;

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/lk;->j6:Lcom/google/android/gms/internal/ads/zzasi;

    iget-object v4, v2, Lcom/google/android/gms/internal/ads/zzasi;->FH:Lcom/google/android/gms/internal/ads/zzwb;

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/lk;->DW:Lcom/google/android/gms/internal/ads/zzasm;

    iget-object v6, v3, Lcom/google/android/gms/internal/ads/zzasm;->v5:Ljava/util/List;

    iget-object v8, v3, Lcom/google/android/gms/internal/ads/zzasm;->VH:Ljava/util/List;

    iget-object v9, v3, Lcom/google/android/gms/internal/ads/zzasm;->EQ:Ljava/util/List;

    iget v10, v3, Lcom/google/android/gms/internal/ads/zzasm;->J0:I

    iget-wide v11, v3, Lcom/google/android/gms/internal/ads/zzasm;->we:J

    iget-object v13, v2, Lcom/google/android/gms/internal/ads/zzasi;->u7:Ljava/lang/String;

    iget-boolean v14, v3, Lcom/google/android/gms/internal/ads/zzasm;->u7:Z

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/lk;->FH:Lcom/google/android/gms/internal/ads/qe;

    move-object v7, v6

    iget-wide v5, v3, Lcom/google/android/gms/internal/ads/zzasm;->tp:J

    iget-object v15, v1, Lcom/google/android/gms/internal/ads/lk;->Hw:Lcom/google/android/gms/internal/ads/zzwf;

    move-wide/from16 v16, v5

    iget-wide v5, v3, Lcom/google/android/gms/internal/ads/zzasm;->gn:J

    move-wide/from16 v18, v5

    iget-wide v5, v1, Lcom/google/android/gms/internal/ads/lk;->Zo:J

    move-wide/from16 v20, v5

    iget-wide v5, v3, Lcom/google/android/gms/internal/ads/zzasm;->Ws:J

    move-wide/from16 v22, v5

    iget-object v5, v3, Lcom/google/android/gms/internal/ads/zzasm;->QX:Ljava/lang/String;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/lk;->gn:Lorg/json/JSONObject;

    iget-object v6, v3, Lcom/google/android/gms/internal/ads/zzasm;->P8:Lcom/google/android/gms/internal/ads/zzawd;

    move-object/from16 v24, v5

    iget-object v5, v3, Lcom/google/android/gms/internal/ads/zzasm;->ei:Ljava/util/List;

    move-object/from16 v25, v5

    iget-object v5, v3, Lcom/google/android/gms/internal/ads/zzasm;->nw:Ljava/util/List;

    move-object/from16 v26, v5

    iget-boolean v5, v3, Lcom/google/android/gms/internal/ads/zzasm;->SI:Z

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzasm;->KD:Lcom/google/android/gms/internal/ads/zzaso;

    move-object/from16 v27, v3

    new-instance v3, Ljava/lang/StringBuilder;

    move/from16 v28, v5

    const-string v5, ""

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/Aj;->VH:Ljava/util/List;

    if-nez v5, :cond_62

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v34, v1

    move-object/from16 v36, v2

    move-object/from16 v37, v3

    move-object/from16 v32, v6

    move/from16 v35, v14

    move-object/from16 v33, v15

    goto/16 :goto_11e

    :cond_62
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_66
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v29

    const/16 v30, 0x1

    move-object/from16 v32, v6

    if-eqz v29, :cond_105

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v29

    move-object/from16 v6, v29

    check-cast v6, Lcom/google/android/gms/internal/ads/tj;

    if-eqz v6, :cond_ed

    move-object/from16 v29, v5

    iget-object v5, v6, Lcom/google/android/gms/internal/ads/tj;->DW:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_e8

    iget-object v5, v6, Lcom/google/android/gms/internal/ads/tj;->DW:Ljava/lang/String;

    move-object/from16 v33, v15

    iget v15, v6, Lcom/google/android/gms/internal/ads/tj;->FH:I

    move-object/from16 v34, v1

    const/4 v1, 0x3

    if-eq v15, v1, :cond_af

    const/4 v1, 0x4

    if-eq v15, v1, :cond_a9

    const/4 v1, 0x5

    if-eq v15, v1, :cond_a5

    const/4 v1, 0x6

    if-eq v15, v1, :cond_a1

    const/4 v1, 0x7

    move/from16 v35, v14

    if-eq v15, v1, :cond_9f

    const/4 v1, 0x6

    goto :goto_b2

    :cond_9f
    const/4 v1, 0x3

    goto :goto_b2

    :cond_a1
    move/from16 v35, v14

    const/4 v1, 0x0

    goto :goto_b2

    :cond_a5
    move/from16 v35, v14

    const/4 v1, 0x4

    goto :goto_b2

    :cond_a9
    const/16 v30, 0x2

    move/from16 v35, v14

    const/4 v1, 0x2

    goto :goto_b2

    :cond_af
    move/from16 v35, v14

    const/4 v1, 0x1

    :goto_b2
    iget-wide v14, v6, Lcom/google/android/gms/internal/ads/tj;->Hw:J

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->length()I

    move-result v30

    move-object/from16 v36, v2

    add-int/lit8 v2, v30, 0x21

    invoke-direct {v6, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_f7

    :cond_e8
    move-object/from16 v34, v1

    move-object/from16 v36, v2

    goto :goto_f3

    :cond_ed
    move-object/from16 v34, v1

    move-object/from16 v36, v2

    move-object/from16 v29, v5

    :goto_f3
    move/from16 v35, v14

    move-object/from16 v33, v15

    :goto_f7
    move-object/from16 v5, v29

    move-object/from16 v6, v32

    move-object/from16 v15, v33

    move-object/from16 v1, v34

    move/from16 v14, v35

    move-object/from16 v2, v36

    goto/16 :goto_66

    :cond_105
    move-object/from16 v34, v1

    move-object/from16 v36, v2

    move/from16 v35, v14

    move-object/from16 v33, v15

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {v3, v2, v1}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v37, v1

    :goto_11e
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/Aj;->Hw:Lcom/google/android/gms/internal/ads/lk;

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/lk;->DW:Lcom/google/android/gms/internal/ads/zzasm;

    new-instance v48, Lcom/google/android/gms/internal/ads/kk;

    move-object/from16 v49, v27

    move-object/from16 v3, v48

    const/4 v5, 0x0

    move-object/from16 v29, v24

    move-object/from16 v50, v25

    move-object/from16 v51, v26

    move/from16 v52, v28

    move-wide/from16 v25, v20

    move-wide/from16 v27, v22

    move-wide/from16 v20, v16

    move-wide/from16 v23, v18

    const/16 v16, 0x0

    const/16 v19, 0x0

    const/16 v31, 0x0

    iget-object v6, v2, Lcom/google/android/gms/internal/ads/zzasm;->sh:Ljava/util/List;

    move-object/from16 v38, v6

    iget-object v6, v2, Lcom/google/android/gms/internal/ads/zzasm;->ef:Ljava/lang/String;

    move-object/from16 v39, v6

    iget-object v6, v1, Lcom/google/android/gms/internal/ads/lk;->u7:Lcom/google/android/gms/internal/ads/YF;

    move-object/from16 v40, v6

    iget-boolean v6, v2, Lcom/google/android/gms/internal/ads/zzasm;->Mz:Z

    move/from16 v41, v6

    iget-boolean v1, v1, Lcom/google/android/gms/internal/ads/lk;->tp:Z

    move/from16 v42, v1

    iget-boolean v1, v2, Lcom/google/android/gms/internal/ads/zzasm;->ca:Z

    move/from16 v43, v1

    iget-object v1, v2, Lcom/google/android/gms/internal/ads/zzasm;->x9:Ljava/util/List;

    move-object/from16 v44, v1

    iget-boolean v1, v2, Lcom/google/android/gms/internal/ads/zzasm;->Qq:Z

    move/from16 v45, v1

    iget-object v1, v2, Lcom/google/android/gms/internal/ads/zzasm;->sy:Ljava/lang/String;

    move-object/from16 v46, v1

    iget-boolean v1, v2, Lcom/google/android/gms/internal/ads/zzasm;->lp:Z

    move/from16 v47, v1

    move-object/from16 v1, v32

    move-object v6, v7

    move/from16 v7, p1

    move/from16 v14, v35

    move-object/from16 v2, v33

    move-object/from16 v15, p3

    move-object/from16 v17, p2

    move-object/from16 v18, v36

    move-object/from16 v22, v2

    move-object/from16 v30, v34

    move-object/from16 v33, v50

    move-object/from16 v34, v51

    move/from16 v35, v52

    move-object/from16 v36, v49

    invoke-direct/range {v3 .. v47}, Lcom/google/android/gms/internal/ads/kk;-><init>(Lcom/google/android/gms/internal/ads/zzwb;Lcom/google/android/gms/internal/ads/Mo;Ljava/util/List;ILjava/util/List;Ljava/util/List;IJLjava/lang/String;ZLcom/google/android/gms/internal/ads/pe;Lcom/google/android/gms/internal/ads/Je;Ljava/lang/String;Lcom/google/android/gms/internal/ads/qe;Lcom/google/android/gms/internal/ads/se;JLcom/google/android/gms/internal/ads/zzwf;JJJLjava/lang/String;Lorg/json/JSONObject;Lcom/google/android/gms/internal/ads/ka;Lcom/google/android/gms/internal/ads/zzawd;Ljava/util/List;Ljava/util/List;ZLcom/google/android/gms/internal/ads/zzaso;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/google/android/gms/internal/ads/YF;ZZZLjava/util/List;ZLjava/lang/String;Z)V

    return-object v48
.end method


# virtual methods
.method public final DW()V
    .registers 1

    return-void
.end method

.method final synthetic DW(Lcom/google/android/gms/internal/ads/kk;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Aj;->tp:Lcom/google/android/gms/internal/ads/Ti;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Ti;->v5()Lcom/google/android/gms/internal/ads/Ag;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/Ag;->j6(Lcom/google/android/gms/internal/ads/kk;)V

    return-void
.end method

.method public final Hw()V
    .registers 20

    move-object/from16 v11, p0

    iget-object v0, v11, Lcom/google/android/gms/internal/ads/Aj;->Hw:Lcom/google/android/gms/internal/ads/lk;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/lk;->FH:Lcom/google/android/gms/internal/ads/qe;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/qe;->j6:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_c
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_bf

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Lcom/google/android/gms/internal/ads/pe;

    iget-object v14, v13, Lcom/google/android/gms/internal/ads/pe;->EQ:Ljava/lang/String;

    iget-object v0, v13, Lcom/google/android/gms/internal/ads/pe;->FH:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_21
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "com.google.android.gms.ads.mediation.customevent.CustomEventAdapter"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_40

    const-string v1, "com.google.ads.mediation.customevent.CustomEventAdapter"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3e

    goto :goto_40

    :cond_3e
    :goto_3e
    move-object v3, v0

    goto :goto_4c

    :cond_40
    :goto_40
    :try_start_40
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v14}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "class_name"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_4b
    .catch Lorg/json/JSONException; {:try_start_40 .. :try_end_4b} :catch_b7

    goto :goto_3e

    :goto_4c
    iget-object v9, v11, Lcom/google/android/gms/internal/ads/Aj;->u7:Ljava/lang/Object;

    monitor-enter v9

    :try_start_4f
    iget-object v0, v11, Lcom/google/android/gms/internal/ads/Aj;->tp:Lcom/google/android/gms/internal/ads/Ti;

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/Ti;->j6(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/Ej;

    move-result-object v7

    if-eqz v7, :cond_8a

    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/Ej;->DW()Lcom/google/android/gms/internal/ads/yj;

    move-result-object v0

    if-eqz v0, :cond_8a

    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/Ej;->j6()Lcom/google/android/gms/internal/ads/Je;

    move-result-object v0

    if-nez v0, :cond_64

    goto :goto_8a

    :cond_64
    new-instance v0, Lcom/google/android/gms/internal/ads/qj;

    iget-object v2, v11, Lcom/google/android/gms/internal/ads/Aj;->v5:Landroid/content/Context;

    iget-object v6, v11, Lcom/google/android/gms/internal/ads/Aj;->Hw:Lcom/google/android/gms/internal/ads/lk;

    iget-wide v4, v11, Lcom/google/android/gms/internal/ads/Aj;->EQ:J
    :try_end_6c
    .catchall {:try_start_4f .. :try_end_6c} :catchall_ae

    move-object v1, v0

    move-wide/from16 v16, v4

    move-object v4, v14

    move-object v5, v13

    move-object/from16 v8, p0

    move-object/from16 v18, v9

    move-wide/from16 v9, v16

    :try_start_77
    invoke-direct/range {v1 .. v10}, Lcom/google/android/gms/internal/ads/qj;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/pe;Lcom/google/android/gms/internal/ads/lk;Lcom/google/android/gms/internal/ads/Ej;Lcom/google/android/gms/internal/ads/zj;J)V

    iget-object v1, v11, Lcom/google/android/gms/internal/ads/Aj;->tp:Lcom/google/android/gms/internal/ads/Ti;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/Ti;->Hw()Lcom/google/android/gms/ads/internal/gmsg/i;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/qj;->j6(Lcom/google/android/gms/ads/internal/gmsg/i;)V

    iget-object v1, v11, Lcom/google/android/gms/internal/ads/Aj;->Zo:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_88
    monitor-exit v18

    goto :goto_21

    :cond_8a
    :goto_8a
    move-object/from16 v18, v9

    iget-object v0, v11, Lcom/google/android/gms/internal/ads/Aj;->VH:Ljava/util/List;

    new-instance v1, Lcom/google/android/gms/internal/ads/vj;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/vj;-><init>()V

    iget-object v2, v13, Lcom/google/android/gms/internal/ads/pe;->Hw:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/vj;->DW(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/vj;

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/vj;->j6(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/vj;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/ads/vj;->j6(J)Lcom/google/android/gms/internal/ads/vj;

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/vj;->j6(I)Lcom/google/android/gms/internal/ads/vj;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/vj;->j6()Lcom/google/android/gms/internal/ads/tj;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_ab
    .catchall {:try_start_77 .. :try_end_ab} :catchall_ac

    goto :goto_88

    :catchall_ac
    move-exception v0

    goto :goto_b1

    :catchall_ae
    move-exception v0

    move-object/from16 v18, v9

    :goto_b1
    move-object/from16 v9, v18

    :goto_b3
    :try_start_b3
    monitor-exit v9
    :try_end_b4
    .catchall {:try_start_b3 .. :try_end_b4} :catchall_b5

    throw v0

    :catchall_b5
    move-exception v0

    goto :goto_b3

    :catch_b7
    move-exception v0

    const-string v1, "Unable to determine custom event class name, skipping..."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_21

    :cond_bf
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object v1, v11, Lcom/google/android/gms/internal/ads/Aj;->Zo:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :cond_cc
    :goto_cc
    if-ge v4, v2, :cond_e2

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    check-cast v5, Lcom/google/android/gms/internal/ads/qj;

    iget-object v6, v5, Lcom/google/android/gms/internal/ads/qj;->Hw:Ljava/lang/String;

    invoke-interface {v0, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_cc

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/qj;->Zo()Ljava/util/concurrent/Future;

    goto :goto_cc

    :cond_e2
    iget-object v1, v11, Lcom/google/android/gms/internal/ads/Aj;->Zo:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_e8
    if-ge v3, v2, :cond_196

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    add-int/lit8 v3, v3, 0x1

    move-object v4, v0

    check-cast v4, Lcom/google/android/gms/internal/ads/qj;

    :try_start_f3
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/qj;->Zo()Ljava/util/concurrent/Future;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_fa
    .catch Ljava/lang/InterruptedException; {:try_start_f3 .. :try_end_fa} :catch_15c
    .catch Ljava/lang/Exception; {:try_start_f3 .. :try_end_fa} :catch_13d
    .catchall {:try_start_f3 .. :try_end_fa} :catchall_13b

    iget-object v5, v11, Lcom/google/android/gms/internal/ads/Aj;->u7:Ljava/lang/Object;

    monitor-enter v5

    :try_start_fd
    iget-object v0, v4, Lcom/google/android/gms/internal/ads/qj;->Hw:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_10e

    iget-object v0, v11, Lcom/google/android/gms/internal/ads/Aj;->VH:Ljava/util/List;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/qj;->VH()Lcom/google/android/gms/internal/ads/tj;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_10e
    monitor-exit v5
    :try_end_10f
    .catchall {:try_start_fd .. :try_end_10f} :catchall_138

    iget-object v6, v11, Lcom/google/android/gms/internal/ads/Aj;->u7:Ljava/lang/Object;

    monitor-enter v6

    :try_start_112
    iget-object v0, v11, Lcom/google/android/gms/internal/ads/Aj;->gn:Ljava/util/HashSet;

    iget-object v5, v4, Lcom/google/android/gms/internal/ads/qj;->Hw:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_133

    iget-object v0, v4, Lcom/google/android/gms/internal/ads/qj;->Hw:Ljava/lang/String;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/qj;->gn()Lcom/google/android/gms/internal/ads/pe;

    move-result-object v1

    const/4 v2, -0x2

    invoke-direct {v11, v2, v0, v1}, Lcom/google/android/gms/internal/ads/Aj;->j6(ILjava/lang/String;Lcom/google/android/gms/internal/ads/pe;)Lcom/google/android/gms/internal/ads/kk;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/Zl;->j6:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/gms/internal/ads/Bj;

    invoke-direct {v2, v11, v0}, Lcom/google/android/gms/internal/ads/Bj;-><init>(Lcom/google/android/gms/internal/ads/Aj;Lcom/google/android/gms/internal/ads/kk;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    monitor-exit v6

    return-void

    :cond_133
    monitor-exit v6

    goto :goto_e8

    :catchall_135
    move-exception v0

    monitor-exit v6
    :try_end_137
    .catchall {:try_start_112 .. :try_end_137} :catchall_135

    throw v0

    :catchall_138
    move-exception v0

    :try_start_139
    monitor-exit v5
    :try_end_13a
    .catchall {:try_start_139 .. :try_end_13a} :catchall_138

    throw v0

    :catchall_13b
    move-exception v0

    goto :goto_17d

    :catch_13d
    move-exception v0

    :try_start_13e
    const-string v5, "Unable to resolve rewarded adapter."

    invoke-static {v5, v0}, Lcom/google/android/gms/internal/ads/jm;->FH(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_143
    .catchall {:try_start_13e .. :try_end_143} :catchall_13b

    iget-object v5, v11, Lcom/google/android/gms/internal/ads/Aj;->u7:Ljava/lang/Object;

    monitor-enter v5

    :try_start_146
    iget-object v0, v4, Lcom/google/android/gms/internal/ads/qj;->Hw:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_157

    iget-object v0, v11, Lcom/google/android/gms/internal/ads/Aj;->VH:Ljava/util/List;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/qj;->VH()Lcom/google/android/gms/internal/ads/tj;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_157
    monitor-exit v5

    goto :goto_e8

    :catchall_159
    move-exception v0

    monitor-exit v5
    :try_end_15b
    .catchall {:try_start_146 .. :try_end_15b} :catchall_159

    throw v0

    :catch_15c
    move-exception v0

    :try_start_15d
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
    :try_end_164
    .catchall {:try_start_15d .. :try_end_164} :catchall_13b

    iget-object v1, v11, Lcom/google/android/gms/internal/ads/Aj;->u7:Ljava/lang/Object;

    monitor-enter v1

    :try_start_167
    iget-object v0, v4, Lcom/google/android/gms/internal/ads/qj;->Hw:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_178

    iget-object v0, v11, Lcom/google/android/gms/internal/ads/Aj;->VH:Ljava/util/List;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/qj;->VH()Lcom/google/android/gms/internal/ads/tj;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_178
    monitor-exit v1

    goto :goto_196

    :catchall_17a
    move-exception v0

    monitor-exit v1
    :try_end_17c
    .catchall {:try_start_167 .. :try_end_17c} :catchall_17a

    throw v0

    :goto_17d
    iget-object v1, v11, Lcom/google/android/gms/internal/ads/Aj;->u7:Ljava/lang/Object;

    monitor-enter v1

    :try_start_180
    iget-object v2, v4, Lcom/google/android/gms/internal/ads/qj;->Hw:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_191

    iget-object v2, v11, Lcom/google/android/gms/internal/ads/Aj;->VH:Ljava/util/List;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/qj;->VH()Lcom/google/android/gms/internal/ads/tj;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_191
    monitor-exit v1
    :try_end_192
    .catchall {:try_start_180 .. :try_end_192} :catchall_193

    throw v0

    :catchall_193
    move-exception v0

    :try_start_194
    monitor-exit v1
    :try_end_195
    .catchall {:try_start_194 .. :try_end_195} :catchall_193

    throw v0

    :cond_196
    :goto_196
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-direct {v11, v0, v1, v1}, Lcom/google/android/gms/internal/ads/Aj;->j6(ILjava/lang/String;Lcom/google/android/gms/internal/ads/pe;)Lcom/google/android/gms/internal/ads/kk;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/Zl;->j6:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/gms/internal/ads/Cj;

    invoke-direct {v2, v11, v0}, Lcom/google/android/gms/internal/ads/Cj;-><init>(Lcom/google/android/gms/internal/ads/Aj;Lcom/google/android/gms/internal/ads/kk;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method final synthetic j6(Lcom/google/android/gms/internal/ads/kk;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Aj;->tp:Lcom/google/android/gms/internal/ads/Ti;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Ti;->v5()Lcom/google/android/gms/internal/ads/Ag;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/Ag;->j6(Lcom/google/android/gms/internal/ads/kk;)V

    return-void
.end method

.method public final j6(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Aj;->u7:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Aj;->gn:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_a
    move-exception p1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p1
.end method

.method public final j6(Ljava/lang/String;I)V
    .registers 3

    return-void
.end method
