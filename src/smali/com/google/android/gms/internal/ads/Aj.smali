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
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/ads/tj;",
            ">;"
        }
    .end annotation
.end field

.field private final Zo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/internal/ads/qj;",
            ">;"
        }
    .end annotation
.end field

.field private final gn:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
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
    .registers 10

    sget-object v0, Lcom/google/android/gms/internal/ads/p;->sE:Lcom/google/android/gms/internal/ads/e;

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->v5()Lcom/google/android/gms/internal/ads/m;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/m;->j6(Lcom/google/android/gms/internal/ads/e;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/Aj;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/lk;Lcom/google/android/gms/internal/ads/Ti;J)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/lk;Lcom/google/android/gms/internal/ads/Ti;J)V
    .registers 8

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
    .registers 51

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/Aj;->Hw:Lcom/google/android/gms/internal/ads/lk;

    iget-object v4, v2, Lcom/google/android/gms/internal/ads/lk;->j6:Lcom/google/android/gms/internal/ads/zzasi;

    iget-object v3, v4, Lcom/google/android/gms/internal/ads/zzasi;->FH:Lcom/google/android/gms/internal/ads/zzwb;

    iget-object v6, v2, Lcom/google/android/gms/internal/ads/lk;->DW:Lcom/google/android/gms/internal/ads/zzasm;

    iget-object v5, v6, Lcom/google/android/gms/internal/ads/zzasm;->v5:Ljava/util/List;

    iget-object v7, v6, Lcom/google/android/gms/internal/ads/zzasm;->VH:Ljava/util/List;

    iget-object v8, v6, Lcom/google/android/gms/internal/ads/zzasm;->EQ:Ljava/util/List;

    iget v9, v6, Lcom/google/android/gms/internal/ads/zzasm;->J0:I

    iget-wide v10, v6, Lcom/google/android/gms/internal/ads/zzasm;->we:J

    iget-object v12, v4, Lcom/google/android/gms/internal/ads/zzasi;->u7:Ljava/lang/String;

    iget-boolean v13, v6, Lcom/google/android/gms/internal/ads/zzasm;->u7:Z

    iget-object v0, v2, Lcom/google/android/gms/internal/ads/lk;->FH:Lcom/google/android/gms/internal/ads/qe;

    move-object/from16 v17, v0

    iget-wide v0, v6, Lcom/google/android/gms/internal/ads/zzasm;->tp:J

    move-wide/from16 v19, v0

    iget-object v0, v2, Lcom/google/android/gms/internal/ads/lk;->Hw:Lcom/google/android/gms/internal/ads/zzwf;

    move-object/from16 v21, v0

    iget-wide v0, v6, Lcom/google/android/gms/internal/ads/zzasm;->gn:J

    move-wide/from16 v22, v0

    iget-wide v0, v2, Lcom/google/android/gms/internal/ads/lk;->Zo:J

    move-wide/from16 v24, v0

    iget-wide v0, v6, Lcom/google/android/gms/internal/ads/zzasm;->Ws:J

    move-wide/from16 v26, v0

    iget-object v0, v6, Lcom/google/android/gms/internal/ads/zzasm;->QX:Ljava/lang/String;

    move-object/from16 v28, v0

    iget-object v0, v2, Lcom/google/android/gms/internal/ads/lk;->gn:Lorg/json/JSONObject;

    move-object/from16 v29, v0

    iget-object v0, v6, Lcom/google/android/gms/internal/ads/zzasm;->P8:Lcom/google/android/gms/internal/ads/zzawd;

    move-object/from16 v31, v0

    iget-object v0, v6, Lcom/google/android/gms/internal/ads/zzasm;->ei:Ljava/util/List;

    move-object/from16 v32, v0

    iget-object v0, v6, Lcom/google/android/gms/internal/ads/zzasm;->nw:Ljava/util/List;

    move-object/from16 v33, v0

    iget-boolean v0, v6, Lcom/google/android/gms/internal/ads/zzasm;->SI:Z

    move/from16 v34, v0

    iget-object v0, v6, Lcom/google/android/gms/internal/ads/zzasm;->KD:Lcom/google/android/gms/internal/ads/zzaso;

    move-object/from16 v35, v0

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-direct {v14, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/Aj;->VH:Ljava/util/List;

    if-nez v2, :cond_0

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    :goto_0
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/Aj;->Hw:Lcom/google/android/gms/internal/ads/lk;

    iget-object v14, v6, Lcom/google/android/gms/internal/ads/lk;->DW:Lcom/google/android/gms/internal/ads/zzasm;

    new-instance v2, Lcom/google/android/gms/internal/ads/kk;

    const/4 v4, 0x0

    const/4 v15, 0x0

    const/16 v18, 0x0

    const/16 v30, 0x0

    iget-object v0, v14, Lcom/google/android/gms/internal/ads/zzasm;->sh:Ljava/util/List;

    move-object/from16 v37, v0

    iget-object v0, v14, Lcom/google/android/gms/internal/ads/zzasm;->ef:Ljava/lang/String;

    move-object/from16 v38, v0

    iget-object v0, v6, Lcom/google/android/gms/internal/ads/lk;->u7:Lcom/google/android/gms/internal/ads/YF;

    move-object/from16 v39, v0

    iget-boolean v0, v14, Lcom/google/android/gms/internal/ads/zzasm;->Mz:Z

    move/from16 v40, v0

    iget-boolean v0, v6, Lcom/google/android/gms/internal/ads/lk;->tp:Z

    move/from16 v41, v0

    iget-boolean v0, v14, Lcom/google/android/gms/internal/ads/zzasm;->ca:Z

    move/from16 v42, v0

    iget-object v0, v14, Lcom/google/android/gms/internal/ads/zzasm;->x9:Ljava/util/List;

    move-object/from16 v43, v0

    iget-boolean v0, v14, Lcom/google/android/gms/internal/ads/zzasm;->Qq:Z

    move/from16 v44, v0

    iget-object v0, v14, Lcom/google/android/gms/internal/ads/zzasm;->sy:Ljava/lang/String;

    move-object/from16 v45, v0

    iget-boolean v0, v14, Lcom/google/android/gms/internal/ads/zzasm;->lp:Z

    move/from16 v46, v0

    move/from16 v6, p1

    move-object/from16 v14, p3

    move-object/from16 v16, p2

    invoke-direct/range {v2 .. v46}, Lcom/google/android/gms/internal/ads/kk;-><init>(Lcom/google/android/gms/internal/ads/zzwb;Lcom/google/android/gms/internal/ads/Mo;Ljava/util/List;ILjava/util/List;Ljava/util/List;IJLjava/lang/String;ZLcom/google/android/gms/internal/ads/pe;Lcom/google/android/gms/internal/ads/Je;Ljava/lang/String;Lcom/google/android/gms/internal/ads/qe;Lcom/google/android/gms/internal/ads/se;JLcom/google/android/gms/internal/ads/zzwf;JJJLjava/lang/String;Lorg/json/JSONObject;Lcom/google/android/gms/internal/ads/ka;Lcom/google/android/gms/internal/ads/zzawd;Ljava/util/List;Ljava/util/List;ZLcom/google/android/gms/internal/ads/zzaso;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/google/android/gms/internal/ads/YF;ZZZLjava/util/List;ZLjava/lang/String;Z)V

    return-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v4, v2

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/tj;

    if-eqz v2, :cond_8

    iget-object v6, v2, Lcom/google/android/gms/internal/ads/tj;->DW:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_6

    iget-object v15, v2, Lcom/google/android/gms/internal/ads/tj;->DW:Ljava/lang/String;

    iget v0, v2, Lcom/google/android/gms/internal/ads/tj;->FH:I

    move/from16 v16, v0

    const/4 v6, 0x3

    const/16 v18, 0x3

    move/from16 v0, v16

    move/from16 v1, v18

    if-eq v0, v1, :cond_5

    const/16 v18, 0x4

    move/from16 v0, v16

    move/from16 v1, v18

    if-eq v0, v1, :cond_4

    const/16 v18, 0x5

    move/from16 v0, v16

    move/from16 v1, v18

    if-eq v0, v1, :cond_3

    const/16 v18, 0x6

    move/from16 v0, v16

    move/from16 v1, v18

    if-eq v0, v1, :cond_2

    const/16 v18, 0x7

    move/from16 v0, v16

    move/from16 v1, v18

    if-eq v0, v1, :cond_1

    const/4 v6, 0x6

    :cond_1
    :goto_2
    iget-wide v0, v2, Lcom/google/android/gms/internal/ads/tj;->Hw:J

    move-wide/from16 v36, v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v16

    add-int/lit8 v16, v16, 0x21

    move/from16 v0, v16

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "."

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "."

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v0, v36

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v6, "_"

    invoke-virtual {v2, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    :cond_2
    const/4 v6, 0x0

    goto :goto_2

    :cond_3
    const/4 v6, 0x4

    goto :goto_2

    :cond_4
    const/4 v6, 0x2

    goto :goto_2

    :cond_5
    const/4 v6, 0x1

    goto :goto_2

    :cond_6
    move-object v2, v4

    :goto_3
    move-object v4, v2

    goto/16 :goto_1

    :cond_7
    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-virtual {v14, v2, v4}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v36

    goto/16 :goto_0

    :cond_8
    move-object v2, v4

    goto :goto_3
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
    .registers 16

    const/4 v14, 0x0

    const/4 v11, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Aj;->Hw:Lcom/google/android/gms/internal/ads/lk;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/lk;->FH:Lcom/google/android/gms/internal/ads/qe;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/qe;->j6:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/ads/pe;

    iget-object v3, v4, Lcom/google/android/gms/internal/ads/pe;->EQ:Ljava/lang/String;

    iget-object v0, v4, Lcom/google/android/gms/internal/ads/pe;->FH:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "com.google.android.gms.ads.mediation.customevent.CustomEventAdapter"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "com.google.ads.mediation.customevent.CustomEventAdapter"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    :cond_1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "class_name"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :goto_1
    iget-object v10, p0, Lcom/google/android/gms/internal/ads/Aj;->u7:Ljava/lang/Object;

    monitor-enter v10

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Aj;->tp:Lcom/google/android/gms/internal/ads/Ti;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/Ti;->j6(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/Ej;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/Ej;->DW()Lcom/google/android/gms/internal/ads/yj;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/Ej;->j6()Lcom/google/android/gms/internal/ads/Je;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    if-nez v0, :cond_3

    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Aj;->VH:Ljava/util/List;

    new-instance v1, Lcom/google/android/gms/internal/ads/vj;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/vj;-><init>()V

    iget-object v5, v4, Lcom/google/android/gms/internal/ads/pe;->Hw:Ljava/lang/String;

    invoke-virtual {v1, v5}, Lcom/google/android/gms/internal/ads/vj;->DW(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/vj;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/vj;->j6(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/vj;

    const-wide/16 v6, 0x0

    invoke-virtual {v1, v6, v7}, Lcom/google/android/gms/internal/ads/vj;->j6(J)Lcom/google/android/gms/internal/ads/vj;

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/vj;->j6(I)Lcom/google/android/gms/internal/ads/vj;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/vj;->j6()Lcom/google/android/gms/internal/ads/tj;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    move-object v0, v10

    :goto_2
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_8

    throw v1

    :cond_3
    :try_start_4
    new-instance v0, Lcom/google/android/gms/internal/ads/qj;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Aj;->v5:Landroid/content/Context;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/Aj;->Hw:Lcom/google/android/gms/internal/ads/lk;

    iget-wide v8, p0, Lcom/google/android/gms/internal/ads/Aj;->EQ:J
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-object v7, p0

    :try_start_5
    invoke-direct/range {v0 .. v9}, Lcom/google/android/gms/internal/ads/qj;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/pe;Lcom/google/android/gms/internal/ads/lk;Lcom/google/android/gms/internal/ads/Ej;Lcom/google/android/gms/internal/ads/zj;J)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Aj;->tp:Lcom/google/android/gms/internal/ads/Ti;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/Ti;->Hw()Lcom/google/android/gms/ads/internal/gmsg/i;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/qj;->j6(Lcom/google/android/gms/ads/internal/gmsg/i;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Aj;->Zo:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v10
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    :catchall_1
    move-exception v1

    move-object v0, v10

    goto :goto_2

    :catch_0
    move-exception v0

    const-string v1, "Unable to determine custom event class name, skipping..."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :cond_4
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/Aj;->Zo:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v1, v11

    :cond_5
    :goto_3
    if-ge v1, v4, :cond_6

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    check-cast v0, Lcom/google/android/gms/internal/ads/qj;

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/qj;->Hw:Ljava/lang/String;

    invoke-interface {v2, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/qj;->Zo()Ljava/util/concurrent/Future;

    goto :goto_3

    :cond_6
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/Aj;->Zo:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v1, v11

    :goto_4
    if-ge v1, v4, :cond_b

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    add-int/lit8 v2, v1, 0x1

    check-cast v0, Lcom/google/android/gms/internal/ads/qj;

    :try_start_6
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/qj;->Zo()Ljava/util/concurrent/Future;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Aj;->u7:Ljava/lang/Object;

    monitor-enter v1

    :try_start_7
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/qj;->Hw:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_7

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/Aj;->VH:Ljava/util/List;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/qj;->VH()Lcom/google/android/gms/internal/ads/tj;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Aj;->u7:Ljava/lang/Object;

    monitor-enter v1

    :try_start_8
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/Aj;->gn:Ljava/util/HashSet;

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/qj;->Hw:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    const/4 v2, -0x2

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/qj;->Hw:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/qj;->gn()Lcom/google/android/gms/internal/ads/pe;

    move-result-object v0

    invoke-direct {p0, v2, v3, v0}, Lcom/google/android/gms/internal/ads/Aj;->j6(ILjava/lang/String;Lcom/google/android/gms/internal/ads/pe;)Lcom/google/android/gms/internal/ads/kk;

    move-result-object v0

    sget-object v2, Lcom/google/android/gms/internal/ads/Zl;->j6:Landroid/os/Handler;

    new-instance v3, Lcom/google/android/gms/internal/ads/Bj;

    invoke-direct {v3, p0, v0}, Lcom/google/android/gms/internal/ads/Bj;-><init>(Lcom/google/android/gms/internal/ads/Aj;Lcom/google/android/gms/internal/ads/kk;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    monitor-exit v1

    :goto_5
    return-void

    :cond_8
    monitor-exit v1

    move v1, v2

    goto :goto_4

    :catchall_2
    move-exception v0

    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    throw v0

    :catchall_3
    move-exception v0

    :try_start_9
    monitor-exit v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    throw v0

    :catch_1
    move-exception v1

    :try_start_a
    const-string v5, "Unable to resolve rewarded adapter."

    invoke-static {v5, v1}, Lcom/google/android/gms/internal/ads/jm;->FH(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Aj;->u7:Ljava/lang/Object;

    monitor-enter v1

    :try_start_b
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/qj;->Hw:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_9

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/Aj;->VH:Ljava/util/List;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/qj;->VH()Lcom/google/android/gms/internal/ads/tj;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_9
    monitor-exit v1

    move v1, v2

    goto :goto_4

    :catchall_4
    move-exception v0

    monitor-exit v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    throw v0

    :catch_2
    move-exception v1

    :try_start_c
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Aj;->u7:Ljava/lang/Object;

    monitor-enter v1

    :try_start_d
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/qj;->Hw:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_a

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Aj;->VH:Ljava/util/List;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/qj;->VH()Lcom/google/android/gms/internal/ads/tj;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_a
    monitor-exit v1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    :cond_b
    const/4 v0, 0x3

    invoke-direct {p0, v0, v14, v14}, Lcom/google/android/gms/internal/ads/Aj;->j6(ILjava/lang/String;Lcom/google/android/gms/internal/ads/pe;)Lcom/google/android/gms/internal/ads/kk;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/Zl;->j6:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/gms/internal/ads/Cj;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/internal/ads/Cj;-><init>(Lcom/google/android/gms/internal/ads/Aj;Lcom/google/android/gms/internal/ads/kk;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_5

    :catchall_5
    move-exception v0

    :try_start_e
    monitor-exit v1
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    throw v0

    :catchall_6
    move-exception v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Aj;->u7:Ljava/lang/Object;

    monitor-enter v2

    :try_start_f
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/qj;->Hw:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_c

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/Aj;->VH:Ljava/util/List;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/qj;->VH()Lcom/google/android/gms/internal/ads/tj;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_c
    monitor-exit v2
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_7

    throw v1

    :catchall_7
    move-exception v0

    :try_start_10
    monitor-exit v2
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_7

    throw v0

    :catchall_8
    move-exception v1

    goto/16 :goto_2

    :cond_d
    move-object v2, v0

    goto/16 :goto_1
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

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Aj;->u7:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Aj;->gn:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final j6(Ljava/lang/String;I)V
    .registers 3

    return-void
.end method
