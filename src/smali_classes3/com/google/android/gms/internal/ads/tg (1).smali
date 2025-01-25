.class public abstract Lcom/google/android/gms/internal/ads/tg;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/hl;
.implements Lcom/google/android/gms/internal/ads/up;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zh;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/hl<",
        "Ljava/lang/Void;",
        ">;",
        "Lcom/google/android/gms/internal/ads/up;"
    }
.end annotation


# instance fields
.field protected final DW:Landroid/content/Context;

.field protected final FH:Lcom/google/android/gms/internal/ads/Mo;

.field private final Hw:Lcom/google/android/gms/internal/ads/lk;

.field private final VH:Ljava/lang/Object;

.field private Zo:Ljava/lang/Runnable;

.field private gn:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final j6:Lcom/google/android/gms/internal/ads/Ag;

.field protected v5:Lcom/google/android/gms/internal/ads/zzasm;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/lk;Lcom/google/android/gms/internal/ads/Mo;Lcom/google/android/gms/internal/ads/Ag;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/tg;->VH:Ljava/lang/Object;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/tg;->gn:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/tg;->DW:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/tg;->Hw:Lcom/google/android/gms/internal/ads/lk;

    iget-object p1, p2, Lcom/google/android/gms/internal/ads/lk;->DW:Lcom/google/android/gms/internal/ads/zzasm;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/tg;->v5:Lcom/google/android/gms/internal/ads/zzasm;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/tg;->FH:Lcom/google/android/gms/internal/ads/Mo;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/tg;->j6:Lcom/google/android/gms/internal/ads/Ag;

    return-void
.end method

