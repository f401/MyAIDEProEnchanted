.class public final Lcom/google/android/gms/internal/ads/Cg;
.super Lcom/google/android/gms/internal/ads/Ak;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zh;
.end annotation


# instance fields
.field private final Hw:Lcom/google/android/gms/internal/ads/Ag;

.field private final Zo:Lcom/google/android/gms/internal/ads/lk;

.field private final v5:Lcom/google/android/gms/internal/ads/zzasm;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/lk;Lcom/google/android/gms/internal/ads/Ag;)V
    .registers 3

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/Ak;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Cg;->Zo:Lcom/google/android/gms/internal/ads/lk;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/lk;->DW:Lcom/google/android/gms/internal/ads/zzasm;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Cg;->v5:Lcom/google/android/gms/internal/ads/zzasm;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/Cg;->Hw:Lcom/google/android/gms/internal/ads/Ag;

    return-void
.end method

.method static synthetic j6(Lcom/google/android/gms/internal/ads/Cg;)Lcom/google/android/gms/internal/ads/Ag;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/Cg;->Hw:Lcom/google/android/gms/internal/ads/Ag;

    return-object p0
.end method


# virtual methods
.method public final DW()V
    .registers 1

    return-void
.end method

.method public final Hw()V
    .registers 50

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/Cg;->Zo:Lcom/google/android/gms/internal/ads/lk;

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/lk;->j6:Lcom/google/android/gms/internal/ads/zzasi;

    iget-object v4, v2, Lcom/google/android/gms/internal/ads/zzasi;->FH:Lcom/google/android/gms/internal/ads/zzwb;

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/Cg;->v5:Lcom/google/android/gms/internal/ads/zzasm;

    iget v10, v3, Lcom/google/android/gms/internal/ads/zzasm;->J0:I

    iget-wide v11, v3, Lcom/google/android/gms/internal/ads/zzasm;->we:J

    iget-object v13, v2, Lcom/google/android/gms/internal/ads/zzasi;->u7:Ljava/lang/String;

    iget-wide v5, v3, Lcom/google/android/gms/internal/ads/zzasm;->tp:J

    move-wide/from16 v20, v5

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/lk;->Hw:Lcom/google/android/gms/internal/ads/zzwf;

    move-object/from16 v22, v2

    iget-wide v5, v3, Lcom/google/android/gms/internal/ads/zzasm;->gn:J

    move-wide/from16 v23, v5

    iget-wide v5, v1, Lcom/google/android/gms/internal/ads/lk;->Zo:J

    move-wide/from16 v25, v5

    iget-wide v5, v3, Lcom/google/android/gms/internal/ads/zzasm;->Ws:J

    move-wide/from16 v27, v5

    iget-object v2, v3, Lcom/google/android/gms/internal/ads/zzasm;->QX:Ljava/lang/String;

    move-object/from16 v29, v2

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/lk;->gn:Lorg/json/JSONObject;

    move-object/from16 v30, v2

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/lk;->DW:Lcom/google/android/gms/internal/ads/zzasm;

    new-instance v15, Lcom/google/android/gms/internal/ads/kk;

    move-object v3, v15

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    move-object/from16 v48, v15

    move-object/from16 v15, v16

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    iget-boolean v5, v2, Lcom/google/android/gms/internal/ads/zzasm;->SI:Z

    move/from16 v35, v5

    iget-object v5, v2, Lcom/google/android/gms/internal/ads/zzasm;->KD:Lcom/google/android/gms/internal/ads/zzaso;

    move-object/from16 v36, v5

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    iget-object v5, v1, Lcom/google/android/gms/internal/ads/lk;->u7:Lcom/google/android/gms/internal/ads/YF;

    move-object/from16 v40, v5

    iget-boolean v5, v2, Lcom/google/android/gms/internal/ads/zzasm;->Mz:Z

    move/from16 v41, v5

    iget-boolean v1, v1, Lcom/google/android/gms/internal/ads/lk;->tp:Z

    move/from16 v42, v1

    iget-boolean v1, v2, Lcom/google/android/gms/internal/ads/zzasm;->ca:Z

    move/from16 v43, v1

    const/16 v44, 0x0

    iget-boolean v1, v2, Lcom/google/android/gms/internal/ads/zzasm;->Qq:Z

    move/from16 v45, v1

    iget-object v1, v2, Lcom/google/android/gms/internal/ads/zzasm;->sy:Ljava/lang/String;

    move-object/from16 v46, v1

    iget-boolean v1, v2, Lcom/google/android/gms/internal/ads/zzasm;->lp:Z

    move/from16 v47, v1

    const/4 v5, 0x0

    invoke-direct/range {v3 .. v47}, Lcom/google/android/gms/internal/ads/kk;-><init>(Lcom/google/android/gms/internal/ads/zzwb;Lcom/google/android/gms/internal/ads/Mo;Ljava/util/List;ILjava/util/List;Ljava/util/List;IJLjava/lang/String;ZLcom/google/android/gms/internal/ads/pe;Lcom/google/android/gms/internal/ads/Je;Ljava/lang/String;Lcom/google/android/gms/internal/ads/qe;Lcom/google/android/gms/internal/ads/se;JLcom/google/android/gms/internal/ads/zzwf;JJJLjava/lang/String;Lorg/json/JSONObject;Lcom/google/android/gms/internal/ads/ka;Lcom/google/android/gms/internal/ads/zzawd;Ljava/util/List;Ljava/util/List;ZLcom/google/android/gms/internal/ads/zzaso;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/google/android/gms/internal/ads/YF;ZZZLjava/util/List;ZLjava/lang/String;Z)V

    sget-object v1, Lcom/google/android/gms/internal/ads/Nk;->j6:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/gms/internal/ads/Dg;

    move-object/from16 v3, v48

    invoke-direct {v2, v0, v3}, Lcom/google/android/gms/internal/ads/Dg;-><init>(Lcom/google/android/gms/internal/ads/Cg;Lcom/google/android/gms/internal/ads/kk;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
