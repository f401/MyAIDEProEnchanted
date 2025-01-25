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

    new-instance p2, Lcom/google/android/gms/internal/ads/_j;

    const/4 p3, 0x0

    invoke-direct {p2, p1, p3}, Lcom/google/android/gms/internal/ads/_j;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/Xi;->aM:Lcom/google/android/gms/internal/ads/_j;

    new-instance p1, Lcom/google/android/gms/internal/ads/Ti;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/aa;->J0:Lcom/google/android/gms/internal/ads/Ge;

    move-object v0, p1

    move-object v3, p0

    move-object v4, p0

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/Ti;-><init>(Lcom/google/android/gms/ads/internal/Y;Lcom/google/android/gms/internal/ads/Ge;Lcom/google/android/gms/internal/ads/xj;Lcom/google/android/gms/ads/internal/gmsg/i;Lcom/google/android/gms/internal/ads/Ag;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Xi;->j3:Lcom/google/android/gms/internal/ads/Ti;

    return-void
.end method

.method private static DW(Lcom/google/android/gms/internal/ads/lk;)Lcom/google/android/gms/internal/ads/lk;
    .registers 52

    move-object/from16 v1, p0

    const-string v0, "Creating mediation ad response for non-mediated rewarded ad."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Ek;->Zo(Ljava/lang/String;)V

    :try_start_7
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/lk;->DW:Lcom/google/android/gms/internal/ads/zzasm;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Fi;->j6(Lcom/google/android/gms/internal/ads/zzasm;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "impression_urls"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "pubid"

    iget-object v4, v1, Lcom/google/android/gms/internal/ads/lk;->j6:Lcom/google/android/gms/internal/ads/zzasi;

    iget-object v4, v4, Lcom/google/android/gms/internal/ads/zzasi;->v5:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v15
    :try_end_24
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_24} :catch_cd

    const/4 v2, 0x1

    new-array v3, v2, [Lcom/google/android/gms/internal/ads/pe;

    new-instance v4, Lcom/google/android/gms/internal/ads/pe;

    move-object v5, v4

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-array v0, v2, [Ljava/lang/String;

    const-string v2, "com.google.ads.mediation.admob.AdMobAdapter"

    const/16 v29, 0x0

    aput-object v2, v0, v29

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v11

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v12

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v13

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v14

    const/16 v16, 0x0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v17

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v18

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v19

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v25

    const/16 v26, 0x0

    const-wide/16 v27, -0x1

    invoke-direct/range {v5 .. v28}, Lcom/google/android/gms/internal/ads/pe;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;J)V

    aput-object v4, v3, v29

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v31

    sget-object v0, Lcom/google/android/gms/internal/ads/p;->Ej:Lcom/google/android/gms/internal/ads/e;

    new-instance v4, Lcom/google/android/gms/internal/ads/qe;

    move-object/from16 v30, v4

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->v5()Lcom/google/android/gms/internal/ads/m;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/m;->j6(Lcom/google/android/gms/internal/ads/e;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v32

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v34

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v35

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v36

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v37

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v38

    const/16 v39, 0x0

    const-string v40, ""

    const-wide/16 v41, -0x1

    const/16 v43, 0x0

    const/16 v44, 0x1

    const/16 v45, 0x0

    const/16 v46, 0x0

    const/16 v47, -0x1

    const-wide/16 v48, -0x1

    const/16 v50, 0x0

    invoke-direct/range {v30 .. v50}, Lcom/google/android/gms/internal/ads/qe;-><init>(Ljava/util/List;JLjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;ZLjava/lang/String;JIILjava/lang/String;IIJZ)V

    new-instance v0, Lcom/google/android/gms/internal/ads/lk;

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/lk;->j6:Lcom/google/android/gms/internal/ads/zzasi;

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/lk;->DW:Lcom/google/android/gms/internal/ads/zzasm;

    iget-object v5, v1, Lcom/google/android/gms/internal/ads/lk;->Hw:Lcom/google/android/gms/internal/ads/zzwf;

    iget v6, v1, Lcom/google/android/gms/internal/ads/lk;->v5:I

    iget-wide v7, v1, Lcom/google/android/gms/internal/ads/lk;->Zo:J

    iget-wide v9, v1, Lcom/google/android/gms/internal/ads/lk;->VH:J

    iget-object v11, v1, Lcom/google/android/gms/internal/ads/lk;->gn:Lorg/json/JSONObject;

    iget-object v12, v1, Lcom/google/android/gms/internal/ads/lk;->u7:Lcom/google/android/gms/internal/ads/YF;

    const/4 v13, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v13}, Lcom/google/android/gms/internal/ads/lk;-><init>(Lcom/google/android/gms/internal/ads/zzasi;Lcom/google/android/gms/internal/ads/zzasm;Lcom/google/android/gms/internal/ads/qe;Lcom/google/android/gms/internal/ads/zzwf;IJJLorg/json/JSONObject;Lcom/google/android/gms/internal/ads/YF;Ljava/lang/Boolean;)V

    return-object v0

    :catch_cd
    move-exception v0

    const-string v2, "Unable to generate ad state for non-mediated rewarded video."

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/lk;

    iget-object v4, v1, Lcom/google/android/gms/internal/ads/lk;->j6:Lcom/google/android/gms/internal/ads/zzasi;

    iget-object v5, v1, Lcom/google/android/gms/internal/ads/lk;->DW:Lcom/google/android/gms/internal/ads/zzasm;

    const/4 v6, 0x0

    iget-object v7, v1, Lcom/google/android/gms/internal/ads/lk;->Hw:Lcom/google/android/gms/internal/ads/zzwf;

    const/4 v8, 0x0

    iget-wide v9, v1, Lcom/google/android/gms/internal/ads/lk;->Zo:J

    iget-wide v11, v1, Lcom/google/android/gms/internal/ads/lk;->VH:J

    iget-object v13, v1, Lcom/google/android/gms/internal/ads/lk;->gn:Lorg/json/JSONObject;

    iget-object v14, v1, Lcom/google/android/gms/internal/ads/lk;->u7:Lcom/google/android/gms/internal/ads/YF;

    const/4 v15, 0x0

    move-object v3, v0

    invoke-direct/range {v3 .. v15}, Lcom/google/android/gms/internal/ads/lk;-><init>(Lcom/google/android/gms/internal/ads/zzasi;Lcom/google/android/gms/internal/ads/zzasm;Lcom/google/android/gms/internal/ads/qe;Lcom/google/android/gms/internal/ads/zzwf;IJJLorg/json/JSONObject;Lcom/google/android/gms/internal/ads/YF;Ljava/lang/Boolean;)V

    return-object v0
.end method

.method static synthetic j6(Lcom/google/android/gms/internal/ads/Xi;I)V
    .registers 2

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/ads/internal/a;->J0(I)V

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

    if-nez v1, :cond_15

    iget-object v1, v0, Lcom/google/android/gms/ads/internal/Y;->gn:Lcom/google/android/gms/internal/ads/hl;

    if-nez v1, :cond_15

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/Y;->tp:Lcom/google/android/gms/internal/ads/kk;

    if-eqz v0, :cond_15

    const/4 v0, 0x1

    return v0

    :cond_15
    const/4 v0, 0x0

    return v0
.end method

.method public final Qq()V
    .registers 3

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->ei()Lcom/google/android/gms/internal/ads/ak;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/Y;->FH:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/ak;->FH(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Xi;->aM:Lcom/google/android/gms/internal/ads/_j;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/_j;->j6(Z)V

    :cond_14
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

    move-result-object p1

    return-object p1
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
    .registers 4

    iget p2, p1, Lcom/google/android/gms/internal/ads/lk;->v5:I

    const/4 v0, -0x2

    if-eq p2, v0, :cond_10

    sget-object p2, Lcom/google/android/gms/internal/ads/Nk;->j6:Landroid/os/Handler;

    new-instance v0, Lcom/google/android/gms/internal/ads/Zi;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/Zi;-><init>(Lcom/google/android/gms/internal/ads/Xi;Lcom/google/android/gms/internal/ads/lk;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_10
    iget-object p2, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iput-object p1, p2, Lcom/google/android/gms/ads/internal/Y;->EQ:Lcom/google/android/gms/internal/ads/lk;

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/lk;->FH:Lcom/google/android/gms/internal/ads/qe;

    if-nez v0, :cond_1e

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/Xi;->DW(Lcom/google/android/gms/internal/ads/lk;)Lcom/google/android/gms/internal/ads/lk;

    move-result-object p1

    iput-object p1, p2, Lcom/google/android/gms/ads/internal/Y;->EQ:Lcom/google/android/gms/internal/ads/lk;

    :cond_1e
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/Xi;->j3:Lcom/google/android/gms/internal/ads/Ti;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Ti;->Zo()V

    return-void
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/zzavh;)V
    .registers 4

    const-string v0, "loadAd must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/r;->j6(Ljava/lang/String;)V

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzavh;->DW:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1d

    const-string p1, "Invalid ad unit id. Aborting."

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;)V

    sget-object p1, Lcom/google/android/gms/internal/ads/Nk;->j6:Landroid/os/Handler;

    new-instance v0, Lcom/google/android/gms/internal/ads/Yi;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/Yi;-><init>(Lcom/google/android/gms/internal/ads/Xi;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_1d
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/Xi;->QX:Z

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzavh;->DW:Ljava/lang/String;

    iput-object v1, v0, Lcom/google/android/gms/ads/internal/Y;->DW:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Xi;->aM:Lcom/google/android/gms/internal/ads/_j;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/_j;->DW(Ljava/lang/String;)V

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzavh;->j6:Lcom/google/android/gms/internal/ads/zzwb;

    invoke-super {p0, p1}, Lcom/google/android/gms/ads/internal/a;->j6(Lcom/google/android/gms/internal/ads/zzwb;)Z

    return-void
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/zzawd;)V
    .registers 9

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Xi;->j3:Lcom/google/android/gms/internal/ads/Ti;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/Ti;->j6(Lcom/google/android/gms/internal/ads/zzawd;)Lcom/google/android/gms/internal/ads/zzawd;

    move-result-object p1

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->ei()Lcom/google/android/gms/internal/ads/ak;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/Y;->FH:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/ak;->FH(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_35

    if-eqz p1, :cond_35

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->ei()Lcom/google/android/gms/internal/ads/ak;

    move-result-object v1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/Y;->FH:Landroid/content/Context;

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->ei()Lcom/google/android/gms/internal/ads/ak;

    move-result-object v0

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/Y;->FH:Landroid/content/Context;

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/ak;->VH(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v4, v0, Lcom/google/android/gms/ads/internal/Y;->DW:Ljava/lang/String;

    iget-object v5, p1, Lcom/google/android/gms/internal/ads/zzawd;->j6:Ljava/lang/String;

    iget v6, p1, Lcom/google/android/gms/internal/ads/zzawd;->DW:I

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/ak;->j6(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    :cond_35
    invoke-virtual {p0, p1}, Lcom/google/android/gms/ads/internal/a;->FH(Lcom/google/android/gms/internal/ads/zzawd;)V

    return-void
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/kk;Lcom/google/android/gms/internal/ads/kk;)Z
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0}, Lcom/google/android/gms/ads/internal/aa;->DW(Lcom/google/android/gms/internal/ads/kk;Z)V

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/Ti;->j6(Lcom/google/android/gms/internal/ads/kk;Lcom/google/android/gms/internal/ads/kk;)Z

    move-result p1

    return p1
.end method

.method protected final j6(Lcom/google/android/gms/internal/ads/zzwb;Lcom/google/android/gms/internal/ads/kk;Z)Z
    .registers 4

    const/4 p1, 0x0

    return p1
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

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Xi;->aM:Lcom/google/android/gms/internal/ads/_j;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/_j;->j6(Z)V

    :cond_14
    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/a;->K3()V

    return-void
.end method

.method public final zg()V
    .registers 3

    const-string v0, "showAd must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/r;->j6(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/Xi;->N0()Z

    move-result v0

    if-nez v0, :cond_11

    const-string v0, "The reward video has not loaded."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;)V

    return-void

    :cond_11
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Xi;->j3:Lcom/google/android/gms/internal/ads/Ti;

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/Xi;->XL:Z

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/Ti;->j6(Z)V

    return-void
.end method
