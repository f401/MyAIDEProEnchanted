.class public final Lcom/google/android/gms/ads/internal/m;
.super Lcom/google/android/gms/ads/internal/fa;

# interfaces
.implements Lcom/google/android/gms/ads/internal/gmsg/h;
.implements Lcom/google/android/gms/ads/internal/gmsg/F;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zh;
.end annotation


# instance fields
.field private Mr:Z

.field private transient QX:Z

.field private U2:Lcom/google/android/gms/internal/ads/_j;

.field private XL:I

.field private a8:Ljava/lang/String;

.field private aM:Z

.field private j3:F

.field private final lg:Ljava/lang/String;

.field private final rN:Lcom/google/android/gms/internal/ads/Ti;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzwf;Ljava/lang/String;Lcom/google/android/gms/internal/ads/Ge;Lcom/google/android/gms/internal/ads/zzbbi;Lcom/google/android/gms/ads/internal/ta;)V
    .registers 13

    invoke-direct/range {p0 .. p6}, Lcom/google/android/gms/ads/internal/fa;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzwf;Ljava/lang/String;Lcom/google/android/gms/internal/ads/Ge;Lcom/google/android/gms/internal/ads/zzbbi;Lcom/google/android/gms/ads/internal/ta;)V

    const/4 p1, -0x1

    iput p1, p0, Lcom/google/android/gms/ads/internal/m;->XL:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/ads/internal/m;->QX:Z

    if-eqz p2, :cond_16

    const-string p3, "reward_mb"

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzwf;->j6:Ljava/lang/String;

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_16

    const/4 p1, 0x1

    :cond_16
    if-eqz p1, :cond_1b

    const-string p2, "/Rewarded"

    goto :goto_1d

    :cond_1b
    const-string p2, "/Interstitial"

    :goto_1d
    iput-object p2, p0, Lcom/google/android/gms/ads/internal/m;->lg:Ljava/lang/String;

    if-eqz p1, :cond_33

    new-instance v3, Lcom/google/android/gms/ads/internal/o;

    invoke-direct {v3, p0}, Lcom/google/android/gms/ads/internal/o;-><init>(Lcom/google/android/gms/ads/internal/m;)V

    new-instance p1, Lcom/google/android/gms/internal/ads/Ti;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/aa;->J0:Lcom/google/android/gms/internal/ads/Ge;

    move-object v0, p1

    move-object v4, p0

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/Ti;-><init>(Lcom/google/android/gms/ads/internal/Y;Lcom/google/android/gms/internal/ads/Ge;Lcom/google/android/gms/internal/ads/xj;Lcom/google/android/gms/ads/internal/gmsg/i;Lcom/google/android/gms/internal/ads/Ag;)V

    goto :goto_34

    :cond_33
    const/4 p1, 0x0

    :goto_34
    iput-object p1, p0, Lcom/google/android/gms/ads/internal/m;->rN:Lcom/google/android/gms/internal/ads/Ti;

    return-void
.end method

.method static synthetic DW(Lcom/google/android/gms/ads/internal/m;)F
    .registers 1

    iget p0, p0, Lcom/google/android/gms/ads/internal/m;->j3:F

    return p0
.end method

