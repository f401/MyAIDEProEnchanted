.class final Lcom/google/android/gms/ads/internal/F;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
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
    .registers 60

    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/gms/ads/internal/F;->j6:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gms/ads/internal/F;->DW:Lorg/json/JSONArray;

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lt v2, v3, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gms/ads/internal/F;->DW:Lorg/json/JSONArray;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/gms/ads/internal/F;->j6:I

    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "ads"

    invoke-virtual {v10, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/gms/ads/internal/F;->v5:Lcom/google/android/gms/ads/internal/C;

    iget-object v8, v7, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    new-instance v2, Lcom/google/android/gms/ads/internal/C;

    iget-object v3, v8, Lcom/google/android/gms/ads/internal/Y;->FH:Landroid/content/Context;

    iget-object v4, v7, Lcom/google/android/gms/ads/internal/a;->we:Lcom/google/android/gms/ads/internal/ta;

    iget-object v5, v8, Lcom/google/android/gms/ads/internal/Y;->u7:Lcom/google/android/gms/internal/ads/zzwf;

    iget-object v6, v8, Lcom/google/android/gms/ads/internal/Y;->DW:Ljava/lang/String;

    iget-object v7, v7, Lcom/google/android/gms/ads/internal/aa;->J0:Lcom/google/android/gms/internal/ads/Ge;

    iget-object v8, v8, Lcom/google/android/gms/ads/internal/Y;->v5:Lcom/google/android/gms/internal/ads/zzbbi;

    const/4 v9, 0x1

    invoke-direct/range {v2 .. v9}, Lcom/google/android/gms/ads/internal/C;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/ta;Lcom/google/android/gms/internal/ads/zzwf;Ljava/lang/String;Lcom/google/android/gms/internal/ads/Ge;Lcom/google/android/gms/internal/ads/zzbbi;Z)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gms/ads/internal/F;->v5:Lcom/google/android/gms/ads/internal/C;

    iget-object v4, v3, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v5, v2, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    invoke-static {v3, v4, v5}, Lcom/google/android/gms/ads/internal/C;->j6(Lcom/google/android/gms/ads/internal/C;Lcom/google/android/gms/ads/internal/Y;Lcom/google/android/gms/ads/internal/Y;)V

    invoke-virtual {v2}, Lcom/google/android/gms/ads/internal/C;->zg()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gms/ads/internal/F;->v5:Lcom/google/android/gms/ads/internal/C;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/a;->DW:Lcom/google/android/gms/internal/ads/A;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/ads/internal/a;->j6(Lcom/google/android/gms/internal/ads/A;)V

    iget-object v3, v2, Lcom/google/android/gms/ads/internal/a;->j6:Lcom/google/android/gms/internal/ads/D;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/gms/ads/internal/F;->j6:I

    const-string v5, "num_ads_requested"

    move-object/from16 v0, p0

    iget v6, v0, Lcom/google/android/gms/ads/internal/F;->FH:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lcom/google/android/gms/internal/ads/D;->j6(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "ad_index"

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v5, v4}, Lcom/google/android/gms/internal/ads/D;->j6(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gms/ads/internal/F;->Hw:Lcom/google/android/gms/internal/ads/lk;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/lk;->j6:Lcom/google/android/gms/internal/ads/zzasi;

    invoke-virtual {v10}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v3, Lcom/google/android/gms/internal/ads/zzasi;->FH:Lcom/google/android/gms/internal/ads/zzwb;

    iget-object v5, v5, Lcom/google/android/gms/internal/ads/zzwb;->FH:Landroid/os/Bundle;

    if-eqz v5, :cond_1

    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8, v5}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    :goto_1
    const-string v5, "_ad"

    invoke-virtual {v8, v5, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v3, Lcom/google/android/gms/internal/ads/zzasi;->FH:Lcom/google/android/gms/internal/ads/zzwb;

    move-object/from16 v26, v0

    new-instance v4, Lcom/google/android/gms/internal/ads/zzwb;

    move-object/from16 v0, v26

    iget v5, v0, Lcom/google/android/gms/internal/ads/zzwb;->j6:I

    move-object/from16 v0, v26

    iget-wide v6, v0, Lcom/google/android/gms/internal/ads/zzwb;->DW:J

    move-object/from16 v0, v26

    iget v9, v0, Lcom/google/android/gms/internal/ads/zzwb;->Hw:I

    move-object/from16 v0, v26

    iget-object v10, v0, Lcom/google/android/gms/internal/ads/zzwb;->v5:Ljava/util/List;

    move-object/from16 v0, v26

    iget-boolean v11, v0, Lcom/google/android/gms/internal/ads/zzwb;->Zo:Z

    move-object/from16 v0, v26

    iget v12, v0, Lcom/google/android/gms/internal/ads/zzwb;->VH:I

    move-object/from16 v0, v26

    iget-boolean v13, v0, Lcom/google/android/gms/internal/ads/zzwb;->gn:Z

    move-object/from16 v0, v26

    iget-object v14, v0, Lcom/google/android/gms/internal/ads/zzwb;->u7:Ljava/lang/String;

    move-object/from16 v0, v26

    iget-object v15, v0, Lcom/google/android/gms/internal/ads/zzwb;->tp:Lcom/google/android/gms/internal/ads/zzzs;

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzwb;->EQ:Landroid/location/Location;

    move-object/from16 v16, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzwb;->we:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzwb;->J0:Landroid/os/Bundle;

    move-object/from16 v18, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzwb;->J8:Landroid/os/Bundle;

    move-object/from16 v19, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzwb;->Ws:Ljava/util/List;

    move-object/from16 v20, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzwb;->QX:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzwb;->XL:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v26

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzwb;->aM:Z

    move/from16 v23, v0

    const/16 v24, 0x0

    move-object/from16 v0, v26

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzwb;->Mr:I

    move/from16 v25, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzwb;->U2:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-direct/range {v4 .. v26}, Lcom/google/android/gms/internal/ads/zzwb;-><init>(IJLandroid/os/Bundle;ILjava/util/List;ZIZLjava/lang/String;Lcom/google/android/gms/internal/ads/zzzs;Landroid/location/Location;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLcom/google/android/gms/internal/ads/zzvv;ILjava/lang/String;)V

    new-instance v5, Lcom/google/android/gms/internal/ads/Yh;

    iget-object v6, v3, Lcom/google/android/gms/internal/ads/zzasi;->DW:Landroid/os/Bundle;

    iget-object v8, v3, Lcom/google/android/gms/internal/ads/zzasi;->Hw:Lcom/google/android/gms/internal/ads/zzwf;

    iget-object v9, v3, Lcom/google/android/gms/internal/ads/zzasi;->v5:Ljava/lang/String;

    iget-object v10, v3, Lcom/google/android/gms/internal/ads/zzasi;->Zo:Landroid/content/pm/ApplicationInfo;

    iget-object v11, v3, Lcom/google/android/gms/internal/ads/zzasi;->VH:Landroid/content/pm/PackageInfo;

    iget-object v12, v3, Lcom/google/android/gms/internal/ads/zzasi;->u7:Ljava/lang/String;

    iget-object v13, v3, Lcom/google/android/gms/internal/ads/zzasi;->tp:Ljava/lang/String;

    iget-object v14, v3, Lcom/google/android/gms/internal/ads/zzasi;->EQ:Lcom/google/android/gms/internal/ads/zzbbi;

    iget-object v15, v3, Lcom/google/android/gms/internal/ads/zzasi;->we:Landroid/os/Bundle;

    iget-object v0, v3, Lcom/google/android/gms/internal/ads/zzasi;->J8:Ljava/util/List;

    move-object/from16 v16, v0

    iget-object v0, v3, Lcom/google/android/gms/internal/ads/zzasi;->yS:Ljava/util/List;

    move-object/from16 v17, v0

    iget-object v0, v3, Lcom/google/android/gms/internal/ads/zzasi;->Ws:Landroid/os/Bundle;

    move-object/from16 v18, v0

    iget-boolean v0, v3, Lcom/google/android/gms/internal/ads/zzasi;->QX:Z

    move/from16 v19, v0

    iget v0, v3, Lcom/google/android/gms/internal/ads/zzasi;->XL:I

    move/from16 v20, v0

    iget v0, v3, Lcom/google/android/gms/internal/ads/zzasi;->aM:I

    move/from16 v21, v0

    iget v0, v3, Lcom/google/android/gms/internal/ads/zzasi;->j3:F

    move/from16 v22, v0

    iget-object v0, v3, Lcom/google/android/gms/internal/ads/zzasi;->Mr:Ljava/lang/String;

    move-object/from16 v23, v0

    iget-wide v0, v3, Lcom/google/android/gms/internal/ads/zzasi;->U2:J

    move-wide/from16 v24, v0

    iget-object v0, v3, Lcom/google/android/gms/internal/ads/zzasi;->a8:Ljava/lang/String;

    move-object/from16 v26, v0

    iget-object v0, v3, Lcom/google/android/gms/internal/ads/zzasi;->lg:Ljava/util/List;

    move-object/from16 v27, v0

    iget-object v0, v3, Lcom/google/android/gms/internal/ads/zzasi;->rN:Ljava/lang/String;

    move-object/from16 v28, v0

    iget-object v0, v3, Lcom/google/android/gms/internal/ads/zzasi;->er:Lcom/google/android/gms/internal/ads/zzacp;

    move-object/from16 v29, v0

    iget-object v0, v3, Lcom/google/android/gms/internal/ads/zzasi;->BT:Ljava/lang/String;

    move-object/from16 v30, v0

    iget v0, v3, Lcom/google/android/gms/internal/ads/zzasi;->vy:F

    move/from16 v31, v0

    iget-boolean v0, v3, Lcom/google/android/gms/internal/ads/zzasi;->ro:Z

    move/from16 v32, v0

    iget v0, v3, Lcom/google/android/gms/internal/ads/zzasi;->P8:I

    move/from16 v33, v0

    iget v0, v3, Lcom/google/android/gms/internal/ads/zzasi;->ei:I

    move/from16 v34, v0

    iget-boolean v0, v3, Lcom/google/android/gms/internal/ads/zzasi;->nw:Z

    move/from16 v35, v0

    iget-boolean v0, v3, Lcom/google/android/gms/internal/ads/zzasi;->SI:Z

    move/from16 v36, v0

    iget-object v7, v3, Lcom/google/android/gms/internal/ads/zzasi;->KD:Ljava/lang/String;

    invoke-static {v7}, Lcom/google/android/gms/internal/ads/vm;->j6(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/Gm;

    move-result-object v37

    iget-object v0, v3, Lcom/google/android/gms/internal/ads/zzasi;->cn:Ljava/lang/String;

    move-object/from16 v38, v0

    iget-boolean v0, v3, Lcom/google/android/gms/internal/ads/zzasi;->sh:Z

    move/from16 v39, v0

    iget v0, v3, Lcom/google/android/gms/internal/ads/zzasi;->cb:I

    move/from16 v40, v0

    iget-object v0, v3, Lcom/google/android/gms/internal/ads/zzasi;->dx:Landroid/os/Bundle;

    move-object/from16 v41, v0

    iget-object v0, v3, Lcom/google/android/gms/internal/ads/zzasi;->sG:Ljava/lang/String;

    move-object/from16 v42, v0

    iget-object v0, v3, Lcom/google/android/gms/internal/ads/zzasi;->ef:Lcom/google/android/gms/internal/ads/zzyv;

    move-object/from16 v43, v0

    iget-boolean v0, v3, Lcom/google/android/gms/internal/ads/zzasi;->Sf:Z

    move/from16 v44, v0

    iget-object v0, v3, Lcom/google/android/gms/internal/ads/zzasi;->vJ:Landroid/os/Bundle;

    move-object/from16 v45, v0

    iget-boolean v0, v3, Lcom/google/android/gms/internal/ads/zzasi;->ca:Z

    move/from16 v46, v0

    iget-object v7, v3, Lcom/google/android/gms/internal/ads/zzasi;->gn:Ljava/lang/String;

    invoke-static {v7}, Lcom/google/android/gms/internal/ads/vm;->j6(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/Gm;

    move-result-object v47

    iget-object v0, v3, Lcom/google/android/gms/internal/ads/zzasi;->x9:Ljava/util/List;

    move-object/from16 v48, v0

    iget-object v0, v3, Lcom/google/android/gms/internal/ads/zzasi;->Qq:Ljava/lang/String;

    move-object/from16 v49, v0

    iget-object v0, v3, Lcom/google/android/gms/internal/ads/zzasi;->sy:Ljava/util/List;

    move-object/from16 v50, v0

    const/16 v51, 0x1

    iget-boolean v0, v3, Lcom/google/android/gms/internal/ads/zzasi;->lp:Z

    move/from16 v52, v0

    iget-boolean v0, v3, Lcom/google/android/gms/internal/ads/zzasi;->OW:Z

    move/from16 v53, v0

    iget-boolean v0, v3, Lcom/google/android/gms/internal/ads/zzasi;->br:Z

    move/from16 v54, v0

    iget-object v0, v3, Lcom/google/android/gms/internal/ads/zzasi;->XX:Ljava/util/ArrayList;

    move-object/from16 v55, v0

    iget-object v0, v3, Lcom/google/android/gms/internal/ads/zzasi;->kQ:Ljava/lang/String;

    move-object/from16 v56, v0

    iget-object v0, v3, Lcom/google/android/gms/internal/ads/zzasi;->yO:Lcom/google/android/gms/internal/ads/zzafz;

    move-object/from16 v57, v0

    iget-object v0, v3, Lcom/google/android/gms/internal/ads/zzasi;->jJ:Landroid/os/Bundle;

    move-object/from16 v58, v0

    move-object v7, v4

    invoke-direct/range {v5 .. v58}, Lcom/google/android/gms/internal/ads/Yh;-><init>(Landroid/os/Bundle;Lcom/google/android/gms/internal/ads/zzwb;Lcom/google/android/gms/internal/ads/zzwf;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Landroid/content/pm/PackageInfo;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbbi;Landroid/os/Bundle;Ljava/util/List;Ljava/util/List;Landroid/os/Bundle;ZIIFLjava/lang/String;JLjava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzacp;Ljava/lang/String;FZIIZZLjava/util/concurrent/Future;Ljava/lang/String;ZILandroid/os/Bundle;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzyv;ZLandroid/os/Bundle;ZLjava/util/concurrent/Future;Ljava/util/List;Ljava/lang/String;Ljava/util/List;IZZZLjava/util/ArrayList;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzafz;Landroid/os/Bundle;)V

    iget-object v3, v2, Lcom/google/android/gms/ads/internal/a;->j6:Lcom/google/android/gms/internal/ads/D;

    invoke-virtual {v2, v5, v3}, Lcom/google/android/gms/ads/internal/aa;->j6(Lcom/google/android/gms/internal/ads/Yh;Lcom/google/android/gms/internal/ads/D;)Z

    invoke-virtual {v2}, Lcom/google/android/gms/ads/internal/C;->N2()Ljava/util/concurrent/Future;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/ka;

    goto/16 :goto_0

    :cond_1
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    goto/16 :goto_1
.end method