.method static synthetic j6(Lcom/google/android/gms/internal/ads/tg;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/tg;->gn:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method


# virtual methods
.method public final synthetic FH()Ljava/lang/Object;
    .registers 5

    const-string v0, "Webview render task needs to be called on UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/r;->j6(Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/ug;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/ug;-><init>(Lcom/google/android/gms/internal/ads/tg;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/tg;->Zo:Ljava/lang/Runnable;

    sget-object v0, Lcom/google/android/gms/internal/ads/Nk;->j6:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/tg;->Zo:Ljava/lang/Runnable;

    sget-object v2, Lcom/google/android/gms/internal/ads/p;->Ej:Lcom/google/android/gms/internal/ads/e;

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->v5()Lcom/google/android/gms/internal/ads/m;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/m;->j6(Lcom/google/android/gms/internal/ads/e;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/tg;->j6()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public cancel()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/tg;->gn:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_a

    return-void

    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/tg;->FH:Lcom/google/android/gms/internal/ads/Mo;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/Mo;->stopLoading()V

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->VH()Lcom/google/android/gms/internal/ads/Vk;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/tg;->FH:Lcom/google/android/gms/internal/ads/Mo;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Vk;->j6(Lcom/google/android/gms/internal/ads/Mo;)Z

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/tg;->j6(I)V

    sget-object v0, Lcom/google/android/gms/internal/ads/Nk;->j6:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/tg;->Zo:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected abstract j6()V
.end method

.method protected j6(I)V
    .registers 51

    move-object/from16 v0, p0

    move/from16 v5, p1

    const/4 v1, -0x2

    if-eq v5, v1, :cond_12

    new-instance v1, Lcom/google/android/gms/internal/ads/zzasm;

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/tg;->v5:Lcom/google/android/gms/internal/ads/zzasm;

    iget-wide v2, v2, Lcom/google/android/gms/internal/ads/zzasm;->we:J

    invoke-direct {v1, v5, v2, v3}, Lcom/google/android/gms/internal/ads/zzasm;-><init>(IJ)V

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/tg;->v5:Lcom/google/android/gms/internal/ads/zzasm;

    :cond_12
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/tg;->FH:Lcom/google/android/gms/internal/ads/Mo;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/Mo;->cn()V

    iget-object v15, v0, Lcom/google/android/gms/internal/ads/tg;->j6:Lcom/google/android/gms/internal/ads/Ag;

    iget-object v14, v0, Lcom/google/android/gms/internal/ads/tg;->Hw:Lcom/google/android/gms/internal/ads/lk;

    iget-object v1, v14, Lcom/google/android/gms/internal/ads/lk;->j6:Lcom/google/android/gms/internal/ads/zzasi;

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzasi;->FH:Lcom/google/android/gms/internal/ads/zzwb;

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/tg;->FH:Lcom/google/android/gms/internal/ads/Mo;

    iget-object v13, v0, Lcom/google/android/gms/internal/ads/tg;->v5:Lcom/google/android/gms/internal/ads/zzasm;

    iget-object v4, v13, Lcom/google/android/gms/internal/ads/zzasm;->v5:Ljava/util/List;

    iget-object v6, v13, Lcom/google/android/gms/internal/ads/zzasm;->VH:Ljava/util/List;

    iget-object v7, v13, Lcom/google/android/gms/internal/ads/zzasm;->EQ:Ljava/util/List;

    iget v8, v13, Lcom/google/android/gms/internal/ads/zzasm;->J0:I

    iget-wide v9, v13, Lcom/google/android/gms/internal/ads/zzasm;->we:J

    iget-object v11, v1, Lcom/google/android/gms/internal/ads/zzasi;->u7:Ljava/lang/String;

    iget-boolean v12, v13, Lcom/google/android/gms/internal/ads/zzasm;->u7:Z

    iget-wide v0, v13, Lcom/google/android/gms/internal/ads/zzasm;->tp:J

    move-wide/from16 v18, v0

    iget-object v0, v14, Lcom/google/android/gms/internal/ads/lk;->Hw:Lcom/google/android/gms/internal/ads/zzwf;

    move-object/from16 v20, v0

    iget-wide v0, v13, Lcom/google/android/gms/internal/ads/zzasm;->gn:J

    move-wide/from16 v21, v0

    iget-wide v0, v14, Lcom/google/android/gms/internal/ads/lk;->Zo:J

    move-wide/from16 v23, v0

    iget-wide v0, v13, Lcom/google/android/gms/internal/ads/zzasm;->Ws:J

    move-wide/from16 v25, v0

    iget-object v0, v13, Lcom/google/android/gms/internal/ads/zzasm;->QX:Ljava/lang/String;

    move-object/from16 v27, v0

    iget-object v0, v14, Lcom/google/android/gms/internal/ads/lk;->gn:Lorg/json/JSONObject;

    move-object/from16 v28, v0

    iget-object v0, v13, Lcom/google/android/gms/internal/ads/zzasm;->P8:Lcom/google/android/gms/internal/ads/zzawd;

    move-object/from16 v30, v0

    iget-object v0, v13, Lcom/google/android/gms/internal/ads/zzasm;->ei:Ljava/util/List;

    move-object/from16 v31, v0

    iget-object v0, v13, Lcom/google/android/gms/internal/ads/zzasm;->nw:Ljava/util/List;

    move-object/from16 v32, v0

    iget-boolean v0, v13, Lcom/google/android/gms/internal/ads/zzasm;->SI:Z

    move/from16 v33, v0

    iget-object v0, v13, Lcom/google/android/gms/internal/ads/zzasm;->KD:Lcom/google/android/gms/internal/ads/zzaso;

    move-object/from16 v34, v0

    iget-object v0, v13, Lcom/google/android/gms/internal/ads/zzasm;->sh:Ljava/util/List;

    move-object/from16 v36, v0

    iget-object v0, v13, Lcom/google/android/gms/internal/ads/zzasm;->ef:Ljava/lang/String;

    move-object/from16 v37, v0

    iget-object v0, v14, Lcom/google/android/gms/internal/ads/lk;->u7:Lcom/google/android/gms/internal/ads/YF;

    move-object/from16 v38, v0

    iget-object v0, v14, Lcom/google/android/gms/internal/ads/lk;->DW:Lcom/google/android/gms/internal/ads/zzasm;

    new-instance v1, Lcom/google/android/gms/internal/ads/kk;

    move-object/from16 v46, v1

    const/16 v16, 0x0

    move-object/from16 v47, v13

    move-object/from16 v13, v16

    move-object v13, v14

    move-object/from16 v14, v16

    move-object/from16 v48, v15

    move-object/from16 v15, v16

    const/16 v17, 0x0

    const/16 v29, 0x0

    const/16 v35, 0x0

    iget-boolean v14, v0, Lcom/google/android/gms/internal/ads/zzasm;->Mz:Z

    move/from16 v39, v14

    iget-boolean v13, v13, Lcom/google/android/gms/internal/ads/lk;->tp:Z

    move/from16 v40, v13

    iget-boolean v13, v0, Lcom/google/android/gms/internal/ads/zzasm;->ca:Z

    move/from16 v41, v13

    move-object/from16 v13, v47

    iget-object v13, v13, Lcom/google/android/gms/internal/ads/zzasm;->x9:Ljava/util/List;

    move-object/from16 v42, v13

    iget-boolean v13, v0, Lcom/google/android/gms/internal/ads/zzasm;->Qq:Z

    move/from16 v43, v13

    iget-object v13, v0, Lcom/google/android/gms/internal/ads/zzasm;->sy:Ljava/lang/String;

    move-object/from16 v44, v13

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzasm;->lp:Z

    move/from16 v45, v0

    move/from16 v5, p1

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-direct/range {v1 .. v45}, Lcom/google/android/gms/internal/ads/kk;-><init>(Lcom/google/android/gms/internal/ads/zzwb;Lcom/google/android/gms/internal/ads/Mo;Ljava/util/List;ILjava/util/List;Ljava/util/List;IJLjava/lang/String;ZLcom/google/android/gms/internal/ads/pe;Lcom/google/android/gms/internal/ads/Je;Ljava/lang/String;Lcom/google/android/gms/internal/ads/qe;Lcom/google/android/gms/internal/ads/se;JLcom/google/android/gms/internal/ads/zzwf;JJJLjava/lang/String;Lorg/json/JSONObject;Lcom/google/android/gms/internal/ads/ka;Lcom/google/android/gms/internal/ads/zzawd;Ljava/util/List;Ljava/util/List;ZLcom/google/android/gms/internal/ads/zzaso;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/google/android/gms/internal/ads/YF;ZZZLjava/util/List;ZLjava/lang/String;Z)V

    move-object/from16 v0, v48

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/Ag;->j6(Lcom/google/android/gms/internal/ads/kk;)V

    return-void
.end method

.method public final j6(Z)V
    .registers 4

    const-string v0, "WebView finished loading."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/tg;->gn:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_f

    return-void

    :cond_f
    if-eqz p1, :cond_12

    const/4 v1, -0x2

    :cond_12
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/tg;->j6(I)V

    sget-object p1, Lcom/google/android/gms/internal/ads/Nk;->j6:Landroid/os/Handler;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/tg;->Zo:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method