.method private static DW(Lcom/google/android/gms/internal/ads/lk;)Lcom/google/android/gms/internal/ads/lk;
    .registers 78

    move-object/from16 v1, p0

    :try_start_2
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/lk;->DW:Lcom/google/android/gms/internal/ads/zzasm;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Fi;->j6(Lcom/google/android/gms/internal/ads/zzasm;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "pubid"

    iget-object v4, v1, Lcom/google/android/gms/internal/ads/lk;->j6:Lcom/google/android/gms/internal/ads/zzasi;

    iget-object v4, v4, Lcom/google/android/gms/internal/ads/zzasi;->v5:Ljava/lang/String;

    invoke-virtual {v0, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v12
    :try_end_1e
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_1e} :catch_170

    new-instance v0, Lcom/google/android/gms/internal/ads/pe;

    move-object v2, v0

    const/4 v4, 0x0

    const-string v5, "com.google.ads.mediation.admob.AdMobAdapter"

    invoke-static {v5}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v8

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v9

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v10

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v11

    const/4 v13, 0x0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v14

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v15

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v16

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v22

    const/16 v23, 0x0

    const-wide/16 v24, -0x1

    invoke-direct/range {v2 .. v25}, Lcom/google/android/gms/internal/ads/pe;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;J)V

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/lk;->DW:Lcom/google/android/gms/internal/ads/zzasm;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    sget-object v0, Lcom/google/android/gms/internal/ads/p;->Ej:Lcom/google/android/gms/internal/ads/e;

    new-instance v24, Lcom/google/android/gms/internal/ads/qe;

    move-object/from16 v3, v24

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->v5()Lcom/google/android/gms/internal/ads/m;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/google/android/gms/internal/ads/m;->j6(Lcom/google/android/gms/internal/ads/e;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v7

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v8

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v9

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v10

    iget-object v11, v2, Lcom/google/android/gms/internal/ads/zzasm;->sh:Ljava/util/List;

    iget-boolean v12, v2, Lcom/google/android/gms/internal/ads/zzasm;->cb:Z

    const-string v13, ""

    const-wide/16 v14, -0x1

    const/16 v16, 0x0

    const/16 v17, 0x1

    const/16 v19, 0x0

    const/16 v20, -0x1

    const-wide/16 v21, -0x1

    const/16 v23, 0x0

    invoke-direct/range {v3 .. v23}, Lcom/google/android/gms/internal/ads/qe;-><init>(Ljava/util/List;JLjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;ZLjava/lang/String;JIILjava/lang/String;IIJZ)V

    new-instance v7, Lcom/google/android/gms/internal/ads/zzasm;

    move-object/from16 v25, v7

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/lk;->j6:Lcom/google/android/gms/internal/ads/zzasi;

    move-object/from16 v26, v0

    iget-object v0, v2, Lcom/google/android/gms/internal/ads/zzasm;->FH:Ljava/lang/String;

    move-object/from16 v27, v0

    iget-object v0, v2, Lcom/google/android/gms/internal/ads/zzasm;->Hw:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v29

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v30

    iget-wide v3, v2, Lcom/google/android/gms/internal/ads/zzasm;->gn:J

    move-wide/from16 v31, v3

    const/16 v33, 0x1

    iget-wide v3, v2, Lcom/google/android/gms/internal/ads/zzasm;->tp:J

    move-wide/from16 v34, v3

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v36

    iget-wide v3, v2, Lcom/google/android/gms/internal/ads/zzasm;->we:J

    move-wide/from16 v37, v3

    iget v0, v2, Lcom/google/android/gms/internal/ads/zzasm;->J0:I

    move/from16 v39, v0

    iget-object v0, v2, Lcom/google/android/gms/internal/ads/zzasm;->J8:Ljava/lang/String;

    move-object/from16 v40, v0

    iget-wide v3, v2, Lcom/google/android/gms/internal/ads/zzasm;->Ws:J

    move-wide/from16 v41, v3

    iget-object v0, v2, Lcom/google/android/gms/internal/ads/zzasm;->QX:Ljava/lang/String;

    move-object/from16 v43, v0

    iget-boolean v0, v2, Lcom/google/android/gms/internal/ads/zzasm;->XL:Z

    move/from16 v44, v0

    iget-object v0, v2, Lcom/google/android/gms/internal/ads/zzasm;->aM:Ljava/lang/String;

    move-object/from16 v45, v0

    const/16 v46, 0x0

    iget-boolean v0, v2, Lcom/google/android/gms/internal/ads/zzasm;->Mr:Z

    move/from16 v47, v0

    iget-boolean v0, v2, Lcom/google/android/gms/internal/ads/zzasm;->U2:Z

    move/from16 v48, v0

    iget-boolean v0, v2, Lcom/google/android/gms/internal/ads/zzasm;->a8:Z

    move/from16 v49, v0

    iget-boolean v0, v2, Lcom/google/android/gms/internal/ads/zzasm;->lg:Z

    move/from16 v50, v0

    iget-boolean v0, v2, Lcom/google/android/gms/internal/ads/zzasm;->rN:Z

    move/from16 v51, v0

    iget-object v0, v2, Lcom/google/android/gms/internal/ads/zzasm;->gW:Ljava/lang/String;

    move-object/from16 v52, v0

    iget-boolean v0, v2, Lcom/google/android/gms/internal/ads/zzasm;->BT:Z

    move/from16 v53, v0

    iget-boolean v0, v2, Lcom/google/android/gms/internal/ads/zzasm;->vy:Z

    move/from16 v54, v0

    const/16 v55, 0x0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v56

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v57

    iget-boolean v0, v2, Lcom/google/android/gms/internal/ads/zzasm;->SI:Z

    move/from16 v58, v0

    iget-object v0, v2, Lcom/google/android/gms/internal/ads/zzasm;->KD:Lcom/google/android/gms/internal/ads/zzaso;

    move-object/from16 v59, v0

    iget-boolean v0, v2, Lcom/google/android/gms/internal/ads/zzasm;->ro:Z

    move/from16 v60, v0

    iget-object v0, v2, Lcom/google/android/gms/internal/ads/zzasm;->cn:Ljava/lang/String;

    move-object/from16 v61, v0

    iget-object v0, v2, Lcom/google/android/gms/internal/ads/zzasm;->sh:Ljava/util/List;

    move-object/from16 v62, v0

    iget-boolean v0, v2, Lcom/google/android/gms/internal/ads/zzasm;->cb:Z

    move/from16 v63, v0

    iget-object v0, v2, Lcom/google/android/gms/internal/ads/zzasm;->dx:Ljava/lang/String;

    move-object/from16 v64, v0

    const/16 v65, 0x0

    iget-object v0, v2, Lcom/google/android/gms/internal/ads/zzasm;->ef:Ljava/lang/String;

    move-object/from16 v66, v0

    iget-boolean v0, v2, Lcom/google/android/gms/internal/ads/zzasm;->Sf:Z

    move/from16 v67, v0

    iget-boolean v0, v2, Lcom/google/android/gms/internal/ads/zzasm;->vJ:Z

    move/from16 v68, v0

    iget-boolean v0, v2, Lcom/google/android/gms/internal/ads/zzasm;->Mz:Z

    move/from16 v69, v0

    const/16 v70, 0x0

    iget-boolean v0, v2, Lcom/google/android/gms/internal/ads/zzasm;->ca:Z

    move/from16 v71, v0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v72

    iget-boolean v0, v2, Lcom/google/android/gms/internal/ads/zzasm;->Qq:Z

    move/from16 v73, v0

    iget-object v0, v2, Lcom/google/android/gms/internal/ads/zzasm;->sy:Ljava/lang/String;

    move-object/from16 v74, v0

    iget-object v0, v2, Lcom/google/android/gms/internal/ads/zzasm;->aj:Ljava/lang/String;

    move-object/from16 v75, v0

    iget-boolean v0, v2, Lcom/google/android/gms/internal/ads/zzasm;->lp:Z

    move/from16 v76, v0

    invoke-direct/range {v25 .. v76}, Lcom/google/android/gms/internal/ads/zzasm;-><init>(Lcom/google/android/gms/internal/ads/zzasi;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;JZJLjava/util/List;JILjava/lang/String;JLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;ZZZZZLjava/lang/String;ZZLcom/google/android/gms/internal/ads/zzawd;Ljava/util/List;Ljava/util/List;ZLcom/google/android/gms/internal/ads/zzaso;ZLjava/lang/String;Ljava/util/List;ZLjava/lang/String;Lcom/google/android/gms/internal/ads/zzawo;Ljava/lang/String;ZZZIZLjava/util/List;ZLjava/lang/String;Ljava/lang/String;Z)V

    new-instance v0, Lcom/google/android/gms/internal/ads/lk;

    iget-object v6, v1, Lcom/google/android/gms/internal/ads/lk;->j6:Lcom/google/android/gms/internal/ads/zzasi;

    iget-object v9, v1, Lcom/google/android/gms/internal/ads/lk;->Hw:Lcom/google/android/gms/internal/ads/zzwf;

    iget v10, v1, Lcom/google/android/gms/internal/ads/lk;->v5:I

    iget-wide v11, v1, Lcom/google/android/gms/internal/ads/lk;->Zo:J

    iget-wide v13, v1, Lcom/google/android/gms/internal/ads/lk;->VH:J

    const/4 v15, 0x0

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/lk;->u7:Lcom/google/android/gms/internal/ads/YF;

    const/16 v17, 0x0

    move-object v5, v0

    move-object/from16 v8, v24

    move-object/from16 v16, v1

    invoke-direct/range {v5 .. v17}, Lcom/google/android/gms/internal/ads/lk;-><init>(Lcom/google/android/gms/internal/ads/zzasi;Lcom/google/android/gms/internal/ads/zzasm;Lcom/google/android/gms/internal/ads/qe;Lcom/google/android/gms/internal/ads/zzwf;IJJLorg/json/JSONObject;Lcom/google/android/gms/internal/ads/YF;Ljava/lang/Boolean;)V

    return-object v0

    :catch_170
    move-exception v0

    const-string v2, "Unable to generate ad state for an interstitial ad with pooling."

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v1
.end method

.method static synthetic FH(Lcom/google/android/gms/ads/internal/m;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/google/android/gms/ads/internal/m;->Mr:Z

    return p0
.end method

.method private final J0(Landroid/os/Bundle;)V
    .registers 8

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->v5()Lcom/google/android/gms/internal/ads/Nk;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v2, v1, Lcom/google/android/gms/ads/internal/Y;->FH:Landroid/content/Context;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/Y;->v5:Lcom/google/android/gms/internal/ads/zzbbi;

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzbbi;->j6:Ljava/lang/String;

    const-string v4, "gmob-apps"

    const/4 v5, 0x0

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, p1

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/Nk;->DW(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Z)V

    return-void
.end method

.method private final aM(Z)Z
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/m;->rN:Lcom/google/android/gms/internal/ads/Ti;

    if-eqz v0, :cond_8

    if-eqz p1, :cond_8

    const/4 p1, 0x1

    return p1

    :cond_8
    const/4 p1, 0x0

    return p1
.end method

.method static synthetic j6(Lcom/google/android/gms/ads/internal/m;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/google/android/gms/ads/internal/m;->aM:Z

    return p0
.end method


# virtual methods
.method public final DW(Lcom/google/android/gms/internal/ads/zzawd;)V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/Y;->tp:Lcom/google/android/gms/internal/ads/kk;

    if-eqz v0, :cond_c

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/kk;->Ws:Z

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    invoke-direct {p0, v0}, Lcom/google/android/gms/ads/internal/m;->aM(Z)Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/m;->rN:Lcom/google/android/gms/internal/ads/Ti;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/Ti;->j6(Lcom/google/android/gms/internal/ads/zzawd;)Lcom/google/android/gms/internal/ads/zzawd;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/ads/internal/a;->FH(Lcom/google/android/gms/internal/ads/zzawd;)V

    return-void

    :cond_1d
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/Y;->tp:Lcom/google/android/gms/internal/ads/kk;

    if-eqz v0, :cond_42

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/kk;->gW:Ljava/util/List;

    if-eqz v0, :cond_39

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->v5()Lcom/google/android/gms/internal/ads/Nk;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v1, v0, Lcom/google/android/gms/ads/internal/Y;->FH:Landroid/content/Context;

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/Y;->v5:Lcom/google/android/gms/internal/ads/zzbbi;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzbbi;->j6:Ljava/lang/String;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/Y;->tp:Lcom/google/android/gms/internal/ads/kk;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/kk;->gW:Ljava/util/List;

    invoke-static {v1, v2, v0}, Lcom/google/android/gms/internal/ads/Nk;->j6(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)V

    :cond_39
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/Y;->tp:Lcom/google/android/gms/internal/ads/kk;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/kk;->er:Lcom/google/android/gms/internal/ads/zzawd;

    if-eqz v0, :cond_42

    move-object p1, v0

    :cond_42
    invoke-virtual {p0, p1}, Lcom/google/android/gms/ads/internal/a;->FH(Lcom/google/android/gms/internal/ads/zzawd;)V

    return-void
.end method

.method protected final K3()V
    .registers 1

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/m;->zg()V

    invoke-super {p0}, Lcom/google/android/gms/ads/internal/a;->K3()V

    return-void
.end method

.method public final QX(Z)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iput-boolean p1, v0, Lcom/google/android/gms/ads/internal/Y;->dx:Z

    return-void
.end method

.method public final S4()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/Y;->tp:Lcom/google/android/gms/internal/ads/kk;

    if-eqz v0, :cond_c

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/kk;->Ws:Z

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    invoke-direct {p0, v0}, Lcom/google/android/gms/ads/internal/m;->aM(Z)Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/m;->rN:Lcom/google/android/gms/internal/ads/Ti;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Ti;->gn()V

    :cond_18
    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/a;->Lx()V

    return-void
.end method

.method public final ep()V
    .registers 4

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/aa;->EQ()V

    invoke-super {p0}, Lcom/google/android/gms/ads/internal/aa;->ep()V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/Y;->tp:Lcom/google/android/gms/internal/ads/kk;

    if-eqz v0, :cond_19

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/kk;->DW:Lcom/google/android/gms/internal/ads/Mo;

    if-eqz v0, :cond_19

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/Mo;->ei()Lcom/google/android/gms/internal/ads/tp;

    move-result-object v0

    if-eqz v0, :cond_19

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/tp;->DW()V

    :cond_19
    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->ei()Lcom/google/android/gms/internal/ads/ak;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/Y;->FH:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/ak;->FH(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_44

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/Y;->tp:Lcom/google/android/gms/internal/ads/kk;

    if-eqz v0, :cond_44

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/kk;->DW:Lcom/google/android/gms/internal/ads/Mo;

    if-eqz v0, :cond_44

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->ei()Lcom/google/android/gms/internal/ads/ak;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/Y;->tp:Lcom/google/android/gms/internal/ads/kk;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/kk;->DW:Lcom/google/android/gms/internal/ads/Mo;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/Mo;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/m;->a8:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/ak;->FH(Landroid/content/Context;Ljava/lang/String;)V

    :cond_44
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/m;->U2:Lcom/google/android/gms/internal/ads/_j;

    if-eqz v0, :cond_4c

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/_j;->j6(Z)V

    :cond_4c
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->EQ:Labcd/ox;

    if-eqz v0, :cond_64

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/Y;->tp:Lcom/google/android/gms/internal/ads/kk;

    if-eqz v0, :cond_64

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/kk;->DW:Lcom/google/android/gms/internal/ads/Mo;

    if-eqz v0, :cond_64

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "onSdkImpression"

    invoke-interface {v0, v2, v1}, Lcom/google/android/gms/internal/ads/Sc;->j6(Ljava/lang/String;Ljava/util/Map;)V

    :cond_64
    return-void
.end method

.method protected final g0()V
    .registers 11

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/Y;->tp:Lcom/google/android/gms/internal/ads/kk;

    if-eqz v0, :cond_9

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/kk;->DW:Lcom/google/android/gms/internal/ads/Mo;

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/Y;->EQ:Lcom/google/android/gms/internal/ads/lk;

    if-eqz v1, :cond_81

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/lk;->DW:Lcom/google/android/gms/internal/ads/zzasm;

    if-eqz v1, :cond_81

    iget-boolean v1, v1, Lcom/google/android/gms/internal/ads/zzasm;->ca:Z

    if-eqz v1, :cond_81

    if-eqz v0, :cond_81

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->a8()Lcom/google/android/gms/internal/ads/bg;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/Y;->FH:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/bg;->DW(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_81

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/Y;->v5:Lcom/google/android/gms/internal/ads/zzbbi;

    iget v2, v1, Lcom/google/android/gms/internal/ads/zzbbi;->DW:I

    iget v1, v1, Lcom/google/android/gms/internal/ads/zzbbi;->FH:I

    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x17

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->a8()Lcom/google/android/gms/internal/ads/bg;

    move-result-object v4

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/Mo;->getWebView()Landroid/webkit/WebView;

    move-result-object v6

    const-string v7, ""

    const-string v8, "javascript"

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/a;->wC()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {v4 .. v9}, Lcom/google/android/gms/internal/ads/bg;->j6(Ljava/lang/String;Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Labcd/ox;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/ads/internal/a;->EQ:Labcd/ox;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/a;->EQ:Labcd/ox;

    if-eqz v1, :cond_81

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/Mo;->getView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_81

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->a8()Lcom/google/android/gms/internal/ads/bg;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/a;->EQ:Labcd/ox;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/Mo;->getView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/ads/bg;->j6(Labcd/ox;Landroid/view/View;)V

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/a;->EQ:Labcd/ox;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/Mo;->j6(Labcd/ox;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->a8()Lcom/google/android/gms/internal/ads/bg;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/a;->EQ:Labcd/ox;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/bg;->j6(Labcd/ox;)V

    :cond_81
    invoke-super {p0}, Lcom/google/android/gms/ads/internal/fa;->g0()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/m;->QX:Z

    return-void
.end method

.method public final gn(Z)V
    .registers 3

    const-string v0, "setImmersiveMode must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/r;->j6(Ljava/lang/String;)V

    iput-boolean p1, p0, Lcom/google/android/gms/ads/internal/m;->Mr:Z

    return-void
.end method

.method public final gy()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/Y;->tp:Lcom/google/android/gms/internal/ads/kk;

    if-eqz v0, :cond_c

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/kk;->Ws:Z

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    invoke-direct {p0, v0}, Lcom/google/android/gms/ads/internal/m;->aM(Z)Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/m;->rN:Lcom/google/android/gms/internal/ads/Ti;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Ti;->VH()V

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/a;->fd()V

    return-void

    :cond_1c
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/Y;->tp:Lcom/google/android/gms/internal/ads/kk;

    if-eqz v0, :cond_38

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/kk;->yS:Ljava/util/List;

    if-eqz v0, :cond_38

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->v5()Lcom/google/android/gms/internal/ads/Nk;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v1, v0, Lcom/google/android/gms/ads/internal/Y;->FH:Landroid/content/Context;

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/Y;->v5:Lcom/google/android/gms/internal/ads/zzbbi;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzbbi;->j6:Ljava/lang/String;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/Y;->tp:Lcom/google/android/gms/internal/ads/kk;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/kk;->yS:Ljava/util/List;

    invoke-static {v1, v2, v0}, Lcom/google/android/gms/internal/ads/Nk;->j6(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)V

    :cond_38
    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/a;->fd()V

    return-void
.end method

.method protected final j6(Lcom/google/android/gms/internal/ads/lk;Lcom/google/android/gms/ads/internal/ua;Lcom/google/android/gms/internal/ads/Wj;)Lcom/google/android/gms/internal/ads/Mo;
    .registers 16

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->Zo()Lcom/google/android/gms/internal/ads/So;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v1, v0, Lcom/google/android/gms/ads/internal/Y;->FH:Landroid/content/Context;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/Y;->u7:Lcom/google/android/gms/internal/ads/zzwf;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/yp;->j6(Lcom/google/android/gms/internal/ads/zzwf;)Lcom/google/android/gms/internal/ads/yp;

    move-result-object v2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v3, v0, Lcom/google/android/gms/ads/internal/Y;->u7:Lcom/google/android/gms/internal/ads/zzwf;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzwf;->j6:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v6, v0, Lcom/google/android/gms/ads/internal/Y;->Hw:Lcom/google/android/gms/internal/ads/ix;

    iget-object v7, v0, Lcom/google/android/gms/ads/internal/Y;->v5:Lcom/google/android/gms/internal/ads/zzbbi;

    iget-object v8, p0, Lcom/google/android/gms/ads/internal/a;->j6:Lcom/google/android/gms/internal/ads/D;

    iget-object v10, p0, Lcom/google/android/gms/ads/internal/a;->we:Lcom/google/android/gms/ads/internal/ta;

    iget-object v11, p1, Lcom/google/android/gms/internal/ads/lk;->u7:Lcom/google/android/gms/internal/ads/YF;

    move-object v9, p0

    invoke-static/range {v1 .. v11}, Lcom/google/android/gms/internal/ads/So;->j6(Landroid/content/Context;Lcom/google/android/gms/internal/ads/yp;Ljava/lang/String;ZZLcom/google/android/gms/internal/ads/ix;Lcom/google/android/gms/internal/ads/zzbbi;Lcom/google/android/gms/internal/ads/D;Lcom/google/android/gms/ads/internal/P;Lcom/google/android/gms/ads/internal/ta;Lcom/google/android/gms/internal/ads/YF;)Lcom/google/android/gms/internal/ads/Mo;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/Mo;->ei()Lcom/google/android/gms/internal/ads/tp;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v7, 0x1

    move-object v2, p0

    move-object v3, p0

    move-object v5, p0

    move-object v6, p0

    move-object v8, p0

    move-object v9, p2

    move-object v10, p0

    move-object v11, p3

    invoke-interface/range {v1 .. v11}, Lcom/google/android/gms/internal/ads/tp;->j6(Lcom/google/android/gms/internal/ads/WG;Lcom/google/android/gms/ads/internal/gmsg/i;Lcom/google/android/gms/ads/internal/overlay/m;Lcom/google/android/gms/ads/internal/gmsg/k;Lcom/google/android/gms/ads/internal/overlay/s;ZLcom/google/android/gms/ads/internal/gmsg/F;Lcom/google/android/gms/ads/internal/ua;Lcom/google/android/gms/internal/ads/ag;Lcom/google/android/gms/internal/ads/Wj;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/internal/fa;->j6(Lcom/google/android/gms/internal/ads/Mo;)V

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/lk;->j6:Lcom/google/android/gms/internal/ads/zzasi;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzasi;->a8:Ljava/lang/String;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/Mo;->j6(Ljava/lang/String;)V

    new-instance p1, Lcom/google/android/gms/ads/internal/gmsg/g;

    invoke-direct {p1, p0}, Lcom/google/android/gms/ads/internal/gmsg/g;-><init>(Lcom/google/android/gms/ads/internal/gmsg/h;)V

    const-string p2, "/reward"

    invoke-interface {v0, p2, p1}, Lcom/google/android/gms/internal/ads/Mo;->j6(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/B;)V

    return-object v0
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/lk;Lcom/google/android/gms/internal/ads/D;)V
    .registers 6

    iget v0, p1, Lcom/google/android/gms/internal/ads/lk;->v5:I

    const/4 v1, -0x2

    if-eq v0, v1, :cond_9

    invoke-super {p0, p1, p2}, Lcom/google/android/gms/ads/internal/fa;->j6(Lcom/google/android/gms/internal/ads/lk;Lcom/google/android/gms/internal/ads/D;)V

    return-void

    :cond_9
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/lk;->FH:Lcom/google/android/gms/internal/ads/qe;

    const/4 v1, 0x1

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    invoke-direct {p0, v0}, Lcom/google/android/gms/ads/internal/m;->aM(Z)Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/m;->rN:Lcom/google/android/gms/internal/ads/Ti;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Ti;->Zo()V

    return-void

    :cond_1d
    sget-object v0, Lcom/google/android/gms/internal/ads/p;->Nh:Lcom/google/android/gms/internal/ads/e;

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->v5()Lcom/google/android/gms/internal/ads/m;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/m;->j6(Lcom/google/android/gms/internal/ads/e;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_33

    invoke-super {p0, p1, p2}, Lcom/google/android/gms/ads/internal/fa;->j6(Lcom/google/android/gms/internal/ads/lk;Lcom/google/android/gms/internal/ads/D;)V

    return-void

    :cond_33
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/lk;->DW:Lcom/google/android/gms/internal/ads/zzasm;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzasm;->u7:Z

    iget-object v2, p1, Lcom/google/android/gms/internal/ads/lk;->j6:Lcom/google/android/gms/internal/ads/zzasi;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzasi;->FH:Lcom/google/android/gms/internal/ads/zzwb;

    invoke-static {v2}, Lcom/google/android/gms/ads/internal/a;->FH(Lcom/google/android/gms/internal/ads/zzwb;)Z

    move-result v2

    if-eqz v2, :cond_4c

    xor-int/2addr v0, v1

    if-eqz v0, :cond_4c

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/m;->DW(Lcom/google/android/gms/internal/ads/lk;)Lcom/google/android/gms/internal/ads/lk;

    move-result-object p1

    iput-object p1, v0, Lcom/google/android/gms/ads/internal/Y;->EQ:Lcom/google/android/gms/internal/ads/lk;

    :cond_4c
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object p1, p1, Lcom/google/android/gms/ads/internal/Y;->EQ:Lcom/google/android/gms/internal/ads/lk;

    invoke-super {p0, p1, p2}, Lcom/google/android/gms/ads/internal/fa;->j6(Lcom/google/android/gms/internal/ads/lk;Lcom/google/android/gms/internal/ads/D;)V

    return-void
.end method

.method public final j6(ZF)V
    .registers 3

    iput-boolean p1, p0, Lcom/google/android/gms/ads/internal/m;->aM:Z

    iput p2, p0, Lcom/google/android/gms/ads/internal/m;->j3:F

    return-void
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/kk;Lcom/google/android/gms/internal/ads/kk;)Z
    .registers 6

    iget-boolean v0, p2, Lcom/google/android/gms/internal/ads/kk;->Ws:Z

    invoke-direct {p0, v0}, Lcom/google/android/gms/ads/internal/m;->aM(Z)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/Ti;->j6(Lcom/google/android/gms/internal/ads/kk;Lcom/google/android/gms/internal/ads/kk;)Z

    move-result p1

    return p1

    :cond_d
    invoke-super {p0, p1, p2}, Lcom/google/android/gms/ads/internal/fa;->j6(Lcom/google/android/gms/internal/ads/kk;Lcom/google/android/gms/internal/ads/kk;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_15

    return v0

    :cond_15
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/internal/Y;->Hw()Z

    move-result p1

    if-nez p1, :cond_2e

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v1, p1, Lcom/google/android/gms/ads/internal/Y;->sh:Landroid/view/View;

    if-eqz v1, :cond_2e

    iget-object v2, p2, Lcom/google/android/gms/internal/ads/kk;->EQ:Lorg/json/JSONObject;

    if-eqz v2, :cond_2e

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/a;->gn:Lcom/google/android/gms/internal/ads/rE;

    iget-object p1, p1, Lcom/google/android/gms/ads/internal/Y;->u7:Lcom/google/android/gms/internal/ads/zzwf;

    invoke-virtual {v2, p1, p2, v1}, Lcom/google/android/gms/internal/ads/rE;->j6(Lcom/google/android/gms/internal/ads/zzwf;Lcom/google/android/gms/internal/ads/kk;Landroid/view/View;)V

    :cond_2e
    invoke-virtual {p0, p2, v0}, Lcom/google/android/gms/ads/internal/aa;->DW(Lcom/google/android/gms/internal/ads/kk;Z)V

    const/4 p1, 0x1

    return p1
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/zzwb;Lcom/google/android/gms/internal/ads/D;)Z
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/Y;->tp:Lcom/google/android/gms/internal/ads/kk;

    if-eqz v0, :cond_d

    const-string p1, "An interstitial is already loading. Aborting."

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    :cond_d
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/m;->U2:Lcom/google/android/gms/internal/ads/_j;

    if-nez v0, :cond_3c

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/a;->FH(Lcom/google/android/gms/internal/ads/zzwb;)Z

    move-result v0

    if-eqz v0, :cond_3c

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->ei()Lcom/google/android/gms/internal/ads/ak;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/Y;->FH:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/ak;->FH(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3c

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/Y;->DW:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3c

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    new-instance v1, Lcom/google/android/gms/internal/ads/_j;

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/Y;->FH:Landroid/content/Context;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/Y;->DW:Ljava/lang/String;

    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/internal/ads/_j;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/google/android/gms/ads/internal/m;->U2:Lcom/google/android/gms/internal/ads/_j;

    :cond_3c
    invoke-super {p0, p1, p2}, Lcom/google/android/gms/ads/internal/aa;->j6(Lcom/google/android/gms/internal/ads/zzwb;Lcom/google/android/gms/internal/ads/D;)Z

    move-result p1

    return p1
.end method

.method protected final j6(Lcom/google/android/gms/internal/ads/zzwb;Lcom/google/android/gms/internal/ads/kk;Z)Z
    .registers 4

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/internal/Y;->Hw()Z

    move-result p1

    if-eqz p1, :cond_14

    iget-object p1, p2, Lcom/google/android/gms/internal/ads/kk;->DW:Lcom/google/android/gms/internal/ads/Mo;

    if-eqz p1, :cond_14

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->VH()Lcom/google/android/gms/internal/ads/Vk;

    iget-object p1, p2, Lcom/google/android/gms/internal/ads/kk;->DW:Lcom/google/android/gms/internal/ads/Mo;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/Vk;->j6(Lcom/google/android/gms/internal/ads/Mo;)Z

    :cond_14
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/a;->v5:Lcom/google/android/gms/ads/internal/M;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/internal/M;->v5()Z

    move-result p1

    return p1
.end method

.method public final showInterstitial()V
    .registers 14

    const-string v0, "showInterstitial must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/r;->j6(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/Y;->tp:Lcom/google/android/gms/internal/ads/kk;

    const/4 v10, 0x1

    if-eqz v0, :cond_12

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/kk;->Ws:Z

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    invoke-direct {p0, v0}, Lcom/google/android/gms/ads/internal/m;->aM(Z)Z

    move-result v0

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/m;->rN:Lcom/google/android/gms/internal/ads/Ti;

    iget-boolean v1, p0, Lcom/google/android/gms/ads/internal/m;->Mr:Z

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/Ti;->j6(Z)V

    return-void

    :cond_21
    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->ei()Lcom/google/android/gms/internal/ads/ak;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/Y;->FH:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/ak;->FH(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5a

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->ei()Lcom/google/android/gms/internal/ads/ak;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/Y;->FH:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/ak;->Hw(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/m;->a8:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/m;->lg:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_52

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_58

    :cond_52
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    :goto_58
    iput-object v0, p0, Lcom/google/android/gms/ads/internal/m;->a8:Ljava/lang/String;

    :cond_5a
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/Y;->tp:Lcom/google/android/gms/internal/ads/kk;

    if-nez v0, :cond_66

    const-string v0, "The interstitial has not loaded."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;)V

    return-void

    :cond_66
    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/m;->QX:Z

    if-nez v0, :cond_7d

    sget-object v0, Lcom/google/android/gms/internal/ads/p;->TJ:Lcom/google/android/gms/internal/ads/e;

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->v5()Lcom/google/android/gms/internal/ads/m;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/m;->j6(Lcom/google/android/gms/internal/ads/e;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_7d

    return-void

    :cond_7d
    sget-object v0, Lcom/google/android/gms/internal/ads/p;->q7:Lcom/google/android/gms/internal/ads/e;

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->v5()Lcom/google/android/gms/internal/ads/m;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/m;->j6(Lcom/google/android/gms/internal/ads/e;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v1, "It is not recommended to show an interstitial when app is not in foreground."

    if-eqz v0, :cond_a2

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->v5()Lcom/google/android/gms/internal/ads/Nk;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/Y;->FH:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Nk;->gn(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_a2

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;)V

    return-void

    :cond_a2
    sget-object v0, Lcom/google/android/gms/internal/ads/p;->hp:Lcom/google/android/gms/internal/ads/e;

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->v5()Lcom/google/android/gms/internal/ads/m;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/m;->j6(Lcom/google/android/gms/internal/ads/e;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_10c

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/Y;->FH:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_c7

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/Y;->FH:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_cb

    :cond_c7
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/Y;->FH:Landroid/content/Context;

    :goto_cb
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-boolean v2, p0, Lcom/google/android/gms/ads/internal/m;->QX:Z

    const-string v3, "action"

    const-string v4, "appid"

    if-nez v2, :cond_ec

    const-string v2, "It is not recommended to show an interstitial before onAdLoaded completes."

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;)V

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v2, v4, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "show_interstitial_before_load_finish"

    invoke-virtual {v2, v3, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lcom/google/android/gms/ads/internal/m;->J0(Landroid/os/Bundle;)V

    :cond_ec
    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->v5()Lcom/google/android/gms/internal/ads/Nk;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/Y;->FH:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/Nk;->VH(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_10c

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;)V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v1, v4, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "show_interstitial_app_not_in_foreground"

    invoke-virtual {v1, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/google/android/gms/ads/internal/m;->J0(Landroid/os/Bundle;)V

    :cond_10c
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/Y;->v5()Z

    move-result v0

    if-eqz v0, :cond_115

    return-void

    :cond_115
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/Y;->tp:Lcom/google/android/gms/internal/ads/kk;

    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/kk;->Ws:Z

    if-eqz v1, :cond_13a

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/kk;->XL:Lcom/google/android/gms/internal/ads/Je;

    if-eqz v0, :cond_13a

    :try_start_121
    iget-boolean v1, p0, Lcom/google/android/gms/ads/internal/m;->Mr:Z

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/Je;->gn(Z)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/Y;->tp:Lcom/google/android/gms/internal/ads/kk;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/kk;->XL:Lcom/google/android/gms/internal/ads/Je;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/Je;->showInterstitial()V
    :try_end_12f
    .catch Landroid/os/RemoteException; {:try_start_121 .. :try_end_12f} :catch_130

    return-void

    :catch_130
    move-exception v0

    const-string v1, "Could not show interstitial."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/jm;->FH(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/m;->zg()V

    return-void

    :cond_13a
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/Y;->tp:Lcom/google/android/gms/internal/ads/kk;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/kk;->DW:Lcom/google/android/gms/internal/ads/Mo;

    if-nez v0, :cond_148

    const-string v0, "The interstitial failed to load."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;)V

    return-void

    :cond_148
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/Mo;->Mr()Z

    move-result v0

    if-eqz v0, :cond_154

    const-string v0, "The interstitial is already showing."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;)V

    return-void

    :cond_154
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/Y;->tp:Lcom/google/android/gms/internal/ads/kk;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/kk;->DW:Lcom/google/android/gms/internal/ads/Mo;

    invoke-interface {v0, v10}, Lcom/google/android/gms/internal/ads/Mo;->DW(Z)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v1, v0, Lcom/google/android/gms/ads/internal/Y;->tp:Lcom/google/android/gms/internal/ads/kk;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/kk;->DW:Lcom/google/android/gms/internal/ads/Mo;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/Mo;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/Y;->j6(Landroid/view/View;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v1, v0, Lcom/google/android/gms/ads/internal/Y;->tp:Lcom/google/android/gms/internal/ads/kk;

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/kk;->EQ:Lorg/json/JSONObject;

    if-eqz v2, :cond_179

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/a;->gn:Lcom/google/android/gms/internal/ads/rE;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/Y;->u7:Lcom/google/android/gms/internal/ads/zzwf;

    invoke-virtual {v2, v0, v1}, Lcom/google/android/gms/internal/ads/rE;->j6(Lcom/google/android/gms/internal/ads/zzwf;Lcom/google/android/gms/internal/ads/kk;)V

    :cond_179
    invoke-static {}, Lcom/google/android/gms/common/util/o;->j6()Z

    move-result v0

    if-eqz v0, :cond_1ac

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/Y;->tp:Lcom/google/android/gms/internal/ads/kk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/kk;->j6()Z

    move-result v1

    if-eqz v1, :cond_19e

    new-instance v1, Lcom/google/android/gms/internal/ads/PE;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/Y;->FH:Landroid/content/Context;

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/kk;->DW:Lcom/google/android/gms/internal/ads/Mo;

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/Mo;->getView()Landroid/view/View;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/internal/ads/PE;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/kk;->DW:Lcom/google/android/gms/internal/ads/Mo;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/PE;->j6(Lcom/google/android/gms/internal/ads/TE;)V

    goto :goto_1ac

    :cond_19e
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/kk;->DW:Lcom/google/android/gms/internal/ads/Mo;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/Mo;->ei()Lcom/google/android/gms/internal/ads/tp;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/ads/internal/n;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/ads/internal/n;-><init>(Lcom/google/android/gms/ads/internal/m;Lcom/google/android/gms/internal/ads/kk;)V

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/tp;->j6(Lcom/google/android/gms/internal/ads/wp;)V

    :cond_1ac
    :goto_1ac
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-boolean v0, v0, Lcom/google/android/gms/ads/internal/Y;->dx:Z

    if-eqz v0, :cond_1be

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->v5()Lcom/google/android/gms/internal/ads/Nk;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/Y;->FH:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Nk;->u7(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_1bf

    :cond_1be
    const/4 v0, 0x0

    :goto_1bf
    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->yS()Lcom/google/android/gms/internal/ads/Ml;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/Ml;->j6(Landroid/graphics/Bitmap;)I

    move-result v1

    iput v1, p0, Lcom/google/android/gms/ads/internal/m;->XL:I

    if-eqz v0, :cond_1d4

    new-instance v0, Lcom/google/android/gms/ads/internal/p;

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/ads/internal/p;-><init>(Lcom/google/android/gms/ads/internal/m;I)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Ak;->v5()Lcom/google/android/gms/internal/ads/Hm;

    return-void

    :cond_1d4
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-boolean v2, v0, Lcom/google/android/gms/ads/internal/Y;->dx:Z

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->v5()Lcom/google/android/gms/internal/ads/Nk;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/Y;->FH:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Nk;->Ws(Landroid/content/Context;)Z

    move-result v3

    iget-boolean v7, p0, Lcom/google/android/gms/ads/internal/m;->Mr:Z

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/Y;->tp:Lcom/google/android/gms/internal/ads/kk;

    new-instance v11, Lcom/google/android/gms/ads/internal/zzaq;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, -0x1

    iget-boolean v8, v0, Lcom/google/android/gms/internal/ads/kk;->ef:Z

    iget-boolean v9, v0, Lcom/google/android/gms/internal/ads/kk;->g3:Z

    move-object v1, v11

    invoke-direct/range {v1 .. v9}, Lcom/google/android/gms/ads/internal/zzaq;-><init>(ZZZFIZZZ)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/Y;->tp:Lcom/google/android/gms/internal/ads/kk;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/kk;->DW:Lcom/google/android/gms/internal/ads/Mo;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/Mo;->getRequestedOrientation()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_209

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/Y;->tp:Lcom/google/android/gms/internal/ads/kk;

    iget v0, v0, Lcom/google/android/gms/internal/ads/kk;->gn:I

    :cond_209
    move v6, v0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v1, v0, Lcom/google/android/gms/ads/internal/Y;->tp:Lcom/google/android/gms/internal/ads/kk;

    new-instance v12, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v5, v1, Lcom/google/android/gms/internal/ads/kk;->DW:Lcom/google/android/gms/internal/ads/Mo;

    iget-object v7, v0, Lcom/google/android/gms/ads/internal/Y;->v5:Lcom/google/android/gms/internal/ads/zzbbi;

    iget-object v8, v1, Lcom/google/android/gms/internal/ads/kk;->P8:Ljava/lang/String;

    move-object v1, v12

    move-object v2, p0

    move-object v3, p0

    move-object v4, p0

    move-object v9, v11

    invoke-direct/range {v1 .. v9}, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;-><init>(Lcom/google/android/gms/internal/ads/WG;Lcom/google/android/gms/ads/internal/overlay/m;Lcom/google/android/gms/ads/internal/overlay/s;Lcom/google/android/gms/internal/ads/Mo;ILcom/google/android/gms/internal/ads/zzbbi;Ljava/lang/String;Lcom/google/android/gms/ads/internal/zzaq;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->FH()Lcom/google/android/gms/ads/internal/overlay/k;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/Y;->FH:Landroid/content/Context;

    invoke-static {v0, v12, v10}, Lcom/google/android/gms/ads/internal/overlay/k;->j6(Landroid/content/Context;Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;Z)V

    return-void
.end method

.method public final uC()V
    .registers 3

    invoke-super {p0}, Lcom/google/android/gms/ads/internal/aa;->uC()V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->gn:Lcom/google/android/gms/internal/ads/rE;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/Y;->tp:Lcom/google/android/gms/internal/ads/kk;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/rE;->j6(Lcom/google/android/gms/internal/ads/kk;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/m;->U2:Lcom/google/android/gms/internal/ads/_j;

    if-eqz v0, :cond_14

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/_j;->j6(Z)V

    :cond_14
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/a;->EQ:Labcd/ox;

    return-void
.end method

.method public final uD()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/Y;->tp:Lcom/google/android/gms/internal/ads/kk;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/kk;->DW:Lcom/google/android/gms/internal/ads/Mo;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/Mo;->ef()Lcom/google/android/gms/ads/internal/overlay/c;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/overlay/c;->K3()V

    :cond_f
    return-void
.end method

.method public final zg()V
    .registers 3

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->yS()Lcom/google/android/gms/internal/ads/Ml;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/ads/internal/m;->XL:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/Ml;->DW(Ljava/lang/Integer;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/Y;->Hw()Z

    move-result v0

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/Y;->DW()V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/google/android/gms/ads/internal/Y;->tp:Lcom/google/android/gms/internal/ads/kk;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/google/android/gms/ads/internal/Y;->dx:Z

    iput-boolean v1, p0, Lcom/google/android/gms/ads/internal/m;->QX:Z

    :cond_24
    return-void
.end method
