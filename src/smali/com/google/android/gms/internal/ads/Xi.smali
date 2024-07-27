.class public final Lcom/google/android/gms/internal/ads/Xi;
.super Lcom/google/android/gms/ads/internal/aa;

# interfaces
.implements Lcom/google/android/gms/internal/ads/xj;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zh;
.end annotation


# static fields
.field private static Ws:Lcom/google/android/gms/internal/ads/Xi;


# instance fields
.field private QX:Z

.field private XL:Z

.field private final aM:Lcom/google/android/gms/internal/ads/_j;

.field private final j3:Lcom/google/android/gms/internal/ads/Ti;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/ta;Lcom/google/android/gms/internal/ads/zzwf;Lcom/google/android/gms/internal/ads/Ge;Lcom/google/android/gms/internal/ads/zzbbi;)V
    .registers 13

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/ads/internal/aa;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzwf;Ljava/lang/String;Lcom/google/android/gms/internal/ads/Ge;Lcom/google/android/gms/internal/ads/zzbbi;Lcom/google/android/gms/ads/internal/ta;)V

    sput-object p0, Lcom/google/android/gms/internal/ads/Xi;->Ws:Lcom/google/android/gms/internal/ads/Xi;

    new-instance v0, Lcom/google/android/gms/internal/ads/_j;

    invoke-direct {v0, p1, v3}, Lcom/google/android/gms/internal/ads/_j;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Xi;->aM:Lcom/google/android/gms/internal/ads/_j;

    new-instance v0, Lcom/google/android/gms/internal/ads/Ti;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/aa;->J0:Lcom/google/android/gms/internal/ads/Ge;

    move-object v3, p0

    move-object v4, p0

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/Ti;-><init>(Lcom/google/android/gms/ads/internal/Y;Lcom/google/android/gms/internal/ads/Ge;Lcom/google/android/gms/internal/ads/xj;Lcom/google/android/gms/ads/internal/gmsg/i;Lcom/google/android/gms/internal/ads/Ag;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Xi;->j3:Lcom/google/android/gms/internal/ads/Ti;

    return-void
.end method

.method private static DW(Lcom/google/android/gms/internal/ads/lk;)Lcom/google/android/gms/internal/ads/lk;
    .registers 29

    const-string v2, "Creating mediation ad response for non-mediated rewarded ad."

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/Ek;->Zo(Ljava/lang/String;)V

    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/lk;->DW:Lcom/google/android/gms/internal/ads/zzasm;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/Fi;->j6(Lcom/google/android/gms/internal/ads/zzasm;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v2, "impression_urls"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "pubid"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/lk;->j6:Lcom/google/android/gms/internal/ads/zzasi;

    iget-object v5, v5, Lcom/google/android/gms/internal/ads/zzasi;->v5:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v12

    const/4 v2, 0x1

    new-array v0, v2, [Lcom/google/android/gms/internal/ads/pe;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    new-instance v2, Lcom/google/android/gms/internal/ads/pe;

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "com.google.ads.mediation.admob.AdMobAdapter"

    aput-object v7, v5, v6

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

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

    aput-object v2, v26, v27

    invoke-static/range {v26 .. v26}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    sget-object v4, Lcom/google/android/gms/internal/ads/p;->Ej:Lcom/google/android/gms/internal/ads/e;

    new-instance v2, Lcom/google/android/gms/internal/ads/qe;

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->v5()Lcom/google/android/gms/internal/ads/m;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/ads/m;->j6(Lcom/google/android/gms/internal/ads/e;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v6

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v7

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v8

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v9

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v10

    const/4 v11, 0x0

    const-string v12, ""

    const-wide/16 v13, -0x1

    const/4 v15, 0x0

    const/16 v16, 0x1

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, -0x1

    const-wide/16 v20, -0x1

    const/16 v22, 0x0

    invoke-direct/range {v2 .. v22}, Lcom/google/android/gms/internal/ads/qe;-><init>(Ljava/util/List;JLjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;ZLjava/lang/String;JIILjava/lang/String;IIJZ)V

    new-instance v4, Lcom/google/android/gms/internal/ads/lk;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/lk;->j6:Lcom/google/android/gms/internal/ads/zzasi;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/lk;->DW:Lcom/google/android/gms/internal/ads/zzasm;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/lk;->Hw:Lcom/google/android/gms/internal/ads/zzwf;

    move-object/from16 v0, p0

    iget v9, v0, Lcom/google/android/gms/internal/ads/lk;->v5:I

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/google/android/gms/internal/ads/lk;->Zo:J

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/google/android/gms/internal/ads/lk;->VH:J

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/gms/internal/ads/lk;->gn:Lorg/json/JSONObject;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/gms/internal/ads/lk;->u7:Lcom/google/android/gms/internal/ads/YF;

    const/16 v16, 0x0

    move-object v7, v2

    invoke-direct/range {v4 .. v16}, Lcom/google/android/gms/internal/ads/lk;-><init>(Lcom/google/android/gms/internal/ads/zzasi;Lcom/google/android/gms/internal/ads/zzasm;Lcom/google/android/gms/internal/ads/qe;Lcom/google/android/gms/internal/ads/zzwf;IJJLorg/json/JSONObject;Lcom/google/android/gms/internal/ads/YF;Ljava/lang/Boolean;)V

    :goto_0
    return-object v4

    :catch_0
    move-exception v2

    const-string v3, "Unable to generate ad state for non-mediated rewarded video."

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v2, Lcom/google/android/gms/internal/ads/lk;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/lk;->j6:Lcom/google/android/gms/internal/ads/zzasi;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/lk;->DW:Lcom/google/android/gms/internal/ads/zzasm;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/lk;->Hw:Lcom/google/android/gms/internal/ads/zzwf;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/google/android/gms/internal/ads/lk;->Zo:J

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/google/android/gms/internal/ads/lk;->VH:J

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/gms/internal/ads/lk;->gn:Lorg/json/JSONObject;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/gms/internal/ads/lk;->u7:Lcom/google/android/gms/internal/ads/YF;

    const/4 v14, 0x0

    invoke-direct/range {v2 .. v14}, Lcom/google/android/gms/internal/ads/lk;-><init>(Lcom/google/android/gms/internal/ads/zzasi;Lcom/google/android/gms/internal/ads/zzasm;Lcom/google/android/gms/internal/ads/qe;Lcom/google/android/gms/internal/ads/zzwf;IJJLorg/json/JSONObject;Lcom/google/android/gms/internal/ads/YF;Ljava/lang/Boolean;)V

    move-object v4, v2

    goto :goto_0
.end method

.method static synthetic j6(Lcom/google/android/gms/internal/ads/Xi;I)V
    .registers 3

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/internal/a;->J0(I)V

    return-void
.end method

.method public static s0()Lcom/google/android/gms/internal/ads/Xi;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/ads/Xi;->Ws:Lcom/google/android/gms/internal/ads/Xi;

    return-object v0
.end method


# virtual methods
.method public final DW(Landroid/content/Context;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Xi;->j3:Lcom/google/android/gms/internal/ads/Ti;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/Ti;->j6(Landroid/content/Context;)V

    return-void
.end method

.method protected final K3()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/google/android/gms/ads/internal/Y;->tp:Lcom/google/android/gms/internal/ads/kk;

    invoke-super {p0}, Lcom/google/android/gms/ads/internal/a;->K3()V

    return-void
.end method

.method public final Mz()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Xi;->j3:Lcom/google/android/gms/internal/ads/Ti;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Ti;->gn()V

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/a;->Lx()V

    return-void
.end method

.method public final N0()Z
    .registers 3

    const-string v0, "isLoaded must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/r;->j6(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v1, v0, Lcom/google/android/gms/ads/internal/Y;->VH:Lcom/google/android/gms/internal/ads/Ak;

    if-nez v1, :cond_0

    iget-object v1, v0, Lcom/google/android/gms/ads/internal/Y;->gn:Lcom/google/android/gms/internal/ads/hl;

    if-nez v1, :cond_0

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/Y;->tp:Lcom/google/android/gms/internal/ads/kk;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final Qq()V
    .registers 3

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->ei()Lcom/google/android/gms/internal/ads/ak;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/Y;->FH:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/ak;->FH(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Xi;->aM:Lcom/google/android/gms/internal/ads/_j;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/_j;->j6(Z)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/Y;->tp:Lcom/google/android/gms/internal/ads/kk;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/ads/internal/aa;->j6(Lcom/google/android/gms/internal/ads/kk;Z)V

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/a;->Qs()V

    return-void
.end method

.method public final ca()V
    .registers 1

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/a;->OM()V

    return-void
.end method

.method public final destroy()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Xi;->j3:Lcom/google/android/gms/internal/ads/Ti;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Ti;->j6()V

    invoke-super {p0}, Lcom/google/android/gms/ads/internal/a;->destroy()V

    return-void
.end method

.method public final dx(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/Ej;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Xi;->j3:Lcom/google/android/gms/internal/ads/Ti;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/Ti;->j6(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/Ej;

    move-result-object v0

    return-object v0
.end method

.method public final er()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Xi;->j3:Lcom/google/android/gms/internal/ads/Ti;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Ti;->FH()V

    return-void
.end method

.method public final g3()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Xi;->j3:Lcom/google/android/gms/internal/ads/Ti;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Ti;->VH()V

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/a;->fd()V

    return-void
.end method

.method public final gn(Z)V
    .registers 3

    const-string v0, "setImmersiveMode must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/r;->j6(Ljava/lang/String;)V

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/Xi;->XL:Z

    return-void
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/lk;Lcom/google/android/gms/internal/ads/D;)V
    .registers 5

    iget v0, p1, Lcom/google/android/gms/internal/ads/lk;->v5:I

    const/4 v1, -0x2

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/ads/Nk;->j6:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/ads/Zi;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/Zi;-><init>(Lcom/google/android/gms/internal/ads/Xi;Lcom/google/android/gms/internal/ads/lk;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iput-object p1, v0, Lcom/google/android/gms/ads/internal/Y;->EQ:Lcom/google/android/gms/internal/ads/lk;

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/lk;->FH:Lcom/google/android/gms/internal/ads/qe;

    if-nez v1, :cond_1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/Xi;->DW(Lcom/google/android/gms/internal/ads/lk;)Lcom/google/android/gms/internal/ads/lk;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/ads/internal/Y;->EQ:Lcom/google/android/gms/internal/ads/lk;

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Xi;->j3:Lcom/google/android/gms/internal/ads/Ti;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Ti;->Zo()V

    goto :goto_0
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/zzavh;)V
    .registers 4

    const-string v0, "loadAd must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/r;->j6(Ljava/lang/String;)V

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzavh;->DW:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Invalid ad unit id. Aborting."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;)V

    sget-object v0, Lcom/google/android/gms/internal/ads/Nk;->j6:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/ads/Yi;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/Yi;-><init>(Lcom/google/android/gms/internal/ads/Xi;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/Xi;->QX:Z

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzavh;->DW:Ljava/lang/String;

    iput-object v1, v0, Lcom/google/android/gms/ads/internal/Y;->DW:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Xi;->aM:Lcom/google/android/gms/internal/ads/_j;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/_j;->DW(Ljava/lang/String;)V

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzavh;->j6:Lcom/google/android/gms/internal/ads/zzwb;

    invoke-super {p0, v0}, Lcom/google/android/gms/ads/internal/a;->j6(Lcom/google/android/gms/internal/ads/zzwb;)Z

    goto :goto_0
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/zzawd;)V
    .registers 9

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Xi;->j3:Lcom/google/android/gms/internal/ads/Ti;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/Ti;->j6(Lcom/google/android/gms/internal/ads/zzawd;)Lcom/google/android/gms/internal/ads/zzawd;

    move-result-object v6

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->ei()Lcom/google/android/gms/internal/ads/ak;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/Y;->FH:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/ak;->FH(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz v6, :cond_0

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->ei()Lcom/google/android/gms/internal/ads/ak;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/Y;->FH:Landroid/content/Context;

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->ei()Lcom/google/android/gms/internal/ads/ak;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/Y;->FH:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/ak;->VH(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/Y;->DW:Ljava/lang/String;

    iget-object v4, v6, Lcom/google/android/gms/internal/ads/zzawd;->j6:Ljava/lang/String;

    iget v5, v6, Lcom/google/android/gms/internal/ads/zzawd;->DW:I

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/ak;->j6(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    :cond_0
    invoke-virtual {p0, v6}, Lcom/google/android/gms/ads/internal/a;->FH(Lcom/google/android/gms/internal/ads/zzawd;)V

    return-void
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/kk;Lcom/google/android/gms/internal/ads/kk;)Z
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0}, Lcom/google/android/gms/ads/internal/aa;->DW(Lcom/google/android/gms/internal/ads/kk;Z)V

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/Ti;->j6(Lcom/google/android/gms/internal/ads/kk;Lcom/google/android/gms/internal/ads/kk;)Z

    move-result v0

    return v0
.end method

.method protected final j6(Lcom/google/android/gms/internal/ads/zzwb;Lcom/google/android/gms/internal/ads/kk;Z)Z
    .registers 5

    const/4 v0, 0x0

    return v0
.end method

.method public final pause()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Xi;->j3:Lcom/google/android/gms/internal/ads/Ti;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Ti;->DW()V

    return-void
.end method

.method public final tj()V
    .registers 1

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/aa;->J0()V

    return-void
.end method

.method public final x9()V
    .registers 3

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->ei()Lcom/google/android/gms/internal/ads/ak;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/Y;->FH:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/ak;->FH(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Xi;->aM:Lcom/google/android/gms/internal/ads/_j;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/_j;->j6(Z)V

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/a;->K3()V

    return-void
.end method

.method public final zg()V
    .registers 3

    const-string v0, "showAd must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/r;->j6(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/Xi;->N0()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "The reward video has not loaded."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Xi;->j3:Lcom/google/android/gms/internal/ads/Ti;

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/Xi;->XL:Z

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/Ti;->j6(Z)V

    goto :goto_0
.end method
