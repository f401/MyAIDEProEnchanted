.class final Lcom/google/android/gms/ads/internal/F;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/google/android/gms/internal/ads/ka;",
        ">;"
    }
.end annotation


# instance fields
.field private final DW:Lorg/json/JSONArray;

.field private final FH:I

.field private final Hw:Lcom/google/android/gms/internal/ads/lk;

.field private final j6:I

.field private final v5:Lcom/google/android/gms/ads/internal/C;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/C;ILorg/json/JSONArray;ILcom/google/android/gms/internal/ads/lk;)V
    .registers 6

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/F;->v5:Lcom/google/android/gms/ads/internal/C;

    iput p2, p0, Lcom/google/android/gms/ads/internal/F;->j6:I

    iput-object p3, p0, Lcom/google/android/gms/ads/internal/F;->DW:Lorg/json/JSONArray;

    iput p4, p0, Lcom/google/android/gms/ads/internal/F;->FH:I

    iput-object p5, p0, Lcom/google/android/gms/ads/internal/F;->Hw:Lcom/google/android/gms/internal/ads/lk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .registers 91

    move-object/from16 v0, p0

    iget v1, v0, Lcom/google/android/gms/ads/internal/F;->j6:I

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/F;->DW:Lorg/json/JSONArray;

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lt v1, v2, :cond_e

    const/4 v1, 0x0

    return-object v1

    :cond_e
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/F;->DW:Lorg/json/JSONArray;

    iget v3, v0, Lcom/google/android/gms/ads/internal/F;->j6:I

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "ads"

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, v0, Lcom/google/android/gms/ads/internal/F;->v5:Lcom/google/android/gms/ads/internal/C;

    iget-object v3, v1, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    new-instance v12, Lcom/google/android/gms/ads/internal/C;

    iget-object v5, v3, Lcom/google/android/gms/ads/internal/Y;->FH:Landroid/content/Context;

    iget-object v6, v1, Lcom/google/android/gms/ads/internal/a;->we:Lcom/google/android/gms/ads/internal/ta;

    iget-object v7, v3, Lcom/google/android/gms/ads/internal/Y;->u7:Lcom/google/android/gms/internal/ads/zzwf;

    iget-object v8, v3, Lcom/google/android/gms/ads/internal/Y;->DW:Ljava/lang/String;

    iget-object v9, v1, Lcom/google/android/gms/ads/internal/aa;->J0:Lcom/google/android/gms/internal/ads/Ge;

    iget-object v10, v3, Lcom/google/android/gms/ads/internal/Y;->v5:Lcom/google/android/gms/internal/ads/zzbbi;

    const/4 v11, 0x1

    move-object v4, v12

    invoke-direct/range {v4 .. v11}, Lcom/google/android/gms/ads/internal/C;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/ta;Lcom/google/android/gms/internal/ads/zzwf;Ljava/lang/String;Lcom/google/android/gms/internal/ads/Ge;Lcom/google/android/gms/internal/ads/zzbbi;Z)V

    iget-object v1, v0, Lcom/google/android/gms/ads/internal/F;->v5:Lcom/google/android/gms/ads/internal/C;

    iget-object v3, v1, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v4, v12, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    invoke-static {v1, v3, v4}, Lcom/google/android/gms/ads/internal/C;->j6(Lcom/google/android/gms/ads/internal/C;Lcom/google/android/gms/ads/internal/Y;Lcom/google/android/gms/ads/internal/Y;)V

    invoke-virtual {v12}, Lcom/google/android/gms/ads/internal/C;->zg()V

    iget-object v1, v0, Lcom/google/android/gms/ads/internal/F;->v5:Lcom/google/android/gms/ads/internal/C;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/a;->DW:Lcom/google/android/gms/internal/ads/A;

    invoke-virtual {v12, v1}, Lcom/google/android/gms/ads/internal/a;->j6(Lcom/google/android/gms/internal/ads/A;)V

    iget-object v1, v12, Lcom/google/android/gms/ads/internal/a;->j6:Lcom/google/android/gms/internal/ads/D;

    iget v3, v0, Lcom/google/android/gms/ads/internal/F;->j6:I

    iget v4, v0, Lcom/google/android/gms/ads/internal/F;->FH:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "num_ads_requested"

    invoke-virtual {v1, v5, v4}, Lcom/google/android/gms/internal/ads/D;->j6(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "ad_index"

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v4, v3}, Lcom/google/android/gms/internal/ads/D;->j6(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v0, Lcom/google/android/gms/ads/internal/F;->Hw:Lcom/google/android/gms/internal/ads/lk;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/lk;->j6:Lcom/google/android/gms/internal/ads/zzasi;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzasi;->FH:Lcom/google/android/gms/internal/ads/zzwb;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzwb;->FH:Landroid/os/Bundle;

    new-instance v4, Landroid/os/Bundle;

    if-eqz v3, :cond_7e

    invoke-direct {v4, v3}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    goto :goto_81

    :cond_7e
    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    :goto_81
    const-string v3, "_ad"

    invoke-virtual {v4, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzasi;->FH:Lcom/google/android/gms/internal/ads/zzwb;

    new-instance v13, Lcom/google/android/gms/internal/ads/zzwb;

    move-object/from16 v38, v13

    iget v14, v2, Lcom/google/android/gms/internal/ads/zzwb;->j6:I

    iget-wide v5, v2, Lcom/google/android/gms/internal/ads/zzwb;->DW:J

    move-wide v15, v5

    iget v3, v2, Lcom/google/android/gms/internal/ads/zzwb;->Hw:I

    move/from16 v18, v3

    iget-object v3, v2, Lcom/google/android/gms/internal/ads/zzwb;->v5:Ljava/util/List;

    move-object/from16 v19, v3

    iget-boolean v3, v2, Lcom/google/android/gms/internal/ads/zzwb;->Zo:Z

    move/from16 v20, v3

    iget v3, v2, Lcom/google/android/gms/internal/ads/zzwb;->VH:I

    move/from16 v21, v3

    iget-boolean v3, v2, Lcom/google/android/gms/internal/ads/zzwb;->gn:Z

    move/from16 v22, v3

    iget-object v3, v2, Lcom/google/android/gms/internal/ads/zzwb;->u7:Ljava/lang/String;

    move-object/from16 v23, v3

    iget-object v3, v2, Lcom/google/android/gms/internal/ads/zzwb;->tp:Lcom/google/android/gms/internal/ads/zzzs;

    move-object/from16 v24, v3

    iget-object v3, v2, Lcom/google/android/gms/internal/ads/zzwb;->EQ:Landroid/location/Location;

    move-object/from16 v25, v3

    iget-object v3, v2, Lcom/google/android/gms/internal/ads/zzwb;->we:Ljava/lang/String;

    move-object/from16 v26, v3

    iget-object v3, v2, Lcom/google/android/gms/internal/ads/zzwb;->J0:Landroid/os/Bundle;

    move-object/from16 v27, v3

    iget-object v3, v2, Lcom/google/android/gms/internal/ads/zzwb;->J8:Landroid/os/Bundle;

    move-object/from16 v28, v3

    iget-object v3, v2, Lcom/google/android/gms/internal/ads/zzwb;->Ws:Ljava/util/List;

    move-object/from16 v29, v3

    iget-object v3, v2, Lcom/google/android/gms/internal/ads/zzwb;->QX:Ljava/lang/String;

    move-object/from16 v30, v3

    iget-object v3, v2, Lcom/google/android/gms/internal/ads/zzwb;->XL:Ljava/lang/String;

    move-object/from16 v31, v3

    iget-boolean v3, v2, Lcom/google/android/gms/internal/ads/zzwb;->aM:Z

    move/from16 v32, v3

    const/16 v33, 0x0

    iget v3, v2, Lcom/google/android/gms/internal/ads/zzwb;->Mr:I

    move/from16 v34, v3

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzwb;->U2:Ljava/lang/String;

    move-object/from16 v35, v2

    move-object/from16 v17, v4

    invoke-direct/range {v13 .. v35}, Lcom/google/android/gms/internal/ads/zzwb;-><init>(IJLandroid/os/Bundle;ILjava/util/List;ZIZLjava/lang/String;Lcom/google/android/gms/internal/ads/zzzs;Landroid/location/Location;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLcom/google/android/gms/internal/ads/zzvv;ILjava/lang/String;)V

    new-instance v2, Lcom/google/android/gms/internal/ads/Yh;

    move-object/from16 v36, v2

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzasi;->DW:Landroid/os/Bundle;

    move-object/from16 v37, v3

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzasi;->Hw:Lcom/google/android/gms/internal/ads/zzwf;

    move-object/from16 v39, v3

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzasi;->v5:Ljava/lang/String;

    move-object/from16 v40, v3

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzasi;->Zo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v41, v3

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzasi;->VH:Landroid/content/pm/PackageInfo;

    move-object/from16 v42, v3

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzasi;->u7:Ljava/lang/String;

    move-object/from16 v43, v3

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzasi;->tp:Ljava/lang/String;

    move-object/from16 v44, v3

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzasi;->EQ:Lcom/google/android/gms/internal/ads/zzbbi;

    move-object/from16 v45, v3

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzasi;->we:Landroid/os/Bundle;

    move-object/from16 v46, v3

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzasi;->J8:Ljava/util/List;

    move-object/from16 v47, v3

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzasi;->yS:Ljava/util/List;

    move-object/from16 v48, v3

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzasi;->Ws:Landroid/os/Bundle;

    move-object/from16 v49, v3

    iget-boolean v3, v1, Lcom/google/android/gms/internal/ads/zzasi;->QX:Z

    move/from16 v50, v3

    iget v3, v1, Lcom/google/android/gms/internal/ads/zzasi;->XL:I

    move/from16 v51, v3

    iget v3, v1, Lcom/google/android/gms/internal/ads/zzasi;->aM:I

    move/from16 v52, v3

    iget v3, v1, Lcom/google/android/gms/internal/ads/zzasi;->j3:F

    move/from16 v53, v3

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzasi;->Mr:Ljava/lang/String;

    move-object/from16 v54, v3

    iget-wide v3, v1, Lcom/google/android/gms/internal/ads/zzasi;->U2:J

    move-wide/from16 v55, v3

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzasi;->a8:Ljava/lang/String;

    move-object/from16 v57, v3

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzasi;->lg:Ljava/util/List;

    move-object/from16 v58, v3

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzasi;->rN:Ljava/lang/String;

    move-object/from16 v59, v3

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzasi;->er:Lcom/google/android/gms/internal/ads/zzacp;

    move-object/from16 v60, v3

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzasi;->BT:Ljava/lang/String;

    move-object/from16 v61, v3

    iget v3, v1, Lcom/google/android/gms/internal/ads/zzasi;->vy:F

    move/from16 v62, v3

    iget-boolean v3, v1, Lcom/google/android/gms/internal/ads/zzasi;->ro:Z

    move/from16 v63, v3

    iget v3, v1, Lcom/google/android/gms/internal/ads/zzasi;->P8:I

    move/from16 v64, v3

    iget v3, v1, Lcom/google/android/gms/internal/ads/zzasi;->ei:I

    move/from16 v65, v3

    iget-boolean v3, v1, Lcom/google/android/gms/internal/ads/zzasi;->nw:Z

    move/from16 v66, v3

    iget-boolean v3, v1, Lcom/google/android/gms/internal/ads/zzasi;->SI:Z

    move/from16 v67, v3

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzasi;->KD:Ljava/lang/String;

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/vm;->j6(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/Gm;

    move-result-object v68

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzasi;->cn:Ljava/lang/String;

    move-object/from16 v69, v3

    iget-boolean v3, v1, Lcom/google/android/gms/internal/ads/zzasi;->sh:Z

    move/from16 v70, v3

    iget v3, v1, Lcom/google/android/gms/internal/ads/zzasi;->cb:I

    move/from16 v71, v3

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzasi;->dx:Landroid/os/Bundle;

    move-object/from16 v72, v3

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzasi;->sG:Ljava/lang/String;

    move-object/from16 v73, v3

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzasi;->ef:Lcom/google/android/gms/internal/ads/zzyv;

    move-object/from16 v74, v3

    iget-boolean v3, v1, Lcom/google/android/gms/internal/ads/zzasi;->Sf:Z

    move/from16 v75, v3

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzasi;->vJ:Landroid/os/Bundle;

    move-object/from16 v76, v3

    iget-boolean v3, v1, Lcom/google/android/gms/internal/ads/zzasi;->ca:Z

    move/from16 v77, v3

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzasi;->gn:Ljava/lang/String;

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/vm;->j6(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/Gm;

    move-result-object v78

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzasi;->x9:Ljava/util/List;

    move-object/from16 v79, v3

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzasi;->Qq:Ljava/lang/String;

    move-object/from16 v80, v3

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzasi;->sy:Ljava/util/List;

    move-object/from16 v81, v3

    const/16 v82, 0x1

    iget-boolean v3, v1, Lcom/google/android/gms/internal/ads/zzasi;->lp:Z

    move/from16 v83, v3

    iget-boolean v3, v1, Lcom/google/android/gms/internal/ads/zzasi;->OW:Z

    move/from16 v84, v3

    iget-boolean v3, v1, Lcom/google/android/gms/internal/ads/zzasi;->br:Z

    move/from16 v85, v3

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzasi;->XX:Ljava/util/ArrayList;

    move-object/from16 v86, v3

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzasi;->kQ:Ljava/lang/String;

    move-object/from16 v87, v3

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzasi;->yO:Lcom/google/android/gms/internal/ads/zzafz;

    move-object/from16 v88, v3

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzasi;->jJ:Landroid/os/Bundle;

    move-object/from16 v89, v1

    invoke-direct/range {v36 .. v89}, Lcom/google/android/gms/internal/ads/Yh;-><init>(Landroid/os/Bundle;Lcom/google/android/gms/internal/ads/zzwb;Lcom/google/android/gms/internal/ads/zzwf;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Landroid/content/pm/PackageInfo;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbbi;Landroid/os/Bundle;Ljava/util/List;Ljava/util/List;Landroid/os/Bundle;ZIIFLjava/lang/String;JLjava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzacp;Ljava/lang/String;FZIIZZLjava/util/concurrent/Future;Ljava/lang/String;ZILandroid/os/Bundle;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzyv;ZLandroid/os/Bundle;ZLjava/util/concurrent/Future;Ljava/util/List;Ljava/lang/String;Ljava/util/List;IZZZLjava/util/ArrayList;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzafz;Landroid/os/Bundle;)V

    iget-object v1, v12, Lcom/google/android/gms/ads/internal/a;->j6:Lcom/google/android/gms/internal/ads/D;

    invoke-virtual {v12, v2, v1}, Lcom/google/android/gms/ads/internal/aa;->j6(Lcom/google/android/gms/internal/ads/Yh;Lcom/google/android/gms/internal/ads/D;)Z

    invoke-virtual {v12}, Lcom/google/android/gms/ads/internal/C;->N2()Ljava/util/concurrent/Future;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/ka;

    return-object v1
.end method
