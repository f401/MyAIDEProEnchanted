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
        "Lcom/google/android/gms/internal/ads/hl",
        "<",
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

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/tg;->Hw:Lcom/google/android/gms/internal/ads/lk;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/lk;->DW:Lcom/google/android/gms/internal/ads/zzasm;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/tg;->v5:Lcom/google/android/gms/internal/ads/zzasm;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/tg;->FH:Lcom/google/android/gms/internal/ads/Mo;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/tg;->j6:Lcom/google/android/gms/internal/ads/Ag;

    return-void
.end method

.method static synthetic j6(Lcom/google/android/gms/internal/ads/tg;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/tg;->gn:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method


# virtual methods
.method public final synthetic FH()Ljava/lang/Object;
    .registers 7

    const-string v0, "Webview render task needs to be called on UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/r;->j6(Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/ug;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/ug;-><init>(Lcom/google/android/gms/internal/ads/tg;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/tg;->Zo:Ljava/lang/Runnable;

    sget-object v1, Lcom/google/android/gms/internal/ads/Nk;->j6:Landroid/os/Handler;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/tg;->Zo:Ljava/lang/Runnable;

    sget-object v0, Lcom/google/android/gms/internal/ads/p;->Ej:Lcom/google/android/gms/internal/ads/e;

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->v5()Lcom/google/android/gms/internal/ads/m;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/ads/m;->j6(Lcom/google/android/gms/internal/ads/e;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

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

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
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

    goto :goto_0
.end method

.method protected abstract j6()V
.end method

.method protected j6(I)V
    .registers 50

    const/4 v2, -0x2

    move/from16 v0, p1

    if-eq v0, v2, :cond_0

    new-instance v2, Lcom/google/android/gms/internal/ads/zzasm;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/tg;->v5:Lcom/google/android/gms/internal/ads/zzasm;

    iget-wide v4, v3, Lcom/google/android/gms/internal/ads/zzasm;->we:J

    move/from16 v0, p1

    invoke-direct {v2, v0, v4, v5}, Lcom/google/android/gms/internal/ads/zzasm;-><init>(IJ)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/gms/internal/ads/tg;->v5:Lcom/google/android/gms/internal/ads/zzasm;

    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/tg;->FH:Lcom/google/android/gms/internal/ads/Mo;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/Mo;->cn()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/tg;->j6:Lcom/google/android/gms/internal/ads/Ag;

    move-object/from16 v47, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/tg;->Hw:Lcom/google/android/gms/internal/ads/lk;

    iget-object v2, v6, Lcom/google/android/gms/internal/ads/lk;->j6:Lcom/google/android/gms/internal/ads/zzasi;

    iget-object v3, v2, Lcom/google/android/gms/internal/ads/zzasi;->FH:Lcom/google/android/gms/internal/ads/zzwb;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/tg;->FH:Lcom/google/android/gms/internal/ads/Mo;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/tg;->v5:Lcom/google/android/gms/internal/ads/zzasm;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzasm;->v5:Ljava/util/List;

    move-object/from16 v0, v43

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzasm;->VH:Ljava/util/List;

    move-object/from16 v0, v43

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzasm;->EQ:Ljava/util/List;

    move-object/from16 v0, v43

    iget v9, v0, Lcom/google/android/gms/internal/ads/zzasm;->J0:I

    move-object/from16 v0, v43

    iget-wide v10, v0, Lcom/google/android/gms/internal/ads/zzasm;->we:J

    iget-object v12, v2, Lcom/google/android/gms/internal/ads/zzasi;->u7:Ljava/lang/String;

    move-object/from16 v0, v43

    iget-boolean v13, v0, Lcom/google/android/gms/internal/ads/zzasm;->u7:Z

    move-object/from16 v0, v43

    iget-wide v0, v0, Lcom/google/android/gms/internal/ads/zzasm;->tp:J

    move-wide/from16 v19, v0

    iget-object v0, v6, Lcom/google/android/gms/internal/ads/lk;->Hw:Lcom/google/android/gms/internal/ads/zzwf;

    move-object/from16 v21, v0

    move-object/from16 v0, v43

    iget-wide v0, v0, Lcom/google/android/gms/internal/ads/zzasm;->gn:J

    move-wide/from16 v22, v0

    iget-wide v0, v6, Lcom/google/android/gms/internal/ads/lk;->Zo:J

    move-wide/from16 v24, v0

    move-object/from16 v0, v43

    iget-wide v0, v0, Lcom/google/android/gms/internal/ads/zzasm;->Ws:J

    move-wide/from16 v26, v0

    move-object/from16 v0, v43

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzasm;->QX:Ljava/lang/String;

    move-object/from16 v28, v0

    iget-object v0, v6, Lcom/google/android/gms/internal/ads/lk;->gn:Lorg/json/JSONObject;

    move-object/from16 v29, v0

    move-object/from16 v0, v43

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzasm;->P8:Lcom/google/android/gms/internal/ads/zzawd;

    move-object/from16 v31, v0

    move-object/from16 v0, v43

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzasm;->ei:Ljava/util/List;

    move-object/from16 v32, v0

    move-object/from16 v0, v43

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzasm;->nw:Ljava/util/List;

    move-object/from16 v33, v0

    move-object/from16 v0, v43

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzasm;->SI:Z

    move/from16 v34, v0

    move-object/from16 v0, v43

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzasm;->KD:Lcom/google/android/gms/internal/ads/zzaso;

    move-object/from16 v35, v0

    move-object/from16 v0, v43

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzasm;->sh:Ljava/util/List;

    move-object/from16 v37, v0

    move-object/from16 v0, v43

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzasm;->ef:Ljava/lang/String;

    move-object/from16 v38, v0

    iget-object v0, v6, Lcom/google/android/gms/internal/ads/lk;->u7:Lcom/google/android/gms/internal/ads/YF;

    move-object/from16 v39, v0

    iget-object v0, v6, Lcom/google/android/gms/internal/ads/lk;->DW:Lcom/google/android/gms/internal/ads/zzasm;

    move-object/from16 v46, v0

    new-instance v2, Lcom/google/android/gms/internal/ads/kk;

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v30, 0x0

    const/16 v36, 0x0

    move-object/from16 v0, v46

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzasm;->Mz:Z

    move/from16 v40, v0

    iget-boolean v0, v6, Lcom/google/android/gms/internal/ads/lk;->tp:Z

    move/from16 v41, v0

    move-object/from16 v0, v46

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzasm;->ca:Z

    move/from16 v42, v0

    move-object/from16 v0, v43

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzasm;->x9:Ljava/util/List;

    move-object/from16 v43, v0

    move-object/from16 v0, v46

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzasm;->Qq:Z

    move/from16 v44, v0

    move-object/from16 v0, v46

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzasm;->sy:Ljava/lang/String;

    move-object/from16 v45, v0

    move-object/from16 v0, v46

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzasm;->lp:Z

    move/from16 v46, v0

    move/from16 v6, p1

    invoke-direct/range {v2 .. v46}, Lcom/google/android/gms/internal/ads/kk;-><init>(Lcom/google/android/gms/internal/ads/zzwb;Lcom/google/android/gms/internal/ads/Mo;Ljava/util/List;ILjava/util/List;Ljava/util/List;IJLjava/lang/String;ZLcom/google/android/gms/internal/ads/pe;Lcom/google/android/gms/internal/ads/Je;Ljava/lang/String;Lcom/google/android/gms/internal/ads/qe;Lcom/google/android/gms/internal/ads/se;JLcom/google/android/gms/internal/ads/zzwf;JJJLjava/lang/String;Lorg/json/JSONObject;Lcom/google/android/gms/internal/ads/ka;Lcom/google/android/gms/internal/ads/zzawd;Ljava/util/List;Ljava/util/List;ZLcom/google/android/gms/internal/ads/zzaso;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/google/android/gms/internal/ads/YF;ZZZLjava/util/List;ZLjava/lang/String;Z)V

    move-object/from16 v0, v47

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/ads/Ag;->j6(Lcom/google/android/gms/internal/ads/kk;)V

    return-void
.end method

.method public final j6(Z)V
    .registers 4

    const/4 v0, 0x0

    const-string v1, "WebView finished loading."

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/tg;->gn:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    if-eqz p1, :cond_1

    const/4 v0, -0x2

    :cond_1
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/tg;->j6(I)V

    sget-object v0, Lcom/google/android/gms/internal/ads/Nk;->j6:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/tg;->Zo:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
